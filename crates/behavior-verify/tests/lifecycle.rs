#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Feature 006: verification of creation, removal, `exists`, `referenced` and referential
//! integrity. Current 0.9 claims preserve supported controls and explicitly
//! delimit canonical identity-order/removal scopes. Historical tables are unchanged.

mod common;

use serde_json::{Value, json};

const CURRENT_SCOPE: [(&str, &str); 4] = [
    (
        "create_twice",
        "canonical same-type child identity order for Account",
    ),
    (
        "remove_customer",
        "complete-world reference obligations for removal customer",
    ),
    (
        "remove_customer_unchecked",
        "complete-world reference obligations for removal customer",
    ),
    (
        "switch_and_remove",
        "complete-world reference obligations for removal old",
    ),
];

fn current_expected(expected: &Value) -> Vec<Value> {
    let mut want = common::expected_outcomes(expected);
    want.retain(|c| {
        !CURRENT_SCOPE
            .iter()
            .any(|(action, _)| c["action"] == *action)
    });
    for (action, _) in CURRENT_SCOPE {
        for kind in ["postcondition", "preservation"] {
            want.push(json!({"kind":kind,"action":action,"subject":action,
                "param":null,"outcome":"inconclusive"}));
        }
    }
    // The current complete-child schedule checks this existing obligation too.
    want.push(json!({"kind":"preservation","action":"deposit",
        "subject":"ref(Account.owner)","param":"account","outcome":"proven"}));
    want.sort_by_key(Value::to_string);
    want
}

#[test]
fn lifecycle_outcomes_match_expectations() {
    let (a, expected) = common::run("lifecycle");
    let got = common::outcomes(&a);
    let want = current_expected(&expected);
    assert_eq!(
        Value::Array(got.clone()),
        Value::Array(want),
        "\n{}",
        serde_json::to_string_pretty(&got).unwrap()
    );
    for check in a.value["checks"].as_array().unwrap() {
        if let Some((_, reason)) = CURRENT_SCOPE
            .iter()
            .find(|(action, _)| check["action"]["name"] == *action)
        {
            assert_eq!(check["outcome"], "inconclusive");
            assert_eq!(check["reason"], "encoding_error");
            let finding = a.value["findings"]
                .as_array()
                .unwrap()
                .iter()
                .find(|f| {
                    f["check"] == check["kind"] && f["cites"]["action"] == check["action"]["hash"]
                })
                .unwrap();
            assert_eq!(
                finding["explanation"],
                format!(
                    "{} of {} is inconclusive (encoding_error: cannot encode: {reason})",
                    check["kind"].as_str().unwrap(),
                    check["action"]["name"].as_str().unwrap()
                )
            );
        } else {
            assert_ne!(check["outcome"], "inconclusive", "{check}");
        }
    }
}

#[test]
fn counterexamples_are_confirmed_with_their_facts() {
    let (a, _, module) = common::run_with_module("lifecycle");
    let findings = a.findings();
    assert!(!findings.is_empty());
    let mut delimited = std::collections::BTreeSet::new();
    for f in findings {
        if f["kind"] == "inconclusive" {
            let (action, reason) = CURRENT_SCOPE
                .iter()
                .find(|(action, _)| {
                    f["cites"]["action"]
                        == behavior_core::semantic::types::hash_display(
                            module.action(action).unwrap().hash(),
                        )
                })
                .unwrap_or_else(|| panic!("unexpected inconclusive scope: {f}"));
            let check = f["check"].as_str().unwrap();
            assert!(["postcondition", "preservation"].contains(&check));
            assert_eq!(f["severity"], "blocking");
            assert_eq!(
                f["explanation"],
                format!(
                    "{check} of {action} is inconclusive (encoding_error: cannot encode: {reason})"
                )
            );
            assert!(delimited.insert((action.to_string(), check.to_string())));
            continue;
        }
        let cx = &f["counterexample"];
        let request = json!({
            "action": cx["record"]["action"]["name"],
            "data_version": "verification",
            "state": cx["state"], "input": cx["input"], "context": cx["context"],
            "facts": cx["facts"],
        });
        let universe = cx["facts"]["universe"].as_array().unwrap();
        assert_eq!(universe.len(), module.entities().len());
        for entity in module.entities().keys() {
            assert!(universe.iter().any(|u| u["entity"] == *entity));
        }
        let record = behavior_core::evaluate(&module, &request.to_string());
        let record = record.as_json();
        assert_eq!(record, &cx["record"], "{f}");
        assert_eq!(record["result"], "DENY", "{f}");
        assert_eq!(f["kind"], "preservation", "{f}");
        assert_eq!(record["action"]["name"], "open_account_unchecked");
        assert_eq!(record["record_version"], "0.8");
        assert_eq!(record["reasons"][0]["code"], "CONSTRAINT_VIOLATED", "{f}");
        assert!(cx["facts"]["identities"].is_array(), "{f}");
        let failure = record["trace"]
            .as_array()
            .unwrap()
            .iter()
            .find(|s| s["outcome"] == false)
            .unwrap();
        assert_eq!(
            failure["subject"],
            json!({"entity":"Account","id":cx["input"]["account_id"]})
        );
        assert_eq!(failure["obligation"]["hash"], f["cites"]["constraint"]);
    }
    let expected_scopes: std::collections::BTreeSet<_> = CURRENT_SCOPE
        .iter()
        .flat_map(|(action, _)| {
            ["postcondition", "preservation"].map(|check| (action.to_string(), check.to_string()))
        })
        .collect();
    assert_eq!(delimited, expected_scopes);
}
