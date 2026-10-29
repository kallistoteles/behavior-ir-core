#![allow(clippy::unwrap_used)]
use transition_study032::{
    encoding::{compact, expand},
    fixtures::Config,
    reference::Reference,
    types::*,
};
#[test]
fn compact_support_reconstructs_exact_observations_without_fabricating_availability() {
    let mut r = Reference::new(
        Config {
            commands: 2,
            ..Config::default()
        },
        2,
    )
    .unwrap();
    let out = r
        .execute(Operation::Set {
            ids: vec!["e0".into()],
            value: 3,
        })
        .unwrap();
    let encoded = compact(&out).unwrap();
    assert!(expand(&encoded, &out).unwrap().same_claim(&out));
    let mut bad = encoded.clone();
    bad.claim_digest = "0".repeat(64);
    assert!(expand(&bad, &out).is_err());
    let mut missing = out.clone();
    missing.support_available = false;
    assert!(matches!(
        expand(&encoded, &missing),
        Err(StudyError::Unavailable(_))
    ));
}
#[test]
fn content_addressed_dag_preserves_types_order_multiplicity_and_availability() {
    use transition_study032::encoding::{pack, unpack};
    let mut r = Reference::new(
        Config {
            commands: 2,
            ..Config::default()
        },
        3,
    )
    .unwrap();
    let observed = r.execute(Operation::Emit).unwrap();
    let (compact, support) = pack(&observed).unwrap();
    let full = unpack(&compact, Some(&support)).unwrap();
    assert!(full.same_claim(&observed));
    let mut bad = support.clone();
    bad.nodes.remove(&compact.root);
    assert!(matches!(
        unpack(&compact, Some(&bad)),
        Err(StudyError::Unavailable(_))
    ));
    let mut bad = support.clone();
    let node = bad.nodes.get_mut(&compact.root).unwrap();
    node["invented"] = serde_json::json!(false);
    assert!(unpack(&compact, Some(&bad)).is_err());
    assert!(matches!(
        unpack(&compact, None),
        Err(StudyError::Unavailable(_))
    ));
}
