//! Session recovery must compare an independently expected original prefix.
#![allow(clippy::unwrap_used)]
#[path = "v2_session_support.rs"]
mod support;
use support::program::{checked, expected};
#[path = "ground_lifecycle.rs"]
mod lifetime;
#[path = "publication.rs"]
mod publication;
#[path = "ground_retention.rs"]
mod retention;
use std::time::Instant;

#[test]
fn corrupt_views_repair_without_recreating_lost_authority_from_a_report() -> Result<()> {
    use transition_study036::ground::{Ground, Status};
    let expected = expected()?;
    let mut ground = Ground::supplied(reference::parent("growth-D1")?);
    ground.check(checked()?, &expected)?;
    ground.enable_views(true)?;
    ground.select_retention(true)?;
    ground.corrupt_views_for_control();
    let actual = ground.invoke(&reference::request("finish"))?;
    transition_study036::observation::compare(&actual, &expected["expected"])?;
    ground.revoke_writer();
    assert_eq!(ground.status(), Status::Quarantined);
    ground.supply_views(&serde_json::json!({"checked": true, "valid": true}))?;
    assert_eq!(ground.status(), Status::Quarantined);
    assert!(ground.invoke(&reference::request("finish")).is_err());
    let unverified = ground.into_unverified();
    let mut restarted = Ground::supplied(unverified);
    assert_eq!(restarted.status(), Status::SuppliedUnverified);
    assert!(restarted.invoke(&reference::request("finish")).is_err());
    Ok(())
}
use transition_study036::{
    error::Result,
    operation::PairContext,
    reference,
    run_v2::Role,
    session::{self, RecoveryPoint, SessionContext},
};

#[test]
fn scheduled_invalidation_rechecks_the_real_prefix_inside_each_session() -> Result<()> {
    let program = support::program::checked()?;
    for length in [1, 8, 32, 128] {
        let (requests, expected) = support::stream(length, true)?;
        let completed = length / 2;
        let recovery = RecoveryPoint {
            before_operation: completed + 1,
            expected_parent: support::prefix_expected(
                &expected,
                completed,
                &requests[completed].0,
            )?,
        };
        for (name, role) in [("R", Role::Reference), ("GV", Role::Reuse)] {
            let label = format!("recovery-{length}-{name}");
            let out = support::directory(&label);
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
                        role,
                        diagnostic: true,
                        out: &out,
                        execution_scope: &label,
                    },
                    worker_started: Instant::now(),
                    first_in_worker: true,
                },
                Some(&recovery),
            )?;
            assert_eq!(report.completed_operations, length);
            assert_eq!(report.invalidation_before, Some(completed + 1));
            assert!(report.reacquisition_ns > 0);
            assert!(report.reacquisition_ns < report.session_ns);
            assert_eq!(report.final_history, expected[length - 1]["after_history"]);
        }
    }
    Ok(())
}

#[test]
fn wrong_history_packet_subject_and_policy_cannot_recover() -> Result<()> {
    let program = support::program::checked()?;
    let (requests, expected) = support::stream(2, true)?;
    for variant in ["history", "packet", "module", "policy"] {
        let mut prefix = support::prefix_expected(&expected, 1, &requests[1].0)?;
        match variant {
            "history" => prefix["parent"]["record"] = serde_json::json!("wrong"),
            "packet" => prefix["parent_packet"]["commits"] = serde_json::json!([]),
            "module" => prefix["module"] = serde_json::json!("wrong"),
            "policy" => prefix["policy_set_hash"] = serde_json::json!("wrong"),
            _ => unreachable!(),
        }
        let out = support::directory(variant);
        let recovery = RecoveryPoint {
            before_operation: 2,
            expected_parent: prefix,
        };
        assert!(
            session::run(
                || Ok((
                    reference::parent("growth-D1")?,
                    support::program::expected()?
                )),
                program,
                &requests,
                &expected,
                SessionContext {
                    operation: PairContext {
                        role: Role::Reuse,
                        diagnostic: false,
                        out: &out,
                        execution_scope: variant
                    },
                    worker_started: Instant::now(),
                    first_in_worker: true,
                },
                Some(&recovery)
            )
            .is_err()
        );
        assert!(!out.join("observation-001.json").exists());
        assert!(!out.join("session-summary.json").exists());
    }
    Ok(())
}

#[test]
fn publication_faults_leave_an_honest_partial_checkpoint_without_success() -> Result<()> {
    use transition_study036::ground::Fault;
    let program = support::program::checked()?;
    let (requests, expected) = support::stream(1, false)?;
    for (label, fault, position) in [
        ("precommit", Fault::BeforeCommit, 8),
        ("conflict", Fault::Conflict, 8),
        ("lost-ack", Fault::LostAcknowledgement, 9),
    ] {
        let out = support::directory(label);
        assert!(
            session::run(
                || {
                    let mut parent = reference::parent("growth-D1")?;
                    parent.store.backend_mut().inject_fault(fault);
                    Ok((parent, support::program::expected()?))
                },
                program,
                &requests,
                &expected,
                SessionContext {
                    operation: PairContext {
                        role: Role::Reuse,
                        diagnostic: false,
                        out: &out,
                        execution_scope: label
                    },
                    worker_started: Instant::now(),
                    first_in_worker: true,
                },
                None
            )
            .is_err()
        );
        let failed: serde_json::Value =
            serde_json::from_slice(&std::fs::read(out.join("session-failure.json"))?)?;
        assert_eq!(failed["partial"], true);
        assert_eq!(failed["completed_operations"], 0);
        assert_eq!(failed["actual_history"]["position"], position);
        assert_eq!(failed["authority"], "quarantined");
        assert!(!out.join("session-summary.json").exists());
        assert!(!out.join("observation-000.json").exists());
    }
    Ok(())
}
