//! Broken diagnostic clocks cannot masquerade as valid intervals.
#![allow(clippy::unwrap_used)]
use std::time::{Duration, Instant};
use transition_study036::{error::Result, observation, reference};

#[test]
fn future_origin_is_invalid_and_cannot_change_the_original_result() -> Result<()> {
    let mut expected = reference::parent("growth-D1")?;
    let mut candidate = reference::parent("growth-D1")?;
    let request = reference::request("finish");
    let original = reference::step(
        &mut expected.store,
        &expected.module,
        &expected.analysis,
        &request,
    )?;
    let future = Instant::now()
        .checked_add(Duration::from_secs(3600))
        .unwrap();
    candidate
        .store
        .research036_begin_spans(future, "invalid-clock", "whole");
    let measured = reference::step(
        &mut candidate.store,
        &candidate.module,
        &candidate.analysis,
        &request,
    )?;
    observation::compare(&original, &measured)?;
    let trace = candidate.store.research036_take_spans();
    assert_eq!(trace["available"], true);
    assert_eq!(trace["invalid"], true);
    assert!(trace["spans"].as_array().unwrap().is_empty());
    let after = candidate.store.research036_take_spans();
    assert_eq!(after["available"], false);
    assert_eq!(after["invalid"], false);
    Ok(())
}

#[test]
fn empty_context_is_invalid_and_disabled_capture_stays_empty() -> Result<()> {
    let parent = reference::parent("growth-D1")?;
    let disabled = parent.store.research036_take_spans();
    assert_eq!(disabled["available"], false);
    parent
        .store
        .research036_begin_spans(Instant::now(), "", "whole");
    assert_eq!(parent.store.research036_take_spans()["invalid"], true);
    parent
        .store
        .research036_begin_spans(Instant::now(), "context", "");
    assert_eq!(parent.store.research036_take_spans()["invalid"], true);
    parent
        .store
        .research036_begin_spans(Instant::now(), "context", "whole");
    let valid = parent.store.research036_take_spans();
    assert_eq!(valid["available"], true);
    assert_eq!(valid["invalid"], false);
    assert!(valid["spans"].as_array().unwrap().is_empty());
    Ok(())
}
