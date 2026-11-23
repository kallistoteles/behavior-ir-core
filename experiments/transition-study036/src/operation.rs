//! Actual complete primary/continuation delivery with an enclosing cycle clock.
//! Acquisition and checked-program preparation precede this explicit endpoint.
use crate::{
    error::{Result, StudyError},
    fixtures::InvocationMetadata,
    ground::Ground,
    intervals::{self, Reconciled, Span},
    observation,
    output::{self, Delivery},
    run_v2::Role,
};
use serde::Serialize;
use serde_json::Value;
use std::{path::Path, time::Instant};

#[derive(Serialize)]
pub struct OperationReport {
    pub complete_ns: u64,
    pub spans: Vec<Span>,
    pub reconciled: Reconciled,
    pub delivery: Delivery,
    pub confirmed_history: Value,
    pub native_duration_buckets: Value,
    pub native_work: Value,
    pub native_work_scope: String,
    pub quantities: std::collections::BTreeMap<String, crate::quantities::Quantity>,
    pub attribution_scope: String,
}
#[derive(Serialize)]
pub struct PairReport {
    pub operations: Vec<OperationReport>,
    pub cycle_ns: u64,
    pub between_operations_and_clock_overhead_ns: u64,
}
fn offset(origin: Instant) -> Result<u64> {
    origin
        .elapsed()
        .as_nanos()
        .try_into()
        .map_err(|_| StudyError::Prerequisite("OperationClockOverflow"))
}
fn delivery_quantities(
    delivery: &Delivery,
) -> Result<std::collections::BTreeMap<String, crate::quantities::Quantity>> {
    use crate::quantities::{Method, Metric, Quantity};
    let mut quantities = std::collections::BTreeMap::new();
    quantities.insert(
        "delivered_output_bytes".into(),
        Quantity::observed(
            Metric::DeliveredBytes,
            delivery.bytes,
            "this operation's completed output stream",
            Method::CountingWrite,
        )?,
    );
    quantities.insert(
        "underlying_write_calls".into(),
        match delivery.underlying_write_calls {
            Some(value) => Quantity::observed(
                Metric::UnderlyingWriteCalls,
                value,
                "this operation's completed output stream",
                Method::CountingWrite,
            )?,
            None => Quantity::unavailable(
                Metric::UnderlyingWriteCalls,
                "this operation's output",
                "Detailed Write-call counters are disabled in timing mode",
            )?,
        },
    );
    quantities.insert(
        "allocated_bytes".into(),
        Quantity::unavailable(
            Metric::AllocatedBytes,
            "this operation",
            "No allocator hook is installed; output size is not allocation",
        )?,
    );
    quantities.insert(
        "shared_adjusted_peak_bytes".into(),
        Quantity::unavailable(
            Metric::SharedAdjustedPeakBytes,
            "this operation",
            "No exact shared-page-adjusted group peak hook is installed",
        )?,
    );
    quantities.insert(
        "copied_bytes".into(),
        Quantity::unavailable(
            Metric::CopiedBytes,
            "this operation",
            "No byte-exact native copy hook covers this operation",
        )?,
    );
    quantities.insert(
        "hashed_bytes".into(),
        Quantity::unavailable(
            Metric::HashedBytes,
            "this operation",
            "No byte-exact native hash-input hook covers this operation",
        )?,
    );
    Ok(quantities)
}
fn span(id: &str, start_ns: u64, end_ns: u64, phase: &str, scope: &str) -> Span {
    Span {
        span_id: id.to_owned(),
        parent_id: Some("whole".into()),
        start_ns,
        end_ns,
        phase: phase.to_owned(),
        execution_scope: scope.to_owned(),
    }
}
#[derive(Clone, Copy)]
pub struct PairContext<'a> {
    pub role: Role,
    pub diagnostic: bool,
    pub out: &'a Path,
    pub execution_scope: &'a str,
}

/// One required full delivery inside a caller-owned enclosing session clock.
/// Output ownership and work-counter lifetime belong to that session.
pub fn run_one(
    ground: &mut Ground,
    request: &(Value, InvocationMetadata),
    expected: &Value,
    context: PairContext<'_>,
    index: usize,
) -> Result<OperationReport> {
    let raw = run_one_operation(ground, request, expected, context, index)?;
    let diagnostic = (ground.operation_timings(), ground.diagnostics());
    let mut reports = Vec::with_capacity(1);
    compose_reports(vec![raw], vec![diagnostic], &mut reports)?;
    reports
        .pop()
        .ok_or(StudyError::Prerequisite("MissingOperationReport"))
}
type RawOperation = (u64, Vec<Span>, Delivery, Value, String);
type DiagnosticRecord = (Value, Value);

fn run_one_operation(
    ground: &mut Ground,
    request: &(Value, InvocationMetadata),
    original: &Value,
    context: PairContext<'_>,
    index: usize,
) -> Result<RawOperation> {
    let (request, metadata) = request;
    let role = context.role;
    let diagnostic = context.diagnostic;
    let out = context.out;
    let execution_scope = context.execution_scope;
    let scope = format!("{execution_scope}-operation-{index}");
    let clock = Instant::now();
    let mut spans = Vec::with_capacity(6);
    let before = offset(clock)?;
    ground.select_retention(!matches!(role, Role::Reference))?;
    spans.push(span(
        "retention",
        before,
        offset(clock)?,
        "maintenance",
        &scope,
    ));
    let before = offset(clock)?;
    let actual = ground.invoke_with_metadata(request, metadata)?;
    // Invoke encloses semantic, identity, view, property and commit work.
    // Keep it unclassified until real finer span hooks exist. Aggregate
    // native buckets below are separate observations, never fake spans.
    spans.push(span(
        "native-transition",
        before,
        offset(clock)?,
        "unclassified",
        &scope,
    ));
    let before = offset(clock)?;
    observation::compare(&actual, original)?;
    spans.push(span(
        "original-comparison",
        before,
        offset(clock)?,
        "comparison",
        &scope,
    ));
    let before = offset(clock)?;
    let delivery = output::write_new_mode(
        &out.join(format!("observation-{index:03}.json")),
        &actual,
        role.delivery_mode(),
        diagnostic,
    )?;
    spans.push(span(
        "create-encode-write-flush-sync",
        before,
        offset(clock)?,
        "output",
        &scope,
    ));
    let before = offset(clock)?;
    let confirmed_history = ground.history()?;
    if confirmed_history != actual["after_history"] {
        return Err(StudyError::Prerequisite("UnconfirmedExactChild"));
    }
    spans.push(span(
        "confirmed-endpoint",
        before,
        offset(clock)?,
        "history",
        &scope,
    ));
    let complete_ns = offset(clock)?;
    spans.push(Span {
        span_id: "whole".into(),
        parent_id: None,
        start_ns: 0,
        end_ns: complete_ns,
        phase: "complete".into(),
        execution_scope: scope.clone(),
    });

    Ok((complete_ns, spans, delivery, confirmed_history, scope))
}

fn run_operations(
    ground: &mut Ground,
    requests: &[(Value, InvocationMetadata); 2],
    expected: &[Value; 2],
    context: PairContext<'_>,
    operations: &mut Vec<RawOperation>,
    diagnostic_records: &mut Vec<DiagnosticRecord>,
) -> Result<()> {
    let mut index = 0;
    while index < 2 {
        operations.push(run_one_operation(
            ground,
            &requests[index],
            &expected[index],
            context,
            index,
        )?);
        // These remain explicit enclosing-cycle overhead, outside operation clocks.
        diagnostic_records.push((ground.operation_timings(), ground.diagnostics()));
        index += 1;
    }
    Ok(())
}

fn compose_reports(
    operations: Vec<RawOperation>,
    diagnostic_records: Vec<DiagnosticRecord>,
    reports: &mut Vec<OperationReport>,
) -> Result<()> {
    let mut records = diagnostic_records.into_iter();
    for (complete_ns, spans, delivery, confirmed_history, scope) in operations {
        let Some((native_duration_buckets, native_work)) = records.next() else {
            break;
        };
        let reconciled = intervals::reconcile(&spans, complete_ns, &scope)?;
        let quantities = delivery_quantities(&delivery)?;
        reports.push(OperationReport {
            complete_ns, spans, reconciled, delivery, confirmed_history,
            native_duration_buckets, native_work, quantities,
            native_work_scope: "Cumulative since the last counter reset, not operation-local counter deltas".into(),
            attribution_scope: "Raw wrapper spans only; native transition unclassified. Aggregate native buckets are separate and must not be added to this tree.".into(),
        });
    }
    Ok(())
}

pub fn run_pair(
    ground: &mut Ground,
    requests: &[(Value, InvocationMetadata); 2],
    expected: &[Value; 2],
    context: PairContext<'_>,
) -> Result<PairReport> {
    if context.execution_scope.trim().is_empty() || context.execution_scope.len() > 256 {
        return Err(StudyError::InvalidInput("OperationExecutionScope".into()));
    }
    std::fs::create_dir(context.out)?;
    ground.set_work(context.diagnostic);
    let cycle = Instant::now();
    let mut operations = Vec::with_capacity(2);
    let mut diagnostic_records = Vec::with_capacity(2);
    run_operations(
        ground,
        requests,
        expected,
        context,
        &mut operations,
        &mut diagnostic_records,
    )?;
    let cycle_ns = offset(cycle)?;
    // The successful fixed two-request loop above produces exactly two entries.
    let operation_total = operations[0]
        .0
        .checked_add(operations[1].0)
        .ok_or(StudyError::Prerequisite("OperationDurationOverflow"))?;
    let between_operations_and_clock_overhead_ns =
        cycle_ns
            .checked_sub(operation_total)
            .ok_or(StudyError::Prerequisite(
                "OperationCycleDoesNotEncloseChildren",
            ))?;
    let mut reports = Vec::with_capacity(operations.len());
    compose_reports(operations, diagnostic_records, &mut reports)?;
    Ok(PairReport {
        operations: reports,
        cycle_ns,
        between_operations_and_clock_overhead_ns,
    })
}
