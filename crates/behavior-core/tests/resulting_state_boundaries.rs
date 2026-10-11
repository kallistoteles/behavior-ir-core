#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: current validity/evidence at every existing action boundary.
mod common;

use behavior_core::facts::{EvaluationFacts, FactError, Facts, QueryRequest, RefEdge};
use behavior_core::invocation::{
    RequestedInvocation, Snapshot, invoke_intent_with_snapshot, invoke_with_snapshot,
};
use behavior_core::{admit, evaluate, evaluate_observed, evaluate_with};
use serde_json::{Value, json};
use std::cell::Cell;

fn loc() -> Value {
    json!({"file":"017-boundaries.beh","line":1})
}
fn int(n: i64) -> Value {
    json!({"op":"lit","type":{"t":"int"},"value":n,"loc":loc()})
}
fn field(param: &str, name: &str) -> Value {
    json!({"op":"field","param":param,"field":name,"loc":loc()})
}
fn op(name: &str, args: Vec<Value>) -> Value {
    json!({"op":name,"args":args,"loc":loc()})
}
fn derived(name: &str, param: &str) -> Value {
    json!({"op":"derived","name":name,"args":[param],"loc":loc()})
}

fn model(command: bool, nested: bool) -> Value {
    let mut wire = common::json(
        &common::fixtures().join("resulting-state-validity/audit-counterexample/module.json"),
    );
    if command {
        wire["ir_version"] = json!("0.8");
        wire["commands"] = json!([]);
        for action in wire["actions"].as_array_mut().unwrap() {
            action["command_effects"] = json!([]);
        }
    }
    if nested {
        wire["derived"] = json!([
            {"name":"leaf_x","kind":"derived","params":[{"name":"leaf","type":{"t":"entity","name":"E"}}],"body":field("leaf","x"),"loc":loc()},
            {"name":"outer_x","kind":"derived","params":[{"name":"outer","type":{"t":"entity","name":"E"}}],"body":derived("leaf_x","outer"),"loc":loc()}
        ]);
        let absence = wire["constraints"][0]["body"].clone();
        wire["constraints"][0]["body"] = op(
            "and",
            vec![op("gt", vec![derived("outer_x", "e"), int(0)]), absence],
        );
    }
    wire
}
fn parent(x: i64) -> Value {
    json!({"id":"e0","x":x,"y":2,"target":"new"})
}
fn request(id: &str, x: i64) -> Value {
    json!({"action":"create","data_version":"017-boundary-parent","state":{},"input":{"id":id},"context":{},
        "facts":{"universe":[{"entity":"E","members":[parent(x)]}],"identities":[{"entity":"E","id":id,"used":false}]}})
}
fn snapshot(request: &Value) -> Value {
    json!({"format":"behavior.snapshot.v1","data_version":request["data_version"],
        "entities":[{"entity":"E","value":request["facts"]["universe"][0]["members"][0]}],"facts":request["facts"]})
}
fn invocation(id: &str) -> Value {
    json!({"format":"behavior.invocation.v1","capability":"create","bindings":{},"input":{"id":id},"context":{}})
}
fn child_step<'a>(record: &'a Value, id: &str) -> &'a Value {
    record["trace"]
        .as_array()
        .unwrap()
        .iter()
        .find(|step| {
            step["phase"] == "constraint_post" && step["subject"] == json!({"entity":"E","id":id})
        })
        .unwrap()
}
fn assert_current(record: &Value, command: bool, result: &str) {
    assert_eq!(record["record_version"], "0.8", "{record}");
    assert_eq!(
        record["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    assert_eq!(record["result"], result, "{record}");
    assert_eq!(record.get("commands").is_some(), command);
    behavior_core::DecisionRecord::from_json(&record.to_string()).unwrap();
}
fn assert_parent_fields(record: &Value, expected: &[(&str, Value)]) {
    let facts = Facts::from_json(&record["facts"]).unwrap();
    for (field, value) in expected {
        assert_eq!(
            facts
                .fields
                .get(&("E".into(), "e0".into(), (*field).into())),
            Some(value),
            "lost typed parent observation {field}: {record}"
        );
    }
    assert!(
        facts
            .fields
            .keys()
            .all(|(_, id, _)| id != "new" && id != "unrelated"),
        "created rows have no parent field facts"
    );
}

#[derive(Clone, Copy, PartialEq, Eq)]
enum Failure {
    None,
    Query,
    Used,
    Entity,
    Field,
}
struct Provider {
    facts: Facts,
    failure: Failure,
    field_calls: Cell<usize>,
    exists_calls: Cell<usize>,
}
impl Provider {
    fn new(request: &Value, failure: Failure) -> Self {
        Self {
            facts: Facts::from_json(&request["facts"]).unwrap(),
            failure,
            field_calls: Cell::new(0),
            exists_calls: Cell::new(0),
        }
    }
}
// This adapter deliberately shares the existing Facts query implementation: it
// tests boundary/evidence parity, not independent mathematical child validity.
impl EvaluationFacts for Provider {
    fn exists(&self, _: &str, _: &str) -> Result<bool, FactError> {
        self.exists_calls.set(self.exists_calls.get() + 1);
        Err(FactError("unreachable provider exists failure".into()))
    }
    fn used(&self, entity: &str, id: &str) -> Result<bool, FactError> {
        if self.failure == Failure::Used {
            Err(FactError("actual historical used failure".into()))
        } else {
            self.facts.used(entity, id)
        }
    }
    fn incoming(&self, _: &str, _: &str) -> Result<Vec<RefEdge>, FactError> {
        Ok(vec![])
    }
    fn query(&self, q: &QueryRequest<'_>) -> Result<Vec<String>, FactError> {
        if self.failure == Failure::Query {
            Err(FactError("actual universe enumeration failure".into()))
        } else {
            self.facts.query(q)
        }
    }
    fn entity(&self, entity: &str, id: &str) -> Result<Value, FactError> {
        if matches!(self.failure, Failure::Entity | Failure::Field) {
            Err(FactError("optional whole-entity lookup unavailable".into()))
        } else {
            self.facts.entity(entity, id)
        }
    }
    fn field(&self, entity: &str, id: &str, field: &str) -> Result<Value, FactError> {
        self.field_calls.set(self.field_calls.get() + 1);
        if self.failure == Failure::Field {
            Err(FactError("actual parent field failure".into()))
        } else {
            self.facts.field(entity, id, field)
        }
    }
}
fn provider_request(request: &Value) -> String {
    let mut r = request.clone();
    r.as_object_mut().unwrap().remove("facts");
    r.to_string()
}

#[test]
fn plain_provider_invocation_and_unified_intent_select_the_same_current_witness() {
    for command in [false, true] {
        let module = admit(&model(command, false).to_string()).unwrap();
        for (id, result) in [("new", "DENY"), ("unrelated", "ALLOW")] {
            let req = request(id, 1);
            let provider = Provider::new(&req, Failure::None);
            let plain = evaluate(&module, &req.to_string());
            let (provided, observed) = evaluate_with(&module, &provider_request(&req), &provider);
            assert_current(plain.as_json(), command, result);
            assert_eq!(plain.as_json(), provided.as_json());
            assert!(
                observed.fields.is_empty(),
                "unbound subjects must not invent action parameters: {:?}",
                observed.fields
            );
            assert_eq!(
                provider.exists_calls.get(),
                0,
                "current membership comes from the validated snapshot"
            );
            let snap = Snapshot::decode(&module, &snapshot(&req).to_string())
                .unwrap()
                .0
                .unwrap();
            let requested = RequestedInvocation::decode(&invocation(id).to_string())
                .unwrap()
                .0
                .unwrap();
            let invoked = invoke_with_snapshot(&module, &requested, &snap).unwrap();
            assert_eq!(invoked.inner_record(), Some(plain.as_json()));
            let mut intent = invocation(id);
            intent["format"] = json!("behavior.capability_intent.v1");
            intent.as_object_mut().unwrap().remove("context");
            let intended =
                invoke_intent_with_snapshot(&module, &intent.to_string(), &json!({}), &snap)
                    .unwrap();
            assert_eq!(intended.inner_record(), Some(plain.as_json()));
            if result == "DENY" {
                let witness = child_step(plain.as_json(), "e0");
                assert_eq!(witness["outcome"], false);
                assert_eq!(witness["obligation"]["name"], "positive");
                assert_eq!(
                    witness["observations"],
                    json!([{"field":"target","phase_state":"S'","value":"new"}])
                );
            }
        }
    }
}

#[test]
fn unbound_nested_derived_reads_keep_typed_old_parent_facts_and_child_observations() {
    for command in [false, true] {
        let module = admit(&model(command, true).to_string()).unwrap();
        for (id, result) in [("new", "DENY"), ("unrelated", "ALLOW")] {
            let req = request(id, 1);
            let provider = Provider::new(&req, Failure::None);
            let (record, observed) = evaluate_with(&module, &provider_request(&req), &provider);
            assert_current(record.as_json(), command, result);
            assert_parent_fields(
                record.as_json(),
                &[("target", json!("new")), ("x", json!(1))],
            );
            assert_eq!(
                observed
                    .facts
                    .fields
                    .get(&("E".into(), "e0".into(), "x".into())),
                Some(&json!(1))
            );
            assert!(observed.fields.is_empty());
            let witness = child_step(record.as_json(), "e0");
            assert_eq!(
                witness["observations"],
                json!([
                    {"field":"target","phase_state":"S'","value":"new"},
                    {"field":"x","phase_state":"S'","value":1}
                ])
            );
            if result == "ALLOW" {
                let created = child_step(record.as_json(), "unrelated");
                assert_eq!(
                    created["observations"],
                    json!([
                        {"field":"target","phase_state":"S'","value":"absent"},
                        {"field":"x","phase_state":"S'","value":1}
                    ])
                );
            }
        }
    }
}

#[test]
fn nested_derived_query_filter_keeps_the_real_candidate_parent_identity() {
    for command in [false, true] {
        let mut wire = model(command, true);
        wire["constraints"][0]["body"] = model(command, false)["constraints"][0]["body"].clone();
        let query = json!({"op":"where","args":[{"op":"select","entity":"E","loc":loc()}],"param":"candidate",
            "body":op("gt",vec![derived("outer_x","candidate"),int(0)]),"loc":loc()});
        wire["invariants"] = json!([{"name":"positive_members","body":op("ge",vec![op("count",vec![query]),int(1)]),"loc":loc()}]);
        let module = admit(&wire.to_string()).unwrap();
        let req = request("unrelated", 1);
        let record = evaluate(&module, &req.to_string());
        assert_current(record.as_json(), command, "ALLOW");
        assert_parent_fields(record.as_json(), &[("x", json!(1))]);
        let child_values: Vec<_> = record.as_json()["derived"]
            .as_array()
            .unwrap()
            .iter()
            .filter(|entry| entry["phase_state"] == "S'")
            .map(|entry| entry["value"].clone())
            .collect();
        assert!(
            child_values.contains(&json!(1)),
            "nested child derived evidence is absent"
        );
    }
}

#[test]
fn newly_reached_bound_child_field_is_attributed_to_the_real_action_parameter() {
    for command in [false, true] {
        let mut wire = model(command, false);
        wire["constraints"][0]["body"] = op(
            "or",
            vec![
                wire["constraints"][0]["body"].clone(),
                op("gt", vec![field("e", "x"), int(0)]),
            ],
        );
        wire["actions"][1]["params"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"bound","role":"state","type":{"t":"entity","name":"E"}}));
        wire["actions"][1]["effects"]
            .as_array_mut()
            .unwrap()
            .push(json!({"target":{"param":"bound","field":"y"},"value":int(2),"loc":loc()}));
        let module = admit(&wire.to_string()).unwrap();
        let mut req = request("new", 1);
        req["state"] = json!({"bound":parent(1)});
        let (record, fields) = evaluate_observed(&module, &req.to_string());
        assert_current(record.as_json(), command, "ALLOW");
        assert!(
            fields.contains(&("bound".into(), "x".into())),
            "newly reached child read lost its real binding: {fields:?}"
        );
        assert!(
            fields.iter().all(|(param, _)| param == "bound"),
            "synthetic subject escaped: {fields:?}"
        );
    }
}

#[test]
fn unchanged_child_evaluation_error_preserves_node_operands_and_observation_identity() {
    for command in [false, true] {
        let mut wire = model(command, false);
        wire["constraints"][0]["body"] = op(
            "or",
            vec![
                wire["constraints"][0]["body"].clone(),
                op("gt", vec![op("div", vec![int(1), field("e", "x")]), int(0)]),
            ],
        );
        let module = admit(&wire.to_string()).unwrap();
        let req = request("new", 0);
        let record = evaluate(&module, &req.to_string());
        assert_current(record.as_json(), command, "ERROR");
        let witness = child_step(record.as_json(), "e0");
        let error = &witness["outcome"]["error"];
        assert_eq!(error["code"], "DIVISION_BY_ZERO");
        fn division(
            e: &behavior_core::semantic::expr::Expr,
        ) -> Option<&behavior_core::semantic::expr::Expr> {
            if matches!(
                e.kind(),
                behavior_core::semantic::expr::ExprKind::Arith(
                    behavior_core::semantic::types::ArithOp::Div,
                    _,
                    _
                )
            ) {
                return Some(e);
            }
            e.children().into_iter().find_map(division)
        }
        assert_eq!(
            error["node"],
            behavior_core::semantic::types::hash_display(
                division(module.constraints()["positive"].body())
                    .unwrap()
                    .hash()
            )
        );
        let operands = error["operands"].as_array().unwrap();
        assert_eq!(operands.len(), 2);
        assert_eq!(
            operands
                .iter()
                .map(|v| v["value"].clone())
                .collect::<Vec<_>>(),
            vec![json!("1"), json!("0")]
        );
        assert!(
            operands
                .iter()
                .all(|v| v["node"].as_str().unwrap().starts_with("sha256:"))
        );
        assert_eq!(record.as_json()["reasons"][0]["details"], *error);
        assert_parent_fields(
            record.as_json(),
            &[("target", json!("new")), ("x", json!(0))],
        );
        assert_eq!(record.as_json()["changes"], json!([]));
        assert!(record.as_json().get("lifecycle").is_none());
    }
}

#[test]
fn malformed_incomplete_and_contradictory_parents_never_reach_action_execution() {
    for command in [false, true] {
        let module = admit(&model(command, false).to_string()).unwrap();
        for mutation in 0..4 {
            let mut req = request("new", 1);
            match mutation {
                0 => req["facts"] = json!({"universe":"wrong"}),
                1 => {
                    req["facts"].as_object_mut().unwrap().remove("universe");
                }
                2 => req["facts"]["existence"] = json!([{"entity":"E","id":"e0","exists":false}]),
                _ => {
                    req["facts"]["fields"] =
                        json!([{"entity":"E","id":"e0","field":"x","value":99}])
                }
            }
            let record = evaluate(&module, &req.to_string());
            assert_current(record.as_json(), command, "INVALID_INPUT");
            assert_eq!(record.as_json()["trace"], json!([]));
            assert_eq!(record.as_json()["changes"], json!([]));
        }
    }
}

#[test]
fn provider_failures_keep_existing_routes_and_optional_entity_lookup_keeps_fallback() {
    for command in [false, true] {
        let module = admit(&model(command, false).to_string()).unwrap();
        let req = request("unrelated", 1);
        for failure in [Failure::Query, Failure::Field] {
            let provider = Provider::new(&req, failure);
            let (record, _) = evaluate_with(&module, &provider_request(&req), &provider);
            assert_current(record.as_json(), command, "INVALID_INPUT");
            assert_eq!(
                record.as_json()["reasons"][0]["code"],
                "INVALID_STATE_SNAPSHOT"
            );
            assert_eq!(record.as_json()["trace"], json!([]));
        }
        let provider = Provider::new(&req, Failure::Used);
        let (record, _) = evaluate_with(&module, &provider_request(&req), &provider);
        assert_current(record.as_json(), command, "ERROR");
        assert_eq!(record.as_json()["reasons"][0]["code"], "UNKNOWN_FACT");
        let provider = Provider::new(&req, Failure::Entity);
        let (record, _) = evaluate_with(&module, &provider_request(&req), &provider);
        assert_current(record.as_json(), command, "ALLOW");
        assert!(provider.field_calls.get() > 0);
        assert_eq!(provider.exists_calls.get(), 0);
    }
}

#[test]
fn no_public_request_intent_or_invocation_can_select_archived_computation() {
    for command in [false, true] {
        let module = admit(&model(command, false).to_string()).unwrap();
        let req = request("new", 1);
        for key in ["validation_profile", "record_version", "execution_purpose"] {
            let mut injected = req.clone();
            injected[key] = json!("archived");
            let record = evaluate(&module, &injected.to_string());
            assert_current(record.as_json(), command, "INVALID_INPUT");
            assert_eq!(record.as_json()["trace"], json!([]));
            let mut raw = invocation("new");
            raw[key] = json!("archived");
            let (requested, errors) = RequestedInvocation::decode(&raw.to_string()).unwrap();
            assert!(requested.is_none() && !errors.is_empty());
        }
        let snap = Snapshot::decode(&module, &snapshot(&req).to_string())
            .unwrap()
            .0
            .unwrap();
        let mut intent = invocation("new");
        intent["format"] = json!("behavior.capability_intent.v1");
        intent.as_object_mut().unwrap().remove("context");
        intent["metadata"] = json!({"validation_profile":"archived","record_version":"0.5"});
        let record =
            invoke_intent_with_snapshot(&module, &intent.to_string(), &json!({}), &snap).unwrap();
        assert_current(record.inner_record().unwrap(), command, "DENY");
        let host = json!({"data_version":req["data_version"],"state":{},"context":{}});
        let legacy = json!({"capability":"create","targets":{},"input":{"id":"new"}});
        let record =
            behavior_core::evaluate_intent(&module, &legacy.to_string(), &host.to_string())
                .unwrap();
        assert_current(record.as_json(), command, "INVALID_INPUT");
    }
}
