#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Fresh 0.11 claims; historical lifecycle tables are immutable.
mod common;
use serde_json::{Value, json};

#[test]
fn lifecycle_outcomes_match_expectations() {
    let (a, _) = common::run("lifecycle");
    let expected: Value = serde_json::from_str(include_str!(
        "../../../tests/fixtures/verify/lifecycle-verifier-0.11.expected.json"
    ))
    .unwrap();
    assert_eq!(common::outcomes(&a), common::expected_outcomes(&expected));
    for c in a.value["checks"].as_array().unwrap() {
        if c["outcome"] == "inconclusive" {
            let action = c["action"]["name"].as_str().unwrap();
            let reason = c["reason"].as_str().unwrap();
            if action == "create_twice" {
                assert_eq!(reason, "encoding_error");
            } else if c["subject"]["kind"] == "reference_world" {
                assert_eq!(reason, "counterexample_not_reproduced");
            } else {
                assert_eq!(reason, "unproved_reference_prefix");
            }
            assert!(
                [
                    "create_twice",
                    "switch_and_remove",
                    "remove_customer_unchecked"
                ]
                .contains(&action)
            );
            assert!(a.findings().iter().any(
                |f| f["severity"] == "blocking" && f["cites"]["action"] == c["action"]["hash"]
            ));
        }
    }
}
#[test]
fn counterexamples_are_confirmed_with_their_facts() {
    let (a, _, module) = common::run_with_module("lifecycle");
    let mut seen = std::collections::BTreeSet::new();
    for f in a.findings() {
        if f["kind"] == "inconclusive" {
            continue;
        }
        let cx = &f["counterexample"];
        let request = json!({"action":cx["record"]["action"]["name"],"data_version":"verification",
            "state":cx["state"],"input":cx["input"],"context":cx["context"],"facts":cx["facts"]});
        let universe = cx["facts"]["universe"].as_array().unwrap();
        assert_eq!(universe.len(), module.entities().len());
        for entity in module.entities().keys() {
            assert!(universe.iter().any(|u| u["entity"] == *entity));
        }
        let record = behavior_core::evaluate(&module, &request.to_string());
        assert_eq!(record.as_json(), &cx["record"]);
        let r = record.as_json();
        assert_eq!(r["result"], "DENY");
        assert_eq!(r["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
        let action = r["action"]["name"].as_str().unwrap();
        assert!(
            [
                "open_account_unchecked",
                "remove_customer_unchecked",
                "switch_and_remove"
            ]
            .contains(&action)
        );
        seen.insert(action.to_string());
        let failure = r["trace"]
            .as_array()
            .unwrap()
            .iter()
            .find(|s| s["outcome"] == false)
            .unwrap();
        assert_eq!(failure["phase"], "constraint_post");
        let expected = if f["cites"].get("constraint").is_some() {
            &f["cites"]["constraint"]
        } else {
            &f["cites"]["reference"]
        };
        assert_eq!(failure["obligation"]["hash"], *expected);
        if action != "open_account_unchecked" {
            assert_eq!(failure["obligation"]["source"], "synthesized_reference");
        }
    }
    assert_eq!(
        seen,
        std::collections::BTreeSet::from([
            "open_account_unchecked".into(),
            "remove_customer_unchecked".into(),
            "switch_and_remove".into()
        ])
    );
}
