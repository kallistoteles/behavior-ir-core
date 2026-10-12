#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_core::canonical::tagged_hash;
use behavior_core::invocation::{RequestedInvocation, Snapshot, invoke_with_snapshot};
use serde_json::{Value, json};

#[test]
fn immutable_invocation_goldens_replay_and_fresh_actions_use_complete_validation() {
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
        let archived = common::archived_record("invoke", name);
        assert_eq!(
            archived,
            common::read(&dir.join(format!("records/{name}.expected.json"))),
            "{name}"
        );
        let archived_replay = behavior_core::invocation::replay_invocation(&module, &archived);
        assert!(
            archived_replay.matches,
            "{name}: {:?}",
            archived_replay.diff
        );
        if let Some(inner) = record
            .inner_record()
            .filter(|_| record.as_json()["kind"] == "action")
        {
            assert_eq!(inner["record_version"], "0.8", "{name}");
            assert_eq!(
                inner["validation_profile"],
                "behavior.complete_resulting_state.v1"
            );
            assert_eq!(inner["result"], "ALLOW", "{name}");
            let changes = match name {
                "check_standing" | "register" => json!([]),
                "suspend" => {
                    json!([{"entity":"Customer","id":"c1","field":"status","param":"customer","old":"ACTIVE","new":"SUSPENDED"}])
                }
                "transfer" => json!([
                    {"entity":"Account","id":"a1","field":"balance","param":"from_","old":100,"new":80},
                    {"entity":"Account","id":"a2","field":"balance","param":"to","old":50,"new":70}]),
                "settle3" => json!([
                    {"entity":"Account","id":"a1","field":"balance","param":"a","old":100,"new":0},
                    {"entity":"Account","id":"a2","field":"balance","param":"b","old":50,"new":0},
                    {"entity":"Account","id":"a3","field":"balance","param":"c","old":25,"new":0}]),
                _ => panic!("unclassified fresh action {name}"),
            };
            assert_eq!(inner["changes"], changes, "{name}");
            if name == "register" {
                assert_eq!(
                    inner["lifecycle"],
                    json!([{"entity":"Customer","id":"c3","op":"create","value":{"id":"c3","name":"Cy","status":"ACTIVE"}}])
                );
            }
            let child_subjects: std::collections::BTreeSet<_> = inner["trace"]
                .as_array()
                .unwrap()
                .iter()
                .filter(|step| step["phase"] == "constraint_post")
                .map(|step| {
                    (
                        step["subject"]["entity"].as_str().unwrap(),
                        step["subject"]["id"].as_str().unwrap(),
                    )
                })
                .collect();
            for id in ["a1", "a2", "a3"] {
                assert!(
                    child_subjects.contains(&("Account", id)),
                    "{name}: missing unchanged {id}"
                );
            }
        } else {
            assert_eq!(
                record.to_json_string(),
                archived,
                "{name}: frozen read/refusal changed"
            );
        }
        let fresh_replay =
            behavior_core::invocation::replay_invocation(&module, &record.to_json_string());
        assert!(fresh_replay.matches, "{name}: {:?}", fresh_replay.diff);
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
            let direct: Value = if record.as_json()["kind"] == "action" {
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
            assert_eq!(inner, &direct, "{name}: direct/unified evaluation diverged");
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
