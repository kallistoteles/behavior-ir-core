#![allow(dead_code)]
//! Host demonstration only: Core never executes an external command.
#[path = "../tests/support/durable_backend.rs"]
mod host;
use behavior_engine::store::commands::{CommandStreamRequest, CommittedCommand};
use behavior_engine::store::documents::CommitBundle;
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{Backend, Store};
use behavior_engine::verify::governance::{
    AuthorizationContextV2, EvidencePolicyV2, EvidenceV2, ExecutionPolicyV2,
};
use serde_json::{Value, json};
use std::collections::BTreeMap;
use std::path::{Path, PathBuf};
use std::process::{Command, Output};
pub type DemoResult<T> = Result<T, String>;
const NOW: &str = "2026-10-05T12:00:00Z";
fn err(e: impl std::fmt::Display) -> String {
    e.to_string()
}
fn fixture(name: &str) -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../tests/fixtures")
        .join(name)
}
fn read(p: impl AsRef<Path>) -> DemoResult<String> {
    std::fs::read_to_string(p).map_err(err)
}
fn write(p: impl AsRef<Path>, value: &Value) -> DemoResult<()> {
    std::fs::write(
        p,
        behavior_engine::canonical::to_canonical_string(value).map_err(err)?,
    )
    .map_err(err)
}
fn module() -> DemoResult<behavior_engine::semantic::Module> {
    behavior_engine::admit(&read(fixture("commands/modules/receipt.json"))?)
        .map_err(|e| format!("{e:?}"))
}
fn open(root: &Path) -> DemoResult<Store<host::DurableBackend>> {
    Store::open(host::DurableBackend::open(root).map_err(err)?).map_err(err)
}
fn page(root: &Path) -> DemoResult<behavior_engine::store::commands::CommandStreamPage> {
    let store = open(root)?;
    let request = CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":store.history_at(0).map_err(err)?}).to_string()).map_err(err)?;
    store.commands_since(&request).map_err(err)
}
pub fn committed(root: &Path) -> DemoResult<Vec<CommittedCommand>> {
    Ok(page(root)?.items().to_vec())
}
fn option<'a>(args: &'a [String], name: &str) -> DemoResult<&'a str> {
    args.windows(2)
        .find(|a| a[0] == name)
        .map(|a| a[1].as_str())
        .ok_or_else(|| format!("missing {name}"))
}
pub fn run_with_launcher(
    args: &[String],
    launcher: &dyn Fn(&[String]) -> DemoResult<Output>,
) -> DemoResult<Value> {
    let mode = args
        .first()
        .ok_or("expected prepare, commit, stream or crash-recovery")?;
    let allowed = match mode.as_str() {
        "prepare" | "stream" | "crash-recovery" => &["--root"][..],
        "commit" | "commit-crash" => &["--root", "--evidence", "--context"][..],
        _ => return Err(format!("unknown demo operation {mode}")),
    };
    if !(args.len() - 1).is_multiple_of(2) {
        return Err("options require values".into());
    }
    let mut seen = std::collections::BTreeSet::new();
    for pair in args[1..].as_chunks::<2>().0 {
        if !allowed.contains(&pair[0].as_str()) || !seen.insert(pair[0].as_str()) {
            return Err(format!("unknown or repeated option {}", pair[0]));
        }
    }
    let root = Path::new(option(args, "--root")?);
    let m = module()?;
    match mode.as_str() {
        "prepare" => {
            let backend = host::DurableBackend::open(root).map_err(err)?;
            let store = if backend.genesis().map_err(err)?.is_some() {
                Store::open(backend).map_err(err)?
            } else {
                let ep = EvidencePolicyV2::from_json(&read(fixture(
                    "governance-v2/evidence-policy-verifier-0.8.json",
                ))?)
                .map_err(err)?;
                Store::create(backend, &m, genesis_v2_for(&m, ep, vec![]).map_err(err)?)
                    .map_err(err)?
            };
            let bundle = store
                .evaluate(
                    &m,
                    "receipt",
                    &BTreeMap::new(),
                    &json!({"recipient":"customer-1"}),
                    &json!({}),
                    NOW,
                    None,
                )
                .map_err(err)?
                .bundle
                .ok_or("receipt did not yield a candidate")?;
            write(
                root.join("candidate.json"),
                &bundle.governance_candidate().map_err(err)?.as_json(),
            )?;
            write(
                root.join("bundle.json"),
                &serde_json::to_value(&bundle).map_err(err)?,
            )?;
            // Independently supplied host context; never recovered from an authorization.
            std::fs::copy(
                fixture("governance-v2/context.json"),
                root.join("context.json"),
            )
            .map_err(err)?;
            Ok(
                json!({"candidate_transition_hash":bundle.transition_hash,"history":store.current_history().map_err(err)?}),
            )
        }
        "commit" | "commit-crash" => {
            let p = ExecutionPolicyV2::from_json(&read(fixture("governance-v2/policy-verifier-0.8.json"))?)
                .map_err(err)?;
            let q = AuthorizationContextV2::from_json(&read(option(args, "--context")?)?, &p)
                .map_err(err)?;
            let evidence =
                EvidenceV2::from_json(&read(option(args, "--evidence")?)?).map_err(err)?;
            let bundle = CommitBundle::from_json(&read(root.join("bundle.json"))?)
                .map_err(err)?
                .with_trusted_evidence(&evidence)
                .map_err(err)?;
            let mut backend = host::DurableBackend::open(root).map_err(err)?;
            if mode == "commit-crash" {
                backend.fault = host::Fault::CrashAfterPersistence;
            }
            let mut store = Store::open(backend).map_err(err)?;
            let done = store
                .commit_with_context(&m, &bundle.evaluated_state, &bundle, &q)
                .map_err(err)?;
            Ok(
                json!({"already":done.already,"record_id":done.record_id,"history":store.current_history().map_err(err)?}),
            )
        }
        "stream" => Ok(page(root)?.as_json()),
        "crash-recovery" => {
            // Copy the canonical genesis into an isolated host directory, with the
            // original candidate. No tags, replica identity or delivery status.
            let copy = root.join("crash-recovery");
            let source = open(root)?;
            Store::create(
                host::DurableBackend::open(&copy).map_err(err)?,
                &m,
                source.genesis().map_err(err)?,
            )
            .map_err(err)?;
            std::fs::copy(root.join("bundle.json"), copy.join("bundle.json")).map_err(err)?;
            let args = vec![
                "commit-crash".into(),
                "--root".into(),
                copy.to_string_lossy().into_owned(),
                "--evidence".into(),
                root.join("evidence.json").to_string_lossy().into_owned(),
                "--context".into(),
                root.join("context.json").to_string_lossy().into_owned(),
            ];
            let crashed = launcher(&args)?;
            if crashed.status.code() != Some(86) {
                return Err(format!(
                    "expected durable crash86: {}",
                    String::from_utf8_lossy(&crashed.stderr)
                ));
            }
            let mut recovery = args;
            recovery[0] = "commit".into();
            let recovered = run_with_launcher(&recovery, launcher)?;
            if recovered["already"] != true {
                return Err("recovery appended instead of finding the original event".into());
            }
            Ok(json!({"crash_exit":86,"recovered":recovered,"stream":page(&copy)?.as_json()}))
        }
        _ => unreachable!(),
    }
}
fn main() {
    let launcher = |args: &[String]| {
        Command::new(std::env::current_exe().map_err(err)?)
            .args(args)
            .output()
            .map_err(err)
    };
    match run_with_launcher(&std::env::args().skip(1).collect::<Vec<_>>(), &launcher) {
        Ok(value) => match behavior_engine::canonical::to_canonical_string(&value) {
            Ok(text) => println!("{text}"),
            Err(e) => {
                eprintln!("{e}");
                std::process::exit(2);
            }
        },
        Err(e) => {
            eprintln!("{e}");
            std::process::exit(2);
        }
    }
}
