#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: current proof identity, archival decoding and strict candidate boundary.
#[path = "support/trusted.rs"]
mod oracle;
use behavior_verify::governance::trusted::{
    GovernanceCandidate, GovernanceSubject, VerificationEnvelopeV2, verify_authenticated,
};
use behavior_verify::solver::{Solver, Z3Process};
use behavior_verify::{CheckKind, Profile, VERIFIER_VERSION};
use serde_json::{Value, json};

fn empty_module() -> behavior_core::semantic::module::Module {
    behavior_core::admit(
        &json!({"ir_version":"0.4","enums":[],"nominals":[],"entities":[],
        "derived":[],"invariants":[],"constraints":[],"actions":[]})
        .to_string(),
    )
    .unwrap()
}

/// Independently signed empty-subject transport fixture. This is not a claim
/// that a historical engine run was captured here. Empty claims need no solver.
fn empty_archive(version: &str) -> Value {
    let module = empty_module();
    let profile = Profile {
        checks: vec![],
        ..Profile::default()
    };
    let common = json!({"subject":{"behavior_hash":module.behavior_version()},
        "profile_hash":profile.hash(),"verifier_version":version,"solver_version":"z3 4.16.0"});
    let mut manifest = common.clone();
    manifest["format"] = json!("behavior.verification_manifest.v1");
    manifest["obligations"] = json!([]);
    let manifest_hash = oracle::hash("behavior.verification_manifest.v1", &manifest);
    let mut report = common.clone();
    report["format"] = json!("behavior.verification_report.v2");
    report["expected_check_manifest_hash"] = json!(manifest_hash);
    report["checks"] = json!([]);
    report["findings"] = json!([]);
    report["result"] = json!("verified");
    let mut content = common;
    content["format"] = json!("behavior.verification_content.v2");
    content["expected_check_manifest_hash"] = json!(manifest_hash);
    content["report_hash"] = json!(oracle::hash("behavior.verification_report.v2", &report));
    content["issuer_key_id"] = json!(oracle::key_id("verifier"));
    let hash = oracle::hash("behavior.verification_content.v2", &content);
    json!({"format":"behavior.verification_envelope.v2","content":content,
        "profile":profile.to_json(),"expected_check_manifest":manifest,"report":report,
        "verification_hash":hash,"signature":{"format":"behavior.verification_signature.v2",
            "subject_hash":hash,"key_id":oracle::key_id("verifier"),
            "signature":oracle::signature("behavior.verification_signature.v2",&hash,"verifier")}})
}

#[test]
fn current_verifier_is_explicitly_09_and_signed_provenance_matches() {
    assert_eq!(VERIFIER_VERSION, "0.9.0");
    let m = empty_module();
    let p = Profile {
        checks: vec![],
        ..Profile::default()
    };
    let solver = Z3Process::from_env().unwrap();
    let result = verify_authenticated(
        &GovernanceSubject::Module(&m),
        &p,
        oracle::text("verifier.seed").trim(),
        &solver,
    )
    .unwrap();
    let actual = result.envelope.as_json();
    for part in ["content", "expected_check_manifest", "report"] {
        assert_eq!(actual[part]["verifier_version"], "0.9.0");
    }
    assert_eq!(actual, empty_archive("0.9.0"));
    result
        .envelope
        .validate_for_subject(&GovernanceSubject::Module(&m), &p, &solver.version())
        .unwrap();
}

#[test]
fn archived_07_and_08_envelopes_decode_without_current_proof_eligibility() {
    let m = empty_module();
    let p = Profile {
        checks: vec![],
        ..Profile::default()
    };
    for version in ["0.7.0", "0.8.0"] {
        let raw = empty_archive(version);
        let envelope = VerificationEnvelopeV2::from_json(&raw.to_string()).unwrap();
        assert_eq!(
            envelope.as_json(),
            raw,
            "archival claim must not be rewritten"
        );
        let refusal = envelope
            .validate_for_subject(&GovernanceSubject::Module(&m), &p, "z3 4.16.0")
            .expect_err("an old version is not proof of the current validation computation");
        assert_eq!(refusal.code, "INCOMPLETE_VERIFICATION");
    }
}

fn local_module() -> behavior_core::semantic::module::Module {
    let l = json!({"file":"017-governance.beh","line":1});
    behavior_core::admit(&json!({"ir_version":"0.7","enums":[],"nominals":[],"derived":[],"reads":[],"invariants":[],
        "entities":[{"name":"E","fields":[{"name":"x","type":{"t":"int"},"loc":l}],"loc":l}],
        "constraints":[{"name":"nonnegative","entity":"E","param":"e","body":{"op":"ge","args":[
            {"op":"field","param":"e","field":"x","loc":l},{"op":"lit","type":{"t":"int"},"value":0,"loc":l}],"loc":l},"loc":l}],
        "actions":[{"name":"set","params":[{"name":"e","role":"state","type":{"t":"entity","name":"E"}}],
            "preconditions":[],"postconditions":[],"effects":[{"target":{"param":"e","field":"x"},
                "value":{"op":"lit","type":{"t":"int"},"value":1,"loc":l},"loc":l}],"loc":l}]}).to_string()).unwrap()
}

fn candidate() -> Value {
    let m = local_module();
    let row = json!({"id":"e","x":0});
    let record = behavior_core::evaluate(&m,&json!({"action":"set","data_version":"017-parent",
        "state":{"e":row},"input":{},"context":{},"facts":{"universe":[{"entity":"E","members":[row]}]}}).to_string());
    assert_eq!(record.result(), "ALLOW");
    assert_eq!(record.as_json()["record_version"], "0.8");
    assert!(record.as_json().get("commands").is_none());
    let store = format!("sha256:{}", "ab".repeat(32));
    let content = json!({"kind":"action","store":store,
        "evaluated_history":{"format":"behavior.history_ref.v1","store":store,
            "state":format!("sha256:{}","cd".repeat(32)),"position":0,"record":store},
        "behavior_version":m.behavior_version(),"record":record.as_json(),"entity_declarations":{},
        "read_set":[],"read_facts":{},"write_set":[],"write_lifecycle":[]});
    json!({"format":"behavior.governance_candidate.v2",
        "transition_hash":oracle::hash("behavior.candidate_transition.v2",&content),"content":content})
}

#[test]
fn noncommand_current_candidates_use_strict_version_first_decoding() {
    let good = candidate();
    assert_eq!(
        GovernanceCandidate::from_json(&good.to_string())
            .unwrap()
            .as_json(),
        good
    );
    let mut accepted_bad = Vec::new();
    for mutation in [
        "unknown_record_key",
        "unknown_profile",
        "missing_universe",
        "unknown_child_observation",
        "unknown_version",
    ] {
        let mut bad = good.clone();
        match mutation {
            "unknown_record_key" => bad["content"]["record"]["hidden_semantics"] = json!(true),
            "unknown_profile" => {
                bad["content"]["record"]["validation_profile"] = json!("unrecognized")
            }
            "missing_universe" => {
                bad["content"]["record"]["facts"]
                    .as_object_mut()
                    .unwrap()
                    .remove("universe");
            }
            "unknown_child_observation" => {
                let child = bad["content"]["record"]["trace"]
                    .as_array_mut()
                    .unwrap()
                    .iter_mut()
                    .find(|s| s["phase"] == "constraint_post")
                    .unwrap();
                child["observations"][0]["hidden"] = json!(true);
            }
            _ => bad["content"]["record"]["record_version"] = json!("0.99"),
        }
        bad["transition_hash"] = json!(oracle::hash(
            "behavior.candidate_transition.v2",
            &bad["content"]
        ));
        match GovernanceCandidate::from_json(&bad.to_string()) {
            Ok(_) => accepted_bad.push(mutation),
            Err(refusal) => {
                assert_eq!(refusal.code, "INVALID_CANDIDATE", "{mutation}: {refusal:?}")
            }
        }
    }
    assert!(
        accepted_bad.is_empty(),
        "version-first decoder accepted malformed non-command evidence: {accepted_bad:?}"
    );
}

#[test]
fn supported_local_authenticated_proof_is_a_positive_control() {
    let m = local_module();
    let p = Profile {
        checks: vec![
            CheckKind::EvaluationError,
            CheckKind::Postcondition,
            CheckKind::Preservation,
        ],
        ..Profile::default()
    };
    let solver = Z3Process::from_env().unwrap();
    let result = verify_authenticated(
        &GovernanceSubject::Module(&m),
        &p,
        oracle::text("verifier.seed").trim(),
        &solver,
    )
    .unwrap();
    assert_eq!(
        result.envelope.report()["result"],
        "verified",
        "{}",
        result.diagnostics
    );
    result
        .envelope
        .validate_for_subject(&GovernanceSubject::Module(&m), &p, &solver.version())
        .unwrap();
}
