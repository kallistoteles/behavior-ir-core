#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/query_summary.rs"]
mod support;

#[test]
fn concrete_negative_expectations_match_authoritative_evaluation() {
    let actual = support::runtime_ledger();
    if let Ok(path) = std::env::var("CORE028_CAPTURE_NEGATIVE_BASELINE") {
        assert_eq!(behavior_verify::VERIFIER_VERSION, "0.9.0");
        let mut document = actual;
        document["baseline_source"] = serde_json::json!("855f4db4d6da3327c80117191d5719e6bc6b6397");
        document["baseline_verifier"] = serde_json::json!("0.9.0");
        std::fs::write(
            path,
            serde_json::to_string_pretty(&document).unwrap() + "\n",
        )
        .unwrap();
    } else {
        let expected = support::frozen("negative-baseline.json");
        assert_eq!(
            actual["cases"], expected["cases"],
            "runtime semantics or a pre-correction fixture changed"
        );
    }
}
