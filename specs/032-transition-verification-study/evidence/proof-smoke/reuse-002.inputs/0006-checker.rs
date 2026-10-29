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
