#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/commands.rs"]
mod model;
use behavior_core::facts::Facts;
use behavior_core::{admit, evaluate, evaluate_with};
use serde_json::{Value, json};
fn eval(w: &Value, cost: i64, notifications: bool) -> Value {
    let m = admit(&w.to_string()).unwrap();
    evaluate(&m, &model::request(cost, notifications).to_string())
        .as_json()
        .clone()
}
#[test]
fn successful_mixed_evaluation_is_candidate_data_and_original_state_remains() {
    let r = eval(&model::module(), 2, true);
    assert_eq!(r["result"], "ALLOW");
    assert_eq!(r["record_version"], "0.7");
    assert_eq!(r["semantic_profile"], "0.8");
    assert_eq!(r["state"]["order"]["submitted"], false);
    assert_eq!(r["changes"][0]["new"], true);
    assert_eq!(r["commands"]["intents"].as_array().unwrap().len(), 1);
    assert_eq!(
        r["commands"]["intents"][0]["payload"],
        json!({"recipient":"customer-1"})
    );
    assert!(
        r["commands"]["intents"][0]
            .get("command_occurrence_id")
            .is_none()
    );
}
#[test]
fn false_guard_preserves_business_transition_and_observes_no_payload_dependency() {
    let w = model::ratio_module(model::op(
        "ne",
        vec![model::field("cost"), model::integer(0)],
    ));
    let m = admit(&w.to_string()).unwrap();
    let mut req = model::request(0, true);
    let facts = Facts::from_json(&req["facts"]).unwrap();
    req.as_object_mut().unwrap().remove("facts");
    let (r, observed) = evaluate_with(&m, &req.to_string(), &facts);
    assert_eq!(r.result(), "ALLOW");
    assert_eq!(r.as_json()["commands"]["intents"], json!([]));
    assert_eq!(r.as_json()["changes"][0]["new"], true);
    assert!(observed.fields.iter().any(|(_, f)| f == "cost"));
    assert!(
        !observed.fields.iter().any(|(_, f)| f == "income"),
        "false payload read income: {:?}",
        observed.fields
    );
}
#[test]
fn true_guard_payload_failure_aborts_every_state_and_command_effect() {
    let mut w = model::ratio_module(model::boolean(true));
    w["commands"]
        .as_array_mut()
        .unwrap()
        .push(model::declaration(
            "Receipt",
            &[("recipient", json!({"t":"string"}))],
        ));
    model::emissions_mut(&mut w).push(model::emission(
        "Receipt",
        None,
        json!({"recipient":model::string("x")}),
    ));
    let r = eval(&w, 0, true);
    assert_eq!(r["result"], "ERROR");
    assert_eq!(r["changes"], json!([]));
    assert_eq!(r["commands"]["intents"], json!([]));
}
#[test]
fn commands_use_original_state_after_proposed_state_effects() {
    let mut w = model::module();
    w["commands"] = json!([model::declaration(
        "Receipt",
        &[("already_submitted", json!({"t":"bool"}))]
    )]);
    w["actions"][0]["command_effects"][0]["payload"] =
        json!({"already_submitted":model::field("submitted")});
    let r = eval(&w, 2, true);
    assert_eq!(r["result"], "ALLOW");
    assert_eq!(
        r["commands"]["intents"][0]["payload"]["already_submitted"],
        false
    );
    assert_eq!(r["changes"][0]["new"], true);
}
#[test]
fn two_reachable_errors_select_one_canonical_error_after_permutation() {
    let mut a = model::ratio_module(model::boolean(true));
    a["commands"]
        .as_array_mut()
        .unwrap()
        .push(model::declaration(
            "Overflow",
            &[("value", json!({"t":"int"}))],
        ));
    model::emissions_mut(&mut a).push(model::emission(
        "Overflow",
        None,
        json!({"value":model::op("add",vec![model::field("income"),model::integer(i64::MAX)])}),
    ));
    let mut b = a.clone();
    model::emissions_mut(&mut b).reverse();
    model::relocation(&mut b, "/changed/location.beh");
    let ar = eval(&a, 0, true);
    let br = eval(&b, 0, true);
    assert_eq!(ar["result"], "ERROR");
    assert_eq!(ar, br);
}
#[test]
fn duplicate_intents_preserve_multiplicity_and_share_content_identity() {
    let mut a = model::module();
    let e = a["actions"][0]["command_effects"][0].clone();
    model::emissions_mut(&mut a).push(e);
    let r = eval(&a, 2, true);
    let intents = r["commands"]["intents"].as_array().unwrap();
    assert_eq!(intents.len(), 2);
    assert_eq!(intents[0], intents[1]);
}
#[test]
fn precondition_denial_never_exposes_commands_and_false_guard_is_not_denial() {
    let mut w = model::module();
    w["actions"][0]["preconditions"] = json!([{"expr":model::boolean(false),"loc":model::loc()}]);
    let r = eval(&w, 2, true);
    assert_eq!(r["result"], "DENY");
    assert_eq!(r["commands"]["intents"], json!([]));
    assert_eq!(r["changes"], json!([]));
    assert_eq!(eval(&model::module(), 2, false)["result"], "ALLOW");
}
#[test]
fn malformed_input_has_new_record_version_and_no_claim_of_evaluation() {
    let m = admit(&model::module().to_string()).unwrap();
    let r = evaluate(&m, "{broken");
    assert_eq!(r.result(), "INVALID_INPUT");
    assert_eq!(r.as_json()["record_version"], "0.7");
    assert_eq!(r.as_json()["trace"], json!([]));
    assert_eq!(r.as_json()["commands"]["intents"], json!([]));
}
#[test]
fn semantic_record_contains_no_source_provenance_on_any_effect_path() {
    for (cost, enabled) in [(2, true), (0, false)] {
        let a = model::module();
        let mut b = a.clone();
        model::relocation(&mut b, "/other/checkout.beh");
        let ar = eval(&a, cost, enabled);
        assert_eq!(ar, eval(&b, cost, enabled));
        let text = ar.to_string();
        assert!(!text.contains("commands.beh"));
        assert!(!text.contains("\"loc\""));
        assert!(!text.contains("\"text\""));
    }
}
#[test]
fn typed_identity_payload_is_inert_and_does_not_require_external_existence() {
    let mut w = model::module();
    w["commands"] = json!([model::declaration(
        "Receipt",
        &[("identity", json!({"t":"id","entity":"Order"}))]
    )]);
    w["actions"][0]["command_effects"][0]["payload"] =
        json!({"identity":model::lit(json!({"t":"id","entity":"Order"}),json!("does-not-exist"))});
    let m = admit(&w.to_string()).unwrap();
    let mut req = model::request(2, true);
    let facts = Facts::from_json(&req["facts"]).unwrap();
    req.as_object_mut().unwrap().remove("facts");
    let (r, observed) = evaluate_with(&m, &req.to_string(), &facts);
    assert_eq!(r.result(), "ALLOW");
    assert_eq!(
        r.as_json()["commands"]["intents"][0]["payload"]["identity"],
        "does-not-exist"
    );
    assert!(
        !observed
            .facts
            .existence
            .contains_key(&("Order".into(), "does-not-exist".into()))
    );
}

#[test]
fn plain_new_profile_requires_a_complete_valid_snapshot() {
    let mut w = model::module();
    w["invariants"] = json!([{"name":"positive_cost","entity":"Order","param":"order","body":model::op("gt",vec![model::field("cost"),model::integer(0)]),"loc":model::loc()}]);
    let m = admit(&w.to_string()).unwrap();
    let valid = model::request(2, true);
    assert_eq!(evaluate(&m, &valid.to_string()).result(), "ALLOW");
    let mut hidden_invalid = valid.clone();
    let mut extra = model::value(0, true);
    extra["id"] = json!("hidden-order");
    hidden_invalid["facts"]["universe"][0]["members"]
        .as_array_mut()
        .unwrap()
        .push(extra);
    assert_eq!(
        evaluate(&m, &hidden_invalid.to_string()).result(),
        "INVALID_INPUT"
    );
    let mut incomplete = valid;
    incomplete.as_object_mut().unwrap().remove("facts");
    assert_eq!(
        evaluate(&m, &incomplete.to_string()).result(),
        "INVALID_INPUT"
    );
}
