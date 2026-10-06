#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "../../behavior-core/tests/support/commands.rs"]
mod model;
use serde_json::{Value, json};
use std::path::{Path, PathBuf};
use std::process::{Command, Output};
static NEXT: std::sync::atomic::AtomicUsize = std::sync::atomic::AtomicUsize::new(0);
struct Scratch(PathBuf);
impl Scratch {
    fn new() -> Self {
        let p = std::env::temp_dir().join(format!(
            "013-replay-cli-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, std::sync::atomic::Ordering::Relaxed)
        ));
        std::fs::create_dir(&p).unwrap();
        Self(p)
    }
    fn write(&self, n: &str, v: &Value) -> PathBuf {
        let p = self.0.join(n);
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
#[test]
fn eval_replay_and_invocation_replay_have_canonical_semantic_output_and_detached_diffs() {
    let s = Scratch::new();
    let w = s.write("wire.json", &model::command_only_module(true));
    let req = s.write("request.json", &model::command_only_request("same"));
    let eval = run(&["eval", path(&w), path(&req)]);
    assert!(eval.status.success());
    let record: Value = serde_json::from_slice(&eval.stdout).unwrap();
    let r = s.write("record.json", &record);
    let side = s.0.join("diagnostics.json");
    let replay = run(&["replay", path(&w), path(&r), "--diagnostics", path(&side)]);
    assert!(replay.status.success());
    assert_eq!(
        serde_json::from_slice::<Value>(&replay.stdout).unwrap(),
        json!({"matches":true})
    );
    assert!(side.exists());
    let invocation = s.write("invocation.json", &model::command_only_invocation("same"));
    let snapshot = s.write("snapshot.json", &model::command_only_snapshot());
    let invoked = run(&["invoke", path(&w), path(&invocation), path(&snapshot)]);
    assert!(invoked.status.success());
    let envelope: Value = serde_json::from_slice(&invoked.stdout).unwrap();
    let r = s.write("invocation-record.json", &envelope);
    let replay = run(&[
        "invoke-replay",
        path(&w),
        path(&r),
        "--diagnostics",
        path(&side),
    ]);
    assert!(replay.status.success());
    assert_eq!(
        serde_json::from_slice::<Value>(&replay.stdout).unwrap(),
        json!({"matches":true})
    );
    let mut bad = record;
    bad["commands"]["intents"][0]["payload"]["recipient"] = json!("other");
    let r = s.write("bad.json", &bad);
    let fail = run(&["replay", path(&w), path(&r), "--diagnostics", path(&side)]);
    assert_eq!(fail.status.code(), Some(2));
    assert_eq!(
        serde_json::from_slice::<Value>(&fail.stdout).unwrap()["matches"],
        false
    );
    let diagnostics: Value = serde_json::from_str(&std::fs::read_to_string(side).unwrap()).unwrap();
    assert!(!diagnostics["diff"].is_null());
}
#[test]
fn ambiguous_current_invocation_record_cannot_be_successful_cli_replay() {
    let s = Scratch::new();
    let w = s.write("wire.json", &model::command_only_module(true));
    let m = behavior_core::admit(&model::command_only_module(true).to_string()).unwrap();
    let r = behavior_core::invocation::invoke_document(
        &m,
        &model::command_only_invocation("same").to_string(),
        &model::command_only_snapshot().to_string(),
        None,
    )
    .unwrap();
    let raw = r.to_json_string().replacen(
        "\"capability\":\"receipt\"",
        "\"capability\":\"forged\",\"capability\":\"receipt\"",
        1,
    );
    let file = s.0.join("ambiguous.json");
    std::fs::write(&file, raw).unwrap();
    let result = run(&["invoke-replay", path(&w), path(&file)]);
    assert_eq!(result.status.code(), Some(2));
    assert!(result.stdout.is_empty());
    assert!(!result.stderr.is_empty());
}
