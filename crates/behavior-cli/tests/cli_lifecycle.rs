#![allow(clippy::unwrap_used, clippy::expect_used)]

#[path = "support/current.rs"]
mod current;

// The CLI with entity lifecycle (feature 006): wire IR 0.5 modules, requests with `facts`,
// replay of records with facts, and verification with referential integrity.

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

fn tmp(name: &str, text: &str) -> String {
    let p = std::env::temp_dir().join(format!("behavior-cli-006-{}-{name}", std::process::id()));
    std::fs::write(&p, text).unwrap();
    p.to_str().unwrap().to_string()
}

#[test]
fn eval_and_replay_with_facts() {
    let f = fixtures();
    let wire = f.join("wire/valid/accounts.json");
    let wire = wire.to_str().unwrap();
    let (code, out) = run(&["admit", wire]);
    assert_eq!(code, 0, "{out}");
    let req = |n: &str| {
        if matches!(n, "open_account_allowed" | "open_account_used") {
            current::request(Path::new(wire), &f.join(format!("requests/006/{n}.json")))
        } else {
            f.join(format!("requests/006/{n}.json"))
        }
        .to_str()
        .unwrap()
        .to_string()
    };

    let (code, record) = run(&["eval", wire, &req("open_account_allowed")]);
    assert_eq!(code, 0, "{record}");
    let v: serde_json::Value = serde_json::from_str(&record).unwrap();
    assert_eq!(v["record_version"], "0.8");
    assert_eq!(v["lifecycle"][0]["op"], "create");
    let (code, out) = run(&["replay", wire, &tmp("record.json", &record)]);
    assert_eq!(code, 0, "{out}");

    let (code, _) = run(&["eval", wire, &req("open_account_used")]);
    assert_eq!(code, 1, "ENTITY_ID_ALREADY_USED is a refusal");
    let (code, _) = run(&["eval", wire, &req("check_exists_unknown")]);
    assert_eq!(
        code, 2,
        "a missing complete current snapshot is invalid input"
    );
    let (code, _) = run(&["eval", wire, &req("check_exists_inconsistent")]);
    assert_eq!(code, 2, "INCONSISTENT_FACTS is invalid input");
}

#[test]
fn verify_reports_referential_integrity() {
    let wire = fixtures().join("wire/valid/accounts.json");
    let (_, out) = run(&["verify", wire.to_str().unwrap()]);
    let v: serde_json::Value = serde_json::from_str(&out).unwrap();
    assert_eq!(v["verifier_version"], "0.9.0");
    let checks = v["checks"].as_array().unwrap();
    let creates: Vec<_> = checks
        .iter()
        .filter(|check| {
            check["kind"] == "preservation" && check["action"]["name"] == "open_account"
        })
        .collect();
    assert_eq!(creates.len(), 2);
    assert!(creates.iter().all(|check| check["outcome"] == "proven"));
    for action in [
        "remove_customer",
        "remove_customer_unchecked",
        "switch_and_remove",
    ] {
        let obligations: Vec<_> = checks
            .iter()
            .filter(|check| check["action"]["name"] == action)
            .collect();
        assert!(!obligations.is_empty());
        assert!(
            obligations
                .iter()
                .all(|check| check["outcome"] == "inconclusive"
                    && check["reason"] == "encoding_error")
        );
    }
}
