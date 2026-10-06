#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "../examples/command_results.rs"]
mod demo;
#[test]
fn compiled_host_example_has_success_and_failure_with_explicit_correlation() {
    for outcome in ["success", "failure"] {
        let value = demo::run(outcome).unwrap();
        assert_eq!(value["history_before_result"], 1);
        assert_eq!(value["history_after_result"], 2);
        assert_eq!(value["attempt_id"], "attempt-42");
        assert_eq!(value["origin_unchanged"], true);
        assert_eq!(value["origin_replay_matches"], true);
        assert_eq!(
            value["status"],
            if outcome == "success" {
                "SUCCESS"
            } else {
                "FAILURE"
            }
        );
        assert!(
            value["command_occurrence_id"]
                .as_str()
                .unwrap()
                .starts_with("sha256:")
        );
    }
}
#[test]
fn unsupported_external_outcome_is_refused() {
    assert!(demo::run("pending").is_err());
}
