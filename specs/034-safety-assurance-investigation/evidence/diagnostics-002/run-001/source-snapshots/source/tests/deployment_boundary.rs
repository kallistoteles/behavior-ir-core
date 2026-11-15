#![allow(clippy::unwrap_used)]
use assurance_study034::{boundaries::imported_activation, fixtures::*};
use behavior_models::safety::snapshot::validate_store_snapshot;
use serde_json::json;
#[test]
fn complete_subject_valid_and_invalid_boundary() {
    let m = module(false, false).unwrap();
    assert_eq!(m.actions().len(), 8);
    assert_eq!(m.entities().len(), 2);
    let a = analysis(&m, false).unwrap();
    let s = store(&m, vec![parent("p", "Open"), child("c", "p", "Active")]).unwrap();
    assert_eq!(
        validate_store_snapshot(&m, &a, &s, &s.current_history().unwrap()).status(),
        "Valid"
    );
    let bad = store(&m, vec![parent("p", "Gone"), child("c", "p", "Active")]).unwrap();
    assert_eq!(
        validate_store_snapshot(&m, &a, &bad, &bad.current_history().unwrap()).status(),
        "Invalid"
    );
}
#[test]
fn descriptor_cannot_activate() {
    assert!(imported_activation(&json!({"active":true,"verified":true})).is_err());
}
#[test]
fn policy_change_cannot_reuse_state_validation() {
    let m = module(false, false).unwrap();
    let weak = analysis(&m, true).unwrap();
    let strong = analysis(&m, false).unwrap();
    let s = store(
        &m,
        vec![parent("p", "Abandoned"), child("c", "p", "Active")],
    )
    .unwrap();
    let h = s.current_history().unwrap();
    let r = validate_store_snapshot(&m, &weak, &s, &h);
    assert_eq!(r.status(), "Valid");
    assert!(!r.matches_anchor(&m, &strong, &h));
    assert_eq!(
        validate_store_snapshot(&m, &strong, &s, &h).status(),
        "Invalid"
    );
}
#[test]
fn uncovered_module_really_bypasses_core_and_invalidates_anchor() {
    let m = module(false, false).unwrap();
    let other = module(false, true).unwrap();
    assert_eq!(
        behavior_engine::schema(&m).hash,
        behavior_engine::schema(&other).hash
    );
    let a = analysis(&m, false).unwrap();
    let mut s = store(&m, vec![parent("p", "Open"), child("c", "p", "Active")]).unwrap();
    let h = s.current_history().unwrap();
    let r = validate_store_snapshot(&m, &a, &s, &h);
    let inv = invoke(
        &s,
        &other,
        "stop",
        json!({"p":{"entity":"Parent","id":"p"}}),
        json!({}),
    )
    .unwrap();
    s.commit(&other, &s.current().unwrap(), &inv.bundle.unwrap())
        .unwrap();
    assert!(!r.matches_anchor(&m, &a, &s.current_history().unwrap()));
    assert_eq!(
        validate_store_snapshot(&m, &a, &s, &s.current_history().unwrap()).status(),
        "Invalid"
    );
    assert_eq!(validate_store_snapshot(&m, &a, &s, &h).status(), "Valid");
}
#[test]
fn omitted_action_or_owner_mutation_cannot_certify() {
    let m = module(false, false).unwrap();
    let unsafe_m = module(false, true).unwrap();
    let a = analysis(&m, false).unwrap();
    assert_ne!(
        a.inventory().to_json(),
        analysis(&unsafe_m, false).unwrap().inventory().to_json()
    );
    // The bypass module must fail supported analysis/preservation, not inherit m's evidence.
    assert!(behavior_models::safety::certify::proof_input(&unsafe_m, &a).is_err());
}
#[test]
fn detached_snapshot_and_new_lineage_do_not_establish_old_history() {
    let m = module(false, false).unwrap();
    let a = analysis(&m, false).unwrap();
    let mut s = store(&m, vec![parent("p", "Open")]).unwrap();
    let inv = invoke(
        &s,
        &m,
        "stop",
        json!({"p":{"entity":"Parent","id":"p"}}),
        json!({}),
    )
    .unwrap();
    s.commit(&m, &s.current().unwrap(), &inv.bundle.unwrap())
        .unwrap();
    let h = s.current_history().unwrap();
    let export = s.export_seed_at(&m, &h).unwrap();
    assert_eq!(
        behavior_models::safety::snapshot::inspect_snapshot(&m, &a, &export).status(),
        "Unestablished"
    );
    let imported = store(&m, export.seed).unwrap();
    assert_ne!(imported.current_history().unwrap(), h);
    assert_eq!(
        validate_store_snapshot(&m, &a, &imported, &imported.current_history().unwrap()).status(),
        "Valid"
    );
}
#[test]
fn unsafe_migration_requires_new_validity_and_restart_is_inactive() {
    let m = module(false, false).unwrap();
    let s = store(&m, vec![parent("p", "Open"), child("c", "p", "Active")]).unwrap();
    let mut c = assurance_study034::arrangements::Coordinator::new(s);
    assert!(!c.active());
    let target = assurance_study034::boundaries::unsafe_migration_control(&mut c, &m).unwrap();
    let a = analysis(&target, false).unwrap();
    assert!(!c.active());
    assert_eq!(
        validate_store_snapshot(
            &target,
            &a,
            c.store(),
            &c.store().current_history().unwrap()
        )
        .status(),
        "Invalid"
    );
    assert!(!c.into_restart().active());
}
#[test]
fn complete_authored_lifecycle_has_eight_commits_and_exact_refusals() {
    let run = assurance_study034::lifecycle::oracle().unwrap();
    assert_eq!(run["committed_steps"], 8);
    assert_eq!(run["attempts"].as_array().unwrap().len(), 12);
    for row in run["attempts"].as_array().unwrap() {
        if row["committed"] == false {
            assert_eq!(row["before"], row["after"]);
        }
    }
    assert_eq!(run["final_snapshot"], json!({"parents":{},"children":{}}));
}
