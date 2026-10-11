#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: command interpretation is checked by record profile, not optional markers.
mod common;
#[path = "support/command_history.rs"]
mod h;

use behavior_core::semantic::module::Module;
use behavior_store::commands::{CommandStreamRequest, OCCURRENCE_DOMAIN};
use behavior_store::documents::{
    CommitBundle, EvidencePolicy, Genesis, SeedEntity, StoreError, TransitionRecord,
};
use behavior_store::replay::replay_data;
use behavior_store::store::{genesis_for, genesis_v2_for, transition_hash};
use behavior_store::{Backend, CasOutcome, Store};
use behavior_verify::governance::trusted::*;
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::collections::BTreeMap;

fn fixture(group: &str, name: &str) -> Value {
    common::json(&common::fixtures().join(group).join(name))
}

fn none() -> EvidencePolicyV2 {
    EvidencePolicyV2::from_json(&fixture("governance-v2", "evidence-policy-none.json").to_string())
        .unwrap()
}

fn authority(s: &Store<h::faults::FaultBackend>) -> Value {
    let head = s.backend().head().unwrap().unwrap();
    let records: Vec<_> = (1..=head.state_ref.position + 1)
        .map(|p| s.backend().record(p).unwrap())
        .collect();
    json!({"genesis":s.genesis().unwrap(),"head":head,"records":records,
        "backend_commits":s.backend().commit_calls})
}

// Independently evaluate the existing public occurrence formula. serde_json's
// map representation sorts the finite product's keys; no production hash helper
// or command extraction helper supplies this test's expected identity.
fn occurrence(store: &str, record: &str, intent: &str, index: u32) -> String {
    let product = json!({"store":store,"commit_record_hash":record,
        "intent_hash":intent,"multiplicity_index":index});
    let mut digest = Sha256::new();
    digest.update(OCCURRENCE_DOMAIN.as_bytes());
    digest.update([0]);
    digest.update(serde_json::to_vec(&product).unwrap());
    format!("sha256:{:x}", digest.finalize())
}

fn archived_commands() -> Store<h::faults::FaultBackend> {
    let dir = "resulting-state-validity/commands";
    let m = behavior_core::admit(&fixture(dir, "module.json").to_string()).unwrap();
    let genesis = Genesis::from_json(&fixture(dir, "genesis.json").to_string()).unwrap();
    let event: TransitionRecord = serde_json::from_value(fixture(dir, "transition.json")).unwrap();
    assert_eq!(
        event.bundle.as_ref().unwrap().record["record_version"],
        "0.7"
    );
    assert!(event.created.is_empty() && event.removed.is_empty());
    let mut s = Store::create(h::faults::FaultBackend::default(), &m, genesis).unwrap();
    let previous = s.backend().head().unwrap().unwrap();
    assert_eq!(previous.last_record, event.previous_record);
    assert_eq!(previous.state_ref, event.committed_on);
    let mut next = previous.clone();
    next.state_ref = event.result_state.clone();
    next.last_record = event.hash().unwrap();
    // Hydrate an already captured immutable event. This is fixture installation,
    // not fresh Core admission or authorization of an old candidate.
    assert_eq!(
        s.backend_mut()
            .inner
            .commit(
                &previous.last_record,
                &event.new_versions,
                &[],
                &event.ref_changes,
                &event,
                &next,
            )
            .unwrap(),
        CasOutcome::Applied
    );
    s
}

#[test]
fn frozen_command07_reader_preserves_exact_page_and_occurrence_identity() {
    let s = archived_commands();
    let dir = "resulting-state-validity/commands";
    let request =
        CommandStreamRequest::from_json(&fixture(dir, "stream-request.json").to_string()).unwrap();
    let before = authority(&s);
    let page = s.commands_since(&request).unwrap();
    assert_eq!(page.as_json(), fixture(dir, "stream-page.json"));
    assert_eq!(page.items().len(), 1);
    let command = &page.items()[0];
    assert_eq!(
        command.command_occurrence_id(),
        "sha256:bd4cba226966347a4d8ba532486fd3fefca3aea707b51ab3aae85a3c6cdad496"
    );
    assert_eq!(
        command.command_occurrence_id(),
        occurrence(
            page.store(),
            command.commit_record_hash(),
            command.intent()["intent_hash"].as_str().unwrap(),
            0,
        )
    );
    assert!(replay_data(&s, &request.after().state_ref(), &s.current().unwrap()).ok);
    let copied = Store::open(s.backend().clone()).unwrap();
    assert_eq!(copied.commands_since(&request).unwrap(), page);
    assert_eq!(authority(&s), before, "archive reading changed authority");
}

#[test]
fn current_command08_bag_multiplicity_requires_commit_and_retries_keep_occurrences() {
    let m = h::module(true, true);
    let mut s = h::store(&m);
    let before = authority(&s);
    let b = h::candidate(&m, &s, "same");
    assert_eq!(b.record["record_version"], "0.8");
    assert_eq!(b.record["semantic_profile"], "0.8");
    assert_eq!(b.record["commands"]["intents"].as_array().unwrap().len(), 3);
    assert!(h::all(&s).items().is_empty(), "candidate was dispatchable");
    assert_eq!(authority(&s), before);
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    let page = h::all(&s);
    let mut multiplicities = BTreeMap::new();
    assert_eq!(page.items().len(), 3);
    for c in page.items() {
        let intent = c.intent()["intent_hash"].as_str().unwrap();
        let index = multiplicities.entry(intent).or_insert(0_u32);
        assert_eq!(c.multiplicity_index(), *index);
        assert_eq!(
            c.command_occurrence_id(),
            occurrence(page.store(), c.commit_record_hash(), intent, *index)
        );
        *index += 1;
    }
    let mut counts: Vec<_> = multiplicities.values().copied().collect();
    counts.sort();
    assert_eq!(counts, vec![1, 2]);
    let committed = authority(&s);
    assert!(s.commit(&m, &b.evaluated_state, &b).unwrap().already);
    assert_eq!(h::all(&s), page);
    assert_eq!(authority(&s), committed);
}

fn noncommand_store(v2: bool) -> (Module, Store<h::faults::FaultBackend>) {
    let mut wire = h::model::module();
    wire["ir_version"] = json!("0.7");
    wire.as_object_mut().unwrap().remove("commands");
    wire["actions"][0]
        .as_object_mut()
        .unwrap()
        .remove("command_effects");
    let m = behavior_core::admit(&wire.to_string()).unwrap();
    let seed = vec![SeedEntity {
        entity: "Order".into(),
        value: h::model::value(2, true),
    }];
    let genesis = if v2 {
        genesis_v2_for(&m, none(), seed).unwrap()
    } else {
        genesis_for(&m, EvidencePolicy::none(), seed)
    };
    let s = Store::create(h::faults::FaultBackend::default(), &m, genesis).unwrap();
    (m, s)
}

fn noncommand_candidate(m: &Module, s: &Store<h::faults::FaultBackend>) -> CommitBundle {
    s.evaluate(
        m,
        "submit",
        &BTreeMap::from([("order".into(), "order-1".into())]),
        &json!({}),
        &json!({}),
        h::NOW,
        None,
    )
    .unwrap()
    .bundle
    .unwrap()
}

fn committed_noncommand(v2: bool) -> Store<h::faults::FaultBackend> {
    let (m, mut s) = noncommand_store(v2);
    let b = noncommand_candidate(&m, &s);
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    assert_eq!(b.record["record_version"], "0.8");
    assert_eq!(
        b.record["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    assert!(b.record.get("commands").is_none());
    assert!(b.record.get("semantic_profile").is_none());
    s
}

fn noncommand_cursor(v2: bool) {
    let s = committed_noncommand(v2);
    let before = authority(&s);
    let page = h::all(&s);
    assert!(page.items().is_empty());
    assert_eq!(page.after().position, 0);
    assert_eq!(page.next_after(), &s.current_history().unwrap());
    assert_eq!(page.next_after().position, 1);
    assert!(page.complete());
    assert_eq!(authority(&s), before);
}

#[test]
fn current_noncommand08_v1_event_advances_whole_event_cursor() {
    noncommand_cursor(false);
}

#[test]
fn current_noncommand08_v2_event_advances_whole_event_cursor() {
    noncommand_cursor(true);
}

enum MarkerFault {
    UnknownVersion,
    UnknownValidation,
    MissingValidation,
    ContradictoryCommandProfile,
}

fn corrupt_marker(record: &mut Value, fault: MarkerFault) {
    match fault {
        MarkerFault::UnknownVersion => record["record_version"] = json!("0.99"),
        MarkerFault::UnknownValidation => record["validation_profile"] = json!("unknown-profile"),
        MarkerFault::MissingValidation => {
            record.as_object_mut().unwrap().remove("validation_profile");
        }
        MarkerFault::ContradictoryCommandProfile => record["semantic_profile"] = json!("0.8"),
    }
}

fn v1_marker_refusal(fault: MarkerFault) {
    let mut s = committed_noncommand(false);
    let start = s.history_at(0).unwrap();
    let mut event = s.backend().record(1).unwrap().unwrap();
    let bundle = event.bundle.as_mut().unwrap();
    corrupt_marker(&mut bundle.record, fault);
    // Re-seal the structural v1 event. A broken checksum is not the regression:
    // the reader must check the nested decision's profile even without commands.
    bundle.transition_hash = transition_hash(&bundle.record).unwrap();
    event.bundle_hash = bundle.hash().unwrap();
    let mut head = s.backend().head().unwrap().unwrap();
    head.last_record = event.hash().unwrap();
    s.backend_mut().records.insert(1, event);
    s.backend_mut().head_override = Some(head);
    assert!(
        replay_data(&s, &start.state_ref(), &s.current().unwrap()).ok,
        "structural replay setup must pass; marker strictness is the assertion below"
    );
    let before = authority(&s);
    let error = s
        .commands_since(&h::request(&start, None, 256))
        .expect_err("malformed nested current record became an empty successful command page");
    assert!(matches!(
        error,
        StoreError::Contract {
            code: "INVALID_COMMAND_STREAM",
            ..
        }
    ));
    assert_eq!(authority(&s), before);
}

#[test]
fn v1_noncommand_reader_refuses_resealed_unknown_record_version() {
    v1_marker_refusal(MarkerFault::UnknownVersion);
}

#[test]
fn v1_noncommand_reader_refuses_resealed_unknown_validation_profile() {
    v1_marker_refusal(MarkerFault::UnknownValidation);
}

#[test]
fn v1_noncommand_reader_refuses_resealed_missing_validation_profile() {
    v1_marker_refusal(MarkerFault::MissingValidation);
}

#[test]
fn v1_noncommand_reader_refuses_resealed_contradictory_command_profile() {
    v1_marker_refusal(MarkerFault::ContradictoryCommandProfile);
}

#[test]
fn v2_candidate_boundary_already_refuses_the_same_noncommand_marker_faults() {
    // Positive controls: v2 already has strict candidate decoding before command
    // extraction. Passing these is not evidence of missing test-first behavior.
    for fault in [
        MarkerFault::UnknownVersion,
        MarkerFault::UnknownValidation,
        MarkerFault::MissingValidation,
        MarkerFault::ContradictoryCommandProfile,
    ] {
        let (m, s) = noncommand_store(true);
        let mut b = noncommand_candidate(&m, &s);
        corrupt_marker(&mut b.record, fault);
        assert!(b.governance_candidate().is_err());
    }
}

#[test]
fn current_command08_closed_profile_markers_refuse_incomplete_candidates() {
    let m = h::module(true, false);
    let s = h::store(&m);
    let original = h::candidate(&m, &s, "customer");
    for field in ["commands", "semantic_profile", "validation_profile"] {
        let mut b = original.clone();
        b.record.as_object_mut().unwrap().remove(field);
        assert!(b.governance_candidate().is_err(), "missing {field}");
    }
    let mut b = original;
    b.record["semantic_profile"] = json!("0.7");
    assert!(b.governance_candidate().is_err());
    assert!(h::all(&s).items().is_empty());
}

#[test]
fn resealed_current_command_bag_substitution_cannot_dispatch_or_commit() {
    let m = h::module(true, false);
    let mut s = h::store(&m);
    let mut b = h::candidate(&m, &s, "customer");
    let intent = b.record["commands"]["intents"][0].clone();
    b.record["commands"]["intents"]
        .as_array_mut()
        .unwrap()
        .push(intent);
    b.transition_hash = b.governance_candidate().unwrap().hash().into();
    let before = authority(&s);
    assert!(s.commit(&m, &b.evaluated_state, &b).is_err());
    assert_eq!(authority(&s), before);
    assert_eq!(s.backend().commit_calls, 0);
    assert!(h::all(&s).items().is_empty());
}

#[test]
fn signed_current_authorization_cannot_follow_a_resealed_command_substitution() {
    let m = h::module(true, false);
    let p = ExecutionPolicyV2::from_json(&fixture("governance-v2", "policy-none.json").to_string())
        .unwrap();
    let mut raw_ep = fixture("governance-v2", "evidence-policy.json");
    raw_ep["execution_policies"] = json!([p.hash()]);
    let ep = EvidencePolicyV2::from_json(&raw_ep.to_string()).unwrap();
    let q = AuthorizationContextV2::from_json(
        &fixture("governance-v2", "context-unbound.json").to_string(),
        &p,
    )
    .unwrap();
    let mut s = Store::create(
        h::faults::FaultBackend::default(),
        &m,
        genesis_v2_for(&m, ep.clone(), vec![]).unwrap(),
    )
    .unwrap();
    let b = h::candidate(&m, &s, "customer");
    let issuer = raw_ep["trusted_authorities"][0]["key_id"].as_str().unwrap();
    let auth = authorize_trusted(
        &GovernanceSubject::Module(&m),
        &b.governance_candidate().unwrap(),
        &ep,
        &p,
        &[],
        issuer,
        &q,
    )
    .unwrap();
    let seed = common::read(&common::fixtures().join("governance-v2/authorizer.seed"));
    let signed = sign_authorization(&auth, seed.trim()).unwrap();
    let evidence = EvidenceV2::from_json(
        &json!({"format":"behavior.evidence.v2","execution_policy":p.as_json(),
            "authorization":signed.as_json(),"verifications":[],"waivers":[],"waiver_signatures":[]})
        .to_string(),
    )
    .unwrap();
    let valid: CommitBundle = b.with_trusted_evidence(&evidence).unwrap();
    let mut altered = b.clone();
    altered.record["commands"] = json!({"declarations":[],"types":[],"intents":[]});
    altered.transition_hash = altered.governance_candidate().unwrap().hash().into();
    assert_ne!(altered.transition_hash, valid.transition_hash);
    assert!(altered.with_trusted_evidence(&evidence).is_err());
    // Even copying the sealed envelope around its constructor cannot transfer
    // authorization to this different candidate, and no backend write follows.
    altered.evidence = valid.evidence.clone();
    let before = authority(&s);
    assert!(
        s.commit_with_context(&m, &altered.evaluated_state, &altered, &q)
            .is_err()
    );
    assert_eq!(authority(&s), before);
    assert_eq!(s.backend().commit_calls, 0);
    assert!(h::all(&s).items().is_empty());
    s.commit_with_context(&m, &valid.evaluated_state, &valid, &q)
        .unwrap();
    assert_eq!(h::all(&s).items().len(), 1, "valid signed control failed");
}
