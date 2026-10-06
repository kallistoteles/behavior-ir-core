#![allow(clippy::unwrap_used, clippy::expect_used)]
//! G2 migrations are resolved against an exact behavior pair, not schemas alone.
mod common;
use behavior_core::migration::{Migration, SourceEntity, admit_migration, apply_migration};
use behavior_core::semantic::module::Module;
use behavior_store::documents::{EvidencePolicy, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use behavior_verify::governance::trusted::*;
use behavior_verify::solver::Z3Process;
use behavior_verify::{CheckKind, Profile};
use serde_json::{Value, json};

fn raw(n: &str) -> Value {
    common::json(&common::fixtures().join("soundness").join(n))
}
fn module(n: &str) -> Module {
    behavior_core::admit(&raw(n).to_string()).unwrap()
}
fn migration(s: &Module, t: &Module) -> Migration {
    let l = json!({"file":"migration-context.dsl","line":1});
    let doc = json!({"migration_ir":"0.1","name":"add_z","source":behavior_core::schema(s).hash,"target":behavior_core::schema(t).hash,
        "constants":[],"requirements":[],"transforms":[{"entity":"E","fields":{"z":{"op":"derived","name":"calc","args":["old"],"loc":l}},"drops":[]}],"retire":[]});
    admit_migration(s, t, &doc.to_string()).unwrap()
}
fn input() -> Vec<SourceEntity> {
    vec![SourceEntity {
        entity: "E".into(),
        value: json!({"id":"only","x":1,"y":2}),
    }]
}
fn store(s: &Module) -> Store<InMemoryBackend> {
    Store::create(
        InMemoryBackend::new(),
        s,
        genesis_for(
            s,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "E".into(),
                value: input()[0].value.clone(),
            }],
        ),
    )
    .unwrap()
}

#[test]
fn resolved_transform_cannot_be_reinterpreted_by_a_same_schema_source_behavior() {
    let a = module("migration-source-a.json");
    let b = module("migration-source-b.json");
    let t = module("migration-target.json");
    assert_eq!(
        behavior_core::schema(&a).hash,
        behavior_core::schema(&b).hash
    );
    assert_ne!(a.behavior_version(), b.behavior_version());
    let m = migration(&a, &t);
    let valid = apply_migration(&m, &a, &t, &input()).unwrap();
    assert_eq!(valid.entities[0].value["z"], 1);
    assert!(
        apply_migration(&m, &b, &t, &input()).is_err(),
        "resolved calc(x) was silently rebound to calc(y)"
    );
}

#[test]
fn same_schema_target_behavior_is_part_of_the_prepared_context_even_if_schema_values_fit() {
    let s = module("migration-source-a.json");
    let t = module("migration-target.json");
    let mut changed = raw("migration-target.json");
    changed["derived"][0]["body"]["field"] = json!("x");
    let other = behavior_core::admit(&changed.to_string()).unwrap();
    assert_eq!(
        behavior_core::schema(&t).hash,
        behavior_core::schema(&other).hash
    );
    assert_ne!(t.behavior_version(), other.behavior_version());
    let m = migration(&s, &t);
    assert!(apply_migration(&m, &s, &t, &input()).is_ok());
    assert!(apply_migration(&m, &s, &other, &input()).is_err());
}

#[test]
fn incompatible_behavior_pair_cannot_receive_a_new_verified_attestation() {
    let a = module("migration-source-a.json");
    let b = module("migration-source-b.json");
    let t = module("migration-target.json");
    let m = migration(&a, &t);
    let p = Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    };
    let report =
        behavior_verify::verify_migration(&m, &b, &t, &p, None, &Z3Process::from_env().unwrap());
    assert_ne!(report.result, "verified", "{}", report.to_json_string());
}

#[test]
fn store_refuses_behavior_substitution_without_changing_any_history() {
    let a = module("migration-source-a.json");
    let b = module("migration-source-b.json");
    let t = module("migration-target.json");
    let m = migration(&a, &t);
    let mut s = store(&a);
    let head = s.backend().head().unwrap();
    let result = s.migrate(&m, &b, &t, common::T0, None);
    assert!(
        result.is_err(),
        "migration committed under a different resolved source"
    );
    assert_eq!(s.backend().head().unwrap(), head);
    assert!(s.backend().record(1).unwrap().is_none());
}

#[test]
fn preparing_exact_pair_is_read_only_and_candidate_binds_both_behaviors() {
    let a = module("migration-source-a.json");
    let b = module("migration-source-b.json");
    let t = module("migration-target.json");
    let m = migration(&a, &t);
    let mut s = store(&a);
    let head = s.backend().head().unwrap();
    let prepared = s.prepare_migration(&a, &t, &m, common::T0, None).unwrap();
    let claim = prepared.governance_candidate().unwrap().as_json();
    assert_eq!(claim["content"]["source_behavior"], a.behavior_version());
    assert_eq!(claim["content"]["target_behavior"], t.behavior_version());
    assert_eq!(s.backend().head().unwrap(), head);
    assert!(
        s.commit_prepared_migration(&b, &t, &m, &prepared, None, None)
            .is_err()
    );
    assert_eq!(s.backend().head().unwrap(), head);
    assert!(s.backend().record(1).unwrap().is_none());
}

#[test]
fn trusted_migration_proof_subject_contains_exact_pair_and_rejects_substitution() {
    let a = module("migration-source-a.json");
    let b = module("migration-source-b.json");
    let t = module("migration-target.json");
    let m = migration(&a, &t);
    let p = Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    };
    let fixture = common::read(&common::fixtures().join("governance-v2/verifier.seed"));
    let z = Z3Process::from_env().unwrap();
    let result = verify_authenticated(
        &GovernanceSubject::Migration(&m, &a, &t),
        &p,
        fixture.trim(),
        &z,
    )
    .unwrap();
    assert_eq!(
        result.envelope.as_json()["content"]["subject"]["source_behavior"],
        a.behavior_version()
    );
    assert_eq!(
        result.envelope.as_json()["content"]["subject"]["target_behavior"],
        t.behavior_version()
    );
    assert!(
        result
            .envelope
            .validate_for_subject(&GovernanceSubject::Migration(&m, &b, &t), &p, "z3 4.16.0")
            .is_err()
    );
}

#[test]
fn trusted_migration_manifest_includes_requirement_expression_safety() {
    let s = module("migration-source-a.json");
    let t = module("migration-target.json");
    let mut doc = migration(&s, &t).resolved().clone();
    let l = json!({"file":"migration-context.dsl","line":1});
    let lit = |n| json!({"op":"lit","type":{"t":"int"},"value":n,"loc":l});
    doc["requirements"] = json!([{"name":"unsafe_requirement","body":{"op":"gt","args":[
        {"op":"div","args":[lit(1),lit(0)],"loc":l},lit(0)],"loc":l},"loc":l}]);
    let m = admit_migration(&s, &t, &doc.to_string()).unwrap();
    let p = Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    };
    let manifest = expected_manifest(&GovernanceSubject::Migration(&m, &s, &t), &p, "z3 4.16.0")
        .unwrap()
        .as_json();
    assert!(
        manifest["obligations"]
            .as_array()
            .unwrap()
            .iter()
            .any(|e| e["descriptor"]["phase"] == "migration_requirement"
                && e["descriptor"]["predicate_kind"] == "division_by_zero"),
        "{manifest}"
    );
    let seed = common::read(&common::fixtures().join("governance-v2/verifier.seed"));
    let proof = verify_authenticated(
        &GovernanceSubject::Migration(&m, &s, &t),
        &p,
        seed.trim(),
        &Z3Process::from_env().unwrap(),
    )
    .unwrap();
    assert_eq!(proof.envelope.report()["result"], "not_verified");
}

#[test]
fn migration_candidate_rejects_open_or_contradictory_transformation_products() {
    let s = module("migration-source-a.json");
    let t = module("migration-target.json");
    let m = migration(&s, &t);
    let prepared = store(&s)
        .prepare_migration(&s, &t, &m, common::T0, None)
        .unwrap();
    for fault in [
        "validation",
        "extra_field",
        "duplicate_entity",
        "unknown_report",
    ] {
        let mut claim = prepared.governance_candidate().unwrap().as_json();
        match fault {
            "validation" => claim["content"]["validations"]["target_validated"] = json!(false),
            "extra_field" => {
                claim["content"]["transformation"]["entities"][0]["host_path"] =
                    json!("mutable/external")
            }
            "duplicate_entity" => {
                let entity = claim["content"]["transformation"]["entities"][0].clone();
                claim["content"]["transformation"]["entities"]
                    .as_array_mut()
                    .unwrap()
                    .push(entity);
            }
            _ => {
                claim["content"]["transformation"]["report"]["diagnostic"] =
                    json!("source location")
            }
        }
        claim["transition_hash"] = json!(
            behavior_verify::hashing::document_hash(
                behavior_verify::hashing::TAG_CANDIDATE_TRANSITION_V2,
                &claim["content"]
            )
            .unwrap()
        );
        assert!(
            GovernanceCandidate::from_json(&claim.to_string()).is_err(),
            "{fault}"
        );
    }
}
