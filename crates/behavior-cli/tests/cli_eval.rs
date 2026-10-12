#![allow(clippy::unwrap_used, clippy::expect_used)]

#[path = "support/current.rs"]
mod current;

use std::path::{Path, PathBuf};
use std::process::Command;

fn fixtures() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures")
}

fn run(args: &[&str]) -> (i32, String) {
    let out = Command::new(env!("CARGO_BIN_EXE_behavior"))
        .args(args)
        .output()
        .unwrap();
    (
        out.status.code().unwrap_or(-1),
        String::from_utf8(out.stdout).unwrap(),
    )
}

#[test]
fn current_eval_exits_match_semantics_and_archived_goldens_replay() {
    let exp: serde_json::Value = serde_json::from_str(
        &std::fs::read_to_string(fixtures().join("requests/expectations.json")).unwrap(),
    )
    .unwrap();
    for (name, e) in exp.as_object().unwrap() {
        let wire = fixtures().join(format!("wire/valid/{}.json", e["wire"].as_str().unwrap()));
        let original = fixtures().join(format!("requests/{name}.json"));
        let module = behavior_engine::admit(&std::fs::read_to_string(&wire).unwrap()).unwrap();
        let raw = current::load(&original);
        let input = if name.starts_with("invalid_") {
            raw
        } else {
            current::complete(&module, &raw)
        };
        let req = current::write(name, &input);
        let (code, out) = run(&["eval", wire.to_str().unwrap(), req.to_str().unwrap()]);
        let result = if name == "invoice_invalid_state" {
            "INVALID_INPUT"
        } else {
            e["result"].as_str().unwrap()
        };
        let want = match result {
            "ALLOW" => 0,
            "DENY" => 1,
            "INVALID_INPUT" | "INVALID_STATE" => 2,
            "ERROR" => 3,
            other => panic!("{other}"),
        };
        assert_eq!(code, want, "{name}");
        let golden =
            std::fs::read_to_string(fixtures().join(format!("records/{name}.json"))).unwrap();
        let value: serde_json::Value = serde_json::from_str(&out).unwrap();
        assert_eq!(value["result"], result, "{name}");
        assert_eq!(value["record_version"], "0.8");
        assert_eq!(
            value["validation_profile"],
            "behavior.complete_resulting_state.v1"
        );
        assert_eq!(value["changes"], e["changes"], "{name}");
        assert_eq!(
            out,
            behavior_engine::evaluate(&module, &input.to_string()).to_json_string()
        );
        let archive = current::write(
            &format!("archive-{name}"),
            &serde_json::from_str(&golden).unwrap(),
        );
        let (archive_code, archive_out) =
            run(&["replay", wire.to_str().unwrap(), archive.to_str().unwrap()]);
        assert_eq!(
            (archive_code, archive_out.as_str()),
            (0, r#"{"matches":true}"#)
        );

        let rec = std::env::temp_dir().join(format!("behavior-cli-{name}.json"));
        std::fs::write(&rec, &out).unwrap();
        let (code, out) = run(&["replay", wire.to_str().unwrap(), rec.to_str().unwrap()]);
        assert_eq!((code, out.as_str()), (0, r#"{"matches":true}"#), "{name}");
    }
}

#[test]
fn replay_mismatch_exits_two() {
    let wire = fixtures().join("wire/valid/invoice.json");
    let rec = std::env::temp_dir().join("behavior-cli-tampered.json");
    let golden = std::fs::read_to_string(fixtures().join("records/invoice_allowed.json")).unwrap();
    // Tamper with the recorded outcome only; the stored request stays intact.
    std::fs::write(
        &rec,
        golden.replace("\"result\":\"ALLOW\"", "\"result\":\"DENY\""),
    )
    .unwrap();
    let (code, _) = run(&["replay", wire.to_str().unwrap(), rec.to_str().unwrap()]);
    assert_eq!(code, 2);
}
