#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Genuine pre-028 signed 0.9 histories; fresh proof authority is a separate judgment.
mod common;
#[path = "support/counted_backend.rs"]
mod counted;
use counted::Counted;

use behavior_core::migration::admit_migration;
use behavior_store::documents::{EntityVersion, Genesis, Head, TransitionRecord};
use behavior_store::replay::{replay_behavior_with, replay_data};
use behavior_store::{Backend, Store};
use behavior_verify::governance::trusted::{AuthorizationContextV2, EvidenceV2, GovernanceCandidate, GovernanceSubject, validate_archived_authorization, validate_trusted_authorization};
use serde_json::{Value,json};
use std::collections::BTreeMap;

fn fixture(kind: &str) -> Value {
    common::json(&common::fixtures().join("query-summary-congruence/proof09-history").join(format!("{kind}.json")))
}

fn initial(raw: &Value) -> Counted {
    let initial = &raw["initial_backend"];
    let genesis: Genesis = serde_json::from_value(initial["genesis"].clone()).unwrap();
    let before: Head = serde_json::from_value(initial["head"].clone()).unwrap();
    let seed: Vec<EntityVersion> = serde_json::from_value(initial["versions"].clone()).unwrap();
    let mut backend = Counted::default();
    backend.create(&genesis, &before, &seed, &[]).unwrap();
    backend
}
fn imported(raw: &Value) -> Store<Counted> {
    let committed = &raw["committed_backend"];
    let before: Head = serde_json::from_value(raw["initial_backend"]["head"].clone()).unwrap();
    let after: Head = serde_json::from_value(committed["head"].clone()).unwrap();
    let record: TransitionRecord = serde_json::from_value(committed["records"][0].clone()).unwrap();
    let mut versions = record.new_versions.clone();
    versions.extend(record.created.clone());
    let mut backend=initial(raw);
    backend.commit(&before.last_record, &versions, &[], &[], &record, &after).unwrap();
    Store::open(backend).unwrap()
}

fn check_replay(kind: &str) {
    let raw = fixture(kind);
    let store = imported(&raw);
    let before = format!("{:?}",store.backend().inner);
    let source = behavior_core::admit(&raw["source_module"].to_string()).unwrap();
    let target = behavior_core::admit(&raw["target_module"].to_string()).unwrap();
    let migration = admit_migration(&source,&target,&raw["migration"].to_string()).unwrap();
    let from = store.state_at(0).unwrap();
    let to = store.current().unwrap();
    let modules = BTreeMap::from([(source.behavior_version(),source.clone()),(target.behavior_version(),target.clone())]);
    let migrations = BTreeMap::from([(migration.hash(),(migration,source,target))]);
    let data = replay_data(&store,&from,&to);
    assert!(data.ok,"{kind}: {data:?}");
    let behavior = replay_behavior_with(&store,&modules,&migrations,&from,&to);
    assert!(behavior.ok,"{kind}: {behavior:?}");
    assert_eq!(serde_json::to_value(data).unwrap(),raw["baseline"]["data_replay"]);
    assert_eq!(serde_json::to_value(behavior).unwrap(),raw["baseline"]["behavior_replay"]);
    assert_eq!(format!("{:?}",store.backend().inner),before);
}

fn check_recovery(kind: &str) {
    let raw = fixture(kind);
    let mut store = imported(&raw);
    let before = format!("{:?}",store.backend().inner);
    let source = behavior_core::admit(&raw["source_module"].to_string()).unwrap();
    let ev = EvidenceV2::from_json(&raw["evidence"].to_string()).unwrap();
    assert_eq!(ev.as_json(),raw["evidence"]);
    let context = AuthorizationContextV2::from_json(&raw["context"].to_string(),ev.execution_policy()).unwrap();
    let record = store.backend().record(1).unwrap().unwrap();
    let recovered = if kind == "action" {
        let bundle = record.bundle.as_ref().unwrap();
        assert_eq!(bundle.record["record_version"],"0.8");
        store.commit_with_context(&source,&bundle.evaluated_state,bundle,&context).unwrap()
    } else {
        let target = behavior_core::admit(&raw["target_module"].to_string()).unwrap();
        let migration = admit_migration(&source,&target,&raw["migration"].to_string()).unwrap();
        let prepared = store.prepare_migration(&source,&target,&migration,"2026-10-05T12:00:00Z",Some(&store.history_at(0).unwrap())).unwrap();
        assert_eq!(prepared.governance_candidate().unwrap().as_json(),raw["candidate"]);
        store.commit_prepared_migration(&source,&target,&migration,&prepared,Some(&ev),Some(&context)).unwrap()
    };
    assert!(recovered.already);
    assert_eq!(recovered.record_id,raw["baseline"]["recovered_record"]);
    assert_eq!(recovered.evidence_trust,Some("authenticated"));
    assert_eq!(format!("{:?}",store.backend().inner),before);
}

#[test]
fn signed09_action_history_replays_without_rewriting() { check_replay("action"); }
#[test]
fn signed09_migration_history_replays_without_rewriting() { check_replay("migration"); }
#[test]
fn signed09_action_exact_recovery_returns_the_original_event() { check_recovery("action"); }
#[test]
fn signed09_migration_exact_recovery_returns_the_original_event() { check_recovery("migration"); }

#[test]
fn archived_purpose_authenticates_exact_evidence_but_never_grants_fresh_subject_eligibility() {
    for kind in ["action","migration"] {
        let raw=fixture(kind);let store=imported(&raw);let before=format!("{:?}",store.backend().inner);
        let source=behavior_core::admit(&raw["source_module"].to_string()).unwrap();
        let target=behavior_core::admit(&raw["target_module"].to_string()).unwrap();
        let migration=admit_migration(&source,&target,&raw["migration"].to_string()).unwrap();
        let subject=if kind=="action"{GovernanceSubject::Module(&source)}else{GovernanceSubject::Migration(&migration,&source,&target)};
        let ev=EvidenceV2::from_json(&raw["evidence"].to_string()).unwrap();
        let q=AuthorizationContextV2::from_json(&raw["context"].to_string(),ev.execution_policy()).unwrap();
        let candidate=GovernanceCandidate::from_json(&raw["candidate"].to_string()).unwrap();
        let genesis=store.genesis().unwrap();let ep=genesis.evidence_policy.as_trusted().unwrap();
        validate_archived_authorization(&candidate,ep,&ev,&q).unwrap();
        assert_eq!(validate_trusted_authorization(&subject,&candidate,ep,&ev,&q).unwrap_err().code,"INCOMPLETE_VERIFICATION");
        assert_eq!(format!("{:?}",store.backend().inner),before);
    }
}

#[test]
fn an_uncommitted_action_or_migration_cannot_select_historical_recovery_purpose() {
    for kind in ["action","migration"] {
        let raw=fixture(kind);let mut store=Store::open(initial(&raw)).unwrap();let before=format!("{:?}",store.backend().inner);
        let source=behavior_core::admit(&raw["source_module"].to_string()).unwrap();
        let ev=EvidenceV2::from_json(&raw["evidence"].to_string()).unwrap();
        let q=AuthorizationContextV2::from_json(&raw["context"].to_string(),ev.execution_policy()).unwrap();
        let refusal=if kind=="action" {
            let record:TransitionRecord=serde_json::from_value(raw["committed_backend"]["records"][0].clone()).unwrap();
            let bundle=record.bundle.unwrap();
            store.commit_with_context(&source,&bundle.evaluated_state,&bundle,&q).unwrap_err()
        } else {
            let target=behavior_core::admit(&raw["target_module"].to_string()).unwrap();
            let migration=admit_migration(&source,&target,&raw["migration"].to_string()).unwrap();
            let prepared=store.prepare_migration(&source,&target,&migration,"2026-10-05T12:00:00Z",None).unwrap();
            assert_eq!(prepared.governance_candidate().unwrap().as_json(),raw["candidate"]);
            store.commit_prepared_migration(&source,&target,&migration,&prepared,Some(&ev),Some(&q)).unwrap_err()
        };
        assert_eq!(refusal.code(),"INCOMPLETE_VERIFICATION","{kind}: {refusal}");
        assert_eq!(format!("{:?}",store.backend().inner),before);
        assert!(store.backend().record(1).unwrap().is_none());
    }
}

#[test]
fn historical_authentication_rejects_candidate_signature_subject_policy_and_context_tampering() {
    for kind in ["action","migration"] {
        let raw=fixture(kind);let store=imported(&raw);let genesis=store.genesis().unwrap();
        let ep=genesis.evidence_policy.as_trusted().unwrap();
        for mutation in ["candidate","signature","subject","policy","context"] {
            let mut evidence=raw["evidence"].clone();let mut candidate=raw["candidate"].clone();let mut context=raw["context"].clone();
            match mutation {
                "candidate" => {
                    candidate["content"]["write_set"][0]["new"]=json!(99);
                    candidate["transition_hash"]=json!(behavior_verify::hashing::document_hash("behavior.candidate_transition.v2",&candidate["content"]).unwrap());
                }
                "signature" => {let mut signature=evidence["authorization"]["signature"]["signature"].as_str().unwrap().to_owned();let changed=if signature.starts_with("00"){"01"}else{"00"};signature.replace_range(..2,changed);evidence["authorization"]["signature"]["signature"]=json!(signature);}
                "subject" => evidence["verifications"][0]["content"]["subject"][if kind=="action"{"behavior_hash"}else{"source_behavior"}]=json!(format!("sha256:{}","ab".repeat(32))),
                "policy" => evidence["execution_policy"]["accepted_verifiers"]=json!(["0.10.0"]),
                "context" => context["required_context"]["actor"]=json!("substituted"),
                _=>unreachable!(),
            }
            let result=EvidenceV2::from_json(&evidence.to_string()).and_then(|evidence|{
                let candidate=GovernanceCandidate::from_json(&candidate.to_string())?;
                let context=AuthorizationContextV2::from_json(&context.to_string(),evidence.execution_policy())?;
                validate_archived_authorization(&candidate,ep,&evidence,&context).map(|_|())
            });
            assert!(result.is_err(),"{kind}/{mutation} acquired historical authority");
        }
    }
}

#[test]
fn a_self_consistent_changed_committed_event_is_not_the_original_authorized_event() {
    for kind in ["action","migration"] {
        let mut raw=fixture(kind);
        raw["committed_backend"]["records"][0]["authorization"]=json!(format!("sha256:{}","ab".repeat(32)));
        let record:TransitionRecord=serde_json::from_value(raw["committed_backend"]["records"][0].clone()).unwrap();
        raw["committed_backend"]["head"]["last_record"]=json!(record.hash().unwrap());
        if kind=="migration" {raw["committed_backend"]["head"]["schema"]["migration_record"]=json!(record.hash().unwrap());}
        let store=imported(&raw);let before=format!("{:?}",store.backend().inner);
        let replay=replay_data(&store,&store.state_at(0).unwrap(),&store.current().unwrap());
        assert!(!replay.ok,"{kind}: changed event accepted");
        assert_eq!(format!("{:?}",store.backend().inner),before);
    }
}

fn check_recovery_certificate(kind: &str) {
        let raw=fixture(kind);let mut store=imported(&raw);
        let source=behavior_core::admit(&raw["source_module"].to_string()).unwrap();
        let context=raw["context"].to_string();
        let evidence=EvidenceV2::from_json(&raw["evidence"].to_string()).unwrap();
        let context=AuthorizationContextV2::from_json(&context,evidence.execution_policy()).unwrap();
        if kind=="action" {
            let event=store.backend().record(1).unwrap().unwrap();let bundle=event.bundle.unwrap();
            store.commit_with_context(&source,&bundle.evaluated_state,&bundle,&context).unwrap();
        } else {
            let target=behavior_core::admit(&raw["target_module"].to_string()).unwrap();
            let migration=admit_migration(&source,&target,&raw["migration"].to_string()).unwrap();
            // Candidate preparation can legitimately validate current state.
            // Prepare in a separate host so recovery itself starts cold.
            let preparer=imported(&raw);
            let prepared=preparer.prepare_migration(&source,&target,&migration,"2026-10-05T12:00:00Z",Some(&preparer.history_at(0).unwrap())).unwrap();
            store.commit_prepared_migration(&source,&target,&migration,&prepared,Some(&evidence),Some(&context)).unwrap();
        }
        assert_eq!(store.backend().creates.get(),1);
        assert_eq!(store.backend().commits.get(),1,"recovery must not append");
        store.backend().reset();
        let snapshot=store.export_seed_at(&source,&store.history_at(0).unwrap()).unwrap();
        assert_eq!(snapshot.seed.len(),1);
        // A cold export enumerates once for full validity and once for versions.
        // A certificate improperly attached by recovery would skip the first.
        assert_eq!(store.backend().keys.get(),2,"{kind}: historical recovery warmed current validation authority");
        assert_eq!(store.backend().creates.get(),0);assert_eq!(store.backend().commits.get(),0);
}

#[test]
fn action_recovery_does_not_create_a_current_snapshot_certificate() { check_recovery_certificate("action"); }
#[test]
fn migration_recovery_does_not_create_a_current_snapshot_certificate() { check_recovery_certificate("migration"); }
