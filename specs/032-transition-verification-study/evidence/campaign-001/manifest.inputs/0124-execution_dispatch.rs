#![allow(clippy::unwrap_used)]
use transition_study032::{
    execution::{NativeCase, run},
    fixtures::Config,
    types::*,
};
#[test]
fn dispatch_compares_complete_claims_in_both_explicit_output_profiles() {
    let case = NativeCase {
        format: "core032.native-case.v1".into(),
        case_id: "dispatch".into(),
        config: Config {
            commands: 2,
            ..Config::default()
        },
        initial_population: 2,
        prefix: vec![Operation::Emit],
        operations: vec![
            Operation::Set {
                ids: vec!["e0".into()],
                value: 2,
            },
            Operation::Probe {
                threshold: 2,
                max_matches: 0,
            },
        ],
    };
    let a = run(&case, "A", "existing").unwrap();
    let b = run(&case, "B", "existing").unwrap();
    assert_eq!(a.observations, b.observations);
    let compact = run(&case, "A", "study").unwrap();
    assert_eq!(a.observations, compact.observations);
    assert!(compact.expanded_bytes > 0);
    assert!(compact.support_bytes > 0);
    assert!(run(&case, "unknown", "existing").is_err());
    assert!(run(&case, "A", "decision-only").is_err());
}
#[test]
fn study_transport_contains_real_shared_support_and_reconstructs_the_entire_claim() {
    use transition_study032::execution::{from_wire, to_wire};
    let case = NativeCase {
        format: "core032.native-case.v1".into(),
        case_id: "transport".into(),
        config: Config::default(),
        initial_population: 2,
        prefix: vec![],
        operations: vec![Operation::Emit, Operation::Emit],
    };
    let result = run(&case, "A", "study").unwrap();
    let wire = to_wire(&result).unwrap();
    assert!(wire.get("observations").is_none());
    let expanded = from_wire(&case, "study", wire.clone()).unwrap();
    assert_eq!(expanded.observations, result.observations);
    let mut bad = wire;
    bad["study_bundle"]["support"]["nodes"] = serde_json::json!({});
    assert!(from_wire(&case, "study", bad).is_err());
}
