#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "../../behavior-core/tests/support/commands.rs"]
mod model;
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{InMemoryBackend, Store};
use behavior_engine::verify::governance::{EvidencePolicyV2, EvidenceV2, VerificationEnvelopeV2};
use serde_json::{Value, json};
use std::collections::BTreeMap;
use std::path::{Path, PathBuf};
use std::process::{Command, Output};
static NEXT: std::sync::atomic::AtomicUsize = std::sync::atomic::AtomicUsize::new(0);
struct Scratch(PathBuf);
impl Scratch {
    fn new() -> Self {
        let p = std::env::temp_dir().join(format!(
            "013-command-proof-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, std::sync::atomic::Ordering::Relaxed)
        ));
        std::fs::create_dir(&p).unwrap();
        Self(p)
    }
    fn file(&self, n: &str) -> String {
        self.0.join(n).to_str().unwrap().into()
    }
    fn write(&self, n: &str, v: &Value) -> String {
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
fn fixture(n: &str) -> String {
    Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures/governance-v2")
        .join(n)
        .to_str()
        .unwrap()
        .into()
}
fn run(args: &[String]) -> Output {
    Command::new(env!("CARGO_BIN_EXE_behavior"))
        .args(args)
        .output()
        .unwrap()
}
fn verify(wire: &str, profile: &str, out: &str) -> Vec<String> {
    vec![
        "governance".into(),
        "verify".into(),
        wire.into(),
        "--profile".into(),
        profile.into(),
        "--seed".into(),
        fixture("verifier.seed"),
        "--out".into(),
        out.into(),
    ]
}
#[test]
fn actual_cli_proof_and_signed_authorization_bind_the_complete_command_candidate() {
    let s = Scratch::new();
    let wire = Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures/commands/modules/receipt.json")
        .to_str()
        .unwrap()
        .to_string();
    let m = behavior_engine::admit(&std::fs::read_to_string(&wire).unwrap()).unwrap();
    let ep = EvidencePolicyV2::from_json(
        &std::fs::read_to_string(fixture("evidence-policy-verifier-0.8.json")).unwrap(),
    )
    .unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_v2_for(&m, ep, vec![]).unwrap(),
    )
    .unwrap();
    let b = store
        .evaluate(
            &m,
            "receipt",
            &BTreeMap::new(),
            &json!({"recipient":"customer-1"}),
            &json!({}),
            "2026-10-05T12:00:00Z",
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    let candidate = s.write(
        "candidate.json",
        &b.governance_candidate().unwrap().as_json(),
    );
    let verification = s.file("verification.json");
    let proof = run(&verify(&wire, &fixture("profile.json"), &verification));
    assert_eq!(
        proof.status.code(),
        Some(0),
        "{}",
        String::from_utf8_lossy(&proof.stderr)
    );
    let envelope =
        VerificationEnvelopeV2::from_json(&std::fs::read_to_string(&verification).unwrap())
            .unwrap();
    assert_eq!(envelope.report()["result"], "verified");
    assert_eq!(
        envelope.report()["checks"].as_array().unwrap().len(),
        envelope.manifest()["obligations"].as_array().unwrap().len()
    );
    let evidence = s.file("evidence.json");
    let mut args = vec![
        "governance".into(),
        "authorize".into(),
        candidate.clone(),
        "--wire".into(),
        wire,
        "--evidence-policy".into(),
        fixture("evidence-policy-verifier-0.8.json"),
        "--policy".into(),
        fixture("policy-verifier-0.8.json"),
        "--verification".into(),
        verification,
        "--seed".into(),
        fixture("authorizer.seed"),
        "--context".into(),
        fixture("context.json"),
        "--now".into(),
        "2026-10-05T12:00:00Z".into(),
        "--out".into(),
        evidence.clone(),
    ];
    let result = run(&args);
    assert_eq!(
        result.status.code(),
        Some(0),
        "{} {}",
        String::from_utf8_lossy(&result.stdout),
        String::from_utf8_lossy(&result.stderr)
    );
    let ev = EvidenceV2::from_json(&std::fs::read_to_string(&evidence).unwrap()).unwrap();
    assert_eq!(
        ev.authorization().as_json()["content"]["candidate_transition_hash"],
        b.transition_hash
    );
    let mut bad = b.governance_candidate().unwrap().as_json();
    bad["content"]["record"]["commands"]["intents"][0]["payload"]["recipient"] = json!("forged");
    std::fs::write(&candidate, bad.to_string()).unwrap();
    std::fs::write(&evidence, "preserved-output").unwrap();
    let tamper = run(&args);
    assert_eq!(tamper.status.code(), Some(2));
    assert_eq!(
        std::fs::read_to_string(&evidence).unwrap(),
        "preserved-output"
    );
    args[2] = s.write("valid.json", &b.governance_candidate().unwrap().as_json());
    let now = args.iter().position(|s| s == "--now").unwrap() + 1;
    args[now] = "2026-10-05T12:01:00Z".into();
    let wrong_time = run(&args);
    assert_ne!(wrong_time.status.code(), Some(0));
    assert_eq!(
        std::fs::read_to_string(&evidence).unwrap(),
        "preserved-output"
    );
}
#[test]
fn reachable_command_failure_and_deterministic_inconclusive_are_signed_truthfully() {
    let s = Scratch::new();
    let wire = s.write("unsafe.json", &model::ratio_module(model::boolean(true)));
    let mut profile: Value =
        serde_json::from_str(&std::fs::read_to_string(fixture("profile.json")).unwrap()).unwrap();
    profile["checks"] = json!(["evaluation_error"]);
    profile.as_object_mut().unwrap().remove("hash");
    for (limit, expected) in [(20_000_000, "not_verified"), (1, "not_verified")] {
        profile["rlimit"] = json!(limit);
        profile["hash"] = json!(
            behavior_engine::canonical::tagged_hash("behavior.profile.v1", &profile).unwrap()
        );
        let p = s.write("profile.json", &profile);
        let out = s.file("verification.json");
        let o = run(&verify(&wire, &p, &out));
        assert_eq!(
            o.status.code(),
            Some(1),
            "{}",
            String::from_utf8_lossy(&o.stderr)
        );
        let e = VerificationEnvelopeV2::from_json(&std::fs::read_to_string(out).unwrap()).unwrap();
        assert_eq!(e.report()["result"], expected);
        if limit == 1 {
            assert!(
                e.report()["checks"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .any(|c| c["outcome"] == "inconclusive" && c["reason"] == "resource_limit")
            );
        }
    }
}
