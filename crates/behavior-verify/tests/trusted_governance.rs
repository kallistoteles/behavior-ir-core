#![allow(clippy::unwrap_used, clippy::expect_used)]
//! General G1 authorization: integrity alone establishes no authority.
#[path = "support/trusted.rs"]
mod oracle;
use behavior_verify::governance::trusted::*;
use serde_json::{Value, json};

fn policy(v: &Value) -> ExecutionPolicyV2 {
    ExecutionPolicyV2::from_json(&v.to_string()).unwrap()
}
fn ep(v: &Value) -> EvidencePolicyV2 {
    EvidencePolicyV2::from_json(&v.to_string()).unwrap()
}
fn context(v: &Value, p: &ExecutionPolicyV2) -> AuthorizationContextV2 {
    AuthorizationContextV2::from_json(&v.to_string(), p).unwrap()
}

#[test]
fn complete_policies_have_independent_content_identity_and_distinct_requirements() {
    for name in [
        "evidence-policy.json",
        "evidence-policy-none.json",
        "evidence-policy-deny-all.json",
    ] {
        let raw = oracle::fixture(name);
        let parsed = ep(&raw);
        assert_eq!(parsed.as_json(), raw);
        assert_eq!(
            parsed.hash(),
            oracle::hash("behavior.evidence_policy.v2", &raw)
        );
        assert_eq!(
            parsed.requires_authorization(),
            name != "evidence-policy-none.json"
        );
        assert_eq!(
            parsed.migration_requires_authorization(),
            parsed.requires_authorization()
        );
    }
    for name in ["policy.json", "policy-none.json"] {
        let raw = oracle::fixture(name);
        assert_eq!(
            policy(&raw).hash(),
            oracle::hash("behavior.policy.v2", &raw)
        );
    }
}

#[test]
fn explicit_migration_rule_does_not_silently_inherit_action_requirement() {
    let mut raw = oracle::fixture("evidence-policy.json");
    raw["migration"] = json!({"require":"none","trusted_authorities":[],"execution_policies":[]});
    let parsed = ep(&raw);
    assert!(parsed.requires_authorization());
    assert!(!parsed.migration_requires_authorization());
    assert_ne!(
        parsed.hash(),
        ep(&oracle::fixture("evidence-policy.json")).hash()
    );
}

#[test]
fn new_policy_documents_are_closed_complete_and_duplicate_safe() {
    let raw = oracle::fixture("policy.json");
    for field in raw.as_object().unwrap().keys() {
        let mut missing = raw.clone();
        missing.as_object_mut().unwrap().remove(field);
        assert!(
            ExecutionPolicyV2::from_json(&missing.to_string()).is_err(),
            "missing {field}"
        );
    }
    let mut extra = raw.clone();
    extra["trusted_anyone"] = json!(true);
    assert!(ExecutionPolicyV2::from_json(&extra.to_string()).is_err());
    let duplicate = format!("{{\"require_verified\":false,{}", &raw.to_string()[1..]);
    assert!(ExecutionPolicyV2::from_json(&duplicate).is_err());
    let mut unknown = oracle::fixture("evidence-policy.json");
    unknown["require"] = json!("any_allow_document");
    assert!(EvidencePolicyV2::from_json(&unknown.to_string()).is_err());
}

#[test]
fn policy_sets_and_key_intervals_are_canonical_not_first_or_last_wins() {
    let raw = oracle::fixture("policy.json");
    for field in [
        "accepted_profiles",
        "accepted_solvers",
        "accepted_verifiers",
        "required_checks",
        "trusted_verifiers",
    ] {
        let mut duplicate = raw.clone();
        let a = duplicate[field].as_array_mut().unwrap();
        a.push(a[0].clone());
        assert!(
            ExecutionPolicyV2::from_json(&duplicate.to_string()).is_err(),
            "{field}"
        );
    }
    for key in [
        format!("ed25519:{}", "00".repeat(32)),
        oracle::key_id("verifier").to_uppercase(),
        "ed25519:abcd".into(),
    ] {
        let mut weak = raw.clone();
        weak["trusted_verifiers"][0]["key_id"] = json!(key);
        assert!(ExecutionPolicyV2::from_json(&weak.to_string()).is_err());
    }
    let mut inverted = raw.clone();
    inverted["trusted_verifiers"][0]["not_after"] =
        inverted["trusted_verifiers"][0]["not_before"].clone();
    assert!(ExecutionPolicyV2::from_json(&inverted.to_string()).is_err());
    let mut context_order = raw;
    context_order["required_context"]
        .as_array_mut()
        .unwrap()
        .reverse();
    assert!(ExecutionPolicyV2::from_json(&context_order.to_string()).is_err());
}

#[test]
fn full_context_roundtrip_hash_and_bound_time_are_exact() {
    let raw = oracle::fixture("context.json");
    let p = policy(&oracle::fixture("policy.json"));
    let q = context(&raw, &p);
    assert_eq!(q.as_json(), raw);
    assert_eq!(
        q.hash(),
        oracle::hash("behavior.authorization_context.v2", &raw)
    );
    assert_eq!(q.policy_time(), "2026-10-05T12:00:00Z");
    assert!(q.validate_commit_time("2026-10-05T12:00:00Z").is_ok());
    assert!(q.validate_commit_time("2026-10-05T12:00:01Z").is_err());
    let mut different = raw;
    different["policy_time"] = json!("2026-10-06T12:00:00Z");
    let changed = context(&different, &p);
    assert_ne!(changed.hash(), q.hash());
    // Explicit policy time need not equal the explicit bound commit time.
    assert!(changed.validate_commit_time("2026-10-05T12:00:00Z").is_ok());
}

#[test]
fn unbound_context_requires_explicit_null_not_a_default_or_hidden_time() {
    let raw = oracle::fixture("context-unbound.json");
    let p = policy(&oracle::fixture("policy-none.json"));
    let q = context(&raw, &p);
    assert!(q.validate_commit_time("2027-01-01T00:00:00Z").is_ok());
    let mut nonnull = raw.clone();
    nonnull["requested_commit_time"] = json!("2026-10-05T12:00:00Z");
    assert!(AuthorizationContextV2::from_json(&nonnull.to_string(), &p).is_err());
    let mut missing = raw;
    missing
        .as_object_mut()
        .unwrap()
        .remove("requested_commit_time");
    assert!(AuthorizationContextV2::from_json(&missing.to_string(), &p).is_err());
}

#[test]
fn context_is_the_closed_typed_product_declared_by_the_exact_policy() {
    let raw = oracle::fixture("context.json");
    let p = policy(&oracle::fixture("policy.json"));
    for patch in [
        json!({}),
        json!({"actor":"fixture_operator","approved":true}),
        json!({"actor":"fixture_operator","approved":true,"risk_score":7,"extra":true}),
        json!({"actor":"fixture_operator","approved":"true","risk_score":7}),
        json!({"actor":"other","approved":true,"risk_score":7}),
        json!({"actor":"fixture_operator","approved":true,"risk_score":9223372036854775808_u64}),
        json!({"actor":"fixture_operator","approved":true,"risk_score":7.0}),
    ] {
        let mut bad = raw.clone();
        bad["required_context"] = patch;
        assert!(
            AuthorizationContextV2::from_json(&bad.to_string(), &p).is_err(),
            "{bad}"
        );
    }
    for field in raw.as_object().unwrap().keys() {
        let mut bad = raw.clone();
        bad.as_object_mut().unwrap().remove(field);
        assert!(
            AuthorizationContextV2::from_json(&bad.to_string(), &p).is_err(),
            "missing {field}"
        );
    }
    let mut extra = raw;
    extra["now"] = json!("2026-10-05T12:00:00Z");
    assert!(AuthorizationContextV2::from_json(&extra.to_string(), &p).is_err());
}

#[test]
fn time_means_real_gregorian_utc_seconds_instead_of_lexically_plausible_text() {
    let p = policy(&oracle::fixture("policy-none.json"));
    for time in [
        "0001-01-01T00:00:00Z",
        "2000-02-29T23:59:59Z",
        "9999-12-31T23:59:59Z",
    ] {
        let mut raw = oracle::fixture("context-unbound.json");
        raw["policy_time"] = json!(time);
        assert!(
            AuthorizationContextV2::from_json(&raw.to_string(), &p).is_ok(),
            "{time}"
        );
    }
    for time in [
        "0000-01-01T00:00:00Z",
        "1900-02-29T00:00:00Z",
        "2026-02-29T00:00:00Z",
        "2026-04-31T00:00:00Z",
        "2026-13-01T00:00:00Z",
        "2026-10-05T24:00:00Z",
        "2026-10-05T12:60:00Z",
        "2026-10-05T12:00:60Z",
        "2026-10-05T12:00:00.0Z",
        "2026-10-05T12:00:00+00:00",
        "2026-1-05T12:00:00Z",
    ] {
        let mut raw = oracle::fixture("context-unbound.json");
        raw["policy_time"] = json!(time);
        let e = AuthorizationContextV2::from_json(&raw.to_string(), &p).expect_err(time);
        assert_eq!(e.code, "INVALID_TIME");
    }
}

#[test]
fn independent_signature_binds_content_issuer_and_purpose_outside_content_identity() {
    let m = oracle::module();
    let c = oracle::candidate(&m);
    let p = oracle::fixture("policy-none.json");
    let e = oracle::evidence_policy_for(&p);
    let q = oracle::fixture("context-unbound.json");
    let content = oracle::authorization(&c, &e, &p, &q);
    let signed = oracle::signed(
        &content,
        "authorizer",
        "behavior.authorization_signature.v2",
    );
    let decoded = SignedAuthorizationV2::from_json(&signed.to_string()).unwrap();
    assert_eq!(
        decoded.authorization_hash(),
        oracle::hash("behavior.authorization.v2", &content)
    );
    assert_eq!(decoded.as_json(), signed);
    for mutation in [
        "missing",
        "signature",
        "content",
        "issuer",
        "subject",
        "purpose",
        "uppercase",
        "weak",
    ] {
        let mut bad = signed.clone();
        match mutation {
            "missing" => {
                bad.as_object_mut().unwrap().remove("signature");
            }
            "signature" => bad["signature"]["signature"] = json!("00".repeat(64)),
            "content" => bad["content"]["decision"] = json!("refuse"),
            "issuer" => bad["content"]["issuer_key_id"] = json!(oracle::key_id("verifier")),
            "subject" => {
                bad["signature"]["subject_hash"] = json!(format!("sha256:{}", "11".repeat(32)))
            }
            "purpose" => {
                bad = oracle::signed(&content, "authorizer", "behavior.verification_signature.v2")
            }
            "uppercase" => {
                bad["signature"]["signature"] = json!(
                    bad["signature"]["signature"]
                        .as_str()
                        .unwrap()
                        .to_uppercase()
                )
            }
            "weak" => {
                bad["content"]["issuer_key_id"] = json!(format!("ed25519:{}", "00".repeat(32)));
            }
            _ => unreachable!(),
        }
        assert!(
            SignedAuthorizationV2::from_json(&bad.to_string()).is_err(),
            "accepted {mutation}"
        );
    }
}

#[test]
fn an_authorization_cannot_assert_a_different_time_from_its_archived_context() {
    let m = oracle::module();
    let c = oracle::candidate(&m);
    let p = oracle::fixture("policy-none.json");
    let e = oracle::evidence_policy_for(&p);
    let q = oracle::fixture("context-unbound.json");
    let mut a = oracle::authorization(&c, &e, &p, &q);
    a["authorized_at"] = json!("2026-10-06T12:00:00Z");
    let signed = oracle::signed(&a, "authorizer", "behavior.authorization_signature.v2");
    assert!(SignedAuthorizationV2::from_json(&signed.to_string()).is_err());
}

#[test]
fn trusted_authorizer_computes_then_signs_exact_candidate_policy_and_context() {
    let m = oracle::module();
    let raw_c = oracle::candidate(&m);
    let c = GovernanceCandidate::from_json(&raw_c.to_string()).unwrap();
    let raw_p = oracle::fixture("policy-none.json");
    let p = policy(&raw_p);
    let raw_e = oracle::evidence_policy_for(&raw_p);
    let e = ep(&raw_e);
    let q = context(&oracle::fixture("context-unbound.json"), &p);
    let subject = GovernanceSubject::Module(&m);
    let a =
        authorize_trusted(&subject, &c, &e, &p, &[], &oracle::key_id("authorizer"), &q).unwrap();
    assert_eq!(a.decision(), "allow");
    assert_eq!(
        a.as_json(),
        oracle::authorization(&raw_c, &raw_e, &raw_p, &q.as_json())
    );
    let signed = sign_authorization(&a, oracle::text("authorizer.seed").trim()).unwrap();
    assert_eq!(
        signed.as_json(),
        oracle::signed(
            &a.as_json(),
            "authorizer",
            "behavior.authorization_signature.v2"
        )
    );
    let evidence =
        EvidenceV2::from_json(&oracle::evidence(&raw_p, &signed.as_json()).to_string()).unwrap();
    let judgment = validate_trusted_authorization(&subject, &c, &e, &evidence, &q).unwrap();
    assert_eq!(judgment.decision(), "allow");
    assert_eq!(judgment.trust(), "authenticated");
}

#[test]
fn trusted_validation_rejects_self_hashed_untrusted_wrong_role_and_substituted_bindings() {
    let m = oracle::module();
    let raw_c = oracle::candidate(&m);
    let c = GovernanceCandidate::from_json(&raw_c.to_string()).unwrap();
    let raw_p = oracle::fixture("policy-none.json");
    let p = policy(&raw_p);
    let raw_e = oracle::evidence_policy_for(&raw_p);
    let e = ep(&raw_e);
    let raw_q = oracle::fixture("context-unbound.json");
    let q = context(&raw_q, &p);
    let content = oracle::authorization(&raw_c, &raw_e, &raw_p, &raw_q);
    for field in [
        "candidate_transition_hash",
        "store",
        "evidence_policy_hash",
        "execution_policy_hash",
        "context_hash",
    ] {
        let mut other = content.clone();
        other[field] = json!(format!("sha256:{}", "ef".repeat(32)));
        let signed = oracle::signed(&other, "authorizer", "behavior.authorization_signature.v2");
        let raw = oracle::evidence(&raw_p, &signed);
        match EvidenceV2::from_json(&raw.to_string()) {
            Err(_) => {}
            Ok(ev) => assert!(
                validate_trusted_authorization(&GovernanceSubject::Module(&m), &c, &e, &ev, &q)
                    .is_err(),
                "{field}"
            ),
        }
    }
    let mut wrong_role = content.clone();
    wrong_role["issuer_key_id"] = json!(oracle::key_id("verifier"));
    let ev = EvidenceV2::from_json(
        &oracle::evidence(
            &raw_p,
            &oracle::signed(
                &wrong_role,
                "verifier",
                "behavior.authorization_signature.v2",
            ),
        )
        .to_string(),
    )
    .unwrap();
    let error = validate_trusted_authorization(&GovernanceSubject::Module(&m), &c, &e, &ev, &q)
        .unwrap_err();
    assert_eq!(error.code, "UNTRUSTED_AUTHORITY");
    let mut unsigned = oracle::signed(
        &content,
        "authorizer",
        "behavior.authorization_signature.v2",
    );
    unsigned.as_object_mut().unwrap().remove("signature");
    assert!(EvidenceV2::from_json(&oracle::evidence(&raw_p, &unsigned).to_string()).is_err());
}

#[test]
fn authorizer_intervals_are_half_open_and_deny_all_stays_deny_all() {
    let m = oracle::module();
    let c = GovernanceCandidate::from_json(&oracle::candidate(&m).to_string()).unwrap();
    let raw_p = oracle::fixture("policy-none.json");
    let p = policy(&raw_p);
    let raw_e = oracle::evidence_policy_for(&raw_p);
    for (time, allow) in [
        ("2026-09-30T23:59:59Z", false),
        ("2026-10-01T00:00:00Z", true),
        ("2026-10-31T23:59:59Z", true),
        ("2026-11-01T00:00:00Z", false),
    ] {
        let mut raw_q = oracle::fixture("context-unbound.json");
        raw_q["policy_time"] = json!(time);
        let q = context(&raw_q, &p);
        let result = authorize_trusted(
            &GovernanceSubject::Module(&m),
            &c,
            &ep(&raw_e),
            &p,
            &[],
            &oracle::key_id("authorizer"),
            &q,
        );
        assert_eq!(
            result.as_ref().is_ok_and(|a| a.decision() == "allow"),
            allow,
            "{time}: {result:?}"
        );
    }
    let mut deny = raw_e;
    deny["trusted_authorities"] = json!([]);
    let q = context(&oracle::fixture("context-unbound.json"), &p);
    let result = authorize_trusted(
        &GovernanceSubject::Module(&m),
        &c,
        &ep(&deny),
        &p,
        &[],
        &oracle::key_id("authorizer"),
        &q,
    );
    assert!(!result.is_ok_and(|a| a.decision() == "allow"));
}

#[test]
fn signed_context_is_not_an_independent_live_commit_context() {
    let m = oracle::module();
    let raw_c = oracle::candidate(&m);
    let c = GovernanceCandidate::from_json(&raw_c.to_string()).unwrap();
    let raw_p = oracle::fixture("policy-none.json");
    let p = policy(&raw_p);
    let raw_e = oracle::evidence_policy_for(&raw_p);
    let raw_q = oracle::fixture("context-unbound.json");
    let mut independent = raw_q.clone();
    independent["policy_time"] = json!("2026-10-06T12:00:00Z");
    let a = oracle::authorization(&raw_c, &raw_e, &raw_p, &raw_q);
    let ev = EvidenceV2::from_json(
        &oracle::evidence(
            &raw_p,
            &oracle::signed(&a, "authorizer", "behavior.authorization_signature.v2"),
        )
        .to_string(),
    )
    .unwrap();
    let error = validate_trusted_authorization(
        &GovernanceSubject::Module(&m),
        &c,
        &ep(&raw_e),
        &ev,
        &context(&independent, &p),
    )
    .unwrap_err();
    assert_eq!(error.code, "CONTEXT_MISMATCH");
}

#[test]
fn verifier_and_waiver_roles_use_the_same_explicit_half_open_judgment_time() {
    let mut raw = oracle::fixture("policy.json");
    raw["allow_waivers"] = json!(true);
    raw["waiver_kinds"] = json!(["inconclusive"]);
    raw["trusted_waivers"] = json!([{"key_id":oracle::key_id("authorizer"),
        "not_before":"2026-10-01T00:00:00Z","not_after":"2026-11-01T00:00:00Z"}]);
    let p = policy(&raw);
    for (role, own, other) in [
        (EvidenceRole::Verifier, "verifier", "authorizer"),
        (EvidenceRole::Waiver, "authorizer", "verifier"),
    ] {
        for (time, allow) in [
            ("2026-09-30T23:59:59Z", false),
            ("2026-10-01T00:00:00Z", true),
            ("2026-10-31T23:59:59Z", true),
            ("2026-11-01T00:00:00Z", false),
        ] {
            assert_eq!(
                p.key_is_eligible(role, &oracle::key_id(own), time).unwrap(),
                allow
            );
            assert!(
                !p.key_is_eligible(role, &oracle::key_id(other), time)
                    .unwrap()
            );
        }
    }
    assert!(waiver_expiry_valid(None, "2026-10-05T12:00:00Z").unwrap());
    assert!(waiver_expiry_valid(Some("2026-10-05T12:00:01Z"), "2026-10-05T12:00:00Z").unwrap());
    assert!(!waiver_expiry_valid(Some("2026-10-05T12:00:00Z"), "2026-10-05T12:00:00Z").unwrap());
    assert!(waiver_expiry_valid(Some("2026-02-29T00:00:00Z"), "2026-10-05T12:00:00Z").is_err());
}

#[test]
fn none_requirement_does_not_launder_a_supplied_unsigned_allow_package() {
    let m = oracle::module();
    let c = oracle::candidate(&m);
    let p = oracle::fixture("policy-none.json");
    let e = oracle::fixture("evidence-policy-none.json");
    let q = oracle::fixture("context-unbound.json");
    let a = oracle::authorization(&c, &e, &p, &q);
    let mut signed = oracle::signed(&a, "authorizer", "behavior.authorization_signature.v2");
    signed.as_object_mut().unwrap().remove("signature");
    assert!(EvidenceV2::from_json(&oracle::evidence(&p, &signed).to_string()).is_err());
}

#[test]
fn a_required_proof_cannot_be_replaced_with_an_empty_signed_allow() {
    let m = oracle::module();
    let c = oracle::candidate(&m);
    let p = oracle::fixture("policy.json");
    let ep = oracle::evidence_policy_for(&p);
    let q = oracle::fixture("context.json");
    let a = oracle::authorization(&c, &ep, &p, &q);
    let ev = EvidenceV2::from_json(
        &oracle::evidence(
            &p,
            &oracle::signed(&a, "authorizer", "behavior.authorization_signature.v2"),
        )
        .to_string(),
    )
    .unwrap();
    assert!(
        validate_trusted_authorization(
            &GovernanceSubject::Module(&m),
            &GovernanceCandidate::from_json(&c.to_string()).unwrap(),
            &EvidencePolicyV2::from_json(&ep.to_string()).unwrap(),
            &ev,
            &AuthorizationContextV2::from_json(&q.to_string(), &policy(&p)).unwrap()
        )
        .is_err()
    );
}

#[test]
fn candidate_decoding_checks_its_exact_content_identity_and_closed_field_set() {
    let base = oracle::candidate(&oracle::module());
    for mutation in ["content", "hash", "extra", "position", "refused"] {
        let mut v = base.clone();
        match mutation {
            "content" => {
                v["content"]["behavior_version"] = json!(format!("sha256:{}", "11".repeat(32)))
            }
            "hash" => v["transition_hash"] = json!(format!("sha256:{}", "11".repeat(32))),
            "extra" => v["content"]["authorization"] = json!("ALLOW"),
            "position" => {
                v["content"]["evaluated_history"]["position"] = json!(-1);
                v["transition_hash"] = json!(oracle::hash(
                    "behavior.candidate_transition.v2",
                    &v["content"]
                ));
            }
            "refused" => {
                v["content"]["record"]["result"] = json!("DENY");
                v["transition_hash"] = json!(oracle::hash(
                    "behavior.candidate_transition.v2",
                    &v["content"]
                ));
            }
            _ => unreachable!(),
        }
        assert!(
            GovernanceCandidate::from_json(&v.to_string()).is_err(),
            "{mutation}"
        );
    }
}

#[test]
fn required_proofs_and_legacy_waiver_signatures_use_distinct_trust_roles() {
    use behavior_verify::solver::Z3Process;
    let m = oracle::module();
    let c = GovernanceCandidate::from_json(&oracle::candidate(&m).to_string()).unwrap();
    let profile = decode_trusted_profile(&oracle::text("profile.json")).unwrap();
    let proof = verify_authenticated(
        &GovernanceSubject::Module(&m),
        &profile,
        oracle::text("verifier.seed").trim(),
        &Z3Process::from_env().unwrap(),
    )
    .unwrap()
    .envelope;
    assert_eq!(proof.report()["result"], "not_verified");
    let mut raw = oracle::fixture("policy.json");
    raw["allow_waivers"] = json!(true);
    raw["waiver_kinds"] = json!(["evaluation_error", "inconclusive", "preservation"]);
    raw["trusted_waivers"] = json!([{"key_id":oracle::key_id("authorizer"),"not_before":"2026-10-01T00:00:00Z","not_after":"2026-11-01T00:00:00Z"}]);
    let p = policy(&raw);
    let e = ep(&oracle::evidence_policy_for(&raw));
    let q = context(&oracle::fixture("context.json"), &p);
    let refused = authorize_trusted(
        &GovernanceSubject::Module(&m),
        &c,
        &e,
        &p,
        std::slice::from_ref(&proof),
        &oracle::key_id("authorizer"),
        &q,
    )
    .unwrap();
    assert_eq!(refused.decision(), "refuse");
    let mut waivers:Vec<Value> = proof.report()["findings"].as_array().unwrap().iter().filter(|f|f["severity"] == "blocking").map(|f|json!({
        "behavior_version":m.behavior_version(),"finding_hash":f["hash"],"profile_hash":profile.hash(),"verifier_version":"0.7.0","rationale":"test fixture","expires_at":"2026-10-05T12:00:01Z"})).collect();
    waivers.sort_by_key(|w| oracle::hash("behavior.waiver.v1", w));
    let mut sigs: Vec<Value> = waivers
        .iter()
        .map(|w| {
            behavior_verify::governance::sign_waiver(
                oracle::text("authorizer.seed").trim(),
                &w.to_string(),
            )
            .unwrap()
        })
        .collect();
    sigs.sort_by_key(|s| oracle::hash("behavior.waiver_signature.v1", s));
    let allowed = authorize_trusted_with_waivers(
        &GovernanceSubject::Module(&m),
        &c,
        &e,
        &p,
        std::slice::from_ref(&proof),
        &waivers,
        &sigs,
        &oracle::key_id("authorizer"),
        &q,
    )
    .unwrap();
    assert_eq!(allowed.decision(), "allow");
    let signed = sign_authorization(&allowed, oracle::text("authorizer.seed").trim()).unwrap();
    let evidence = EvidenceV2::from_json(&json!({"format":"behavior.evidence.v2","execution_policy":raw,"authorization":signed.as_json(),"verifications":[proof.as_json()],"waivers":waivers,"waiver_signatures":sigs}).to_string()).unwrap();
    assert_eq!(
        validate_trusted_authorization(&GovernanceSubject::Module(&m), &c, &e, &evidence, &q)
            .unwrap()
            .trust(),
        "authenticated"
    );
    let mut expired = q.as_json();
    expired["policy_time"] = json!("2026-10-05T12:00:01Z");
    let expired = context(&expired, &p);
    let result = authorize_trusted_with_waivers(
        &GovernanceSubject::Module(&m),
        &c,
        &e,
        &p,
        std::slice::from_ref(&proof),
        &waivers,
        &sigs,
        &oracle::key_id("authorizer"),
        &expired,
    )
    .unwrap();
    assert_eq!(result.decision(), "refuse");
    let mut wrong_role = p.as_json();
    wrong_role["trusted_waivers"] = json!([{"key_id":oracle::key_id("verifier")}]);
    let p = policy(&wrong_role);
    let e = ep(&oracle::evidence_policy_for(&wrong_role));
    let result = authorize_trusted_with_waivers(
        &GovernanceSubject::Module(&m),
        &c,
        &e,
        &p,
        std::slice::from_ref(&proof),
        &waivers,
        &sigs,
        &oracle::key_id("authorizer"),
        &q,
    )
    .unwrap();
    assert_eq!(result.decision(), "refuse");
}

#[test]
fn every_signature_mutation_is_checked_without_a_prior_positive_assertion_hiding_it() {
    let m = oracle::module();
    let c = oracle::candidate(&m);
    let p = oracle::fixture("policy-none.json");
    let e = oracle::evidence_policy_for(&p);
    let q = oracle::fixture("context-unbound.json");
    let a = oracle::authorization(&c, &e, &p, &q);
    let signed = oracle::signed(&a, "authorizer", "behavior.authorization_signature.v2");
    let mut accepted = Vec::new();
    for case in [
        "unsigned",
        "zero_signature",
        "cross_purpose",
        "changed_content",
        "wrong_issuer",
        "short_signature",
        "uppercase_signature",
    ] {
        let mut bad = signed.clone();
        match case {
            "unsigned" => {
                bad.as_object_mut().unwrap().remove("signature");
            }
            "zero_signature" => bad["signature"]["signature"] = json!("00".repeat(64)),
            "cross_purpose" => {
                bad = oracle::signed(&a, "authorizer", "behavior.verification_signature.v2")
            }
            "changed_content" => bad["content"]["decision"] = json!("refuse"),
            "wrong_issuer" => bad["signature"]["key_id"] = json!(oracle::key_id("verifier")),
            "short_signature" => bad["signature"]["signature"] = json!("00"),
            "uppercase_signature" => {
                bad["signature"]["signature"] = json!(
                    bad["signature"]["signature"]
                        .as_str()
                        .unwrap()
                        .to_uppercase()
                )
            }
            _ => unreachable!(),
        }
        assert_eq!(
            oracle::hash("behavior.authorization.v2", &signed["content"]),
            signed["authorization_hash"].as_str().unwrap()
        );
        if SignedAuthorizationV2::from_json(&bad.to_string()).is_ok() {
            accepted.push(case);
        }
    }
    assert!(
        accepted.is_empty(),
        "accepted invalid signatures: {accepted:?}"
    );
}

#[test]
fn trusted_profiles_reject_zero_budget_instead_of_silently_using_another_budget() {
    let p = behavior_verify::Profile {
        rlimit: 0,
        ..behavior_verify::Profile::default()
    };
    assert!(decode_trusted_profile(&p.to_json().to_string()).is_err());
}

#[test]
fn candidate_cells_are_typed_scalars_not_arbitrary_json_claims() {
    for invalid in [
        json!({"decimal":"1.00"}),
        json!([]),
        json!(9223372036854775808u64),
    ] {
        let mut c = oracle::candidate(&oracle::module());
        c["content"]["write_set"] =
            json!([{"entity":"Project","id":"p1","field":"spent","old":"0.00","new":invalid}]);
        c["transition_hash"] = json!(oracle::hash(
            "behavior.candidate_transition.v2",
            &c["content"]
        ));
        assert!(
            GovernanceCandidate::from_json(&c.to_string()).is_err(),
            "accepted non-scalar cell {invalid}"
        );
    }
}
#[test]
fn signed_contexts_are_closed_scalar_products_before_policy_binding() {
    let c = oracle::candidate(&oracle::module());
    let p = oracle::fixture("policy-none.json");
    let e = oracle::evidence_policy_for(&p);
    for invalid in [
        json!({"actor":"a"}),
        json!([]),
        json!(null),
        json!(9223372036854775808u64),
    ] {
        let mut q = oracle::fixture("context-unbound.json");
        q["required_context"] = json!({"claim":invalid});
        let content = oracle::authorization(&c, &e, &p, &q);
        let signed = oracle::signed(
            &content,
            "authorizer",
            "behavior.authorization_signature.v2",
        );
        assert!(
            SignedAuthorizationV2::from_json(&signed.to_string()).is_err(),
            "accepted non-scalar context {invalid}"
        );
    }
}
