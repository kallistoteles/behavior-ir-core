#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Concrete G2 runtime counterexamples: provenance cannot repair a false proof.
mod common;
use behavior_core::read::evaluate_read_request;
use behavior_verify::solver::Z3Process;
use behavior_verify::{CheckKind, Profile, verify};
use serde_json::{Value, json};

fn raw(name: &str) -> Value {
    common::json(&common::fixtures().join("soundness").join(name))
}
fn profile() -> Profile {
    Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    }
}
fn no_false_proof(m: &behavior_core::semantic::module::Module) {
    let report = verify(m, &profile(), None, &Z3Process::from_env().unwrap());
    assert_ne!(
        report.result,
        "verified",
        "reachable runtime failure was falsely proved: {}",
        report.to_json_string()
    );
}

#[test]
fn repeated_read_bindings_do_not_inflate_the_entity_universe() {
    let m = behavior_core::admit(&raw("alias-proven-module.json").to_string()).unwrap();
    let request = raw("alias-request.json");
    assert_eq!(request["state"]["a"], request["state"]["b"]);
    assert_eq!(
        request["facts"]["universe"][0]["members"]
            .as_array()
            .unwrap()
            .len(),
        1
    );
    let runtime = evaluate_read_request(&m, &request.to_string()).unwrap();
    assert_eq!(runtime.record.as_json()["result"], "EVALUATION_ERROR");
    assert!(
        runtime
            .record
            .as_json()
            .to_string()
            .contains("division by zero")
    );
    no_false_proof(&m);
}

#[test]
fn fixed_scale_rescale_does_not_hide_an_oversized_exact_intermediate() {
    let m = behavior_core::admit(&raw("rescale-module.json").to_string()).unwrap();
    let runtime = behavior_core::evaluate(&m, &raw("rescale-request.json").to_string());
    assert_eq!(runtime.as_json()["result"], "ERROR");
    assert!(
        runtime
            .as_json()
            .to_string()
            .contains("exact bound exceeded")
    );
    no_false_proof(&m);
}

#[test]
fn parameter_free_reads_do_not_bypass_exact_representation_safety() {
    let m = behavior_core::admit(&raw("large-read-module.json").to_string()).unwrap();
    let runtime = evaluate_read_request(&m, &raw("large-read-request.json").to_string()).unwrap();
    assert_eq!(runtime.record.as_json()["result"], "EVALUATION_ERROR");
    assert!(
        runtime
            .record
            .as_json()
            .to_string()
            .contains("exact bound exceeded")
    );
    no_false_proof(&m);
}

#[test]
fn boolean_parent_does_not_hide_failing_exact_children() {
    let mut w = raw("large-read-module.json");
    let enormous = w["reads"][0]["body"]["value"].clone();
    let l = json!({"file":"regression.dsl","line":1});
    // A Boolean parent still evaluates its exact children.
    w["reads"][0]["body"]["value"] = json!({"op":"eq","args":[enormous.clone(),enormous],"loc":l});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let runtime = evaluate_read_request(&m, &raw("large-read-request.json").to_string()).unwrap();
    assert_eq!(runtime.record.as_json()["result"], "EVALUATION_ERROR");
    no_false_proof(&m);
}

#[test]
fn nested_wrap_does_not_hide_the_failure_of_its_rescaled_argument() {
    let mut w = raw("rescale-module.json");
    let inner = w["actions"][0]["effects"][0]["value"].clone();
    let l = json!({"file":"nested-wrap.dsl","line":1});
    w["actions"][0]["effects"][0]["value"] = json!({"op":"wrap","nominal":"Money",
        "args":[{"op":"unwrap","args":[inner],"loc":l}],"loc":l});
    match behavior_core::admit(&w.to_string()) {
        Err(refusal) => assert!(refusal.errors.iter().any(|e| e.code == "LOSSY_CONVERSION")),
        Ok(m) => {
            let runtime = behavior_core::evaluate(&m, &raw("rescale-request.json").to_string());
            assert_eq!(runtime.as_json()["result"], "ERROR");
            assert!(
                runtime
                    .as_json()
                    .to_string()
                    .contains("exact bound exceeded")
            );
            no_false_proof(&m);
        }
    }
}

#[test]
fn a_projected_member_may_be_the_same_entity_as_a_bound_read_parameter() {
    let mut w = raw("alias-proven-module.json");
    let l = json!({"file":"projection-alias.dsl","line":1});
    let body = w["reads"][0]["body"]["value"].clone();
    w["derived"] = json!([{"name":"check_count","kind":"derived","params":[{"name":"c","type":{"t":"entity","name":"E"}}],"body":body,"loc":l}]);
    w["reads"][0]["params"].as_array_mut().unwrap().pop();
    w["reads"][0]["body"] = json!({"project":{"over":{"op":"select","entity":"E","loc":l},"param":"c","items":[{"derived":"check_count"}]}});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let mut request = raw("alias-request.json");
    request["state"].as_object_mut().unwrap().remove("b");
    let runtime = evaluate_read_request(&m, &request.to_string()).unwrap();
    assert_eq!(runtime.record.as_json()["result"], "EVALUATION_ERROR");
    no_false_proof(&m);
}

#[test]
fn query_folds_cannot_keep_a_single_terms_denominator_bound() {
    let l = json!({"file":"fold-regression.dsl","line":1});
    let numerator = json!({"op":"lit","type":{"t":"int"},"value":1,"loc":l});
    let denominator = json!({"op":"field","param":"member","field":"cost","loc":l});
    let sum = json!({"op":"sum","param":"member","args":[{"op":"select","entity":"E","loc":l}],
        "body":{"op":"div","args":[numerator,denominator],"loc":l},"loc":l});
    let w = json!({"ir_version":"0.7","enums":[],"nominals":[],"derived":[],"constraints":[],"invariants":[],"actions":[],
        "entities":[{"name":"E","fields":[{"name":"cost","type":{"t":"int"},"loc":l}],"loc":l}],
        "reads":[{"name":"sum","params":[],"body":{"value":sum},"loc":l}]});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    // Pairwise-prime 61-bit denominators; nine fractions exceed the 511-bit
    // exact representation although every individual value fits i64.
    let primes: [i64; 9] = [
        2305843009213693951,
        2305843009213693921,
        2305843009213693907,
        2305843009213693723,
        2305843009213693693,
        2305843009213693669,
        2305843009213693613,
        2305843009213693561,
        2305843009213693549,
    ];
    let members: Vec<_> = primes
        .iter()
        .enumerate()
        .map(|(i, p)| json!({"id":format!("e{i}"),"cost":p}))
        .collect();
    let request = json!({"read":"sum","data_version":"fold","state":{},"input":{},"context":{},
        "facts":{"universe":[{"entity":"E","members":members}]}});
    let runtime = evaluate_read_request(&m, &request.to_string()).unwrap();
    assert_eq!(
        runtime.record.as_json()["result"],
        "EVALUATION_ERROR",
        "{}",
        runtime.record.to_json_string()
    );
    assert!(
        runtime
            .record
            .as_json()
            .to_string()
            .contains("exact bound exceeded")
    );
    no_false_proof(&m);
}

#[test]
fn an_unbounded_fold_analysis_must_not_cap_its_result_at_the_runtime_limit() {
    let l = json!({"file":"fold-bound.dsl","line":1});
    let leaf =
        json!({"op":"lit","type":{"t":"decimal"},"value":"1000000000000000000000000000","loc":l});
    let mut body = leaf.clone();
    for _ in 1..5 {
        body = json!({"op":"mul","args":[body,leaf.clone()],"loc":l});
    }
    let sum = json!({"op":"sum","param":"member","args":[{"op":"select","entity":"E","loc":l}],"body":body,"loc":l});
    let w = json!({"ir_version":"0.7","enums":[],"nominals":[],"constraints":[],"invariants":[],"actions":[],"reads":[],
        "entities":[{"name":"E","fields":[],"loc":l}],
        "derived":[{"name":"total","kind":"derived","params":[],"body":sum,"loc":l}]});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let facts = behavior_core::admit::bounds::derived_facts(&m);
    // 10^135 times a possible 64-bit cardinality needs >511 bits.
    // A bound equal to the representation limit would conceal that obligation.
    assert!(
        facts["total"].nb > behavior_core::admit::bounds::MAX_BITS,
        "fold bound was silently capped: {:?}",
        facts["total"]
    );
}

#[test]
fn verification_bounds_cover_i64_minimum_and_heterogeneous_fold_denominators() {
    let l = json!({"file":"signed-bound.dsl","line":1});
    let one = json!({"op":"lit","type":{"t":"int"},"value":1,"loc":l});
    let cost = json!({"op":"field","param":"member","field":"cost","loc":l});
    let ratio = json!({"op":"div","args":[one,cost.clone()],"loc":l});
    let w = json!({"ir_version":"0.7","enums":[],"nominals":[],"constraints":[],"invariants":[],"actions":[],"reads":[],
        "entities":[{"name":"E","fields":[{"name":"cost","type":{"t":"int"},"loc":l}],"loc":l}],
        "derived":[
            {"name":"cost","kind":"derived","params":[{"name":"member","type":{"t":"entity","name":"E"}}],"body":cost,"loc":l},
            {"name":"total","kind":"derived","params":[],"body":{"op":"sum","param":"member","args":[{"op":"select","entity":"E","loc":l}],"body":ratio,"loc":l},"loc":l}]});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let facts = behavior_core::admit::bounds::verification_facts(&m);
    // abs(i64::MIN) = 2^63 needs 64 bits, not 63. A sum of arbitrary
    // fractions cannot retain one denominator's bound across its whole universe.
    assert_eq!(facts["cost"].nb, 64);
    assert!(facts["total"].db > behavior_core::admit::bounds::MAX_BITS);
}
