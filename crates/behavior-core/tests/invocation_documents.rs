#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_core::invocation::{CapabilityIntent, RequestedInvocation, Snapshot};
use serde_json::{Value, json};

fn request() -> Value {
    json!({"format":"behavior.invocation.v1","capability":"suspend_customer",
        "bindings":{"customer":{"entity":"Customer","id":"lab:2026:42"}},"input":{},"context":{}})
}

#[test]
fn typed_identities_round_trip_without_separator_rules() {
    let doc = request();
    let (value, errors) = RequestedInvocation::decode(&doc.to_string()).unwrap();
    assert!(errors.is_empty());
    assert_eq!(value.unwrap().as_json(), doc);
}

#[test]
fn malformed_identities_are_all_reported_at_their_binding_paths() {
    for identity in [
        json!("c1"),
        json!({"entity":"Customer","id":""}),
        json!({"entity":"Customer","id":"c1","name":"injected"}),
    ] {
        let mut doc = request();
        doc["bindings"] = json!({"customer":identity,"other":identity});
        let (value, errors) = RequestedInvocation::decode(&doc.to_string()).unwrap();
        assert!(value.is_none());
        assert_eq!(
            errors
                .iter()
                .map(|e| (e.stage.as_str(), e.code.as_str(), e.path.as_str()))
                .collect::<Vec<_>>(),
            [
                ("DECODE", "INVALID_IDENTITY", "bindings.customer"),
                ("DECODE", "INVALID_IDENTITY", "bindings.other")
            ]
        );
    }
}

#[test]
fn wrong_format_unknown_keys_and_bad_capability_are_decode_problems() {
    let mut doc = request();
    doc["format"] = json!("other");
    doc["capability"] = json!(17);
    doc["surprise"] = json!(true);
    let (_, errors) = RequestedInvocation::decode(&doc.to_string()).unwrap();
    assert_eq!(errors.len(), 3);
    assert_eq!(errors[0].code, "UNSUPPORTED_FORMAT");
    assert!(
        errors[0].message.contains("other") && errors[0].message.contains("behavior.invocation.v1")
    );
    assert!(errors.iter().any(|e| e.code == "INVALID_CAPABILITY"));
    assert!(
        errors
            .iter()
            .any(|e| e.code == "UNEXPECTED_KEY" && e.path == "surprise")
    );
    assert!(RequestedInvocation::decode("not json").is_err());
}

#[test]
fn agent_intents_cannot_inject_state_context_or_legacy_targets() {
    let doc = json!({"format":"behavior.capability_intent.v1","capability":"suspend_customer","bindings":{},"input":{},
        "state":{},"context":{},"targets":{}});
    let (_, errors) = CapabilityIntent::decode(&doc.to_string()).unwrap();
    for code in ["STATE_NOT_ALLOWED", "CONTEXT_FROM_HOST", "LEGACY_TARGETS"] {
        assert!(errors.iter().any(|e| e.code == code), "missing {code}");
    }
}

#[test]
fn snapshot_rejects_duplicates_and_contradictory_facts() {
    let module = behavior_core::admit(&common::read(
        &common::fixtures().join("invocation/modules/ledger.json"),
    ))
    .unwrap();
    let original = common::json(&common::fixtures().join("invocation/snapshots/s1.json"));
    let (snapshot, errors) = Snapshot::decode(&module, &original.to_string()).unwrap();
    assert!(snapshot.is_some() && errors.is_empty());
    let mut duplicate = original.clone();
    let first = duplicate["entities"][0].clone();
    duplicate["entities"].as_array_mut().unwrap().push(first);
    let (_, errors) = Snapshot::decode(&module, &duplicate.to_string()).unwrap();
    assert!(errors.iter().any(|e| e.code == "INCONSISTENT_FACTS"));
    let mut contradictory = original.clone();
    contradictory["facts"]["existence"] = json!([{"entity":"Customer","id":"c1","exists":false}]);
    let (_, errors) = Snapshot::decode(&module, &contradictory.to_string()).unwrap();
    assert!(errors.iter().any(|e| e.code == "INCONSISTENT_FACTS"));
    let mut disagreement = original;
    disagreement["facts"]["universe"][0]["members"][0]["name"] = json!("another value");
    let (_, errors) = Snapshot::decode(&module, &disagreement.to_string()).unwrap();
    assert!(errors.iter().any(|e| e.code == "INCONSISTENT_FACTS"));
}

#[test]
fn snapshot_resolution_honors_information_added_by_universe_and_existence_facts() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let original = common::json(&dir.join("snapshots/s1.json"));
    let mut incomplete = original.clone();
    incomplete["entities"]
        .as_array_mut()
        .unwrap()
        .retain(|e| e["value"]["id"] != "c1");
    let (snapshot, errors) = Snapshot::decode(&module, &incomplete.to_string()).unwrap();
    assert!(errors.is_empty(), "consistent facts may add information");
    let snapshot = snapshot.unwrap();
    let request = RequestedInvocation::decode(&common::read(&dir.join("invocations/suspend.json")))
        .unwrap()
        .0
        .unwrap();
    let record =
        behavior_core::invocation::invoke_with_snapshot(&module, &request, &snapshot).unwrap();
    assert_eq!(
        record.outcome_kind(),
        "evaluated",
        "universe supplies the missing c1 value"
    );
    let mut contradicted = original;
    contradicted["facts"]["universe"]
        .as_array_mut()
        .unwrap()
        .retain(|u| u["entity"] != "Customer");
    contradicted["facts"]["existence"] = json!([{"entity":"Customer","id":"absent","exists":true}]);
    let (snapshot, errors) = Snapshot::decode(&module, &contradicted.to_string()).unwrap();
    assert!(
        errors.is_empty(),
        "positive existence without a value is additional evidence"
    );
    let request=RequestedInvocation::decode(&json!({"format":"behavior.invocation.v1","capability":"suspend_customer","bindings":{"customer":{"entity":"Customer","id":"absent"}},"input":{},"context":{}}).to_string()).unwrap().0.unwrap();
    let record =
        behavior_core::invocation::invoke_with_snapshot(&module, &request, &snapshot.unwrap())
            .unwrap();
    assert_eq!(
        record.refusal_stage(),
        Some("DECODE"),
        "an existing entity with no value is incomplete evidence, not UNKNOWN_BINDING"
    );
    assert_eq!(
        record.as_json()["outcome"]["problems"][0]["code"],
        "INCOMPLETE_SNAPSHOT"
    );
    let replay = behavior_core::invocation::replay_invocation(&module, &record.to_json_string());
    assert!(replay.matches, "{:?}", replay.diff);
}
