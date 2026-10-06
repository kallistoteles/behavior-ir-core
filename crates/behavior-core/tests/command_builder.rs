#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Compiled nonpassing new API; ownership is operational, never semantic identity.
use behavior_core::builder::{Builder, CommandEmissionSpec, ScopeSite, SemanticProfile};
use behavior_core::wire::{Loc, Role, WField, WParam, WType};
use serde_json::{Value, json};
use std::collections::BTreeMap;
fn loc() -> Loc {
    Loc {
        file: "/models/builder.beh".into(),
        line: 1,
    }
}
fn builder() -> Builder {
    let mut b = Builder::with_semantic_profile(SemanticProfile::CommandIntents);
    b.declare_entity(
        "Order",
        vec![WField {
            name: "submitted".into(),
            ty: WType::Bool,
            loc: loc(),
        }],
        loc(),
    )
    .unwrap();
    b.add_command(
        "Receipt",
        vec![WField {
            name: "sent".into(),
            ty: WType::Bool,
            loc: loc(),
        }],
        loc(),
    )
    .unwrap();
    b
}
fn params() -> Vec<WParam> {
    vec![WParam {
        name: "order".into(),
        role: Some(Role::State),
        ty: WType::Entity("Order".into()),
    }]
}
#[test]
fn empty_explicit_profile_is_retained_through_wire_roundtrip() {
    let b = Builder::with_semantic_profile(SemanticProfile::CommandIntents);
    let m = b.finish(None).unwrap();
    let text = behavior_core::serialize::to_wire_json(&m);
    let w: Value = serde_json::from_str(&text).unwrap();
    assert_eq!(w["ir_version"], "0.8");
    assert_eq!(w["commands"], json!([]));
    let r = behavior_core::admit(&text).unwrap();
    assert_eq!(m.behavior_version(), r.behavior_version());
    assert_eq!(text, behavior_core::serialize::to_wire_json(&r));
}
#[test]
fn old_builder_keeps_legacy_empty_identity_and_wire_shape() {
    let m = Builder::new().finish(None).unwrap();
    let text = behavior_core::serialize::to_wire_json(&m);
    let w: Value = serde_json::from_str(&text).unwrap();
    assert_eq!(w["ir_version"], "0.4");
    assert!(w.get("commands").is_none());
    let old=behavior_core::admit(r#"{"ir_version":"0.4","enums":[],"nominals":[],"entities":[],"derived":[],"invariants":[],"constraints":[],"actions":[]}"#).unwrap();
    assert_eq!(m.behavior_version(), old.behavior_version());
}
#[test]
fn new_command_action_is_built_and_readmitted_with_explicit_guard() {
    let mut b = builder();
    b.push_scope(ScopeSite::Action, params(), loc()).unwrap();
    let payload = b.field("order", "submitted", loc()).unwrap();
    let value = b.lit(WType::Bool, json!(true), loc()).unwrap();
    b.add_action_with_commands(
        "submit",
        params(),
        vec![],
        vec![("order".into(), "submitted".into(), value, loc())],
        vec![],
        vec![CommandEmissionSpec {
            command: "Receipt".into(),
            when: None,
            payload: BTreeMap::from([("sent".into(), payload)]),
            loc: loc(),
        }],
        vec![],
        loc(),
    )
    .unwrap();
    b.pop_scope();
    let m = b.finish(None).unwrap();
    let text = behavior_core::serialize::to_wire_json(&m);
    let w: Value = serde_json::from_str(&text).unwrap();
    assert_eq!(w["actions"][0]["command_effects"][0]["when"]["value"], true);
    assert_eq!(
        m.behavior_version(),
        behavior_core::admit(&text).unwrap().behavior_version()
    );
}
#[test]
fn foreign_builder_nodes_are_refused_before_they_enter_command_definitions() {
    let mut b = builder();
    let mut other = builder();
    let foreign = other.lit(WType::Bool, json!(true), loc()).unwrap();
    b.push_scope(ScopeSite::Action, params(), loc()).unwrap();
    let error = b
        .add_action_with_commands(
            "submit",
            params(),
            vec![],
            vec![],
            vec![],
            vec![CommandEmissionSpec {
                command: "Receipt".into(),
                when: None,
                payload: BTreeMap::from([("sent".into(), foreign)]),
                loc: loc(),
            }],
            vec![],
            loc(),
        )
        .unwrap_err();
    assert_eq!(error.code, "BUILDER_MISMATCH");
}
#[test]
fn a_bound_node_cannot_be_rebound_by_reusing_its_spelling_in_another_scope() {
    let mut b = builder();
    b.push_scope(ScopeSite::Action, params(), loc()).unwrap();
    let stale = b.field("order", "submitted", loc()).unwrap();
    b.pop_scope();
    b.push_scope(ScopeSite::Action, params(), loc()).unwrap();
    let error = b
        .add_action_with_commands(
            "submit",
            params(),
            vec![],
            vec![],
            vec![],
            vec![CommandEmissionSpec {
                command: "Receipt".into(),
                when: None,
                payload: BTreeMap::from([("sent".into(), stale)]),
                loc: loc(),
            }],
            vec![],
            loc(),
        )
        .unwrap_err();
    assert_eq!(error.code, "SCOPE_MISMATCH");
}
#[test]
fn existing_add_action_is_available_in_new_profile_with_empty_commands() {
    let mut b = builder();
    b.push_scope(ScopeSite::Action, params(), loc()).unwrap();
    let value = b.lit(WType::Bool, json!(true), loc()).unwrap();
    b.add_action(
        "submit",
        params(),
        vec![],
        vec![("order".into(), "submitted".into(), value, loc())],
        vec![],
        vec![],
        loc(),
    )
    .unwrap();
    b.pop_scope();
    let w: Value = serde_json::from_str(&behavior_core::serialize::to_wire_json(
        &b.finish(None).unwrap(),
    ))
    .unwrap();
    assert_eq!(w["ir_version"], "0.8");
    assert_eq!(w["actions"][0]["command_effects"], json!([]));
}
