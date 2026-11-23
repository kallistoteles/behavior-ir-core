//! Fresh ownership, actual long streams and direct enclosing endpoint controls.
#![allow(clippy::unwrap_used)]
#[path = "v2_session_support.rs"]
mod support;
use std::{cell::Cell, time::Instant};
use transition_study036::{
    error::Result,
    operation::PairContext,
    reference,
    run_v2::Role,
    session::{self, SessionContext},
};

#[test]
fn every_length_executes_fresh_acquisition_complete_delivery_and_original_audit() -> Result<()> {
    let program = support::program::checked()?;
    for length in [1, 8, 32, 128] {
        for changing in [false, true] {
            let (requests, expected) = support::stream(length, changing)?;
            for (name, role) in [("R", Role::Reference), ("GV", Role::Reuse)] {
                let label = format!("{length}-{changing}-{name}");
                let out = support::directory(&label);
                let acquisitions = Cell::new(0);
                let outer = Instant::now();
                let report = session::run(
                    || {
                        acquisitions.set(acquisitions.get() + 1);
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
                            diagnostic: false,
                            out: &out,
                            execution_scope: &label,
                        },
                        worker_started: outer,
                        first_in_worker: true,
                    },
                    None,
                )?;
                assert_eq!(acquisitions.get(), 1);
                assert_eq!(report.completed_operations, length);
                assert_eq!(report.operations.len(), length);
                assert_eq!(report.final_history, expected[length - 1]["after_history"]);
                let offsets = &report.offsets;
                assert_eq!(offsets.worker_start, 0);
                assert!(offsets.session_start <= offsets.acquisition_end);
                assert!(offsets.acquisition_end < offsets.last_output_end);
                assert!(offsets.last_output_end <= offsets.audit_end);
                assert!(u128::from(offsets.audit_end) <= outer.elapsed().as_nanos());
                assert_eq!(
                    report.session_ns,
                    offsets.last_output_end - offsets.session_start
                );
                assert_eq!(
                    report.session_with_audit_ns,
                    offsets.audit_end - offsets.session_start
                );
                assert_eq!(
                    report.cold_first_session_with_audit_ns,
                    Some(offsets.audit_end)
                );
                assert!(
                    report.session_with_audit_ns
                        >= report.operations.iter().map(|x| x.complete_ns).sum::<u64>()
                );
                assert_eq!(report.reacquisition_ns, 0);
                for (index, original) in expected.iter().enumerate() {
                    let mut bytes = serde_json::to_vec(original)?;
                    bytes.push(b'\n');
                    assert_eq!(
                        std::fs::read(out.join(format!("observation-{index:03}.json")))?,
                        bytes
                    );
                }
            }
        }
    }
    Ok(())
}

#[test]
fn output_collision_and_invalid_lengths_never_acquire_a_ground() -> Result<()> {
    let program = support::program::checked()?;
    for length in [0, 1, 129] {
        let (requests, expected) = support::stream(length.min(1), false)?;
        let requests = if length == 129 {
            vec![requests[0].clone(); 129]
        } else {
            requests
        };
        let expected = if length == 129 {
            vec![expected[0].clone(); 129]
        } else {
            expected
        };
        let label = format!("rejected-{length}");
        let out = support::directory(&label);
        if length == 1 {
            std::fs::create_dir_all(&out)?;
        }
        let acquisitions = Cell::new(0);
        let result = session::run(
            || {
                acquisitions.set(acquisitions.get() + 1);
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
                    diagnostic: false,
                    out: &out,
                    execution_scope: &label,
                },
                worker_started: Instant::now(),
                first_in_worker: true,
            },
            None,
        );
        assert!(result.is_err());
        assert_eq!(acquisitions.get(), 0);
    }
    Ok(())
}
