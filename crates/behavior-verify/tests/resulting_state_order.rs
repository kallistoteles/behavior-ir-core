#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: corrected failure prefixes and explicitly scoped symbolic claims.
use behavior_core::{admit, evaluate};
use behavior_verify::confirm::{Expect, confirm, request_parts};
use behavior_verify::encode::{ActionEncoding, Nice, StepKind, Term, and_all};
use behavior_verify::smt::SmtValue;
use behavior_verify::solver::{Query, Solver, SolverAnswer, Z3Process};
use behavior_verify::{CheckKind, Profile, verify};
use serde_json::{Value, json};
use std::collections::BTreeMap;

fn loc() -> Value {
    json!({"file":"017-verifier-order.beh","line":1})
}
fn lit(ty: Value, value: Value) -> Value {
    json!({"op":"lit","type":ty,"value":value,"loc":loc()})
}
fn integer(value: i64) -> Value {
    lit(json!({"t":"int"}), json!(value))
}
fn field(param: &str, name: &str) -> Value {
    json!({"op":"field","param":param,"field":name,"loc":loc()})
}
fn op(name: &str, args: Vec<Value>) -> Value {
    json!({"op":name,"args":args,"loc":loc()})
}
fn state(name: &str, entity: &str) -> Value {
    json!({"name":name,"role":"state","type":{"t":"entity","name":entity}})
}
fn effect(param: &str, name: &str, value: Value) -> Value {
    json!({"target":{"param":param,"field":name},"value":value,"loc":loc()})
}
fn profile(checks: Vec<CheckKind>) -> Profile {
    Profile {
        checks,
        ..Profile::default()
    }
}

fn pair(post_refusal: bool) -> Value {
    let post = if post_refusal {
        vec![json!({"expr":lit(json!({"t":"bool"}),json!(false)),"loc":loc()})]
    } else {
        vec![]
    };
    json!({"ir_version":"0.7","enums":[],"nominals":[],"derived":[],"reads":[],
        "entities":[
            {"name":"A","fields":[{"name":"d","type":{"t":"int"},"loc":loc()}],"loc":loc()},
            {"name":"Z","fields":[{"name":"ok","type":{"t":"bool"},"loc":loc()}],"loc":loc()},
            {"name":"Empty","fields":[],"loc":loc()}],
        "constraints":[{"name":"ratio_positive","entity":"A","param":"row","loc":loc(),
            "body":op("gt",vec![op("div",vec![integer(1),field("row","d")]),integer(0)])}],
        "invariants":[{"name":"ok","entity":"Z","param":"row","body":field("row","ok"),"loc":loc()}],
        "actions":[{"name":"break_both","params":[state("a","A"),state("z","Z")],
            "preconditions":[],"postconditions":post,"loc":loc(),
            "effects":[effect("a","d",integer(0)),effect("z","ok",lit(json!({"t":"bool"}),json!(false)))]}]})
}

fn pair_request() -> Value {
    let a = json!({"id":"a","d":1});
    let z = json!({"id":"z","ok":true});
    json!({"action":"break_both","data_version":"017-verifier-parent","input":{},"context":{},
        "state":{"a":a,"z":z},"facts":{"universe":[{"entity":"A","members":[a]},
            {"entity":"Z","members":[z]},{"entity":"Empty","members":[]}]}})
}

fn division_step(enc: &ActionEncoding<'_>) -> usize {
    enc.steps
        .iter()
        .position(|s| s.kind == StepKind::ConstraintPost && !s.obligations.is_empty())
        .unwrap()
}

fn error_query(enc: &ActionEncoding<'_>, k: usize) -> Query {
    let o = &enc.steps[k].obligations[0];
    Query {
        script: enc.enc.script(
            &[enc.path(k), and_all(&[o.guard.clone(), o.cond.clone()])],
            Nice::Raw,
        ),
        get: vec![],
        rlimit: 50_000_000,
    }
}

#[test]
fn symbolic_child_schedule_is_entity_first_instead_of_kind_first() {
    let m = admit(&pair(false).to_string()).unwrap();
    let enc = ActionEncoding::build(&m, "break_both").unwrap();
    let children: Vec<_> = enc
        .steps
        .iter()
        .filter(|s| matches!(s.kind, StepKind::InvariantPost | StepKind::ConstraintPost))
        .map(|s| (s.kind, s.bound.as_deref()))
        .collect();
    assert_eq!(
        children,
        vec![
            (StepKind::ConstraintPost, Some("a")),
            (StepKind::InvariantPost, Some("z"))
        ]
    );
}

#[test]
fn earlier_entity_constraint_error_is_reachable_before_later_false_invariant() {
    let m = admit(&pair(false).to_string()).unwrap();
    let runtime = evaluate(&m, &pair_request().to_string());
    assert_eq!(runtime.result(), "ERROR", "{}", runtime.to_json_string());
    let first = runtime.as_json()["trace"]
        .as_array()
        .unwrap()
        .iter()
        .find(|s| s["outcome"].get("error").is_some())
        .unwrap();
    assert_eq!(first["subject"], json!({"entity":"A","id":"a"}));
    let enc = ActionEncoding::build(&m, "break_both").unwrap();
    let result = Z3Process::from_env()
        .unwrap()
        .check(&error_query(&enc, division_step(&enc)));
    assert!(
        matches!(result, SolverAnswer::Sat(_)),
        "canonical first error was suppressed by a later invariant: {result:?}"
    );
}

#[test]
fn earlier_entity_error_has_a_confirmed_complete_parent_witness() {
    let m = admit(&pair(false).to_string()).unwrap();
    let report = verify(
        &m,
        &profile(vec![CheckKind::EvaluationError]),
        None,
        &Z3Process::from_env().unwrap(),
    );
    let finding = report
        .findings()
        .into_iter()
        .find(|f| f["kind"] == "evaluation_error")
        .unwrap_or_else(|| {
            panic!(
                "reachable earlier error lacks a confirmed witness: {}",
                report.to_json_string()
            )
        });
    let record = &finding["counterexample"]["record"];
    assert_eq!(record["result"], "ERROR");
    assert_eq!(record["record_version"], "0.8");
    assert_eq!(
        record["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    for entity in ["A", "Z", "Empty"] {
        assert!(
            finding["counterexample"]["facts"]["universe"]
                .as_array()
                .unwrap()
                .iter()
                .any(|u| u["entity"] == entity)
        );
    }
}

#[test]
fn postcondition_refusal_still_precedes_child_error() {
    let m = admit(&pair(true).to_string()).unwrap();
    let runtime = evaluate(&m, &pair_request().to_string());
    assert_eq!(runtime.result(), "DENY");
    assert_eq!(
        runtime.as_json()["reasons"][0]["code"],
        "POSTCONDITION_FAILED"
    );
    let enc = ActionEncoding::build(&m, "break_both").unwrap();
    assert_eq!(
        Z3Process::from_env()
            .unwrap()
            .check(&error_query(&enc, division_step(&enc))),
        SolverAnswer::Unsat
    );
}

fn single(command: bool, safe: bool) -> Value {
    let mut wire = pair(false);
    wire["entities"]
        .as_array_mut()
        .unwrap()
        .retain(|e| e["name"] != "Z");
    wire["invariants"] = json!([]);
    wire["actions"][0]["name"] = json!("single");
    wire["actions"][0]["params"] = json!([state("a", "A")]);
    wire["actions"][0]["effects"] = json!([effect("a", "d", integer(if safe { 1 } else { 0 }))]);
    if command {
        wire["ir_version"] = json!("0.8");
        wire["commands"] = json!([]);
        wire["actions"][0]["command_effects"] = json!([]);
    }
    wire
}

fn confirm_single(command: bool) {
    let m = admit(&single(command, false).to_string()).unwrap();
    let enc = ActionEncoding::build(&m, "single").unwrap();
    let mut model = BTreeMap::new();
    for variable in &enc.enc.inputs {
        let Term::Plain(term) = &variable.term else {
            panic!("test has scalar fields")
        };
        let value = match variable.field.as_deref().unwrap() {
            "id" => SmtValue::Str("raw-a".into()),
            "d" => SmtValue::Int(1),
            other => panic!("unexpected field {other}"),
        };
        model.insert(term.clone(), value);
    }
    let (sections, facts) = request_parts(&enc.enc, &model).unwrap();
    let facts = facts.expect("current witnesses require complete parent membership");
    for entity in ["A", "Empty"] {
        assert!(
            facts["universe"]
                .as_array()
                .unwrap()
                .iter()
                .any(|u| u["entity"] == entity),
            "missing {entity}: {facts}"
        );
    }
    let o = &enc.steps[division_step(&enc)].obligations[0];
    let expected = Expect::SemanticError {
        code: "DIVISION_BY_ZERO".into(),
        node: behavior_core::semantic::types::hash_display(&o.hash),
    };
    let witness = confirm(&m, &enc.enc, "single", &model, &expected).unwrap_or_else(|| {
        let request = json!({"action":"single","data_version":"verification",
            "state":sections[0],"input":sections[1],"context":sections[2],"facts":facts});
        panic!(
            "valid finite model must confirm; expected {expected:?}, got {}",
            evaluate(&m, &request.to_string()).to_json_string()
        )
    });
    assert_eq!(witness.record["result"], "ERROR");
    assert_eq!(witness.record["record_version"], "0.8");
    assert_eq!(
        witness.record["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    let universe = witness.facts.unwrap()["universe"]
        .as_array()
        .unwrap()
        .clone();
    let parent = universe.iter().find(|u| u["entity"] == "A").unwrap();
    assert_eq!(
        parent["members"][0]["d"], 1,
        "witness must archive S, not failing S'"
    );
}

#[test]
fn legacy_language_witnesses_capture_complete_parent_and_empty_types() {
    confirm_single(false);
}
#[test]
fn command_language_complete_parent_witness_is_a_supported_control() {
    confirm_single(true);
}

#[test]
fn supported_single_state_local_checks_remain_proven() {
    for command in [false, true] {
        let m = admit(&single(command, true).to_string()).unwrap();
        let report = verify(
            &m,
            &profile(vec![CheckKind::EvaluationError, CheckKind::Preservation]),
            None,
            &Z3Process::from_env().unwrap(),
        );
        assert_eq!(report.result, "verified", "{}", report.to_json_string());
        assert!(!report.checks.is_empty());
        assert!(
            report.value["checks"]
                .as_array()
                .unwrap()
                .iter()
                .all(|c| c["outcome"] == "proven")
        );
    }
}

#[test]
fn unsupported_same_type_identity_order_is_inconclusive() {
    let mut wire = pair(false);
    wire["entities"] = json!([{"name":"C","fields":[
        {"name":"d","type":{"t":"int"},"loc":loc()},
        {"name":"ok","type":{"t":"bool"},"loc":loc()}],"loc":loc()}]);
    wire["constraints"][0]["entity"] = json!("C");
    wire["invariants"][0]["entity"] = json!("C");
    wire["actions"][0]["params"] = json!([state("a", "C"), state("z", "C")]);
    let m = admit(&wire.to_string()).unwrap();
    let report = verify(
        &m,
        &profile(vec![CheckKind::EvaluationError, CheckKind::Preservation]),
        None,
        &Z3Process::from_env().unwrap(),
    );
    assert!(!report.checks.is_empty());
    assert!(
        report.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["outcome"] == "inconclusive"),
        "parameter order is not decoded-ID order; unsupported first-failure claims must be explicit: {}",
        report.to_json_string()
    );
}

fn world_dependent_wire() -> Value {
    let body = op(
        "or",
        vec![
            op("not", vec![op("exists", vec![field("e", "target")])]),
            op(
                "gt",
                vec![op("div", vec![integer(1), field("e", "d")]), integer(0)],
            ),
        ],
    );
    json!({"ir_version":"0.7","enums":[],"nominals":[],"derived":[],"reads":[],"invariants":[],
        "entities":[{"name":"E","fields":[{"name":"d","type":{"t":"int"},"loc":loc()},
            {"name":"target","type":{"t":"id","entity":"Target"},"loc":loc()}],"loc":loc()},
            {"name":"Target","fields":[],"loc":loc()}],
        "constraints":[{"name":"world_dependent","entity":"E","param":"e","body":body,"loc":loc()}],
        "actions":[{"name":"create","params":[],"preconditions":[],"postconditions":[],
            "effects":[{"create":"Target","id":lit(json!({"t":"id","entity":"Target"}),json!("new")),"fields":{},"loc":loc()}],"loc":loc()}]})
}

#[test]
fn unbound_world_dependent_error_claim_is_explicitly_inconclusive() {
    let m = admit(&world_dependent_wire().to_string()).unwrap();
    let report = verify(
        &m,
        &profile(vec![CheckKind::EvaluationError]),
        None,
        &Z3Process::from_env().unwrap(),
    );
    assert!(
        !report.checks.is_empty(),
        "missing unbound obligations are not an empty safety proof: {}",
        report.to_json_string()
    );
    assert!(
        report.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["outcome"] == "inconclusive"),
        "{}",
        report.to_json_string()
    );
    assert_eq!(report.result, "not_verified");
}

// Additional positive/scoping controls after the reviewed original T025 RED.
// They are not claimed as retrospective test-first evidence.
#[test]
fn same_type_rows_without_child_rules_keep_supported_postcondition_proofs() {
    let mut wire = single(false, true);
    wire["constraints"] = json!([]);
    wire["actions"][0]["params"] = json!([state("a", "A"), state("b", "A")]);
    wire["actions"][0]["effects"] = json!([]);
    wire["actions"][0]["postconditions"] =
        json!([{"expr":lit(json!({"t":"bool"}),json!(true)),"loc":loc()}]);
    let m = admit(&wire.to_string()).unwrap();
    let report = verify(
        &m,
        &profile(vec![CheckKind::Postcondition]),
        None,
        &Z3Process::from_env().unwrap(),
    );
    assert_eq!(report.checks.len(), 1);
    assert_eq!(report.value["checks"][0]["outcome"], "proven");
    assert_eq!(report.result, "verified");
    let a = json!({"id":"z","d":1});
    let b = json!({"id":"a","d":1});
    let request = json!({"action":"single","data_version":"verification",
        "state":{"a":a,"b":b},"input":{},"context":{},
        "facts":{"universe":[{"entity":"A","members":[a,b]},{"entity":"Empty","members":[]}]}});
    assert_eq!(evaluate(&m, &request.to_string()).result(), "ALLOW");
}

fn indirect_constraint(wire: &mut Value) {
    let constraint = &wire["constraints"][0];
    let parameter = constraint["param"].as_str().unwrap().to_string();
    let parameters = json!([{"name":parameter,"type":{"t":"entity","name":constraint["entity"]}}]);
    let body = constraint["body"].clone();
    wire["derived"] = json!([
        {"name":"leaf","kind":"derived","params":parameters,"body":body,"loc":loc()},
        {"name":"outer","kind":"derived","params":parameters,
            "body":{"op":"derived","name":"leaf","args":[parameter],"loc":loc()},"loc":loc()}]);
    wire["constraints"][0]["body"] =
        json!({"op":"derived","name":"outer","args":[parameter],"loc":loc()});
}

#[test]
fn nested_row_local_derived_rules_keep_supported_proofs() {
    for command in [false, true] {
        let mut wire = single(command, true);
        indirect_constraint(&mut wire);
        let m = admit(&wire.to_string()).unwrap();
        let report = verify(
            &m,
            &profile(vec![CheckKind::EvaluationError, CheckKind::Preservation]),
            None,
            &Z3Process::from_env().unwrap(),
        );
        assert!(!report.checks.is_empty());
        assert_eq!(report.result, "verified", "{}", report.to_json_string());
        assert!(
            report.value["checks"]
                .as_array()
                .unwrap()
                .iter()
                .all(|c| c["outcome"] == "proven")
        );
    }
}

#[test]
fn nested_world_dependent_derived_rules_are_explicitly_inconclusive() {
    for command in [false, true] {
        let mut wire = world_dependent_wire();
        if command {
            wire["ir_version"] = json!("0.8");
            wire["commands"] = json!([]);
            wire["actions"][0]["command_effects"] = json!([]);
        }
        indirect_constraint(&mut wire);
        let m = admit(&wire.to_string()).unwrap();
        let report = verify(
            &m,
            &profile(vec![CheckKind::EvaluationError]),
            None,
            &Z3Process::from_env().unwrap(),
        );
        assert_eq!(report.checks.len(), 1, "{}", report.to_json_string());
        assert_eq!(report.value["checks"][0]["outcome"], "inconclusive");
        assert_eq!(report.result, "not_verified");
        assert_eq!(
            report.findings()[0]["explanation"],
            "evaluation_error of create is inconclusive (encoding_error: cannot encode: complete-world entity constraint world_dependent)"
        );
    }
}
