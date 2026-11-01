//! Whole monotonic intervals, explicit ceilings and raw evidence spans.
use serde::Serialize;
use std::io::Write;
use std::time::Instant;

#[derive(Debug, PartialEq, Eq, thiserror::Error)]
pub enum TimingError {
    #[error("monotonic clock moved backwards")]
    ClockWentBackwards,
    #[error("declared wall budget exceeded")]
    BudgetExceeded,
    #[error("monotonic counter is exhausted")]
    CounterExhausted,
    #[error("raw timing span is inconsistent")]
    InvalidSpan,
}

pub trait Clock {
    fn now_ns(&self) -> u64;
}

pub struct MonotonicClock(Instant);

impl Default for MonotonicClock {
    fn default() -> Self {
        Self(Instant::now())
    }
}

impl Clock for MonotonicClock {
    fn now_ns(&self) -> u64 {
        // MAX is a reserved exhaustion marker, never a successful duration.
        u64::try_from(self.0.elapsed().as_nanos()).unwrap_or(u64::MAX)
    }
}

#[derive(Debug, PartialEq, Eq)]
pub struct Span {
    pub start_ns: u64,
    pub end_ns: u64,
    pub wall_ns: u64,
}

impl Span {
    pub fn validate(&self) -> Result<(), TimingError> {
        if self.start_ns == u64::MAX || self.end_ns == u64::MAX {
            return Err(TimingError::CounterExhausted);
        }
        let elapsed = self
            .end_ns
            .checked_sub(self.start_ns)
            .ok_or(TimingError::ClockWentBackwards)?;
        if elapsed != self.wall_ns {
            return Err(TimingError::InvalidSpan);
        }
        Ok(())
    }
}

pub fn measure<C: Clock, F: FnOnce()>(clock: &C, operation: F) -> Result<Span, TimingError> {
    measure_result(clock, operation).map(|(_, span)| span)
}

pub fn measure_result<C: Clock, F: FnOnce() -> T, T>(
    clock: &C,
    operation: F,
) -> Result<(T, Span), TimingError> {
    let start_ns = clock.now_ns();
    let result = operation();
    let end_ns = clock.now_ns();
    let wall_ns = end_ns
        .checked_sub(start_ns)
        .ok_or(TimingError::ClockWentBackwards)?;
    let span = Span {
        start_ns,
        end_ns,
        wall_ns,
    };
    span.validate()?;
    Ok((result, span))
}

pub fn enforce_budget(span: &Span, maximum_wall_ns: u64) -> Result<(), TimingError> {
    span.validate()?;
    if span.wall_ns > maximum_wall_ns {
        return Err(TimingError::BudgetExceeded);
    }
    Ok(())
}

/// Charges successive active-work intervals once; overlapping phase spans are diagnostics.
pub struct WorkBudget {
    maximum_ns: u64,
    used_ns: u64,
    last_end_ns: Option<u64>,
}

impl WorkBudget {
    pub fn new(maximum_ns: u64) -> Self {
        Self {
            maximum_ns,
            used_ns: 0,
            last_end_ns: None,
        }
    }
    pub fn charge(&mut self, span: &Span) -> Result<(), TimingError> {
        span.validate()?;
        if self.last_end_ns.is_some_and(|end| span.start_ns < end) {
            return Err(TimingError::InvalidSpan);
        }
        self.used_ns = self
            .used_ns
            .checked_add(span.wall_ns)
            .ok_or(TimingError::CounterExhausted)?;
        self.last_end_ns = Some(span.end_ns);
        if self.used_ns > self.maximum_ns {
            return Err(TimingError::BudgetExceeded);
        }
        Ok(())
    }
    pub fn used_ns(&self) -> u64 {
        self.used_ns
    }
}

#[derive(Debug, Clone, Copy, Serialize)]
#[serde(rename_all = "snake_case")]
pub enum StageOutcome {
    Completed,
    Failed,
    ResourceFailure,
}

#[derive(Debug, thiserror::Error)]
pub enum LogError {
    #[error(transparent)]
    Timing(#[from] TimingError),
    #[error("invalid stage name")]
    InvalidStage,
    #[error(transparent)]
    Io(#[from] std::io::Error),
    #[error(transparent)]
    Encoding(#[from] serde_json::Error),
}

pub fn write_span<W: Write>(
    writer: &mut W,
    stage: &str,
    outcome: StageOutcome,
    span: &Span,
) -> Result<(), LogError> {
    span.validate()?;
    if !crate::profile::valid_name(stage) {
        return Err(LogError::InvalidStage);
    }
    serde_json::to_writer(
        &mut *writer,
        &serde_json::json!({
            "format_version":"core033.span.v1", "stage":stage, "outcome":outcome,
            "start_ns":span.start_ns.to_string(), "end_ns":span.end_ns.to_string(),
            "wall_ns":span.wall_ns.to_string(), "clock":"process_monotonic",
            "aggregation":"whole_interval; overlapping child phases must not be summed"
        }),
    )?;
    writer.write_all(b"\n")?;
    writer.flush()?;
    Ok(())
}
