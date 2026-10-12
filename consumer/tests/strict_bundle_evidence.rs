#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Scoped 023 consumption through the supported facade and existing CLI only.
use behavior_engine::canonical::tagged_hash;
use behavior_engine::read::ReadSource;
use behavior_engine::semantic::Module;
use behavior_engine::store::commands::CommandStreamRequest;
use behavior_engine::store::documents::{
    CommitBundle, CommitEvidence, EntityKey, SeedEntity, TransitionRecord, decode,
};
use behavior_engine::store::replay::{replay_behavior_with, replay_data};
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{Backend, InMemoryBackend, Store};
use behavior_engine::verify::governance::{
    AuthorizationContextV2, EvidencePolicyV2, EvidenceV2, ExecutionPolicyV2, GovernanceCandidate,
    GovernanceSubject, authorize_trusted, sign_authorization, signing_key_id,
};
use serde_json::{Value, json};
use std::collections::{BTreeMap, BTreeSet};
use std::path::{Path, PathBuf};
use std::process::{Command, Output};
use std::sync::atomic::{AtomicU64, Ordering};

const NOW: &str = "2026-10-05T12:00:00Z";

fn fixture_path(name: &str) -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../tests/fixtures")
        .join(name)
}

fn fixture(name: &str) -> String {
    std::fs::read_to_string(fixture_path(name)).unwrap()
}

fn fixture_json(name: &str) -> Value {
    serde_json::from_str(&fixture(name)).unwrap()
}

fn execution_policy() -> ExecutionPolicyV2 {
    ExecutionPolicyV2::from_json(&fixture("governance-v2/policy-none.json")).unwrap()
}

fn evidence_policy(required: bool) -> EvidencePolicyV2 {
    let mut raw = fixture_json(if required {
        "governance-v2/evidence-policy.json"
    } else {
        "governance-v2/evidence-policy-none.json"
    });
    if required {
        raw["execution_policies"] = json!([execution_policy().hash()]);
    }
    EvidencePolicyV2::from_json(&raw.to_string()).unwrap()
}

fn context() -> AuthorizationContextV2 {
    AuthorizationContextV2::from_json(
        &fixture("governance-v2/context-unbound.json"),
        &execution_policy(),
    )
    .unwrap()
}

fn query_seeds() -> Vec<SeedEntity> {
    [
        (
            "Customer",
            json!({"id":"c1","name":"c1","credit_limit":"100.00","region":"north"}),
        ),
        (
            "Customer",
            json!({"id":"c2","name":"c2","credit_limit":"100.00","region":"north"}),
        ),
        (
            "Order",
            json!({"id":"o1","customer":"c1","amount":"10.00","status":"closed","region":"north"}),
        ),
        (
            "Order",
            json!({"id":"o2","customer":"c2","amount":"5.00","status":"open","region":"north"}),
        ),
        ("Employee", json!({"id":"e1","personnel_number":"N1"})),
    ]
    .into_iter()
    .map(|(entity, value)| SeedEntity {
        entity: entity.into(),
        value,
    })
    .collect()
}

fn query_setup(required: bool) -> (Module, Store<InMemoryBackend>, EvidencePolicyV2) {
    let module = behavior_engine::admit(&fixture("wire/valid/orders.json")).unwrap();
    let policy = evidence_policy(required);
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(&module, policy.clone(), query_seeds()).unwrap(),
    )
    .unwrap();
    (module, store, policy)
}

fn query_bundle(store: &Store<InMemoryBackend>, module: &Module, id: &str) -> CommitBundle {
    let result = store
        .evaluate(
            module,
            "place_order",
            &BTreeMap::from([("customer".into(), "c1".into())]),
            &json!({"order_id":id,"amount":"20.00"}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap();
    assert_eq!(result.record["result"], "ALLOW");
    let bundle = result.bundle.unwrap();
    assert!(!bundle.read_facts["queries"].as_array().unwrap().is_empty());
    bundle
}

fn exact_evidence(module: &Module, bundle: &CommitBundle, policy: &EvidencePolicyV2) -> EvidenceV2 {
    let execution = execution_policy();
    let seed = fixture("governance-v2/authorizer.seed");
    let issuer = signing_key_id(seed.trim()).unwrap();
    let authorization = authorize_trusted(
        &GovernanceSubject::Module(module),
        &bundle.governance_candidate().unwrap(),
        policy,
        &execution,
        &[],
        &issuer,
        &context(),
    )
    .unwrap();
    assert_eq!(authorization.decision(), "allow");
    let signed = sign_authorization(&authorization, seed.trim()).unwrap();
    EvidenceV2::from_json(&json!({
        "format":"behavior.evidence.v2", "execution_policy":execution.as_json(),
        "authorization":signed.as_json(), "verifications":[], "waivers":[], "waiver_signatures":[]
    }).to_string()).unwrap()
}

fn stream(store: &Store<InMemoryBackend>) -> Value {
    let request = CommandStreamRequest::from_json(
        &json!({
            "format":"behavior.command_stream_request.v1", "after":store.history_at(0).unwrap(),
            "through":store.current_history().unwrap(),
        })
        .to_string(),
    )
    .unwrap();
    store.commands_since(&request).unwrap().as_json()
}

// Complete reference-backend state is compared, alongside independently bounded
// semantic history, versions, lifetime and reference observations. This asserts
// no authoritative publication; it does not claim physical crash durability.
fn authority(store: &Store<InMemoryBackend>) -> Value {
    let backend = store.backend();
    let head = store.current_history().unwrap();
    let mut keys = BTreeSet::from([
        EntityKey {
            entity: "Order".into(),
            id: "new".into(),
        },
        EntityKey {
            entity: "Order".into(),
            id: "other".into(),
        },
    ]);
    let mut memberships = Vec::new();
    let schema = store.schema_at(&head.state_ref()).unwrap();
    for position in 0..=head.position {
        for entity in schema.declarations.keys() {
            let members = backend.keys_at(entity, position).unwrap();
            keys.extend(members.iter().cloned());
            memberships.push(json!({"position":position,"entity":entity,"keys":members}));
        }
    }
    let identities = keys.into_iter().map(|key| json!({
        "key":key,"removed":backend.removed_at(&key).unwrap(),
        "versions":(1..=head.position+2).map(|revision|backend.version(&key,revision).unwrap()).collect::<Vec<_>>(),
        "history":(0..=head.position).map(|position|json!({
            "position":position,"used":backend.used_at(&key,position).unwrap(),
            "version":backend.version_at(&key,position).unwrap(),
            "incoming":backend.incoming_at(&key,position).unwrap().iter().map(|edge|edge.to_json()).collect::<Vec<_>>()
        })).collect::<Vec<_>>()
    })).collect::<Vec<_>>();
    json!({
        "backend":format!("{backend:?}"),"genesis":backend.genesis().unwrap(),"head":head,
        "memberships":memberships,"identities":identities,
        "records":(1..=head.position+1).map(|position|backend.record(position).unwrap()).collect::<Vec<_>>(),
        "commands":stream(store),
    })
}

#[test]
fn facade_actual_query_candidate_roundtrips_and_commits_with_exact_required_authorization() {
    let (module, mut store, policy) = query_setup(true);
    let original = query_bundle(&store, &module, "new");
    let decoded = CommitBundle::from_json(&serde_json::to_string(&original).unwrap()).unwrap();
    assert_eq!(decoded, original);
    let candidate = decoded.governance_candidate().unwrap();
    let checked = GovernanceCandidate::from_json(&candidate.as_json().to_string()).unwrap();
    assert_eq!(checked.as_json(), candidate.as_json());
    assert_eq!(checked.hash(), original.transition_hash);
    assert_eq!(
        checked.as_json()["content"]["read_facts"],
        original.read_facts
    );
    let before = store.current_history().unwrap();
    let evidence = exact_evidence(&module, &original, &policy);
    let signed = decoded.with_trusted_evidence(&evidence).unwrap();
    let result = store
        .commit_with_context(&module, &before.state_ref(), &signed, &context())
        .unwrap();
    assert_eq!(result.evidence_trust, Some("authenticated"));
    assert!(!result.already);
    assert_eq!(store.current_history().unwrap().position, 1);
    assert_eq!(
        store
            .load(
                &EntityKey {
                    entity: "Order".into(),
                    id: "new".into()
                },
                &result.result_state
            )
            .unwrap()
            .value["amount"],
        "20.00"
    );
}

#[test]
fn facade_valid_query_integrity_does_not_waive_required_authorization() {
    let (module, mut store, _) = query_setup(true);
    let bundle = query_bundle(&store, &module, "new");
    bundle.governance_candidate().unwrap();
    let before = authority(&store);
    let error = store
        .commit_with_context(&module, &bundle.evaluated_state, &bundle, &context())
        .unwrap_err();
    assert_eq!(error.code(), "EVIDENCE_REQUIRED");
    assert_eq!(authority(&store), before);
}

#[test]
fn facade_authorization_for_another_query_candidate_cannot_publish() {
    let (module, mut store, policy) = query_setup(true);
    let first = query_bundle(&store, &module, "new");
    let mut other = query_bundle(&store, &module, "other");
    let evidence = exact_evidence(&module, &first, &policy);
    assert_eq!(
        other.with_trusted_evidence(&evidence).unwrap_err().code(),
        "EVIDENCE_MISMATCH"
    );
    other.evidence = Some(CommitEvidence::Trusted(Box::new(evidence)));
    let before = authority(&store);
    let error = store
        .commit_with_context(&module, &other.evaluated_state, &other, &context())
        .unwrap_err();
    assert_eq!(error.code(), "EVIDENCE_MISMATCH");
    assert_eq!(authority(&store), before);
}

#[test]
fn facade_prior_query_authorization_is_not_reusable_for_the_next_candidate() {
    let (module, mut store, policy) = query_setup(true);
    let first = query_bundle(&store, &module, "new");
    let evidence = exact_evidence(&module, &first, &policy);
    let signed = first.with_trusted_evidence(&evidence).unwrap();
    store
        .commit_with_context(&module, &signed.evaluated_state, &signed, &context())
        .unwrap();
    let mut next = query_bundle(&store, &module, "other");
    assert_eq!(
        next.with_trusted_evidence(&evidence).unwrap_err().code(),
        "EVIDENCE_MISMATCH"
    );
    next.evidence = Some(CommitEvidence::Trusted(Box::new(evidence)));
    let before = authority(&store);
    let error = store
        .commit_with_context(&module, &next.evaluated_state, &next, &context())
        .unwrap_err();
    assert_eq!(error.code(), "EVIDENCE_MISMATCH");
    assert_eq!(authority(&store), before);
    assert_eq!(store.current_history().unwrap().position, 1);
}

fn malformed_candidate(bundle: &CommitBundle) -> Value {
    let mut claim = bundle.governance_candidate().unwrap().as_json();
    claim["content"]["read_facts"]["queries"][0]["result_hash"] = json!("sha256:bad");
    claim["transition_hash"] =
        json!(tagged_hash("behavior.candidate_transition.v2", &claim["content"]).unwrap());
    claim
}

#[test]
fn facade_strict_query_integrity_refusal_cannot_publish_a_mutable_bundle() {
    let (module, mut store, _) = query_setup(false);
    let mut bundle = query_bundle(&store, &module, "new");
    let claim = malformed_candidate(&bundle);
    let local = GovernanceCandidate::from_json(&claim.to_string()).unwrap_err();
    assert_eq!(local.code, "INVALID_CANDIDATE");
    assert!(local.message.contains("read_facts.queries[0].result_hash"));
    bundle.read_facts = claim["content"]["read_facts"].clone();
    bundle.transition_hash = claim["transition_hash"].as_str().unwrap().into();
    let before = authority(&store);
    let error = store
        .commit(&module, &bundle.evaluated_state, &bundle)
        .unwrap_err();
    assert_eq!(error.code(), "BUNDLE_INVALID");
    assert!(error.to_string().contains("INVALID_CANDIDATE"));
    assert_eq!(authority(&store), before);
}

struct Scratch(PathBuf);
impl Scratch {
    fn new() -> Self {
        static NEXT: AtomicU64 = AtomicU64::new(0);
        let path = std::env::temp_dir().join(format!(
            "023-consumer-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        std::fs::create_dir(&path).unwrap();
        Self(path)
    }
    fn file(&self, name: &str) -> PathBuf {
        self.0.join(name)
    }
    fn write(&self, name: &str, contents: &str) -> PathBuf {
        let path = self.file(name);
        std::fs::write(&path, contents).unwrap();
        path
    }
}
impl Drop for Scratch {
    fn drop(&mut self) {
        std::fs::remove_dir_all(&self.0).unwrap();
    }
}

fn cli_binary() -> PathBuf {
    std::env::var_os("BEHAVIOR_BIN")
        .map(PathBuf::from)
        .unwrap_or_else(|| Path::new(env!("CARGO_MANIFEST_DIR")).join("../target/debug/behavior"))
}

fn cli_authorize(
    scratch: &Scratch,
    candidate: &Path,
    module: &Path,
    policy: &EvidencePolicyV2,
) -> Output {
    let ep = scratch.write("evidence-policy.json", &policy.as_json().to_string());
    let execution = scratch.write("policy.json", &execution_policy().as_json().to_string());
    let context = scratch.write("context.json", &context().as_json().to_string());
    Command::new(cli_binary())
        .arg("governance")
        .arg("authorize")
        .arg(candidate)
        .arg("--wire")
        .arg(module)
        .arg("--evidence-policy")
        .arg(ep)
        .arg("--policy")
        .arg(execution)
        .arg("--seed")
        .arg(fixture_path("governance-v2/authorizer.seed"))
        .arg("--context")
        .arg(context)
        .arg("--now")
        .arg(NOW)
        .arg("--out")
        .arg(scratch.file("evidence.json"))
        .output()
        .unwrap()
}

#[test]
fn cli_authorizes_actual_query_candidate_and_evidence_commits_through_facade() {
    let (module, mut store, policy) = query_setup(true);
    let bundle = query_bundle(&store, &module, "new");
    let scratch = Scratch::new();
    let candidate = scratch.write(
        "candidate.json",
        &bundle.governance_candidate().unwrap().as_json().to_string(),
    );
    let result = cli_authorize(
        &scratch,
        &candidate,
        &fixture_path("wire/valid/orders.json"),
        &policy,
    );
    assert_eq!(
        result.status.code(),
        Some(0),
        "{}",
        String::from_utf8_lossy(&result.stderr)
    );
    let raw = std::fs::read_to_string(scratch.file("evidence.json")).unwrap();
    let evidence = EvidenceV2::from_json(&raw).unwrap();
    assert_eq!(
        evidence.authorization().as_json()["content"]["candidate_transition_hash"],
        bundle.transition_hash
    );
    let signed = bundle.with_trusted_evidence(&evidence).unwrap();
    let committed = store
        .commit_with_context(&module, &signed.evaluated_state, &signed, &context())
        .unwrap();
    assert_eq!(committed.evidence_trust, Some("authenticated"));
}

#[test]
fn cli_wrong_query_hash_preserves_existing_output_artifact() {
    let (module, store, policy) = query_setup(true);
    let bundle = query_bundle(&store, &module, "new");
    let scratch = Scratch::new();
    let candidate = scratch.write("candidate.json", &malformed_candidate(&bundle).to_string());
    scratch.write("evidence.json", "existing-output-must-survive");
    let before = authority(&store);
    let result = cli_authorize(
        &scratch,
        &candidate,
        &fixture_path("wire/valid/orders.json"),
        &policy,
    );
    assert_eq!(result.status.code(), Some(2));
    let error = String::from_utf8(result.stderr).unwrap();
    assert!(error.contains("INVALID_CANDIDATE"), "{error}");
    assert!(
        error.contains("read_facts.queries[0].result_hash"),
        "{error}"
    );
    assert_eq!(
        std::fs::read_to_string(scratch.file("evidence.json")).unwrap(),
        "existing-output-must-survive"
    );
    assert_eq!(authority(&store), before);
}

#[test]
fn cli_raw_duplicate_candidate_key_does_not_create_evidence() {
    let (module, store, policy) = query_setup(true);
    let bundle = query_bundle(&store, &module, "new");
    let original = bundle.governance_candidate().unwrap().as_json().to_string();
    let duplicate = format!(
        "{{\"format\":\"behavior.governance_candidate.v2\",{}",
        &original[1..]
    );
    let scratch = Scratch::new();
    let candidate = scratch.write("candidate.json", &duplicate);
    let result = cli_authorize(
        &scratch,
        &candidate,
        &fixture_path("wire/valid/orders.json"),
        &policy,
    );
    assert_eq!(result.status.code(), Some(2));
    assert!(String::from_utf8_lossy(&result.stderr).contains("INVALID_GOVERNANCE_DOCUMENT"));
    assert!(!scratch.file("evidence.json").exists());
}

#[test]
fn ordinary_nonquery_candidate_and_commit_remain_available_through_facade() {
    let module = behavior_engine::admit(&fixture("wire/valid/ledger.json")).unwrap();
    let mut store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(
            &module,
            evidence_policy(false),
            vec![
                SeedEntity {
                    entity: "Account".into(),
                    value: json!({"id":"a1","active":true,"balance":"100.00"}),
                },
                SeedEntity {
                    entity: "Account".into(),
                    value: json!({"id":"a2","active":true,"balance":"5.00"}),
                },
            ],
        )
        .unwrap(),
    )
    .unwrap();
    let bundle = store
        .evaluate(
            &module,
            "transfer",
            &BTreeMap::from([("from_".into(), "a1".into()), ("to".into(), "a2".into())]),
            &json!({"amount":"1.00"}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    assert!(bundle.read_facts.get("queries").is_none());
    bundle.governance_candidate().unwrap();
    let result = store
        .commit(&module, &bundle.evaluated_state, &bundle)
        .unwrap();
    assert_eq!(
        store
            .load(
                &EntityKey {
                    entity: "Account".into(),
                    id: "a1".into()
                },
                &result.result_state
            )
            .unwrap()
            .value["balance"],
        "99.00"
    );
}

#[test]
fn declared_query_read_and_profile_replay_remain_read_only_through_facade() {
    let module = behavior_engine::admit(&fixture("reads/modules/lab.json")).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(&module, evidence_policy(false), vec![]).unwrap(),
    )
    .unwrap();
    let before = authority(&store);
    let read = store
        .read(
            &module,
            &ReadSource::Declared("active_count".into()),
            &BTreeMap::new(),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap();
    assert_eq!(read.record.as_json()["result"], "VALUE");
    assert_eq!(read.record.as_json()["value"], 0);
    let raw = read.record.to_json_string();
    assert!(behavior_engine::read::replay_read(&module, &raw).matches);
    assert!(store.replay_read(&module, &raw).unwrap().matches);
    assert_eq!(authority(&store), before);
}

#[test]
fn actual_prepared_migration_retains_empty_candidate_facts_and_commits() {
    let source = behavior_engine::admit(&fixture("migration/modules/cultures_v1.json")).unwrap();
    let target = behavior_engine::admit(&fixture("migration/modules/cultures_v2.json")).unwrap();
    let migration = behavior_engine::migration::admit_migration(
        &source,
        &target,
        &fixture("migration/valid/cultures_v1_to_v2.json"),
    )
    .unwrap();
    let mut store = Store::create(
        InMemoryBackend::new(),
        &source,
        genesis_v2_for(
            &source,
            evidence_policy(false),
            vec![SeedEntity {
                entity: "Culture".into(),
                value: json!({"id":"k1","medium":"WPM","status":"ACTIVE","ph":7,
                "legacy_code":"L1","price":"1.50","fee":"0.1235"}),
            }],
        )
        .unwrap(),
    )
    .unwrap();
    let before = authority(&store);
    let prepared = store
        .prepare_migration(&source, &target, &migration, NOW, None)
        .unwrap();
    let candidate = prepared.governance_candidate().unwrap();
    assert_eq!(candidate.as_json()["content"]["read_facts"], json!({}));
    assert_eq!(
        GovernanceCandidate::from_json(&candidate.as_json().to_string())
            .unwrap()
            .as_json(),
        candidate.as_json()
    );
    assert_eq!(authority(&store), before);
    store
        .commit_prepared_migration(&source, &target, &migration, &prepared, None, None)
        .unwrap();
    assert_eq!(store.current_history().unwrap().position, 1);
    assert_eq!(
        store.schema_at(&store.current().unwrap()).unwrap().hash,
        behavior_engine::schema(&target).hash
    );
}

#[test]
fn facade_consumes_all_reviewed_actual_producer_package_candidates_without_rewriting_claims() {
    // T044 reruns actual evaluate/invoke/intent recipes; T045 independently checks
    // their private projection. This transitive facade route consumes the same
    // reviewed package, without manufacturing or refreshing capture evidence.
    let package = fixture_json("strict-bundle-evidence/projection-cases.json");
    let manifest = fixture_json("strict-bundle-evidence/projection-manifest.json");
    assert_eq!(package["format"], "behavior.test.projection_cases.v1");
    let cases = package["cases"].as_array().unwrap();
    assert_eq!(
        cases.len(),
        manifest["case_count"].as_u64().unwrap() as usize
    );
    assert_eq!(cases.len(), 39);
    let mut ids = BTreeSet::new();
    let mut producers = BTreeSet::new();
    let mut wires = BTreeSet::new();
    let mut cells = BTreeSet::new();
    for case in cases {
        let id = case["id"].as_str().unwrap();
        assert!(ids.insert(id));
        producers.insert(case["producer"].as_str().unwrap());
        wires.insert(case["wire_version"].as_str().unwrap());
        cells.insert(case["support_cell"].as_str().unwrap());
        let original = &case["candidate"];
        let checked = GovernanceCandidate::from_json(&original.to_string())
            .unwrap_or_else(|error| panic!("{id}: {error}"));
        assert_eq!(checked.as_json(), *original, "{id}");
        assert_eq!(
            checked.hash(),
            original["transition_hash"].as_str().unwrap(),
            "{id}"
        );
        let bundle = CommitBundle::from_json(&case["checked_bundle"].to_string())
            .unwrap_or_else(|error| panic!("{id}: {error}"));
        assert_eq!(
            bundle.governance_candidate().unwrap().as_json(),
            *original,
            "{id}"
        );
        let mut observed = case["original_inner_record"]
            .get("facts")
            .cloned()
            .unwrap_or_else(|| json!({}));
        observed.as_object_mut().unwrap().remove("universe");
        assert_eq!(
            observed, case["expected_facts"],
            "{id}: original observations"
        );
    }
    assert_eq!(
        producers,
        BTreeSet::from(["Store::evaluate", "Store::invoke", "Store::invoke_intent"])
    );
    assert_eq!(wires, BTreeSet::from(["0.4", "0.5", "0.6", "0.7", "0.8"]));
    assert_eq!(cells, BTreeSet::from(["S04", "S05"]));
}

#[test]
fn signed_query_archive_reopen_recovery_and_both_replays_preserve_later_history() {
    let (module, mut store, policy) = query_setup(true);
    let start = store.current_history().unwrap();
    let first = query_bundle(&store, &module, "new");
    let first_claim = first.governance_candidate().unwrap().as_json();
    let evidence = exact_evidence(&module, &first, &policy);
    let first = first.with_trusted_evidence(&evidence).unwrap();
    let first_result = store
        .commit_with_context(&module, &first.evaluated_state, &first, &context())
        .unwrap();
    let event = store.backend().record(1).unwrap().unwrap();
    let raw_archive = serde_json::to_string(&event).unwrap();
    // Generic transport reduction alone proves no archive validity. Follow it by
    // checked kind/hash, strict bundle/candidate consumption and live Store replay.
    let decoded: TransitionRecord = decode(
        "TransitionRecord",
        &behavior_engine::canonical::decode_strict(&raw_archive).unwrap(),
    )
    .unwrap();
    decoded.check_kind().unwrap();
    assert_eq!(decoded.hash().unwrap(), first_result.record_id);
    assert_eq!(decoded, event);
    let archived = decoded.bundle.unwrap();
    let archived = CommitBundle::from_json(&serde_json::to_string(&archived).unwrap()).unwrap();
    assert_eq!(
        archived.governance_candidate().unwrap().as_json(),
        first_claim
    );
    assert_eq!(archived.authorization_context, Some(context().as_json()));
    match archived.evidence.as_ref().unwrap() {
        CommitEvidence::Trusted(value) => assert_eq!(value.as_json(), evidence.as_json()),
        CommitEvidence::Legacy(_) => panic!("signed v2 archive changed evidence kind"),
    }
    let second = query_bundle(&store, &module, "other");
    let second_evidence = exact_evidence(&module, &second, &policy);
    let second = second.with_trusted_evidence(&second_evidence).unwrap();
    store
        .commit_with_context(&module, &second.evaluated_state, &second, &context())
        .unwrap();
    let end = store.current_history().unwrap();
    assert_eq!(end.position, 2);
    let before = authority(&store);
    let recovered = store
        .commit(&module, &archived.evaluated_state, &archived)
        .unwrap();
    assert!(recovered.already);
    assert_eq!(recovered.record_id, first_result.record_id);
    assert_eq!(recovered.result_state, first_result.result_state);
    assert_eq!(recovered.evidence_trust, Some("authenticated"));
    assert_eq!(store.current_history().unwrap(), end);
    assert_eq!(authority(&store), before);
    let reopened = Store::open(store.into_backend()).unwrap();
    assert_eq!(authority(&reopened), before);
    assert!(replay_data(&reopened, &start.state_ref(), &end.state_ref()).ok);
    assert!(
        replay_behavior_with(
            &reopened,
            &BTreeMap::from([(module.behavior_version(), module.clone())]),
            &BTreeMap::new(),
            &start.state_ref(),
            &end.state_ref()
        )
        .ok
    );
    assert_eq!(authority(&reopened), before);
    assert_eq!(reopened.backend().record(1).unwrap().unwrap(), event);
}

#[test]
fn command_intents_become_occurrences_only_after_authenticated_publication_and_remain_idempotent() {
    let module = behavior_engine::admit(&fixture("commands/modules/receipt.json")).unwrap();
    let policy = evidence_policy(true);
    let mut store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(&module, policy.clone(), vec![]).unwrap(),
    )
    .unwrap();
    let start = store.current_history().unwrap();
    let bundle = store
        .evaluate(
            &module,
            "receipt",
            &BTreeMap::new(),
            &json!({"recipient":"same"}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    assert_eq!(
        bundle.record["commands"]["intents"]
            .as_array()
            .unwrap()
            .len(),
        1
    );
    assert_eq!(
        bundle.governance_candidate().unwrap().as_json()["content"]["read_facts"],
        json!({})
    );
    assert!(stream(&store)["items"].as_array().unwrap().is_empty());
    let before = authority(&store);
    let error = store
        .commit_with_context(&module, &bundle.evaluated_state, &bundle, &context())
        .unwrap_err();
    assert_eq!(error.code(), "EVIDENCE_REQUIRED");
    assert_eq!(authority(&store), before);
    assert!(stream(&store)["items"].as_array().unwrap().is_empty());
    let evidence = exact_evidence(&module, &bundle, &policy);
    let signed = bundle.with_trusted_evidence(&evidence).unwrap();
    let committed = store
        .commit_with_context(&module, &signed.evaluated_state, &signed, &context())
        .unwrap();
    assert_eq!(committed.evidence_trust, Some("authenticated"));
    let end = store.current_history().unwrap();
    assert_eq!(
        start.state, end.state,
        "command-only commit changes history, not state content"
    );
    let page = stream(&store);
    assert_eq!(page["items"].as_array().unwrap().len(), 1);
    assert_eq!(page["items"][0]["history_position"], 1);
    assert_eq!(page["items"][0]["commit_record_hash"], committed.record_id);
    let before_recovery = authority(&store);
    let recovered = store
        .commit(&module, &signed.evaluated_state, &signed)
        .unwrap();
    assert!(recovered.already);
    assert_eq!(recovered.record_id, committed.record_id);
    assert_eq!(stream(&store), page);
    assert_eq!(authority(&store), before_recovery);
    let reopened = Store::open(store.into_backend()).unwrap();
    assert!(replay_data(&reopened, &start.state_ref(), &end.state_ref()).ok);
    assert!(
        replay_behavior_with(
            &reopened,
            &BTreeMap::from([(module.behavior_version(), module.clone())]),
            &BTreeMap::new(),
            &start.state_ref(),
            &end.state_ref()
        )
        .ok
    );
    assert_eq!(stream(&reopened), page);
    assert_eq!(authority(&reopened), before_recovery);
}
