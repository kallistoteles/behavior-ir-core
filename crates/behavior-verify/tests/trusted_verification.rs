#![allow(clippy::unwrap_used, clippy::expect_used)]
//! G1 proofs are fresh computations covering an exact finite set of semantic sites.
mod common;
#[path = "support/trusted.rs"]
mod oracle;
use behavior_verify::governance::trusted::*;
use behavior_verify::solver::{Query, Solver, SolverAnswer, UnknownReason, Z3Process};
use behavior_verify::{CheckKind, Profile};
use serde_json::{Value, json};
use std::cell::Cell;
use std::collections::BTreeSet;

fn profile() -> Profile {
    Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    }
}
fn wire(name: &str) -> Value {
    common::json(&common::fixtures().join("soundness").join(name))
}
fn module(name: &str) -> behavior_core::semantic::module::Module {
    behavior_core::admit(&wire(name).to_string()).unwrap()
}
fn empty() -> behavior_core::semantic::module::Module {
    behavior_core::admit(&common::read(
        &common::fixtures().join("wire/valid/empty.json"),
    ))
    .unwrap()
}
fn seed() -> String {
    oracle::text("verifier.seed").trim().to_string()
}

// Re-sign every changed assertion: the checker must reject false coverage/bindings
// even when a fixture key supplies a cryptographically correct detached signature.
fn seal(mut v: Value) -> Value {
    v["content"]["expected_check_manifest_hash"] = json!(oracle::hash(
        "behavior.verification_manifest.v1",
        &v["expected_check_manifest"]
    ));
    v["report"]["expected_check_manifest_hash"] =
        v["content"]["expected_check_manifest_hash"].clone();
    v["content"]["report_hash"] = json!(oracle::hash(
        "behavior.verification_report.v2",
        &v["report"]
    ));
    let h = oracle::hash("behavior.verification_content.v2", &v["content"]);
    v["verification_hash"] = json!(h);
    v["signature"] = json!({"format":"behavior.verification_signature.v2","subject_hash":h,
        "key_id":oracle::key_id("verifier"),"signature":oracle::signature("behavior.verification_signature.v2",&h,"verifier")});
    v
}
fn empty_oracle() -> Value {
    empty_oracle_version(behavior_verify::VERIFIER_VERSION)
}
fn empty_oracle_version(version: &str) -> Value {
    let m = empty();
    let p = Profile {
        checks: vec![],
        ..Profile::default()
    };
    let subject = json!({"behavior_hash":m.behavior_version()});
    let common = json!({"subject":subject,"profile_hash":p.hash(),"verifier_version":version,"solver_version":"z3 4.16.0"});
    let mut manifest = common.clone();
    manifest["format"] = json!("behavior.verification_manifest.v1");
    manifest["obligations"] = json!([]);
    let mut report = common.clone();
    report["format"] = json!("behavior.verification_report.v2");
    report["checks"] = json!([]);
    report["findings"] = json!([]);
    report["result"] = json!("verified");
    let mut content = common;
    content["format"] = json!("behavior.verification_content.v2");
    content["issuer_key_id"] = json!(oracle::key_id("verifier"));
    seal(
        json!({"format":"behavior.verification_envelope.v2","content":content,"profile":p.to_json(),
        "expected_check_manifest":manifest,"report":report}),
    )
}
struct Probe<'a> {
    solver: &'a dyn Solver,
    calls: Cell<usize>,
    abort_at: Option<usize>,
    reason: UnknownReason,
}
impl Solver for Probe<'_> {
    fn version(&self) -> String {
        self.solver.version()
    }
    fn check(&self, q: &Query) -> SolverAnswer {
        let n = self.calls.get();
        self.calls.set(n + 1);
        if self.abort_at == Some(n) {
            SolverAnswer::Unknown(self.reason.clone())
        } else {
            self.solver.check(q)
        }
    }
}

#[test]
fn actual_fresh_computation_is_signed_and_covers_the_derived_manifest_exactly() {
    // purchase_fixed repairs preservation, but its unrestricted Money inputs
    // still admit overflow while testing the first precondition. Use a model
    // with genuinely safe evaluation rather than weakening that finding.
    let mut w = wire("module.json");
    w["ir_version"] = json!("0.8");
    w["commands"] = json!([]);
    for action in w["actions"].as_array_mut().unwrap() {
        action["command_effects"] = json!([]);
    }
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let p = profile();
    let z = Z3Process::from_env().unwrap();
    let solver = Probe {
        solver: &z,
        calls: Cell::new(0),
        abort_at: None,
        reason: UnknownReason::WallClockGuard,
    };
    let result =
        verify_authenticated(&GovernanceSubject::Module(&m), &p, &seed(), &solver).unwrap();
    assert!(
        solver.calls.get() > 0,
        "a producer must perform fresh solver work"
    );
    let envelope = &result.envelope;
    assert_eq!(
        envelope.manifest(),
        &expected_manifest(&GovernanceSubject::Module(&m), &p, &solver.version())
            .unwrap()
            .as_json()
    );
    let expected: Vec<_> = envelope.manifest()["obligations"]
        .as_array()
        .unwrap()
        .iter()
        .map(|v| v["key"].clone())
        .collect();
    let actual: Vec<_> = envelope.report()["checks"]
        .as_array()
        .unwrap()
        .iter()
        .map(|v| v["key"].clone())
        .collect();
    assert!(!expected.is_empty());
    assert_eq!(actual, expected);
    envelope
        .validate_for_subject(&GovernanceSubject::Module(&m), &p, &solver.version())
        .unwrap();
    assert_eq!(
        envelope.verification_hash(),
        oracle::hash(
            "behavior.verification_content.v2",
            &envelope.as_json()["content"]
        )
    );
    assert_eq!(
        envelope.report()["result"],
        "verified",
        "{}",
        result.diagnostics
    );
}

#[test]
fn repeated_query_predicate_children_have_distinct_syntax_addresses() {
    let mut w = wire("module.json");
    let l = json!({"file":"audit.py","line":1});
    let div = json!({"op":"div","args":[
        {"op":"field","param":"candidate","field":"y","loc":l},
        {"op":"field","param":"candidate","field":"x","loc":l}],"loc":l});
    let pred = json!({"op":"gt","args":[div,
        {"op":"lit","type":{"t":"int"},"value":0,"loc":l}],"loc":l});
    w["reads"][0]["body"]["value"] = json!({"op":"count","args":[
        {"op":"where","param":"candidate","args":[
            {"op":"select","entity":"E","loc":l}],
            "body":{"op":"and","args":[pred.clone(),pred],"loc":l},"loc":l}],"loc":l});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let manifest = expected_manifest(&GovernanceSubject::Module(&m), &profile(), "z3 4.16.0")
        .unwrap()
        .as_json();
    let sites: Vec<_> = manifest["obligations"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|s| s["descriptor"]["predicate_kind"] == "division_by_zero")
        .collect();
    assert_eq!(
        sites.len(),
        2,
        "two predicate child occurrences require two proof sites: {manifest}"
    );
    assert_ne!(
        sites[0]["descriptor"]["semantic_path"],
        sites[1]["descriptor"]["semantic_path"]
    );
    for s in sites {
        assert!(
            s["descriptor"]["semantic_path"]
                .as_array()
                .unwrap()
                .contains(&json!({"field":"body"}))
        );
    }
}

#[test]
fn genuinely_empty_manifest_is_valid_and_has_independent_golden_bytes() {
    let m = empty();
    let p = Profile {
        checks: vec![],
        ..Profile::default()
    };
    let z = Z3Process::from_env().unwrap();
    let result = verify_authenticated(&GovernanceSubject::Module(&m), &p, &seed(), &z).unwrap();
    assert_eq!(result.envelope.as_json(), empty_oracle());
    assert!(
        result.envelope.manifest()["obligations"]
            .as_array()
            .unwrap()
            .is_empty()
    );
    assert_eq!(result.envelope.report()["result"], "verified");
}

#[test]
fn signed_empty_report_is_not_proof_for_a_nonempty_subject() {
    let raw = empty_oracle();
    let e = VerificationEnvelopeV2::from_json(&raw.to_string()).unwrap();
    let m = oracle::module();
    let err = e
        .validate_for_subject(&GovernanceSubject::Module(&m), &profile(), "z3 4.16.0")
        .unwrap_err();
    assert_eq!(err.code, "INCOMPLETE_VERIFICATION");
}

#[test]
fn caller_reports_with_valid_signature_cannot_forge_coverage_or_aggregate() {
    let base = empty_oracle();
    let mut accepted = Vec::new();
    for mutation in [
        "extra_check",
        "extra_finding",
        "forged_aggregate",
        "wrong_profile",
        "wrong_solver",
        "wrong_version",
        "unsigned",
        "cross_purpose",
    ] {
        let mut v = base.clone();
        match mutation {
            "extra_check" => {
                v["report"]["checks"] = json!([{"key":format!("sha256:{}","ab".repeat(32)),"outcome":"proven","reason":null,"finding_hashes":[],"witness":null}])
            }
            "extra_finding" => {
                v["report"]["findings"] = json!([{"hash":format!("sha256:{}","ab".repeat(32)),"kind":"inconclusive","severity":"blocking","citations":[],"obligation_keys":[]}])
            }
            "forged_aggregate" => v["report"]["result"] = json!("not_verified"),
            "wrong_profile" => {
                v["content"]["profile_hash"] = json!(format!("sha256:{}", "ab".repeat(32)))
            }
            "wrong_solver" => v["report"]["solver_version"] = json!("z3 4.15.0"),
            "wrong_version" => v["report"]["verifier_version"] = json!("0.6.0"),
            _ => {}
        }
        v = seal(v);
        if mutation == "unsigned" {
            v.as_object_mut().unwrap().remove("signature");
        }
        if mutation == "cross_purpose" {
            let h = v["verification_hash"].as_str().unwrap().to_string();
            v["signature"]["signature"] = json!(oracle::signature(
                "behavior.authorization_signature.v2",
                &h,
                "verifier"
            ));
        }
        if VerificationEnvelopeV2::from_json(&v.to_string()).is_ok() {
            accepted.push(mutation);
        }
    }
    assert!(
        accepted.is_empty(),
        "accepted caller-controlled claims: {accepted:?}"
    );
}

#[test]
fn omission_duplicate_and_extra_sites_fail_even_after_the_verifier_key_resigns() {
    let m = oracle::module();
    let p = profile();
    let z = Z3Process::from_env().unwrap();
    let raw = verify_authenticated(&GovernanceSubject::Module(&m), &p, &seed(), &z)
        .unwrap()
        .envelope
        .as_json();
    assert!(!raw["report"]["checks"].as_array().unwrap().is_empty());
    for mutation in [
        "omitted_check",
        "duplicate_check",
        "duplicate_manifest",
        "omitted_manifest",
    ] {
        let mut changed = raw.clone();
        let a = match mutation {
            "omitted_check" | "duplicate_check" => {
                changed["report"]["checks"].as_array_mut().unwrap()
            }
            _ => changed["expected_check_manifest"]["obligations"]
                .as_array_mut()
                .unwrap(),
        };
        if mutation.starts_with("omitted") {
            a.remove(0);
        } else {
            a.push(a[0].clone());
        }
        let text = seal(changed).to_string();
        match VerificationEnvelopeV2::from_json(&text) {
            Err(_) => {}
            Ok(e) => assert!(
                e.validate_for_subject(&GovernanceSubject::Module(&m), &p, &z.version())
                    .is_err(),
                "{mutation}"
            ),
        }
    }
}

#[test]
fn resigning_a_safety_counterexample_as_a_warning_cannot_make_it_verified() {
    let m = oracle::module();
    let z = Z3Process::from_env().unwrap();
    let mut v = verify_authenticated(&GovernanceSubject::Module(&m), &profile(), &seed(), &z)
        .unwrap()
        .envelope
        .as_json();
    assert_eq!(v["report"]["result"], "not_verified");
    for f in v["report"]["findings"].as_array_mut().unwrap() {
        f["severity"] = json!("warning");
    }
    v["report"]["result"] = json!("verified");
    assert!(VerificationEnvelopeV2::from_json(&seal(v).to_string()).is_err());
}

#[test]
fn diagnostics_source_relocation_and_normalized_binder_spelling_do_not_change_proof_identity() {
    let mut a = wire("unsafe-module.json");
    let l = json!({"file":"audit.py","line":1});
    // Query binders are normalized candidates. Public action parameter names
    // remain legacy semantic binding keys and must not be alpha-renamed.
    a["actions"][0]["effects"][1]["value"]["args"][1] = json!({"op":"count","args":[
        {"op":"where","param":"candidate","args":[{"op":"select","entity":"E","loc":l}],
        "body":{"op":"ge","args":[{"op":"field","param":"candidate","field":"x","loc":l},
            {"op":"lit","type":{"t":"int"},"value":0,"loc":l}],"loc":l},"loc":l}],"loc":l});
    let mut b = a.clone();
    fn relocate(v: &mut Value) {
        match v {
            Value::Array(a) => {
                for x in a {
                    relocate(x)
                }
            }
            Value::Object(o) => {
                if o.contains_key("loc") {
                    o.insert(
                        "loc".into(),
                        json!({"file":"/other/checkout/rebuilt.dsl","line":987}),
                    );
                }
                for (k, x) in o.iter_mut() {
                    if k == "param" && x == "candidate" {
                        *x = json!("renamed");
                    } else {
                        relocate(x)
                    }
                }
            }
            _ => {}
        }
    }
    relocate(&mut b);
    a["reads"] = json!([]);
    b["reads"] = json!([]);
    let a = behavior_core::admit(&a.to_string()).unwrap();
    let b = behavior_core::admit(&b.to_string()).unwrap();
    assert_eq!(a.behavior_version(), b.behavior_version());
    let z = Z3Process::from_env().unwrap();
    let p = profile();
    let x = verify_authenticated(&GovernanceSubject::Module(&a), &p, &seed(), &z).unwrap();
    let y = verify_authenticated(&GovernanceSubject::Module(&b), &p, &seed(), &z).unwrap();
    assert_eq!(x.envelope.as_json(), y.envelope.as_json());
    let text = x.envelope.as_json().to_string();
    for forbidden in [
        "audit.py",
        "renamed",
        "cached",
        "expr_text",
        "\"loc\"",
        "/other/checkout",
    ] {
        assert!(!text.contains(forbidden), "{forbidden}");
    }
}

#[test]
fn repeated_legacy_expression_sites_and_equal_named_action_bodies_do_not_collapse() {
    let mut w = wire("unsafe-module.json");
    w["reads"] = json!([]);
    let expr = w["actions"][0]["effects"][1]["value"].clone();
    w["actions"][0]["effects"][0]["value"] = expr;
    let mut second = w["actions"][0].clone();
    second["name"] = json!("another_public_capability");
    w["actions"].as_array_mut().unwrap().push(second);
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let manifest = expected_manifest(&GovernanceSubject::Module(&m), &profile(), "z3 4.16.0")
        .unwrap()
        .as_json();
    let sites = manifest["obligations"].as_array().unwrap();
    let keys: BTreeSet<_> = sites.iter().map(|s| s["key"].as_str().unwrap()).collect();
    assert_eq!(keys.len(), sites.len());
    assert!(
        sites.len() >= 4,
        "at least four distinct add sites: {manifest}"
    );
    let z = Z3Process::from_env().unwrap();
    let result =
        verify_authenticated(&GovernanceSubject::Module(&m), &profile(), &seed(), &z).unwrap();
    assert_eq!(
        result.envelope.report()["checks"].as_array().unwrap().len(),
        sites.len()
    );
    assert!(
        result.envelope.report()["findings"]
            .as_array()
            .unwrap()
            .iter()
            .any(|f| f["obligation_keys"]
                .as_array()
                .is_some_and(|a| a.len() >= 2)),
        "shared findings must retain every distinct check site"
    );
}

#[test]
fn timeout_transport_unknown_and_completed_prefix_abort_never_produce_an_envelope() {
    let m = oracle::module();
    let z = Z3Process::from_env().unwrap();
    for reason in [
        UnknownReason::WallClockGuard,
        UnknownReason::Error("transport interrupted".into()),
        UnknownReason::Error("canceled".into()),
        UnknownReason::SolverUnknown,
    ] {
        for index in [0, 1] {
            let solver = Probe {
                solver: &z,
                calls: Cell::new(0),
                abort_at: Some(index),
                reason: reason.clone(),
            };
            let e =
                verify_authenticated(&GovernanceSubject::Module(&m), &profile(), &seed(), &solver)
                    .unwrap_err();
            assert!(
                solver.calls.get() > index,
                "abort site was actually reached"
            );
            assert_eq!(e.code, "VERIFICATION_INFRASTRUCTURE");
        }
    }
}

#[test]
fn a_process_cancellation_is_not_authenticated_as_resource_exhaustion() {
    use std::os::unix::fs::PermissionsExt;
    let dir = std::env::temp_dir().join(format!("013-cancel-z3-{}", std::process::id()));
    std::fs::create_dir_all(&dir).unwrap();
    let path = dir.join("solver");
    std::fs::write(&path,"#!/bin/sh\nif [ \"$1\" = \"--version\" ]; then echo 'Z3 version 4.16.0'; else cat >/dev/null; printf 'unknown\\n(:reason-unknown \"canceled\")\\n'; fi\n").unwrap();
    std::fs::set_permissions(&path, std::fs::Permissions::from_mode(0o700)).unwrap();
    let z = Z3Process::new(path.clone(), std::time::Duration::from_secs(2)).unwrap();
    let result = verify_authenticated(
        &GovernanceSubject::Module(&module("module.json")),
        &profile(),
        &seed(),
        &z,
    );
    std::fs::remove_file(path).unwrap();
    std::fs::remove_dir(dir).unwrap();
    assert_eq!(
        result
            .expect_err("cancellation must abort, not attest INCONCLUSIVE")
            .code,
        "VERIFICATION_INFRASTRUCTURE"
    );
}

#[test]
fn a_failing_process_cannot_turn_its_printed_unsat_prefix_into_proof() {
    use std::os::unix::fs::PermissionsExt;
    let dir = std::env::temp_dir().join(format!("013-failed-z3-{}", std::process::id()));
    std::fs::create_dir_all(&dir).unwrap();
    let path = dir.join("solver");
    std::fs::write(&path,"#!/bin/sh\nif [ \"$1\" = \"--version\" ]; then echo 'Z3 version 4.16.0'; else cat >/dev/null; echo unsat; exit 1; fi\n").unwrap();
    std::fs::set_permissions(&path, std::fs::Permissions::from_mode(0o700)).unwrap();
    let z = Z3Process::new(path.clone(), std::time::Duration::from_secs(2)).unwrap();
    let result = verify_authenticated(
        &GovernanceSubject::Module(&module("module.json")),
        &profile(),
        &seed(),
        &z,
    );
    std::fs::remove_file(path).unwrap();
    std::fs::remove_dir(dir).unwrap();
    assert_eq!(
        result
            .expect_err("failed process cannot establish proof")
            .code,
        "VERIFICATION_INFRASTRUCTURE"
    );
}

#[test]
fn deterministic_resource_exhaustion_may_be_authenticated_but_never_verified() {
    let m = oracle::module();
    let z = Z3Process::from_env().unwrap();
    let mut p = profile();
    p.rlimit = 1;
    let result = verify_authenticated(&GovernanceSubject::Module(&m), &p, &seed(), &z).unwrap();
    assert_eq!(result.envelope.report()["result"], "not_verified");
    assert!(
        result.envelope.report()["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "inconclusive" && c["reason"] == "resource_limit")
    );
    result
        .envelope
        .validate_for_subject(&GovernanceSubject::Module(&m), &p, &z.version())
        .unwrap();
}

#[test]
fn poisoned_development_cache_cannot_be_promoted_to_trusted_evidence() {
    let m = module("unsafe-module.json");
    let p = profile();
    let z = Z3Process::from_env().unwrap();
    let original = behavior_verify::verify(&m, &p, None, &z);
    let path = std::env::temp_dir().join(format!("013-cache-poison-{}", std::process::id()));
    assert!(!path.exists());
    let cache = behavior_verify::cache::Cache::new(&path);
    for mut c in original.checks {
        c.outcome = behavior_verify::checks::Outcome::Proven;
        c.finding = None;
        cache.put(&c);
    }
    let cached = behavior_verify::verify(&m, &p, Some(&path), &z);
    assert!(
        cached.checks.iter().any(|c| c.cached),
        "poisoned cache must actually be consumed by development verification"
    );
    let result = verify_authenticated(&GovernanceSubject::Module(&m), &p, &seed(), &z);
    std::fs::remove_dir_all(path).unwrap();
    let e = result.unwrap().envelope;
    assert_eq!(e.report()["result"], "not_verified");
}

#[test]
fn versioned_document_domains_match_independent_frozen_golden_vectors() {
    let v = common::json(&common::fixtures().join("governance-v2/identity-vectors.json"));
    let vectors = v["vectors"].as_array().unwrap();
    assert_eq!(vectors.len(), 4);
    for vector in vectors {
        let tag = vector["tag"].as_str().unwrap();
        let body = &vector["body"];
        assert_eq!(oracle::hash(tag, body), vector["hash"].as_str().unwrap());
        assert_eq!(
            behavior_verify::hashing::document_hash(tag, body).unwrap(),
            vector["hash"].as_str().unwrap()
        );
    }
    assert_eq!(
        empty_oracle_version("0.7.0")["expected_check_manifest"],
        vectors[1]["body"]
    );
    assert_eq!(empty_oracle_version("0.7.0")["report"], vectors[2]["body"]);
    assert_eq!(empty_oracle_version("0.7.0")["content"], vectors[3]["body"]);
}

#[test]
fn archived_verifier_07_evidence_decodes_without_becoming_a_current_proof() {
    let old = empty_oracle_version("0.7.0");
    let envelope = VerificationEnvelopeV2::from_json(&old.to_string()).unwrap();
    assert_eq!(envelope.as_json(), old);
    let p = Profile {
        checks: vec![],
        ..Profile::default()
    };
    let error = envelope
        .validate_for_subject(&GovernanceSubject::Module(&empty()), &p, "z3 4.16.0")
        .unwrap_err();
    assert_eq!(error.code, "INCOMPLETE_VERIFICATION");
}

#[test]
fn successful_process_with_protocol_error_cannot_establish_proof() {
    use std::os::unix::fs::PermissionsExt;
    let dir = std::env::temp_dir().join(format!("013-protocol-z3-{}", std::process::id()));
    std::fs::create_dir_all(&dir).unwrap();
    let path = dir.join("solver");
    std::fs::write(&path,"#!/bin/sh\nif [ \"$1\" = \"--version\" ]; then echo 'Z3 version 4.16.0'; else cat >/dev/null; printf 'unsat\\n(:reason-unknown \"\")\\n(error \"bad transport\")\\n'; fi\n").unwrap();
    std::fs::set_permissions(&path, std::fs::Permissions::from_mode(0o700)).unwrap();
    let z = Z3Process::new(path.clone(), std::time::Duration::from_secs(2)).unwrap();
    let result = verify_authenticated(
        &GovernanceSubject::Module(&module("module.json")),
        &profile(),
        &seed(),
        &z,
    );
    std::fs::remove_file(path).unwrap();
    std::fs::remove_dir(dir).unwrap();
    assert_eq!(
        result
            .expect_err("a successful process exit does not validate a malformed solver response")
            .code,
        "VERIFICATION_INFRASTRUCTURE"
    );
}

#[test]
fn resigned_witnesses_are_closed_typed_values_and_reproduce_under_the_exact_subject() {
    let m = oracle::module();
    let p = profile();
    let proof = verify_authenticated(
        &GovernanceSubject::Module(&m),
        &p,
        &seed(),
        &Z3Process::from_env().unwrap(),
    )
    .unwrap();
    for fault in ["open_object", "invalid_integer", "changed_state"] {
        let mut raw = proof.envelope.as_json();
        let check = raw["report"]["checks"]
            .as_array_mut()
            .unwrap()
            .iter_mut()
            .find(|c| c["outcome"] == "counterexample")
            .unwrap();
        match fault {
            "open_object" => {
                check["witness"]["input"]["amount"] =
                    json!({"decimal":"1.00","display_path":"mutable"})
            }
            "invalid_integer" => {
                check["witness"]["context"]["Actor"]["approval_limit"] = json!(true)
            }
            _ => {
                check["witness"]["state"]["project"]["spent"] = json!("0.00");
                check["witness"]["input"]["amount"] = json!("0.01");
            }
        }
        let result = VerificationEnvelopeV2::from_json(&seal(raw).to_string())
            .and_then(|e| e.validate_for_subject(&GovernanceSubject::Module(&m), &p, "z3 4.16.0"));
        assert!(result.is_err(), "{fault}");
    }
}

#[test]
fn solver_guard_covers_blocked_stdin_and_version_probe() {
    use behavior_verify::solver::{Query, SolverAnswer, UnknownReason};
    use std::os::unix::fs::PermissionsExt;
    use std::time::{Duration, Instant};
    let dir = std::env::temp_dir().join(format!("013-transport-guard-{}", std::process::id()));
    std::fs::create_dir_all(&dir).unwrap();
    let path = dir.join("solver");
    std::fs::write(&path,"#!/usr/bin/env python3\nimport sys,time\nif '--version' in sys.argv: print('Z3 version 4.16.0');sys.exit(0)\ntime.sleep(0.5)\nsys.stdin.read()\nprint('unsat');print('(:reason-unknown '+chr(34)+chr(34)+')')\n").unwrap();
    std::fs::set_permissions(&path, std::fs::Permissions::from_mode(0o700)).unwrap();
    let solver = Z3Process::new(path.clone(), Duration::from_secs(2))
        .unwrap()
        .with_guard(Duration::from_millis(40));
    let began = Instant::now();
    let answer = solver.check(&Query {
        script: format!(";{}\n", "x".repeat(2_000_000)),
        get: vec![],
        rlimit: 1,
    });
    assert!(
        matches!(answer, SolverAnswer::Unknown(UnknownReason::WallClockGuard)),
        "{answer:?}"
    );
    assert!(
        began.elapsed() < Duration::from_millis(350),
        "stdin escaped operational guard"
    );
    std::fs::write(
        &path,
        "#!/usr/bin/env python3\nimport time\ntime.sleep(0.5)\nprint('Z3 version 4.16.0')\n",
    )
    .unwrap();
    let began = Instant::now();
    assert!(
        Z3Process::new(path.clone(), Duration::from_millis(40)).is_err(),
        "version probe escaped operational guard"
    );
    assert!(began.elapsed() < Duration::from_millis(350));
    std::fs::remove_dir_all(dir).unwrap();
}

#[test]
fn malformed_model_members_cannot_be_ignored_behind_complete_requested_symbols() {
    use behavior_verify::solver::{Query, SolverAnswer, UnknownReason};
    use std::os::unix::fs::PermissionsExt;
    let dir = std::env::temp_dir().join(format!("013-model-shape-{}", std::process::id()));
    std::fs::create_dir_all(&dir).unwrap();
    let path = dir.join("solver");
    std::fs::write(&path,"#!/usr/bin/env python3\nimport sys\nif '--version' in sys.argv: print('Z3 version 4.16.0');sys.exit(0)\ntext=sys.stdin.read()\nprint('sat');print('(:reason-unknown '+chr(34)+chr(34)+')')\nif '(get-value' in text: print('((x 1) ignored_member)')\n").unwrap();
    std::fs::set_permissions(&path, std::fs::Permissions::from_mode(0o700)).unwrap();
    let solver = Z3Process::new(path, std::time::Duration::from_secs(2)).unwrap();
    let answer = solver.check(&Query {
        script: "(declare-const x Int)".into(),
        get: vec!["x".into()],
        rlimit: 1,
    });
    std::fs::remove_dir_all(dir).unwrap();
    assert!(
        matches!(answer, SolverAnswer::Unknown(UnknownReason::Error(_))),
        "{answer:?}"
    );
}

#[test]
fn equal_resolved_derived_references_preserve_authenticated_semantic_identity() {
    let mut a = wire("module.json");
    let l = json!({"file":"alias.dsl","line":1});
    let declaration = json!({"name":"alias_a","kind":"derived","params":[{"name":"row","type":{"t":"entity","name":"E"}}],"body":{"op":"gt","args":[{"op":"field","param":"row","field":"x","loc":l},{"op":"lit","type":{"t":"int"},"value":0,"loc":l}],"loc":l},"loc":l});
    let mut alias = declaration.clone();
    alias["name"] = json!("alias_b");
    a["derived"] = json!([declaration, alias]);
    a["actions"][0]["preconditions"] =
        json!([{"expr":{"op":"derived","name":"alias_a","args":["e"],"loc":l},"loc":l}]);
    let mut b = a.clone();
    b["actions"][0]["preconditions"][0]["expr"]["name"] = json!("alias_b");
    let a = behavior_core::admit(&a.to_string()).unwrap();
    let b = behavior_core::admit(&b.to_string()).unwrap();
    assert_eq!(
        a.behavior_version(),
        b.behavior_version(),
        "the aliases resolve to the same existing declaration hash"
    );
    let solver = Z3Process::from_env().unwrap();
    let x =
        verify_authenticated(&GovernanceSubject::Module(&a), &profile(), &seed(), &solver).unwrap();
    let y =
        verify_authenticated(&GovernanceSubject::Module(&b), &profile(), &seed(), &solver).unwrap();
    assert_eq!(x.envelope.as_json(), y.envelope.as_json());
}
