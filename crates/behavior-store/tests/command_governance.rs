#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/command_history.rs"]
mod h;
use behavior_core::semantic::module::Module;
use behavior_store::documents::{CommitBundle, EntityKey, SeedEntity};
use behavior_store::store::genesis_v2_for;
use behavior_store::{Backend, Store};
use behavior_verify::Profile;
use behavior_verify::governance::trusted::*;
use behavior_verify::solver::Z3Process;
use serde_json::{Value, json};
use std::collections::BTreeMap;
fn fixture(n: &str) -> String {
    std::fs::read_to_string(
        std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../../tests/fixtures/governance-v2")
            .join(n),
    )
    .unwrap()
}
fn wire() -> Value {
    let mut w = h::model::module();
    w["actions"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"recipient","role":"input","type":{"t":"string"}}));
    w["actions"][0]["command_effects"][0]["payload"]["recipient"] =
        json!({"op":"param","param":"recipient","loc":h::model::loc()});
    w
}
struct Trusted {
    m: Module,
    p: ExecutionPolicyV2,
    ep: EvidencePolicyV2,
    q: AuthorizationContextV2,
    proof: VerificationEnvelopeV2,
    s: Store<h::faults::FaultBackend>,
}
impl Trusted {
    fn new() -> Self {
        let m = behavior_core::admit(&wire().to_string()).unwrap();
        let p = ExecutionPolicyV2::from_json(&fixture("policy.json")).unwrap();
        let ep = EvidencePolicyV2::from_json(&fixture("evidence-policy.json")).unwrap();
        let q = AuthorizationContextV2::from_json(&fixture("context.json"), &p).unwrap();
        let profile = Profile::from_json(&fixture("profile.json")).unwrap();
        let proof = verify_authenticated(
            &GovernanceSubject::Module(&m),
            &profile,
            fixture("verifier.seed").trim(),
            &Z3Process::from_env().unwrap(),
        )
        .unwrap()
        .envelope;
        assert_eq!(proof.report()["result"], "verified");
        let s = Store::create(
            h::faults::FaultBackend::default(),
            &m,
            genesis_v2_for(
                &m,
                ep.clone(),
                vec![SeedEntity {
                    entity: "Order".into(),
                    value: h::model::value(2, true),
                }],
            )
            .unwrap(),
        )
        .unwrap();
        Self {
            m,
            p,
            ep,
            q,
            proof,
            s,
        }
    }
    fn candidate(&self, m: &Module, recipient: &str) -> CommitBundle {
        self.s
            .evaluate(
                m,
                "submit",
                &BTreeMap::from([("order".into(), "order-1".into())]),
                &json!({"recipient":recipient}),
                &json!({}),
                h::NOW,
                None,
            )
            .unwrap()
            .bundle
            .unwrap()
    }
    fn sign(&self, b: &CommitBundle) -> EvidenceV2 {
        let seed = fixture("authorizer.seed");
        let issuer = signing_key_id(seed.trim()).unwrap();
        let a = authorize_trusted(
            &GovernanceSubject::Module(&self.m),
            &b.governance_candidate().unwrap(),
            &self.ep,
            &self.p,
            std::slice::from_ref(&self.proof),
            &issuer,
            &self.q,
        )
        .unwrap();
        let signed = sign_authorization(&a, seed.trim()).unwrap();
        EvidenceV2::from_json(&json!({"format":"behavior.evidence.v2","execution_policy":self.p.as_json(),"authorization":signed.as_json(),"verifications":[self.proof.as_json()],"waivers":[],"waiver_signatures":[]}).to_string()).unwrap()
    }
    fn snapshot(&self) -> Value {
        let pos = self.s.current().unwrap().position;
        let key = EntityKey {
            entity: "Order".into(),
            id: "order-1".into(),
        };
        json!({"history":self.s.current_history().unwrap(),"version":self.s.backend().version_at(&key,pos).unwrap(),"keys":self.s.backend().keys_at("Order",pos).unwrap(),"incoming":self.s.backend().incoming_at(&key,pos).unwrap().iter().map(|e|e.to_json()).collect::<Vec<_>>(),"calls":self.s.backend().commit_calls,"next":self.s.backend().record(pos+1).unwrap()})
    }
}
#[test]
fn full_trusted_proof_allows_exact_mixed_command_commit_and_archived_replay() {
    let mut t = Trusted::new();
    let b = t.candidate(&t.m, "same");
    let ev = t.sign(&b);
    let signed = b.with_trusted_evidence(&ev).unwrap();
    let start = t.s.current_history().unwrap();
    t.s.commit_with_context(&t.m, &b.evaluated_state, &signed, &t.q)
        .unwrap();
    let end = t.s.current_history().unwrap();
    assert_eq!(end.position, 1);
    assert_eq!(h::all(&t.s).items().len(), 1);
    assert!(behavior_store::replay::replay_data(&t.s, &start.state_ref(), &end.state_ref()).ok);
}
#[test]
fn authorization_cannot_be_rebound_to_other_payload_declaration_or_multiplicity() {
    let mut t = Trusted::new();
    let original = t.candidate(&t.m, "same");
    let ev = t.sign(&original);
    let before = t.snapshot();
    let mut other = t.candidate(&t.m, "other");
    assert!(other.with_trusted_evidence(&ev).is_err());
    other.evidence = Some(behavior_store::documents::CommitEvidence::Trusted(
        Box::new(ev.clone()),
    ));
    assert!(
        t.s.commit_with_context(&t.m, &other.evaluated_state, &other, &t.q)
            .is_err()
    );
    assert_eq!(t.snapshot(), before);
    for kind in ["declaration", "count"] {
        let mut w = wire();
        if kind == "declaration" {
            w["commands"][0]["name"] = json!("Message");
            w["actions"][0]["command_effects"][0]["command"] = json!("Message");
        } else {
            let c = w["actions"][0]["command_effects"][0].clone();
            h::model::emissions_mut(&mut w).push(c);
        }
        let m = behavior_core::admit(&w.to_string()).unwrap();
        let mut changed = t.candidate(&m, "same");
        assert!(changed.with_trusted_evidence(&ev).is_err());
        changed.evidence = Some(behavior_store::documents::CommitEvidence::Trusted(
            Box::new(ev.clone()),
        ));
        assert!(
            t.s.commit_with_context(&m, &changed.evaluated_state, &changed, &t.q)
                .is_err(),
            "{kind}"
        );
        assert_eq!(t.snapshot(), before);
    }
}
#[test]
fn independent_context_time_policy_and_missing_evidence_refuse_without_writes() {
    let mut t = Trusted::new();
    let b = t.candidate(&t.m, "same");
    let ev = t.sign(&b);
    let signed = b.with_trusted_evidence(&ev).unwrap();
    let before = t.snapshot();
    assert!(t.s.commit(&t.m, &b.evaluated_state, &signed).is_err());
    assert!(
        t.s.commit_with_context(&t.m, &b.evaluated_state, &b, &t.q)
            .is_err()
    );
    for field in ["context", "time"] {
        let mut raw = t.q.as_json();
        if field == "context" {
            raw["required_context"]["risk_score"] = json!(8);
        } else {
            raw["policy_time"] = json!("2026-10-05T12:01:00Z");
        }
        let q = if field == "context" {
            assert!(AuthorizationContextV2::from_json(&raw.to_string(), &t.p).is_err());
            let mut p = t.p.as_json();
            p["required_context"][2]["expected"] = json!(8);
            let p = ExecutionPolicyV2::from_json(&p.to_string()).unwrap();
            AuthorizationContextV2::from_json(&raw.to_string(), &p).unwrap()
        } else {
            AuthorizationContextV2::from_json(&raw.to_string(), &t.p).unwrap()
        };
        assert!(
            t.s.commit_with_context(&t.m, &signed.evaluated_state, &signed, &q)
                .is_err()
        );
        assert_eq!(t.snapshot(), before);
    }
    let mut altered = signed.clone();
    altered.commit_time = "2026-10-05T12:01:00Z".into();
    assert!(
        t.s.commit_with_context(&t.m, &altered.evaluated_state, &altered, &t.q)
            .is_err()
    );
    assert_eq!(t.snapshot(), before);
    let mut raw = ev.as_json();
    raw["execution_policy"]["require_verified"] = json!(false);
    match EvidenceV2::from_json(&raw.to_string()) {
        Err(_) => {}
        Ok(changed) => {
            let altered = b.with_trusted_evidence(&changed).unwrap();
            assert!(
                t.s.commit_with_context(&t.m, &altered.evaluated_state, &altered, &t.q)
                    .is_err()
            );
        }
    }
    assert_eq!(t.snapshot(), before);
}
#[test]
fn exact_store_and_head_bindings_prevent_cross_lineage_and_stale_authorization_reuse() {
    let mut t = Trusted::new();
    let b = t.candidate(&t.m, "same");
    let ev = t.sign(&b);
    let original = b.with_trusted_evidence(&ev).unwrap();
    let other = t.candidate(&t.m, "first");
    let signed = other.with_trusted_evidence(&t.sign(&other)).unwrap();
    t.s.commit_with_context(&t.m, &other.evaluated_state, &signed, &t.q)
        .unwrap();
    let before = t.snapshot();
    assert!(
        t.s.commit_with_context(&t.m, &original.evaluated_state, &original, &t.q)
            .is_err()
    );
    assert_eq!(t.snapshot(), before);
    let mut seed = h::model::value(3, true);
    seed["id"] = json!("order-1");
    let mut other_store = Store::create(
        h::faults::FaultBackend::default(),
        &t.m,
        genesis_v2_for(
            &t.m,
            t.ep.clone(),
            vec![SeedEntity {
                entity: "Order".into(),
                value: seed,
            }],
        )
        .unwrap(),
    )
    .unwrap();
    let before = other_store.current_history().unwrap();
    assert!(
        other_store
            .commit_with_context(&t.m, &original.evaluated_state, &original, &t.q)
            .is_err()
    );
    assert_eq!(other_store.current_history().unwrap(), before);
    assert_eq!(other_store.backend().commit_calls, 0);
}
#[test]
fn signature_only_tamper_keeps_content_identity_but_fails_authentication_and_wrong_role_fails() {
    let t = Trusted::new();
    let b = t.candidate(&t.m, "same");
    let ev = t.sign(&b);
    let auth = ev.authorization();
    let mut raw = auth.as_json();
    let before = raw["authorization_hash"].clone();
    raw["signature"]["signature"] = json!("00".repeat(64));
    assert_eq!(raw["authorization_hash"], before);
    assert_eq!(
        behavior_core::canonical::tagged_hash("behavior.authorization.v2", &raw["content"])
            .unwrap(),
        before.as_str().unwrap()
    );
    assert!(SignedAuthorizationV2::from_json(&raw.to_string()).is_err());
    let key = signing_key_id(fixture("verifier.seed").trim()).unwrap();
    match authorize_trusted(
        &GovernanceSubject::Module(&t.m),
        &b.governance_candidate().unwrap(),
        &t.ep,
        &t.p,
        &[t.proof],
        &key,
        &t.q,
    ) {
        Err(_) => {}
        Ok(content) => assert_eq!(content.as_json()["decision"], "refuse"),
    };
}
#[test]
fn none_policy_retains_normal_independent_rederivation_without_a_signature() {
    let m = h::module(true, false);
    let mut s = h::store(&m);
    h::commit(&m, &mut s, "same");
    assert_eq!(h::all(&s).items().len(), 1);
}

#[test]
fn omitted_or_wrong_profile_proof_envelopes_cannot_satisfy_command_authorization() {
    let t = Trusted::new();
    let b = t.candidate(&t.m, "same");
    let ev = t.sign(&b);
    let before = t.snapshot();
    for fault in ["missing", "profile"] {
        let mut raw = ev.as_json();
        if fault == "missing" {
            raw["verifications"] = json!([]);
        } else {
            raw["verifications"][0]["report"]["profile_hash"] =
                json!(format!("sha256:{}", "ab".repeat(32)));
        }
        assert!(EvidenceV2::from_json(&raw.to_string()).is_err(), "{fault}");
        assert_eq!(t.snapshot(), before);
    }
}
