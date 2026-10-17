#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Checked public producers for separately named current-verifier test artifacts.
#[path = "../tests/support/canonicalization.rs"]
mod support;
use behavior_engine::verify::governance::{EvidencePolicyV2, ExecutionPolicyV2};
use behavior_engine::verify::{Profile, solver::Z3Process, verify, verify_migration};
use serde_json::{Value, json};
use std::path::{Path, PathBuf};

fn root() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../tests/fixtures")
}
fn read(name: &str) -> Value {
    serde_json::from_str(&std::fs::read_to_string(root().join(name)).unwrap()).unwrap()
}
fn write(name: &str, value: &Value) {
    let path = root().join(name);
    std::fs::create_dir_all(path.parent().unwrap()).unwrap();
    std::fs::write(
        path,
        behavior_engine::canonical::to_canonical_string(value).unwrap(),
    )
    .unwrap();
}
fn canonicalization() {
    use behavior_engine::verify::governance::{authorize, authorize_migration, sign_waiver};
    let solver = Z3Process::from_env().unwrap();
    let [(_, negative), (module, report)] = ["purchase", "purchase_fixed"].map(|name| {
        let module =
            behavior_engine::admit(&support::fixture(&format!("verify/{name}.json"))).unwrap();
        let cache = support::fresh_dir(&format!("current-golden-{name}"));
        let cold = verify(&module, &support::profile(), Some(&cache), &solver).unwrap();
        let warm = verify(&module, &support::profile(), Some(&cache), &solver).unwrap();
        assert_eq!(cold.hash, warm.hash);
        assert!(warm.checks.iter().all(|check| check.cached));
        for (suffix, report) in [("cold", &cold), ("warm", &warm)] {
            write(
                &format!("canonicalization/current-verifier-0.10/{name}-{suffix}.json"),
                &report.value,
            );
        }
        std::fs::remove_dir_all(cache).unwrap();
        (module, cold)
    });
    let finding = &negative.findings()[0];
    let waiver = json!({"behavior_version":negative.value["behavior_version"],"finding_hash":finding["hash"],"profile_hash":negative.value["profile"]["hash"],"verifier_version":negative.value["verifier_version"],"rationale":"Core021 fixed test fixture"});
    write(
        "canonicalization/current-verifier-0.10/waiver.json",
        &waiver,
    );
    write(
        "canonicalization/current-verifier-0.10/signed-waiver.json",
        &sign_waiver(&"42".repeat(32), &waiver.to_string()).unwrap(),
    );
    let policy = support::fixture("governance/require_verified.json");
    let record = support::fixture("canonicalization/baseline/record.json");
    let authorization = authorize(
        &policy,
        &module,
        &record,
        Some(&report.to_json_string().unwrap()),
        &[],
        &[],
        "2026-09-25T12:00:00Z",
    )
    .unwrap();
    write(
        "canonicalization/current-verifier-0.10/authorization.json",
        &authorization.value,
    );
    for (index, name) in [
        (0, "migration-negative.json"),
        (1, "migration-verified.json"),
    ] {
        let (source, target, migration) = support::migration_case(index);
        let report = verify_migration(
            &migration,
            &source,
            &target,
            &Profile::default(),
            None,
            &solver,
        );
        write(
            &format!("canonicalization/current-verifier-0.10/{name}"),
            &report.value,
        );
        if index == 1 {
            let authorization = authorize_migration(
                &policy,
                &migration,
                &format!("sha256:{}", "0".repeat(64)),
                Some(&report.to_json_string().unwrap()),
                &[],
                &[],
                "2026-09-25T12:00:00Z",
            )
            .unwrap();
            write(
                "canonicalization/current-verifier-0.10/migration-authorization.json",
                &authorization.value,
            );
        }
    }
}
fn main() {
    assert_eq!(behavior_engine::verify::VERIFIER_VERSION, "0.10.0");
    match std::env::args().nth(1).as_deref() {
        Some("policies") => {
            let mut draft = read("governance-v2/policy-verifier-0.9.json");
            draft["accepted_verifiers"] = json!(["0.10.0"]);
            let policy = ExecutionPolicyV2::from_json(&draft.to_string()).unwrap();
            write("governance-v2/policy-verifier-0.10.json", &policy.as_json());
            let mut draft = read("governance-v2/evidence-policy-verifier-0.9.json");
            draft["execution_policies"] = json!([policy.hash()]);
            let evidence = EvidencePolicyV2::from_json(&draft.to_string()).unwrap();
            write(
                "governance-v2/evidence-policy-verifier-0.10.json",
                &evidence.as_json(),
            );
            println!(
                "{}",
                json!({"policy":policy.hash(),"evidence_policy":evidence.hash()})
            );
        }
        Some("canonicalization") => canonicalization(),
        _ => panic!("expected policies or canonicalization"),
    }
}
