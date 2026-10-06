#![allow(clippy::unwrap_used, clippy::expect_used)]
//! G2 Valid_B(S) is a whole-state predicate, not validity of just action bindings.
mod common;
use behavior_core::semantic::module::Module;
use behavior_store::documents::{EntityKey, EvidencePolicy, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use serde_json::{Value, json};
use std::collections::BTreeMap;

fn raw() -> Value {
    common::json(&common::fixtures().join("soundness/module.json"))
}
fn module(v: &Value) -> Module {
    behavior_core::admit(&v.to_string()).unwrap()
}
fn seed(x: i64, id: &str) -> SeedEntity {
    SeedEntity {
        entity: "E".into(),
        value: json!({"id":id,"x":x,"y":2}),
    }
}
fn weak() -> Module {
    let mut w = raw();
    w["constraints"] = json!([]);
    module(&w)
}
fn store(m: &Module, seed: Vec<SeedEntity>) -> Store<InMemoryBackend> {
    Store::create(
        InMemoryBackend::new(),
        m,
        genesis_for(m, EvidencePolicy::none(), seed),
    )
    .unwrap()
}
fn unchanged(s: &Store<InMemoryBackend>, before: &Value) {
    let current = json!({"head":s.backend().head().unwrap(),"first_record":s.backend().record(1).unwrap(),
        "entity":s.backend().version_at(&EntityKey{entity:"E".into(),id:"only".into()},0).unwrap()});
    assert_eq!(&current, before);
}
fn before(s: &Store<InMemoryBackend>) -> Value {
    json!({"head":s.backend().head().unwrap(),"first_record":s.backend().record(1).unwrap(),
        "entity":s.backend().version_at(&EntityKey{entity:"E".into(),id:"only".into()},0).unwrap()})
}
fn creation(w: &mut Value) {
    let l = json!({"file":"validity.dsl","line":1});
    w["actions"] = json!([{"name":"create","params":[],"preconditions":[],"postconditions":[],
        "effects":[{"create":"E","id":{"op":"lit","type":{"t":"id","entity":"E"},"value":"new","loc":l},
        "fields":{"x":{"op":"lit","type":{"t":"int"},"value":1,"loc":l},"y":{"op":"lit","type":{"t":"int"},"value":2,"loc":l}},"loc":l}],"loc":l}]);
}
fn entity_invariant(w: &mut Value) {
    w["invariants"] = w["constraints"].clone();
    w["constraints"] = json!([]);
}

#[test]
fn seed_entity_invariants_are_enforced_before_backend_create() {
    let mut w = raw();
    entity_invariant(&mut w);
    let m = module(&w);
    let result = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(&m, EvidencePolicy::none(), vec![seed(0, "only")]),
    );
    assert!(result.is_err(), "invalid entity invariant became a store");
}

#[test]
fn seed_entity_rule_evaluation_error_is_not_validity() {
    let mut w = raw();
    entity_invariant(&mut w);
    let l = json!({"file":"validity.dsl","line":1});
    w["invariants"][0]["body"] = json!({"op":"gt","args":[{"op":"div","args":[{"op":"lit","type":{"t":"int"},"value":1,"loc":l},
        {"op":"field","param":"e","field":"x","loc":l}],"loc":l},{"op":"lit","type":{"t":"int"},"value":0,"loc":l}],"loc":l});
    let m = module(&w);
    assert!(
        Store::create(
            InMemoryBackend::new(),
            &m,
            genesis_for(&m, EvidencePolicy::none(), vec![seed(0, "only")])
        )
        .is_err()
    );
}

#[test]
fn existing_seed_type_and_constraint_checks_remain_effective() {
    let m = module(&raw());
    for bad in [
        seed(0, "only"),
        SeedEntity {
            entity: "E".into(),
            value: json!({"id":"only","x":"1","y":2}),
        },
        SeedEntity {
            entity: "E".into(),
            value: json!({"id":"only","x":1,"y":2,"extra":true}),
        },
    ] {
        assert!(
            Store::create(
                InMemoryBackend::new(),
                &m,
                genesis_for(&m, EvidencePolicy::none(), vec![bad])
            )
            .is_err()
        );
    }
}

#[test]
fn changed_behavior_with_equal_schema_requires_complete_incoming_entity_validity() {
    let old = weak();
    let current = module(&raw());
    assert_eq!(
        behavior_core::schema(&old).hash,
        behavior_core::schema(&current).hash
    );
    let s = store(&old, vec![seed(0, "only"), seed(1, "bound")]);
    let original = before(&s);
    let result = s.evaluate(
        &current,
        "set",
        &common::bind(&[("e", "bound")]),
        &json!({}),
        &json!({}),
        common::T0,
        None,
    );
    assert!(
        result.as_ref().is_err() || result.as_ref().is_ok_and(|e| e.bundle.is_none()),
        "invalid unbound entity was accepted"
    );
    unchanged(&s, &original);
}

#[test]
fn zero_state_bindings_do_not_bypass_complete_validity() {
    let old = weak();
    let mut w = raw();
    creation(&mut w);
    let current = module(&w);
    let s = store(&old, vec![seed(0, "only")]);
    let original = before(&s);
    let result = s.evaluate(
        &current,
        "create",
        &BTreeMap::new(),
        &json!({}),
        &json!({}),
        common::T0,
        None,
    );
    assert!(
        result.as_ref().is_err() || result.as_ref().is_ok_and(|e| e.bundle.is_none()),
        "zero-binding action admitted invalid incoming universe"
    );
    unchanged(&s, &original);
}

#[test]
fn a_transition_must_not_heal_an_invalid_incoming_global_invariant_to_justify_a_proof() {
    let old = module(&raw());
    let mut w = raw();
    let l = json!({"file":"validity.dsl","line":1});
    w["invariants"] = json!([{"name":"unique_x","body":{"op":"unique","param":"e","args":[{"op":"select","entity":"E","loc":l}],
        "body":{"op":"field","param":"e","field":"x","loc":l},"loc":l},"loc":l}]);
    w["actions"][0]["effects"][0]["value"]["value"] = json!(2);
    let current = module(&w);
    assert_eq!(
        behavior_core::schema(&old).hash,
        behavior_core::schema(&current).hash
    );
    let s = store(&old, vec![seed(1, "only"), seed(1, "other")]);
    let original = before(&s);
    let result = s.evaluate(
        &current,
        "set",
        &common::bind(&[("e", "only")]),
        &json!({}),
        &json!({}),
        common::T0,
        None,
    );
    assert!(
        result.as_ref().is_err() || result.as_ref().is_ok_and(|e| e.bundle.is_none()),
        "invalid incoming global rule was healed rather than refused"
    );
    unchanged(&s, &original);
}

#[test]
fn a_valid_complete_universe_still_allows_a_zero_binding_transition() {
    let mut w = raw();
    creation(&mut w);
    let m = module(&w);
    let mut s = store(&m, vec![seed(1, "only")]);
    let e = s
        .evaluate(
            &m,
            "create",
            &BTreeMap::new(),
            &json!({}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap();
    let b = e.bundle.unwrap();
    let c = s.commit(&m, &b.evaluated_state.clone(), &b).unwrap();
    assert_eq!(c.result_state.position, 1);
    assert!(
        s.backend()
            .version_at(
                &EntityKey {
                    entity: "E".into(),
                    id: "new".into()
                },
                1
            )
            .unwrap()
            .is_some()
    );
}

#[test]
fn contradictory_or_missing_universe_evidence_never_establishes_a_valid_read() {
    let m = behavior_core::admit(&common::read(
        &common::fixtures().join("soundness/alias-proven-module.json"),
    ))
    .unwrap();
    let req = common::json(&common::fixtures().join("soundness/alias-request.json"));
    for kind in [
        "missing_member",
        "changed_value",
        "marked_absent",
        "duplicate_member",
    ] {
        let mut bad = req.clone();
        match kind {
            "missing_member" => bad["facts"]["universe"][0]["members"] = json!([]),
            "changed_value" => bad["facts"]["universe"][0]["members"][0]["x"] = json!(2),
            "marked_absent" => {
                bad["facts"]["existence"] = json!([{"entity":"E","id":"only","exists":false}])
            }
            "duplicate_member" => {
                let a = bad["facts"]["universe"][0]["members"]
                    .as_array_mut()
                    .unwrap();
                a.push(a[0].clone());
            }
            _ => unreachable!(),
        }
        let r = behavior_core::read::evaluate_read_request(&m, &bad.to_string()).unwrap();
        assert_ne!(r.record.as_json()["result"], "VALUE", "{kind}");
    }
}
