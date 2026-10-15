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
