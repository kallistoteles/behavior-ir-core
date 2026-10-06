#![allow(clippy::unwrap_used, clippy::expect_used)]
//! G3 endpoint/chain/full-parent/checked-counter laws, independently of commands.
mod common;
#[path = "support/history_backend.rs"]
mod faults;
use behavior_store::documents::*;
use behavior_store::replay::{replay_behavior_with, replay_data};
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{Backend, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use faults::FaultBackend;
use serde_json::json;
use std::collections::BTreeMap;

fn store() -> Store<FaultBackend> {
    common::store_with(FaultBackend::default(), EvidencePolicy::none())
}
fn v2() -> Store<FaultBackend> {
    let m = common::ledger();
    let ep = EvidencePolicyV2::from_json(&common::read(
        &common::fixtures().join("governance-v2/evidence-policy-none.json"),
    ))
    .unwrap();
    Store::create(
        FaultBackend::default(),
        &m,
        genesis_v2_for(&m, ep, common::default_seed()).unwrap(),
    )
    .unwrap()
}
fn modules() -> BTreeMap<String, behavior_core::semantic::module::Module> {
    let m = common::ledger();
    BTreeMap::from([(m.behavior_version(), m)])
}
fn commit_one(s: &mut Store<FaultBackend>) -> behavior_store::Committed {
    let b = common::transfer(s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    common::commit(s, &b)
}

#[test]
fn behavior_replay_validates_its_final_state_as_strictly_as_data_replay() {
    let mut s = store();
    let start = s.current().unwrap();
    let c = commit_one(&mut s);
    let mut end = c.result_state;
    end.state = format!("sha256:{}", "ff".repeat(32));
    assert!(!replay_data(&s, &start, &end).ok);
    assert!(
        !replay_behavior_with(&s, &modules(), &BTreeMap::new(), &start, &end).ok,
        "wrong final StateId was called successful replay"
    );
}

#[test]
fn both_replay_modes_refuse_false_initial_state_even_for_an_empty_range() {
    let s = store();
    let mut state = s.current().unwrap();
    state.state = format!("sha256:{}", "ff".repeat(32));
    assert!(!replay_data(&s, &state, &state).ok);
    assert!(!replay_behavior_with(&s, &modules(), &BTreeMap::new(), &state, &state).ok);
}

#[test]
fn omitted_record_cannot_become_an_empty_successful_history() {
    let mut s = store();
    let start = s.current().unwrap();
    commit_one(&mut s);
    let end = s.current().unwrap();
    s.backend_mut().omitted.insert(1);
    assert!(!replay_data(&s, &start, &end).ok);
    assert!(!replay_behavior_with(&s, &modules(), &BTreeMap::new(), &start, &end).ok);
}

#[test]
fn altered_genesis_or_broken_parent_chain_is_rejected_in_both_replay_modes() {
    for fault in ["genesis", "parent"] {
        let mut s = store();
        let start = s.current().unwrap();
        commit_one(&mut s);
        commit_one(&mut s);
        let end = s.current().unwrap();
        if fault == "genesis" {
            let m = common::ledger();
            s.backend_mut().genesis_override = Some(genesis_for(
                &m,
                EvidencePolicy::none(),
                common::seed(&[("a1", true, "999.00")]),
            ));
        } else {
            let mut record = s.backend().record(2).unwrap().unwrap();
            record.previous_record = format!("sha256:{}", "ff".repeat(32));
            s.backend_mut().records.insert(2, record);
        }
        assert!(!replay_data(&s, &start, &end).ok, "{fault}");
        assert!(
            !replay_behavior_with(&s, &modules(), &BTreeMap::new(), &start, &end).ok,
            "{fault}"
        );
    }
}

#[test]
fn a_complete_history_anchor_includes_genesis_and_exact_event_identity() {
    let mut s = v2();
    let first = s.current_history().unwrap();
    assert_eq!(first.position, 0);
    assert_eq!(first.record, first.store);
    assert_eq!(first.state_ref(), s.current().unwrap());
    let c = commit_one(&mut s);
    let head = s.current_history().unwrap();
    assert_eq!(head.position, 1);
    assert_eq!(head.record, c.record_id);
    assert_eq!(s.history_at(0).unwrap(), first);
    assert_eq!(s.history_at(1).unwrap(), head);
    assert!(s.history_at(2).is_err());
}

#[test]
fn same_state_same_position_forks_cannot_reuse_a_new_candidate() {
    let mut left = v2();
    let mut right = v2();
    let m = common::ledger();
    let a = common::unary(&left, "touch", "a1").bundle.unwrap();
    let mut b = common::unary(&right, "touch", "a1").bundle.unwrap();
    b.commit_time = "2026-09-27T12:00:01Z".into();
    common::commit(&mut left, &a);
    common::commit(&mut right, &b);
    assert_eq!(left.current().unwrap(), right.current().unwrap());
    assert_ne!(
        left.current_history().unwrap().record,
        right.current_history().unwrap().record
    );
    let candidate = common::transfer(&left, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    let before = right.backend().head().unwrap();
    assert!(
        right
            .commit(&m, &candidate.evaluated_state.clone(), &candidate)
            .is_err()
    );
    assert_eq!(right.backend().head().unwrap(), before);
}

#[test]
fn history_position_exhaustion_is_a_typed_refusal_before_backend_write() {
    let mut s = store();
    let mut head = s.backend().head().unwrap().unwrap();
    head.state_ref.position = u64::MAX;
    s.backend_mut().head_override = Some(head.clone());
    let outcome = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
        let e = s.evaluate(
            &common::ledger(),
            "touch",
            &common::bind(&[("account", "a1")]),
            &json!({}),
            &json!({}),
            common::T0,
            None,
        )?;
        let b = e
            .bundle
            .ok_or_else(|| StoreError::NothingToCommit("refused".into()))?;
        s.commit(&common::ledger(), &b.evaluated_state.clone(), &b)
    }));
    assert!(outcome.is_ok(), "position arithmetic panicked");
    assert!(outcome.unwrap().is_err());
    assert_eq!(s.backend().commit_calls, 0);
    assert_eq!(s.backend().head().unwrap(), Some(head));
}

#[test]
fn entity_revision_exhaustion_is_a_typed_refusal_before_backend_write() {
    let mut s = store();
    let key = EntityKey {
        entity: "Account".into(),
        id: "a1".into(),
    };
    let mut v = s.backend().version_at(&key, 0).unwrap().unwrap();
    v.revision = u64::MAX;
    s.backend_mut().versions.insert(key, v);
    let before = s.backend().head().unwrap();
    let outcome = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
        let e = s.evaluate(
            &common::ledger(),
            "freeze",
            &common::bind(&[("account", "a1")]),
            &json!({}),
            &json!({}),
            common::T0,
            None,
        )?;
        let b = e
            .bundle
            .ok_or_else(|| StoreError::NothingToCommit("refused".into()))?;
        s.commit(&common::ledger(), &b.evaluated_state.clone(), &b)
    }));
    assert!(outcome.is_ok(), "revision arithmetic panicked");
    assert!(outcome.unwrap().is_err());
    assert_eq!(s.backend().commit_calls, 0);
    assert_eq!(s.backend().head().unwrap(), before);
}

#[test]
fn exact_recovery_after_later_commits_returns_the_original_event_without_a_write() {
    let mut s = store();
    let b = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    let c = common::commit(&mut s, &b);
    commit_one(&mut s);
    let before = s.backend().head().unwrap();
    let calls = s.backend().commit_calls;
    let recovered = common::commit(&mut s, &b);
    assert!(recovered.already);
    assert_eq!(recovered.record_id, c.record_id);
    assert_eq!(recovered.result_state, c.result_state);
    assert_eq!(s.backend().commit_calls, calls);
    assert_eq!(s.backend().head().unwrap(), before);
}

#[test]
fn malformed_anchor_formats_and_genesis_record_contradictions_are_not_claims_of_history() {
    let h = format!("sha256:{}", "ab".repeat(32));
    let other = format!("sha256:{}", "cd".repeat(32));
    for raw in [
        json!({"format":"behavior.history_ref.v2","store":h,"state":h,"position":0,"record":h}),
        json!({"format":"behavior.history_ref.v1","store":h,"state":h,"position":0,"record":other}),
        json!({"format":"behavior.history_ref.v1","store":h.to_uppercase(),"state":h,"position":0,"record":h}),
    ] {
        assert!(HistoryRef::from_json(&raw.to_string()).is_err(), "{raw}");
    }
}
