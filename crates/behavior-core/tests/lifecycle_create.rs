#![allow(clippy::unwrap_used, clippy::expect_used)]

//! US1 (feature 006): creation with a complete initial value and a host-supplied identity.

mod common;

use behavior_core::semantic::module::Module;
use behavior_core::{admission_report, admit, evaluate, replay};
use serde_json::{Value, json};

fn accounts() -> Module {
    admit(&common::read(
        &common::fixtures().join("wire/valid/accounts.json"),
    ))
    .unwrap()
}

fn run(m: &Module, request: &Value) -> Value {
    let text = evaluate(m, &common::complete_request(m, request).to_string()).to_json_string();
    let replayed = replay(m, &text);
    assert!(replayed.matches, "{:?}", replayed.diff);
    serde_json::from_str(&text).unwrap()
}

fn open(action: &str, initial: &str, used: bool) -> Value {
    json!({
        "action": action, "data_version": "1", "context": {},
        "state": {"owner": {"id": "c1", "name": "Ada"}},
        "input": {"account_id": "a42", "initial": initial},
        "facts": {"identities": [{"entity": "Account", "id": "a42", "used": used}]},
    })
}

#[test]
fn invalid_creations_are_refused_at_admission() {
    for (case, code) in [
        ("create_incomplete", "CREATE_INCOMPLETE"),
        ("create_wrong_id_type", "TYPE_MISMATCH"),
        ("lifecycle_in_0_4", "UNSUPPORTED_IR_VERSION"),
        ("create_same_input_twice", "LIFECYCLE_CONFLICT"),
    ] {
        let text = common::read(&common::fixtures().join(format!("wire/invalid/{case}.json")));
        let r = admission_report(&text);
        let codes: Vec<&str> = r.errors.iter().map(|e| e.code.as_str()).collect();
        assert_eq!(codes, [code], "{case}");
    }
}

#[test]
fn an_unused_identity_is_created_with_its_complete_value() {
    let rec = run(&accounts(), &open("open_account", "100.00", false));
    assert_eq!(rec["result"], "ALLOW", "{rec}");
    assert_eq!(rec["record_version"], "0.8");
    assert_eq!(
        rec["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    assert_eq!(
        rec["lifecycle"],
        json!([{"op": "create", "entity": "Account", "id": "a42",
                "value": {"id": "a42", "owner": "c1", "balance": "100.00"}}])
    );
    // The postcondition `exists(account_id)` sees the created entity on S'.
    let post = rec["trace"]
        .as_array()
        .unwrap()
        .iter()
        .find(|s| s["phase"] == "postcondition")
        .unwrap();
    assert_eq!(post["outcome"], true);
}

#[test]
fn a_used_identity_is_entity_id_already_used() {
    let rec = run(&accounts(), &open("open_account", "100.00", true));
    assert_eq!(rec["result"], "ENTITY_ID_ALREADY_USED");
    assert_eq!(rec["reasons"][0]["code"], "ENTITY_ID_ALREADY_USED");
    assert_eq!(
        rec["facts"]["identities"],
        json!([{"entity":"Account","id":"a42","used":true}])
    );
    assert!(rec.get("lifecycle").is_none());
}

#[test]
fn equal_runtime_identities_conflict() {
    let request = json!({
        "action": "create_twice", "data_version": "1", "context": {},
        "state": {"owner": {"id": "c1", "name": "Ada"}},
        "input": {"a": "a1", "b": "a1"},
        "facts": {"identities": [{"entity": "Account", "id": "a1", "used": false}]},
    });
    let rec = run(&accounts(), &request);
    assert_eq!(rec["result"], "LIFECYCLE_CONFLICT", "{rec}");
    // The conflict is decided before any identity is read.
    assert!(rec["facts"].get("identities").is_none(), "{rec}");
    assert_eq!(rec["facts"]["universe"].as_array().unwrap().len(), 3);
}

#[test]
fn a_negative_initial_balance_is_denied_on_s_prime() {
    let rec = run(&accounts(), &open("open_account_unchecked", "-1.00", false));
    assert_eq!(rec["result"], "DENY");
    assert_eq!(rec["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
    let failed = rec["trace"]
        .as_array()
        .unwrap()
        .iter()
        .find(|s| s["outcome"] == false)
        .unwrap();
    assert_eq!(failed["phase"], "constraint_post");
    assert_eq!(failed["subject"], json!({"entity":"Account","id":"a42"}));
    assert_eq!(failed["obligation"]["kind"], "constraint");
}
