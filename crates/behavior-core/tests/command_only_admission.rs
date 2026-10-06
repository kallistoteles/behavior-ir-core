#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/commands.rs"]
mod model;
use behavior_core::builder::{Builder, CommandEmissionSpec, ScopeSite};
use behavior_core::semantic::types::SemanticProfile;
use behavior_core::wire::{Loc, WField, WType};
use behavior_core::{admission_report, admit, evaluate};
use serde_json::json;
use std::collections::BTreeMap;
#[test]
fn zero_state_bindings_are_valid_for_a_command_effect() {
    let m = admit(&model::command_only_module(true).to_string()).unwrap();
    let r = evaluate(&m, &model::command_only_request("customer-1").to_string());
    assert_eq!(r.result(), "ALLOW");
    assert_eq!(r.as_json()["changes"], json!([]));
    assert_eq!(r.as_json()["state"], json!({}));
    assert_eq!(r.command_intents().len(), 1);
}
#[test]
fn all_false_guards_remain_structurally_effectful_without_bindings() {
    let m = admit(&model::command_only_module(false).to_string()).unwrap();
    let r = evaluate(&m, &model::command_only_request("customer-1").to_string());
    assert_eq!(r.result(), "ALLOW");
    assert!(r.command_intents().is_empty());
    assert_eq!(r.as_json()["changes"], json!([]));
}
#[test]
fn declarations_and_preconditions_do_not_make_an_action_effectful() {
    for with_binding in [false, true] {
        let mut w = if with_binding {
            model::module()
        } else {
            model::command_only_module(true)
        };
        w["actions"][0]["effects"] = json!([]);
        w["actions"][0]["command_effects"] = json!([]);
        w["actions"][0]["preconditions"] =
            json!([{"expr":model::boolean(true),"loc":model::loc()}]);
        let r = admission_report(&w.to_string());
        assert!(!r.ok);
        assert!(
            r.errors.iter().any(|e| e.code == "EFFECTLESS_ACTION"),
            "{:?}",
            r.errors
        );
    }
}
#[test]
fn bound_legacy_decision_only_actions_keep_their_admission_and_record() {
    let mut w = model::module();
    w["ir_version"] = json!("0.4");
    w.as_object_mut().unwrap().remove("commands");
    w.as_object_mut().unwrap().remove("reads");
    let a = w["actions"][0].as_object_mut().unwrap();
    a.remove("command_effects");
    a.insert("effects".into(), json!([]));
    let m = admit(&w.to_string()).unwrap();
    let mut req = model::request(2, true);
    req.as_object_mut().unwrap().remove("facts");
    let r = evaluate(&m, &req.to_string());
    assert_eq!(r.result(), "ALLOW");
    assert_ne!(r.as_json()["record_version"], "0.7");
    assert!(r.as_json().get("commands").is_none());
    w["actions"][0]["params"] = json!([]);
    let result = admission_report(&w.to_string());
    assert!(!result.ok);
    assert!(result.errors.iter().any(|e| e.code == "ARITY_MISMATCH"));
}
#[test]
fn builder_can_construct_a_command_only_action_without_synthetic_state() {
    let loc = Loc {
        file: "receipt.beh".into(),
        line: 1,
    };
    let mut b = Builder::with_semantic_profile(SemanticProfile::CommandIntents);
    b.add_command(
        "Receipt",
        vec![WField {
            name: "recipient".into(),
            ty: WType::String,
            loc: loc.clone(),
        }],
        loc.clone(),
    )
    .unwrap();
    b.push_scope(ScopeSite::Action, vec![], loc.clone())
        .unwrap();
    let payload = b
        .lit(WType::String, json!("customer-1"), loc.clone())
        .unwrap();
    b.add_action_with_commands(
        "receipt",
        vec![],
        vec![],
        vec![],
        vec![],
        vec![CommandEmissionSpec {
            command: "Receipt".into(),
            when: None,
            payload: BTreeMap::from([("recipient".into(), payload)]),
            loc: loc.clone(),
        }],
        vec![],
        loc,
    )
    .unwrap();
    b.pop_scope();
    let m = b.finish(None).unwrap();
    assert!(m.entities().is_empty());
    assert!(m.action("receipt").unwrap().params().is_empty());
}
#[test]
fn bound_new_profile_action_without_state_or_command_effects_is_refused() {
    let mut w = model::module();
    w["actions"][0]["effects"] = json!([]);
    w["actions"][0]["command_effects"] = json!([]);
    let r = admission_report(&w.to_string());
    assert!(!r.ok);
    assert!(
        r.errors.iter().any(|e| e.code == "EFFECTLESS_ACTION"),
        "{:?}",
        r.errors
    );
}
