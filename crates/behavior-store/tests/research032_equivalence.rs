#![allow(clippy::unwrap_used)]
//! Independent Core cases for context/lifecycle aliases and selected errors.
use behavior_core as core_api;
use behavior_store as store_api;
#[path = "support/execution_evidence_workload.rs"]
mod execution_workload;
#[path = "support/research032_reference.rs"]
mod reference;
#[test]
fn complete_reference_observations_are_type_sensitive_and_replayable() {
    let observed = reference::observations();
    assert_eq!(observed["replay"]["data"]["ok"], true);
    assert_eq!(observed["replay"]["behavior"]["ok"], true);
    assert_eq!(observed["replay"]["references"]["ok"], true);
    let mut changed = observed.clone();
    changed["subject"]["origin"]["position"] = serde_json::json!(false);
    assert_ne!(changed, observed);
}
#[test]
fn declaration_order_and_generated_action_shapes_keep_complete_core_observations() {
    for batch in [1, 2] {
        for relations in [false, true] {
            let case = reference::Case {
                n: 3,
                batch,
                relations,
                commands: 2,
                rules: 2,
                global: "filtered".into(),
                ..reference::Case::default()
            };
            let module = reference::fixture::module(&case);
            let mut wire = reference::fixture::wire(&case);
            wire["actions"].as_array_mut().unwrap().reverse();
            let reordered = core_api::admit(&wire.to_string()).unwrap();
            assert_eq!(module.behavior_version(), reordered.behavior_version());
            let mut a = store_api::Store::create(
                store_api::InMemoryBackend::new(),
                &module,
                reference::fixture::genesis(&case, &module),
            )
            .unwrap();
            let mut b = store_api::Store::create(
                store_api::InMemoryBackend::new(),
                &reordered,
                reference::fixture::genesis(&case, &reordered),
            )
            .unwrap();
            let bindings = (0..batch)
                .map(|i| (format!("e{i}"), "e0".to_string()))
                .collect();
            for value in [-1, 1, 2, i64::MAX] {
                let aa = a
                    .evaluate(
                        &module,
                        "set",
                        &bindings,
                        &serde_json::json!({"n":value}),
                        &serde_json::json!({}),
                        reference::NOW,
                        None,
                    )
                    .unwrap();
                let bb = b
                    .evaluate(
                        &reordered,
                        "set",
                        &bindings,
                        &serde_json::json!({"n":value}),
                        &serde_json::json!({}),
                        reference::NOW,
                        None,
                    )
                    .unwrap();
                assert_eq!(aa.record, bb.record);
                assert_eq!(aa.bundle, bb.bundle);
                if let Some(bundle) = aa.bundle {
                    a.commit(&module, &bundle.evaluated_state, &bundle).unwrap();
                }
                if let Some(bundle) = bb.bundle {
                    b.commit(&reordered, &bundle.evaluated_state, &bundle)
                        .unwrap();
                }
                assert_eq!(a.current_history().unwrap(), b.current_history().unwrap());
            }
        }
    }
}
