#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_core::invocation::{
    Snapshot, check_capability_intent, invoke_intent_with_snapshot, replay_invocation,
};
use serde_json::{Value, json};

#[test]
fn all_unified_intents_match_independent_goldens_and_replay() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let snapshot = Snapshot::decode(&module, &common::read(&dir.join("snapshots/s1.json")))
        .unwrap()
        .0
        .unwrap();
    for path in common::files(&dir.join("intents"), ".json") {
        let record =
            invoke_intent_with_snapshot(&module, &common::read(&path), &json!({}), &snapshot)
                .unwrap();
        let expected = common::read(&dir.join("intent-records").join(format!(
            "{}.expected.json",
            path.file_stem().unwrap().to_str().unwrap()
        )));
        assert_eq!(record.to_json_string(), expected, "{}", path.display());
        let replay = replay_invocation(&module, &record.to_json_string());
        assert!(replay.matches, "{}: {:?}", path.display(), replay.diff);
    }
    let (checked, errors) = check_capability_intent(
        &module,
        &common::read(&dir.join("intents/transfer_two.json")),
    )
    .unwrap();
    assert!(checked.is_some() && errors.is_empty());
}

#[test]
fn decoding_reports_independent_errors_without_cascading_or_false_evaluation() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let snapshot = Snapshot::decode(&module, &common::read(&dir.join("snapshots/s1.json")))
        .unwrap()
        .0
        .unwrap();
    let raw = json!({"format":"wrong","capability":"transfer","bindings":{"from_":"a1","to":{"entity":"Customer","id":"c1"},"extra":{"entity":"Customer","id":"c2"}},"input":{"amount":20},"state":{},"targets":{},"context":{}});
    let (checked, errors) = check_capability_intent(&module, &raw.to_string()).unwrap();
    assert!(checked.is_none());
    let codes: Vec<_> = errors.iter().map(|e| e.code.as_str()).collect();
    assert_eq!(
        codes,
        vec![
            "UNSUPPORTED_FORMAT",
            "INVALID_IDENTITY",
            "STATE_NOT_ALLOWED",
            "CONTEXT_FROM_HOST",
            "LEGACY_TARGETS",
            "EXTRA_BINDING",
            "INVALID_BINDING"
        ]
    );
    assert!(!errors.iter().any(|e| e.code == "MISSING_BINDING"));
    let record =
        invoke_intent_with_snapshot(&module, &raw.to_string(), &json!({}), &snapshot).unwrap();
    assert_eq!(record.refusal_stage(), Some("DECODE"));
    assert!(record.inner_record().is_none());
    let replay = replay_invocation(&module, &record.to_json_string());
    assert!(replay.matches, "{:?}", replay.diff);
    let bad =
        json!({"format":"behavior.capability_intent.v1","capability":17,"bindings":{},"input":{}});
    let record =
        invoke_intent_with_snapshot(&module, &bad.to_string(), &json!({}), &snapshot).unwrap();
    assert_eq!(record.as_json()["capability"], Value::Null);
    assert_eq!(
        record.as_json()["outcome"]["problems"][0]["code"],
        "INVALID_CAPABILITY"
    );
    assert!(replay_invocation(&module, &record.to_json_string()).matches);
    assert!(invoke_intent_with_snapshot(&module, "not JSON", &json!({}), &snapshot).is_err());
}

#[test]
fn metadata_does_not_reach_evaluation_and_host_supplies_context() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let snapshot = Snapshot::decode(&module, &common::read(&dir.join("snapshots/s1.json")))
        .unwrap()
        .0
        .unwrap();
    let context = json!({"request":"host"});
    let plain = invoke_intent_with_snapshot(
        &module,
        &common::read(&dir.join("intents/suspend_one.json")),
        &context,
        &snapshot,
    )
    .unwrap();
    let meta = invoke_intent_with_snapshot(
        &module,
        &common::read(&dir.join("intents/with_metadata.json")),
        &context,
        &snapshot,
    )
    .unwrap();
    assert!(plain.inner_record().is_some());
    assert_eq!(plain.inner_record(), meta.inner_record());
    assert_eq!(
        meta.as_json()["intent_metadata"],
        json!({"conversation":"t-42"})
    );
    assert_eq!(meta.as_json()["context"], context);
    assert_ne!(plain.record_id(), meta.record_id());
}

#[test]
fn incomplete_snapshot_refusal_preserves_intent_provenance_and_replays_with_metadata() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let mut snapshot = common::json(&dir.join("snapshots/s1.json"));
    snapshot["facts"]["universe"]
        .as_array_mut()
        .unwrap()
        .retain(|u| u["entity"] != "Customer");
    snapshot["facts"]["existence"] = json!([{"entity":"Customer","id":"zz","exists":true}]);
    let snapshot = Snapshot::decode(&module, &snapshot.to_string())
        .unwrap()
        .0
        .unwrap();
    let mut raw = common::json(&dir.join("intents/with_metadata.json"));
    raw["bindings"]["customer"]["id"] = json!("zz");
    let record =
        invoke_intent_with_snapshot(&module, &raw.to_string(), &json!({}), &snapshot).unwrap();
    assert_eq!(record.refusal_stage(), Some("DECODE"));
    assert_eq!(record.as_json()["intent_metadata"], raw["metadata"]);
    let replay = replay_invocation(&module, &record.to_json_string());
    assert!(replay.matches, "{:?}", replay.diff);
}
