//! Fresh process-local grounds, direct session clocks and original final audit.
//! No serialized result, expected packet or report creates executable authority.
use crate::{
    error::{Result, StudyError},
    fixtures::InvocationMetadata,
    ground::Ground,
    observation,
    operation::{self, OperationReport, PairContext},
    output::{self, DeliveryMode},
    reference::Parent,
    safety_check::CheckedProgram,
};
use serde::Serialize;
use serde_json::{Value, json};
use std::time::Instant;

pub struct RecoveryPoint {
    /// One-based operation number, matching the frozen lifecycle contract.
    pub before_operation: usize,
    /// An independently prepared original prefix; never copied from the candidate.
    pub expected_parent: Value,
}

pub struct SessionContext<'a> {
    pub operation: PairContext<'a>,
    /// The fixed worker sets this before parsing/loading the request.
    pub worker_started: Instant,
    /// Only the first case can enclose this worker's cold setup.
    pub first_in_worker: bool,
}

#[derive(Serialize)]
pub struct SessionOffsets {
    pub worker_start: u64,
    pub session_start: u64,
    pub acquisition_end: u64,
    pub last_output_end: u64,
    pub audit_end: u64,
}

#[derive(Serialize)]
pub struct SessionReport {
    pub completed_operations: usize,
    pub operations: Vec<OperationReport>,
    pub final_history: Value,
    pub original_audit: Value,
    pub offsets: SessionOffsets,
    pub session_ns: u64,
    pub session_with_audit_ns: u64,
    pub cold_first_session_ns: Option<u64>,
    pub cold_first_session_with_audit_ns: Option<u64>,
    pub cold_first_session_reason_if_unavailable: Option<&'static str>,
    pub reacquisition_ns: u64,
    pub invalidation_before: Option<usize>,
    pub retained_bytes: Value,
    pub resource_observations: Vec<Value>,
}

pub(crate) fn offset(origin: Instant) -> Result<u64> {
    Instant::now()
        .checked_duration_since(origin)
        .ok_or(StudyError::Prerequisite("SessionClockInFuture"))?
        .as_nanos()
        .try_into()
        .map_err(|_| StudyError::Prerequisite("SessionClockOverflow"))
}

fn difference(end: u64, start: u64) -> Result<u64> {
    end.checked_sub(start)
        .ok_or(StudyError::Prerequisite("SessionClockOrder"))
}

fn record_failure(
    ground: &mut Ground,
    context: &SessionContext<'_>,
    completed: usize,
    error: &StudyError,
) -> Result<()> {
    ground.quarantine();
    let (history, reason) = match ground.history() {
        Ok(value) => (value, Value::Null),
        Err(failure) => (Value::Null, Value::String(failure.to_string())),
    };
    output::write_new_mode(
        &context.operation.out.join("session-failure.json"),
        &json!({"format":"core036.session-failure.v2", "partial":true,
            "completed_operations":completed, "actual_history":history,
            "actual_history_reason_if_unavailable":reason, "authority":"quarantined",
            "error":error.to_string(), "product_adoption":"unactivated"}),
        DeliveryMode::Original,
        false,
    )?;
    Ok(())
}

fn audit(ground: &mut Ground, expected: &Value, context: &SessionContext<'_>) -> Result<Value> {
    let audited = ground.audit_original()?;
    observation::compare(&audited["history"], &expected["after_history"])?;
    observation::compare(&audited["state"], &expected["post_state"])?;
    observation::compare(
        &audited["original_property_outcomes"],
        &expected["original_property_outcomes"],
    )?;
    if audited["core_version_view_equal_full_reconstruction"] != true
        || audited["maintained_views_equal_full_reconstruction"] == false
    {
        return Err(StudyError::Prerequisite("SessionFinalViewAudit"));
    }
    output::write_new_mode(
        &context.operation.out.join("original-audit.json"),
        &audited,
        DeliveryMode::Original,
        context.operation.diagnostic,
    )?;
    Ok(audited)
}

/// The loader returns unverified facts. Each call constructs its own Ground
/// after the session clock starts; an existing Ground cannot cross this API.
pub fn run<F>(
    load: F,
    program: &CheckedProgram,
    requests: &[(Value, InvocationMetadata)],
    expected: &[Value],
    context: SessionContext<'_>,
    recovery: Option<&RecoveryPoint>,
) -> Result<SessionReport>
where
    F: FnOnce() -> Result<(Parent, Value)>,
{
    if requests.is_empty()
        || requests.len() > 128
        || requests.len() != expected.len()
        || context.operation.execution_scope.trim().is_empty()
        || context.operation.execution_scope.len() > 256
        || recovery.is_some_and(|point| point.before_operation != requests.len() / 2 + 1)
    {
        return Err(StudyError::InvalidInput(
            "SessionShapeOrRecoveryPoint".into(),
        ));
    }
    let session_start = offset(context.worker_started)?;
    std::fs::create_dir(context.operation.out)?;
    let (parent, expected_parent) = load()?;
    let retained = !matches!(context.operation.role, crate::run_v2::Role::Reference);
    let mut ground = Ground::supplied(parent);
    let established =
        crate::recovery::establish_retention(&mut ground, program, &expected_parent, retained);
    if let Err(error) = established {
        record_failure(&mut ground, &context, 0, &error)?;
        return Err(error);
    }
    ground.set_work(context.operation.diagnostic);
    let mut resource_observations = Vec::with_capacity(requests.len() + 4);
    resource_observations.push(crate::session_resources::snapshot(
        "acquisition",
        None,
        context.worker_started,
    )?);
    let acquisition_end = offset(context.worker_started)?;
    let mut operations = Vec::with_capacity(requests.len());
    let mut reacquisition_ns = 0;
    for index in 0..requests.len() {
        if let Some(point) = recovery.filter(|point| point.before_operation == index + 1) {
            let before = offset(context.worker_started)?;
            let unverified = ground.into_unverified();
            ground = Ground::supplied(unverified);
            let restored = crate::recovery::establish_retention(
                &mut ground,
                program,
                &point.expected_parent,
                retained,
            );
            if let Err(error) = restored {
                record_failure(&mut ground, &context, operations.len(), &error)?;
                return Err(error);
            }
            ground.set_work(context.operation.diagnostic);
            resource_observations.push(crate::session_resources::snapshot(
                "reacquired",
                Some(index + 1),
                context.worker_started,
            )?);
            reacquisition_ns = difference(offset(context.worker_started)?, before)?;
        }
        match operation::run_one(
            &mut ground,
            &requests[index],
            &expected[index],
            context.operation,
            index,
        ) {
            Ok(report) => operations.push(report),
            Err(error) => {
                record_failure(&mut ground, &context, operations.len(), &error)?;
                return Err(error);
            }
        }
        resource_observations.push(crate::session_resources::snapshot(
            "operation",
            Some(index + 1),
            context.worker_started,
        )?);
    }
    let last_output_end = offset(context.worker_started)?;
    let final_expected = expected
        .last()
        .ok_or(StudyError::Prerequisite("MissingSessionFinalExpected"))?;
    let original_audit = match audit(&mut ground, final_expected, &context) {
        Ok(value) => value,
        Err(error) => {
            record_failure(&mut ground, &context, operations.len(), &error)?;
            return Err(error);
        }
    };
    let final_history = ground.history()?;
    resource_observations.push(crate::session_resources::snapshot(
        "audit",
        None,
        context.worker_started,
    )?);
    // Mandatory Ground reclamation is inside the directly enclosing audit
    // total. The returned report and independently audited JSON remain owned.
    drop(ground);
    resource_observations.push(crate::session_resources::snapshot(
        "released",
        None,
        context.worker_started,
    )?);
    let audit_end = offset(context.worker_started)?;
    Ok(SessionReport {
        completed_operations: operations.len(),
        operations,
        final_history,
        original_audit,
        offsets: SessionOffsets {
            worker_start: 0,
            session_start,
            acquisition_end,
            last_output_end,
            audit_end,
        },
        session_ns: difference(last_output_end, session_start)?,
        session_with_audit_ns: difference(audit_end, session_start)?,
        cold_first_session_ns: context.first_in_worker.then_some(last_output_end),
        cold_first_session_with_audit_ns: context.first_in_worker.then_some(audit_end),
        cold_first_session_reason_if_unavailable: (!context.first_in_worker)
            .then_some("This is a later case in the same worker; worker-relative offsets include earlier cases and are not cold-first-session totals"),
        reacquisition_ns,
        invalidation_before: recovery.map(|point| point.before_operation),
        retained_bytes: json!({"value":null,"unit":"bytes","scope":"session-retained-owned",
            "method":"not-measured","reason_if_unavailable":"No exact owned-allocation hook is installed; serialized payload size is not retained memory"}),
        resource_observations,
    })
}
