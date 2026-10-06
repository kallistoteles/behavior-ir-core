#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/read_soundness.rs"]
mod model;

use behavior_core::read::{ReadRecord, ReadSource, admit_read, evaluate_read, replay_read};
use serde_json::{Value, json};

fn count(query: Value) -> Value {
    model::op("count", vec![query])
}

fn value_module(body: Value) -> Value {
    let mut w = model::module(None, false);
    w["constraints"] = json!([]);
    w["reads"][0]["body"] = json!({"value": body});
    w
}

fn assert_replays(m: &behavior_core::semantic::module::Module, record: &ReadRecord) {
    assert!(ReadRecord::from_json(&record.to_json_string()).is_ok());
    let r = replay_read(m, &record.to_json_string());
    assert!(r.matches, "{:?}: {}", r.diff, record.to_json_string());
}

#[test]
fn a_query_used_only_in_a_declared_read_replays_its_success_and_empty_result() {
    let m = behavior_core::admit(&value_module(count(model::select())).to_string()).unwrap();
    for empty in [false, true] {
        let mut request = model::request(None, 1);
        if empty {
            request["facts"]["universe"][0]["members"] = json!([]);
        }
        let x = evaluate_read(
            &m,
            &ReadSource::Declared("inspect".into()),
            &request.to_string(),
        );
        assert_eq!(x.record.result(), "VALUE");
        assert_eq!(x.record.as_json()["value"], json!(usize::from(!empty)));
        assert_replays(&m, &x.record);
        let mut tampered = x.record.as_json().clone();
        tampered["facts"]["queries"][0]["members"] = if empty {
            json!([{"id":"c1"}])
        } else {
            json!([])
        };
        tampered["record_id"] = json!(behavior_core::read::record_id(&tampered).unwrap());
        assert!(!replay_read(&m, &tampered.to_string()).matches);
    }
}

#[test]
fn historical_v1_query_agreement_refusals_keep_their_original_interpretation() {
    let m = behavior_core::admit(&value_module(count(model::select())).to_string()).unwrap();
    let x = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &model::request(None, 1).to_string(),
    );
    assert_eq!(x.record.result(), "VALUE");
    let mut old = x.record.as_json().clone();
    let instance = old["facts"]["queries"][0]["instance"].as_str().unwrap();
    // v1 did not register queries appearing only in reads. Preserve the
    // historical refusal, even though current read validation accepts it.
    let message = format!(
        "facts: query fact for instance {instance} overlaps a complete universe but has an unknown definition"
    );
    old["format"] = json!("behavior.read_record.v1");
    old["result"] = json!("INVALID_INPUT");
    old["reasons"] = json!([{"code":"INCONSISTENT_FACTS","message":message}]);
    old["derived"] = json!([]);
    old["observed"] = json!([]);
    old.as_object_mut().unwrap().remove("value");
    old["record_id"] = json!(behavior_core::read::record_id(&old).unwrap());
    assert_replays(&m, &ReadRecord::from_json(&old.to_string()).unwrap());
}

#[test]
fn a_query_used_only_in_a_projection_replays_its_success() {
    let mut w = value_module(model::integer(1));
    w["reads"][0]["body"] =
        json!({"project":{"param":"c","over":model::select(),"items":[{"field":"measurements"}]}});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let x = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &model::request(None, 1).to_string(),
    );
    assert_eq!(x.record.result(), "VALUE");
    assert_replays(&m, &x.record);
}

#[test]
fn an_ad_hoc_read_supplies_its_own_query_definitions_for_replay() {
    let m = behavior_core::admit(&value_module(model::integer(1)).to_string()).unwrap();
    // The standalone read-document format remains 0.7; the module/runtime
    // profile is 0.8 and therefore produces current read evidence.
    let doc = json!({"ir_version":"0.7","read":{"name":"ad_hoc","params":[],"body":{"value":count(model::select())},"loc":model::loc()}});
    let read = admit_read(&m, &doc.to_string()).unwrap();
    let x = evaluate_read(
        &m,
        &ReadSource::AdHoc(Box::new(read)),
        &model::request(None, 1).to_string(),
    );
    assert_eq!(x.record.result(), "VALUE");
    assert_replays(&m, &x.record);
}

#[test]
fn read_only_fold_queries_replay_their_members_and_field_observations() {
    let body = json!({"op":"sum","param":"c","args":[model::select()],"body":model::field("c","measurements"),"loc":model::loc()});
    let m = behavior_core::admit(&value_module(body).to_string()).unwrap();
    let x = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &model::request(None, 3).to_string(),
    );
    assert_eq!(x.record.result(), "VALUE");
    assert_eq!(x.record.as_json()["value"], 3);
    assert!(
        !x.record.as_json()["facts"]["fields"]
            .as_array()
            .unwrap()
            .is_empty()
    );
    assert_replays(&m, &x.record);
}

#[test]
fn an_ad_hoc_query_replays_the_exact_captured_input() {
    let m = behavior_core::admit(&value_module(model::integer(1)).to_string()).unwrap();
    let threshold = json!({"op":"param","param":"threshold","loc":model::loc()});
    let query = model::filter(
        model::select(),
        model::op("ge", vec![model::field("c", "measurements"), threshold]),
    );
    let doc = json!({"ir_version":"0.7","read":{"name":"ad_hoc","params":[{"name":"threshold","role":"input","type":{"t":"int"}}],"body":{"value":count(query)},"loc":model::loc()}});
    let source = ReadSource::AdHoc(Box::new(admit_read(&m, &doc.to_string()).unwrap()));
    for threshold in [1, 2] {
        let mut request = model::request(None, 1);
        request["input"] = json!({"threshold":threshold});
        let x = evaluate_read(&m, &source, &request.to_string());
        assert_eq!(x.record.result(), "VALUE");
        assert_eq!(
            x.record.as_json()["value"],
            if threshold == 1 { 1 } else { 0 }
        );
        assert_replays(&m, &x.record);
    }
}

fn decimal_module() -> Value {
    let zero = json!({"op":"lit","type":{"t":"decimal"},"value":"0","loc":model::loc()});
    let query = model::filter(
        model::select(),
        model::op("gt", vec![model::field("c", "measurements"), zero]),
    );
    let mut w = value_module(count(query));
    w["entities"][0]["fields"][0]["type"] = json!({"t":"decimal"});
    // The query is already discoverable here, so decimal agreement is tested
    // independently of the read-query registry defect.
    w["derived"] = json!([{"name":"visible_count","kind":"derived","params":[],"body":w["reads"][0]["body"]["value"],"loc":model::loc()}]);
    w
}

#[test]
fn equivalent_exact_decimal_encodings_have_identical_replay_evidence() {
    let m = behavior_core::admit(&decimal_module().to_string()).unwrap();
    let mut canonical = None;
    for (encoding, expected) in [("1", 1), ("1.0", 1), ("1.00", 1), ("0.0", 0)] {
        let mut request = model::request(None, 1);
        request["facts"]["universe"][0]["members"][0]["measurements"] = json!(encoding);
        let x = evaluate_read(
            &m,
            &ReadSource::Declared("inspect".into()),
            &request.to_string(),
        );
        assert_eq!(x.record.result(), "VALUE");
        assert_eq!(x.record.as_json()["value"], expected);
        assert_replays(&m, &x.record);
        if expected == 1 {
            if let Some(ref first) = canonical {
                assert_eq!(first, &x.record.to_json_string());
            } else {
                canonical = Some(x.record.to_json_string());
            }
        }
    }
}

#[test]
fn semantically_equal_redundant_decimal_facts_are_accepted_and_replay() {
    let m = behavior_core::admit(&decimal_module().to_string()).unwrap();
    let mut request = model::request(None, 1);
    request["facts"]["universe"][0]["members"][0]["measurements"] = json!("1.0");
    request["facts"]["fields"] =
        json!([{"entity":"Culture","id":"c1","field":"measurements","value":"1.00"}]);
    let x = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &request.to_string(),
    );
    assert_eq!(x.record.result(), "VALUE");
    assert_replays(&m, &x.record);
    request["facts"]["fields"][0]["value"] = json!("2.0");
    let conflict = evaluate_read(
        &m,
        &ReadSource::Declared("inspect".into()),
        &request.to_string(),
    );
    assert_eq!(conflict.record.result(), "INVALID_STATE");
    assert_replays(&m, &conflict.record);
}

#[test]
fn strict_transport_refusals_are_self_contained_replayable_records() {
    let m = behavior_core::admit(&model::module(Some("input"), false).to_string()).unwrap();
    for raw in [
        r#"{"data_version":"soundness:1","state":{},"input":{"c":{"id":"c1","measurements":0,"measurements":1}},"context":{},"facts":{"universe":[{"entity":"Culture","members":[]}]}}"#,
        "{",
        "[]",
        r#"{"data_version":"soundness:1","input":[]}"#,
        r#"{"data_version":"soundness:1","input":{"c":{"id":"c1","measurements":1.0}}}"#,
        r#"{"input":{"c":{"id":"c1","measurements":1}}}"#,
    ] {
        let x = evaluate_read(&m, &ReadSource::Declared("inspect".into()), raw);
        assert_eq!(x.record.result(), "INVALID_INPUT");
        assert_eq!(x.record.as_json()["refused_request"], raw);
        assert_replays(&m, &x.record);
        assert_eq!(x.record.as_json()["derived"], json!([]));
        assert_eq!(x.record.as_json()["observed"], json!([]));
        let response: Value = serde_json::from_str(&x.response.to_json_string()).unwrap();
        assert!(response.get("refused_request").is_none());
    }
}

#[test]
fn transport_refusal_evidence_cannot_claim_a_valid_request_or_body_observations() {
    let m = behavior_core::admit(&model::module(Some("input"), false).to_string()).unwrap();
    let x = evaluate_read(&m, &ReadSource::Declared("inspect".into()), "{");
    for kind in ["valid_request", "observed"] {
        let mut forged = x.record.as_json().clone();
        if kind == "valid_request" {
            forged["refused_request"] = json!(model::request(Some("input"), 1).to_string());
        } else {
            forged["observed"] = json!([["c", "measurements"]]);
        }
        forged["record_id"] = json!(behavior_core::read::record_id(&forged).unwrap());
        assert!(ReadRecord::from_json(&forged.to_string()).is_err());
        assert!(!replay_read(&m, &forged.to_string()).matches);
    }
    let unknown = evaluate_read(&m, &ReadSource::Declared("unknown".into()), "{");
    assert_replays(&m, &unknown.record);
}
