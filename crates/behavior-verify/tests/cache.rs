#![allow(clippy::unwrap_used, clippy::expect_used)]

//! US2: cached, deterministic attestations; budget exhaustion is inconclusive and blocking.

mod common;

use std::path::PathBuf;

use behavior_verify::solver::{Query, Solver, SolverAnswer, UnknownReason, Z3Process};
use behavior_verify::{CheckKind, Profile, verify};

fn module(name: &str) -> behavior_core::semantic::module::Module {
    behavior_core::admit(&common::read(&common::fixtures().join("verify").join(name))).unwrap()
}

fn fresh_dir(tag: &str) -> PathBuf {
    let d = std::env::temp_dir().join(format!("behavior-cache-test-{tag}-{}", std::process::id()));
    let _ = std::fs::remove_dir_all(&d);
    d
}

fn preservation() -> Profile {
    Profile {
        checks: vec![CheckKind::Preservation],
        ..Profile::default()
    }
}

#[test]
fn poisoned_matching_finding_returns_typed_error_and_is_not_materialized() {
    use behavior_core::canonical::CanonicalError;
    use behavior_verify::cache::Cache;
    use serde_json::Value;
    let case = common::json(&common::fixtures().join("canonicalization/poisoned-cache.json"));
    let dir = fresh_dir("core021-poison");
    let m = behavior_core::admit(&common::read(
        &common::fixtures().join(case["wire"].as_str().unwrap()),
    ))
    .unwrap();
    let p = Profile::from_json(&common::read(
        &common::fixtures().join(case["profile"].as_str().unwrap()),
    ))
    .unwrap();
    let solver = Z3Process::from_env().unwrap();
    let seed = verify(&m, &p, Some(&dir), &solver).unwrap();
    let selected = seed.checks.iter().find(|c| c.finding.is_some()).unwrap();
    let path = dir.join(format!(
        "{}.json",
        selected.key.strip_prefix("sha256:").unwrap()
    ));
    let mut entry: Value = serde_json::from_str(&std::fs::read_to_string(&path).unwrap()).unwrap();
    entry["finding"][case["field"].as_str().unwrap()] = case["value"].clone();
    std::fs::write(&path, entry.to_string()).unwrap();
    let hit = Cache::new(&dir)
        .get(&selected.key)
        .expect("matching poisoned cache must be consumed");
    assert!(hit.cached);
    assert!(
        matches!(verify(&m,&p,Some(&dir),&solver),Err(CanonicalError::Float(path)) if path==case["path"].as_str().unwrap())
    );
    let dest = fresh_dir("core021-skip");
    Cache::new(&dest).put(&hit);
    assert!(
        !dest.exists(),
        "unsupported cache entry must not be written"
    );
    std::fs::remove_dir_all(dir).unwrap();
}

#[test]
fn second_run_is_cached_with_the_same_hash() {
    let dir = fresh_dir("warm");
    let m = module("purchase.json");
    let z3 = Z3Process::from_env().unwrap();
    let cold = verify(&m, &preservation(), Some(&dir), &z3).unwrap();
    let warm = verify(&m, &preservation(), Some(&dir), &z3).unwrap();
    assert!(cold.checks.iter().all(|c| !c.cached));
    assert!(warm.checks.iter().all(|c| c.cached));
    assert_eq!(cold.hash, warm.hash);
    assert_eq!(cold.findings(), warm.findings());
}

#[test]
fn genuine09_query_checks_miss_under_010_and_current_cold_warm_claims_match() {
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../specs/028-query-summary-congruence/evidence");
    let old: serde_json::Value = serde_json::from_str(
        &std::fs::read_to_string(root.join("original-verification.json")).unwrap(),
    )
    .unwrap();
    let module = behavior_core::admit(
        &std::fs::read_to_string(root.join("original-approval.json")).unwrap(),
    )
    .unwrap();
    let profile = Profile::default();
    let solver = Z3Process::from_env().unwrap();
    let dir = fresh_dir("core028-version");
    let cache = behavior_verify::cache::Cache::new(&dir);
    assert_eq!(old["verifier_version"], "0.9.0");
    assert_eq!(old["profile"], profile.to_json());
    assert_eq!(old["solver_version"], solver.version());
    for check in old["checks"].as_array().unwrap() {
        let finding = old["findings"]
            .as_array()
            .unwrap()
            .iter()
            .find(|finding| check["finding_hash"] == finding["hash"])
            .cloned();
        cache.put(&behavior_verify::checks::CheckResult::from_json(check, finding).unwrap());
    }
    let old_entries = std::fs::read_dir(&dir)
        .unwrap()
        .map(|entry| {
            let path = entry.unwrap().path();
            let bytes = std::fs::read(&path).unwrap();
            (path, bytes)
        })
        .collect::<Vec<_>>();
    assert!(!old_entries.is_empty());
    let first = verify(&module, &profile, Some(&dir), &solver).unwrap();
    assert!(first.checks.iter().all(|check| !check.cached));
    assert_eq!(first.result, "verified");
    let warm = verify(&module, &profile, Some(&dir), &solver).unwrap();
    assert!(warm.checks.iter().all(|check| check.cached));
    let cold = verify(&module, &profile, None, &solver).unwrap();
    assert_eq!(cold.hash, first.hash);
    assert_eq!(warm.hash, first.hash);
    for (path, bytes) in old_entries {
        assert_eq!(std::fs::read(path).unwrap(), bytes);
    }
    std::fs::remove_dir_all(dir).unwrap();
}

#[test]
fn only_changed_checks_are_recomputed() {
    // `unchanged_entity` is `purchase_fixed` plus a new `reject` action.
    let dir = fresh_dir("delta");
    let z3 = Z3Process::from_env().unwrap();
    verify(
        &module("purchase_fixed.json"),
        &preservation(),
        Some(&dir),
        &z3,
    )
    .unwrap();
    let a = verify(
        &module("unchanged_entity.json"),
        &preservation(),
        Some(&dir),
        &z3,
    )
    .unwrap();
    for c in &a.checks {
        let action = &c.action.as_ref().unwrap().0;
        assert_eq!(c.cached, action == "approve", "{action} {}", c.subject.name);
    }
}

/// Answers every query as if the wall-clock guard had stopped the solver.
struct Stopped;

impl Solver for Stopped {
    fn check(&self, _: &Query) -> SolverAnswer {
        SolverAnswer::Unknown(UnknownReason::WallClockGuard)
    }
    fn version(&self) -> String {
        "z3 4.16.0".into()
    }
}

#[test]
fn wall_clock_results_are_not_cached_and_not_reproducible() {
    let dir = fresh_dir("guard");
    let a = verify(
        &module("purchase_fixed.json"),
        &preservation(),
        Some(&dir),
        &Stopped,
    )
    .unwrap();
    assert_eq!(a.result, "not_verified");
    for c in a.value["checks"].as_array().unwrap() {
        assert_eq!(c["reason"], "wall_clock_guard");
        assert_eq!(c["reproducible"], false);
    }
    assert!(
        std::fs::read_dir(&dir)
            .map(|d| d.count() == 0)
            .unwrap_or(true)
    );
}

#[test]
fn tiny_rlimit_is_inconclusive_and_blocking() {
    let z3 = Z3Process::from_env().unwrap();
    let profile = Profile {
        rlimit: 1,
        ..preservation()
    };
    let a = verify(&module("purchase_remaining.json"), &profile, None, &z3).unwrap();
    assert_eq!(a.result, "not_verified");
    let findings = a.findings();
    assert!(!findings.is_empty());
    for f in &findings {
        assert_eq!(f["kind"], "inconclusive");
        assert_eq!(f["severity"], "blocking");
    }
    for c in a.value["checks"].as_array().unwrap() {
        assert_eq!(c["reason"], "resource_limit");
    }
}

#[path = "support/ref_removals.rs"]
mod reference_model;

#[test]
fn reference_proofs_depend_on_unmentioned_incoming_schema_and_exact_context() {
    use serde_json::json;
    let dir = fresh_dir("core030-schema");
    let solver = Z3Process::from_env().unwrap();
    let mut wire = reference_model::wire("guarded", "0.7");
    let first = behavior_core::admit(&wire.to_string()).unwrap();
    let p = preservation();
    let original = verify(&first, &p, Some(&dir), &solver).unwrap();
    reference_model::assert_reference_proven(&original);
    let original_keys: std::collections::BTreeSet<_> =
        original.checks.iter().map(|c| c.key.clone()).collect();
    let mut extra = wire["entities"][1].clone();
    extra["name"] = json!("Other");
    wire["entities"].as_array_mut().unwrap().push(extra);
    let changed = behavior_core::admit(&wire.to_string()).unwrap();
    assert_eq!(
        first.action("remove_free").unwrap().hash(),
        changed.action("remove_free").unwrap().hash()
    );
    let fresh = verify(&changed, &p, Some(&dir), &solver).unwrap();
    reference_model::assert_reference_proven(&fresh);
    assert!(
        fresh
            .checks
            .iter()
            .all(|c| !c.cached && !original_keys.contains(&c.key)),
        "old context was reused: {}",
        fresh.value
    );
    assert_eq!(
        reference_model::reference_fields(&fresh),
        std::collections::BTreeSet::from(["ref(Holder.target)".into(), "ref(Other.target)".into()])
    );
    let warm = verify(&changed, &p, Some(&dir), &solver).unwrap();
    let cold = verify(&changed, &p, None, &solver).unwrap();
    assert_eq!(fresh.hash, warm.hash);
    assert_eq!(fresh.hash, cold.hash);
    assert!(warm.checks.iter().all(|c| c.cached));
    // Another incoming field on the otherwise unbound source invalidates every key too.
    wire["entities"][2]["fields"].as_array_mut().unwrap().push(
        json!({"name":"second","type":{"t":"ref","entity":"Target"},"loc":reference_model::loc()}),
    );
    let other = behavior_core::admit(&wire.to_string()).unwrap();
    let fields = verify(&other, &p, Some(&dir), &solver).unwrap();
    assert!(fields.checks.iter().all(|c| !c.cached));
    reference_model::assert_reference_proven(&fields);
    assert_eq!(reference_model::reference_fields(&fields).len(), 3);
    let mut budget = p.clone();
    budget.rlimit -= 1;
    assert!(
        verify(&other, &budget, Some(&dir), &solver)
            .unwrap()
            .checks
            .iter()
            .all(|c| !c.cached)
    );
    // Semantic profile changes cannot share a removal proof either.
    let m08 = reference_model::module("guarded", "0.8");
    assert!(
        verify(&m08, &p, Some(&dir), &solver)
            .unwrap()
            .checks
            .iter()
            .all(|c| !c.cached)
    );
    std::fs::remove_dir_all(dir).unwrap();
}

#[test]
fn equal_action_bodies_keep_distinct_reference_scope_metadata_in_cache() {
    use serde_json::json;
    let mut wire = reference_model::wire("guarded", "0.7");
    let mut alias = wire["actions"][0].clone();
    alias["name"] = json!("remove_other");
    wire["actions"].as_array_mut().unwrap().push(alias);
    let m = behavior_core::admit(&wire.to_string()).unwrap();
    assert_eq!(
        m.action("remove_free").unwrap().hash(),
        m.action("remove_other").unwrap().hash()
    );
    let dir = fresh_dir("core030-equal-bodies");
    let z = Z3Process::from_env().unwrap();
    let first = verify(&m, &preservation(), Some(&dir), &z).unwrap();
    assert!(
        first.checks.iter().all(|c| !c.cached),
        "distinct action scope collided: {}",
        first.value
    );
    for a in [first, verify(&m, &preservation(), Some(&dir), &z).unwrap()] {
        reference_model::assert_reference_proven(&a);
        let names: std::collections::BTreeSet<_> = a
            .checks
            .iter()
            .filter(|c| c.subject.kind == "reference_world")
            .map(|c| c.action.as_ref().unwrap().0.clone())
            .collect();
        assert_eq!(
            names,
            std::collections::BTreeSet::from(["remove_free".into(), "remove_other".into()])
        );
    }
    std::fs::remove_dir_all(dir).unwrap();
}
