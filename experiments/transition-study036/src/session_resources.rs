//! Linux worker RSS snapshots. Ground release does not release report values.
//! Unknown owned allocations remain unknown, regardless of serialized size.
use crate::{error::Result, session};
use serde_json::{Value, json};
use std::time::Instant;

fn unavailable(scope: &str, reason: &str) -> Value {
    json!({"value":null,"unit":"bytes","scope":scope,"method":"not-measured",
        "reason_if_unavailable":reason})
}

fn process_rss() -> Value {
    let scope = "worker-process-resident";
    let status = match std::fs::read_to_string("/proc/self/status") {
        Ok(status) => status,
        Err(_) => return unavailable(scope, "Cannot read this worker's /proc/self/status"),
    };
    let mut readings = status.lines().filter_map(|line| {
        let mut parts = line.split_whitespace();
        (parts.next() == Some("VmRSS:")).then_some(parts)
    });
    let Some(mut parts) = readings.next() else {
        return unavailable(scope, "Kernel status contains no VmRSS reading");
    };
    if readings.next().is_some() {
        return unavailable(scope, "Kernel status contains duplicate VmRSS readings");
    }
    let value = parts
        .next()
        .and_then(|text| text.parse::<u64>().ok())
        .and_then(|kib| kib.checked_mul(1024));
    if parts.next() != Some("kB") || parts.next().is_some() {
        return unavailable(scope, "Kernel VmRSS unit or shape is unsupported");
    }
    match value {
        Some(value) => json!({"value":value,"unit":"bytes","scope":scope,
            "method":"proc-self-status-snapshot","reason_if_unavailable":null}),
        None => unavailable(
            scope,
            "Kernel VmRSS value is not representable in u64 bytes",
        ),
    }
}

pub(crate) fn snapshot(boundary: &str, operation: Option<usize>, origin: Instant) -> Result<Value> {
    let rss = process_rss();
    let at = session::offset(origin)?;
    let mut retained = serde_json::Map::new();
    for name in ["state", "views", "history", "results"] {
        retained.insert(name.to_owned(), unavailable(&format!("session-retained-{name}"),
            "No exact per-component owned-allocation hook is installed; process RSS and serialized bytes are not substitutes"));
    }
    Ok(json!({"boundary":boundary,"operation":operation,"at_ns":at,
        "process_rss":rss,"retained_components":retained}))
}
