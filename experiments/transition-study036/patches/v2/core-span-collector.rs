//! Optional actual positions from existing Core phase guards. No semantic input.
use std::{cell::RefCell, time::Instant};

#[derive(serde::Serialize)]
pub struct Research036Span {
    span_id: String,
    parent_id: Option<String>,
    start_ns: u64,
    end_ns: u64,
    phase: &'static str,
    execution_scope: String,
}

#[derive(Default, serde::Serialize)]
pub struct Research036Trace {
    available: bool,
    invalid: bool,
    spans: Vec<Research036Span>,
}

struct OpenSpan {
    id: usize,
    parent_id: String,
    start_ns: u64,
    phase: &'static str,
}

struct ActiveTrace {
    origin: Instant,
    scope: String,
    parent_id: String,
    next_id: usize,
    open: Vec<OpenSpan>,
    trace: Research036Trace,
}

#[derive(Default)]
struct TraceSlot {
    generation: u64,
    active: Option<ActiveTrace>,
}

thread_local! {
    static TRACE: RefCell<TraceSlot> = RefCell::new(TraceSlot::default());
}

pub fn begin(origin: Instant, scope: &str, parent_id: &str) {
    TRACE.with(|slot| {
        let mut slot = slot.borrow_mut();
        slot.active = None;
        let Some(generation) = slot.generation.checked_add(1) else {
            return;
        };
        slot.generation = generation;
        slot.active = Some(ActiveTrace {
            origin,
            scope: scope.into(),
            parent_id: parent_id.into(),
            next_id: 0,
            open: Vec::new(),
            trace: Research036Trace {
                available: true,
                invalid: scope.is_empty() || parent_id.is_empty(),
                spans: Vec::new(),
            },
        });
    });
}

pub fn take() -> Research036Trace {
    TRACE.with(|slot| {
        let Some(mut active) = slot.borrow_mut().active.take() else {
            return Research036Trace::default();
        };
        active.trace.invalid |= !active.open.is_empty();
        active.trace
    })
}

fn offset(origin: Instant, now: Instant) -> Option<u64> {
    now.checked_duration_since(origin)
        .and_then(|elapsed| u64::try_from(elapsed.as_nanos()).ok())
}

pub(super) fn start(now: Instant, phase: super::Research035Phase) -> Option<(u64, usize)> {
    TRACE.with(|slot| {
        let mut slot = slot.borrow_mut();
        let generation = slot.generation;
        let active = slot.active.as_mut()?;
        let Some(start_ns) = offset(active.origin, now) else {
            active.trace.invalid = true;
            return None;
        };
        if active.next_id >= 100_000 {
            active.trace.invalid = true;
            return None;
        }
        let id = active.next_id;
        active.next_id += 1;
        let parent_id = active.open.last().map_or_else(
            || active.parent_id.clone(),
            |parent| format!("core-phase-{}", parent.id),
        );
        let phase = match phase {
            super::Research035Phase::Evaluation => "semantic",
            super::Research035Phase::Observation | super::Research035Phase::Envelope => "encoding",
            super::Research035Phase::Identity => "history",
            super::Research035Phase::Reestablishment => "property",
            super::Research035Phase::AffectedMaintenance => "views",
        };
        active.open.push(OpenSpan {
            id,
            parent_id,
            start_ns,
            phase,
        });
        Some((generation, id))
    })
}

pub(super) fn finish(token: Option<(u64, usize)>, now: Instant) {
    let Some((generation, id)) = token else {
        return;
    };
    TRACE.with(|slot| {
        let mut slot = slot.borrow_mut();
        if slot.generation != generation {
            return;
        }
        let Some(active) = slot.active.as_mut() else {
            return;
        };
        if active.open.last().is_none_or(|open| open.id != id) {
            active.trace.invalid = true;
            return;
        }
        let Some(open) = active.open.pop() else {
            return;
        };
        let Some(end_ns) = offset(active.origin, now) else {
            active.trace.invalid = true;
            return;
        };
        if end_ns < open.start_ns {
            active.trace.invalid = true;
            return;
        }
        active.trace.spans.push(Research036Span {
            span_id: format!("core-phase-{id}"),
            parent_id: Some(open.parent_id),
            start_ns: open.start_ns,
            end_ns,
            phase: open.phase,
            execution_scope: active.scope.clone(),
        });
    });
}
