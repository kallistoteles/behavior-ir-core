#![allow(clippy::unwrap_used, clippy::expect_used)]

mod common;

use behavior_core::{admit, evaluate, evaluate_intent};
use serde_json::{Value, json};

fn module() -> behavior_core::semantic::Module {
    admit(&common::read(
        &common::fixtures().join("wire/valid/invoice.json"),
    ))
    .unwrap()
}

fn host_for(intent: &str) -> String {
    let name = if intent == "valid_denied" {
        "invoice_1042_over_limit"
    } else {
        "invoice_1042"
    };
    common::read(&common::fixtures().join(format!("host/{name}.json")))
}

#[test]
fn rejected_intents_list_every_problem_and_do_not_evaluate() {
    let m = module();
    let dir = common::fixtures().join("intents");
    let mut seen = 0;
    for path in common::files(&dir, ".json") {
        let name = path.file_stem().unwrap().to_string_lossy().to_string();
        let expected = path.with_extension("expected.json");
        if !expected.exists() {
            continue;
        }
        seen += 1;
        let want = common::json(&expected);
        match evaluate_intent(&m, &common::read(&path), &host_for(&name)) {
            Ok(record) => panic!("{name}: expected rejection, got {}", record.result()),
            Err(rejection) => {
                let got: Value = serde_json::from_str(&rejection.to_json_string()).unwrap();
                assert_eq!(got["rejected"], true, "{name}");
                let pairs: Vec<Value> = got["errors"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .map(|e| json!({"code": e["code"], "path": e["path"]}))
                    .collect();
                assert_eq!(Value::Array(pairs), want["errors"], "{name}");
                for e in got["errors"].as_array().unwrap() {
                    assert!(
                        e["message"].as_str().is_some_and(|m| !m.is_empty()),
                        "{name}"
                    );
                }
            }
        }
    }
    assert!(seen >= 10, "only {seen} rejection fixtures found");
}

#[test]
fn accepted_intents_evaluate_exactly_like_direct_requests() {
    let m = module();
    for (name, result) in [("valid_allowed", "ALLOW"), ("valid_denied", "DENY")] {
        let intent_text = common::read(&common::fixtures().join(format!("intents/{name}.json")));
        let mut host: Value = serde_json::from_str(&host_for(name)).unwrap();
        let intent: Value = serde_json::from_str(&intent_text).unwrap();
        let direct = common::complete_request(
            &m,
            &json!({
                "action": intent["capability"], "data_version": host["data_version"],
                "git_revision": host["git_revision"], "state": host["state"],
                "input": intent["input"], "context": host["context"],
            }),
        );
        host["facts"] = direct["facts"].clone();
        let record = evaluate_intent(&m, &intent_text, &host.to_string()).unwrap();
        assert_eq!(record.result(), result, "{name}");
        assert_eq!(record.as_json()["record_version"], "0.8");
        assert_eq!(
            record.to_json_string(),
            evaluate(&m, &direct.to_string()).to_json_string(),
            "{name}"
        );
    }
}

#[test]
fn an_intent_cannot_supply_context_or_state() {
    let m = module();
    for name in ["extra_field", "state_supplied"] {
        let text = common::read(&common::fixtures().join(format!("intents/{name}.json")));
        assert!(
            evaluate_intent(&m, &text, &host_for(name)).is_err(),
            "{name}"
        );
    }
}

#[test]
fn current_host_facts_reach_evaluation_without_inventing_snapshot_rows() {
    let m = module();
    let intent_text = common::read(&common::fixtures().join("intents/valid_allowed.json"));
    let intent: Value = serde_json::from_str(&intent_text).unwrap();
    let mut host: Value = serde_json::from_str(&host_for("valid_allowed")).unwrap();
    let request = common::complete_request(
        &m,
        &json!({
            "action":intent["capability"],"data_version":host["data_version"],
            "git_revision":host["git_revision"],"state":host["state"],
            "input":intent["input"],"context":host["context"]
        }),
    );
    host["facts"] = request["facts"].clone();
    let record = evaluate_intent(&m, &intent_text, &host.to_string()).unwrap();
    assert_eq!(record.result(), "ALLOW");
    assert_eq!(record.as_json()["record_version"], "0.8");
    assert_eq!(
        record.to_json_string(),
        evaluate(&m, &request.to_string()).to_json_string()
    );
    assert_eq!(
        record.as_json()["facts"]["universe"],
        json!([
            {"entity":"Invoice","members":[{"id":"1042","amount":"43200.00","approved_by":null,"status":"pending"}]},
            {"entity":"User","members":[]}
        ])
    );
}

#[test]
fn current_host_facts_omission_refuses_evaluation() {
    let m = module();
    let intent_text = common::read(&common::fixtures().join("intents/valid_allowed.json"));
    let record = evaluate_intent(&m, &intent_text, &host_for("valid_allowed")).unwrap();
    assert_eq!(record.result(), "INVALID_INPUT");
    assert_eq!(record.as_json()["record_version"], "0.8");
    assert_eq!(record.as_json()["changes"], json!([]));
    assert!(behavior_core::replay(&m, &record.to_json_string()).matches);
}

#[test]
fn current_host_facts_malformed_are_evaluation_input_errors() {
    let m = module();
    let intent_text = common::read(&common::fixtures().join("intents/valid_allowed.json"));
    let mut host: Value = serde_json::from_str(&host_for("valid_allowed")).unwrap();
    host["facts"] = json!({"universe":false});
    let record = evaluate_intent(&m, &intent_text, &host.to_string()).unwrap();
    assert_eq!(record.result(), "INVALID_INPUT");
    assert_eq!(record.as_json()["changes"], json!([]));
    assert!(
        record.as_json()["reasons"]
            .as_array()
            .unwrap()
            .iter()
            .any(|p| p["code"] == "DECODE_ERROR")
    );
    assert!(behavior_core::replay(&m, &record.to_json_string()).matches);
}

#[test]
fn current_host_facts_do_not_open_caller_intent_or_unrelated_host_fields() {
    let m = module();
    let mut intent = common::json(&common::fixtures().join("intents/valid_allowed.json"));
    intent["facts"] = json!({"universe":[]});
    let error = evaluate_intent(&m, &intent.to_string(), &host_for("valid_allowed")).unwrap_err();
    let problems: Value = serde_json::from_str(&error.to_json_string()).unwrap();
    assert!(
        problems["errors"]
            .as_array()
            .unwrap()
            .iter()
            .any(|p| p["code"] == "EXTRA_ARGUMENT" && p["path"] == "facts")
    );
    let intent_text = common::read(&common::fixtures().join("intents/valid_allowed.json"));
    let mut host: Value = serde_json::from_str(&host_for("valid_allowed")).unwrap();
    host["validation_profile"] = json!("historical");
    let error = evaluate_intent(&m, &intent_text, &host.to_string()).unwrap_err();
    let problems: Value = serde_json::from_str(&error.to_json_string()).unwrap();
    assert!(
        problems["errors"]
            .as_array()
            .unwrap()
            .iter()
            .any(|p| p["code"] == "DECODE_ERROR" && p["path"] == "host.validation_profile")
    );
}
