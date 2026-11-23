//! Actual boundary observations; process RSS never stands for retained allocation.
#![allow(clippy::unwrap_used)]
#[path = "v2_session_support.rs"]
mod support;
use serde_json::{Value, json};
use std::time::Instant;
use transition_study036::{
    error::Result,
    operation::PairContext,
    reference,
    run_v2::Role,
    session::{self, SessionContext},
};

fn run(label: &str) -> Result<Value> {
    let program = support::program::checked()?;
    let (requests, expected) = support::stream(1, false)?;
    let out = support::directory(label);
    let report = session::run(
        || {
            Ok((
                reference::parent("growth-D1")?,
                support::program::expected()?,
            ))
        },
        program,
        &requests,
        &expected,
        SessionContext {
            operation: PairContext {
                role: Role::Reuse,
                diagnostic: true,
                out: &out,
                execution_scope: label,
            },
            worker_started: Instant::now(),
            first_in_worker: true,
        },
        None,
    )?;
    assert_eq!(report.final_history, expected[0]["after_history"]);
    assert_eq!(std::fs::read(out.join("observation-000.json"))?, {
        let mut bytes = serde_json::to_vec(&expected[0])?;
        bytes.push(b'\n');
        bytes
    });
    Ok(serde_json::to_value(report)?)
}

#[test]
fn unavailable_retained_allocation_uses_the_frozen_quantity_contract() -> Result<()> {
    let report = run("quantity-contract")?;
    assert_eq!(report["retained_bytes"]["value"], Value::Null);
    assert_eq!(report["retained_bytes"]["unit"], "bytes");
    assert_eq!(report["retained_bytes"]["scope"], "session-retained-owned");
    assert_eq!(
        report["retained_bytes"]["method"], "not-measured",
        "RetainedQuantityMustMatchLifecycleContract"
    );
    assert!(
        report["retained_bytes"]["reason_if_unavailable"]
            .as_str()
            .is_some_and(|reason| !reason.is_empty())
    );
    Ok(())
}

#[test]
fn actual_resources_are_observed_at_acquisition_operation_audit_and_release() -> Result<()> {
    let report = run("resource-boundaries")?;
    let observations = report["resource_observations"]
        .as_array()
        .unwrap_or_else(|| panic!("SessionResourceBoundariesMissing"));
    assert_eq!(
        observations
            .iter()
            .map(|row| row["boundary"].clone())
            .collect::<Vec<_>>(),
        vec![
            json!("acquisition"),
            json!("operation"),
            json!("audit"),
            json!("released")
        ]
    );
    let mut previous = report["offsets"]["session_start"].as_u64().unwrap();
    for observation in observations {
        let at = observation["at_ns"].as_u64().unwrap();
        assert!(previous <= at && at <= report["offsets"]["audit_end"].as_u64().unwrap());
        previous = at;
        let rss = &observation["process_rss"];
        assert_eq!(rss["unit"], "bytes");
        assert_eq!(rss["scope"], "worker-process-resident");
        assert_eq!(rss["method"], "proc-self-status-snapshot");
        assert!(rss["value"].as_u64().unwrap() > 0);
        assert!(rss["reason_if_unavailable"].is_null());
        for component in ["state", "views", "history", "results"] {
            let quantity = &observation["retained_components"][component];
            assert!(quantity["value"].is_null());
            assert_eq!(quantity["method"], "not-measured");
            assert!(quantity["reason_if_unavailable"].is_string());
        }
    }
    assert_eq!(observations[1]["operation"], 1);
    assert!(
        observations[1]["at_ns"].as_u64().unwrap()
            >= report["offsets"]["acquisition_end"].as_u64().unwrap()
                + report["operations"][0]["complete_ns"].as_u64().unwrap()
    );
    assert!(
        observations[0]["at_ns"].as_u64().unwrap()
            <= report["offsets"]["acquisition_end"].as_u64().unwrap()
    );
    assert!(
        observations[1]["at_ns"].as_u64().unwrap()
            <= report["offsets"]["last_output_end"].as_u64().unwrap()
    );
    Ok(())
}
