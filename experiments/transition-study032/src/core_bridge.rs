//! Independent per-event bridge to actual Core; replay work is part of the cost.
use crate::{fixtures::Config, reference::Reference, types::*};
pub fn check_history(
    config: &Config,
    initial_population: usize,
    operations: &[Operation],
    proposed: &[ReferenceObservation],
) -> Result<Reference> {
    if operations.len() != proposed.len() {
        return Err(StudyError::InvalidWitness(
            "incomplete history/action inventory".into(),
        ));
    }
    let mut reference = Reference::new(config.clone(), initial_population)?;
    for (op, claim) in operations.iter().zip(proposed) {
        if !claim.support_available {
            return Err(StudyError::Unavailable(
                "Core bridge support missing".into(),
            ));
        }
        let actual = reference.execute(op.clone())?;
        if !actual.same_claim(claim) {
            return Err(StudyError::InvalidWitness(
                "Core event, canonical output, state or history differs".into(),
            ));
        }
    }
    Ok(reference)
}
