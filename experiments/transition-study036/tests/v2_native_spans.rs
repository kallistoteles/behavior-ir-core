//! Real nested clocks, not positions reconstructed from aggregate durations.
#![allow(clippy::unwrap_used)]
#[path = "v2_session_support.rs"]
mod support;
use std::{collections::BTreeSet, path::PathBuf};
use transition_study036::{
    error::{Result, StudyError},
    ground::Ground,
    intervals,
    operation::{self, PairContext, PairReport},
    reference,
    run_v2::Role,
};

fn run(role: Role, diagnostic: bool, label: &str) -> Result<(PairReport, PathBuf)> {
    let program = support::program::checked()?;
    let (requests, expected) = support::stream(2, true)?;
    let requests = requests
        .try_into()
        .map_err(|_| StudyError::Prerequisite("SpanControlRequestCount"))?;
    let expected = expected
        .try_into()
        .map_err(|_| StudyError::Prerequisite("SpanControlOriginalCount"))?;
    let mut ground = Ground::supplied(reference::parent("growth-D1")?);
    ground.check(program, &support::program::expected()?)?;
    ground.enable_views(!matches!(role, Role::Reference))?;
    let out = support::directory(label);
    let report = operation::run_pair(
        &mut ground,
        &requests,
        &expected,
        PairContext {
            role,
            diagnostic,
            out: &out,
            execution_scope: label,
        },
    )?;
    Ok((report, out))
}

#[test]
fn diagnostic_native_calls_have_real_nested_operation_relative_spans() -> Result<()> {
    for (role, label) in [
        (Role::Reference, "native-spans-R"),
        (Role::Reuse, "native-spans-GV"),
    ] {
        let (pair, _) = run(role, true, label)?;
        let mut phases = BTreeSet::new();
        for report in pair.operations {
            let native = report
                .spans
                .iter()
                .find(|span| span.span_id == "native-transition")
                .unwrap();
            assert!(
                report
                    .spans
                    .iter()
                    .any(|span| span.parent_id.as_deref() == Some("native-transition")),
                "NativeTransitionMustExposeRealNestedSpans"
            );
            for child in report.spans.iter().filter(|span| {
                span.parent_id.as_deref() != Some("whole") && span.parent_id.is_some()
            }) {
                assert_eq!(child.execution_scope, native.execution_scope);
                assert!(
                    native.start_ns <= child.start_ns
                        && child.start_ns <= child.end_ns
                        && child.end_ns <= native.end_ns
                );
                phases.insert(child.phase.clone());
            }
            let checked =
                intervals::reconcile(&report.spans, report.complete_ns, &native.execution_scope)?;
            assert_eq!(checked, report.reconciled);
            assert_eq!(
                checked.classified_ns + checked.remainder_ns,
                checked.complete_ns
            );
        }
        assert!(phases.contains("history") && phases.contains("commit"));
        if matches!(role, Role::Reference) {
            assert!(phases.contains("property") && phases.contains("versions"));
        } else {
            assert!(phases.contains("views"));
        }
    }
    Ok(())
}

#[test]
fn timing_erases_detailed_spans_and_keeps_full_original_bytes() -> Result<()> {
    let (timing, timing_out) = run(Role::Reuse, false, "native-spans-timing")?;
    let (_, diagnostic_out) = run(Role::Reuse, true, "native-spans-diagnostic")?;
    for (index, report) in timing.operations.iter().enumerate() {
        assert!(
            !report
                .spans
                .iter()
                .any(|span| span.parent_id.as_deref() == Some("native-transition"))
        );
        let name = format!("observation-{index:03}.json");
        assert_eq!(
            std::fs::read(timing_out.join(&name))?,
            std::fs::read(diagnostic_out.join(&name))?
        );
    }
    Ok(())
}
