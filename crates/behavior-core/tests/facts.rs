#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Evaluation facts (feature 006, FR-010c, FR-010f, FR-010g): existence, identity and reference
//! facts are read lazily through the request's `facts` section, only observed facts are recorded,
//! and supplied facts must form a valid snapshot.

mod common;

use behavior_core::semantic::module::Module;
use behavior_core::{admit, evaluate, evaluate_observed, replay};
use serde_json::{Value, json};

fn accounts() -> Module {
    admit(&common::read(
        &common::fixtures().join("wire/valid/accounts.json"),
    ))
    .unwrap()
}

fn eval(m: &Module, request: &Value) -> Value {
    serde_json::from_str(&evaluate(m, &request.to_string()).to_json_string()).unwrap()
}

fn customer() -> Value {
    json!({"id":"c1","name":"Ada"})
}

fn replace_members(request: &mut Value, entity: &str, members: Vec<Value>) {
    let entry = request["facts"]["universe"]
        .as_array_mut()
        .unwrap()
        .iter_mut()
        .find(|entry| entry["entity"] == entity)
        .unwrap();
    entry["members"] = json!(members);
}

fn complete_with_customer(m: &Module, request: &Value) -> Value {
    let mut request = common::complete_request(m, request);
    // Explicit test-owned Customer row, not inferred from existence/reference evidence.
    replace_members(&mut request, "Customer", vec![customer()]);
    request
}

fn note_request(facts: Option<Value>) -> Value {
    let mut r = json!({
        "action": "check_exists", "data_version": "1", "input": {}, "context": {},
        "state": {"note": {"id": "n1", "about": "c1", "text": "hi"}},
    });
    if let Some(f) = facts {
        r["facts"] = f;
    }
    r
}

#[test]
fn archived_records_meet_006_expectations_and_replay() {
    let m = accounts();
    let exp = common::json(&common::fixtures().join("requests/006/expectations.json"));
    let mut failures = Vec::new();
    for (name, e) in exp.as_object().unwrap() {
        let text = common::archived_record("006", name);
        let rec: Value = serde_json::from_str(&text).unwrap();
        let mut out = common::subset_problems(e, &rec);
        if !replay(&m, &text).matches {
            out.push(format!("replay mismatch: {:?}", replay(&m, &text).diff));
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
fn check_exists_records_exactly_one_existence_read() {
    let m = accounts();
    let facts = json!({
        "existence": [
            {"entity": "Customer", "id": "c1", "exists": true},
            {"entity": "Customer", "id": "c9", "exists": false},
        ],
        "identities": [{"entity": "Customer", "id": "c9", "used": true}],
    });
    let rec = eval(&m, &complete_with_customer(&m, &note_request(Some(facts))));
    assert_eq!(rec["result"], "ALLOW");
    assert_eq!(rec["record_version"], "0.8");
    assert_eq!(
        rec["facts"]["existence"],
        json!([{ "entity":"Customer", "id":"c1", "exists":true }])
    );
    assert!(rec["facts"].get("identities").is_none());
    assert_eq!(rec["facts"]["universe"].as_array().unwrap().len(), 3);
}

#[test]
fn short_circuited_exists_is_not_observed() {
    // `is_none(x) or exists(x)`: a synthesized optional-reference shape. Here: a precondition
    // that is false before `exists` is reached records no fact and needs none.
    let mut w = common::json(&common::fixtures().join("wire/valid/accounts.json"));
    let l = json!({"file": "t.py", "line": 1});
    let check = w["actions"]
        .as_array_mut()
        .unwrap()
        .iter_mut()
        .find(|a| a["name"] == "check_exists")
        .unwrap();
    let exists = check["preconditions"][0]["expr"].clone();
    check["preconditions"][0]["expr"] = json!({"op": "and", "loc": l, "args": [
        {"op": "eq", "loc": l, "args": [
            {"op": "field", "param": "note", "field": "text", "loc": l},
            {"op": "lit", "type": {"t": "string"}, "value": "audit", "loc": l}]},
        exists]});
    let m = admit(&w.to_string()).unwrap();
    let request = common::complete_request(&m, &note_request(None));
    let rec = eval(&m, &request);
    assert_eq!(rec["result"], "DENY", "{rec}");
    assert!(rec["facts"].get("existence").is_none(), "{rec}");
    assert_eq!(rec["record_version"], "0.8");
    assert!(replay(&m, &rec.to_string()).matches);
}

#[test]
fn partial_facts_cannot_replace_the_current_complete_snapshot() {
    let m = accounts();
    let rec = eval(&m, &note_request(Some(json!({}))));
    assert_eq!(rec["result"], "INVALID_INPUT");
    assert_eq!(rec["reasons"][0]["code"], "INVALID_STATE_SNAPSHOT");
    // The original UNKNOWN_FACT result remains covered by its frozen 006 record.
    assert!(replay(&m, &common::archived_record("006", "check_exists_unknown")).matches);
}

#[test]
fn identity_freshness_still_requires_a_history_fact() {
    let m = accounts();
    let raw = common::json(&common::fixtures().join("requests/006/open_account_unknown.json"));
    let rec = eval(&m, &common::complete_request(&m, &raw));
    assert_eq!(rec["result"], "ERROR");
    assert_eq!(rec["reasons"][0]["code"], "UNKNOWN_FACT");
    // Freshness is a lifecycle lookup, not an expression failure with a node ID.
    assert!(rec["reasons"][0].get("message").is_none());
    assert!(rec["reasons"][0].get("details").is_none());
    assert!(rec["facts"].get("identities").is_none());
    assert!(rec.get("lifecycle").is_none());
    assert!(rec["changes"].as_array().unwrap().is_empty());
    assert!(replay(&m, &rec.to_string()).matches);
}

#[test]
fn inconsistent_facts_are_refused() {
    let m = accounts();
    let edge = json!({"entity": "Account", "id": "a1", "field": "owner"});
    let cases = [
        (
            "exists without used",
            json!({"existence": [{"entity": "Customer", "id": "c1", "exists": true}],
                   "identities": [{"entity": "Customer", "id": "c1", "used": false}]}),
        ),
        (
            "incoming to a non-existing target",
            json!({"existence": [{"entity": "Customer", "id": "c1", "exists": false}],
                   "references": [{"entity": "Customer", "id": "c1", "incoming": [edge]}]}),
        ),
        (
            "a bound entity marked absent",
            json!({"existence": [{"entity": "AuditNote", "id": "n1", "exists": false}]}),
        ),
        (
            "a duplicated fact",
            json!({"existence": [{"entity": "Customer", "id": "c1", "exists": true},
                                 {"entity": "Customer", "id": "c1", "exists": true}]}),
        ),
        (
            "an incoming edge from an absent source",
            json!({"existence": [{"entity": "Account", "id": "a1", "exists": false}],
                   "references": [{"entity": "Customer", "id": "c1", "incoming": [edge]}]}),
        ),
        (
            "an edge over a plain identity field",
            json!({"references": [{"entity": "Customer", "id": "c1",
                   "incoming": [{"entity": "AuditNote", "id": "n2", "field": "about"}]}]}),
        ),
    ];
    for (what, facts) in cases {
        let rec = eval(&m, &note_request(Some(facts)));
        assert_eq!(rec["result"], "INVALID_INPUT", "{what}: {rec}");
        assert_eq!(rec["reasons"][0]["code"], "INCONSISTENT_FACTS", "{what}");
    }
}

#[test]
fn a_bound_referrer_must_match_the_incoming_fact() {
    let m = accounts();
    // `switch_and_remove` binds account a1 with owner c1; an incoming(c1) fact without a1 lies.
    let request = json!({
        "action": "switch_and_remove", "data_version": "1", "input": {}, "context": {},
        "state": {"account": {"id": "a1", "owner": "c1", "balance": "0.00"},
                  "old": {"id": "c1", "name": "Ada"}, "new": {"id": "c2", "name": "Bo"}},
        "facts": {"references": [{"entity": "Customer", "id": "c1", "incoming": []}]},
    });
    let rec = eval(&m, &request);
    assert_eq!(rec["result"], "INVALID_INPUT", "{rec}");
    assert_eq!(rec["reasons"][0]["code"], "INCONSISTENT_FACTS");
}

#[test]
fn referenced_is_the_projection_of_incoming() {
    let m = accounts();
    let request = |incoming: Value| {
        let has_account = !incoming.as_array().unwrap().is_empty();
        let raw = json!({
            "action": "remove_customer", "data_version": "1", "input": {}, "context": {},
            "state": {"customer": {"id": "c1", "name": "Ada"}},
            "facts": {"references": [{"entity": "Customer", "id": "c1", "incoming": incoming}]},
        });
        let mut request = common::complete_request(&m, &raw);
        if has_account {
            replace_members(
                &mut request,
                "Account",
                vec![json!({"id":"a1","owner":"c1","balance":"0.00"})],
            );
        }
        request
    };
    let referenced = eval(
        &m,
        &request(json!([{"entity": "Account", "id": "a1", "field": "owner"}])),
    );
    assert_eq!(referenced["result"], "DENY");
    let free = eval(&m, &request(json!([])));
    assert_eq!(free["result"], "ALLOW", "{free}");
    // The removal's integrity check reuses the observed reference fact: one entry.
    assert_eq!(
        free["facts"]["references"],
        json!([{ "entity":"Customer", "id":"c1", "incoming":[] }])
    );
}

#[test]
fn current_records_retain_complete_parent_and_bound_field_observations() {
    // Current evidence binds the complete parent; old fact-free 0.4 bytes remain archived.
    let m = accounts();
    let request = json!({
        "action": "deposit", "data_version": "1", "context": {},
        "state": {"account": {"id": "a1", "owner": "c1", "balance": "0.00"}},
        "input": {"amount": "5.00"},
    });
    let request = complete_with_customer(&m, &request);
    let (rec, reads) = evaluate_observed(&m, &request.to_string());
    let rec = rec.as_json().clone();
    assert_eq!(rec["result"], "ALLOW", "{rec}");
    assert_eq!(rec["record_version"], "0.8");
    assert_eq!(rec["facts"]["universe"], request["facts"]["universe"]);
    assert!(rec.get("lifecycle").is_none());
    assert!(replay(&m, &rec.to_string()).matches);
    assert!(reads.contains(&("account".to_string(), "balance".to_string())));
}

#[test]
fn a_bound_entitys_reference_target_cannot_be_absent() {
    // The store keeps referential integrity (and the verifier assumes it): a snapshot where bound
    // account a1 refers to a customer marked absent or never used cannot exist.
    let m = accounts();
    for fact in [
        json!({"existence": [{"entity": "Customer", "id": "c1", "exists": false}]}),
        json!({"identities": [{"entity": "Customer", "id": "c1", "used": false}]}),
    ] {
        let request = json!({
            "action": "deposit", "data_version": "1", "context": {},
            "state": {"account": {"id": "a1", "owner": "c1", "balance": "0.00"}},
            "input": {"amount": "5.00"},
            "facts": fact,
        });
        let rec = eval(&m, &request);
        assert_eq!(rec["result"], "INVALID_INPUT", "{rec}");
        assert_eq!(rec["reasons"][0]["code"], "INCONSISTENT_FACTS");
    }
}

#[test]
fn current_complete_lifecycle_fixtures_preserve_history_and_integrity_checks() {
    let m = accounts();
    for (name, expected) in [
        ("check_exists_inconsistent", "INVALID_INPUT"),
        ("check_exists_removed", "DENY"),
        ("check_exists_true", "ALLOW"),
        ("check_exists_unknown", "INVALID_INPUT"),
        ("close_account", "ALLOW"),
        ("deposit_no_facts", "ALLOW"),
        ("open_account_allowed", "ALLOW"),
        ("open_account_negative", "DENY"),
        ("open_account_unknown", "ERROR"),
        ("open_account_used", "ENTITY_ID_ALREADY_USED"),
        ("remove_customer_free", "ALLOW"),
        ("remove_customer_referenced", "DENY"),
        ("remove_customer_unchecked_dangling", "DENY"),
        ("switch_and_remove", "ALLOW"),
    ] {
        let raw = common::json(&common::fixtures().join(format!("requests/006/{name}.json")));
        let mut request = if matches!(name, "check_exists_inconsistent" | "check_exists_unknown") {
            raw
        } else {
            common::complete_request(&m, &raw)
        };
        if matches!(
            name,
            "check_exists_true" | "close_account" | "deposit_no_facts"
        ) {
            replace_members(&mut request, "Customer", vec![customer()]);
        }
        if matches!(
            name,
            "remove_customer_referenced" | "remove_customer_unchecked_dangling"
        ) {
            replace_members(
                &mut request,
                "Account",
                vec![json!({"id":"a1","owner":"c1","balance":"0.00"})],
            );
        }
        let record = evaluate(&m, &request.to_string());
        assert_eq!(record.as_json()["record_version"], "0.8");
        assert_eq!(
            record.as_json()["result"],
            expected,
            "{name}: {}",
            record.to_json_string()
        );
        assert!(
            replay(&m, &record.to_json_string()).matches,
            "current {name}"
        );
        if name == "deposit_no_facts" {
            assert_eq!(record.as_json()["changes"][0]["new"], "5.00");
        }
        if name == "open_account_allowed" {
            assert_eq!(
                record.as_json()["lifecycle"][0]["value"]["balance"],
                "100.00"
            );
        }
        if name == "check_exists_unknown" {
            assert_eq!(
                record.as_json()["reasons"][0]["code"],
                "INVALID_STATE_SNAPSHOT"
            );
        }
        if name == "open_account_unknown" {
            assert_eq!(record.as_json()["reasons"][0]["code"], "UNKNOWN_FACT");
        }
    }
}
