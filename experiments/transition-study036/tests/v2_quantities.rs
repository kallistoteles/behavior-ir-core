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

#[test]
fn counter_quantities_remove_nonzero_prior_work_and_keep_real_zero() {
    let delta = Quantity::counter_delta(
        Metric::HashedBytes,
        Some(700),
        Some(750),
        "Core document-hash input bytes in this operation; excludes other hashes",
        Method::HashHook,
    )
    .unwrap();
    let value = serde_json::to_value(delta).unwrap();
    assert_eq!(value["value"], 50);
    assert_eq!(value["unit"], "bytes");
    assert_eq!(value["method"], "native_hash_hook");
    assert!(value["reason_if_unavailable"].is_null());
    let zero = Quantity::counter_delta(
        Metric::RowsVisited,
        Some(123),
        Some(123),
        "instrumented snapshot-row visits in this operation",
        Method::VisitHook,
    )
    .unwrap();
    assert_eq!(serde_json::to_value(zero).unwrap()["value"], 0);
}

#[test]
fn unavailable_or_reset_counters_cannot_become_zero_work() {
    for (before, after) in [
        (None, None),
        (None, Some(8)),
        (Some(8), None),
        (Some(9), Some(8)),
    ] {
        let value = serde_json::to_value(
            Quantity::counter_delta(
                Metric::HashedBytes,
                before,
                after,
                "Core document hashes",
                Method::HashHook,
            )
            .unwrap(),
        )
        .unwrap();
        assert!(value["value"].is_null());
        assert!(!value["reason_if_unavailable"].as_str().unwrap().is_empty());
        assert_eq!(value["method"], "unavailable");
    }
}

#[test]
fn counter_differences_do_not_change_measurement_units() {
    for (before, after) in [(Some(2), Some(5)), (None, None)] {
        assert!(
            Quantity::counter_delta(
                Metric::AllocatedBytes,
                before,
                after,
                "operation",
                Method::HashHook,
            )
            .is_err()
        );
    }
}

#[test]
fn counter_delta_extreme_endpoints_do_not_overflow_or_infer_a_reset() {
    for (before, after, expected) in [
        (0, u64::MAX, u64::MAX),
        (u64::MAX, u64::MAX, 0),
        (u64::MAX - 3, u64::MAX, 3),
    ] {
        let quantity = Quantity::counter_delta(
            Metric::HashedBytes,
            Some(before),
            Some(after),
            "exact hash-input hook",
            Method::HashHook,
        )
        .unwrap();
        assert_eq!(serde_json::to_value(quantity).unwrap()["value"], expected);
    }
    assert!(
        Quantity::counter_delta(Metric::HashedBytes, Some(0), Some(1), "", Method::HashHook,)
            .is_err()
    );
}
