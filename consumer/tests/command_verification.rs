#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/commands.rs"]
mod model;
use behavior_engine::store::commands::CommandStreamRequest;
use behavior_engine::store::documents::SeedEntity;
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{InMemoryBackend, Store};
use behavior_engine::verify::governance::*;
use behavior_engine::verify::solver::Z3Process;
use behavior_engine::verify::{CheckKind, Profile};
use serde_json::json;
use std::collections::BTreeMap;
fn fixture(n: &str) -> String {
    std::fs::read_to_string(
        std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../tests/fixtures/governance-v2")
            .join(n),
    )
    .unwrap()
}
#[test]
fn the_same_trusted_policy_governs_state_only_and_command_only_transitions() {
    let mut state_wire = model::module();
    state_wire["commands"] = json!([]);
    state_wire["actions"][0]["command_effects"] = json!([]);
    let ep = EvidencePolicyV2::from_json(&fixture("evidence-policy-verifier-0.8.json")).unwrap();
    let p = ExecutionPolicyV2::from_json(&fixture("policy-verifier-0.8.json")).unwrap();
    let q = AuthorizationContextV2::from_json(&fixture("context.json"), &p).unwrap();
    let profile = Profile::from_json(&fixture("profile.json")).unwrap();
    let solver = Z3Process::from_env().unwrap();
    let author_seed = fixture("authorizer.seed");
    let issuer = signing_key_id(author_seed.trim()).unwrap();
    for (wire, action, bindings, seeds, input, command_count) in [
        (
            state_wire,
            "submit",
            BTreeMap::from([("order".into(), "order-1".into())]),
            vec![SeedEntity {
                entity: "Order".into(),
                value: model::value(2, true),
            }],
            json!({}),
            0,
        ),
        (
            model::command_only_module(true),
            "receipt",
            BTreeMap::new(),
            vec![],
            json!({"recipient":"same"}),
            1,
        ),
    ] {
        let m = behavior_engine::admit(&wire.to_string()).unwrap();
        let mut s = Store::create(
            InMemoryBackend::new(),
            &m,
            genesis_v2_for(&m, ep.clone(), seeds).unwrap(),
        )
        .unwrap();
        let start = s.current_history().unwrap();
        let b = s
            .evaluate(
                &m,
                action,
                &bindings,
                &input,
                &json!({}),
                "2026-10-05T12:00:00Z",
                None,
            )
            .unwrap()
            .bundle
            .unwrap();
        let proof = verify_authenticated(
            &GovernanceSubject::Module(&m),
            &profile,
            fixture("verifier.seed").trim(),
            &solver,
        )
        .unwrap()
        .envelope;
        assert_eq!(proof.report()["result"], "verified");
        let auth = authorize_trusted(
            &GovernanceSubject::Module(&m),
            &b.governance_candidate().unwrap(),
            &ep,
            &p,
            std::slice::from_ref(&proof),
            &issuer,
            &q,
        )
        .unwrap();
        assert_eq!(auth.as_json()["decision"], "allow");
        let auth = sign_authorization(&auth, author_seed.trim()).unwrap();
        let ev=EvidenceV2::from_json(&json!({"format":"behavior.evidence.v2","execution_policy":p.as_json(),"authorization":auth.as_json(),"verifications":[proof.as_json()],"waivers":[],"waiver_signatures":[]}).to_string()).unwrap();
        let b = b.with_trusted_evidence(&ev).unwrap();
        let c = s
            .commit_with_context(&m, &b.evaluated_state, &b, &q)
            .unwrap();
        assert_eq!(c.evidence_trust, Some("authenticated"));
        let req = CommandStreamRequest::from_json(
            &json!({"format":"behavior.command_stream_request.v1","after":start}).to_string(),
        )
        .unwrap();
        assert_eq!(s.commands_since(&req).unwrap().items().len(), command_count);
    }
}
#[test]
fn authenticated_reachable_failures_and_resource_inconclusive_never_become_proven() {
    let m = behavior_engine::admit(&model::ratio_module(model::boolean(true)).to_string()).unwrap();
    let solver = Z3Process::from_env().unwrap();
    for (limit, expected) in [(20_000_000, "not_verified"), (1, "not_verified")] {
        let profile = Profile {
            checks: vec![CheckKind::EvaluationError],
            rlimit: limit,
            ..Default::default()
        };
        let proof = verify_authenticated(
            &GovernanceSubject::Module(&m),
            &profile,
            fixture("verifier.seed").trim(),
            &solver,
        )
        .unwrap()
        .envelope;
        assert_eq!(proof.report()["result"], expected);
        let raw = proof.as_json();
        assert!(VerificationEnvelopeV2::from_json(&raw.to_string()).is_ok());
        assert_eq!(
            proof.report()["checks"].as_array().unwrap().len(),
            proof.manifest()["obligations"].as_array().unwrap().len()
        );
        if limit == 1 {
            assert!(
                proof.report()["checks"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .any(|c| c["outcome"] == "inconclusive" && c["reason"] == "resource_limit")
            );
        }
        let serialized = raw.to_string();
        assert!(!serialized.contains("delivery_success"));
    }
}
