//! Actual call-boundary clocks. Aggregate duration buckets never create offsets.
use crate::{
    capture::Capture,
    error::{Result, StudyError},
    intervals::Span,
};
use behavior_engine::store::Store;
use serde::Deserialize;
use std::time::Instant;

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CoreTrace {
    available: bool,
    invalid: bool,
    spans: Vec<Span>,
}

#[derive(Default)]
pub(crate) struct NativeSpans {
    origin: Option<Instant>,
    scope: String,
    spans: Vec<Span>,
    invalid: bool,
}

impl NativeSpans {
    fn next_id(&self, label: &str) -> String {
        format!("native-{label}-{}", self.spans.len())
    }

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

    pub(crate) fn start_core(&mut self, label: &str, store: &Store<Capture>) -> Option<u64> {
        if let Some(origin) = self.origin {
            // Capture setup precedes the actual-call span. Its cost stays in
            // the explicitly unclassified enclosing native transition.
            store.research036_begin_spans(origin, &self.scope, &self.next_id(label));
        }
        self.start()
    }

    pub(crate) fn finish_core(
        &mut self,
        label: &str,
        phase: &str,
        start: Option<u64>,
        store: &Store<Capture>,
    ) -> Result<()> {
        if self.origin.is_none() {
            return Ok(());
        }
        let parent_id = self.next_id(label);
        self.finish(label, phase, start);
        // Stop the call span before encoding/decoding diagnostic metadata.
        // No positions are reconstructed from aggregate phase durations.
        let trace: CoreTrace = serde_json::from_value(store.research036_take_spans())?;
        if !trace.available
            || trace.invalid
            || self.invalid
            || self.spans.len().saturating_add(trace.spans.len()) > 100_000
        {
            self.invalid = true;
            return Err(StudyError::Prerequisite("InvalidCoreSpanCapture"));
        }
        for mut span in trace.spans {
            if span.execution_scope != self.scope {
                self.invalid = true;
                return Err(StudyError::Prerequisite("WrongCoreSpanScope"));
            }
            let original_parent = span
                .parent_id
                .ok_or(StudyError::Prerequisite("MissingCoreSpanParent"))?;
            span.span_id = format!("{parent_id}/{}", span.span_id);
            span.parent_id = Some(if original_parent == parent_id {
                parent_id.clone()
            } else {
                format!("{parent_id}/{original_parent}")
            });
            self.spans.push(span);
        }
        Ok(())
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
            span_id: self.next_id(label),
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
