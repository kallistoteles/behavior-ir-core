//! Actual growing-state controls with independent expected boundary outcomes.
#![allow(clippy::unwrap_used)]
use super::*;
use crate::InMemoryBackend;
use global_fixtures::{Global, seed};
fn sequence(n: usize, batch: usize, reference: bool) -> Vec<Json> {
    with_reference(reference, || {
        let w = workload_tests::global_workload::fixture::scaled_wire(
            Global::AtMost((n + batch * 2) as i64),
            batch,
            3,
        );
        let m = behavior_core::admit(&w.to_string()).unwrap();
        let mut s = Store::create(
            InMemoryBackend::new(),
            &m,
            genesis_for(&m, crate::documents::EvidencePolicy::none(), seed(n)),
        )
        .unwrap();
        let mut observations = Vec::new();
        for step in 0..3 {
            let mut input = serde_json::Map::new();
            for i in 0..batch {
                input.insert(
                    if i == 0 {
                        "id".into()
                    } else {
                        format!("id{i}")
                    },
                    json!(format!("a{step}_{i}")),
                );
            }
            let evaluated = s
                .evaluate(
                    &m,
                    "create",
                    &BTreeMap::new(),
                    &Json::Object(input),
                    &json!({}),
                    "2026-10-25T12:00:00Z",
                    None,
                )
                .unwrap();
            assert_eq!(
                evaluated.record["result"],
                if step < 2 { "ALLOW" } else { "DENY" }
            );
            let before = s.current().unwrap();
            observations.push(serde_json::to_value(&evaluated.bundle).unwrap());
            observations.push(evaluated.record.clone());
            if let Some(bundle) = evaluated.bundle {
                let c = s.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
                observations.push(json!({"record_id":c.record_id,"result_state":c.result_state,"already":c.already,"evidence_trust":c.evidence_trust}));
            } else {
                assert_eq!(s.current().unwrap(), before);
            }
        }
        // Identity is typed: an Other may share a textual E identity, without
        // consuming the E cardinality bound, even when that bound is saturated.
        let other = s
            .evaluate(
                &m,
                "create_other",
                &BTreeMap::new(),
                &json!({"id":"a0_0"}),
                &json!({}),
                "2026-10-25T12:00:00Z",
                None,
            )
            .unwrap();
        assert_eq!(other.record["result"], "ALLOW");
        observations.push(other.record.clone());
        let b = other.bundle.unwrap();
        s.commit(&m, &b.evaluated_state, &b).unwrap();
        let (rows, facts) =
            tests::full_child(&s.backend, &m, s.current().unwrap().position, &[], &[]);
        assert_eq!(rows.len(), n + batch * 2 + 1);
        assert!(behavior_core::eval::check_behavior_snapshot(&m, &rows, &facts).is_ok());
        observations
    })
}
#[test]
fn complete_creation_cycles_include_empty_multi_create_and_multiple_policy_bounds() {
    for n in [0, 1, 16, 128] {
        for batch in [1, 2] {
            assert_eq!(
                sequence(n, batch, false),
                sequence(n, batch, true),
                "n={n},batch={batch}"
            );
        }
    }
}
