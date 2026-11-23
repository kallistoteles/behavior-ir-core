//! Real Core children must be attached inside actual native calls.
#![allow(clippy::unwrap_used)]
#[path = "v2_session_support.rs"]
mod support;
use transition_study036::{
    error::{Result, StudyError},
    ground::Ground,
    intervals,
    operation::{self, PairContext},
    reference,
    run_v2::Role,
};

#[test]
fn core_phase_positions_are_part_of_complete_operation_diagnostics() -> Result<()> {
    let program = support::program::checked()?;
    let (requests, expected) = support::stream(2, true)?;
    let requests = requests
        .try_into()
        .map_err(|_| StudyError::Prerequisite("CoreSpanRequestCount"))?;
    let expected = expected
        .try_into()
        .map_err(|_| StudyError::Prerequisite("CoreSpanExpectedCount"))?;
    let mut ground = Ground::supplied(reference::parent("growth-D1")?);
    ground.check(program, &support::program::expected()?)?;
    ground.enable_views(true)?;
    let out = support::directory("core-operation-spans");
    let report = operation::run_pair(
        &mut ground,
        &requests,
        &expected,
        PairContext {
            role: Role::Reuse,
            diagnostic: true,
            out: &out,
            execution_scope: "core-operation-spans",
        },
    )?;
    for operation in report.operations {
        let execution_scope = &operation
            .spans
            .iter()
            .find(|span| span.parent_id.is_none())
            .unwrap()
            .execution_scope;
        assert!(
            operation
                .spans
                .iter()
                .any(|span| span.span_id.contains("core-phase-") && span.phase == "semantic"),
            "ActualCorePhaseChildrenMissingFromOperation"
        );
        for child in operation
            .spans
            .iter()
            .filter(|span| span.span_id.contains("core-phase-"))
        {
            let parent = operation
                .spans
                .iter()
                .find(|span| Some(&span.span_id) == child.parent_id.as_ref())
                .unwrap();
            assert!(parent.start_ns <= child.start_ns && child.end_ns <= parent.end_ns);
        }
        assert_eq!(
            intervals::reconcile(&operation.spans, operation.complete_ns, execution_scope)?,
            operation.reconciled
        );
    }
    Ok(())
}
