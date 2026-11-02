//! Producer agreement and refusal order confer no checker authority.
use core_proof_feasibility033::{
    codec::{EntityKey, EntityValue},
    identity::{ExecutionRequest, Operation},
    origin::{self, OriginInput, OriginKind},
    producer::{Producer, ProposedOutcome, ProposedPhase, Strategy},
    reference::TemplateConfig,
};
type TestResult = Result<(), Box<dyn std::error::Error>>;
fn empty() -> OriginInput {
    OriginInput {
        format_version: "core033.origin.v1".into(),
        kind: OriginKind::Empty,
        authority: "test033".into(),
        source_digest: [0; 32],
        live: vec![],
        used: vec![],
    }
}
fn request(operation: Operation) -> ExecutionRequest {
    ExecutionRequest {
        format_version: "core033.request.v1".into(),
        operation,
        context_digest: [0; 32],
    }
}
#[test]
fn full_and_incremental_agree_without_publishing_or_mutating_parent() -> TestResult {
    let mut input = empty();
    input.source_digest = origin::source_digest(&input)?;
    let cfg = TemplateConfig {
        limit: 1,
        ..Default::default()
    };
    let mut producer = Producer::from_seed(&input, "test033", &input.source_digest, &cfg)?;
    let a = EntityKey::new("E", "a");
    for operation in [
        Operation::Create(a.clone()),
        Operation::Set(a.clone(), 5),
        Operation::Emit,
    ] {
        let request = request(operation);
        let parent = producer.roots();
        let full = producer.propose(&request, Strategy::Full)?;
        let delta = producer.propose(&request, Strategy::Incremental)?;
        assert_eq!(full.semantic_projection(), delta.semantic_projection());
        assert_eq!(producer.roots(), parent);
        assert_eq!(delta.commands.len(), 2);
        producer.advance_untrusted(&delta)?;
    }
    let repeated = producer.propose(
        &request(Operation::Create(a.clone())),
        Strategy::Incremental,
    )?;
    assert!(matches!(
        repeated.outcome,
        ProposedOutcome::Refused {
            phase: ProposedPhase::Lifetime,
            ..
        }
    ));
    let full = producer.propose(
        &request(Operation::Create(EntityKey::new("E", "b"))),
        Strategy::Full,
    )?;
    assert!(matches!(
        full.outcome,
        ProposedOutcome::Refused {
            phase: ProposedPhase::ResultingGlobal,
            ..
        }
    ));
    assert!(full.commands.is_empty());
    assert!(full.effects.is_empty());
    assert_eq!(full.parent, full.after);
    Ok(())
}
#[test]
fn missing_binding_precedes_local_refusal_and_equal_set_keeps_effect() -> TestResult {
    let a = EntityKey::new("E", "a");
    let mut input = empty();
    input.kind = OriginKind::NewSeed;
    input.live = vec![(a.clone(), EntityValue::new(1, "padding"))];
    input.used = vec![a.clone()];
    input.source_digest = origin::source_digest(&input)?;
    let mut producer = Producer::from_seed(
        &input,
        "test033",
        &input.source_digest,
        &TemplateConfig::default(),
    )?;
    let missing = producer.propose(
        &request(Operation::Set(EntityKey::new("E", "absent"), -1)),
        Strategy::Incremental,
    )?;
    assert!(matches!(
        missing.outcome,
        ProposedOutcome::EvaluationError {
            phase: ProposedPhase::Binding,
            ..
        }
    ));
    let invalid = producer.propose(
        &request(Operation::Set(a.clone(), -1)),
        Strategy::Incremental,
    )?;
    assert!(matches!(
        invalid.outcome,
        ProposedOutcome::Refused {
            phase: ProposedPhase::ResultingLocal,
            ..
        }
    ));
    assert_eq!(invalid.parent, invalid.after);
    let same = producer.propose(&request(Operation::Set(a, 1)), Strategy::Incremental)?;
    assert_eq!(same.parent, same.after);
    assert_eq!(same.effects.len(), 1);
    assert_eq!(same.commands.len(), 2);
    Ok(())
}

#[test]
fn stale_and_altered_private_proposals_cannot_advance_the_builder() -> TestResult {
    let mut input = empty();
    input.source_digest = origin::source_digest(&input)?;
    let mut producer = Producer::from_seed(
        &input,
        "test033",
        &input.source_digest,
        &TemplateConfig::default(),
    )?;
    let a = producer.propose(
        &request(Operation::Create(EntityKey::new("E", "a"))),
        Strategy::Incremental,
    )?;
    let mut b = producer.propose(
        &request(Operation::Create(EntityKey::new("E", "b"))),
        Strategy::Full,
    )?;
    b.commands.pop();
    let old = producer.roots();
    assert!(producer.advance_untrusted(&b).is_err());
    assert_eq!(old, producer.roots());
    producer.advance_untrusted(&a)?;
    assert!(producer.advance_untrusted(&b).is_err());
    let emit = producer.propose(&request(Operation::Emit), Strategy::Incremental)?;
    producer.advance_untrusted(&emit)?;
    assert!(producer.advance_untrusted(&emit).is_err());
    Ok(())
}
