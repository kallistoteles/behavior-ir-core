//! Recovery requires independently expected history and fresh original checks.
use crate::{
    error::{Result, StudyError},
    ground::Ground,
    reference::Parent,
    safety_check::CheckedProgram,
};
use serde_json::Value;
pub fn reestablish(parent: Parent, program: &CheckedProgram, expected: &Value) -> Result<Ground> {
    let mut ground = Ground::supplied(parent);
    ground.check(program, expected)?;
    Ok(ground)
}

pub(crate) fn establish_retention(
    ground: &mut Ground,
    program: &CheckedProgram,
    expected: &Value,
    retained: bool,
) -> Result<()> {
    ground.check(program, expected)?;
    ground.enable_views(retained)?;
    ground.select_retention(retained)
}

/// Construct the recovery comparison from independent original observations.
/// Candidate state, history, views and serialized authority never enter here.
pub fn expected_prefix(
    initial: &Value,
    originals: &[Value],
    completed: usize,
    next_request: &Value,
) -> Result<Value> {
    if completed > originals.len()
        || !initial.is_object()
        || !initial.get("parent").is_some_and(Value::is_object)
        || !initial
            .get("parent_packet")
            .and_then(|packet| packet.get("commits"))
            .is_some_and(Value::is_array)
        || !next_request.is_object()
    {
        return Err(StudyError::InvalidInput(
            "RecoveryOriginalPrefixShape".into(),
        ));
    }
    let mut expected = initial.clone();
    for original in &originals[..completed] {
        let history = original
            .get("after_history")
            .filter(|value| value.is_object())
            .ok_or(StudyError::Prerequisite("RecoveryOriginalHistory"))?;
        let commit = original
            .get("commit_arguments")
            .ok_or(StudyError::Prerequisite("RecoveryOriginalCommitArguments"))?;
        if !commit.is_null() && !commit.is_object() {
            return Err(StudyError::InvalidInput(
                "RecoveryOriginalCommitShape".into(),
            ));
        }
        expected["parent"] = history.clone();
        if !commit.is_null() {
            expected["parent_packet"]["commits"]
                .as_array_mut()
                .ok_or(StudyError::Prerequisite("RecoveryOriginalPacket"))?
                .push(commit.clone());
        }
    }
    expected["request"] = next_request.clone();
    Ok(expected)
}
