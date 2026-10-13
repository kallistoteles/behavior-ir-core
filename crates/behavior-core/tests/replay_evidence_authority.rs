#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Core 022 controls consume original records captured before production changes.
//! Standalone reproduction establishes attempted computation, not Store truth.

mod common;

use behavior_core::invocation::{
    ReplayEvidenceAnswer, ReplayEvidenceRequest, RequestedInvocation, Snapshot, TypedIdentity,
    compare_invocation_replay_evidence, invoke_document, invoke_resolved_read_replay,
    invoke_with_snapshot, prepare_intent, prepare_invocation_replay, replay_invocation,
    reproduce_invocation_replay, resolve,
};
use behavior_core::read::{
    ReadRecord, ReadSource, admit_read, evaluate_read, execute_read_replay_with,
    prepare_read_replay, record_id, record_request, replay_read, reproduce_read_transport_refusal,
};
use behavior_core::semantic::module::Module;
use proptest::prelude::*;
use serde_json::{Value as Json, json};
use sha2::{Digest, Sha256};
use std::collections::BTreeMap;
use std::path::PathBuf;

fn fixtures() -> PathBuf {
    common::fixtures().join("replay/022")
}

fn fixture_text(path: &str) -> String {
    let checksums = common::json(&fixtures().join("checksums.json"));
    let text = common::read(&fixtures().join(path));
    assert_eq!(
        json!(format!("sha256:{:x}", Sha256::digest(text.as_bytes()))),
        checksums["files"][path],
        "captured bytes changed: {path}"
    );
    text
}

fn setup() -> (Module, Json) {
    let culture: Json = serde_json::from_str(&fixture_text("stores/culture.json")).unwrap();
    let module_path = culture["module"].as_str().unwrap();
    let text = common::read(&common::repo_root().join(module_path));
    let checksums = common::json(&fixtures().join("checksums.json"));
    assert_eq!(
        json!(format!("sha256:{:x}", Sha256::digest(text.as_bytes()))),
        checksums["external_inputs"][module_path],
        "captured module changed"
    );
    let module = behavior_core::admit(&text).unwrap();
    (module, culture)
}

fn captured(id: &str) -> (String, Json) {
    let matrix = common::json(&fixtures().join("matrix.json"));
    assert!(
        matrix["runner_case_ids"]
            .as_array()
            .unwrap()
            .iter()
            .any(|case| case == id),
        "{id}: not an original captured runner case"
    );
    let case = matrix["cases"]
        .as_array()
        .unwrap()
        .iter()
        .find(|case| case["id"] == id)
        .unwrap();
    let text = fixture_text(case["fixture"].as_str().unwrap());
    let record: Json = serde_json::from_str(&text).unwrap();
    assert_eq!(record["record_id"], case["original_record_id"], "{id}");
    assert_eq!(record["format"], case["profile"], "{id}");
    assert_eq!(record["data_version"], case["data_version"], "{id}");
    (text, record)
}

fn attempt(id: &str) -> Json {
    serde_json::from_str(&fixture_text(&format!("stores/attempts/{id}.json"))).unwrap()
}

fn assert_read_match(module: &Module, id: &str) -> Json {
    let (text, record) = captured(id);
    let replay = replay_read(module, &text);
    assert!(replay.matches, "{id}: {:?}", replay.diff);
    assert!(replay.diff.is_none(), "{id}");
    let decoded = ReadRecord::from_json(&text).unwrap();
    assert_eq!(decoded.record_id(), record["record_id"].as_str().unwrap());
    println!("COVERAGE022 {id} core_read original_record");
    record
}

fn assert_invocation_match(module: &Module, id: &str) -> Json {
    let (text, record) = captured(id);
    let replay = replay_invocation(module, &text);
    assert!(replay.matches, "{id}: {:?}", replay.diff);
    assert!(replay.diff.is_none(), "{id}");
    let mut content = record.clone();
    content.as_object_mut().unwrap().remove("record_id");
    assert_eq!(
        record["record_id"],
        json!(format!(
            "invocation:{}",
            behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", &content)
                .unwrap()
        )),
        "{id}: original envelope identity"
    );
    println!("COVERAGE022 {id} core_invocation original_record");
    record
}

fn assert_transport_control(id: &str, failed_section: &str) {
    let (module, culture) = setup();
    let record = assert_read_match(&module, id);
    assert_eq!(record["data_version"], culture["data_version"]);
    assert_eq!(record["result"], "INVALID_INPUT");
    assert_eq!(record[failed_section], json!({}));
    assert_eq!(record["derived"], json!([]));
    assert_eq!(record["observed"], json!([]));
    assert_eq!(
        record["reasons"],
        json!([{"code":"DECODE_ERROR","path":failed_section}])
    );
    let original_text = record["refused_request"].as_str().unwrap();
    let original: Json = serde_json::from_str(original_text).unwrap();
    assert!(original[failed_section].is_array());
    assert_eq!(original["state"]["c"], culture["seed"][0]["value"]);
    assert_eq!(original["data_version"], culture["data_version"]);
    let fresh = evaluate_read(
        &module,
        &ReadSource::Declared("inspect".into()),
        original_text,
    );
    assert_eq!(fresh.record.as_json(), &record);
    assert_eq!(
        fresh.record.record_id(),
        record["record_id"].as_str().unwrap()
    );
}

#[test]
fn core_store_read_input_array_refusal_is_a_matching_control() {
    assert_transport_control("R022-01", "input");
}

#[test]
fn core_store_read_context_array_refusal_is_a_matching_control() {
    assert_transport_control("R022-02", "context");
}

fn assert_host_shape_control(id: &str, code: &str) {
    let (module, culture) = setup();
    let record = assert_invocation_match(&module, id);
    let original = attempt(id);
    assert_eq!(record["data_version"], culture["data_version"]);
    assert_eq!(record["outcome"]["kind"], "pre_evaluation_refusal");
    assert_eq!(record["outcome"]["stage"], "DECODE");
    assert_eq!(
        record["outcome"]["decode_evidence"]["source_kind"],
        "invocation"
    );
    assert_eq!(
        record["outcome"]["decode_evidence"]["document"],
        original["document"]
    );
    assert!(record["outcome"].get("record").is_none());
    assert_eq!(record["binding_facts"], json!([]));
    assert!(
        Snapshot::decode(&module, &original["snapshot"].to_string())
            .unwrap()
            .0
            .is_some()
    );
    let (requested, problems) =
        RequestedInvocation::decode(&original["document"].to_string()).unwrap();
    assert!(requested.is_none());
    assert!(problems.iter().any(|problem| problem.code == code));
    assert!(original["host_context"].is_null());
    let reproduced = invoke_document(
        &module,
        &original["document"].to_string(),
        &original["snapshot"].to_string(),
        None,
    )
    .unwrap();
    assert_eq!(reproduced.as_json(), &record);
    assert_eq!(
        reproduced.record_id(),
        record["record_id"].as_str().unwrap()
    );
}

#[test]
fn core_host_invocation_input_array_refusal_is_a_matching_control() {
    assert_host_shape_control("R022-03", "INVALID_INPUT");
}

#[test]
fn core_host_invocation_binding_shape_refusal_is_a_matching_control() {
    assert_host_shape_control("R022-04", "INVALID_IDENTITY");
}

#[test]
fn semantic_object_input_refusal_does_not_claim_transport_failure() {
    let (module, _) = setup();
    let record = assert_read_match(&module, "C022-semantic-read");
    assert_eq!(record["result"], "INVALID_INPUT");
    assert!(record["input"].is_object());
    assert!(record.get("refused_request").is_none());
    assert!(
        record["reasons"]
            .as_array()
            .unwrap()
            .iter()
            .any(|reason| reason["code"] == "EXTRA_ARGUMENT")
    );
    let reproduced = evaluate_read(
        &module,
        &ReadSource::Declared("inspect".into()),
        &record_request(&record).to_string(),
    );
    assert_eq!(reproduced.record.as_json(), &record);
}

#[test]
fn ordinary_read_and_binding_refusal_retain_original_evidence() {
    let (module, _) = setup();
    let ordinary = assert_read_match(&module, "C022-ordinary-read");
    assert_eq!(ordinary["result"], "VALUE");
    assert_eq!(ordinary["value"], 7);
    assert!(ordinary.get("refused_request").is_none());
    let refused = assert_read_match(&module, "C022-binding-read");
    assert_eq!(refused["result"], "INVALID_BINDING");
    assert!(refused.get("refused_request").is_none());
    assert_eq!(refused["state"]["c"], json!({"id":"c9"}));
    assert_eq!(
        refused["facts"]["existence"],
        json!([{"entity":"Culture","id":"c9","exists":false}])
    );
}

#[test]
fn intent_decode_refusal_keeps_its_distinct_document_origin() {
    let (module, culture) = setup();
    let record = assert_invocation_match(&module, "C022-intent-decode");
    let original = attempt("C022-intent-decode");
    assert_eq!(
        record["outcome"]["decode_evidence"]["source_kind"],
        "intent"
    );
    assert_eq!(
        record["outcome"]["decode_evidence"]["document"],
        original["document"]
    );
    assert_eq!(record["context"], original["context"]);
    assert!(record["outcome"].get("record").is_none());
    let reproduced = prepare_intent(
        &module,
        &original["document"].to_string(),
        &original["context"],
        culture["data_version"].as_str().unwrap(),
    )
    .unwrap()
    .unwrap_err();
    assert_eq!(reproduced.as_json(), &record);
}

#[test]
fn rejected_snapshot_documents_reproduce_without_establishing_semantic_state() {
    let (module, culture) = setup();
    for id in [
        "P022-SNAPSHOT-REJECTED-malformed-host",
        "P022-SNAPSHOT-REJECTED-malformed-intent",
        "P022-SNAPSHOT-REJECTED-contradictory-host",
        "P022-SNAPSHOT-REJECTED-contradictory-intent",
    ] {
        let record = assert_invocation_match(&module, id);
        let original = attempt(id);
        let (snapshot, problems) =
            Snapshot::decode(&module, &original["snapshot"].to_string()).unwrap();
        assert!(snapshot.is_none(), "{id}");
        assert!(!problems.is_empty(), "{id}");
        assert_eq!(record["data_version"], culture["data_version"], "{id}");
        assert_eq!(
            record["outcome"]["decode_evidence"]["source_kind"], "documents",
            "{id}"
        );
        assert_eq!(
            record["outcome"]["decode_evidence"]["snapshot"], original["snapshot"],
            "{id}"
        );
        assert!(record["outcome"].get("record").is_none(), "{id}");
        assert_eq!(record["binding_facts"], json!([]), "{id}");
        let reproduced = invoke_document(
            &module,
            &original["document"].to_string(),
            &original["snapshot"].to_string(),
            original
                .get("host_context")
                .filter(|value| !value.is_null()),
        )
        .unwrap();
        assert_eq!(reproduced.as_json(), &record, "{id}");
    }
}

#[test]
fn accepted_sparse_snapshot_can_refuse_resolution_without_evaluating() {
    let (module, _) = setup();
    for id in ["P022-SPARSE-truthful", "P022-SPARSE-false-positive"] {
        let record = assert_invocation_match(&module, id);
        let original = attempt(id);
        let snapshot = Snapshot::decode(&module, &original["snapshot"].to_string())
            .unwrap()
            .0
            .unwrap();
        let requested = RequestedInvocation::decode(&original["document"].to_string())
            .unwrap()
            .0
            .unwrap();
        assert!(snapshot.entities().is_empty(), "{id}");
        assert!(snapshot.facts().universe.is_empty(), "{id}");
        let refusal = resolve(&module, &requested, &snapshot).unwrap_err();
        assert!(
            refusal
                .problems
                .iter()
                .any(|problem| problem.code == "INCOMPLETE_SNAPSHOT"),
            "{id}"
        );
        assert_eq!(
            record["outcome"]["decode_evidence"]["source_kind"], "documents",
            "{id}"
        );
        assert_eq!(record["binding_facts"][0]["status"], "bound", "{id}");
        assert!(record["outcome"].get("record").is_none(), "{id}");
        let reproduced = invoke_with_snapshot(&module, &requested, &snapshot).unwrap();
        assert_eq!(reproduced.as_json(), &record, "{id}");
    }
}

#[test]
fn ordinary_invocation_success_and_resolution_refusals_are_matching_controls() {
    let (module, _) = setup();
    let success = assert_invocation_match(&module, "C022-host-success");
    assert_eq!(success["outcome"]["kind"], "evaluated");
    assert_eq!(success["outcome"]["record"]["result"], "VALUE");
    assert_eq!(success["outcome"]["record"]["value"], 7);
    for (id, status) in [
        ("C022-unknown-binding", "unknown"),
        ("C022-wrong-type", "wrong_type"),
        ("P022-SPARSE-false-absence", "unknown"),
        ("P022-SPARSE-false-empty-universe", "unknown"),
    ] {
        let record = assert_invocation_match(&module, id);
        assert_eq!(record["outcome"]["kind"], "pre_evaluation_refusal", "{id}");
        assert_eq!(record["outcome"]["stage"], "BINDING", "{id}");
        assert_eq!(record["binding_facts"][0]["status"], status, "{id}");
        assert!(
            record["outcome"].get("decode_evidence").is_none(),
            "{id}: no unretained Snapshot is invented"
        );
        assert!(record["outcome"].get("record").is_none(), "{id}");
    }
}

fn reseal_read(record: &mut Json) {
    record.as_object_mut().unwrap().remove("record_id");
    record["record_id"] = json!(record_id(record).unwrap());
}

fn assert_read_nonmatch(module: &Module, record: &Json) -> String {
    let text = record.to_string();
    let first = replay_read(module, &text);
    let second = replay_read(module, &text);
    assert!(
        !first.matches,
        "substitution unexpectedly matched: {record}"
    );
    assert_eq!(
        first.matches, second.matches,
        "non-match must be deterministic"
    );
    assert_eq!(first.diff, second.diff, "non-match must be deterministic");
    let diff = first.diff.unwrap();
    assert!(!diff.is_empty());
    diff
}

#[test]
fn read_refusal_archive_cannot_be_replaced_by_missing_or_nonstring_evidence() {
    let (module, _) = setup();
    let (_, original) = captured("R022-01");
    let mut missing = original.clone();
    missing.as_object_mut().unwrap().remove("refused_request");
    reseal_read(&mut missing);
    assert_read_nonmatch(&module, &missing);
    for value in [Json::Null, json!([]), json!({}), json!(42)] {
        let mut changed = original.clone();
        changed["refused_request"] = value;
        reseal_read(&mut changed);
        let diff = assert_read_nonmatch(&module, &changed);
        assert!(diff.starts_with("refused_request:"), "{diff}");
    }
    println!("COVERAGE022 R022-01 core_read refused_request_shape");
}

#[test]
fn valid_original_request_replacement_cannot_forge_a_transport_refusal() {
    let (module, _) = setup();
    for (id, failed_section) in [("R022-01", "input"), ("R022-02", "context")] {
        let (_, mut changed) = captured(id);
        let mut valid: Json =
            serde_json::from_str(changed["refused_request"].as_str().unwrap()).unwrap();
        valid[failed_section] = json!({});
        valid["facts"] = common::json(&fixtures().join("stores/snapshot.json"))["facts"].clone();
        let legal = evaluate_read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &valid.to_string(),
        );
        assert_eq!(legal.record.result(), "VALUE", "legal replacement control");
        assert!(legal.record.as_json().get("refused_request").is_none());
        changed["refused_request"] = json!(valid.to_string());
        reseal_read(&mut changed);
        assert_read_nonmatch(&module, &changed);
        println!("COVERAGE022 {id} core_read forged_transport_phase");
    }
}

#[test]
fn changed_original_read_text_keeps_its_exact_identity_meaning() {
    let (module, _) = setup();
    let (_, original) = captured("R022-01");
    let raw = original["refused_request"].as_str().unwrap();
    let mut changed = original.clone();
    changed["refused_request"] = json!(format!(" {raw}\n"));
    let stale_identity = assert_read_nonmatch(&module, &changed);
    assert!(stale_identity.starts_with("record_id:"), "{stale_identity}");
    reseal_read(&mut changed);
    assert_ne!(changed["record_id"], original["record_id"]);
    let coherent_new_attempt = replay_read(&module, &changed.to_string());
    assert!(
        coherent_new_attempt.matches,
        "{:?}",
        coherent_new_attempt.diff
    );
    assert_eq!(changed["refused_request"], json!(format!(" {raw}\n")));
    println!("COVERAGE022 R022-01 core_read original_text_identity");
}

#[test]
fn read_transport_refusal_preserves_complete_echo_and_reason_comparison() {
    let (module, _) = setup();
    let (_, original) = captured("R022-01");
    for field in [
        "state", "input", "context", "reasons", "derived", "observed",
    ] {
        let mut changed = original.clone();
        match field {
            "state" => changed["state"]["c"]["measurements"] = json!(8),
            "input" | "context" => changed[field] = json!({"invented":true}),
            "reasons" => changed["reasons"][0]["code"] = json!("EXTRA_ARGUMENT"),
            "derived" | "observed" => changed[field] = json!(["invented"]),
            _ => unreachable!(),
        }
        reseal_read(&mut changed);
        let diff = assert_read_nonmatch(&module, &changed);
        let expected_difference = behavior_core::record::compare(&changed, &original)
            .diff
            .unwrap();
        assert_eq!(
            diff, expected_difference,
            "{field}: reference first difference"
        );
    }
    println!("COVERAGE022 R022-01 core_read whole_record_substitution");
}

#[test]
fn historical_v1_does_not_acquire_current_original_text_refusal_support() {
    let root = common::fixtures().join("replay/018");
    let module =
        behavior_core::admit(&common::read(&root.join("rows/M08-H-D/module.json"))).unwrap();
    let text = common::read(&root.join("records/M08-H-D.read.json"));
    assert!(
        replay_read(&module, &text).matches,
        "original v1 positive control"
    );
    let mut record: Json = serde_json::from_str(&text).unwrap();
    record["refused_request"] = json!("{\"input\":[]}");
    reseal_read(&mut record);
    let diff = assert_read_nonmatch(&module, &record);
    assert_eq!(diff, "refused_request: unsupported in v1");
    println!("COVERAGE022 M08-H-D core_read historical_refusal_limit");
}

fn relocate_locations(value: &mut Json) {
    match value {
        Json::Object(fields) => {
            if let Some(location) = fields.get_mut("loc").and_then(Json::as_object_mut) {
                location.insert("file".into(), json!("relocated-022.beh"));
            }
            for value in fields.values_mut() {
                relocate_locations(value);
            }
        }
        Json::Array(values) => {
            for value in values {
                relocate_locations(value);
            }
        }
        _ => {}
    }
}

#[test]
fn historical_v1_provenance_remains_evidence_with_equal_behavior_hashes() {
    let root = common::fixtures().join("replay/018");
    let mut wire = common::json(&root.join("rows/M08-H-D/error/module.json"));
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let text = common::read(&root.join("records/M08-H-D.error.read.json"));
    assert!(
        replay_read(&module, &text).matches,
        "original v1 error control"
    );
    relocate_locations(&mut wire);
    let relocated = behavior_core::admit(&wire.to_string()).unwrap();
    assert_eq!(module.hash(), relocated.hash());
    let changed = replay_read(&relocated, &text);
    assert!(!changed.matches);
    assert!(changed.diff.unwrap().contains("reasons[0].loc"));
    println!("COVERAGE022 M08-H-D core_read exact_historical_provenance");
}

#[test]
fn checked_read_profile_rejects_same_hash_different_module_representation() {
    let (module, culture) = setup();
    let (text, record) = captured("R022-01");
    let prepared = prepare_read_replay(&module, &text).unwrap();
    let mut wire = common::json(&common::repo_root().join(culture["module"].as_str().unwrap()));
    relocate_locations(&mut wire);
    let relocated = behavior_core::admit(&wire.to_string()).unwrap();
    assert_eq!(module.hash(), relocated.hash());
    assert_eq!(module.semantic_profile(), relocated.semantic_profile());
    assert_ne!(
        behavior_core::serialize::to_wire_json(&module),
        behavior_core::serialize::to_wire_json(&relocated)
    );
    assert!(
        replay_read(&relocated, &text).matches,
        "fresh v2 preparation preserves nonsemantic location changes"
    );
    let cross_module = execute_read_replay_with(
        &relocated,
        prepared.source(),
        record["refused_request"].as_str().unwrap(),
        &behavior_core::Facts::default(),
        prepared.profile(),
    );
    assert!(
        cross_module.is_err(),
        "checked evidence from another admitted representation authorized execution"
    );
    println!("COVERAGE022 R022-01 core_read exact_prepared_module_binding");
}

fn reseal_invocation(record: &mut Json) {
    record.as_object_mut().unwrap().remove("record_id");
    record["record_id"] = json!(format!(
        "invocation:{}",
        behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", record).unwrap()
    ));
}

fn assert_invocation_nonmatch(module: &Module, record: &Json) -> String {
    let text = record.to_string();
    let first = replay_invocation(module, &text);
    let second = replay_invocation(module, &text);
    assert!(
        !first.matches,
        "substitution unexpectedly matched: {record}"
    );
    assert_eq!(first.matches, second.matches);
    assert_eq!(first.diff, second.diff);
    let diff = first.diff.unwrap();
    assert!(!diff.is_empty());
    diff
}

#[test]
fn unretained_snapshot_values_cannot_be_invented_from_host_decode_archives() {
    let (module, _) = setup();
    for id in ["R022-03", "R022-04"] {
        let (_, original) = captured(id);
        let attempted = attempt(id);
        let mut different_values = attempted["snapshot"].clone();
        different_values["entities"][0]["value"]["measurements"] = json!(999);
        different_values["facts"]["universe"][0]["members"][0]["measurements"] = json!(999);
        let mut missing_values = attempted["snapshot"].clone();
        missing_values["entities"] = json!([]);
        missing_values["facts"] =
            json!({"existence":[{"entity":"Culture","id":"c1","exists":true}]});
        for snapshot in [different_values, missing_values] {
            assert!(
                Snapshot::decode(&module, &snapshot.to_string())
                    .unwrap()
                    .0
                    .is_some(),
                "{id}: the earlier Snapshot really was accepted"
            );
            let record = invoke_document(
                &module,
                &attempted["document"].to_string(),
                &snapshot.to_string(),
                None,
            )
            .unwrap();
            assert_eq!(record.as_json(), &original, "{id}");
            assert!(
                record.as_json()["outcome"]["decode_evidence"]
                    .get("snapshot")
                    .is_none(),
                "{id}: the same original identity retains neither value nor universe"
            );
        }
        println!("COVERAGE022 {id} core_invocation unretained_snapshot_limit");
    }
}

#[test]
fn forged_invocation_origin_phase_and_outcome_do_not_authorize_a_route() {
    let (module, _) = setup();
    let (_, original) = captured("R022-03");
    let attempted = attempt("R022-03");
    let mut substitutions = Vec::new();
    for source in ["intent", "documents", "unknown"] {
        let mut changed = original.clone();
        changed["outcome"]["decode_evidence"]["source_kind"] = json!(source);
        if source == "documents" {
            changed["outcome"]["decode_evidence"]["snapshot"] = attempted["snapshot"].clone();
            changed["outcome"]["decode_evidence"]["context"] = Json::Null;
        }
        substitutions.push(changed);
    }
    let mut stage = original.clone();
    stage["outcome"]["stage"] = json!("BINDING");
    stage["outcome"]["problems"][0]["stage"] = json!("BINDING");
    substitutions.push(stage);
    let mut evaluated = original.clone();
    evaluated["outcome"]["kind"] = json!("evaluated");
    substitutions.push(evaluated);
    let mut valid_document = original.clone();
    valid_document["outcome"]["decode_evidence"]["document"]["input"] = json!({});
    substitutions.push(valid_document);
    let mut missing_document = original;
    missing_document["outcome"]["decode_evidence"]
        .as_object_mut()
        .unwrap()
        .remove("document");
    substitutions.push(missing_document);
    for mut changed in substitutions {
        reseal_invocation(&mut changed);
        assert_invocation_nonmatch(&module, &changed);
    }
    println!("COVERAGE022 R022-03 core_invocation origin_phase_outcome_substitution");
}

#[test]
fn accepted_sparse_intent_documents_keep_the_supplied_context_discriminator() {
    let (module, _) = setup();
    let attempted = attempt("P022-SPARSE-truthful");
    let mut intent = attempted["document"].clone();
    intent["format"] = json!("behavior.capability_intent.v1");
    intent.as_object_mut().unwrap().remove("context");
    intent["metadata"] = json!({"request":"022-context-control"});
    let context = json!({"actor":"review"});
    let record = invoke_document(
        &module,
        &intent.to_string(),
        &attempted["snapshot"].to_string(),
        Some(&context),
    )
    .unwrap();
    assert!(replay_invocation(&module, &record.to_json_string()).matches);
    let original = record.as_json();
    assert_eq!(original["context"], context);
    assert_eq!(original["intent_metadata"], intent["metadata"]);
    assert_eq!(
        original["outcome"]["decode_evidence"]["source_kind"],
        "documents"
    );
    assert_eq!(original["outcome"]["decode_evidence"]["context"], context);
    assert_eq!(
        original["outcome"]["problems"][0]["code"],
        "INCOMPLETE_SNAPSHOT"
    );
    assert_eq!(original["binding_facts"][0]["status"], "bound");
    assert!(original["outcome"].get("record").is_none());
    for absent in [false, true] {
        let mut changed = original.clone();
        if absent {
            changed["outcome"]["decode_evidence"]
                .as_object_mut()
                .unwrap()
                .remove("context");
        } else {
            changed["outcome"]["decode_evidence"]["context"] = Json::Null;
        }
        reseal_invocation(&mut changed);
        assert_invocation_nonmatch(&module, &changed);
    }
    // An absent/null discriminator uses the host decoder, even though the
    // archived document happens to look like an intent.
    let host = invoke_document(
        &module,
        &intent.to_string(),
        &attempted["snapshot"].to_string(),
        None,
    )
    .unwrap();
    assert_eq!(
        host.as_json()["outcome"]["decode_evidence"]["source_kind"],
        "invocation"
    );
    assert!(replay_invocation(&module, &host.to_json_string()).matches);
    assert_ne!(host.record_id(), record.record_id());
    println!("COVERAGE022 P022-SPARSE-truthful core_invocation archive_context_discriminator");
}

#[test]
fn rejected_snapshot_rows_remain_attempted_data_despite_local_typed_decoding() {
    let (module, _) = setup();
    let attempted = attempt("P022-SNAPSHOT-REJECTED-contradictory-host");
    let mut snapshot = attempted["snapshot"].clone();
    let false_value = json!({"id":"c2","measurements":999});
    snapshot["entities"]
        .as_array_mut()
        .unwrap()
        .push(json!({"entity":"Culture","value":false_value}));
    snapshot["facts"]["universe"][0]["members"]
        .as_array_mut()
        .unwrap()
        .push(false_value);
    let (decoded, problems) = Snapshot::decode(&module, &snapshot.to_string()).unwrap();
    assert!(decoded.is_none(), "Snapshot rejection is atomic");
    assert!(
        problems
            .iter()
            .any(|problem| problem.code == "INCONSISTENT_FACTS")
    );
    let record = invoke_document(
        &module,
        &attempted["document"].to_string(),
        &snapshot.to_string(),
        None,
    )
    .unwrap();
    assert_eq!(
        record.as_json()["outcome"]["decode_evidence"]["snapshot"],
        snapshot
    );
    assert_eq!(record.as_json()["binding_facts"], json!([]));
    assert!(record.inner_record().is_none());
    assert!(replay_invocation(&module, &record.to_json_string()).matches);
    println!(
        "COVERAGE022 P022-SNAPSHOT-REJECTED-contradictory-host core_invocation atomic_component_rejection"
    );
}

#[test]
fn accepted_sparse_snapshot_availability_cannot_be_replaced_before_reproduction() {
    let (module, _) = setup();
    let (_, original) = captured("P022-SPARSE-truthful");
    let mut filled = original.clone();
    filled["outcome"]["decode_evidence"]["snapshot"]["entities"] =
        json!([{"entity":"Culture","value":{"id":"c1","measurements":7}}]);
    reseal_invocation(&mut filled);
    assert_invocation_nonmatch(&module, &filled);
    let mut absent = original.clone();
    absent["outcome"]["decode_evidence"]["snapshot"]["facts"]["existence"][0]["exists"] =
        json!(false);
    reseal_invocation(&mut absent);
    assert_invocation_nonmatch(&module, &absent);
    let mut erased = original;
    erased["outcome"]["decode_evidence"]["snapshot"]["facts"] = json!({});
    reseal_invocation(&mut erased);
    assert_invocation_nonmatch(&module, &erased);
    println!("COVERAGE022 P022-SPARSE-truthful core_invocation original_sparse_availability");
}

#[test]
fn ordinary_binding_refusal_retains_existence_without_capturing_bound_values() {
    let (_, culture) = setup();
    let mut wire = common::json(&common::repo_root().join(culture["module"].as_str().unwrap()));
    wire["reads"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"d","role":"state","type":{"t":"entity","name":"Culture"}}));
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let mut attempted = attempt("C022-host-success");
    attempted["document"]["bindings"]["d"] = json!({"entity":"Culture","id":"c9"});
    let record = invoke_document(
        &module,
        &attempted["document"].to_string(),
        &attempted["snapshot"].to_string(),
        None,
    )
    .unwrap();
    assert_eq!(record.refusal_stage(), Some("BINDING"));
    assert_eq!(record.as_json()["binding_facts"][0]["status"], "bound");
    assert_eq!(record.as_json()["binding_facts"][1]["status"], "unknown");
    assert!(record.as_json()["outcome"].get("decode_evidence").is_none());
    assert!(record.inner_record().is_none());
    assert!(replay_invocation(&module, &record.to_json_string()).matches);
    attempted["snapshot"]["entities"][0]["value"]["measurements"] = json!(999);
    attempted["snapshot"]["facts"]["universe"][0]["members"][0]["measurements"] = json!(999);
    let different_value = invoke_document(
        &module,
        &attempted["document"].to_string(),
        &attempted["snapshot"].to_string(),
        None,
    )
    .unwrap();
    assert_eq!(different_value.as_json(), record.as_json());
    println!("COVERAGE022 C022-unknown-binding core_invocation bound_identity_surrogate_limit");
}

#[test]
fn invocation_metadata_and_nested_evidence_keep_complete_comparison_priority() {
    let (module, culture) = setup();
    let attempted = attempt("C022-intent-decode");
    let mut document = attempted["document"].clone();
    document["metadata"] = json!({"request":"original"});
    let original = prepare_intent(
        &module,
        &document.to_string(),
        &attempted["context"],
        culture["data_version"].as_str().unwrap(),
    )
    .unwrap()
    .unwrap_err();
    assert!(replay_invocation(&module, &original.to_json_string()).matches);
    let mut metadata = original.as_json().clone();
    metadata["intent_metadata"] = json!({"request":"substituted"});
    reseal_invocation(&mut metadata);
    assert_eq!(
        assert_invocation_nonmatch(&module, &metadata),
        behavior_core::record::compare(&metadata, original.as_json())
            .diff
            .unwrap()
    );
    let (_, evaluated) = captured("C022-host-success");
    for field in ["value", "record_id"] {
        let mut changed = evaluated.clone();
        if field == "value" {
            changed["outcome"]["record"]["value"] = json!(8);
            reseal_read(&mut changed["outcome"]["record"]);
            changed["outcome"]["record_id"] = changed["outcome"]["record"]["record_id"].clone();
        } else {
            changed["outcome"]["record_id"] = json!("read:sha256:substituted");
        }
        reseal_invocation(&mut changed);
        assert_eq!(
            assert_invocation_nonmatch(&module, &changed),
            behavior_core::record::compare(&changed, &evaluated)
                .diff
                .unwrap(),
            "{field}: existing complete comparison priority"
        );
    }
    let mut unsupported = evaluated;
    unsupported["outcome"]["record"]["format"] = json!("behavior.read_record.unknown");
    reseal_invocation(&mut unsupported);
    assert_eq!(
        assert_invocation_nonmatch(&module, &unsupported),
        "unsupported read record format/profile"
    );
    println!("COVERAGE022 C022-intent-decode core_invocation archive_metadata_comparison");
    println!("COVERAGE022 C022-host-success core_invocation nested_identity_profile_comparison");
}

#[test]
fn checked_nested_read_execution_rejects_different_equal_hash_module_representation() {
    let (module, culture) = setup();
    let (_, original) = captured("C022-host-success");
    let profile = prepare_read_replay(&module, &original["outcome"]["record"].to_string()).unwrap();
    let attempted = attempt("C022-host-success");
    let requested = RequestedInvocation::decode(&attempted["document"].to_string())
        .unwrap()
        .0
        .unwrap();
    let snapshot = Snapshot::decode(&module, &attempted["snapshot"].to_string())
        .unwrap()
        .0
        .unwrap();
    let resolved = resolve(&module, &requested, &snapshot).unwrap();
    assert!(
        invoke_resolved_read_replay(&module, resolved, snapshot.facts(), profile.profile()).is_ok()
    );
    let mut wire = common::json(&common::repo_root().join(culture["module"].as_str().unwrap()));
    relocate_locations(&mut wire);
    let relocated = behavior_core::admit(&wire.to_string()).unwrap();
    assert_eq!(module.hash(), relocated.hash());
    assert!(replay_invocation(&relocated, &original.to_string()).matches);
    let resolved = resolve(&relocated, &requested, &snapshot).unwrap();
    assert!(
        invoke_resolved_read_replay(&relocated, resolved, snapshot.facts(), profile.profile())
            .is_err()
    );
    println!("COVERAGE022 C022-host-success core_invocation exact_nested_module_binding");
}

// 018 already covers the inherited support cells, U01–U08, historical query
// registries/capture limits and generic record representation. These controls
// exercise the additional checked proof boundary and its bounded claim scope.
fn enclosing_representation(
    value: &Json,
    reverse: bool,
    space: &str,
    escaped_keys: bool,
) -> String {
    match value {
        Json::Object(fields) => {
            let mut keys: Vec<_> = fields.keys().collect();
            if reverse {
                keys.reverse();
            }
            let entries = keys
                .into_iter()
                .map(|key| {
                    let encoded =
                        if escaped_keys && key.starts_with(|c: char| c.is_ascii_alphabetic()) {
                            let first = key.as_bytes()[0];
                            let rest = serde_json::to_string(&key[1..]).unwrap();
                            format!("\"\\u{first:04x}{}", &rest[1..])
                        } else {
                            serde_json::to_string(key).unwrap()
                        };
                    format!(
                        "{encoded}{space}:{space}{}",
                        enclosing_representation(&fields[key], reverse, space, escaped_keys)
                    )
                })
                .collect::<Vec<_>>()
                .join(&format!(",{space}"));
            format!("{{{space}{entries}{space}}}")
        }
        Json::Array(items) => {
            let entries = items
                .iter()
                .map(|item| enclosing_representation(item, reverse, space, escaped_keys))
                .collect::<Vec<_>>()
                .join(&format!(",{space}"));
            format!("[{space}{entries}{space}]")
        }
        // In particular, preserve the decoded refused_request string exactly.
        _ => value.to_string(),
    }
}

#[test]
fn enclosing_representation_preserves_checked_proof_and_demand_scope() {
    let (module, _) = setup();
    let matrix = common::json(&fixtures().join("matrix.json"));
    for id in matrix["runner_case_ids"].as_array().unwrap() {
        let id = id.as_str().unwrap();
        let (text, original) = captured(id);
        for (reverse, space, escaped) in
            [(false, "\n ", false), (true, "", false), (true, "\t", true)]
        {
            let represented = enclosing_representation(&original, reverse, space, escaped);
            assert_eq!(
                serde_json::from_str::<Json>(&represented).unwrap(),
                original
            );
            if original["format"]
                .as_str()
                .unwrap()
                .starts_with("behavior.read_record.")
            {
                let expected = prepare_read_replay(&module, &text).unwrap();
                let actual = prepare_read_replay(&module, &represented).unwrap();
                assert_eq!(actual.stored(), &original);
                assert_eq!(
                    actual.store_bindings(&module).unwrap(),
                    expected.store_bindings(&module).unwrap()
                );
                assert_eq!(actual.input(), expected.input());
                assert_eq!(actual.context(), expected.context());
                assert_eq!(actual.data_version(), expected.data_version());
                let expected_refusal =
                    reproduce_read_transport_refusal(&module, &expected).unwrap();
                let actual_refusal = reproduce_read_transport_refusal(&module, &actual).unwrap();
                assert_eq!(actual_refusal.is_some(), expected_refusal.is_some());
                if let Some(proof) = actual_refusal {
                    assert!(proof.replay_result().matches);
                }
                assert!(replay_read(&module, &represented).matches);
            } else {
                let expected = reproduce_invocation_replay(
                    &module,
                    &prepare_invocation_replay(&module, &text).unwrap(),
                )
                .unwrap();
                let actual = reproduce_invocation_replay(
                    &module,
                    &prepare_invocation_replay(&module, &represented).unwrap(),
                )
                .unwrap();
                assert_eq!(actual.stored(), &original);
                assert_eq!(actual.evidence_requests(), expected.evidence_requests());
                assert_eq!(
                    actual.requested().map(RequestedInvocation::as_json),
                    expected.requested().map(RequestedInvocation::as_json)
                );
                assert_eq!(actual.is_archived_refusal(), expected.is_archived_refusal());
                assert_eq!(
                    actual.is_resolution_refusal(),
                    expected.is_resolution_refusal()
                );
                assert_eq!(actual.is_archived_action(), expected.is_archived_action());
                assert_eq!(
                    actual.read_profile().is_some(),
                    expected.read_profile().is_some()
                );
                assert!(actual.replay_result().matches);
                assert!(actual.replay_result().diff.is_none());
            }
        }
        println!(
            "COVERAGE022 {id} {} checked_scope_representation",
            if original["format"]
                .as_str()
                .unwrap()
                .starts_with("behavior.read_record.")
            {
                "core_read"
            } else {
                "core_invocation"
            }
        );
    }
}

#[test]
fn archived_document_ambiguity_is_refused_before_checked_progress_can_exist() {
    let (module, _) = setup();
    for id in [
        "R022-03",
        "P022-SNAPSHOT-REJECTED-contradictory-host",
        "P022-SPARSE-truthful",
    ] {
        let (_, original) = captured(id);
        let text = original.to_string();
        let mut variants = vec![
            format!("{{\"format\":{},{}", original["format"], &text[1..]),
            text.replacen("\"outcome\":{", "\"outcome\":{\"stage\":\"invented\",", 1),
            text.replacen("\"document\":{", "\"document\":{\"input\":null,", 1),
            text.replacen("\"document\":{", "\"document\":{\"\\u0069nput\":null,", 1),
            text.replacen(
                "\"decode_evidence\":{",
                "\"decode_evidence\":{\"\\u0073ource_kind\":\"unknown\",",
                1,
            ),
        ];
        if original["outcome"]["decode_evidence"]
            .get("snapshot")
            .is_some()
        {
            let needle = format!(
                "\"exists\":{}",
                original["outcome"]["decode_evidence"]["snapshot"]["facts"]["existence"][0]["exists"]
            );
            variants.push(text.replacen(&needle, &format!("\"exists\":null,{needle}"), 1));
        }
        for ambiguous in variants {
            assert_ne!(ambiguous, text);
            assert_eq!(
                serde_json::from_str::<Json>(&ambiguous).unwrap(),
                original,
                "a lossy parser would retain the original identity"
            );
            let diff = prepare_invocation_replay(&module, &ambiguous).unwrap_err();
            assert!(diff.contains("duplicate"), "{id}: {diff}");
            let result = replay_invocation(&module, &ambiguous);
            assert!(!result.matches);
            assert_eq!(result.diff, Some(diff));
        }
        println!("COVERAGE022 {id} core_invocation archive_decoded_key_ambiguity");
    }
}

fn checked_fixture(
    module: &Module,
    id: &str,
) -> behavior_core::invocation::ReproducedInvocationReplay {
    reproduce_invocation_replay(
        module,
        &prepare_invocation_replay(module, &captured(id).0).unwrap(),
    )
    .unwrap()
}

#[test]
fn retained_claim_answers_cannot_be_missing_mistyped_or_substituted() {
    let (module, _) = setup();
    let sparse = checked_fixture(&module, "P022-SPARSE-truthful");
    let request = ReplayEvidenceRequest::Existence {
        identity: TypedIdentity {
            entity: "Culture".into(),
            id: "c1".into(),
        },
    };
    assert_eq!(sparse.evidence_requests(), std::slice::from_ref(&request));
    assert!(
        compare_invocation_replay_evidence(
            &module,
            &sparse,
            &BTreeMap::from([(request.clone(), ReplayEvidenceAnswer::Boolean(true))])
        )
        .is_ok()
    );
    for answers in [
        BTreeMap::new(),
        BTreeMap::from([(request.clone(), ReplayEvidenceAnswer::Entity(None))]),
        BTreeMap::from([(request, ReplayEvidenceAnswer::Boolean(false))]),
    ] {
        let first = compare_invocation_replay_evidence(&module, &sparse, &answers).unwrap_err();
        assert!(first.contains("snapshot.facts.existence"), "{first}");
        assert_eq!(
            compare_invocation_replay_evidence(&module, &sparse, &answers).unwrap_err(),
            first
        );
    }
    for id in [
        "R022-03",
        "P022-SNAPSHOT-REJECTED-contradictory-host",
        "C022-wrong-type",
        "C022-host-success",
    ] {
        let proof = checked_fixture(&module, id);
        assert!(
            proof.evidence_requests().is_empty(),
            "{id}: omitted or later callback evidence cannot become eager claims"
        );
        assert!(compare_invocation_replay_evidence(&module, &proof, &BTreeMap::new()).is_ok());
        println!("COVERAGE022 {id} core_invocation bounded_answer_scope");
    }
    println!("COVERAGE022 P022-SPARSE-truthful core_invocation required_answer_guard");
}

#[test]
fn checked_invocation_preparation_and_claim_comparison_reject_equal_hash_module_reuse() {
    let (module, culture) = setup();
    let (text, _) = captured("P022-SPARSE-truthful");
    let prepared = prepare_invocation_replay(&module, &text).unwrap();
    let proof = reproduce_invocation_replay(&module, &prepared).unwrap();
    let mut wire = common::json(&common::repo_root().join(culture["module"].as_str().unwrap()));
    relocate_locations(&mut wire);
    let relocated = behavior_core::admit(&wire.to_string()).unwrap();
    assert_eq!(module.hash(), relocated.hash());
    assert!(
        replay_invocation(&relocated, &text).matches,
        "fresh preparation retains v2 nonsemantic location behavior"
    );
    assert!(
        reproduce_invocation_replay(&relocated, &prepared)
            .unwrap_err()
            .contains("different module representation")
    );
    assert!(
        proof
            .check_module(&relocated)
            .unwrap_err()
            .contains("different module representation")
    );
    assert!(
        compare_invocation_replay_evidence(&relocated, &proof, &BTreeMap::new())
            .unwrap_err()
            .contains("different module representation"),
        "module substitution precedes a missing historical answer"
    );
    println!("COVERAGE022 P022-SPARSE-truthful core_invocation exact_checked_invocation_module");
}

#[test]
fn historical_query_limits_cannot_be_classified_as_current_transport_proofs() {
    let root = common::fixtures().join("replay/018");
    let matrix = common::json(&root.join("matrix.json"));
    for fixture in matrix["auxiliary_fixtures"].as_array().unwrap() {
        let module = behavior_core::admit(&common::read(
            &root.join(fixture["module"].as_str().unwrap()),
        ))
        .unwrap();
        let text = common::read(&root.join(fixture["read_record"].as_str().unwrap()));
        let prepared = prepare_read_replay(&module, &text).unwrap();
        assert!(prepared.stored().get("refused_request").is_none());
        assert!(
            reproduce_read_transport_refusal(&module, &prepared)
                .unwrap()
                .is_none()
        );
        let result = replay_read(&module, &text);
        assert_eq!(result.matches, fixture["case"] == "legacy_query_registry");
        let suffix = if fixture["case"] == "legacy_query_registry" {
            "query_registry"
        } else {
            "omitted_capture"
        };
        println!(
            "COVERAGE022 P022-CAPTURE-LIMITS-{}-{suffix} core_read historical_proof_limit",
            fixture["row"].as_str().unwrap()
        );
    }
}

#[test]
fn supplementary_unsupported_read_definition_versions_remain_refused() {
    let (module, _) = setup();
    let root = common::fixtures().join("replay/018");
    let path = "rows/M08-C-D/read.json";
    let text = common::read(&root.join(path));
    let capture = common::json(&root.join("checksums.json"));
    assert_eq!(
        format!("sha256:{:x}", Sha256::digest(text.as_bytes())),
        capture["files"][path]
    );
    assert!(
        admit_read(&module, &text).is_ok(),
        "original admitted definition is the positive control"
    );
    let original: Json = serde_json::from_str(&text).unwrap();
    for version in ["0.1", "0.2", "0.3", "0.5"] {
        let mut definition = original.clone();
        definition["ir_version"] = json!(version);
        assert!(
            admit_read(&module, &definition.to_string()).is_err(),
            "U06-{version}"
        );
        println!("COVERAGE022 U06-{version} read_definition_admission refusal");
    }
}

proptest! {
    #![proptest_config(ProptestConfig::with_cases(64))]

    #[test]
    fn sparse_claim_answer_truth_is_independent_of_missing_value_availability(
        claimed_exists in any::<bool>(),
        actual_exists in any::<bool>(),
        use_other_identity in any::<bool>(),
    ) {
        let (module, _) = setup();
        let mut attempted = attempt("P022-SPARSE-truthful");
        let id = if use_other_identity { "c9" } else { "c1" };
        attempted["document"]["bindings"]["c"]["id"] = json!(id);
        attempted["snapshot"]["facts"]["existence"][0]["id"] = json!(id);
        attempted["snapshot"]["facts"]["existence"][0]["exists"] = json!(claimed_exists);
        let record = invoke_document(&module, &attempted["document"].to_string(), &attempted["snapshot"].to_string(), None).unwrap();
        let proof = reproduce_invocation_replay(&module, &prepare_invocation_replay(&module, &record.to_json_string()).unwrap()).unwrap();
        let request = ReplayEvidenceRequest::Existence { identity: TypedIdentity { entity: "Culture".into(), id: id.into() } };
        prop_assert_eq!(proof.evidence_requests(), std::slice::from_ref(&request));
        prop_assert_eq!(proof.is_archived_refusal(), claimed_exists);
        prop_assert!(proof.is_resolution_refusal());
        prop_assert!(proof.read_profile().is_none());
        prop_assert!(proof.stored()["outcome"].get("record").is_none());
        let answers = BTreeMap::from([(request, ReplayEvidenceAnswer::Boolean(actual_exists))]);
        prop_assert_eq!(compare_invocation_replay_evidence(&module, &proof, &answers).is_ok(), claimed_exists == actual_exists);
    }
}
