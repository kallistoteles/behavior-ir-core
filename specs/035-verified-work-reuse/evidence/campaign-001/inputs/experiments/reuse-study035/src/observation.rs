use crate::error::{Result, StudyError};
use serde_json::Value;
pub fn compare(expected: &Value, actual: &Value) -> Result<()> {
    if expected != actual {
        return Err(StudyError::Prerequisite(
            "CompleteOriginalObservationMismatch",
        ));
    }
    Ok(())
}

/// Full original Core artifacts. No replacement invocation/envelope builder.
pub(crate) struct OriginalStep {
    pub invocation: behavior_engine::invocation::Invocation,
    pub before: behavior_engine::store::documents::HistoryRef,
    pub after: behavior_engine::store::documents::HistoryRef,
    pub commit_arguments: Value,
    pub timings: crate::timings::Timings,
}
pub(crate) fn execute_original(
    s: &mut behavior_engine::store::Store<crate::capture::Capture>,
    m: &behavior_engine::semantic::Module,
    r: &Value,
) -> Result<OriginalStep> {
    use crate::{
        error::library,
        timings::{self, Timings},
    };
    use std::time::Instant;
    let mut measured = Timings::default();
    let t = Instant::now();
    let before = s.current_history().map_err(library)?;
    measured.canonical_output_identity_ns += timings::elapsed(t);
    let clocks = s.research035_clocks();
    let t = Instant::now();
    let invocation = crate::fixtures::invoke_request(s, m, r)?;
    let invoke_ns = timings::elapsed(t);
    let after_invoke = s.research035_clocks();
    let identity = timings::delta(&after_invoke, &clocks, "identity_ns")?;
    let output = timings::delta(&after_invoke, &clocks, "observation_ns")?;
    measured.native_semantic_ns +=
        invoke_ns
            .checked_sub(identity + output)
            .ok_or(crate::error::StudyError::Prerequisite(
                "OverlappingInvokeScopes",
            ))?;
    measured.canonical_output_identity_ns += identity + output;
    measured.raw_invoke_ns = invoke_ns;
    measured.reestablish_ns = timings::delta(&after_invoke, &clocks, "reestablishment_ns")?;
    // Reestablishment is nested in native_semantic_ns, not added twice.
    measured.native_semantic_ns = measured
        .native_semantic_ns
        .checked_sub(measured.reestablish_ns)
        .ok_or(crate::error::StudyError::Prerequisite(
            "OverlappingReestablishmentScope",
        ))?;
    let mut commit_arguments = Value::Null;
    if let Some(bundle) = &invocation.bundle {
        let clocks = s.research035_clocks();
        let t = Instant::now();
        s.commit(m, &s.current().map_err(library)?, bundle)
            .map_err(library)?;
        let commit_ns = timings::elapsed(t);
        let after_commit = s.research035_clocks();
        let evaluated = timings::delta(&after_commit, &clocks, "evaluation_ns")?;
        let emitted = timings::delta(&after_commit, &clocks, "evaluation_observation_ns")?;
        let affected = timings::delta(&after_commit, &clocks, "affected_maintenance_ns")?;
        let semantic =
            evaluated
                .checked_sub(emitted)
                .ok_or(crate::error::StudyError::Prerequisite(
                    "OverlappingCommitScopes",
                ))?
                + affected;
        measured.native_semantic_ns += semantic;
        measured.commit_other_ns =
            commit_ns
                .checked_sub(semantic)
                .ok_or(crate::error::StudyError::Prerequisite(
                    "OverlappingCommitScopes",
                ))?;
        measured.raw_commit_ns = commit_ns;
        let t = Instant::now();
        commit_arguments = serde_json::to_value(s.backend().last_call())?;
        measured.canonical_output_identity_ns += timings::elapsed(t);
    }
    let t = Instant::now();
    let after = s.current_history().map_err(library)?;
    measured.canonical_output_identity_ns += timings::elapsed(t);
    Ok(OriginalStep {
        invocation,
        before,
        after,
        commit_arguments,
        timings: measured,
    })
}

pub(crate) fn complete_original(step: OriginalStep, state: Value, property_status: &str) -> Value {
    serde_json::json!({"invocation":step.invocation.record.as_json(),"bundle":step.invocation.bundle,
 "commit_arguments":step.commit_arguments,"transition_record":step.commit_arguments.get("record"),
 "before_history":step.before.as_json(),"after_history":step.after.as_json(),"post_state":state,
 "original_property_outcomes":{"status":property_status}})
}
