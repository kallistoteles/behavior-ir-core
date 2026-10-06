#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/history_backend.rs"]
mod faults;
#[path = "../../behavior-core/tests/support/commands.rs"]
mod model;
use behavior_core::semantic::module::Module;
use behavior_store::documents::{CommitBundle, EntityKey, SeedEntity};
use behavior_store::store::genesis_v2_for;
use behavior_store::{Backend, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use serde_json::{Value, json};
use std::collections::BTreeMap;
const NOW: &str = "2026-10-05T12:00:00Z";
fn make(guard: bool, seeded: bool) -> (Module, Store<faults::FaultBackend>) {
    let mut w = model::command_only_module(guard);
    let mut seed = vec![];
    if seeded {
        w["entities"] = model::module()["entities"].clone();
        w["entities"][0]["fields"].as_array_mut().unwrap().push(json!({"name":"parent","type":{"t":"option","of":{"t":"ref","entity":"Order"}},"loc":model::loc()}));
        let mut parent = model::value(2, true);
        parent["id"] = json!("parent-1");
        parent["parent"] = Value::Null;
        let mut child = model::value(2, true);
        child["parent"] = json!("parent-1");
        seed = vec![
            SeedEntity {
                entity: "Order".into(),
                value: parent,
            },
            SeedEntity {
                entity: "Order".into(),
                value: child,
            },
        ];
    }
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let ep=EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let s = Store::create(
        faults::FaultBackend::default(),
        &m,
        genesis_v2_for(&m, ep, seed).unwrap(),
    )
    .unwrap();
    (m, s)
}
fn candidate(m: &Module, s: &Store<faults::FaultBackend>, recipient: &str) -> CommitBundle {
    s.evaluate(
        m,
        "receipt",
        &BTreeMap::new(),
        &json!({"recipient":recipient}),
        &json!({}),
        NOW,
        None,
    )
    .unwrap()
    .bundle
    .unwrap()
}
fn state(s: &Store<faults::FaultBackend>) -> Value {
    let p = s.current().unwrap().position;
    let keys = s.backend().keys_at("Order", p).unwrap();
    let values: Vec<_> = keys
        .iter()
        .map(|k| s.backend().version_at(k, p).unwrap())
        .collect();
    let key = EntityKey {
        entity: "Order".into(),
        id: "parent-1".into(),
    };
    json!({"state":s.current().unwrap().state,"keys":keys,"versions":values,"incoming":s.backend().incoming_at(&key,p).unwrap().iter().map(|e|e.to_json()).collect::<Vec<_>>()})
}
#[test]
fn command_only_commits_advance_history_and_preserve_versions_universe_and_indexes() {
    let (m, mut s) = make(true, true);
    let before = state(&s);
    assert_eq!(before["incoming"].as_array().unwrap().len(), 1);
    let h = s.current_history().unwrap();
    let b = candidate(&m, &s, "customer-1");
    let c = s.commit(&m, &b.evaluated_state, &b).unwrap();
    assert!(!c.already);
    assert_eq!(s.current().unwrap().position, h.position + 1);
    assert_eq!(state(&s), before);
    assert_ne!(s.current_history().unwrap().record, h.record);
    let event = s.backend().record(1).unwrap().unwrap();
    assert!(event.new_versions.is_empty());
    assert!(event.created.is_empty());
    assert!(event.removed.is_empty());
    assert!(event.ref_changes.is_empty());
    assert_eq!(
        event.bundle.unwrap().record["commands"]["intents"]
            .as_array()
            .unwrap()
            .len(),
        1
    );
}
#[test]
fn empty_realized_bag_is_a_history_event_and_stale_head_still_conflicts() {
    let (m, mut s) = make(false, false);
    let b = candidate(&m, &s, "one");
    let stale = candidate(&m, &s, "two");
    let before = state(&s);
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    assert_eq!(s.current().unwrap().position, 1);
    assert_eq!(state(&s), before);
    assert_eq!(
        s.backend()
            .record(1)
            .unwrap()
            .unwrap()
            .bundle
            .unwrap()
            .record["commands"]["intents"],
        json!([])
    );
    let h = s.current_history().unwrap();
    assert!(s.commit(&m, &stale.evaluated_state, &stale).is_err());
    assert_eq!(s.current_history().unwrap(), h);
    assert_eq!(state(&s), before);
    assert_eq!(s.backend().commit_calls, 1);
}
#[test]
fn deliberate_repeat_is_new_history_and_old_resubmission_recovers_original_event() {
    let (m, mut s) = make(true, false);
    let first = candidate(&m, &s, "same");
    let c1 = s.commit(&m, &first.evaluated_state, &first).unwrap();
    let second = candidate(&m, &s, "same");
    assert_ne!(first.transition_hash, second.transition_hash);
    let c2 = s.commit(&m, &second.evaluated_state, &second).unwrap();
    assert_ne!(c1.record_id, c2.record_id);
    let h = s.current_history().unwrap();
    let recovered = s.commit(&m, &first.evaluated_state, &first).unwrap();
    assert!(recovered.already);
    assert_eq!(recovered.record_id, c1.record_id);
    assert_eq!(s.current_history().unwrap(), h);
    assert_eq!(s.backend().commit_calls, 2);
    assert!(s.backend().record(3).unwrap().is_none());
}
#[test]
fn prewrite_abort_and_lost_response_respect_command_only_atomicity() {
    let (m, mut s) = make(true, true);
    let b = candidate(&m, &s, "same");
    let before = state(&s);
    let h = s.current_history().unwrap();
    s.backend_mut().abort_before_write = true;
    assert!(s.commit(&m, &b.evaluated_state, &b).is_err());
    assert_eq!(s.current_history().unwrap(), h);
    assert_eq!(state(&s), before);
    assert!(s.backend().record(1).unwrap().is_none());
    s.backend_mut().abort_before_write = false;
    s.backend_mut().lose_acknowledgment = true;
    assert!(s.commit(&m, &b.evaluated_state, &b).is_err());
    assert_eq!(s.current().unwrap().position, 1);
    assert_eq!(state(&s), before);
    s.backend_mut().lose_acknowledgment = false;
    let recovered = s.commit(&m, &b.evaluated_state, &b).unwrap();
    assert!(recovered.already);
    assert_eq!(s.current().unwrap().position, 1);
    assert!(s.backend().record(2).unwrap().is_none());
}
