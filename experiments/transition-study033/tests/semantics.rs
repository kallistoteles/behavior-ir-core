use core_proof_feasibility033::{
    checker::{self, Fixture},
    codec::{EntityKey, EntityValue},
    identity::{CapturedContext, ExecutionRequest, Operation},
    origin::{OriginInput, OriginKind, source_digest},
    reference::TemplateConfig,
};
type TestResult = Result<(), Box<dyn std::error::Error>>;
fn seed(count: usize) -> Result<OriginInput, Box<dyn std::error::Error>> {
    let live: Vec<_> = (0..count)
        .map(|i| {
            (
                EntityKey::new("E", &format!("{i:06}")),
                EntityValue::new(1, ""),
            )
        })
        .collect();
    let mut input = OriginInput {
        format_version: "core033.origin.v1".into(),
        kind: OriginKind::NewSeed,
        authority: "semantic-control".into(),
        source_digest: [0; 32],
        used: live.iter().map(|(k, _)| k.clone()).collect(),
        live,
    };
    input.source_digest = source_digest(&input)?;
    Ok(input)
}
fn request(operation: Operation) -> Result<ExecutionRequest, Box<dyn std::error::Error>> {
    let context = CapturedContext {
        format_version: "core033.context.v1".into(),
        context: vec![],
        metadata: vec![],
    };
    Ok(ExecutionRequest {
        format_version: "core033.request.v1".into(),
        operation,
        context_digest: context.digest()?,
    })
}

#[test]
fn invalid_genesis_with_accurate_source_commitment_does_not_initialize() -> TestResult {
    let valid = seed(1)?;
    Fixture::initialize(&valid, &TemplateConfig::default())?;
    let mut invalid = valid;
    invalid.live[0].1.x = 0;
    invalid.source_digest = source_digest(&invalid)?;
    assert!(Fixture::initialize(&invalid, &TemplateConfig::default()).is_err());
    Ok(())
}
#[test]
fn real_cap_boundary_reuse_and_refusal_preserve_exact_parent() -> TestResult {
    let f = Fixture::initialize(&seed(999)?, &TemplateConfig::default())?;
    let create = request(Operation::Create(EntityKey::new("E", "000999")))?;
    let (full, allowed) = f.execute(&create)?;
    assert_eq!(allowed.result_code, "ALLOW");
    assert_eq!(full.live.len(), 1000);
    assert_eq!(allowed.commands.len(), 2);
    for (operation, code, phase) in [
        (
            Operation::Create(EntityKey::new("E", "001000")),
            "DENY",
            "resulting_global",
        ),
        (
            Operation::Create(EntityKey::new("E", "000999")),
            "ENTITY_ID_ALREADY_USED",
            "lifetime",
        ),
    ] {
        let (after, refused) = full.execute(&request(operation)?)?;
        assert_eq!(refused.result_code, code);
        assert_eq!(refused.phase, phase);
        assert_eq!(after.parent, full.parent);
        assert_eq!(after.live, full.live);
        assert_eq!(after.used, full.used);
        assert!(refused.commands.is_empty());
    }
    Ok(())
}
#[test]
fn signed_full_range_assignment_and_command_only_history_are_exact() -> TestResult {
    let f = Fixture::initialize(&seed(1)?, &TemplateConfig::default())?;
    let (positive, allowed) = f.execute(&request(Operation::Set(
        EntityKey::new("E", "000000"),
        i64::MAX,
    ))?)?;
    assert_eq!(allowed.result_code, "ALLOW");
    assert_eq!(positive.live[0].1.x, i64::MAX);
    for x in [i64::MIN, -1, 0] {
        let (after, denied) =
            positive.execute(&request(Operation::Set(EntityKey::new("E", "000000"), x))?)?;
        assert_eq!(denied.result_code, "DENY");
        assert_eq!(denied.reason_code, "CONSTRAINT_VIOLATED");
        assert_eq!(denied.phase, "resulting_local");
        assert_eq!(after.parent, positive.parent);
        assert_eq!(after.live, positive.live);
        assert!(denied.commands.is_empty());
    }
    let (after, emitted) = positive.execute(&request(Operation::Emit)?)?;
    assert_eq!(after.parent.content_root, positive.parent.content_root);
    assert_eq!(after.parent.position, positive.parent.position + 1);
    assert_eq!(emitted.commands.len(), 2);
    assert_eq!(emitted.commands[0], emitted.commands[1]);
    Ok(())
}
#[test]
fn stale_counts_wrong_roots_missing_obligations_and_wrong_safe_effects_fail() -> TestResult {
    let f = Fixture::initialize(&seed(1)?, &TemplateConfig::default())?;
    let req = request(Operation::Set(EntityKey::new("E", "000000"), 3))?;
    let good = f.propose(&req)?;
    checker::check_proposal(&f.parent, &req, &good)?;
    let mut stale = good.clone();
    stale.claimed_count += 1;
    let mut wrong_root = good.clone();
    wrong_root.count_root[0] ^= 1;
    let mut omitted = good.clone();
    omitted.obligations.clear();
    let mut wrong_effect = good.clone();
    wrong_effect.effect_value = 2;
    for proposal in [stale, wrong_root, omitted, wrong_effect] {
        assert!(checker::check_proposal(&f.parent, &req, &proposal).is_err());
    }
    Ok(())
}
