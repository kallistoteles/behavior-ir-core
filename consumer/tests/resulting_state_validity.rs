#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: complete current validity through behavior-engine exclusively.
#[path = "support/commands.rs"]
mod commands;

use behavior_engine::invocation::{RequestedInvocation, Snapshot, invoke_with_snapshot};
use behavior_engine::store::{InMemoryBackend, Store};
use behavior_engine::verify::governance::*;
use behavior_engine::verify::{Profile, solver::Z3Process};
use serde_json::{Value, json};
use std::path::Path;

fn fixture(path: &str) -> String {
    std::fs::read_to_string(
        Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../tests/fixtures")
            .join(path),
    )
    .unwrap()
}
fn policy(name: &str) -> ExecutionPolicyV2 {
    ExecutionPolicyV2::from_json(&fixture(&format!("governance-v2/{name}"))).unwrap()
}
fn evidence_policy(name: &str) -> EvidencePolicyV2 {
    EvidencePolicyV2::from_json(&fixture(&format!("governance-v2/{name}"))).unwrap()
}
fn current(record: &Value, command: bool, result: &str) {
    assert_eq!(record["record_version"], "0.8");
    assert_eq!(
        record["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    assert_eq!(record["result"], result, "{record}");
    assert_eq!(record.get("commands").is_some(), command);
    behavior_engine::DecisionRecord::from_json(&record.to_string()).unwrap();
}

#[test]
fn facade_plain_and_invocation_preserve_complete_validity_and_typed_unchanged_witnesses() {
    for command in [false, true] {
        let mut wire: Value = serde_json::from_str(&fixture(
            "resulting-state-validity/audit-counterexample/module.json",
        ))
        .unwrap();
        if command {
            wire["ir_version"] = json!("0.8");
            wire["commands"] = json!([]);
            for action in wire["actions"].as_array_mut().unwrap() {
                action["command_effects"] = json!([]);
            }
        }
        let module = behavior_engine::admit(&wire.to_string()).unwrap();
        let parent = json!({"id":"e0","x":1,"y":2,"target":"new"});
        for (id, result) in [("new", "DENY"), ("unrelated", "ALLOW")] {
            let facts = json!({"universe":[{"entity":"E","members":[parent]}],"identities":[{"entity":"E","id":id,"used":false}]});
            let request = json!({"action":"create","data_version":"facade017","state":{},"input":{"id":id},"context":{},"facts":facts});
            let record = behavior_engine::evaluate(&module, &request.to_string());
            current(record.as_json(), command, result);
            let snapshot = json!({"format":"behavior.snapshot.v1","data_version":"facade017","entities":[{"entity":"E","value":parent}],"facts":facts});
            let snapshot = Snapshot::decode(&module, &snapshot.to_string())
                .unwrap()
                .0
                .unwrap();
            let requested=RequestedInvocation::decode(&json!({"format":"behavior.invocation.v1","capability":"create","bindings":{},"input":{"id":id},"context":{}}).to_string()).unwrap().0.unwrap();
            let invoked = invoke_with_snapshot(&module, &requested, &snapshot).unwrap();
            assert_eq!(invoked.inner_record(), Some(record.as_json()));
            if result == "DENY" {
                let step = record.as_json()["trace"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .find(|step| step["outcome"] == false && step["phase"] == "constraint_post")
                    .unwrap();
                assert_eq!(step["subject"], json!({"entity":"E","id":"e0"}));
                assert_eq!(step["obligation"]["source"], "declared");
                assert_eq!(step["obligation"]["name"], "positive");
                assert_eq!(step["obligation"]["hash"], step["hash"]);
                assert_eq!(
                    step["observations"],
                    json!([{"field":"target","phase_state":"S'","value":"new"}])
                );
                assert!(
                    record.as_json()["facts"]["fields"]
                        .as_array()
                        .unwrap()
                        .contains(&json!({"entity":"E","id":"e0","field":"target","value":"new"})),
                    "unbound parent observation lost through facade"
                );
                assert_eq!(record.as_json()["changes"], json!([]));
                assert!(record.as_json().get("lifecycle").is_none());
            }
        }
    }
}

#[test]
fn facade_partial_parent_is_explicitly_refused_without_body_or_commands() {
    let module = behavior_engine::admit(&commands::module().to_string()).unwrap();
    let mut request = commands::request(2, true);
    request.as_object_mut().unwrap().remove("facts");
    let record = behavior_engine::evaluate(&module, &request.to_string());
    current(record.as_json(), true, "INVALID_INPUT");
    assert_eq!(
        record.as_json()["reasons"][0]["code"],
        "INVALID_STATE_SNAPSHOT"
    );
    assert_eq!(record.as_json()["trace"], json!([]));
    assert!(record.command_intents().is_empty());
}

#[test]
fn facade_command_multiplicity_survives_corrected_empty_state_validation() {
    let mut wire = commands::command_only_module(true);
    let emission = wire["actions"][0]["command_effects"][0].clone();
    wire["actions"][0]["command_effects"] = json!([emission.clone(), emission.clone(), emission]);
    let module = behavior_engine::admit(&wire.to_string()).unwrap();
    let mut request = commands::command_only_request("same");
    request["facts"] = json!({"universe":[]});
    let record = behavior_engine::evaluate(&module, &request.to_string());
    current(record.as_json(), true, "ALLOW");
    assert_eq!(record.command_intents().len(), 3);
    assert_eq!(
        record.as_json()["commands"]["intents"]
            .as_array()
            .unwrap()
            .len(),
        3
    );
    assert_eq!(record.as_json()["changes"], json!([]));
    assert!(behavior_engine::replay(&module, &record.to_json_string()).matches);
}

#[test]
fn facade_reports_current_record_and_verifier_without_removing_archives() {
    let info = behavior_engine::engine_info();
    assert_eq!(info["records"], json!(["0.4", "0.5", "0.6", "0.7", "0.8"]));
    assert_eq!(info["verifier"], "0.9.0");
    assert_eq!(behavior_engine::verify::VERIFIER_VERSION, "0.9.0");
    assert_eq!(
        info["accepted_wire_ir"],
        json!(["0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8"])
    );
    assert_eq!(
        info["read_records"],
        json!(["behavior.read_record.v1", "behavior.read_record.v2"])
    );
}

#[test]
fn separately_named_current_policies_have_exact_identities_and_leave_old_versions_explicit() {
    let old = policy("policy-verifier-0.8.json");
    let current = policy("policy-verifier-0.9.json");
    assert_eq!(old.as_json()["accepted_verifiers"], json!(["0.8.0"]));
    assert_eq!(current.as_json()["accepted_verifiers"], json!(["0.9.0"]));
    assert_eq!(
        current.hash(),
        "sha256:fb8be06d21722d7ff5a9e00b841d9cd1955d9b85f49ac82838e6c7739b576d44"
    );
    assert_ne!(old.hash(), current.hash());
    let old_ep = evidence_policy("evidence-policy-verifier-0.8.json");
    let new_ep = evidence_policy("evidence-policy-verifier-0.9.json");
    assert_eq!(old_ep.as_json()["execution_policies"], json!([old.hash()]));
    assert_eq!(
        new_ep.as_json()["execution_policies"],
        json!([current.hash()])
    );
    assert_ne!(old_ep.hash(), new_ep.hash());
}

#[test]
fn current_authenticated_proof_requires_explicit_current_policy_and_cannot_upgrade_old_policy() {
    let module = behavior_engine::admit(&fixture("commands/modules/receipt.json")).unwrap();
    let profile = Profile::from_json(&fixture("governance-v2/profile.json")).unwrap();
    let solver = Z3Process::from_env().unwrap();
    let proof = verify_authenticated(
        &GovernanceSubject::Module(&module),
        &profile,
        fixture("governance-v2/verifier.seed").trim(),
        &solver,
    )
    .unwrap()
    .envelope;
    assert_eq!(proof.as_json()["content"]["verifier_version"], "0.9.0");
    assert_eq!(proof.report()["result"], "verified");
    let seed = fixture("governance-v2/authorizer.seed");
    let issuer = signing_key_id(seed.trim()).unwrap();
    for (pname, ename, expected) in [
        (
            "policy-verifier-0.9.json",
            "evidence-policy-verifier-0.9.json",
            "allow",
        ),
        (
            "policy-verifier-0.8.json",
            "evidence-policy-verifier-0.8.json",
            "refuse",
        ),
    ] {
        let policy = policy(pname);
        let ep = evidence_policy(ename);
        let context =
            AuthorizationContextV2::from_json(&fixture("governance-v2/context.json"), &policy)
                .unwrap();
        let store = Store::create(
            InMemoryBackend::new(),
            &module,
            behavior_engine::store::store::genesis_v2_for(&module, ep.clone(), vec![]).unwrap(),
        )
        .unwrap();
        let bundle = store
            .evaluate(
                &module,
                "receipt",
                &Default::default(),
                &json!({"recipient":"same"}),
                &json!({}),
                "2026-10-05T12:00:00Z",
                None,
            )
            .unwrap()
            .bundle
            .unwrap();
        let candidate = bundle.governance_candidate().unwrap();
        let result = authorize_trusted(
            &GovernanceSubject::Module(&module),
            &candidate,
            &ep,
            &policy,
            std::slice::from_ref(&proof),
            &issuer,
            &context,
        )
        .unwrap();
        assert_eq!(
            result.as_json()["decision"],
            expected,
            "{pname}: {}",
            result.as_json()
        );
        if expected == "refuse" {
            assert!(
                result.as_json()["reasons"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .any(|reason| reason["code"] == "proof_not_accepted"
                        && reason["verification_hash"] == proof.hash())
            );
        }
        assert_eq!(
            policy.as_json()["accepted_verifiers"],
            json!([if expected == "allow" {
                "0.9.0"
            } else {
                "0.8.0"
            }])
        );
    }
}

// Immutable baseline932eb8188dc28393213491e27f66e3bc7e273a6b, public fixture
// authority. Exact capture/provenance: specs/017-resulting-state-validity/evidence/
// runs/US2/profiles/archive-proof-run.json. Inline bytes keep --rev consumers
// self-contained; this is archived evidence, never a fresh proof.
const ARCHIVED_RECEIPT_PROOF: &str = r#"{"content":{"expected_check_manifest_hash":"sha256:02356a912aa7f5bd47f896902ef4708cf47405d60f41ae901aced447d20da577","format":"behavior.verification_content.v2","issuer_key_id":"ed25519:3df4144e0b32f375cdd255b6daea7c449ddfe779888013264bbb8040eedcab05","profile_hash":"sha256:f9f9d4c1a62e2f9d1064cfb6e1d0ade7143a1b22d985cf82a0df2337a5918303","report_hash":"sha256:65be5b28b6277a796e889ce3edbdaf425c42bd19d27b982c51619315f8a68ec1","solver_version":"z3 4.16.0","subject":{"behavior_hash":"sha256:0be1b31a1532c85c8f31ced11683ace26c64d72fd68e553f71a072a6b60f9f93"},"verifier_version":"0.8.0"},"expected_check_manifest":{"format":"behavior.verification_manifest.v1","obligations":[],"profile_hash":"sha256:f9f9d4c1a62e2f9d1064cfb6e1d0ade7143a1b22d985cf82a0df2337a5918303","solver_version":"z3 4.16.0","subject":{"behavior_hash":"sha256:0be1b31a1532c85c8f31ced11683ace26c64d72fd68e553f71a072a6b60f9f93"},"verifier_version":"0.8.0"},"format":"behavior.verification_envelope.v2","profile":{"checks":["evaluation_error","postcondition","preservation"],"hash":"sha256:f9f9d4c1a62e2f9d1064cfb6e1d0ade7143a1b22d985cf82a0df2337a5918303","rlimit":20000000,"wall_clock_guard_ms":60000},"report":{"checks":[],"expected_check_manifest_hash":"sha256:02356a912aa7f5bd47f896902ef4708cf47405d60f41ae901aced447d20da577","findings":[],"format":"behavior.verification_report.v2","profile_hash":"sha256:f9f9d4c1a62e2f9d1064cfb6e1d0ade7143a1b22d985cf82a0df2337a5918303","result":"verified","solver_version":"z3 4.16.0","subject":{"behavior_hash":"sha256:0be1b31a1532c85c8f31ced11683ace26c64d72fd68e553f71a072a6b60f9f93"},"verifier_version":"0.8.0"},"signature":{"format":"behavior.verification_signature.v2","key_id":"ed25519:3df4144e0b32f375cdd255b6daea7c449ddfe779888013264bbb8040eedcab05","signature":"24aa346b63b8c2f3ae42d6b3f34d256bcf851dc7724de5a273e1bacb0841bd021a4b54dd4f634fadc16c1f34755bee833df12669ae7355eab67ba4b116ccdf0c","subject_hash":"sha256:2f8aa220f441243d712bf6b8fae1c1ed4726c53e451105e5d7dc2a95881c67ee"},"verification_hash":"sha256:2f8aa220f441243d712bf6b8fae1c1ed4726c53e451105e5d7dc2a95881c67ee"}"#;

#[test]
fn actual_archived_authenticated_proof_remains_decodable_without_current_eligibility() {
    let proof = VerificationEnvelopeV2::from_json(ARCHIVED_RECEIPT_PROOF).unwrap();
    assert_eq!(proof.as_json()["content"]["verifier_version"], "0.8.0");
    assert_eq!(proof.report()["result"], "verified");
    assert_eq!(
        proof.as_json()["content"]["issuer_key_id"],
        signing_key_id(fixture("governance-v2/verifier.seed").trim()).unwrap()
    );
    let module = behavior_engine::admit(&fixture("commands/modules/receipt.json")).unwrap();
    let profile = Profile::from_json(&fixture("governance-v2/profile.json")).unwrap();
    assert!(
        proof
            .validate_for_subject(&GovernanceSubject::Module(&module), &profile, "z3 4.16.0")
            .is_err(),
        "a correctly authenticated archive cannot stand in for a fresh corrected verifier0.9 proof"
    );
}

#[test]
fn facade_requests_cannot_inject_an_archive_selector() {
    let module = behavior_engine::admit(&commands::command_only_module(true).to_string()).unwrap();
    for (key, value) in [
        ("validation_profile", json!("archived")),
        ("record_version", json!("0.7")),
        ("execution_purpose", json!("archived")),
    ] {
        let mut request = commands::command_only_request("same");
        request["facts"] = json!({"universe":[]});
        request[key] = value.clone();
        let record = behavior_engine::evaluate(&module, &request.to_string());
        current(record.as_json(), true, "INVALID_INPUT");
        assert_eq!(record.as_json()["trace"], json!([]));
        assert!(record.command_intents().is_empty());
        let mut requested = json!({"format":"behavior.invocation.v1","capability":"receipt","bindings":{},"input":{"recipient":"same"},"context":{}});
        requested[key] = value;
        let decoded = RequestedInvocation::decode(&requested.to_string()).unwrap();
        assert!(decoded.0.is_none());
        assert!(!decoded.1.is_empty());
    }
}
