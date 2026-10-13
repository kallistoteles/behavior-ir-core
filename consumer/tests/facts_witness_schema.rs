#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Actual 024 producer/consumer preservation through the supported facade and CLI.
//! Schema shape is checked independently in the workspace, not in this consumer.
use behavior_engine::canonical::decode_strict;
use behavior_engine::verify::governance::{
    GovernanceSubject, VerificationEnvelopeV2, decode_trusted_profile, signing_key_id,
};
use serde_json::json;
use std::path::{Path, PathBuf};
use std::process::Command;
use std::sync::atomic::{AtomicU64, Ordering};

fn fixture_path(name: &str) -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../tests/fixtures")
        .join(name)
}

fn fixture(name: &str) -> String {
    std::fs::read_to_string(fixture_path(name)).unwrap()
}

struct Scratch(PathBuf);

impl Scratch {
    fn new() -> Self {
        static NEXT: AtomicU64 = AtomicU64::new(0);
        let path = std::env::temp_dir().join(format!(
            "024-consumer-facts-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        std::fs::create_dir(&path).unwrap();
        Self(path)
    }

    fn envelope(&self) -> PathBuf {
        self.0.join("envelope.json")
    }
}

impl Drop for Scratch {
    fn drop(&mut self) {
        std::fs::remove_dir_all(&self.0).unwrap();
    }
}

fn cli_binary() -> PathBuf {
    std::env::var_os("BEHAVIOR_BIN")
        .map(PathBuf::from)
        .unwrap_or_else(|| Path::new(env!("CARGO_MANIFEST_DIR")).join("../target/debug/behavior"))
}

#[test]
fn actual_signed_not_verified_counterexample_is_consumed_and_reproduced_without_rewriting() {
    let module =
        behavior_engine::admit(&fixture("facts-witness-schema/marker-customer.json")).unwrap();
    let profile = decode_trusted_profile(&fixture("governance-v2/profile.json")).unwrap();
    let scratch = Scratch::new();
    let output = Command::new(cli_binary())
        .args(["governance", "verify"])
        .arg(fixture_path("facts-witness-schema/marker-customer.json"))
        .arg("--profile")
        .arg(fixture_path("governance-v2/profile.json"))
        // This is the public conformance seed, not a production signing key.
        .arg("--seed")
        .arg(fixture_path("governance-v2/verifier.seed"))
        .arg("--out")
        .arg(scratch.envelope())
        .output()
        .unwrap();
    assert_eq!(
        output.status.code(),
        Some(1),
        "Expected a legitimate not_verified report, not an operational abort: stdout={} stderr={}",
        String::from_utf8_lossy(&output.stdout),
        String::from_utf8_lossy(&output.stderr)
    );

    let original_bytes = std::fs::read_to_string(scratch.envelope()).unwrap();
    let original = decode_strict(&original_bytes).unwrap();
    assert_eq!(
        decode_strict(std::str::from_utf8(&output.stdout).unwrap()).unwrap(),
        original,
        "The emitted report and persisted report must describe the same computation"
    );
    let envelope = VerificationEnvelopeV2::from_json(&original_bytes).unwrap();
    assert_eq!(envelope.as_json(), original);
    assert_eq!(envelope.report()["result"], "not_verified");
    assert_eq!(
        original["content"]["verifier_version"],
        behavior_engine::verify::VERIFIER_VERSION
    );
    assert_eq!(
        original["content"]["issuer_key_id"],
        signing_key_id(fixture("governance-v2/verifier.seed").trim()).unwrap()
    );
    assert_eq!(
        original["content"]["subject"],
        json!({"behavior_hash":module.behavior_version()})
    );
    envelope
        .validate_for_subject(
            &GovernanceSubject::Module(&module),
            &profile,
            original["content"]["solver_version"].as_str().unwrap(),
        )
        .unwrap();

    let counterexamples: Vec<_> = envelope.report()["checks"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|check| check["outcome"] == "counterexample")
        .collect();
    assert_eq!(counterexamples.len(), 1);
    let witness = &counterexamples[0]["witness"];
    assert_eq!(witness["result"], "DENY");
    assert_eq!(witness["facts"]["existence"].as_array().unwrap().len(), 1);
    assert_eq!(witness["facts"]["existence"][0]["entity"], "Customer");
    assert_eq!(witness["facts"]["existence"][0]["exists"], false);
    assert_eq!(
        witness["facts"]["existence"][0]["id"],
        witness["input"]["id"]
    );
    assert!(witness["facts"].get("exists").is_none());
    let request = json!({
        "action":"require_customer", "data_version":"verification",
        "state":witness["state"], "input":witness["input"],
        "context":witness["context"], "facts":witness["facts"],
    });
    let reproduced = behavior_engine::evaluate(&module, &request.to_string());
    assert_eq!(reproduced.as_json()["result"], witness["result"]);
    assert_eq!(reproduced.as_json()["result"], "DENY");
    behavior_engine::DecisionRecord::from_json(&reproduced.to_json_string()).unwrap();
    assert_eq!(
        std::fs::read_to_string(scratch.envelope()).unwrap(),
        original_bytes,
        "Consumer checks must not normalize or rewrite original signed evidence"
    );
}
