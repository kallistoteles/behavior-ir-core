//! Actual call-boundary clocks. Aggregate duration buckets never create offsets.
use crate::{
    error::{Result, StudyError},
    intervals::Span,
};
use std::time::Instant;

#[derive(Default)]
pub(crate) struct NativeSpans {
    origin: Option<Instant>,
    scope: String,
    spans: Vec<Span>,
    invalid: bool,
}

impl NativeSpans {
    pub(crate) fn begin(&mut self, origin: Instant, scope: &str, enabled: bool) {
        self.origin = enabled.then_some(origin);
        self.scope = if enabled {
            scope.to_owned()
        } else {
            String::new()
        };
        self.spans.clear();
        self.invalid = false;
    }

    pub(crate) fn start(&mut self) -> Option<u64> {
        let origin = self.origin?;
        let value = Instant::now()
            .checked_duration_since(origin)
            .and_then(|duration| u64::try_from(duration.as_nanos()).ok());
        if value.is_none() {
            self.invalid = true;
        }
        value
    }

    pub(crate) fn finish(&mut self, label: &str, phase: &str, start: Option<u64>) {
        let Some(start_ns) = start else {
            return;
        };
        let Some(end_ns) = self.start() else {
            return;
        };
        if end_ns < start_ns || self.spans.len() >= 100_000 {
            self.invalid = true;
            return;
        }
        self.spans.push(Span {
            span_id: format!("native-{label}-{}", self.spans.len()),
            parent_id: Some("native-transition".into()),
            start_ns,
            end_ns,
            phase: phase.to_owned(),
            execution_scope: self.scope.clone(),
        });
    }

    pub(crate) fn take(&mut self) -> Result<Vec<Span>> {
        self.origin = None;
        if self.invalid {
            return Err(StudyError::Prerequisite("InvalidNativeSpanClock"));
        }
        Ok(std::mem::take(&mut self.spans))
    }
}
