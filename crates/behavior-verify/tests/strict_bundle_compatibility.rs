#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Ordinary Facts and recorded profiles remain distinct from bundle evidence.
//! Constructed candidate wrappers below are codec controls, not historical events.

#[path = "support/trusted.rs"]
mod oracle;

use behavior_core::facts::Facts;
use behavior_core::read::{ReadRecord, record_id, replay_read};
use behavior_verify::governance::trusted::GovernanceCandidate;
use serde_json::{Value, json};

fn fixture(path: &str) -> Value {
    serde_json::from_str(&std::fs::read_to_string(oracle::fixtures().join(path)).unwrap()).unwrap()
}

#[test]
fn ordinary_query_facts_continue_to_reject_bundle_integrity_fields() {
    let record = fixture("reads/records/query_projection.expected.json");
    let facts = &record["facts"];
    assert_eq!(Facts::from_json(facts).unwrap().to_json(), *facts);
    let mut bundle_shaped = facts.clone();
    let query = &mut bundle_shaped["queries"][0];
    query["result_hash"] = json!(oracle::hash("behavior.query_result.v1", &query["members"]));
    let error = Facts::from_json(&bundle_shaped).unwrap_err();
    assert_eq!(error.code, "DECODE_ERROR");
    assert!(error.message.contains("result_hash"), "{}", error.message);
    assert_eq!(Facts::from_json(facts).unwrap().to_json(), *facts);
}

#[test]
fn ordinary_no_query_facts_and_supplied_universe_keep_their_domain() {
    let value = json!({
        "existence":[{"entity":"E","id":"e1","exists":true}],
        "identities":[{"entity":"E","id":"e2","used":false}],
        "references":[{"entity":"E","id":"e1","incoming":[{"entity":"F","id":"f1","field":"ref"}]}],
        "fields":[{"entity":"E","id":"e1","field":"optional","value":null}],
        "universe":[{"entity":"E","members":[{"id":"e1","x":7}]}]
    });
    assert_eq!(Facts::from_json(&value).unwrap().to_json(), value);
    assert!(Facts::from_json(&json!({})).unwrap().is_empty());
    let mut unknown = value;
    unknown["integrity"] = json!({});
    assert_eq!(Facts::from_json(&unknown).unwrap_err().code, "DECODE_ERROR");
}

#[test]
fn original_query_read_v1_identity_and_evidence_remain_unchanged() {
    let path = oracle::fixtures().join("reads/records/query_projection.expected.json");
    let text = std::fs::read_to_string(path).unwrap();
    let parsed = ReadRecord::from_json(&text).unwrap();
    assert_eq!(parsed.to_json_string(), text);
    let module = behavior_core::admit(
        &std::fs::read_to_string(oracle::fixtures().join("reads/modules/lab.json")).unwrap(),
    )
    .unwrap();
    assert!(replay_read(&module, &text).matches);
    let mut changed = parsed.as_json().clone();
    let query = &mut changed["facts"]["queries"][0];
    query["result_hash"] = json!(oracle::hash("behavior.query_result.v1", &query["members"]));
    changed["record_id"] = json!(record_id(&changed).unwrap());
    assert!(ReadRecord::from_json(&changed.to_string()).is_err());
    assert!(!replay_read(&module, &changed.to_string()).matches);
    assert_eq!(ReadRecord::from_json(&text).unwrap().to_json_string(), text);
}

fn wrap_record(record: &Value) -> Value {
    let mut candidate = oracle::candidate(&oracle::module());
    candidate["content"]["record"] = record.clone();
    candidate["content"]["behavior_version"] = record["behavior_version"].clone();
    reseal(&mut candidate);
    candidate
}

fn reseal(candidate: &mut Value) {
    candidate["transition_hash"] = json!(oracle::hash(
        "behavior.candidate_transition.v2",
        &candidate["content"]
    ));
}

fn legacy_codec(version: &str) {
    let record = fixture(&format!(
        "resulting-state-validity/decisions/decision-{version}/record.json"
    ));
    assert_eq!(record["record_version"], version);
    let candidate = wrap_record(&record);
    let parsed = GovernanceCandidate::from_json(&candidate.to_string()).unwrap();
    assert_eq!(parsed.as_json(), candidate);
    assert_eq!(parsed.content()["record"], record);
    for marker in ["semantic_profile", "commands", "validation_profile"] {
        let mut invalid = candidate.clone();
        invalid["content"]["record"][marker] = json!("unsupported");
        reseal(&mut invalid);
        let error = GovernanceCandidate::from_json(&invalid.to_string()).unwrap_err();
        assert_eq!(error.code, "INVALID_CANDIDATE");
        assert!(
            error
                .message
                .contains("unsupported decision record version/profile")
        );
    }
}

#[test]
fn k01_original_decision04_constructed_wrapper_keeps_legacy_codec() {
    legacy_codec("0.4");
}
#[test]
fn k01_original_decision05_constructed_wrapper_keeps_legacy_codec() {
    legacy_codec("0.5");
}
#[test]
fn k01_original_decision06_constructed_wrapper_keeps_legacy_codec() {
    legacy_codec("0.6");
}

#[test]
fn k02_real_archived07_and_actual_current08_keep_separate_codec_profiles() {
    let archived = fixture("resulting-state-validity/commands/bundle.json");
    let old_record = &archived["record"];
    assert_eq!(old_record["record_version"], "0.7");
    assert_eq!(old_record["semantic_profile"], "0.8");
    assert!(old_record.get("validation_profile").is_none());
    let constructed = wrap_record(old_record);
    assert_eq!(
        GovernanceCandidate::from_json(&constructed.to_string())
            .unwrap()
            .as_json(),
        constructed
    );
    let current = oracle::candidate(&oracle::module());
    assert_eq!(current["content"]["record"]["record_version"], "0.8");
    assert_eq!(
        current["content"]["record"]["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    assert_eq!(
        GovernanceCandidate::from_json(&current.to_string())
            .unwrap()
            .as_json(),
        current
    );
    for (base, field, value) in [
        (&constructed, "record_version", "unknown"),
        (&constructed, "semantic_profile", "0.9"),
        (&current, "validation_profile", "unknown"),
    ] {
        let mut invalid = base.clone();
        invalid["content"]["record"][field] = json!(value);
        reseal(&mut invalid);
        assert_eq!(
            GovernanceCandidate::from_json(&invalid.to_string())
                .unwrap_err()
                .code,
            "INVALID_CANDIDATE"
        );
    }
}
