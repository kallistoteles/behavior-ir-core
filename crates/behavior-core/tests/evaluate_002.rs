#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Runtime changes of feature 002: entity constraints by role, the binding check, and change
//! entries that address state cells.

mod common;

use behavior_core::{admit, evaluate, replay};
use serde_json::Value;

#[test]
fn archived_records_meet_002_expectations() {
    let module = admit(&common::read(
        &common::fixtures().join("wire/valid/constraints.json"),
    ))
    .unwrap();
    let exp = common::json(&common::fixtures().join("requests/002/expectations.json"));
    let mut failures = Vec::new();
    for (name, e) in exp.as_object().unwrap() {
        let text = common::archived_record("002", name);
        let record: Value = serde_json::from_str(&text).unwrap();
        assert!(replay(&module, &text).matches, "archive {name}");
        let mut check = |what: &str, ok: bool, got: String| {
            if !ok {
                failures.push(format!("{name}: {what}: {got}"));
            }
        };
        check(
            "record_version",
            record["record_version"] == "0.4",
            record["record_version"].to_string(),
        );
        check(
            "result",
            record["result"] == e["result"],
            record["result"].to_string(),
        );
        let trace = record["trace"].as_array().unwrap();
        let phases: Vec<&Value> = trace.iter().map(|s| &s["phase"]).collect();
        check(
            "phases",
            phases == e["phases"].as_array().unwrap().iter().collect::<Vec<_>>(),
            format!("{phases:?}"),
        );
        let outcomes: Vec<&Value> = trace.iter().map(|s| &s["outcome"]).collect();
        check(
            "outcomes",
            outcomes == e["outcomes"].as_array().unwrap().iter().collect::<Vec<_>>(),
            format!("{outcomes:?}"),
        );
        if let Some(roles) = e.get("roles") {
            let got: Vec<&Value> = trace.iter().map(|s| &s["role"]).collect();
            check(
                "roles",
                got == roles.as_array().unwrap().iter().collect::<Vec<_>>(),
                format!("{got:?}"),
            );
        }
        let codes: Vec<&Value> = record["reasons"]
            .as_array()
            .unwrap()
            .iter()
            .map(|r| &r["code"])
            .collect();
        check(
            "reasons",
            codes == e["reasons"].as_array().unwrap().iter().collect::<Vec<_>>(),
            format!("{codes:?}"),
        );
        check(
            "changes",
            record["changes"] == e["changes"],
            record["changes"].to_string(),
        );
    }
    assert!(failures.is_empty(), "\n{}", failures.join("\n"));
}

#[test]
fn alias_reason_names_both_parameters() {
    let module = admit(&common::read(
        &common::fixtures().join("wire/valid/constraints.json"),
    ))
    .unwrap();
    let text = common::archived_record("002", "alias");
    let record: Value = serde_json::from_str(&text).unwrap();
    assert!(replay(&module, &text).matches);
    let message = record["reasons"][0]["message"].as_str().unwrap();
    assert!(
        message.contains("from_") && message.contains("to"),
        "{message}"
    );
}

#[test]
fn current_complete_constraints_keep_binding_and_result_categories() {
    let module = admit(&common::read(
        &common::fixtures().join("wire/valid/constraints.json"),
    ))
    .unwrap();
    for (name, expected) in [
        ("alias", "INVALID_BINDING"),
        ("context_invalid", "INVALID_CONTEXT"),
        ("input_invalid", "INVALID_INPUT"),
        ("state_invalid", "INVALID_INPUT"),
        ("constraint_post_violation", "DENY"),
        ("transfer_ok", "ALLOW"),
    ] {
        let raw = common::json(&common::fixtures().join(format!("requests/002/{name}.json")));
        let request = common::complete_request(&module, &raw);
        let record = evaluate(&module, &request.to_string());
        assert_eq!(record.as_json()["record_version"], "0.8");
        assert_eq!(
            record.as_json()["result"],
            expected,
            "{name}: {}",
            record.to_json_string()
        );
        assert!(replay(&module, &record.to_json_string()).matches, "{name}");
        if name == "state_invalid" {
            assert_eq!(record.as_json()["reasons"][0]["code"], "INCONSISTENT_FACTS");
        }
        if name == "transfer_ok" {
            assert_eq!(record.as_json()["changes"][0]["new"], "70.00");
            assert_eq!(record.as_json()["changes"][1]["new"], "30.00");
            let child: Vec<_> = record.as_json()["trace"]
                .as_array()
                .unwrap()
                .iter()
                .filter(|step| step.get("subject").is_some())
                .collect();
            assert_eq!(child.len(), 2);
            assert_eq!(child[0]["subject"]["id"], "a1");
            assert_eq!(child[1]["subject"]["id"], "a2");
            assert!(child.iter().all(|step| step["outcome"] == true));
        } else if name == "constraint_post_violation" {
            assert_eq!(
                record.as_json()["reasons"][0]["code"],
                "CONSTRAINT_VIOLATED"
            );
            let child = record.as_json()["trace"]
                .as_array()
                .unwrap()
                .iter()
                .find(|step| step.get("subject").is_some())
                .unwrap();
            assert_eq!(child["subject"]["id"], "a1");
            assert_eq!(child["outcome"], false);
        }
    }
}
