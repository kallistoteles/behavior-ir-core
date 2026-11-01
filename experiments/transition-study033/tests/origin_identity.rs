use core_proof_feasibility033::{
    codec::{EntityKey, EntityValue},
    identity::*,
    origin::*,
};
type TestResult = Result<(), Box<dyn std::error::Error>>;
fn seed() -> OriginInput {
    OriginInput {
        format_version: "core033.origin.v1".into(),
        kind: OriginKind::NewSeed,
        authority: "declared-authority".into(),
        source_digest: [7; 32],
        live: vec![(EntityKey::new("E", "a"), EntityValue::new(1, ""))],
        used: vec![EntityKey::new("E", "a")],
    }
}
fn event() -> SemanticEvent {
    SemanticEvent {
        parent: vec![1],
        request: vec![2],
        context: vec![3],
        outcome: vec![4],
        effects: vec![5],
        commands: vec![([8; 32], vec![9]), ([8; 32], vec![9])],
        observation_recipe: vec![6],
    }
}
fn derivation() -> Derivation {
    Derivation {
        helper_root: [0; 32],
        proof_randomness: [0; 32],
        strategy: "full".into(),
    }
}

#[test]
fn genuine_seed_checks_raw_rows_and_used_membership() -> TestResult {
    let good = seed();
    validate_seed(&good, "declared-authority", &[7; 32], 1000)?;
    let mut invalid = good.clone();
    invalid.live[0].1.x = 0;
    assert!(validate_seed(&invalid, "declared-authority", &[7; 32], 1000).is_err());
    let mut absent = good.clone();
    absent.used.clear();
    assert!(validate_seed(&absent, "declared-authority", &[7; 32], 1000).is_err());
    let mut duplicate = good.clone();
    duplicate.used.push(duplicate.used[0].clone());
    assert!(validate_seed(&duplicate, "declared-authority", &[7; 32], 1000).is_err());
    assert!(validate_seed(&good, "other-authority", &[7; 32], 1000).is_err());
    assert!(validate_seed(&good, "declared-authority", &[8; 32], 1000).is_err());
    assert!(validate_seed(&good, "declared-authority", &[7; 32], 0).is_err());
    Ok(())
}

#[test]
fn adoption_and_nonempty_empty_origins_cannot_appear_valid() {
    let mut input = seed();
    input.kind = OriginKind::Adoption;
    assert!(matches!(
        validate_seed(&input, "declared-authority", &[7; 32], 1000),
        Err(core_proof_feasibility033::profile::Error::Unsupported(_))
    ));
    input.kind = OriginKind::Empty;
    assert!(validate_seed(&input, "declared-authority", &[7; 32], 1000).is_err());
}

#[test]
fn strategy_randomness_and_helper_roots_do_not_change_semantic_identity() -> TestResult {
    let semantic = event();
    let before = event_id(&semantic, &derivation())?;
    let changed = Derivation {
        helper_root: [1; 32],
        proof_randomness: [2; 32],
        strategy: "incremental".into(),
    };
    assert_eq!(event_id(&semantic, &changed)?, before);
    let mut different = semantic.clone();
    different.context.push(1);
    assert_ne!(event_id(&different, &changed)?, before);
    let mut no_duplicate = semantic.clone();
    no_duplicate.commands.pop();
    assert_ne!(event_id(&no_duplicate, &changed)?, before);
    Ok(())
}

#[test]
fn equal_commands_have_two_occurrences_derived_after_event_identity() -> TestResult {
    let semantic = event();
    let parent_event = event_id(&semantic, &derivation())?;
    let ids = occurrences(&semantic, &derivation())?;
    assert_eq!(ids.len(), 2);
    assert_eq!(ids[0].event_id, parent_event);
    assert_eq!(ids[1].event_id, parent_event);
    assert_ne!(ids[0], ids[1]);
    assert_eq!(ids[0].canonical_ordinal, 0);
    assert_eq!(ids[1].canonical_ordinal, 1);
    Ok(())
}
