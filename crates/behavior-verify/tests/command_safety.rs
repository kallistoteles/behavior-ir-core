#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Guards control effect membership; payload safety is proved only on true paths.
mod common;
#[path = "../../behavior-core/tests/support/commands.rs"]
mod model;
#[path = "support/trusted.rs"]
mod oracle;
use behavior_verify::governance::trusted::{GovernanceSubject, verify_authenticated};
use behavior_verify::solver::Z3Process;
use behavior_verify::{CheckKind, Profile};
use serde_json::{Value, json};
use std::collections::BTreeSet;
fn proof(
    w: &Value,
    checks: Vec<CheckKind>,
) -> behavior_verify::governance::trusted::VerificationEnvelopeV2 {
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let solver = Z3Process::from_env().unwrap();
    verify_authenticated(
        &GovernanceSubject::Module(&m),
        &Profile {
            checks,
            ..Profile::default()
        },
        oracle::text("verifier.seed").trim(),
        &solver,
    )
    .unwrap()
    .envelope
}
#[test]
fn zero_cost_guard_proves_payload_safe_without_denying_the_business_transition() {
    let mut w = model::ratio_module(model::op(
        "ne",
        vec![model::field("cost"), model::integer(0)],
    ));
    // Exact division is followed by an explicit fixed-grid conversion. No
    // implicit integer truncation or decimal rounding is permitted.
    w["actions"][0]["command_effects"][0]["payload"]["ratio"] = model::ratio(model::op(
        "div",
        vec![model::integer(1), model::field("cost")],
    ));
    let p = proof(&w, vec![CheckKind::EvaluationError]);
    assert_eq!(p.report()["result"], "verified");
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let r = behavior_core::evaluate(&m, &model::request(0, true).to_string());
    assert_eq!(r.result(), "ALLOW");
    assert_eq!(r.as_json()["commands"]["intents"], json!([]));
    let p = proof(&w, vec![CheckKind::DeadAction]);
    assert!(
        p.report()["checks"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["outcome"] == "counterexample"),
        "a witness refutes dead_action; PROVEN would mean the action is dead"
    );
}
#[test]
fn reachable_payload_division_by_zero_is_a_reproduced_safety_finding() {
    let p = proof(
        &model::ratio_module(model::boolean(true)),
        vec![CheckKind::EvaluationError],
    );
    assert_eq!(p.report()["result"], "not_verified");
    assert!(
        p.report()["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "counterexample")
    );
    assert!(!p.report()["findings"].as_array().unwrap().is_empty());
}
#[test]
fn an_error_while_evaluating_the_guard_is_not_assumed_away() {
    let guard = model::op(
        "gt",
        vec![
            model::op("div", vec![model::field("income"), model::field("cost")]),
            model::integer(0),
        ],
    );
    let p = proof(
        &model::ratio_module(guard),
        vec![CheckKind::EvaluationError],
    );
    assert_eq!(p.report()["result"], "not_verified");
    assert!(
        p.report()["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "counterexample")
    );
}
#[test]
fn repeated_emissions_fields_and_expression_children_have_complete_distinct_sites() {
    let mut w = model::ratio_module(model::boolean(true));
    let bad = model::op("div", vec![model::field("income"), model::field("cost")]);
    w["commands"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"other","type":{"t":"nominal","name":"Ratio"},"loc":model::loc()}));
    w["actions"][0]["command_effects"][0]["payload"]["other"] =
        model::ratio(model::op("add", vec![bad.clone(), bad]));
    let e = w["actions"][0]["command_effects"][0].clone();
    model::emissions_mut(&mut w).push(e);
    let p = proof(&w, vec![CheckKind::EvaluationError]);
    let sites = p.manifest()["obligations"].as_array().unwrap();
    let command: Vec<_> = sites
        .iter()
        .filter(|o| {
            ["command_guard", "command_payload"]
                .iter()
                .any(|phase| o["descriptor"]["phase"] == *phase)
        })
        .collect();
    assert!(
        command.len() >= 6,
        "repeated command sites lost: {}",
        p.manifest()
    );
    let keys: BTreeSet<_> = command.iter().map(|o| o["key"].as_str().unwrap()).collect();
    assert_eq!(keys.len(), command.len());
    let fields: BTreeSet<_> = command
        .iter()
        .flat_map(|o| {
            o["descriptor"]["semantic_path"]
                .as_array()
                .unwrap()
                .iter()
                .filter_map(|segment| segment["field"].as_str())
        })
        .collect();
    assert!(fields.contains("ratio"));
    assert!(fields.contains("other"));
    assert_eq!(p.report()["checks"].as_array().unwrap().len(), sites.len());
}
#[test]
fn permutations_locations_and_query_binders_preserve_authenticated_proof_identity() {
    let mut a = model::ratio_module(model::op(
        "ne",
        vec![model::field("cost"), model::integer(0)],
    ));
    let e = a["actions"][0]["command_effects"][0].clone();
    model::emissions_mut(&mut a).push(e);
    let mut b = a.clone();
    model::emissions_mut(&mut b).reverse();
    model::relocation(&mut b, "/other/source.beh");
    assert_eq!(
        proof(&a, vec![CheckKind::EvaluationError]).as_json(),
        proof(&b, vec![CheckKind::EvaluationError]).as_json()
    );
}
#[test]
fn unsupported_exact_intermediate_bounds_cannot_be_authenticated_as_proven() {
    behavior_core::admit(&model::module().to_string()).unwrap();
    let mut w = model::ratio_module(model::boolean(true));
    let raw = common::json(&common::fixtures().join("soundness/large-read-module.json"));
    // Use the already audited oversized expression as payload evidence, preserving its types.
    let body = raw["reads"][0]["body"]["value"].clone();
    assert!(!body.is_null());
    w["commands"][0]["fields"][0]["type"] = json!({"t":"decimal"});
    w["actions"][0]["command_effects"][0]["payload"]["ratio"] = body;
    match behavior_core::admit(&w.to_string()) {
        Ok(_) => {
            let p = proof(&w, vec![CheckKind::EvaluationError]);
            assert_ne!(p.report()["result"], "verified");
        }
        Err(e) => assert!(
            e.errors
                .iter()
                .any(|e| e.code.contains("BOUND") || e.code == "LOSSY_CONVERSION"),
            "unrelated refusal: {:?}",
            e.errors
        ),
    }
}
#[test]
fn query_binders_and_equal_resolved_aliases_preserve_complete_proof_envelopes() {
    let mut a = model::ratio_module(model::boolean(true));
    a["commands"][0]["fields"][0]["type"] = json!({"t":"int"});
    let query = json!({"op":"where","args":[{"op":"select","entity":"Order","loc":model::loc()}],"param":"candidate",
        "body":{"op":"field","param":"candidate","field":"notifications","loc":model::loc()},"loc":model::loc()});
    a["actions"][0]["command_effects"][0]["payload"]["ratio"] = model::op(
        "add",
        vec![model::op("count", vec![query]), model::integer(i64::MAX)],
    );
    let mut b = a.clone();
    b["actions"][0]["command_effects"][0]["payload"]["ratio"]["args"][0]["args"][0]["param"] =
        json!("renamed");
    b["actions"][0]["command_effects"][0]["payload"]["ratio"]["args"][0]["args"][0]["body"]["param"] =
        json!("renamed");
    assert_eq!(
        proof(&a, vec![CheckKind::EvaluationError]).as_json(),
        proof(&b, vec![CheckKind::EvaluationError]).as_json()
    );
    assert!(
        !proof(&a, vec![CheckKind::EvaluationError]).manifest()["obligations"]
            .as_array()
            .unwrap()
            .is_empty()
    );
    let d = |name: &str| json!({"name":name,"kind":"derived","params":[{"name":"order","type":{"t":"entity","name":"Order"}}],"body":model::field("notifications"),"loc":model::loc()});
    a["derived"] = json!([d("enabledA"), d("enabledB")]);
    b = a.clone();
    a["actions"][0]["command_effects"][0]["when"] =
        json!({"op":"derived","name":"enabledA","args":["order"],"loc":model::loc()});
    b["actions"][0]["command_effects"][0]["when"] =
        json!({"op":"derived","name":"enabledB","args":["order"],"loc":model::loc()});
    assert_eq!(
        proof(&a, vec![CheckKind::EvaluationError]).as_json(),
        proof(&b, vec![CheckKind::EvaluationError]).as_json()
    );
}
