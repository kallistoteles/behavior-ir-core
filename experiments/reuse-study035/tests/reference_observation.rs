#![allow(clippy::unwrap_used)]
use reuse_study035::observation::compare;
use serde_json::{Value, json};
fn original() -> Value {
    serde_json::from_str(include_str!("../expected/reference-observation.json")).unwrap()
}
#[test]
fn pinned_original_module_is_real_and_identity_matches() {
    let m = behavior_engine::admit(include_str!("../expected/ld8-module.json")).unwrap();
    assert_eq!(
        m.behavior_version(),
        "sha256:f54560a37b47ca3e97826a78ab142b1a6870dc98d3c19076f2b73096780dc211"
    );
}
#[test]
fn full_original_value_compares_and_missing_field_fails() {
    let a = original();
    assert!(compare(&a, &a).is_ok());
    let mut b = a.clone();
    b["invocation"]
        .as_object_mut()
        .unwrap()
        .remove("binding_facts");
    assert!(compare(&a, &b).is_err());
}
#[test]
fn stale_coordinates_fail_even_if_output_state_matches() {
    let a = original();
    let mut b = a.clone();
    b["before"]["position"] = json!(1);
    assert!(compare(&a, &b).is_err());
}
#[test]
fn safe_but_wrong_finish_is_not_equivalent() {
    let a = original();
    let mut b = a.clone();
    b["state_facts"]["children"]["c1"]["phase"] = json!("Active");
    assert!(compare(&a, &b).is_err());
}
#[test]
fn command_order_and_first_error_are_observable() {
    let a = json!({"commands":[{"kind":"Notify","n":1},{"kind":"Notify","n":2}],"error":"FIRST"});
    let b = json!({"commands":[{"kind":"Notify","n":2},{"kind":"Notify","n":1}],"error":"SECOND"});
    assert!(compare(&a, &b).is_err());
}

#[test]
fn builder_port_must_preserve_exact_original_module() {
    let m = reuse_study035::fixtures::module(false, false).unwrap();
    assert_eq!(
        behavior_engine::serialize::to_wire_json(&m),
        include_str!("../expected/ld8-module.json").trim()
    );
}
