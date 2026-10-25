//! Domain-neutral admitted modules shared by 029 correctness and growth workloads.
#![allow(clippy::unwrap_used)]
use super::super::*;
use crate::{InMemoryBackend, documents::SeedEntity};
use serde_json::json;

#[path = "../../../tests/support/global_wire.rs"]
mod shared;
pub(super) use shared::{Global, wire};

pub(super) fn module(global: Global) -> Module {
    behavior_core::admit(&wire(global).to_string()).unwrap()
}

pub(super) fn seed(n: usize) -> Vec<SeedEntity> {
    (0..n)
        .map(|i| SeedEntity {
            entity: "E".into(),
            value: json!({"id":format!("e{i}"),"x":1,"y":2}),
        })
        .collect()
}

pub(super) fn store(global: Global, n: usize) -> (Module, Store<InMemoryBackend>) {
    let m = module(global);
    let store = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(&m, crate::documents::EvidencePolicy::none(), seed(n)),
    )
    .unwrap();
    (m, store)
}

#[test]
fn neutral_global_fixtures_are_admitted_and_seeded() {
    for global in [
        Global::None,
        Global::True,
        Global::AtMost(1000),
        Global::Unsupported,
    ] {
        let (m, s) = store(global, 2);
        assert_eq!(s.backend.keys_at("E", 0).unwrap().len(), 2);
        assert_eq!(m.actions().len(), 4);
    }
    let scaled =
        behavior_core::admit(&shared::scaled_wire(Global::AtMost(1000), 2, 3).to_string()).unwrap();
    assert_eq!(scaled.global_invariants().len(), 3);
    assert_eq!(scaled.action("create").unwrap().params().len(), 2);
}

#[test]
fn cardinality_boundary_has_independent_expected_results() {
    let mut results = Vec::new();
    for reference in [false, true] {
        let (m, mut s) = store(Global::AtMost(1000), 999);
        super::with_reference(reference, || {
            let allowed = s
                .evaluate(
                    &m,
                    "create",
                    &BTreeMap::new(),
                    &json!({"id":"number1000"}),
                    &json!({}),
                    "2026-10-25T12:00:00Z",
                    None,
                )
                .unwrap();
            assert_eq!(allowed.record["result"], "ALLOW");
            let b = allowed.bundle.as_ref().unwrap();
            let committed = s.commit(&m, &b.evaluated_state, b).unwrap();
            let head = s.current().unwrap();
            let denied = s
                .evaluate(
                    &m,
                    "create",
                    &BTreeMap::new(),
                    &json!({"id":"number1001"}),
                    &json!({}),
                    "2026-10-25T12:00:00Z",
                    None,
                )
                .unwrap();
            assert_eq!(denied.record["result"], "DENY");
            assert!(denied.bundle.is_none());
            assert_eq!(s.current().unwrap(), head);
            let (rows, facts) = super::tests::full_child(&s.backend, &m, head.position, &[], &[]);
            assert_eq!(rows.len(), 1000);
            assert!(behavior_core::eval::check_behavior_snapshot(&m, &rows, &facts).is_ok());
            results.push((allowed, committed, denied));
        });
    }
    super::tests::assert_same_evaluation(&results[0].0, &results[1].0);
    super::tests::assert_same_committed(&results[0].1, &results[1].1);
    super::tests::assert_same_evaluation(&results[0].2, &results[1].2);
}
