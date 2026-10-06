#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "../../crates/behavior-core/tests/support/commands.rs"]
mod model;
use behavior_engine::invocation::{
    RequestedInvocation, Snapshot, invoke_document, invoke_intent_with_snapshot,
    invoke_with_snapshot,
};
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{Backend, InMemoryBackend, Store};
use behavior_engine::verify::governance::EvidencePolicyV2;
use serde_json::{Value, json};
const NOW: &str = "2026-10-05T12:00:00Z";
fn intent() -> Value {
    let mut r = model::command_only_invocation("customer-1");
    r["format"] = json!("behavior.capability_intent.v1");
    r.as_object_mut().unwrap().remove("context");
    r
}
fn module(guard: bool) -> behavior_engine::semantic::Module {
    behavior_engine::admit(&model::command_only_module(guard).to_string()).unwrap()
}
fn store(m: &behavior_engine::semantic::Module) -> Store<InMemoryBackend> {
    let p=EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    Store::create(
        InMemoryBackend::new(),
        m,
        genesis_v2_for(m, p, vec![]).unwrap(),
    )
    .unwrap()
}
#[test]
fn both_snapshot_invocation_forms_request_commands_with_no_entities_or_bindings() {
    let _profile = behavior_engine::builder::SemanticProfile::CommandIntents;
    let m = module(true);
    let requested =
        RequestedInvocation::decode(&model::command_only_invocation("customer-1").to_string())
            .unwrap()
            .0
            .unwrap();
    let snapshot = Snapshot::decode(&m, &model::command_only_snapshot().to_string())
        .unwrap()
        .0
        .unwrap();
    let direct = invoke_with_snapshot(&m, &requested, &snapshot).unwrap();
    let via_intent =
        invoke_intent_with_snapshot(&m, &intent().to_string(), &json!({}), &snapshot).unwrap();
    assert_eq!(direct.inner_record(), via_intent.inner_record());
    assert_eq!(direct.outcome_kind(), "evaluated");
    let inner = direct.inner_record().unwrap();
    assert_eq!(inner["state"], json!({}));
    assert_eq!(inner["changes"], json!([]));
    assert_eq!(inner["commands"]["intents"].as_array().unwrap().len(), 1);
    assert!(m.entities().is_empty());
}
#[test]
fn both_store_invocation_forms_are_read_only_until_explicit_command_only_commit() {
    let m = module(true);
    let mut s = store(&m);
    let before = s.current_history().unwrap();
    let requested =
        RequestedInvocation::decode(&model::command_only_invocation("customer-1").to_string())
            .unwrap()
            .0
            .unwrap();
    let direct = s.invoke(&m, &requested, NOW, None, None).unwrap();
    let via_intent = s
        .invoke_intent(&m, &intent().to_string(), &json!({}), NOW, None)
        .unwrap();
    assert_eq!(
        direct.bundle.as_ref().unwrap().transition_hash,
        via_intent.bundle.as_ref().unwrap().transition_hash
    );
    assert_eq!(s.current_history().unwrap(), before);
    assert!(s.backend().record(1).unwrap().is_none());
    let b = direct.bundle.unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    let after = s.current_history().unwrap();
    assert_eq!(after.state, before.state);
    assert_eq!(after.position, 1);
    assert_ne!(after.record, before.record);
    let event = s.backend().record(1).unwrap().unwrap();
    assert!(event.new_versions.is_empty());
    assert!(event.created.is_empty());
    assert!(event.removed.is_empty());
}
#[test]
fn false_guard_command_only_invocation_still_commits_an_empty_realized_bag() {
    let m = module(false);
    let mut s = store(&m);
    let before = s.current().unwrap();
    let result = s
        .invoke_intent(&m, &intent().to_string(), &json!({}), NOW, None)
        .unwrap();
    let b = result.bundle.unwrap();
    assert_eq!(b.record["result"], "ALLOW");
    assert_eq!(b.record["commands"]["intents"], json!([]));
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    assert_eq!(s.current().unwrap().state, before.state);
    assert_eq!(s.current().unwrap().position, before.position + 1);
}
#[test]
fn extra_binding_cannot_inject_synthetic_resolved_state() {
    let m = module(true);
    let mut requested = model::command_only_invocation("customer-1");
    requested["bindings"]["fake"] = json!({"entity":"Order","id":"invented"});
    let record = invoke_document(
        &m,
        &requested.to_string(),
        &model::command_only_snapshot().to_string(),
        None,
    )
    .unwrap();
    assert_eq!(record.outcome_kind(), "pre_evaluation_refusal");
    assert!(record.inner_record().is_none());
}

#[test]
fn published_receipt_fixtures_cover_both_public_invocation_forms() {
    let m = behavior_engine::admit(include_str!(
        "../../tests/fixtures/commands/modules/receipt.json"
    ))
    .unwrap();
    let invocation = include_str!("../../tests/fixtures/commands/invocations/receipt.json");
    let snapshot = include_str!("../../tests/fixtures/commands/snapshots/receipt.json");
    let direct = invoke_document(&m, invocation, snapshot, None).unwrap();
    let mut i: Value = serde_json::from_str(invocation).unwrap();
    i["format"] = json!("behavior.capability_intent.v1");
    i.as_object_mut().unwrap().remove("context");
    let snap = Snapshot::decode(&m, snapshot).unwrap().0.unwrap();
    let intent = invoke_intent_with_snapshot(&m, &i.to_string(), &json!({}), &snap).unwrap();
    assert_eq!(direct.inner_record(), intent.inner_record());
    assert_eq!(
        direct.inner_record().unwrap()["commands"]["intents"]
            .as_array()
            .unwrap()
            .len(),
        1
    );
}
