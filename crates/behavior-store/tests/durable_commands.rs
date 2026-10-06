#![allow(clippy::unwrap_used, clippy::expect_used)]
//! History owns mixed state/request commitment; no second persistence operation.
mod common;
#[path = "support/history_backend.rs"]
mod faults;
#[path = "../../behavior-core/tests/support/commands.rs"]
mod model;
use behavior_core::semantic::module::Module;
use behavior_store::documents::{CommitBundle, EntityKey, SeedEntity};
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{Backend, Store};
use behavior_verify::governance::trusted::*;
use faults::FaultBackend;
use serde_json::{Value, json};
use std::collections::BTreeMap;
const NOW: &str = "2026-10-05T12:00:00Z";
fn module() -> Module {
    behavior_core::admit(&model::module().to_string()).unwrap()
}
fn fixture(name: &str) -> Value {
    common::json(&common::fixtures().join("governance-v2").join(name))
}
fn none() -> EvidencePolicyV2 {
    EvidencePolicyV2::from_json(&fixture("evidence-policy-none.json").to_string()).unwrap()
}
fn create(ep: EvidencePolicyV2) -> Store<FaultBackend> {
    let m = module();
    Store::create(
        FaultBackend::default(),
        &m,
        genesis_v2_for(
            &m,
            ep,
            vec![SeedEntity {
                entity: "Order".into(),
                value: model::value(2, true),
            }],
        )
        .unwrap(),
    )
    .unwrap()
}
fn candidate(s: &Store<FaultBackend>) -> CommitBundle {
    let e = s
        .evaluate(
            &module(),
            "submit",
            &BTreeMap::from([("order".into(), "order-1".into())]),
            &json!({}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap();
    assert_eq!(e.record["result"], "ALLOW");
    e.bundle.unwrap()
}
fn key() -> EntityKey {
    EntityKey {
        entity: "Order".into(),
        id: "order-1".into(),
    }
}
fn snapshot(s: &Store<FaultBackend>) -> Value {
    let head = s.backend().head().unwrap().unwrap();
    let records: Vec<_> = (1..=head.state_ref.position.saturating_add(1))
        .map(|p| s.backend().record(p).unwrap())
        .collect();
    let versions: Vec<_> = (0..=head.state_ref.position)
        .map(|p| s.backend().version_at(&key(), p).unwrap())
        .collect();
    let incoming: Vec<_> = (0..=head.state_ref.position)
        .map(|p| {
            s.backend()
                .incoming_at(&key(), p)
                .unwrap()
                .iter()
                .map(|e| e.to_json())
                .collect::<Vec<_>>()
        })
        .collect();
    json!({"head":head,"records":records,"versions":versions,"incoming":incoming,"removed":s.backend().removed_at(&key()).unwrap(),"used":s.backend().used_at(&key(),head.state_ref.position).unwrap()})
}
#[test]
fn state_and_request_are_invisible_before_commit_and_durable_at_one_event() {
    let mut s = create(none());
    let before = snapshot(&s);
    let b = candidate(&s);
    assert_eq!(snapshot(&s), before);
    assert_eq!(b.record["commands"]["intents"].as_array().unwrap().len(), 1);
    let result = s.commit(&module(), &b.evaluated_state, &b).unwrap();
    assert!(!result.already);
    let event = s.backend().record(1).unwrap().unwrap();
    assert_eq!(event.position, 1);
    let body = serde_json::to_value(event).unwrap();
    assert_eq!(
        body["bundle"]["record"]["commands"]["intents"],
        b.record["commands"]["intents"]
    );
    assert_eq!(
        s.backend().version_at(&key(), 1).unwrap().unwrap().value["submitted"],
        true
    );
    assert_eq!(s.backend().commit_calls, 1);
}
#[test]
fn prewrite_failure_preserves_versions_indexes_head_history_and_idempotency() {
    let mut s = create(none());
    let b = candidate(&s);
    let before = snapshot(&s);
    s.backend_mut().abort_before_write = true;
    assert!(s.commit(&module(), &b.evaluated_state, &b).is_err());
    assert_eq!(snapshot(&s), before);
    assert_eq!(s.backend().commit_calls, 1);
    s.backend_mut().abort_before_write = false;
    let result = s.commit(&module(), &b.evaluated_state, &b).unwrap();
    assert!(!result.already);
    assert_eq!(s.current().unwrap().position, 1);
}
#[test]
fn response_loss_recovers_one_original_event_with_both_results() {
    let mut s = create(none());
    let b = candidate(&s);
    s.backend_mut().lose_acknowledgment = true;
    assert!(s.commit(&module(), &b.evaluated_state, &b).is_err());
    assert_eq!(s.current().unwrap().position, 1);
    let saved = snapshot(&s);
    s.backend_mut().lose_acknowledgment = false;
    let result = s.commit(&module(), &b.evaluated_state, &b).unwrap();
    assert!(result.already);
    assert_eq!(snapshot(&s), saved);
    assert_eq!(s.backend().commit_calls, 1);
}
#[test]
fn another_commit_invalidates_a_different_candidate_from_the_same_parent() {
    let mut w = model::module();
    w["actions"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"tag","role":"input","type":{"t":"string"}}));
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let mut s = Store::create(
        FaultBackend::default(),
        &m,
        genesis_v2_for(
            &m,
            none(),
            vec![SeedEntity {
                entity: "Order".into(),
                value: model::value(2, true),
            }],
        )
        .unwrap(),
    )
    .unwrap();
    let bindings = BTreeMap::from([("order".into(), "order-1".into())]);
    let first = s
        .evaluate(
            &m,
            "submit",
            &bindings,
            &json!({"tag":"first"}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    let stale = s
        .evaluate(
            &m,
            "submit",
            &bindings,
            &json!({"tag":"second"}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    assert_ne!(first.transition_hash, stale.transition_hash);
    assert_eq!(first.evaluated_history, stale.evaluated_history);
    s.commit(&m, &first.evaluated_state, &first).unwrap();
    let before = snapshot(&s);
    assert!(s.commit(&m, &stale.evaluated_state, &stale).is_err());
    assert_eq!(snapshot(&s), before);
}
#[test]
fn altering_command_count_with_a_recomputed_candidate_cannot_claim_evaluation() {
    let mut s = create(none());
    let mut b = candidate(&s);
    let before = snapshot(&s);
    let intent = b.record["commands"]["intents"][0].clone();
    b.record["commands"]["intents"]
        .as_array_mut()
        .unwrap()
        .push(intent);
    b.transition_hash = b.governance_candidate().unwrap().hash().into();
    assert!(s.commit(&module(), &b.evaluated_state, &b).is_err());
    assert_eq!(snapshot(&s), before);
    assert_eq!(s.backend().commit_calls, 0);
}
#[test]
fn required_authorization_binds_the_complete_command_collection() {
    let raw_p = fixture("policy-none.json");
    let p = ExecutionPolicyV2::from_json(&raw_p.to_string()).unwrap();
    let mut raw_ep = fixture("evidence-policy.json");
    raw_ep["execution_policies"] = json!([p.hash()]);
    let ep = EvidencePolicyV2::from_json(&raw_ep.to_string()).unwrap();
    let q = AuthorizationContextV2::from_json(&fixture("context-unbound.json").to_string(), &p)
        .unwrap();
    let mut s = create(ep.clone());
    let b = candidate(&s);
    let m = module();
    let issuer = raw_ep["trusted_authorities"][0]["key_id"].as_str().unwrap();
    let auth = authorize_trusted(
        &GovernanceSubject::Module(&m),
        &b.governance_candidate().unwrap(),
        &ep,
        &p,
        &[],
        issuer,
        &q,
    )
    .unwrap();
    let seed = common::read(&common::fixtures().join("governance-v2/authorizer.seed"));
    let signed = sign_authorization(&auth, seed.trim()).unwrap();
    let evidence=EvidenceV2::from_json(&json!({"format":"behavior.evidence.v2","execution_policy":p.as_json(),"authorization":signed.as_json(),"verifications":[],"waivers":[],"waiver_signatures":[]}).to_string()).unwrap();
    let valid = b.with_trusted_evidence(&evidence).unwrap();
    let mut altered = valid.clone();
    altered.record["commands"] = json!({"declarations":[],"types":[],"intents":[]});
    altered.transition_hash = altered.governance_candidate().unwrap().hash().into();
    assert_ne!(altered.transition_hash, b.transition_hash);
    let before = snapshot(&s);
    assert!(
        s.commit_with_context(&m, &altered.evaluated_state, &altered, &q)
            .is_err()
    );
    assert_eq!(snapshot(&s), before);
    s.commit_with_context(&m, &valid.evaluated_state, &valid, &q)
        .unwrap();
    assert_eq!(s.current().unwrap().position, 1);
}
#[test]
fn untrusted_candidate_decode_validates_the_self_contained_command_archive() {
    let s = create(none());
    let mut b = candidate(&s);
    b.record["commands"]["intents"][0]["payload"]["recipient"] = json!("forged");
    assert!(b.governance_candidate().is_err());
}
#[test]
fn legacy_genesis_refuses_new_profile_before_any_write_even_for_none_policy() {
    let m = module();
    let mut s = Store::create(
        FaultBackend::default(),
        &m,
        genesis_for(
            &m,
            behavior_store::documents::EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "Order".into(),
                value: model::value(2, true),
            }],
        ),
    )
    .unwrap();
    let before = snapshot(&s);
    let result = s.evaluate(
        &m,
        "submit",
        &BTreeMap::from([("order".into(), "order-1".into())]),
        &json!({}),
        &json!({}),
        NOW,
        None,
    );
    match result {
        Err(e) => assert_eq!(e.code(), "HISTORY_FORMAT_UPGRADE_REQUIRED"),
        Ok(e) => {
            let b = e.bundle.unwrap();
            assert_eq!(
                s.commit(&m, &b.evaluated_state, &b).unwrap_err().code(),
                "HISTORY_FORMAT_UPGRADE_REQUIRED"
            );
        }
    }
    assert_eq!(snapshot(&s), before);
    assert_eq!(s.backend().commit_calls, 0);
}
