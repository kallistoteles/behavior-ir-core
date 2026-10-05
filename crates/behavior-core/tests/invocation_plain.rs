#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_core::canonical::tagged_hash;
use behavior_core::invocation::{RequestedInvocation, Snapshot, invoke_with_snapshot};
use serde_json::{Value, json};

#[test]
fn every_invocation_matches_the_independent_legacy_based_golden() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let snapshot = Snapshot::decode(&module, &common::read(&dir.join("snapshots/s1.json")))
        .unwrap()
        .0
        .unwrap();
    let cases = common::files(&dir.join("invocations"), ".json");
    assert_eq!(cases.len(), 13);
    for path in cases {
        let name = path.file_stem().unwrap().to_str().unwrap();
        let requested = RequestedInvocation::decode(&common::read(&path))
            .unwrap()
            .0
            .unwrap();
        let record = invoke_with_snapshot(&module, &requested, &snapshot).unwrap();
        assert_eq!(
            record.to_json_string(),
            common::read(&dir.join(format!("records/{name}.expected.json"))),
            "{name}"
        );
        let mut unsigned = record.as_json().clone();
        unsigned.as_object_mut().unwrap().remove("record_id");
        assert_eq!(
            record.record_id(),
            format!(
                "invocation:{}",
                tagged_hash("behavior.invocation_record.v1", &unsigned).unwrap()
            )
        );
        if let Some(inner) = record.inner_record() {
            let mut request = json!({"data_version":inner["data_version"],"state":inner["state"],"input":inner["input"],
                "context":inner["context"],"facts":inner.get("facts").cloned().unwrap_or(json!({}))});
            let legacy: Value = if record.as_json()["kind"] == "action" {
                request["action"] = json!(requested.capability());
                behavior_core::evaluate(&module, &request.to_string())
                    .as_json()
                    .clone()
            } else {
                request["read"] = json!(requested.capability());
                behavior_core::read::evaluate_read_request(&module, &request.to_string())
                    .unwrap()
                    .record
                    .as_json()
                    .clone()
            };
            assert_eq!(inner, &legacy, "{name}: legacy inner record changed");
        } else {
            assert_eq!(record.outcome_kind(), "pre_evaluation_refusal");
        }
    }
}

#[test]
fn envelope_hash_matches_full_canonical_serialization_for_unicode_escaping_and_nonallow_results() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let snapshot = Snapshot::decode(&module, &common::read(&dir.join("snapshots/s1.json")))
        .unwrap()
        .0
        .unwrap();
    for (case, change, result) in [
        (
            "register",
            json!({"customer_id":"c3","name":"🌿 Åda \"x\"\n\u{0000}"}),
            "ALLOW",
        ),
        ("register", json!({"customer_id":"c3","name":"Ada"}), "DENY"),
        (
            "register",
            json!({"customer_id":"c3","name":17}),
            "INVALID_INPUT",
        ),
        ("transfer", json!({"amount":-1}), "DENY"),
    ] {
        let mut raw = common::json(&dir.join(format!("invocations/{case}.json")));
        raw["input"] = change;
        let requested = RequestedInvocation::decode(&raw.to_string())
            .unwrap()
            .0
            .unwrap();
        let record = invoke_with_snapshot(&module, &requested, &snapshot).unwrap();
        assert_eq!(record.inner_record().unwrap()["result"], result);
        let mut body = record.as_json().clone();
        body.as_object_mut().unwrap().remove("record_id");
        assert_eq!(
            record.record_id(),
            format!(
                "invocation:{}",
                tagged_hash("behavior.invocation_record.v1", &body).unwrap()
            )
        );
        assert!(
            behavior_core::invocation::replay_invocation(&module, &record.to_json_string()).matches
        );
    }
}
