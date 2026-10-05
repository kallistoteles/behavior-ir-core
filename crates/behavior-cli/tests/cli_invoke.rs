#![allow(clippy::unwrap_used, clippy::expect_used)]
use serde_json::{Value, json};
use std::path::{Path, PathBuf};
use std::process::Command;
fn fixtures() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures/invocation")
}
fn run(args: &[&Path]) -> std::process::Output {
    Command::new(env!("CARGO_BIN_EXE_behavior"))
        .args(args)
        .output()
        .unwrap()
}
fn command(name: &str) -> &Path {
    Path::new(name)
}

#[test]
fn every_invocation_and_intent_has_the_documented_exit_and_exact_record() {
    let root = fixtures();
    let wire = root.join("modules/ledger.json");
    let snapshot = root.join("snapshots/s1.json");
    let context = root.join("context.json");
    for (dir, expected, cmd) in [
        ("invocations", "records", "invoke"),
        ("intents", "intent-records", "invoke-intent"),
    ] {
        let mut paths: Vec<_> = std::fs::read_dir(root.join(dir))
            .unwrap()
            .map(|e| e.unwrap().path())
            .filter(|p| p.extension().is_some_and(|e| e == "json"))
            .collect();
        paths.sort();
        for path in paths {
            let mut args = vec![command(cmd), &wire, &path, &snapshot];
            if cmd == "invoke-intent" {
                args.extend([command("--context"), &context]);
            }
            let result = run(&args);
            let golden = root.join(expected).join(format!(
                "{}.expected.json",
                path.file_stem().unwrap().to_str().unwrap()
            ));
            let bytes = std::fs::read(&golden).unwrap();
            let value: Value = serde_json::from_slice(&bytes).unwrap();
            let code = if value["outcome"]["kind"] == "evaluated" {
                0
            } else {
                3
            };
            assert_eq!(
                result.status.code(),
                Some(code),
                "{}: {}",
                path.display(),
                String::from_utf8_lossy(&result.stderr)
            );
            assert_eq!(result.stdout, bytes, "{}", path.display());
            let replay = run(&[command("invoke-replay"), &wire, &golden]);
            assert_eq!(
                replay.status.code(),
                Some(0),
                "{}",
                String::from_utf8_lossy(&replay.stderr)
            );
        }
    }
}

#[test]
fn invalid_transport_mismatch_and_usage_are_distinct_from_semantic_refusals() {
    let root = fixtures();
    let wire = root.join("modules/ledger.json");
    let snapshot = root.join("snapshots/s1.json");
    let temp = std::env::temp_dir().join(format!("behavior-cli-invoke-{}", std::process::id()));
    std::fs::create_dir_all(&temp).unwrap();
    let request = temp.join("request.json");
    std::fs::write(&request, "not JSON").unwrap();
    let result = run(&[command("invoke"), &wire, &request, &snapshot]);
    assert_eq!(result.status.code(), Some(2));
    assert!(result.stdout.is_empty());
    let value = json!({"format":"behavior.invocation.v1","capability":17,"bindings":{},"input":{},"context":{}});
    std::fs::write(&request, value.to_string()).unwrap();
    let result = run(&[command("invoke"), &wire, &request, &snapshot]);
    assert_eq!(result.status.code(), Some(3));
    let record: Value = serde_json::from_slice(&result.stdout).unwrap();
    assert_eq!(record["capability"], Value::Null);
    assert!(record["outcome"].get("record").is_none());
    let record_file = temp.join("record.json");
    std::fs::write(&record_file, &result.stdout).unwrap();
    assert_eq!(
        run(&[command("invoke-replay"), &wire, &record_file])
            .status
            .code(),
        Some(0)
    );
    let mut changed = record;
    changed["record_id"] = json!("invocation:sha256:bad");
    std::fs::write(&record_file, changed.to_string()).unwrap();
    assert_eq!(
        run(&[command("invoke-replay"), &wire, &record_file])
            .status
            .code(),
        Some(2)
    );
    assert_eq!(run(&[command("invoke")]).status.code(), Some(64));
    let mut inconsistent: Value =
        serde_json::from_str(&std::fs::read_to_string(&snapshot).unwrap()).unwrap();
    let duplicate = inconsistent["entities"][0].clone();
    inconsistent["entities"]
        .as_array_mut()
        .unwrap()
        .push(duplicate);
    let bad_snapshot = temp.join("snapshot.json");
    std::fs::write(&bad_snapshot, inconsistent.to_string()).unwrap();
    let result = run(&[
        command("invoke"),
        &wire,
        &root.join("invocations/suspend.json"),
        &bad_snapshot,
    ]);
    assert_eq!(result.status.code(), Some(3));
    let record: Value = serde_json::from_slice(&result.stdout).unwrap();
    assert_eq!(record["outcome"]["stage"], "DECODE");
    std::fs::write(&record_file, &result.stdout).unwrap();
    assert_eq!(
        run(&[command("invoke-replay"), &wire, &record_file])
            .status
            .code(),
        Some(0)
    );
    std::fs::remove_dir_all(temp).unwrap();
}
