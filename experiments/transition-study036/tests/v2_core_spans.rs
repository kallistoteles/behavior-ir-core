//! Required real Core phase positions; aggregate duration buckets are insufficient.
#![allow(clippy::unwrap_used)]
use std::{collections::BTreeSet, time::Instant};
use transition_study036::{
    error::Result,
    intervals::{self, Span},
    reference,
};

#[test]
fn core_phase_guards_record_real_nested_positions_without_changing_observations() -> Result<()> {
    let mut original = reference::parent("growth-D1")?;
    let mut measured = reference::parent("growth-D1")?;
    let request = reference::request("finish");
    let expected = reference::step(
        &mut original.store,
        &original.module,
        &original.analysis,
        &request,
    )?;
    let origin = Instant::now();
    measured
        .store
        .research036_begin_spans(origin, "core-clock-control", "whole");
    let actual = reference::step(
        &mut measured.store,
        &measured.module,
        &measured.analysis,
        &request,
    )?;
    let trace = measured.store.research036_take_spans();
    transition_study036::observation::compare(&expected, &actual)?;
    assert_eq!(trace["available"], true);
    assert_eq!(trace["invalid"], false);
    let mut spans: Vec<Span> = serde_json::from_value(trace["spans"].clone())?;
    assert!(!spans.is_empty());
    let phases: BTreeSet<_> = spans.iter().map(|span| span.phase.clone()).collect();
    assert!(
        phases.contains("semantic") && phases.contains("encoding") && phases.contains("history")
    );
    let complete = u64::try_from(origin.elapsed().as_nanos()).unwrap();
    assert!(
        spans
            .iter()
            .all(|span| span.execution_scope == "core-clock-control"
                && span.start_ns <= span.end_ns
                && span.end_ns <= complete)
    );
    spans.push(Span {
        span_id: "whole".into(),
        parent_id: None,
        start_ns: 0,
        end_ns: complete,
        phase: "complete".into(),
        execution_scope: "core-clock-control".into(),
    });
    let reconciled = intervals::reconcile(&spans, complete, "core-clock-control")?;
    assert_eq!(reconciled.classified_ns + reconciled.remainder_ns, complete);
    let disabled = measured.store.research036_take_spans();
    assert_eq!(disabled["available"], false);
    assert!(disabled["spans"].as_array().unwrap().is_empty());
    Ok(())
}
