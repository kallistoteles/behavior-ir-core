#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "../../crates/behavior-core/tests/support/commands.rs"]
mod model;
use behavior_engine::store::commands::CommandStreamRequest;
use behavior_engine::store::replay::{replay_behavior_with, replay_data};
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{Backend, InMemoryBackend, Store};
use behavior_engine::verify::governance::EvidencePolicyV2;
use serde_json::json;
use std::collections::BTreeMap;
#[test]
fn replay_and_counterfactual_are_read_only_and_never_deliver_business_effects() {
    let m = behavior_engine::admit(&model::command_only_module(true).to_string()).unwrap();
    let ep=EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let mut s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_v2_for(&m, ep, vec![]).unwrap(),
    )
    .unwrap();
    let start = s.current().unwrap();
    let b = s
        .evaluate(
            &m,
            "receipt",
            &BTreeMap::new(),
            &json!({"recipient":"same"}),
            &json!({}),
            "2026-10-05T12:00:00Z",
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    let before = s.current_history().unwrap();
    let event = s.backend().record(1).unwrap().unwrap();
    let adapter_calls = std::cell::Cell::new(0);
    let adapter = || {
        adapter_calls.set(adapter_calls.get() + 1);
        panic!("business execution during replay")
    };
    let data = replay_data(&s, &start, &before.state_ref());
    assert!(data.ok);
    let modules = BTreeMap::from([(m.behavior_version(), m.clone())]);
    assert!(replay_behavior_with(&s, &modules, &BTreeMap::new(), &start, &before.state_ref()).ok);
    assert!(behavior_engine::replay(&m, &b.record.to_string()).matches);
    let counterfactual = behavior_engine::evaluate(
        &m,
        &model::command_only_request("counterfactual").to_string(),
    );
    assert_eq!(counterfactual.command_intents().len(), 1);
    let profile = behavior_engine::verify::Profile {
        checks: vec![behavior_engine::verify::CheckKind::EvaluationError],
        ..Default::default()
    };
    let solver = behavior_engine::verify::solver::Z3Process::from_env().unwrap();
    let _proof = behavior_engine::verify::verify(&m, &profile, None, &solver);
    assert_eq!(adapter_calls.get(), 0);
    let _host_only_adapter = adapter;
    assert_eq!(s.current_history().unwrap(), before);
    assert_eq!(s.backend().record(1).unwrap().unwrap(), event);
    assert!(s.backend().record(2).unwrap().is_none());
    let req = CommandStreamRequest::from_json(
        &json!({"format":"behavior.command_stream_request.v1","after":s.history_at(0).unwrap()})
            .to_string(),
    )
    .unwrap();
    let page = s.commands_since(&req).unwrap();
    let copy = Store::open(s.into_backend()).unwrap();
    assert_eq!(copy.commands_since(&req).unwrap(), page);
}
