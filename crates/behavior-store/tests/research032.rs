#![allow(clippy::unwrap_used)]
use behavior_core as core_api;
use behavior_store as store_api;
#[path = "support/execution_evidence_workload.rs"]
mod execution_workload;
#[path = "support/research032_reference.rs"]
mod reference;
use serde_json::json;
use std::collections::BTreeMap;
use store_api::Store;

#[test]
fn complete_observations_are_not_a_digest_only_claim() {
    let value = reference::observations();
    for family in [
        "subject", "records", "bundles", "commits", "head", "versions", "reads", "commands",
        "replay",
    ] {
        assert!(value.get(family).is_some(), "missing {family}");
    }
    // Two committed attempts plus the drain and reopened evaluations.
    assert_eq!(value["records"].as_array().unwrap().len(), 4);
    assert_eq!(value["commits"].as_array().unwrap().len(), 2);
}

#[test]
fn allow_is_not_atomic_publication_or_a_new_parent_authorization() {
    let case = reference::Case {
        n: 2,
        steps: 2,
        ..reference::Case::default()
    };
    let module = reference::fixture::module(&case);
    let mut store = Store::create(
        store_api::InMemoryBackend::new(),
        &module,
        reference::fixture::genesis(&case, &module),
    )
    .unwrap();
    let one = store
        .evaluate(
            &module,
            "create",
            &BTreeMap::new(),
            &json!({"id0":"one"}),
            &json!({}),
            reference::NOW,
            None,
        )
        .unwrap();
    let two = store
        .evaluate(
            &module,
            "create",
            &BTreeMap::new(),
            &json!({"id0":"two"}),
            &json!({}),
            reference::NOW,
            None,
        )
        .unwrap();
    assert_eq!(one.record["result"], "ALLOW");
    assert_eq!(two.record["result"], "ALLOW");
    let a = one.bundle.unwrap();
    let b = two.bundle.unwrap();
    store.commit(&module, &a.evaluated_state, &a).unwrap();
    let head = store.current_history().unwrap();
    assert!(store.commit(&module, &b.evaluated_state, &b).is_err());
    assert_eq!(store.current_history().unwrap(), head);
}
