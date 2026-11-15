use crate::error::{Result,StudyError};
use serde_json::Value;
pub fn compare(expected:&Value,actual:&Value)->Result<()> {
    if expected != actual { return Err(StudyError::Prerequisite("CompleteOriginalObservationMismatch")); }
    Ok(())
}

/// Full original Core artifacts. No replacement invocation/envelope builder.
pub(crate) struct OriginalStep {
 pub invocation:behavior_engine::invocation::Invocation,
 pub before:behavior_engine::store::documents::HistoryRef,
 pub after:behavior_engine::store::documents::HistoryRef,
 pub commit_arguments:Value,
}
pub(crate) fn execute_original(s:&mut behavior_engine::store::Store<crate::capture::Capture>,m:&behavior_engine::semantic::Module,r:&Value)->Result<OriginalStep>{
 use crate::error::library;
 let before=s.current_history().map_err(library)?;let invocation=crate::fixtures::invoke_request(s,m,r)?;
 let mut commit_arguments=Value::Null;
 if let Some(bundle)=&invocation.bundle {
  s.commit(m,&s.current().map_err(library)?,bundle).map_err(library)?;
  commit_arguments=serde_json::to_value(s.backend().last_call())?;
 }
 let after=s.current_history().map_err(library)?;Ok(OriginalStep{invocation,before,after,commit_arguments})
}
pub(crate) fn complete_original(step:OriginalStep,state:Value,property_status:&str)->Value{
 serde_json::json!({"invocation":step.invocation.record.as_json(),"bundle":step.invocation.bundle,
 "commit_arguments":step.commit_arguments,"transition_record":step.commit_arguments.get("record"),
 "before_history":step.before.as_json(),"after_history":step.after.as_json(),"post_state":state,
 "original_property_outcomes":{"status":property_status}})
}
