#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Exact closure at runtime (feature 004): exact ratios, exact general decimals, replay.
//! `requests/004/expectations.json` uses the subset format of `common::subset_problems`.

mod common;

use behavior_core::{admit, evaluate, replay};
use serde_json::{Value, json};

#[test]
fn archived_records_meet_004_expectations_and_replay() {
    let m = admit(&common::read(
        &common::fixtures().join("wire/valid/exact_closure.json"),
    ))
    .unwrap();
    let exp = common::json(&common::fixtures().join("requests/004/expectations.json"));
    let mut failures = Vec::new();
    for (name, e) in exp.as_object().unwrap() {
        let text = common::archived_record("004", name);
        let rec: Value = serde_json::from_str(&text).unwrap();
        let mut out = common::subset_problems(e, &rec);
        if rec["record_version"] != "0.4" {
            out.push(format!("record_version {}", rec["record_version"]));
        }
        if !replay(&m, &text).matches {
            out.push("replay mismatch".into());
        }
        if !out.is_empty() {
            failures.push(format!(
                "{name}:\n    {}\n    record: {rec}",
                out.join("\n    ")
            ));
        }
    }
    assert!(failures.is_empty(), "\n{}", failures.join("\n"));
}

#[test]
fn current_complete_exact_closure_keeps_arithmetic_meaning() {
    let m = admit(&common::read(
        &common::fixtures().join("wire/valid/exact_closure.json"),
    ))
    .unwrap();
    let expectations = common::json(&common::fixtures().join("requests/004/expectations.json"));
    for (name, expected) in expectations.as_object().unwrap() {
        let request = common::complete_request(
            &m,
            &common::json(&common::fixtures().join(format!("requests/004/{name}.json"))),
        );
        let record = evaluate(&m, &request.to_string());
        let current = record.as_json();
        let result = match name.as_str() {
            "scaled_share" | "share" | "share_threshold_true" => "ALLOW",
            "share_threshold_false" => "DENY",
            "share_zero_budget" => "ERROR",
            _ => panic!("unclassified exact closure fixture {name}"),
        };
        assert_eq!(current["result"], result);
        if let Some(changes) = expected.get("changes") {
            assert!(
                common::subset_problems(&json!({"changes":changes}), current).is_empty(),
                "{name}"
            );
        }
        if name == "share" {
            let hash =
                behavior_core::semantic::types::hash_display(m.derived("portion").unwrap().hash());
            assert_eq!(current["derived"][0]["hash"], hash);
            assert_eq!(current["derived"][0]["value"], "1/3");
            assert!(current["derived"][0].get("name").is_none());
        }
        if name == "scaled_share" {
            assert_eq!(current["trace"][0]["rescales"][0]["exact"], "30");
            assert_eq!(current["trace"][0]["rescales"][0]["rounding"], "half_even");
        }
        if name == "share_zero_budget" {
            assert_eq!(current["reasons"][0]["code"], "EVALUATION_ERROR");
            assert_eq!(current["reasons"][0]["details"]["code"], "DIVISION_BY_ZERO");
        }
        if name == "share_threshold_true" {
            assert!(current["trace"][0].get("rescales").is_none());
        }
        assert_eq!(record.as_json()["record_version"], "0.8");
        assert!(
            replay(&m, &record.to_json_string()).matches,
            "current {name}"
        );
    }
}
