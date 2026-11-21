//! C11: reconcile raw operation-local monotonic intervals, never medians.
#![allow(clippy::unwrap_used, clippy::expect_used)]
use std::collections::BTreeMap;
use transition_study036::intervals::{Span, reconcile};

// Exact retained a0243 source, before replacing borrowed graph handles.
mod error {
    pub use transition_study036::error::{Result, StudyError};
}
#[path = "fixtures/intervals-a0243.rs"]
mod prior_intervals;

fn compare_prior(spans: &[Span], complete: u64, scope: &str) {
    let prior: Vec<prior_intervals::Span> =
        serde_json::from_value(serde_json::to_value(spans).unwrap()).unwrap();
    let actual = reconcile(spans, complete, scope)
        .map(|result| serde_json::to_vec(&result).unwrap())
        .map_err(|error| error.to_string());
    let expected = prior_intervals::reconcile(&prior, complete, scope)
        .map(|result| serde_json::to_vec(&result).unwrap())
        .map_err(|error| error.to_string());
    assert_eq!(
        actual, expected,
        "complete={complete}, scope={scope:?}, spans={spans:?}"
    );
}

#[test]
fn graph_handles_keep_prior_bytes_errors_and_input_order() {
    for complete in [0, 4, 100, u64::MAX] {
        let points = [0, 1, complete / 2, complete, u64::MAX];
        for a_start in points {
            for a_end in points {
                for b_start in points {
                    for b_end in points {
                        for parent in ["whole", "a", "b", "missing", ""] {
                            let mut spans = vec![
                                span("whole", None, 0, complete, "complete"),
                                span("a", Some("whole"), a_start, a_end, "semantic"),
                                span("b", Some(parent), b_start, b_end, "commit"),
                            ];
                            compare_prior(&spans, complete, "operation-1");
                            spans.reverse();
                            compare_prior(&spans, complete, "operation-1");
                        }
                    }
                }
            }
        }
    }
    for scope in ["", "other", "operation-1"] {
        compare_prior(&fixture(), 100, scope);
    }
    compare_prior(&[], 0, "operation-1");
    let mut disconnected = fixture();
    disconnected.push(span("x", Some("y"), 20, 20, "views"));
    disconnected.push(span("y", Some("x"), 20, 20, "views"));
    compare_prior(&disconnected, 100, "operation-1");
    let mut duplicate = fixture();
    duplicate.push(duplicate[1].clone());
    compare_prior(&duplicate, 100, "operation-1");
}

fn span(id: &str, parent: Option<&str>, start: u64, end: u64, phase: &str) -> Span {
    Span {
        span_id: id.into(),
        parent_id: parent.map(str::to_owned),
        start_ns: start,
        end_ns: end,
        phase: phase.into(),
        execution_scope: "operation-1".into(),
    }
}
fn fixture() -> Vec<Span> {
    vec![
        span("whole", None, 0, 100, "complete"),
        span("evaluate", Some("whole"), 10, 70, "semantic"),
        span("commit", Some("evaluate"), 30, 50, "commit"),
        span("delivery", Some("whole"), 75, 90, "output"),
    ]
}
#[test]
fn nested_commit_is_subtracted_from_semantic_work_not_added_twice() {
    let spans = fixture();
    let result = reconcile(&spans, 100, "operation-1").expect("valid intervals");
    assert_eq!(
        result.per_phase_ns,
        BTreeMap::from([
            ("semantic".into(), 40),
            ("commit".into(), 20),
            ("output".into(), 15)
        ])
    );
    assert_eq!(result.complete_ns, 100);
    assert_eq!(result.classified_ns, 75);
    assert_eq!(result.remainder_ns, 25);
    assert_eq!(result.exclusive_ns["whole"], 25);
    assert_eq!(result.exclusive_ns["evaluate"], 40);
    let reversed: Vec<_> = spans.into_iter().rev().collect();
    assert_eq!(reconcile(&reversed, 100, "operation-1").unwrap(), result);
}
#[test]
fn wrong_clock_population_overlap_cycle_and_median_proxy_are_rejected() {
    let base = fixture();
    type Mutation = (usize, Box<dyn Fn(&mut Span)>);
    let mutations: Vec<Mutation> = vec![
        (3, Box::new(|s| s.start_ns = 69)),
        (2, Box::new(|s| s.start_ns = 9)),
        (2, Box::new(|s| s.end_ns = 71)),
        (2, Box::new(|s| s.parent_id = Some("absent".into()))),
        (1, Box::new(|s| s.parent_id = Some("commit".into()))),
        (2, Box::new(|s| s.span_id = "evaluate".into())),
        (
            2,
            Box::new(|s| s.execution_scope = "other-operation".into()),
        ),
        (2, Box::new(|s| s.end_ns = 29)),
        (0, Box::new(|s| s.end_ns = 99)),
        (0, Box::new(|s| s.start_ns = 1)),
        (2, Box::new(|s| s.phase = "median-subtraction".into())),
    ];
    for (i, modify) in mutations {
        let mut spans = base.clone();
        modify(&mut spans[i]);
        assert!(
            reconcile(&spans, 100, "operation-1").is_err(),
            "accepted invalid spans: {spans:?}"
        );
    }
    let mut duplicate_root = base;
    duplicate_root.push(span("second-root", None, 0, 100, "complete"));
    assert!(reconcile(&duplicate_root, 100, "operation-1").is_err());
    assert!(reconcile(&[], 100, "operation-1").is_err());
}
#[test]
fn unclassified_parent_does_not_hide_its_classified_child() {
    let spans = [
        span("whole", None, 0, 100, "complete"),
        span("unknown", Some("whole"), 10, 80, "unclassified"),
        span("encoder", Some("unknown"), 20, 40, "encoding"),
    ];
    let result = reconcile(&spans, 100, "operation-1").unwrap();
    assert_eq!(
        result.per_phase_ns,
        BTreeMap::from([("encoding".into(), 20)])
    );
    assert_eq!(result.remainder_ns, 80);
}
#[test]
fn adjacent_and_zero_length_intervals_reconcile_exactly() {
    let spans = [
        span("whole", None, 0, 100, "complete"),
        span("a", Some("whole"), 0, 50, "semantic"),
        span("b", Some("whole"), 50, 100, "output"),
        span("z", Some("a"), 50, 50, "commit"),
    ];
    let result = reconcile(&spans, 100, "operation-1").unwrap();
    assert_eq!(result.classified_ns, 100);
    assert_eq!(result.remainder_ns, 0);
    assert_eq!(result.per_phase_ns["commit"], 0);
}
