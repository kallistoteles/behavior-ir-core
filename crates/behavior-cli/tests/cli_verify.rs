#![allow(clippy::unwrap_used, clippy::expect_used)]

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
fn verify_exit_codes_and_out_file() {
    let fixed = fixtures().join("verify/purchase_fixed.json");
    let broken = fixtures().join("verify/purchase.json");
    let invalid = fixtures().join("wire/invalid/cycle_a_b_c.json");
    let profile = fixtures().join("governance/preservation_profile.json");
    let (code, _) = run(&[
        "verify",
        fixed.to_str().unwrap(),
        "--profile",
        profile.to_str().unwrap(),
    ]);
    assert_eq!(code, 0);
    let out = std::env::temp_dir().join("behavior-cli-verify.json");
    let (code, stdout) = run(&[
        "verify",
        broken.to_str().unwrap(),
        "--out",
        out.to_str().unwrap(),
    ]);
    assert_eq!(code, 1);
    assert_eq!(std::fs::read_to_string(&out).unwrap(), stdout);
    let v: serde_json::Value = serde_json::from_str(&stdout).unwrap();
    assert_eq!(v["result"], "not_verified");
    let (code, _) = run(&["verify", invalid.to_str().unwrap()]);
    assert_eq!(code, 2);
}

#[test]
fn unchanged_original_c19_full_proof_uses_the_public_cli() {
    use serde_json::Value;
    let evidence = Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../specs/028-query-summary-congruence/evidence");
    let original = evidence.join("original-approval.json");
    let read = |name: &str| -> Value {
        serde_json::from_str(&std::fs::read_to_string(evidence.join(name)).unwrap()).unwrap()
    };
    let old = read("original-verification.json");
    let identities = read("semantic-identities.json");
    for (command, key) in [("version", "behavior_hash"), ("schema-hash", "schema_hash")] {
        let (status, text) = run(&[command, original.to_str().unwrap()]);
        assert_eq!(status, 0);
        assert_eq!(text.trim(), identities[key].as_str().unwrap());
    }
    let (status, items) = run(&["hashes", original.to_str().unwrap()]);
    assert_eq!(status, 0);
    assert_eq!(
        serde_json::from_str::<Value>(&items).unwrap(),
        identities["item_hashes"]
    );
    let (status, text) = run(&["verify", original.to_str().unwrap()]);
    let report: Value = serde_json::from_str(&text).unwrap();
    assert_eq!(report["profile"], old["profile"]);
    assert_eq!(report["verifier_version"], "0.10.0");
    let id = |c: &Value| {
        (
            c["kind"].clone(),
            c["action"]["hash"].clone(),
            c["subject"]["hash"].clone(),
        )
    };
    let targets = old["checks"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|c| c["kind"] == "postcondition" && c["outcome"] == "inconclusive")
        .map(id)
        .collect::<Vec<_>>();
    assert_eq!(targets.len(), 2);
    for target in targets {
        assert_eq!(
            report["checks"]
                .as_array()
                .unwrap()
                .iter()
                .find(|c| id(c) == target)
                .unwrap()["outcome"],
            "proven"
        );
    }
    assert_eq!(status, 0, "{text}");
    assert_eq!(report["result"], "verified");
}
