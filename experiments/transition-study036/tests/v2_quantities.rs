//! Actual measurement units and unavailable values must survive serialization.
#![allow(clippy::unwrap_used)]
use transition_study036::quantities::{Method, Metric, Quantity};

#[test]
fn unavailable_allocation_and_shared_peak_are_null_with_a_reason() {
    for metric in [Metric::AllocatedBytes, Metric::SharedAdjustedPeakBytes] {
        let value = Quantity::unavailable(
            metric,
            "one operation",
            "No allocator/group hook is installed",
        )
        .unwrap();
        let json = serde_json::to_value(value).unwrap();
        assert!(json["value"].is_null());
        assert_eq!(json["unit"], "bytes");
        assert!(
            json["reason_if_unavailable"]
                .as_str()
                .unwrap()
                .contains("No allocator")
        );
        assert_eq!(json["scope"], "one operation");
        assert!(Quantity::unavailable(metric, "one operation", "").is_err());
    }
}
#[test]
fn serialized_payload_is_not_allocation_and_writes_are_not_syscalls() {
    assert!(
        Quantity::observed(
            Metric::AllocatedBytes,
            943_000,
            "output",
            Method::SerializedLength
        )
        .is_err()
    );
    assert!(
        Quantity::observed(
            Metric::UnderlyingWriteCalls,
            17,
            "output",
            Method::SystemCallTrace
        )
        .is_err()
    );
    assert!(
        Quantity::observed(
            Metric::SerializedBytes,
            943_000,
            "output",
            Method::AllocatorHook
        )
        .is_err()
    );
    let calls = Quantity::observed(
        Metric::UnderlyingWriteCalls,
        17,
        "output",
        Method::CountingWrite,
    )
    .unwrap();
    let json = serde_json::to_value(calls).unwrap();
    assert_eq!(json["unit"], "write_calls");
    assert_eq!(json["value"], 17);
    assert!(json["reason_if_unavailable"].is_null());
    assert!(Quantity::observed(Metric::SerializedBytes, 0, "", Method::SerializedLength).is_err());
}
#[test]
fn actual_zero_observed_work_stays_distinct_from_unavailable() {
    let zero =
        Quantity::observed(Metric::RowsVisited, 0, "maintenance", Method::VisitHook).unwrap();
    let absent = Quantity::unavailable(
        Metric::RowsVisited,
        "maintenance",
        "Detailed counters disabled in timing mode",
    )
    .unwrap();
    assert_eq!(serde_json::to_value(zero).unwrap()["value"], 0);
    assert!(serde_json::to_value(absent).unwrap()["value"].is_null());
}
