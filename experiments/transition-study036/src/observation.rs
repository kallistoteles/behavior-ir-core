// Function items are unsupported by the pinned extractor; keep explicit closures.
#![allow(clippy::redundant_closure)]
use crate::error::{Result, StudyError};
use serde_json::Value;
pub fn compare(expected: &Value, actual: &Value) -> Result<()> {
    // Value equality can equate distinct numeric representations (-0.0/0.0).
    // The full contract also preserves the original serialized representation.
    if expected != actual
        || crate::serialization::value_bytes(expected)?
            != crate::serialization::value_bytes(actual)?
    {
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
pub(crate) fn execute_original_with_metadata(
    s: &mut behavior_engine::store::Store<crate::capture::Capture>,
    m: &behavior_engine::semantic::Module,
    r: &Value,
    metadata: &crate::fixtures::InvocationMetadata,
    spans: &mut crate::native_spans::NativeSpans,
) -> Result<OriginalStep> {
    use crate::{
        error::library,
        timings::{self, Timings},
    };
    use std::time::Instant;
    let mut measured = Timings::default();
    let t = Instant::now();
    let span = spans.start();
    let before = s.current_history().map_err(|failure| library(failure))?;
    spans.finish("original-parent-history", "history", span);
    measured.canonical_output_identity_ns += timings::elapsed(t);
    let clocks = s.research035_clocks();
    let t = Instant::now();
    let span = spans.start_core("core-invoke", s);
    let invocation = crate::fixtures::invoke_request_with_metadata(s, m, r, metadata);
    let diagnostic = spans.finish_core("core-invoke", "unclassified", span, s);
    // Close the capture even on an actual Core failure, preserving its error.
    let invocation = invocation?;
    diagnostic?;
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
        let span = spans.start_core("core-commit", s);
        let committed = match s.current() {
            Ok(at) => s.commit(m, &at, bundle).map_err(|failure| library(failure)),
            Err(failure) => Err(library(failure)),
        };
        let diagnostic = spans.finish_core("core-commit", "commit", span, s);
        committed?;
        diagnostic?;
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
        let span = spans.start();
        commit_arguments = crate::serialization::commit_value(s.backend().last_call())?;
        spans.finish("commit-argument-encoding", "encoding", span);
        measured.canonical_output_identity_ns += timings::elapsed(t);
    }
    let t = Instant::now();
    let span = spans.start();
    let after = s.current_history().map_err(|failure| library(failure))?;
    spans.finish("original-child-history", "history", span);
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
    crate::serialization::original_observation(
        step.invocation.record.as_json(),
        step.invocation.bundle,
        step.commit_arguments,
        step.before.as_json(),
        step.after.as_json(),
        state,
        property_status,
    )
}
