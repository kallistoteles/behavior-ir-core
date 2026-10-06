#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/commands.rs"]
mod model;
use behavior_core::{DecisionRecord, admit, evaluate};
use serde_json::{Value, json};
fn record(w: &Value) -> Value {
    evaluate(
        &admit(&w.to_string()).unwrap(),
        &model::request(2, true).to_string(),
    )
    .as_json()
    .clone()
}
#[test]
fn closed_record_round_trip_preserves_intents_and_duplicate_counts() {
    let mut w = model::module();
    let e = w["actions"][0]["command_effects"][0].clone();
    model::emissions_mut(&mut w).push(e);
    let r = record(&w);
    let decoded = DecisionRecord::from_json(&r.to_string()).unwrap();
    assert_eq!(decoded.as_json(), &r);
    assert_eq!(decoded.command_intents().len(), 2);
    assert_eq!(
        decoded.command_intents().intents()[0],
        decoded.command_intents().intents()[1]
    );
}
#[test]
fn closed_record_refuses_unknown_duplicate_and_source_metadata_keys() {
    let r = record(&model::module());
    DecisionRecord::from_json(&r.to_string()).unwrap();
    for path in ["root", "trace", "declaration", "intent"] {
        let mut bad = r.clone();
        match path {
            "root" => bad["hidden"] = json!(true),
            "trace" => bad["trace"][0]["loc"] = model::loc(),
            "declaration" => bad["commands"]["declarations"][0]["hidden"] = json!(1),
            _ => bad["commands"]["intents"][0]["command_occurrence_id"] = json!("uncommitted"),
        }
        assert!(
            DecisionRecord::from_json(&bad.to_string()).is_err(),
            "{path}"
        );
    }
    let bad = r.to_string().replacen(
        "\"record_version\":\"0.7\"",
        "\"record_version\":\"0.7\",\"record_version\":\"0.7\"",
        1,
    );
    assert!(DecisionRecord::from_json(&bad).is_err());
}
#[test]
fn payload_and_archived_declaration_hashes_are_recomputed() {
    let r = record(&model::module());
    DecisionRecord::from_json(&r.to_string()).unwrap();
    for change in 0..5 {
        let mut bad = r.clone();
        match change {
            0 => bad["commands"]["intents"][0]["payload"]["recipient"] = json!(17),
            1 => bad["commands"]["intents"][0]["payload"]["recipient"] = json!("changed"),
            2 => bad["commands"]["declarations"][0]["name"] = json!("Renamed"),
            3 => bad["commands"]["declarations"][0]["fields"][0]["type"] = json!({"t":"bool"}),
            _ => bad["result"] = json!("DENY"),
        }
        assert!(
            DecisionRecord::from_json(&bad.to_string()).is_err(),
            "{change}"
        );
    }
}
#[test]
fn named_scalar_archive_is_self_contained_and_authenticates_historical_meaning() {
    let mut w = model::module();
    w["enums"] = json!([{"name":"Channel","values":["EMAIL","SMS"],"loc":model::loc()}]);
    w["commands"] = json!([model::declaration(
        "Receipt",
        &[
            ("channel", json!({"t":"enum","name":"Channel"})),
            (
                "optional",
                json!({"t":"option","of":{"t":"enum","name":"Channel"}})
            )
        ]
    )]);
    w["actions"][0]["command_effects"][0]["payload"] = json!({"channel":model::lit(json!({"t":"enum","name":"Channel"}),json!("EMAIL")),"optional":model::lit(json!({"t":"option","of":{"t":"enum","name":"Channel"}}),Value::Null)});
    let r = record(&w);
    assert_eq!(r["commands"]["types"].as_array().unwrap().len(), 1);
    DecisionRecord::from_json(&r.to_string()).unwrap();
    for mutate in 0..3 {
        let mut bad = r.clone();
        match mutate {
            0 => bad["commands"]["types"][0]["values"]
                .as_array_mut()
                .unwrap()
                .reverse(),
            1 => bad["commands"]["intents"][0]["payload"]["channel"] = json!("UNKNOWN"),
            _ => bad["commands"]["types"] = json!([]),
        }
        assert!(DecisionRecord::from_json(&bad.to_string()).is_err());
    }
}
#[test]
fn fixed_payload_text_and_type_grid_are_canonical() {
    let r = record(&model::ratio_module(model::boolean(true)));
    DecisionRecord::from_json(&r.to_string()).unwrap();
    assert_eq!(r["commands"]["intents"][0]["payload"]["ratio"], "5.0000");
    for value in [json!("5"), json!("5.00001"), json!(5)] {
        let mut bad = r.clone();
        bad["commands"]["intents"][0]["payload"]["ratio"] = value;
        assert!(DecisionRecord::from_json(&bad.to_string()).is_err());
    }
    let mut bad = r;
    bad["commands"]["types"][0]["scale"] = json!(3);
    assert!(DecisionRecord::from_json(&bad.to_string()).is_err());
}
#[test]
fn semantic_trace_outcomes_and_command_sites_are_closed_products() {
    let r = record(&model::module());
    DecisionRecord::from_json(&r.to_string()).unwrap();
    for mutation in 0..4 {
        let mut bad = r.clone();
        let payload = bad["trace"]
            .as_array_mut()
            .unwrap()
            .iter_mut()
            .find(|s| s["phase"] == "command_payload")
            .unwrap();
        match mutation {
            0 => payload["outcome"]["hidden"] = json!(true),
            1 => {
                payload.as_object_mut().unwrap().remove("emission");
            }
            2 => payload["outcome"] = json!(false),
            _ => payload["canonical_index"] = Value::Null,
        }
        assert!(
            DecisionRecord::from_json(&bad.to_string()).is_err(),
            "mutation {mutation}"
        );
    }
}
#[test]
fn invocation_diagnostics_are_detached_and_do_not_change_semantic_identity() {
    let w = model::module();
    let mut relocated = w.clone();
    model::relocation(&mut relocated, "private/path.behavior");
    let invoke = |wire: &Value| {
        behavior_core::invocation::invoke_document(
            &admit(&wire.to_string()).unwrap(),
            &model::invocation().to_string(),
            &model::snapshot(2, true).to_string(),
            None,
        )
        .unwrap()
    };
    let first = invoke(&w);
    let second = invoke(&relocated);
    assert_eq!(first.as_json(), second.as_json());
    assert_eq!(first.record_id(), second.record_id());
    assert!(
        first.diagnostics()["trace"]
            .as_array()
            .is_some_and(|a| !a.is_empty())
    );
    assert_ne!(first.diagnostics(), second.diagnostics());
}
