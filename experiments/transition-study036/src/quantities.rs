//! Typed observed quantities. Payload size never substitutes for allocation.
use crate::error::{Result, StudyError};
use serde::Serialize;

#[derive(Clone, Copy)]
pub enum Metric {
    SerializedBytes,
    DeliveredBytes,
    AllocatedBytes,
    UnderlyingWriteCalls,
    SystemCalls,
    RowsVisited,
    MaterializedRows,
    CopiedBytes,
    HashedBytes,
    ProcessRssBytes,
    SharedAdjustedPeakBytes,
}
#[derive(Clone, Copy)]
pub enum Method {
    SerializedLength,
    AllocatorHook,
    CountingWrite,
    SystemCallTrace,
    VisitHook,
    MaterializationHook,
    CopyHook,
    HashHook,
    ProcRss,
    ExactGroupPeak,
}
#[derive(Serialize)]
pub struct Quantity {
    value: Option<u64>,
    unit: String,
    scope: String,
    method: String,
    reason_if_unavailable: Option<String>,
}
impl Metric {
    fn unit(self) -> &'static str {
        match self {
            Self::UnderlyingWriteCalls => "write_calls",
            Self::SystemCalls => "syscalls",
            Self::RowsVisited => "visits",
            Self::MaterializedRows => "rows",
            _ => "bytes",
        }
    }
}
impl Method {
    fn name(self) -> &'static str {
        match self {
            Self::SerializedLength => "serialized_length",
            Self::AllocatorHook => "allocator_hook",
            Self::CountingWrite => "counting_underlying_Write",
            Self::SystemCallTrace => "system_call_trace",
            Self::VisitHook => "native_visit_hook",
            Self::MaterializationHook => "native_materialization_hook",
            Self::CopyHook => "native_copy_hook",
            Self::HashHook => "native_hash_hook",
            Self::ProcRss => "proc_sampled_RSS",
            Self::ExactGroupPeak => "exact_group_shared_page_adjusted_peak",
        }
    }
    fn supports(self, metric: Metric) -> bool {
        matches!(
            (self, metric),
            (Self::SerializedLength, Metric::SerializedBytes)
                | (Self::AllocatorHook, Metric::AllocatedBytes)
                | (Self::CountingWrite, Metric::UnderlyingWriteCalls)
                | (Self::CountingWrite, Metric::DeliveredBytes)
                | (Self::SystemCallTrace, Metric::SystemCalls)
                | (Self::VisitHook, Metric::RowsVisited)
                | (Self::MaterializationHook, Metric::MaterializedRows)
                | (Self::CopyHook, Metric::CopiedBytes)
                | (Self::HashHook, Metric::HashedBytes)
                | (Self::ProcRss, Metric::ProcessRssBytes)
                | (Self::ExactGroupPeak, Metric::SharedAdjustedPeakBytes)
        )
    }
}
impl Quantity {
    fn scope(scope: &str) -> Result<String> {
        if scope.trim().is_empty() || scope.len() > 1024 {
            return Err(StudyError::InvalidInput("QuantityScope".into()));
        }
        Ok(scope.to_owned())
    }

    /// A counter is cumulative; only compatible endpoints describe new work.
    /// Callers bind both readings to the same actual instrumented source/scope.
    pub fn counter_delta(
        metric: Metric,
        before: Option<u64>,
        after: Option<u64>,
        scope: &str,
        method: Method,
    ) -> Result<Self> {
        if !method.supports(metric) {
            return Err(StudyError::InvalidInput(
                "QuantityMethodDoesNotMeasureMetric".into(),
            ));
        }
        match (before, after) {
            (Some(before), Some(after)) => match after.checked_sub(before) {
                Some(value) => Self::observed(metric, value, scope, method),
                None => Self::unavailable(
                    metric,
                    scope,
                    "Counter decreased or reset between endpoints",
                ),
            },
            _ => Self::unavailable(
                metric,
                scope,
                "Counter unavailable at one or both operation endpoints",
            ),
        }
    }
    pub fn observed(metric: Metric, value: u64, scope: &str, method: Method) -> Result<Self> {
        if !method.supports(metric) {
            return Err(StudyError::InvalidInput(
                "QuantityMethodDoesNotMeasureMetric".into(),
            ));
        }
        Ok(Self {
            value: Some(value),
            unit: metric.unit().into(),
            scope: Self::scope(scope)?,
            method: method.name().into(),
            reason_if_unavailable: None,
        })
    }
    pub fn unavailable(metric: Metric, scope: &str, reason: &str) -> Result<Self> {
        if reason.trim().is_empty() || reason.len() > 4096 {
            return Err(StudyError::InvalidInput("QuantityUnavailableReason".into()));
        }
        Ok(Self {
            value: None,
            unit: metric.unit().into(),
            scope: Self::scope(scope)?,
            method: "unavailable".into(),
            reason_if_unavailable: Some(reason.to_owned()),
        })
    }
}
