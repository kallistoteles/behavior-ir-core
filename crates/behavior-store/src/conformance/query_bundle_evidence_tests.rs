#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Actual Core producers, using the original conformance seed and workload.

use super::*;
use crate::memory::InMemoryBackend;
use crate::store::genesis_v2_for;
use behavior_verify::governance::trusted::EvidencePolicyV2;

fn v2_orders() -> (Store<InMemoryBackend>, Module) {
    let module = orders().unwrap();
    let policy = EvidencePolicyV2::from_json(include_str!(
        "../../../../tests/fixtures/governance-v2/evidence-policy-none.json"
    ))
    .unwrap();
    let genesis = genesis_v2_for(&module, policy, orders_seed()).unwrap();
    (
        Store::create(InMemoryBackend::new(), &module, genesis).unwrap(),
        module,
    )
}

#[test]
fn orders_history_v2_producer_evidence_completes_eight_commits() {
    let (mut store, module) = v2_orders();
    let result = orders_history(&mut store, &module);
    assert!(
        result.is_ok(),
        "Core must consume its v2 query evidence; head={}, failure={:?}",
        store.current().unwrap().position,
        result.as_ref().err()
    );
    let records = result.unwrap();
    assert_eq!(records.len(), 9);
    assert_eq!(store.current().unwrap().position, 8);
    assert!(records.iter().any(|r| r["facts"]["queries"].is_array()));
}

#[test]
fn orders_history_v1_original_workload_still_completes() {
    let (mut store, module) = create_orders(InMemoryBackend::new()).unwrap();
    assert_eq!(orders_history(&mut store, &module).unwrap().len(), 9);
    assert_eq!(store.current().unwrap().position, 8);
}

#[test]
fn v1_optional_index_reversed_enumeration_preserves_records() {
    let (mut indexed, module) = create_orders(InMemoryBackend::new()).unwrap();
    let (mut reversed, _) = create_orders(ReversedKeys {
        inner: InMemoryBackend::new(),
    })
    .unwrap();
    assert_eq!(
        orders_history(&mut indexed, &module).unwrap(),
        orders_history(&mut reversed, &module).unwrap()
    );
    assert_eq!(
        indexed.current_history().unwrap(),
        reversed.current_history().unwrap()
    );
}

#[test]
fn v1_actual_queries_include_empty_and_nonempty_membership() {
    let (mut store, module) = create_orders(InMemoryBackend::new()).unwrap();
    let records = orders_history(&mut store, &module).unwrap();
    let members: Vec<_> = records
        .iter()
        .filter_map(|r| r["facts"]["queries"].as_array())
        .flatten()
        .map(|q| q["members"].as_array().unwrap())
        .collect();
    assert!(members.iter().any(|m| m.is_empty()));
    assert!(members.iter().any(|m| !m.is_empty()));
}

#[test]
fn v2_nonquery_producer_still_commits() {
    let (mut store, module) = v2_orders();
    let evaluated = run_action(
        &store,
        &module,
        "renumber",
        &[("employee", "e1")],
        json!({"number":"N3"}),
    )
    .unwrap();
    let bundle = evaluated.bundle.as_ref().unwrap();
    assert!(bundle.read_facts.get("queries").is_none());
    apply(&mut store, &module, evaluated).unwrap();
    assert_eq!(store.current().unwrap().position, 1);
}
