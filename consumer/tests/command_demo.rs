#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "../examples/durable_commands.rs"]
mod demo;
use serde_json::{Value, json};
use std::collections::BTreeSet;
use std::path::{Path, PathBuf};
use std::process::{Command, Output};
const NOW: &str = "2026-10-05T12:00:00Z";
fn launcher(args: &[String]) -> Result<Output, String> {
    Command::new(std::env::current_exe().unwrap())
        .args(["--exact", "demo_worker", "--nocapture"])
        .env("COMMAND_DEMO_WORKER_ARGS", json!(args).to_string())
        .output()
        .map_err(|e| e.to_string())
}
fn run(mode: &str, root: &Path, extra: &[String]) -> Value {
    let mut a = vec![mode.into(), "--root".into(), root.to_str().unwrap().into()];
    a.extend_from_slice(extra);
    demo::run_with_launcher(&a, &launcher).unwrap()
}
fn fixture(name: &str) -> String {
    Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../tests/fixtures")
        .join(name)
        .to_str()
        .unwrap()
        .into()
}
fn cli(args: &[String]) {
    let bin = std::env::var_os("BEHAVIOR_BIN")
        .map(PathBuf::from)
        .unwrap_or_else(|| Path::new(env!("CARGO_MANIFEST_DIR")).join("../target/debug/behavior"));
    let out = Command::new(bin).args(args).output().unwrap();
    assert!(
        out.status.success(),
        "{} {}",
        String::from_utf8_lossy(&out.stdout),
        String::from_utf8_lossy(&out.stderr)
    );
}
struct Scratch(PathBuf);
impl Drop for Scratch {
    fn drop(&mut self) {
        std::fs::remove_dir_all(&self.0).unwrap();
    }
}
#[test]
fn documented_cli_trust_commit_stream_and_real_process_recovery() {
    let root =
        Scratch(std::env::temp_dir().join(format!("013-trusted-demo-{}", std::process::id())));
    std::fs::create_dir(&root.0).unwrap();
    let prepared = run("prepare", &root.0, &[]);
    assert_eq!(prepared["history"]["position"], 0);
    assert!(root.0.join("candidate.json").is_file());
    assert!(root.0.join("context.json").is_file());
    assert!(demo::committed(&root.0).unwrap().is_empty());
    let file = |name: &str| root.0.join(name).to_str().unwrap().to_string();
    let wire = fixture("commands/modules/receipt.json");
    cli(&[
        "governance".into(),
        "verify".into(),
        wire.clone(),
        "--profile".into(),
        fixture("governance-v2/profile.json"),
        "--seed".into(),
        fixture("governance-v2/verifier.seed"),
        "--out".into(),
        file("verification.json"),
    ]);
    cli(&[
        "governance".into(),
        "authorize".into(),
        file("candidate.json"),
        "--wire".into(),
        wire,
        "--evidence-policy".into(),
        fixture("governance-v2/evidence-policy-verifier-0.8.json"),
        "--policy".into(),
        fixture("governance-v2/policy-verifier-0.8.json"),
        "--verification".into(),
        file("verification.json"),
        "--seed".into(),
        fixture("governance-v2/authorizer.seed"),
        "--context".into(),
        file("context.json"),
        "--now".into(),
        NOW.into(),
        "--out".into(),
        file("evidence.json"),
    ]);
    let extra = vec![
        "--evidence".into(),
        file("evidence.json"),
        "--context".into(),
        file("context.json"),
    ];
    let original = run("commit", &root.0, &extra);
    assert_eq!(original["already"], false);
    assert_eq!(original["history"]["position"], 1);
    assert_eq!(original["history"]["state"], prepared["history"]["state"]);
    let recovered = run("commit", &root.0, &extra);
    assert_eq!(recovered["already"], true);
    assert_eq!(original["record_id"], recovered["record_id"]);
    let stream = run("stream", &root.0, &[]);
    assert_eq!(stream["items"].as_array().unwrap().len(), 1);
    let mut target = BTreeSet::new();
    for command in demo::committed(&root.0).unwrap().iter().cycle().take(2) {
        target.insert(command.command_occurrence_id().to_string());
    }
    assert_eq!(target.len(), 1);
    let mut q: Value =
        serde_json::from_str(&std::fs::read_to_string(file("context.json")).unwrap()).unwrap();
    q["context"]["actor"] = json!("wrong actor");
    std::fs::write(file("wrong-context.json"), q.to_string()).unwrap();
    let args = vec![
        "commit".into(),
        "--root".into(),
        root.0.to_str().unwrap().into(),
        "--evidence".into(),
        file("evidence.json"),
        "--context".into(),
        file("wrong-context.json"),
    ];
    assert!(demo::run_with_launcher(&args, &launcher).is_err());
    assert_eq!(run("stream", &root.0, &[]), stream);
    let crash = run("crash-recovery", &root.0, &[]);
    assert_eq!(crash["crash_exit"], 86);
    assert_eq!(crash["recovered"]["already"], true);
    assert_eq!(crash["stream"], stream);
}
#[test]
fn demo_worker() {
    if let Ok(raw) = std::env::var("COMMAND_DEMO_WORKER_ARGS") {
        let args: Vec<String> = serde_json::from_str(&raw).unwrap();
        demo::run_with_launcher(&args, &launcher).unwrap();
        panic!("crash worker returned instead of exiting after durable persistence");
    }
}
