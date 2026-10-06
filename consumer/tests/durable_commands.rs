#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/commands.rs"]
mod model;
use behavior_engine::store::commands::{CommandStreamRequest, CommittedCommand};
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{Backend, InMemoryBackend, Store};
use behavior_engine::verify::governance::EvidencePolicyV2;
use serde_json::json;
use std::collections::{BTreeMap, BTreeSet};
struct MockAdapter {
    accepted: BTreeSet<String>,
    attempts: usize,
}
impl MockAdapter {
    fn deliver(&mut self, c: &CommittedCommand) {
        self.attempts += 1;
        self.accepted.insert(c.command_occurrence_id().into());
    }
}
#[test]
fn only_committed_store_output_reaches_adapter_and_retry_keeps_idempotency_key() {
    let m = behavior_engine::admit(&model::command_only_module(true).to_string()).unwrap();
    let ep=EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let mut s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_v2_for(&m, ep, vec![]).unwrap(),
    )
    .unwrap();
    let start = s.current_history().unwrap();
    let request = CommandStreamRequest::from_json(
        &json!({"format":"behavior.command_stream_request.v1","after":start}).to_string(),
    )
    .unwrap();
    let candidate = s
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
    let before = s.current_history().unwrap();
    assert!(s.commands_since(&request).unwrap().items().is_empty());
    assert!(s.backend().record(1).unwrap().is_none());
    s.commit(&m, &candidate.evaluated_state, &candidate)
        .unwrap();
    let page = s.commands_since(&request).unwrap();
    assert_eq!(page.items().len(), 1);
    assert_ne!(s.current_history().unwrap(), before);
    let c = &page.items()[0];
    assert_eq!(c.store(), s.store_id().unwrap());
    assert_eq!(c.history_position(), 1);
    assert_eq!(c.multiplicity_index(), 0);
    let mut adapter = MockAdapter {
        accepted: BTreeSet::new(),
        attempts: 0,
    };
    adapter.deliver(c);
    adapter.deliver(&s.commands_since(&request).unwrap().items()[0]);
    assert_eq!(adapter.attempts, 2);
    assert_eq!(adapter.accepted.len(), 1);
    // Deduplication belongs to this mock service. Core permits repeated attempts.
    assert_eq!(page.as_json()["items"][0], c.as_json());
    assert_eq!(page.next_after(), &s.current_history().unwrap());
    assert!(page.complete());
}
#[test]
fn candidate_only_bag_does_not_claim_commitment() {
    let m = behavior_engine::admit(&model::command_only_module(true).to_string()).unwrap();
    let record = behavior_engine::evaluate(&m, &model::command_only_request("same").to_string());
    assert_eq!(record.command_intents().len(), 1);
    assert!(
        record.command_intents().intents()[0]
            .as_json()
            .get("command_occurrence_id")
            .is_none()
    );
}
