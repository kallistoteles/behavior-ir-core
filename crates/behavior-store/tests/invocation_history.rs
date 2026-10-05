#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_core::invocation::RequestedInvocation;
use behavior_store::documents::{EvidencePolicy, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use std::collections::BTreeMap;

#[test]
fn mixed_invocations_preserve_history_and_replay_from_their_original_positions() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let snapshot = common::json(&dir.join("snapshots/s1.json"));
    let seed = snapshot["entities"]
        .as_array()
        .unwrap()
        .iter()
        .map(|e| SeedEntity {
            entity: e["entity"].as_str().unwrap().into(),
            value: e["value"].clone(),
        })
        .collect();
    let mut store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), seed),
    )
    .unwrap();
    let initial = store.current().unwrap();
    let mut records = Vec::new();
    let mut commits = 0;
    for case in [
        "register",
        "summary",
        "suspend_unknown",
        "suspend",
        "summary_wrongtype",
        "customer_count",
        "transfer",
        "transfer_alias",
        "pair_total",
        "settle3",
    ] {
        let request = RequestedInvocation::decode(&common::read(
            &dir.join(format!("invocations/{case}.json")),
        ))
        .unwrap()
        .0
        .unwrap();
        let result = store
            .invoke(&module, &request, common::T0, None, None)
            .unwrap();
        records.push(result.record.to_json_string());
        if let Some(bundle) = result.bundle {
            store
                .commit(&module, &bundle.evaluated_state, &bundle)
                .unwrap();
            commits += 1;
        }
    }
    assert_eq!(commits, 4);
    let head = store.current().unwrap();
    assert_eq!(head.position, commits);
    assert!(store.backend().record(commits + 1).unwrap().is_none());
    let data = behavior_store::replay::replay_data(&store, &initial, &head);
    assert!(data.ok, "{data:?}");
    let modules = BTreeMap::from([(module.behavior_version().to_owned(), module.clone())]);
    let behavior = behavior_store::replay::replay_behavior(&store, &modules, &initial, &head);
    assert!(behavior.ok, "{behavior:?}");
    for record in records {
        let replay = store.replay_invocation(&module, &record).unwrap();
        assert!(replay.matches, "{:?}", replay.diff);
    }
}
