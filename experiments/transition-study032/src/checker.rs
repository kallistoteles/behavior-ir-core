//! Conservative independent checker: rebuild the exact anchor and recompute Core.
//!
//! This first executable B intentionally pays complete replay/reconstruction cost.
//! It trusts Core's public semantic implementation, never the witness producer or A.
use crate::{reference::Reference, subject::Subject, types::*, witness::TransitionWitness};
pub fn check(
    subject: &Subject,
    expected: &OperationalState,
    operation: &Operation,
    witness: &TransitionWitness,
) -> Result<ReferenceObservation> {
    if !witness.proposed.support_available {
        return Err(StudyError::Unavailable("witness support missing".into()));
    }
    if &witness.subject != subject
        || &witness.before != expected
        || &witness.proposed.before != expected
        || &witness.proposed.operation != operation
    {
        return Err(StudyError::InvalidWitness(
            "subject/input/request/anchor mismatch".into(),
        ));
    }
    let mut replay = Reference::new(
        witness.support.config.clone(),
        witness.support.initial_population,
    )
    .map_err(|e| StudyError::InvalidWitness(format!("initialization: {e}")))?;
    if &replay.subject != subject {
        return Err(StudyError::InvalidWitness(
            "complete admitted module inventory differs".into(),
        ));
    }
    for previous in &witness.support.prefix {
        replay
            .execute(previous.clone())
            .map_err(|e| StudyError::InvalidWitness(format!("prefix: {e}")))?;
    }
    if replay.snapshot()? != *expected {
        return Err(StudyError::InvalidWitness(
            "complete operational anchor differs; live content alone is insufficient".into(),
        ));
    }
    let actual = replay.execute(operation.clone())?;
    if !actual.same_claim(&witness.proposed) {
        return Err(StudyError::InvalidWitness(
            "exact Core result/state/ordered commands/evidence mismatch".into(),
        ));
    }
    Ok(actual)
}

/// Pure whole-history acceptance: reconstruct the declared anchor once in a new
/// independent Core Store, then check every exact observation against that Store.
/// No state, J or producer approval is retained between calls.
pub fn check_history(
    config: &crate::fixtures::Config,
    n: usize,
    prefix: &[Operation],
    operations: &[Operation],
    claims: &[ReferenceObservation],
) -> Result<Vec<ReferenceObservation>> {
    check_history_using(prefix, operations, claims, || {
        Reference::new(config.clone(), n)
    })
}
/// Trusted constructor seam for instrumentation; evidence never supplies code.
/// Production study callers use check_history, whose factory is fixed above.
pub fn check_history_using(
    prefix: &[Operation],
    operations: &[Operation],
    claims: &[ReferenceObservation],
    mut fresh: impl FnMut() -> Result<Reference>,
) -> Result<Vec<ReferenceObservation>> {
    if operations.len() != claims.len() {
        return Err(StudyError::InvalidWitness(
            "incomplete whole-history witness/action inventory".into(),
        ));
    }
    let mut core = fresh()?;
    for operation in prefix {
        core.execute(operation.clone())?;
    }
    let mut checked = Vec::new();
    for (operation, claim) in operations.iter().zip(claims) {
        if !claim.support_available {
            return Err(StudyError::Unavailable(
                "whole-history witness support missing".into(),
            ));
        }
        let actual = core.execute(operation.clone())?;
        if !actual.same_claim(claim) {
            return Err(StudyError::InvalidWitness("whole-history subject, input, anchor, exact result, effect, command or evidence mismatch".into()));
        }
        checked.push(actual);
    }
    Ok(checked)
}
