#![allow(clippy::unwrap_used, clippy::expect_used)]
//! New trust, history and export APIs are usable through the supported facade alone.
use behavior_engine::store::documents::SeedEntity;
use behavior_engine::store::{InMemoryBackend, Store};
use behavior_engine::verify::governance::*;
use serde_json::{Value, json};
use std::collections::BTreeMap;
use std::path::Path;
fn fixture(name: &str) -> String {
    std::fs::read_to_string(
        Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../tests/fixtures")
            .join(name),
    )
    .unwrap()
}
#[test]
fn trusted_commit_replay_and_validated_export_use_the_public_facade() {
    let m = behavior_engine::admit(&fixture("wire/valid/ledger.json")).unwrap();
    let p = ExecutionPolicyV2::from_json(&fixture("governance-v2/policy-none.json")).unwrap();
    let mut raw: Value =
        serde_json::from_str(&fixture("governance-v2/evidence-policy.json")).unwrap();
    raw["execution_policies"] = json!([p.hash()]);
    let ep = EvidencePolicyV2::from_json(&raw.to_string()).unwrap();
    let q = AuthorizationContextV2::from_json(&fixture("governance-v2/context-unbound.json"), &p)
        .unwrap();
    let seeds = [("a1", "100.00"), ("a2", "5.00")]
        .map(|(id, balance)| SeedEntity {
            entity: "Account".into(),
            value: json!({"id":id,"active":true,"balance":balance}),
        })
        .to_vec();
    let g = behavior_engine::store::store::genesis_v2_for(&m, ep.clone(), seeds).unwrap();
    let mut s = Store::create(InMemoryBackend::new(), &m, g).unwrap();
    let start = s.current_history().unwrap();
    let bindings = BTreeMap::from([("from_".into(), "a1".into()), ("to".into(), "a2".into())]);
    let b = s
        .evaluate(
            &m,
            "transfer",
            &bindings,
            &json!({"amount":"1.00"}),
            &json!({}),
            "2026-10-05T12:00:00Z",
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    let candidate = b.governance_candidate().unwrap();
    let seed = fixture("governance-v2/authorizer.seed");
    let issuer = signing_key_id(seed.trim()).unwrap();
    let a = authorize_trusted(
        &GovernanceSubject::Module(&m),
        &candidate,
        &ep,
        &p,
        &[],
        &issuer,
        &q,
    )
    .unwrap();
    let signed = sign_authorization(&a, seed.trim()).unwrap();
    let evidence=EvidenceV2::from_json(&json!({"format":"behavior.evidence.v2","execution_policy":p.as_json(),"authorization":signed.as_json(),"verifications":[],"waivers":[],"waiver_signatures":[]}).to_string()).unwrap();
    let b = b.with_trusted_evidence(&evidence).unwrap();
    let committed = s
        .commit_with_context(&m, &start.state_ref(), &b, &q)
        .unwrap();
    assert_eq!(committed.evidence_trust, Some("authenticated"));
    let end = s.current_history().unwrap();
    assert!(
        behavior_engine::store::replay::replay_data(&s, &start.state_ref(), &end.state_ref()).ok
    );
    let exported = s.export_seed_at(&m, &end).unwrap();
    assert_eq!(exported.state, end.state);
    assert_eq!(exported.source_history, end);
    assert_eq!(
        s.commit(&m, &start.state_ref(), &b).unwrap().record_id,
        committed.record_id
    );
    assert_eq!(s.current_history().unwrap(), end);
}
