#![allow(clippy::unwrap_used, clippy::expect_used)]
use behavior_engine::verify::{CheckKind, Profile, solver::Z3Process, verify, verify_migration};
use serde_json::{Value, json};
use std::path::Path;

#[path = "support/canonicalization_preservation_governance.rs"]
mod governance;

fn fixture(name: &str) -> String {
    std::fs::read_to_string(
        Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../tests/fixtures")
            .join(name),
    )
    .unwrap()
}
fn save(name: &str, text: &str) {
    let directory = match name {
        "purchase-cold.json"
        | "purchase-warm.json"
        | "purchase_fixed-cold.json"
        | "purchase_fixed-warm.json"
        | "migration-negative.json"
        | "migration-verified.json"
        | "authorization.json"
        | "migration-authorization.json"
        | "waiver.json"
        | "signed-waiver.json" => "current-verifier-0.11",
        _ => "baseline",
    };
    if directory != "baseline" {
        let historical: Value =
            serde_json::from_str(&fixture(&format!("canonicalization/baseline/{name}"))).unwrap();
        let current: Value = serde_json::from_str(text).unwrap();
        if current.get("verifier_version").is_some() {
            assert_eq!(historical["verifier_version"], "0.9.0");
            assert_eq!(current["verifier_version"], "0.11.0");
        }
        if current.get("attestation_version").is_some() {
            assert_eq!(current["behavior_version"], historical["behavior_version"]);
            assert_eq!(current["profile"], historical["profile"]);
            assert_eq!(current["result"], historical["result"]);
        }
    }
    assert_eq!(
        text,
        fixture(&format!("canonicalization/{directory}/{name}")),
        "independent {directory} expectation: {name}"
    );
}
fn save_json(name: &str, value: &Value) {
    save(
        name,
        &behavior_engine::canonical::to_canonical_string(value).unwrap(),
    );
}
fn profile() -> Profile {
    Profile {
        checks: vec![CheckKind::Preservation],
        ..Profile::default()
    }
}
fn migration_case(
    index: usize,
) -> (
    behavior_engine::semantic::module::Module,
    behavior_engine::semantic::module::Module,
    behavior_engine::migration::Migration,
) {
    let cases: Value = serde_json::from_str(&fixture("verify/migration.expected.json")).unwrap();
    let c = &cases["cases"][index];
    assert_eq!(c["variant"], "as_is");
    let s = behavior_engine::admit(&fixture(&format!(
        "migration/modules/{}.json",
        c["source"].as_str().unwrap()
    )))
    .unwrap();
    let t = behavior_engine::admit(&fixture(&format!(
        "migration/modules/{}.json",
        c["target"].as_str().unwrap()
    )))
    .unwrap();
    let m = behavior_engine::migration::admit_migration(
        &s,
        &t,
        &fixture(&format!(
            "migration/valid/{}.json",
            c["migration"].as_str().unwrap()
        )),
    )
    .unwrap();
    (s, t, m)
}

#[test]
fn generated_reports_preserve_independent_baseline() {
    let z3 = Z3Process::from_env().expect("baseline capture requires Z3");
    let p = profile();
    save_json("profile.json", &p.to_json());
    for (name, checks, rlimit, guard) in [
        ("profile-empty", Vec::new(), 0, 0),
        (
            "profile-extreme",
            CheckKind::ALL
                .into_iter()
                .rev()
                .chain(CheckKind::ALL)
                .collect(),
            u64::MAX,
            u64::MAX,
        ),
    ] {
        save_json(
            &format!("{name}.json"),
            &Profile {
                checks,
                rlimit,
                wall_clock_guard_ms: guard,
            }
            .to_json(),
        );
    }
    for name in ["purchase", "purchase_fixed"] {
        let m = behavior_engine::admit(&fixture(&format!("verify/{name}.json"))).unwrap();
        let cache = std::env::temp_dir().join(format!(
            "core021-preservation-{}-{name}",
            std::process::id()
        ));
        let _ = std::fs::remove_dir_all(&cache);
        let cold = verify(&m, &p, Some(&cache), &z3).unwrap();
        let warm = verify(&m, &p, Some(&cache), &z3).unwrap();
        assert_eq!(cold.hash, warm.hash);
        assert!(warm.checks.iter().all(|c| c.cached));
        save(
            &format!("{name}-cold.json"),
            &cold.to_json_string().unwrap(),
        );
        save(
            &format!("{name}-warm.json"),
            &warm.to_json_string().unwrap(),
        );
        std::fs::remove_dir_all(cache).unwrap();
    }
    for (i, name) in [(0, "migration-negative"), (1, "migration-verified")] {
        let (s, t, m) = migration_case(i);
        let report = verify_migration(&m, &s, &t, &Profile::default(), None, &z3);
        assert_eq!(
            report.result,
            if i == 0 { "not_verified" } else { "verified" }
        );
        save(&format!("{name}.json"), &report.to_json_string().unwrap());
    }
}
