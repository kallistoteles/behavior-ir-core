use core_proof_feasibility033::{
    codec::{EntityKey, EntityValue},
    identity::*,
    origin::*,
};
type TestResult = Result<(), Box<dyn std::error::Error>>;
fn seed() -> Result<OriginInput, Box<dyn std::error::Error>> {
    let mut input = OriginInput {
        format_version: "core033.origin.v1".into(),
        kind: OriginKind::NewSeed,
        authority: "declared-authority".into(),
        source_digest: [7; 32],
        live: vec![(EntityKey::new("E", "a"), EntityValue::new(1, ""))],
        used: vec![EntityKey::new("E", "a")],
    };
    input.source_digest = source_digest(&input)?;
    Ok(input)
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
    let good = seed()?;
    // Independently assembled 151-byte fixture, including both full key records.
    assert_eq!(
        good.source_digest,
        [
            224, 229, 110, 154, 212, 70, 34, 157, 205, 253, 190, 182, 106, 237, 127, 236, 183, 218,
            173, 213, 84, 223, 104, 6, 68, 128, 225, 38, 98, 9, 231, 134
        ]
    );
    validate_seed(&good, "declared-authority", &good.source_digest, 1000)?;
    let mut invalid = good.clone();
    invalid.live[0].1.x = 0;
    invalid.source_digest = source_digest(&invalid)?;
    let failure = validate_seed(&invalid, "declared-authority", &invalid.source_digest, 1000)
        .err()
        .ok_or("invalid genesis accepted")?;
    assert!(failure.to_string().contains("positive"));
    let mut absent = good.clone();
    absent.used.clear();
    absent.source_digest = source_digest(&absent)?;
    assert!(validate_seed(&absent, "declared-authority", &absent.source_digest, 1000).is_err());
    let mut duplicate = good.clone();
    duplicate.used.push(duplicate.used[0].clone());
    duplicate.source_digest = source_digest(&duplicate)?;
    assert!(
        validate_seed(
            &duplicate,
            "declared-authority",
            &duplicate.source_digest,
            1000
        )
        .is_err()
    );
    assert!(validate_seed(&good, "other-authority", &good.source_digest, 1000).is_err());
    assert!(validate_seed(&good, "declared-authority", &[8; 32], 1000).is_err());
    assert!(validate_seed(&good, "declared-authority", &good.source_digest, 0).is_err());
    let mut tampered = good.clone();
    tampered.live[0].1.padding = "changed".into();
    assert!(validate_seed(&tampered, "declared-authority", &good.source_digest, 1000).is_err());
    Ok(())
}

#[test]
fn adoption_and_nonempty_empty_origins_cannot_appear_valid() -> TestResult {
    let mut input = seed()?;
    input.kind = OriginKind::Adoption;
    assert!(matches!(
        validate_seed(&input, "declared-authority", &[7; 32], 1000),
        Err(core_proof_feasibility033::profile::Error::Unsupported(_))
    ));
    input.kind = OriginKind::Empty;
    assert!(validate_seed(&input, "declared-authority", &[7; 32], 1000).is_err());
    input.live.clear();
    input.used.clear();
    input.source_digest = source_digest(&input)?;
    validate_seed(&input, "declared-authority", &input.source_digest, 1000)?;
    Ok(())
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

#[test]
fn command_bag_order_is_canonical_and_digest_content_conflicts_fail() -> TestResult {
    let mut semantic = event();
    semantic.commands = vec![([8; 32], vec![9]), ([7; 32], vec![10])];
    let expected = event_id(&semantic, &derivation())?;
    semantic.commands.reverse();
    assert_eq!(event_id(&semantic, &derivation())?, expected);
    semantic.commands = vec![([8; 32], vec![9]), ([8; 32], vec![10])];
    assert!(event_id(&semantic, &derivation()).is_err());
    Ok(())
}

#[test]
fn event_fields_are_framed_and_every_semantic_component_is_bound() -> TestResult {
    let original = event();
    let expected = event_id(&original, &derivation())?;
    for field in 0..7 {
        let mut changed = original.clone();
        match field {
            0 => changed.parent.push(1),
            1 => changed.request.push(1),
            2 => changed.context.push(1),
            3 => changed.outcome.push(1),
            4 => changed.effects.push(1),
            5 => changed.commands.clear(),
            _ => changed.observation_recipe.push(1),
        }
        assert_ne!(event_id(&changed, &derivation())?, expected);
    }
    let mut left = event();
    left.parent = vec![1];
    left.request = vec![2, 3];
    let mut right = left.clone();
    right.parent = vec![1, 2];
    right.request = vec![3];
    assert_ne!(
        event_id(&left, &derivation())?,
        event_id(&right, &derivation())?
    );
    Ok(())
}

#[test]
fn recipe_binds_exact_parent_module_request_and_captured_context() -> TestResult {
    let parent = SemanticParent {
        format_version: "core033.parent.v1".into(),
        lineage: [1; 32],
        semantic_anchor: [2; 32],
        position: 0,
        previous_event_id: None,
        content_root: [3; 32],
        used_root: [4; 32],
        active_semantic_subject: [5; 32],
    };
    let context = CapturedContext {
        format_version: "core033.context.v1".into(),
        context: vec![],
        metadata: b"capture".to_vec(),
    };
    let request = ExecutionRequest {
        format_version: "core033.request.v1".into(),
        operation: Operation::Emit,
        context_digest: context.digest()?,
    };
    let mut recipe = ObservationRecipe {
        format_version: "core033.recipe.v1".into(),
        evaluator: "Core033.actual-Core-expansion.v1".into(),
        module_descriptor: [6; 32],
        semantic_profile: [7; 32],
        parent,
        request,
        context,
    };
    let first = recipe.encode()?;
    assert!(!first.is_empty());
    recipe.parent.position = 1;
    assert_ne!(recipe.encode()?, first);
    recipe.context.metadata.push(1);
    assert!(recipe.encode().is_err());
    Ok(())
}
