mod common;

use common::{Fixture, read_json, sha256};
use core_proof_feasibility033::telemetry::{Clock, TimingError, enforce_budget, measure};
use serde_json::json;
use std::cell::Cell;
use std::fs;

type TestResult = Result<(), Box<dyn std::error::Error>>;

struct ManualClock(Cell<u64>);

impl Clock for ManualClock {
    fn now_ns(&self) -> u64 {
        self.0.get()
    }
}

#[test]
fn completed_negative_assessment_never_passes_g1_or_needs_keys() -> TestResult {
    let fixture = Fixture::new()?;
    assert!(fixture.freeze()?.status.success());
    let manifest = fs::read(fixture.0.join("frozen/manifest.json"))?;
    let failure = json!({
        "format_version": "core033.failure.v1",
        "input_manifest_sha256": sha256(&manifest),
        "stage": "correspondence",
        "status": "not_established",
        "reason": "native source bridge is unavailable",
        "blocking_artifacts": ["Core033.Source.sound"]
    });
    fs::write(
        fixture.0.join("failure.json"),
        serde_json::to_vec(&failure)?,
    )?;
    let result = fixture.run(&[
        "assess",
        "--manifest",
        "frozen/manifest.json",
        "--failure-receipt",
        "failure.json",
        "--evidence",
        "frozen",
        "--out",
        "assessment.json",
    ])?;
    assert_eq!(result.status.code(), Some(0), "{:?}", result);
    let assessment = read_json(&fixture.0.join("assessment.json"))?;
    assert_eq!(assessment["g1_pass"], false);
    assert_eq!(assessment["correctness"], "not_established");
    assert_eq!(assessment["performance"], "not_established");
    assert_eq!(assessment["decision"], "rework");
    assert!(!fixture.0.join("frozen/parameters/vk.bin").exists());
    let mut forged = failure;
    forged["status"] = "passed".into();
    fs::write(fixture.0.join("forged.json"), serde_json::to_vec(&forged)?)?;
    assert_eq!(
        fixture
            .run(&[
                "assess",
                "--manifest",
                "frozen/manifest.json",
                "--failure-receipt",
                "forged.json",
                "--evidence",
                "frozen",
                "--out",
                "forged-assessment.json",
            ])?
            .status
            .code(),
        Some(2)
    );
    Ok(())
}

#[test]
fn failure_for_another_manifest_is_rejected() -> TestResult {
    let fixture = Fixture::new()?;
    assert!(fixture.freeze()?.status.success());
    fs::write(
        fixture.0.join("failure.json"),
        serde_json::to_vec(&json!({
            "format_version": "core033.failure.v1", "input_manifest_sha256": "0".repeat(64),
            "stage": "prepare", "status": "not_established", "reason": "unavailable",
            "blocking_artifacts": ["parameters"]
        }))?,
    )?;
    assert_eq!(
        fixture
            .run(&[
                "assess",
                "--manifest",
                "frozen/manifest.json",
                "--failure-receipt",
                "failure.json",
                "--evidence",
                "frozen",
                "--out",
                "assessment.json",
            ])?
            .status
            .code(),
        Some(3)
    );
    Ok(())
}

#[test]
fn whole_wall_interval_is_measured_and_budgeted() -> TestResult {
    let clock = ManualClock(Cell::new(10));
    let span = measure(&clock, || clock.0.set(110))?;
    assert_eq!(span.wall_ns, 100);
    assert_eq!(span.start_ns, 10);
    assert_eq!(span.end_ns, 110);
    assert_eq!(enforce_budget(&span, 100), Ok(()));
    assert_eq!(enforce_budget(&span, 99), Err(TimingError::BudgetExceeded));
    Ok(())
}

#[test]
fn backwards_time_is_not_zero_duration_or_a_success() {
    let clock = ManualClock(Cell::new(110));
    assert_eq!(
        measure(&clock, || clock.0.set(10)),
        Err(TimingError::ClockWentBackwards)
    );
}

#[test]
fn active_budget_retains_overrun_and_rejects_double_charging() -> TestResult {
    use core_proof_feasibility033::telemetry::{Span, WorkBudget};
    let mut budget = WorkBudget::new(99);
    let whole = Span {
        start_ns: 10,
        end_ns: 110,
        wall_ns: 100,
    };
    assert_eq!(budget.charge(&whole), Err(TimingError::BudgetExceeded));
    assert_eq!(budget.used_ns(), 100);
    assert_eq!(budget.charge(&whole), Err(TimingError::InvalidSpan));
    assert_eq!(budget.used_ns(), 100);
    Ok(())
}

#[test]
fn raw_failure_span_keeps_complete_interval_as_exact_decimal_strings() -> TestResult {
    use core_proof_feasibility033::telemetry::{Span, StageOutcome, write_span};
    let span = Span {
        start_ns: 9_007_199_254_740_992,
        end_ns: 9_007_199_254_741_092,
        wall_ns: 100,
    };
    let mut raw = Vec::new();
    write_span(
        &mut raw,
        "compression",
        StageOutcome::ResourceFailure,
        &span,
    )?;
    let record: serde_json::Value = serde_json::from_slice(&raw)?;
    assert_eq!(record["format_version"], "core033.span.v1");
    assert_eq!(record["start_ns"], "9007199254740992");
    assert_eq!(record["wall_ns"], "100");
    assert_eq!(record["outcome"], "resource_failure");
    assert!(raw.ends_with(b"\n"));
    Ok(())
}
