#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_core::invocation::{EntityKey, RequestedInvocation, Resolver, resolve};
use serde_json::{Value, json};
use std::collections::BTreeMap;

struct State {
    values: BTreeMap<EntityKey, Value>,
}
impl Resolver for State {
    fn exists(&self, key: &EntityKey) -> bool {
        self.values.contains_key(key)
    }
    fn value(&self, key: &EntityKey) -> Option<Value> {
        self.values.get(key).cloned()
    }
    fn data_version(&self) -> String {
        "exact:1".into()
    }
}
fn setup() -> (behavior_core::semantic::module::Module, State) {
    let mut wire = common::json(&common::fixtures().join("invocation/modules/ledger.json"));
    let probes:Vec<Value>=wire["actions"].as_array().unwrap().iter().map(|action|json!({
        "name":format!("probe_{}",action["name"].as_str().unwrap()),"params":action["params"],"loc":{"file":"probe","line":1},
        "body":{"value":{"op":"lit","type":{"t":"bool"},"value":true,"loc":{"file":"probe","line":1}}}
    })).collect();
    wire["reads"].as_array_mut().unwrap().extend(probes);
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let snapshot = common::json(&common::fixtures().join("invocation/snapshots/s1.json"));
    let values = snapshot["entities"]
        .as_array()
        .unwrap()
        .iter()
        .map(|e| {
            (
                EntityKey {
                    entity: e["entity"].as_str().unwrap().into(),
                    id: e["value"]["id"].as_str().unwrap().into(),
                },
                e["value"].clone(),
            )
        })
        .collect();
    (module, State { values })
}
fn request(capability: &str, bindings: Value) -> RequestedInvocation {
    RequestedInvocation::decode(
        &json!({"format":"behavior.invocation.v1","capability":capability,
        "bindings":bindings,"input":{},"context":{}})
        .to_string(),
    )
    .unwrap()
    .0
    .unwrap()
}
fn id(entity: &str, id: &str) -> Value {
    json!({"entity":entity,"id":id})
}

#[test]
fn zero_through_three_bindings_resolve_identically_for_reads_and_actions() {
    let (module, state) = setup();
    for (name, bindings, count) in [
        ("register_customer", json!({}), 0),
        (
            "suspend_customer",
            json!({"customer":id("Customer","c1")}),
            1,
        ),
        (
            "transfer",
            json!({"from_":id("Account","a1"),"to":id("Account","a2")}),
            2,
        ),
        (
            "settle",
            json!({"a":id("Account","a1"),"b":id("Account","a2"),"c":id("Account","a3")}),
            3,
        ),
    ] {
        let action_request = request(name, bindings.clone());
        let read_request = request(&format!("probe_{name}"), bindings);
        let action = resolve(&module, &action_request, &state).unwrap();
        let read = resolve(&module, &read_request, &state).unwrap();
        assert_eq!(action.state(), read.state());
        assert_eq!(action.binding_facts(), read.binding_facts());
        assert_eq!(action.binding_facts().len(), count);
        assert_eq!(action.data_version(), "exact:1");
    }
}

#[test]
fn unknown_capability_does_not_cascade_into_binding_problems() {
    let (module, state) = setup();
    let refusal = resolve(
        &module,
        &request("missing", json!({"extra":id("Account","missing")})),
        &state,
    )
    .unwrap_err();
    assert_eq!(refusal.problems.len(), 1);
    assert_eq!(refusal.problems[0].code, "UNKNOWN_CAPABILITY");
    assert_eq!(refusal.problems[0].stage, "DECODE");
    assert!(refusal.binding_facts.is_empty());
}

#[test]
fn independent_missing_extra_and_non_state_bindings_are_collected() {
    let (module, state) = setup();
    let refusal = resolve(
        &module,
        &request(
            "transfer",
            json!({"extra":id("Account","a1"),"amount":id("Account","a1")}),
        ),
        &state,
    )
    .unwrap_err();
    assert_eq!(
        refusal
            .problems
            .iter()
            .map(|p| (p.code.as_str(), p.path.as_str()))
            .collect::<Vec<_>>(),
        [
            ("MISSING_BINDING", "bindings.from_"),
            ("MISSING_BINDING", "bindings.to"),
            ("EXTRA_BINDING", "bindings.extra"),
            ("NOT_A_STATE_PARAMETER", "bindings.amount")
        ]
    );
    assert!(refusal.binding_facts.is_empty());
}

#[test]
fn unknown_wrong_type_and_alias_refusals_have_identical_kind_independent_evidence() {
    let (module, state) = setup();
    for (bindings, reason, statuses) in [
        (
            json!({"from_":id("Account","absent"),"to":id("Account","a2")}),
            "UNKNOWN_BINDING",
            vec!["unknown", "bound"],
        ),
        (
            json!({"from_":id("Customer","c1"),"to":id("Account","a2")}),
            "WRONG_ENTITY_TYPE",
            vec!["wrong_type", "bound"],
        ),
        (
            json!({"from_":id("Account","a1"),"to":id("Account","a1")}),
            "STATE_ALIAS_NOT_ALLOWED",
            vec!["bound", "bound"],
        ),
    ] {
        let a = resolve(&module, &request("transfer", bindings.clone()), &state).unwrap_err();
        let r = resolve(&module, &request("probe_transfer", bindings), &state).unwrap_err();
        assert_eq!(
            serde_json::to_value(&a.problems).unwrap(),
            serde_json::to_value(&r.problems).unwrap()
        );
        assert_eq!(a.problems.len(), 1);
        assert_eq!(a.problems[0].code, "INVALID_BINDING");
        assert_eq!(a.problems[0].reason.as_deref(), Some(reason));
        assert_eq!(
            a.binding_facts
                .iter()
                .map(|f| f.status.as_str())
                .collect::<Vec<_>>(),
            statuses
        );
    }
}

#[test]
fn a_resolver_cannot_substitute_a_different_entity_identity() {
    let (module, mut state) = setup();
    let key = EntityKey {
        entity: "Customer".into(),
        id: "c1".into(),
    };
    state.values.get_mut(&key).unwrap()["id"] = json!("c2");
    let refusal = resolve(
        &module,
        &request("suspend_customer", json!({"customer":id("Customer","c1")})),
        &state,
    )
    .unwrap_err();
    assert_eq!(refusal.problems[0].code, "INCONSISTENT_FACTS");
}
