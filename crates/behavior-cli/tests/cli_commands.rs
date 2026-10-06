#![allow(clippy::unwrap_used, clippy::expect_used)]
//! New CLI output is semantic; diagnostic provenance is an explicit sidecar.
#[path = "../../behavior-core/tests/support/commands.rs"]
mod model;
use serde_json::{Value, json};
use std::path::{Path, PathBuf};
use std::process::{Command, Output};
use std::sync::atomic::{AtomicUsize, Ordering};
static NEXT: AtomicUsize = AtomicUsize::new(0);
struct Scratch(PathBuf);
impl Scratch {
    fn new() -> Self {
        let p = std::env::temp_dir().join(format!(
            "013-command-cli-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        std::fs::create_dir(&p).unwrap();
        Self(p)
    }
    fn file(&self, n: &str) -> PathBuf {
        self.0.join(n)
    }
    fn write(&self, n: &str, v: &Value) -> PathBuf {
        let p = self.file(n);
        std::fs::write(&p, v.to_string()).unwrap();
        p
    }
}
impl Drop for Scratch {
    fn drop(&mut self) {
        std::fs::remove_dir_all(&self.0).unwrap();
    }
}
fn run(args: &[&str]) -> Output {
    Command::new(env!("CARGO_BIN_EXE_behavior"))
        .args(args)
        .output()
        .unwrap()
}
fn path(p: &Path) -> &str {
    p.to_str().unwrap()
}
fn code(o: &Output) -> i32 {
    o.status.code().unwrap_or(-1)
}
fn record(o: &Output) -> Value {
    serde_json::from_slice(&o.stdout).unwrap()
}
#[test]
fn admit_recognizes_command_products_and_keeps_new_identity() {
    let s = Scratch::new();
    let wire = s.write("wire.json", &model::module());
    let o = run(&["admit", path(&wire)]);
    assert_eq!(code(&o), 0, "{}", String::from_utf8_lossy(&o.stdout));
    let r = record(&o);
    assert_eq!(r["ok"], true);
    assert!(r["items"].get("command:Receipt").is_some());
}
#[test]
fn eval_exposes_only_semantic_candidate_commands_and_no_source_paths() {
    let s = Scratch::new();
    let wire = s.write("wire.json", &model::module());
    let request = s.write("request.json", &model::request(2, true));
    let o = run(&["eval", path(&wire), path(&request)]);
    assert_eq!(code(&o), 0);
    let r = record(&o);
    assert_eq!(r["record_version"], "0.7");
    assert_eq!(r["commands"]["intents"].as_array().unwrap().len(), 1);
    let text = String::from_utf8(o.stdout).unwrap();
    assert!(!text.contains("commands.beh"));
    assert!(!text.contains("\"loc\""));
    assert!(!text.contains("command_occurrence_id"));
}
#[test]
fn invoke_and_replay_use_the_same_new_inner_semantic_record() {
    let s = Scratch::new();
    let wire = s.write("wire.json", &model::module());
    let invocation = s.write("invocation.json", &model::invocation());
    let snapshot = s.write("snapshot.json", &model::snapshot(2, true));
    let o = run(&["invoke", path(&wire), path(&invocation), path(&snapshot)]);
    assert_eq!(code(&o), 0);
    let r = record(&o);
    assert_eq!(r["kind"], "action");
    assert_eq!(r["outcome"]["record"]["record_version"], "0.7");
    assert_eq!(
        r["outcome"]["record"]["commands"]["intents"]
            .as_array()
            .unwrap()
            .len(),
        1
    );
    let stored = s.write("record.json", &r);
    let replay = run(&["invoke-replay", path(&wire), path(&stored)]);
    assert_eq!(code(&replay), 0);
    assert_eq!(record(&replay), json!({"matches":true}));
}
#[test]
fn detached_diagnostics_can_differ_while_semantic_stdout_is_identical() {
    let s = Scratch::new();
    let mut a = model::module();
    let wa = s.write("a.json", &a);
    model::relocation(&mut a, "/other/commands.beh");
    let wb = s.write("b.json", &a);
    let req = s.write("request.json", &model::request(2, true));
    let da = s.file("a.diag.json");
    let db = s.file("b.diag.json");
    let oa = run(&["eval", path(&wa), path(&req), "--diagnostics", path(&da)]);
    let ob = run(&["eval", path(&wb), path(&req), "--diagnostics", path(&db)]);
    assert_eq!(code(&oa), 0, "{}", String::from_utf8_lossy(&oa.stderr));
    assert_eq!(code(&ob), 0);
    assert_eq!(oa.stdout, ob.stdout);
    let a = std::fs::read_to_string(da).unwrap();
    let b = std::fs::read_to_string(db).unwrap();
    assert_ne!(a, b);
    assert!(a.contains("commands.beh"));
    assert!(b.contains("/other/commands.beh"));
}
#[test]
fn malformed_request_does_not_claim_an_action_was_evaluated() {
    let s = Scratch::new();
    let wire = s.write("wire.json", &model::module());
    let req = s.file("broken.json");
    std::fs::write(&req, "{broken").unwrap();
    let o = run(&["eval", path(&wire), path(&req)]);
    assert_eq!(code(&o), 2);
    assert!(
        o.stdout.is_empty(),
        "unparseable transport emitted a semantic record"
    );
    assert!(!o.stderr.is_empty());
}
#[test]
fn legacy_cli_output_stays_byte_exact() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures");
    let wire = root.join("wire/valid/invoice.json");
    let req = root.join("requests/invoice_allowed.json");
    let o = run(&["eval", path(&wire), path(&req)]);
    assert_eq!(code(&o), 0);
    assert_eq!(
        o.stdout,
        std::fs::read(root.join("records/invoice_allowed.json")).unwrap()
    );
}
#[test]
fn invocation_and_replay_accept_detached_diagnostics_without_changing_identity() {
    let s = Scratch::new();
    let wire = s.write("wire.json", &model::module());
    let request = s.write("invocation.json", &model::invocation());
    let snapshot = s.write("snapshot.json", &model::snapshot(2, true));
    let diagnostics = s.file("invoke.diag.json");
    let o = run(&[
        "invoke",
        path(&wire),
        path(&request),
        path(&snapshot),
        "--diagnostics",
        path(&diagnostics),
    ]);
    assert_eq!(code(&o), 0);
    assert!(diagnostics.exists());
    let plain = run(&["invoke", path(&wire), path(&request), path(&snapshot)]);
    assert_eq!(o.stdout, plain.stdout);
    let stored = s.write("record.json", &record(&o));
    let diagnostics = s.file("replay.diag.json");
    let replay = run(&[
        "invoke-replay",
        path(&wire),
        path(&stored),
        "--diagnostics",
        path(&diagnostics),
    ]);
    assert_eq!(code(&replay), 0);
    assert_eq!(record(&replay), json!({"matches":true}));
    assert!(diagnostics.exists());
}
