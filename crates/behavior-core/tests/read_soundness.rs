#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/commands.rs"]
mod commands;
#[path = "support/read_soundness.rs"]
mod model;

use behavior_core::read::{ReadRecord, ReadSource, evaluate_read, replay_read};

#[test]
fn current_reads_validate_constraints_before_evaluating_all_argument_roles() {
    for role in ["state", "input", "context"] {
        let m = behavior_core::admit(&model::module(Some(role), true).to_string()).unwrap();
        let x = evaluate_read(
            &m,
            &ReadSource::Declared("inspect".into()),
            &model::request(Some(role), 0).to_string(),
        );
        let expected = match role {
            "state" => "INVALID_STATE",
            "context" => "INVALID_CONTEXT",
            _ => "INVALID_INPUT",
        };
        assert_eq!(x.record.result(), expected, "{}", x.record.to_json_string());
        assert!(replay_read(&m, &x.record.to_json_string()).matches);
    }
}

#[test]
fn current_query_failure_keeps_the_evidence_needed_to_replay() {
    let m = behavior_core::admit(&model::module(None, false).to_string()).unwrap();
    let x = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &model::request(None, 0).to_string(),
    );
    assert_eq!(x.record.result(), "EVALUATION_ERROR");
    let replay = replay_read(&m, &x.record.to_json_string());
    assert!(replay.matches, "{:?}", replay.diff);
    assert!(ReadRecord::from_json(&x.record.to_json_string()).is_ok());
}

#[test]
fn current_read_identity_and_replay_ignore_diagnostic_provenance() {
    let w = model::module(Some("state"), false);
    let mut other = w.clone();
    model::relocate(&mut other);
    let a = behavior_core::admit(&w.to_string()).unwrap();
    let b = behavior_core::admit(&other.to_string()).unwrap();
    assert_eq!(a.behavior_version(), b.behavior_version());
    let req = model::request(Some("state"), 0).to_string();
    let x = evaluate_read(&a, &ReadSource::Declared("inspect".into()), &req);
    let y = evaluate_read(&b, &ReadSource::Declared("inspect".into()), &req);
    assert_eq!(x.record.to_json_string(), y.record.to_json_string());
    assert!(replay_read(&b, &x.record.to_json_string()).matches);
}

#[test]
fn record_equality_and_round_trip_ignore_detached_diagnostics() {
    let w = model::module(Some("state"), false);
    let mut relocated = w.clone();
    model::relocate(&mut relocated);
    let a = behavior_core::admit(&w.to_string()).unwrap();
    let b = behavior_core::admit(&relocated.to_string()).unwrap();
    let request = model::request(Some("state"), 0).to_string();
    let source = ReadSource::Declared("inspect".into());
    let x = evaluate_read(&a, &source, &request);
    let y = evaluate_read(&b, &source, &request);
    assert_ne!(x.record.diagnostics(), y.record.diagnostics());
    assert_eq!(x.record, y.record);
    let decoded = ReadRecord::from_json(&x.record.to_json_string()).unwrap();
    assert_eq!(decoded, x.record);
}

#[test]
fn capability_errors_do_not_disclose_internal_failure_operands() {
    let m = behavior_core::admit(&model::module(Some("state"), false).to_string()).unwrap();
    let x = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &model::request(Some("state"), 0).to_string(),
    );
    assert_eq!(x.record.result(), "EVALUATION_ERROR");
    assert!(x.record.as_json()["reasons"][0]["details"]["operands"].is_array());
    let response: serde_json::Value = serde_json::from_str(&x.response.to_json_string()).unwrap();
    assert_eq!(response["result"], "EVALUATION_ERROR");
    assert_eq!(response["record_id"], x.record.record_id());
    assert!(response["reasons"][0].get("details").is_none());
}

#[test]
fn untrusted_invocation_rejects_duplicate_json_keys_before_map_reduction() {
    let m = behavior_core::admit(&commands::command_only_module(true).to_string()).unwrap();
    let intent = r#"{"format":"behavior.capability_intent.v1","capability":"receipt","bindings":{},"input":{"recipient":"first","recipient":"second"}}"#;
    // Decoding itself must refuse before invocation can execute.
    assert!(behavior_core::invocation::CapabilityIntent::decode(intent).is_err());
    assert!(
        behavior_core::invocation::invoke_document(
            &m,
            intent,
            &commands::command_only_snapshot().to_string(),
            Some(&serde_json::json!({}))
        )
        .is_err()
    );
}

#[test]
fn state_invariants_do_not_restrict_entity_valued_input() {
    let mut w = model::module(Some("input"), false);
    w["invariants"] = serde_json::json!([{"name":"positive_state","entity":"Culture","param":"c","loc":model::loc(),"body":model::op("ge",vec![model::field("c","measurements"),model::integer(1)])}]);
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let x = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &model::request(Some("input"), 0).to_string(),
    );
    assert_eq!(x.record.result(), "EVALUATION_ERROR");
    assert_eq!(
        x.record.as_json()["reasons"][0]["details"]["code"],
        "DIVISION_BY_ZERO"
    );
    assert!(replay_read(&m, &x.record.to_json_string()).matches);
}

#[test]
fn current_reads_require_a_complete_valid_state_even_without_bound_entities() {
    let mut w = model::module(None, false);
    w["invariants"] = serde_json::json!([{"name":"positive_state","entity":"Culture","param":"c","loc":model::loc(),"body":model::op("ge",vec![model::field("c","measurements"),model::integer(1)])}]);
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let source = ReadSource::Declared("inspect".into());
    let mut req = model::request(None, 0);
    let x = evaluate_read(&m, &source, &req.to_string());
    assert_eq!(x.record.result(), "INVALID_STATE");
    assert!(replay_read(&m, &x.record.to_json_string()).matches);
    req.as_object_mut().unwrap().remove("facts");
    let x = evaluate_read(&m, &source, &req.to_string());
    assert_eq!(x.record.result(), "INVALID_STATE");
    assert!(replay_read(&m, &x.record.to_json_string()).matches);
}

#[test]
fn historical_wire08_v1_records_keep_their_original_read_replay() {
    let m = behavior_core::admit(&model::module(Some("state"), false).to_string()).unwrap();
    let x = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &model::request(Some("state"), 0).to_string(),
    );
    let mut old = x.record.as_json().clone();
    old["format"] = serde_json::json!("behavior.read_record.v1");
    old["reasons"] = x.record.diagnostics()["reasons"].clone();
    old["derived"] = x.record.diagnostics()["derived"].clone();
    old.as_object_mut().unwrap().remove("facts");
    old["record_id"] = serde_json::json!(behavior_core::read::record_id(&old).unwrap());
    assert!(ReadRecord::from_json(&old.to_string()).is_ok());
    let r = replay_read(&m, &old.to_string());
    assert!(r.matches, "{:?}", r.diff);
}

#[test]
fn historical_wire08_read_invocations_replay_their_original_inner_format() {
    use behavior_core::invocation::{
        RequestedInvocation, Snapshot, invoke_with_snapshot, replay_invocation,
    };
    let m = behavior_core::admit(&model::module(Some("state"), false).to_string()).unwrap();
    let raw = serde_json::json!({"format":"behavior.invocation.v1","capability":"inspect","bindings":{"c":{"entity":"Culture","id":"c1"}},"input":{},"context":{}});
    let req = RequestedInvocation::decode(&raw.to_string())
        .unwrap()
        .0
        .unwrap();
    let source = serde_json::json!({"format":"behavior.snapshot.v1","data_version":"soundness:1","entities":[{"entity":"Culture","value":model::value(0)}],"facts":model::request(None,0)["facts"]});
    let snapshot = Snapshot::decode(&m, &source.to_string())
        .unwrap()
        .0
        .unwrap();
    let current = invoke_with_snapshot(&m, &req, &snapshot).unwrap();
    assert!(replay_invocation(&m, &current.to_json_string()).matches);
    let mut old = current.as_json().clone();
    let inner = &mut old["outcome"]["record"];
    inner["format"] = serde_json::json!("behavior.read_record.v1");
    inner["reasons"] = current.diagnostics()["reasons"].clone();
    inner["derived"] = current.diagnostics()["derived"].clone();
    inner.as_object_mut().unwrap().remove("facts");
    inner["record_id"] = serde_json::json!(behavior_core::read::record_id(inner).unwrap());
    old["outcome"]["record_id"] = old["outcome"]["record"]["record_id"].clone();
    old.as_object_mut().unwrap().remove("record_id");
    let hash =
        behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", &old).unwrap();
    old["record_id"] = serde_json::json!(format!("invocation:{hash}"));
    let r = replay_invocation(&m, &old.to_string());
    assert!(r.matches, "{:?}", r.diff);
}

#[test]
fn current_record_claims_are_closed_and_tampering_is_detected_by_replay() {
    let m = behavior_core::admit(&model::module(None, false).to_string()).unwrap();
    let x = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &model::request(None, 0).to_string(),
    );
    let mut invalid = x.record.as_json().clone();
    invalid["reasons"][0]["details"]["display_path"] = serde_json::json!("bad");
    invalid["record_id"] = serde_json::json!(behavior_core::read::record_id(&invalid).unwrap());
    assert!(ReadRecord::from_json(&invalid.to_string()).is_err());
    let mut altered = x.record.as_json().clone();
    altered["facts"]["universe"][0]["members"][0]["measurements"] = serde_json::json!(1);
    altered["record_id"] = serde_json::json!(behavior_core::read::record_id(&altered).unwrap());
    assert!(!replay_read(&m, &altered.to_string()).matches);
}

#[test]
fn strict_decoding_applies_to_both_read_request_entry_points() {
    let m = behavior_core::admit(&model::module(Some("input"), false).to_string()).unwrap();
    let req = r#"{"read":"inspect","data_version":"soundness:1","state":{},"input":{"c":{"id":"c1","measurements":0,"measurements":1}},"context":{},"facts":{"universe":[{"entity":"Culture","members":[]}]}}"#;
    assert!(behavior_core::read::evaluate_read_request(&m, req).is_err());
    let raw = req.replacen("\"read\":\"inspect\",", "", 1);
    assert_eq!(
        evaluate_read(&m, &ReadSource::Declared("inspect".into()), &raw)
            .record
            .result(),
        "INVALID_INPUT"
    );
}

#[test]
fn current_read_records_match_the_independent_schema() {
    use std::io::Write;
    use std::process::{Command, Stdio};
    let mut records = Vec::new();
    for (role, positive, n) in [
        (None, false, 0),
        (Some("state"), false, 1),
        (Some("state"), true, 0),
        (Some("input"), true, 0),
        (Some("context"), true, 0),
    ] {
        let m = behavior_core::admit(&model::module(role, positive).to_string()).unwrap();
        let x = evaluate_read(
            &m,
            &ReadSource::Declared("inspect".into()),
            &model::request(role, n).to_string(),
        );
        assert!(ReadRecord::from_json(&x.record.to_json_string()).is_ok());
        records.push(x.record.as_json().clone());
    }
    let m = behavior_core::admit(&model::module(Some("input"), false).to_string()).unwrap();
    let refused = evaluate_read(&m, &ReadSource::Declared("inspect".into()), "{");
    assert!(ReadRecord::from_json(&refused.record.to_json_string()).is_ok());
    records.push(refused.record.as_json().clone());
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../..");
    let program = r#"
import copy,json,sys
from jsonschema import Draft202012Validator
s=json.load(open('schema/read-record-v2.schema.json'))
Draft202012Validator.check_schema(s)
v=Draft202012Validator(s)
for record in json.load(sys.stdin):
    v.validate(record)
    bad=copy.deepcopy(record);bad['diagnostic_location']={}
    assert not v.is_valid(bad)
    if record['result']=='EVALUATION_ERROR':
        bad=copy.deepcopy(record);bad.pop('facts')
        assert not v.is_valid(bad)
    if 'refused_request' in record:
        bad=copy.deepcopy(record);bad['observed']=[['c','measurements']]
        assert not v.is_valid(bad)
"#;
    let mut child = Command::new("python3")
        .args(["-c", program])
        .current_dir(root)
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .unwrap();
    child
        .stdin
        .take()
        .unwrap()
        .write_all(serde_json::to_string(&records).unwrap().as_bytes())
        .unwrap();
    let output = child.wait_with_output().unwrap();
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
}

#[test]
fn errors_while_validating_an_argument_do_not_claim_read_body_evaluation() {
    for role in ["input", "context"] {
        let mut w = model::module(Some(role), false);
        w["constraints"][0]["body"] = model::op("gt", vec![model::ratio("c"), model::integer(0)]);
        let m = behavior_core::admit(&w.to_string()).unwrap();
        let x = evaluate_read(
            &m,
            &ReadSource::Declared("inspect".into()),
            &model::request(Some(role), 0).to_string(),
        );
        assert_eq!(
            x.record.result(),
            if role == "input" {
                "INVALID_INPUT"
            } else {
                "INVALID_CONTEXT"
            }
        );
        assert_eq!(x.record.as_json()["derived"], serde_json::json!([]));
        assert!(replay_read(&m, &x.record.to_json_string()).matches);
    }
}
