#![allow(clippy::unwrap_used)]
use assurance_study034::{
    capture::{BackendPacket, CommitCall, CreateCall},
    fixtures,
    history_check::{self, Attempt, Expected, HistoryPacket},
    recovery,
};
use behavior_engine::store::{Backend, documents::EntityKey};
use serde_json::{Value, json};
fn request(id: &str) -> Value {
    json!({"format":"behavior.invocation.v1","capability":"create_parent","bindings":{},"input":{"new_id":id},"context":{}})
}
fn case(id: &str) -> (HistoryPacket, Expected) {
    let m = fixtures::module(false, false).unwrap();
    let a = fixtures::analysis(&m, false).unwrap();
    let mut s = fixtures::store(&m, vec![]).unwrap();
    let origin = s.current_history().unwrap();
    let creation = CreateCall {
        genesis: s.genesis().unwrap(),
        head: s.backend().head().unwrap().unwrap(),
        seed: vec![],
        seed_refs: vec![],
    };
    let inv = fixtures::invoke(&s, &m, "create_parent", json!({}), json!({"new_id":id})).unwrap();
    let raw = inv.record.as_json().clone();
    s.commit(&m, &s.current().unwrap(), &inv.bundle.unwrap())
        .unwrap();
    let endpoint = s.current_history().unwrap();
    let commit = CommitCall {
        expected_last_record: origin.record.clone(),
        versions: vec![
            s.backend()
                .version_at(
                    &EntityKey {
                        entity: "Parent".into(),
                        id: id.into(),
                    },
                    1,
                )
                .unwrap()
                .unwrap(),
        ],
        removals: vec![],
        ref_changes: vec![],
        record: s.backend().record(1).unwrap().unwrap(),
        new_head: s.backend().head().unwrap().unwrap(),
    };
    let packet = HistoryPacket {
        format: "core034.history-packet.v1".into(),
        backend: BackendPacket {
            format: "core034.backend.v1".into(),
            creation,
            commits: vec![commit],
        },
        module: behavior_engine::serialize::to_wire_json(&m),
        policies: Some(a.to_json()["policies"].clone()),
        attempts: vec![Attempt {
            invocation: raw,
            before: origin.clone(),
            after: endpoint.clone(),
            committed: true,
        }],
        migrations: vec![],
    };
    let expected = Expected {
        variant: "LD8".into(),
        behavior: m.behavior_version(),
        policy_set_hash: a.policy_set_hash().into(),
        origin,
        endpoint,
        requests: vec![request(id)],
        require_safety: true,
    };
    (packet, expected)
}
#[test]
fn fresh_valid_history_is_checked_against_independently_expected_subject() {
    let (p, _) = case("p1");
    let (_, e) = case("p1");
    let checked = history_check::check(&p, &e).unwrap();
    assert_eq!(checked.endpoint().unwrap(), e.endpoint);
}
#[test]
fn different_valid_branch_missing_tail_or_wrong_safe_output_reject() {
    let (p, e) = case("p1");
    let (other, _) = case("p2");
    assert!(history_check::check(&other, &e).is_err());
    let mut missing = p.clone();
    missing.backend.commits.clear();
    assert!(history_check::check(&missing, &e).is_err());
    let mut changed = p;
    changed.attempts[0].invocation["input"] = json!({"new_id":"p2"});
    assert!(history_check::check(&changed, &e).is_err());
}
#[test]
fn flags_lost_basis_and_missing_safety_cannot_mint_authority() {
    assert!(
        recovery::import_descriptor(&json!({"verified":true,"established_under_premises":true}))
            .is_err()
    );
    let (mut p, e) = case("p1");
    p.policies = None;
    assert!(history_check::check(&p, &e).is_err());
    let mut without_safety = e;
    without_safety.require_safety = false;
    assert!(history_check::check(&p, &without_safety).is_ok());
}
#[test]
fn resident_uses_its_own_evaluation_and_full_parent() {
    let (p, e) = case("p1");
    let checked = history_check::check(&p, &e).unwrap();
    let m = fixtures::module(false, false).unwrap();
    let mut oracle = fixtures::store(&m, vec![]).unwrap();
    let first = fixtures::invoke(
        &oracle,
        &m,
        "create_parent",
        json!({}),
        json!({"new_id":"p1"}),
    )
    .unwrap();
    oracle
        .commit(&m, &oracle.current().unwrap(), &first.bundle.unwrap())
        .unwrap();
    let inv = fixtures::invoke(
        &oracle,
        &m,
        "create_parent",
        json!({}),
        json!({"new_id":"p2"}),
    )
    .unwrap();
    let candidate = json!({"invocation":inv.record.as_json(),"bundle":inv.bundle});
    oracle
        .commit(&m, &oracle.current().unwrap(), inv.bundle.as_ref().unwrap())
        .unwrap();
    let endpoint = oracle.current_history().unwrap();
    let extended = checked
        .extend(&request("p2"), &candidate, &e.endpoint, &endpoint)
        .unwrap();
    assert_eq!(extended.endpoint().unwrap(), endpoint);
    let checked = history_check::check(&p, &e).unwrap();
    let mut wrong = candidate.clone();
    wrong["invocation"]["input"] = json!({"new_id":"p3"});
    assert!(
        checked
            .extend(&request("p2"), &wrong, &e.endpoint, &endpoint)
            .is_err()
    );
    let checked = history_check::check(&p, &e).unwrap();
    assert!(
        checked
            .extend(&request("p2"), &candidate, &e.origin, &endpoint)
            .is_err()
    );
}
#[test]
fn original_refusal_duplicates_cas_and_memory_limits_are_visible() {
    let result = assurance_study034::publication_controls::exercise().unwrap();
    assert_eq!(result["refusal"]["before"], result["refusal"]["after"]);
    assert_ne!(
        result["refusal"]["invocation"]["outcome"]["record"]["result"],
        "ALLOW"
    );
    let commands = result["commands"]["items"].as_array().unwrap();
    assert_eq!(commands.len(), 2);
    assert_eq!(commands[0]["intent"], commands[1]["intent"]);
    assert_ne!(
        commands[0]["command_occurrence_id"],
        commands[1]["command_occurrence_id"]
    );
    assert_eq!(commands[0]["multiplicity_index"], 0);
    assert_eq!(commands[1]["multiplicity_index"], 1);
    assert_eq!(
        result["commands"]["before"]["state"],
        result["commands"]["after"]["state"]
    );
    assert_ne!(result["commands"]["before"], result["commands"]["after"]);
    assert_eq!(result["cas"]["error_code"], "STATE_CONFLICT");
    assert_eq!(result["duplicate_packet"]["accepted"], false);
    assert_eq!(result["durability"], "unestablished: memory only");
}

#[test]
fn supplied_descriptor_checks_and_restart_have_explicit_lifecycle() {
    let (p, e) = case("p1");
    let mut session = recovery::Session::default();
    assert_eq!(session.state(), "absent");
    session
        .supply(&json!({"verified":true,"endpoint":e.endpoint.as_json()}))
        .unwrap();
    assert_eq!(session.state(), "supplied_unverified");
    session.check_packet(&p, &e).unwrap();
    assert_eq!(
        session.transitions(),
        &[
            "absent",
            "supplied_unverified",
            "checking",
            "established_under_premises"
        ]
    );
    assert_eq!(session.restart().state(), "absent");
    let mut lost = recovery::Session::default();
    assert!(
        lost.extend(&request("p2"), &json!({}), &e.endpoint, &e.endpoint)
            .is_err()
    );
    assert_eq!(lost.state(), "absent");
}

#[test]
fn phase_diagnostics_leave_original_packet_and_endpoint_unchanged() {
 let (packet, expected) = case("phase-parent");
 let original = serde_json::to_value(&packet).unwrap();
 let checked = history_check::check(&packet, &expected).unwrap();
 assert_eq!(checked.endpoint().unwrap(), expected.endpoint);
 assert_eq!(serde_json::to_value(&packet).unwrap(), original);
 let report = checked.report();
 assert!(report["diagnostics"]["fresh_phases_ns"].is_object(), "Missing phase observations at the actual independent-check seam");
 for key in ["subject", "reconstruct", "data_replay", "behavior_replay", "own_origin", "attempt_parent", "invocation_replay", "own_invoke_commit", "historical_property", "compare_and_reopen"] {
  assert!(report["diagnostics"]["fresh_phases_ns"][key].as_u64().is_some(), "Missing phase {key}");
 }
 assert_eq!(report["diagnostics"]["public_work_counts"]["requests_rederived"], 1);
 assert_eq!(report["diagnostics"]["public_work_counts"]["original_state_checks"], 2);
}
