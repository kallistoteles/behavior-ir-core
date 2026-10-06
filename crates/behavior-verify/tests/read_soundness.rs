#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "../../behavior-core/tests/support/read_soundness.rs"]
mod model;

use behavior_verify::solver::Z3Process;
use behavior_verify::{CheckKind, Profile, verify};
use serde_json::json;

fn verify_filter(query: serde_json::Value) -> behavior_verify::Attestation {
    let mut wire = model::module(None, false);
    wire["reads"][0]["body"]["project"]["over"] = query;
    let m = behavior_core::admit(&wire.to_string()).unwrap();
    let p = Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    };
    verify(&m, &p, None, &Z3Process::from_env().unwrap())
}
#[test]
fn a_failing_filter_cannot_assume_its_own_successful_membership() {
    let a = verify_filter(model::filter(model::select(), model::dangerous_filter()));
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "counterexample"),
        "{}",
        a.to_json_string()
    );
}
#[test]
fn a_nested_filter_does_not_evaluate_its_body_when_the_base_is_false() {
    let base = model::filter(model::select(), model::boolean(false));
    let a = verify_filter(model::filter(base, model::dangerous_filter()));
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["outcome"] == "proven"),
        "{}",
        a.to_json_string()
    );
}
#[test]
fn difference_must_check_the_excluded_branch_for_evaluation_errors() {
    let q = json!({"op":"difference","args":[model::select(),model::filter(model::select(),model::dangerous_filter())],"loc":model::loc()});
    let a = verify_filter(q);
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "counterexample"),
        "{}",
        a.to_json_string()
    );
}

#[test]
fn read_proofs_do_not_assume_state_invariants_for_input_entities() {
    let mut w = model::module(Some("input"), false);
    w["invariants"] = json!([{"name":"positive_state","entity":"Culture","param":"c","loc":model::loc(),"body":model::op("ge",vec![model::field("c","measurements"),model::integer(1)])}]);
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let p = Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    };
    let a = verify(&m, &p, None, &Z3Process::from_env().unwrap());
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "counterexample"),
        "{}",
        a.to_json_string()
    );
}

#[test]
fn authenticated_proofs_report_and_bind_the_failing_filter_counterexample() {
    use behavior_verify::governance::trusted::{
        GovernanceSubject, VerificationEnvelopeV2, verify_authenticated,
    };
    let m = behavior_core::admit(&model::module(None, false).to_string()).unwrap();
    let p = Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    };
    let z = Z3Process::from_env().unwrap();
    let proof =
        verify_authenticated(&GovernanceSubject::Module(&m), &p, &"09".repeat(32), &z).unwrap();
    assert_eq!(proof.envelope.report()["result"], "not_verified");
    assert!(
        proof.envelope.report()["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "counterexample")
    );
    let parsed = VerificationEnvelopeV2::from_json(&proof.envelope.as_json().to_string()).unwrap();
    parsed
        .validate_for_subject(&GovernanceSubject::Module(&m), &p, "z3 4.16.0")
        .unwrap();
}

#[test]
fn query_value_reads_and_union_do_not_hide_filter_failures() {
    let q = model::filter(model::select(), model::dangerous_filter());
    let union = json!({"op":"union","args":[model::select(),q.clone()],"loc":model::loc()});
    let a = verify_filter(union);
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "counterexample"),
        "{}",
        a.to_json_string()
    );
    let mut w = model::module(None, false);
    w["reads"][0]["body"] = json!({"value":model::op("count",vec![q])});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let p = Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    };
    let a = verify(&m, &p, None, &Z3Process::from_env().unwrap());
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "counterexample"),
        "{}",
        a.to_json_string()
    );
}
