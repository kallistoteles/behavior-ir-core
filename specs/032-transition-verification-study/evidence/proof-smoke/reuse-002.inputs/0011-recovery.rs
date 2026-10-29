//! Cold authoritative reconstruction. A snapshot is not a complete lifetime/history anchor.
use crate::{reference::Reference, types::*, views::Views, witness::ReplaySupport};
pub fn recover(
    support: Option<&ReplaySupport>,
    expected: &OperationalState,
) -> Result<(Reference, Views)> {
    let support = support.ok_or_else(|| {
        StudyError::Unavailable("complete genesis and ordinary prefix unavailable".into())
    })?;
    let mut reference = Reference::new(support.config.clone(), support.initial_population)?;
    for operation in &support.prefix {
        reference.execute(operation.clone())?;
    }
    let state = reference.snapshot()?;
    if &state != expected {
        return Err(StudyError::InvalidWitness(
            "recovered subject/lifetime/state/history differs from accepted anchor".into(),
        ));
    }
    let views = Views::initialize(&state)?;
    Ok((reference, views))
}
