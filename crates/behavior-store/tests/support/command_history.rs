#![allow(dead_code)]
#[path = "history_backend.rs"]
pub mod faults;
#[path = "../../../behavior-core/tests/support/commands.rs"]
pub mod model;
use behavior_core::semantic::module::Module;
use behavior_store::Store;
use behavior_store::commands::{CommandStreamPage, CommandStreamRequest};
use behavior_store::documents::{CommitBundle, HistoryRef};
use behavior_store::store::genesis_v2_for;
use behavior_verify::governance::trusted::EvidencePolicyV2;
use serde_json::json;
use std::collections::BTreeMap;
pub const NOW: &str = "2026-10-05T12:00:00Z";
pub fn module(guard: bool, duplicates: bool) -> Module {
    let mut w = model::command_only_module(guard);
    if duplicates {
        let a = w["actions"][0]["command_effects"][0].clone();
        let mut b = a.clone();
        b["payload"]["recipient"] = model::string("other");
        w["actions"][0]["command_effects"] = json!([a.clone(), b, a]);
    }
    behavior_core::admit(&w.to_string()).unwrap()
}
pub fn store(m: &Module) -> Store<faults::FaultBackend> {
    let ep=EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    Store::create(
        faults::FaultBackend::default(),
        m,
        genesis_v2_for(m, ep, vec![]).unwrap(),
    )
    .unwrap()
}
pub fn candidate(m: &Module, s: &Store<faults::FaultBackend>, recipient: &str) -> CommitBundle {
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
pub fn commit(m: &Module, s: &mut Store<faults::FaultBackend>, recipient: &str) -> CommitBundle {
    let b = candidate(m, s, recipient);
    s.commit(m, &b.evaluated_state, &b).unwrap();
    b
}
pub fn request(
    after: &HistoryRef,
    through: Option<&HistoryRef>,
    limit: u32,
) -> CommandStreamRequest {
    CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":after,"through":through,"max_records":limit}).to_string()).unwrap()
}
pub fn all(s: &Store<faults::FaultBackend>) -> CommandStreamPage {
    s.commands_since(&request(&s.history_at(0).unwrap(), None, 256))
        .unwrap()
}
pub fn counts(s: &Store<faults::FaultBackend>) -> (u64, usize) {
    (s.current().unwrap().position, s.backend().commit_calls)
}
