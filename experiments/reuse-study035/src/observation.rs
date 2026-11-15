use crate::error::{Result,StudyError};
use serde_json::Value;
pub fn compare(expected:&Value,actual:&Value)->Result<()> {
    if expected != actual { return Err(StudyError::Prerequisite("CompleteOriginalObservationMismatch")); }
    Ok(())
}
