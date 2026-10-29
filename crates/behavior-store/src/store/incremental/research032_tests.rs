//! Verify forced-reference selection at the existing private test seam.
#![allow(clippy::unwrap_used)]
use super::research031_tests::execution_workload;
use super::*;
use crate as store_api;
use behavior_core as core_api;
#[path = "../../../tests/support/research032_reference.rs"]
mod fixture;

fn require_full(reference: bool) -> serde_json::Value {
    reset_work();
    with_reference(reference, || {
        assert!(reference_enabled(), "full reference route was not selected");
        let value = fixture::observations();
        // Global rules bypass the local-only full_child diagnostic branch.
        assert!(
            work().full_parent > 0,
            "full snapshot validation did not run"
        );
        value
    })
}

#[test]
fn research032_forced_reference_has_complete_exact_observations() {
    let reference = require_full(true);
    let normal = with_reference(false, fixture::observations);
    assert_eq!(reference, normal);
    assert!(
        !reference_enabled(),
        "test guard leaked into another execution"
    );
}

#[test]
#[should_panic(expected = "full reference route was not selected")]
fn research032_omitted_reference_selection_is_detected() {
    require_full(false);
}

#[test]
fn research032_generated_context_and_composition_reference_equivalence() {
    for global in ["count", "filtered", "unsupported"] {
        for references in [false, true] {
            for batch in [1, 2] {
                let case = fixture::Case {
                    n: 3,
                    steps: 2,
                    batch,
                    rules: 2,
                    commands: 2,
                    relations: references,
                    global: global.into(),
                    filter_terms: 2,
                    ..fixture::Case::default()
                };
                let full = with_reference(true, || {
                    assert!(reference_enabled());
                    fixture::configured_observations(&case)
                });
                let actual = with_reference(false, || fixture::configured_observations(&case));
                assert_eq!(full, actual);
            }
        }
    }
}

#[test]
fn research032_aliases_simultaneous_effects_and_selected_failures_are_exact() {
    use serde_json::json;
    use std::collections::BTreeMap;
    for aliases in [false, true] {
        let case = fixture::Case {
            n: 2,
            batch: 2,
            commands: 2,
            ..fixture::Case::default()
        };
        let module = fixture::fixture::module(&case);
        let request = json!({"module":fixture::fixture::wire(&case),"genesis":fixture::fixture::genesis(&case,&module),
            "attempts":[{"action":"set","bindings":BTreeMap::from([("e0","e0"),("e1",if aliases{"e0"}else{"e1"})]),"input":{"n":2},"context":{},"now":fixture::NOW},
              {"action":"remove","bindings":{"child":"missing"},"input":{},"context":{},"now":fixture::NOW}]});
        let run = || scenario::run(serde_json::from_value(request.clone()).unwrap());
        let mut full = with_reference(true, || {
            assert!(reference_enabled());
            run()
        });
        let mut actual = with_reference(false, run);
        for result in [&mut full, &mut actual] {
            result.as_object_mut().unwrap().remove("preparation");
            for row in result["observations"].as_array_mut().unwrap() {
                row.as_object_mut().unwrap().remove("metrics");
            }
        }
        assert_eq!(full, actual);
    }
}

#[test]
fn research032_reference_outputs_only_the_requested_suffix_after_real_preparation() {
    use serde_json::json;
    let case = fixture::Case {
        n: 2,
        ..fixture::Case::default()
    };
    let module = fixture::fixture::module(&case);
    let request = json!({"module":fixture::fixture::wire(&case),"genesis":fixture::fixture::genesis(&case,&module),"measure_after":1,"attempts":[
        {"action":"set","bindings":{"e0":"e0"},"input":{"n":1},"context":{},"now":fixture::NOW},
        {"action":"set","bindings":{"e0":"e0"},"input":{"n":2},"context":{},"now":fixture::NOW}]});
    let result = with_reference(true, || {
        scenario::run(serde_json::from_value(request).unwrap())
    });
    assert_eq!(result["observations"].as_array().unwrap().len(), 1);
    assert_eq!(
        result["observations"][0]["before"]["snapshot"]["source_history"]["position"],
        1
    );
}

#[path = "../../../tests/support/research032_scenario.rs"]
mod scenario;

#[test]
#[ignore = "explicit full-reference collector; not a production API"]
fn research032_reference_probe() {
    let path = std::env::var("CORE032_SCENARIO").unwrap();
    let request: scenario::Scenario =
        serde_json::from_slice(&std::fs::read(path).unwrap()).unwrap();
    let response = with_reference(true, || {
        assert!(reference_enabled());
        scenario::run(request)
    });
    println!("CORE032_REFERENCE {response}");
}
