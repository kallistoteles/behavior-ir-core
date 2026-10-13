#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Profile-preserving characterization, established before the 023 correction.
//! Successful v1 decoding is structural evidence, never query-integrity authority.

mod common;

use std::cell::Cell;
use std::collections::BTreeSet;

use behavior_store::documents::{
    CommitBundle, EntityKey, EntityVersion, Genesis, Head, RefChange, TransitionRecord,
};
use behavior_store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store};
use behavior_verify::hashing::document_hash;
use serde_json::{Value, json};

#[derive(Default)]
struct ProbeBackend {
    inner: InMemoryBackend,
    head_calls: Cell<usize>,
    record_calls: Cell<usize>,
    fault_hits: Cell<usize>,
    fault_head_call: Cell<Option<usize>>,
    fault_record: Cell<Option<u64>>,
    publications: usize,
}

impl Backend for ProbeBackend {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        let call = self.head_calls.get() + 1;
        self.head_calls.set(call);
        if self.fault_head_call.get() == Some(call) {
            self.fault_hits.set(self.fault_hits.get() + 1);
            return Err(BackendError(format!("023 performed head read {call}")));
        }
        self.inner.head()
    }
    fn create(
        &mut self,
        genesis: &Genesis,
        head: &Head,
        seed: &[EntityVersion],
        seed_refs: &[RefChange],
    ) -> Result<(), BackendError> {
        self.inner.create(genesis, head, seed, seed_refs)
    }
    fn version_at(
        &self,
        key: &EntityKey,
        position: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version_at(key, position)
    }
    fn version(
        &self,
        key: &EntityKey,
        revision: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version(key, revision)
    }
    fn record(&self, position: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.record_calls.set(self.record_calls.get() + 1);
        if self.fault_record.get() == Some(position) {
            self.fault_hits.set(self.fault_hits.get() + 1);
            return Err(BackendError(format!(
                "023 performed record({position}) read"
            )));
        }
        self.inner.record(position)
    }
    fn removed_at(&self, key: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(key)
    }
    fn incoming_at(&self, key: &EntityKey, position: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.inner.incoming_at(key, position)
    }
    fn keys_at(&self, entity: &str, position: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.inner.keys_at(entity, position)
    }
    fn keys_by_field_at(
        &self,
        entity: &str,
        field: &str,
        value: &Value,
        position: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        self.inner.keys_by_field_at(entity, field, value, position)
    }
    fn used_at(&self, key: &EntityKey, position: u64) -> Result<bool, BackendError> {
        self.inner.used_at(key, position)
    }
    fn commit(
        &mut self,
        expected_last_record: &str,
        versions: &[EntityVersion],
        removals: &[EntityKey],
        refs: &[RefChange],
        record: &TransitionRecord,
        head: &Head,
    ) -> Result<CasOutcome, BackendError> {
        self.publications += 1;
        self.inner
            .commit(expected_last_record, versions, removals, refs, record, head)
    }
}

fn setup() -> (Store<ProbeBackend>, CommitBundle) {
    let store = common::orders_store_with(ProbeBackend::default(), common::orders_seed());
    let evaluation = common::run_orders(
        &store,
        "place_order",
        &[("customer", "c1")],
        json!({"order_id":"new","amount":"20.00"}),
    );
    let bundle = evaluation
        .bundle
        .unwrap_or_else(|| panic!("{}", evaluation.record));
    assert_eq!(bundle.format, "behavior.commit_bundle.v1");
    assert!(!bundle.read_facts["queries"].as_array().unwrap().is_empty());
    (store, bundle)
}

/// This records complete in-memory implementation state as well as bounded
/// semantic views. Reads use the unarmed inner backend, never the fault adapter.
fn authority(store: &Store<ProbeBackend>) -> Value {
    let backend = &store.backend().inner;
    let head = backend.head().unwrap().unwrap();
    let position = head.state_ref.position;
    let mut keys = BTreeSet::from([common::key("Order", "new")]);
    let mut memberships = Vec::new();
    for at in 0..=position {
        for entity in ["Customer", "Employee", "Order"] {
            let members = backend.keys_at(entity, at).unwrap();
            keys.extend(members.iter().cloned());
            memberships.push(json!({"at":at,"entity":entity,"keys":members}));
        }
    }
    let entities = keys.iter().map(|key| {
        let versions = (1..=position + 2).map(|revision| backend.version(key, revision).unwrap()).collect::<Vec<_>>();
        let incoming = backend.incoming_at(key, position).unwrap().iter().map(RefEdge::to_json).collect::<Vec<_>>();
        json!({"key":key,"versions":versions,"latest":backend.version_at(key,position).unwrap(),"removed":backend.removed_at(key).unwrap(),"used":backend.used_at(key,position).unwrap(),"incoming":incoming})
    }).collect::<Vec<_>>();
    let records = (1..=position + 1)
        .map(|at| backend.record(at).unwrap())
        .collect::<Vec<_>>();
    let commands = records.iter().filter_map(|record| record.as_ref()).map(|record| json!({"position":record.position,"commands":record.bundle.as_ref().map(|b|b.record["commands"].clone())})).collect::<Vec<_>>();
    json!({"genesis":backend.genesis().unwrap(),"head":head,"memberships":memberships,"entities":entities,"records":records,"commands":commands,"complete_backend":format!("{backend:?}")})
}

#[derive(Clone, Copy)]
enum HashCase {
    Correct,
    Wrong,
    WrongDomain,
    Malformed,
    NonString,
    Missing,
}

fn mutate(bundle: &CommitBundle, case: HashCase) -> CommitBundle {
    let mut changed = bundle.clone();
    let query = changed.read_facts["queries"][0].as_object_mut().unwrap();
    match case {
        HashCase::Correct => {
            let hash = document_hash("behavior.query_result.v1", &query["members"]).unwrap();
            assert_eq!(query["result_hash"], hash);
        }
        HashCase::Wrong => {
            query.insert(
                "result_hash".into(),
                json!(format!("sha256:{}", "00".repeat(32))),
            );
        }
        HashCase::WrongDomain => {
            let hash = document_hash("behavior.query_result.v0", &query["members"]).unwrap();
            query.insert("result_hash".into(), json!(hash));
        }
        HashCase::Malformed => {
            query.insert("result_hash".into(), json!("sha256:not-a-digest"));
        }
        HashCase::NonString => {
            query.insert("result_hash".into(), json!(17));
        }
        HashCase::Missing => {
            query.remove("result_hash");
        }
    }
    changed
}

fn hash_case(name: &str, case: HashCase) {
    let (mut store, original) = setup();
    let changed = mutate(&original, case);
    // V1 transition identity binds its record, not independently supplied read_facts.
    assert_eq!(changed.transition_hash, original.transition_hash);
    let decoded = CommitBundle::from_json(&serde_json::to_string(&changed).unwrap()).unwrap();
    assert_eq!(
        decoded, changed,
        "v1 structural decode must retain the evidence"
    );
    let before = authority(&store);
    let publications = store.backend().publications;
    match case {
        HashCase::Correct => {
            let committed = store
                .commit(&common::orders(), &decoded.evaluated_state, &decoded)
                .unwrap();
            assert_eq!(committed.result_state.position, 1);
            assert_eq!(store.backend().publications, publications + 1);
            println!(
                "BASELINE {}",
                json!({"case":name,"decode":"Ok","commit":"Commit","record":committed.record_id,"bundle":decoded.hash().unwrap()})
            );
        }
        _ => {
            let error = store
                .commit(&common::orders(), &decoded.evaluated_state, &decoded)
                .unwrap_err();
            assert_eq!(error.code(), "BUNDLE_INVALID");
            assert_eq!(
                error.to_string(),
                "BUNDLE_INVALID: the read facts are not the ones the evaluation observed at the parent"
            );
            assert_eq!(authority(&store), before);
            assert_eq!(store.backend().publications, publications);
            println!(
                "BASELINE {}",
                json!({"case":name,"decode":"Ok","phase":"commit","code":error.code(),"cause":error.to_string(),"publication":"unchanged","before_hash":document_hash("behavior.test.authority.v1",&before).unwrap()})
            );
        }
    }
}

macro_rules! hash_test {
    ($name:ident, $case:ident) => {
        #[test]
        fn $name() {
            hash_case(stringify!($name), HashCase::$case);
        }
    };
}
hash_test!(v1_correct_hash_decodes_and_commits, Correct);
hash_test!(v1_wrong_hash_decodes_then_commit_refuses, Wrong);
hash_test!(
    v1_wrong_domain_hash_decodes_then_commit_refuses,
    WrongDomain
);
hash_test!(v1_malformed_hash_decodes_then_commit_refuses, Malformed);
hash_test!(v1_non_string_hash_decodes_then_commit_refuses, NonString);
hash_test!(v1_missing_hash_decodes_then_commit_refuses, Missing);

#[derive(Clone, Copy)]
enum Earlier {
    Store,
    Transition,
    Parent,
    StaleHead,
    Time,
    Schema,
    Declaration,
    RecordRead,
    SchemaHeadRead,
    ConsistencyHeadRead,
}

fn precedence(name: &str, point: Earlier) {
    let (mut store, original) = setup();
    let mut changed = mutate(&original, HashCase::Wrong);
    let mut parent = changed.evaluated_state.clone();
    let mut module = common::orders();
    let (code, message) = match point {
        Earlier::Store => {
            changed.store = format!("sha256:{}", "ff".repeat(32));
            (
                "BUNDLE_INVALID",
                "the bundle was evaluated against another store",
            )
        }
        Earlier::Transition => {
            changed.transition_hash = format!("sha256:{}", "ff".repeat(32));
            (
                "BUNDLE_INVALID",
                "the transition hash does not match the record",
            )
        }
        Earlier::Parent => {
            parent.state = format!("sha256:{}", "ff".repeat(32));
            (
                "BUNDLE_INVALID",
                "the expected parent is not the state the bundle was evaluated against",
            )
        }
        Earlier::StaleHead => {
            let second = common::run_orders(
                &store,
                "place_order",
                &[("customer", "c2")],
                json!({"order_id":"concurrent","amount":"1.00"}),
            )
            .bundle
            .unwrap();
            store
                .commit(&module, &second.evaluated_state, &second)
                .unwrap();
            ("STATE_CONFLICT", "not the expected parent")
        }
        Earlier::Time => {
            changed.commit_time = "not-a-time".into();
            ("BUNDLE_INVALID", "commit time is not RFC 3339 UTC")
        }
        Earlier::Schema => {
            module = common::ledger();
            ("SCHEMA_MISMATCH", "SCHEMA_MISMATCH:")
        }
        Earlier::Declaration => {
            changed.entity_declarations.clear();
            (
                "BUNDLE_INVALID",
                "the bundle's entity declarations are not the action's",
            )
        }
        Earlier::RecordRead => {
            store.backend_mut().fault_record.set(Some(1));
            ("BACKEND_ERROR", "023 performed record(1) read")
        }
        Earlier::SchemaHeadRead => {
            let b = store.backend_mut();
            b.head_calls.set(0);
            b.fault_head_call.set(Some(1));
            ("BACKEND_ERROR", "023 performed head read 1")
        }
        Earlier::ConsistencyHeadRead => {
            let b = store.backend_mut();
            b.head_calls.set(0);
            b.fault_head_call.set(Some(2));
            ("BACKEND_ERROR", "023 performed head read 2")
        }
    };
    let decoded = CommitBundle::from_json(&serde_json::to_string(&changed).unwrap()).unwrap();
    let before = authority(&store);
    let publications = store.backend().publications;
    let record_reads = store.backend().record_calls.get();
    let error = store.commit(&module, &parent, &decoded).unwrap_err();
    assert_eq!(error.code(), code);
    assert!(error.to_string().contains(message), "{}", error);
    assert!(!error.to_string().contains("the read facts are not"));
    assert_eq!(authority(&store), before);
    assert_eq!(store.backend().publications, publications);
    if matches!(
        point,
        Earlier::RecordRead | Earlier::SchemaHeadRead | Earlier::ConsistencyHeadRead
    ) {
        assert_eq!(store.backend().fault_hits.get(), 1);
    }
    if matches!(point, Earlier::RecordRead | Earlier::ConsistencyHeadRead) {
        assert!(
            store.backend().record_calls.get() > record_reads,
            "record(p+1) lookup must execute"
        );
    }
    println!(
        "BASELINE {}",
        json!({"case":name,"decode":"Ok","phase":"commit","code":error.code(),"cause":error.to_string(),"fault_hits":store.backend().fault_hits.get(),"publication":"unchanged","before_hash":document_hash("behavior.test.authority.v1",&before).unwrap()})
    );
}

macro_rules! precedence_test {
    ($name:ident, $point:ident) => {
        #[test]
        fn $name() {
            precedence(stringify!($name), Earlier::$point);
        }
    };
}
precedence_test!(v1_store_binding_precedes_invalid_query_hash, Store);
precedence_test!(
    v1_transition_binding_precedes_invalid_query_hash,
    Transition
);
precedence_test!(v1_expected_parent_precedes_invalid_query_hash, Parent);
precedence_test!(v1_stale_head_precedes_invalid_query_hash, StaleHead);
precedence_test!(v1_timestamp_precedes_invalid_query_hash, Time);
precedence_test!(v1_schema_binding_precedes_invalid_query_hash, Schema);
precedence_test!(v1_declarations_precede_invalid_query_hash, Declaration);
precedence_test!(
    v1_performed_record_read_error_precedes_invalid_query_hash,
    RecordRead
);
precedence_test!(
    v1_performed_schema_head_error_precedes_invalid_query_hash,
    SchemaHeadRead
);
precedence_test!(
    v1_performed_consistency_head_error_precedes_invalid_query_hash,
    ConsistencyHeadRead
);

mod historical_compatibility {
    use super::*;
    use behavior_core::migration::{Migration, admit_migration};
    use behavior_core::semantic::module::Module;
    use behavior_store::commands::CommandStreamRequest;
    use behavior_store::documents::{CommitEvidence, EvidencePolicy, MigrationBundle, SeedEntity};
    use behavior_store::replay::{replay_behavior, replay_behavior_with, replay_data};
    use behavior_store::store::genesis_for;
    use behavior_verify::governance::trusted::{
        AuthorizationContextV2, GovernanceCandidate, GovernanceSubject,
        validate_trusted_authorization,
    };
    use std::collections::BTreeMap;

    fn fixture(path: &str) -> Value {
        common::json(&common::fixtures().join(path))
    }

    fn h01() -> (Store<ProbeBackend>, CommitBundle, Value) {
        let capture = fixture("governance-v2/legacy-required-history.json");
        let genesis: Genesis = serde_json::from_value(capture["genesis"].clone()).unwrap();
        let original: CommitBundle =
            CommitBundle::from_json(&capture["bundle"].to_string()).unwrap();
        assert_eq!(original.format, "behavior.commit_bundle.v1");
        assert_eq!(original.record["record_version"], "0.4");
        let mut backend = ProbeBackend::default();
        let parent: Head = serde_json::from_value(capture["head0"].clone()).unwrap();
        let next: Head = serde_json::from_value(capture["head1"].clone()).unwrap();
        let seed: Vec<EntityVersion> =
            serde_json::from_value(capture["seed_versions"].clone()).unwrap();
        let versions: Vec<EntityVersion> =
            serde_json::from_value(capture["new_versions"].clone()).unwrap();
        let event: TransitionRecord = serde_json::from_value(capture["record"].clone()).unwrap();
        backend.create(&genesis, &parent, &seed, &[]).unwrap();
        assert_eq!(
            backend
                .commit(&parent.last_record, &versions, &[], &[], &event, &next)
                .unwrap(),
            CasOutcome::Applied
        );
        (Store::open(backend).unwrap(), original, capture)
    }

    #[test]
    fn h01_legacy_required_recovery_remains_structural_and_read_only() {
        // A structurally self-hashed control, not a claim of captured authentication.
        let (mut store, bundle, capture) = h01();
        let before = authority(&store);
        let publications = store.backend().publications;
        let recovered = store
            .commit(&common::ledger(), &bundle.evaluated_state, &bundle)
            .unwrap();
        assert!(recovered.already);
        assert_eq!(recovered.evidence_trust, Some("structural"));
        assert_eq!(recovered.record_id, capture["committed"]);
        assert_eq!(authority(&store), before);
        assert_eq!(store.backend().publications, publications);
        assert!(replay_data(&store, &bundle.evaluated_state, &store.current().unwrap()).ok);
    }

    #[test]
    fn h01_fresh_required_v1_write_keeps_upgrade_refusal() {
        let capture = fixture("governance-v2/legacy-required-history.json");
        let genesis: Genesis = serde_json::from_value(capture["genesis"].clone()).unwrap();
        let mut store = Store::create(ProbeBackend::default(), &common::ledger(), genesis).unwrap();
        let bundle = CommitBundle::from_json(&capture["bundle"].to_string()).unwrap();
        let before = authority(&store);
        assert_eq!(
            store
                .commit(&common::ledger(), &bundle.evaluated_state, &bundle)
                .unwrap_err()
                .code(),
            "TRUSTED_GOVERNANCE_UPGRADE_REQUIRED"
        );
        assert_eq!(authority(&store), before);
        assert_eq!(store.backend().publications, 0);
    }

    fn command_archive(signed: bool) -> (Module, Genesis, TransitionRecord, Option<Head>) {
        if signed {
            let capture:Value=serde_json::from_str(include_str!("../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/store.json")).unwrap();
            assert_eq!(capture["records"].as_array().unwrap().len(), 1);
            let event: TransitionRecord =
                serde_json::from_value(capture["records"][0].clone()).unwrap();
            let captured_evidence: Value = serde_json::from_str(include_str!(
                "../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/evidence.json"
            )).unwrap();
            let captured_context: Value = serde_json::from_str(include_str!(
                "../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/context.json"
            )).unwrap();
            assert_eq!(
                serde_json::to_value(event.bundle.as_ref().unwrap().evidence.as_ref().unwrap())
                    .unwrap(),
                captured_evidence
            );
            assert_eq!(
                event
                    .bundle
                    .as_ref()
                    .unwrap()
                    .authorization_context
                    .as_ref()
                    .unwrap(),
                &captured_context
            );
            let text = include_str!(
                "../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/bundle.json"
            );
            assert_eq!(
                event
                    .bundle
                    .as_ref()
                    .unwrap()
                    .governance_candidate()
                    .unwrap()
                    .as_json(),
                CommitBundle::from_json(text)
                    .unwrap()
                    .governance_candidate()
                    .unwrap()
                    .as_json(),
                "pre-attachment captured bundle and committed envelope retain the exact candidate"
            );
            let module = behavior_core::admit(&common::read(
                &common::fixtures().join("commands/modules/receipt.json"),
            ))
            .unwrap();
            (
                module,
                serde_json::from_value(capture["genesis"].clone()).unwrap(),
                event,
                Some(serde_json::from_value(capture["head"].clone()).unwrap()),
            )
        } else {
            let root = common::fixtures().join("resulting-state-validity/commands");
            let module = behavior_core::admit(&common::read(&root.join("module.json"))).unwrap();
            let genesis = serde_json::from_value(common::json(&root.join("genesis.json"))).unwrap();
            let event: TransitionRecord =
                serde_json::from_value(common::json(&root.join("transition.json"))).unwrap();
            assert_eq!(
                event.bundle.as_ref().unwrap(),
                &CommitBundle::from_json(&common::read(&root.join("bundle.json"))).unwrap()
            );
            (module, genesis, event, None)
        }
    }

    fn import_command_archive(signed: bool) -> (Module, Store<ProbeBackend>, TransitionRecord) {
        let (module, genesis, event, original_head) = command_archive(signed);
        let seeded = Store::create(ProbeBackend::default(), &module, genesis).unwrap();
        let mut backend = seeded.into_backend();
        let parent = backend.head().unwrap().unwrap();
        assert_eq!(parent.state_ref, event.committed_on);
        assert_eq!(parent.last_record, event.previous_record);
        assert!(
            event.new_versions.is_empty()
                && event.created.is_empty()
                && event.removed.is_empty()
                && event.ref_changes.is_empty()
        );
        assert_eq!(parent.state_ref.state, event.result_state.state);
        let head = Head {
            state_ref: event.result_state.clone(),
            last_record: event.hash().unwrap(),
            acc_num: parent.acc_num.clone(),
            acc_den: parent.acc_den.clone(),
            schema: parent.schema.clone(),
        };
        if let Some(original) = original_head {
            assert_eq!(head, original);
        }
        // Test-host import of original durable bytes; never fresh live authorization.
        assert_eq!(
            backend
                .commit(&parent.last_record, &[], &[], &[], &event, &head)
                .unwrap(),
            CasOutcome::Applied
        );
        (module, Store::open(backend).unwrap(), event)
    }

    fn archived_commands(signed: bool) {
        let (module, mut store, event) = import_command_archive(signed);
        let bundle = event.bundle.as_ref().unwrap();
        assert_eq!(bundle.record["record_version"], "0.7");
        assert_eq!(bundle.record["semantic_profile"], "0.8");
        assert!(bundle.record.get("validation_profile").is_none());
        let candidate = bundle.governance_candidate().unwrap();
        assert_eq!(candidate.hash(), bundle.transition_hash);
        let before = authority(&store);
        let publications = store.backend().publications;
        let recovered = store
            .commit(&module, &bundle.evaluated_state, bundle)
            .unwrap();
        assert!(recovered.already);
        assert_eq!(recovered.record_id, event.hash().unwrap());
        assert_eq!(
            recovered.evidence_trust,
            if signed { Some("authenticated") } else { None }
        );
        let modules = BTreeMap::from([(module.behavior_version(), module)]);
        assert!(replay_data(&store, &event.committed_on, &event.result_state).ok);
        let semantic = replay_behavior(&store, &modules, &event.committed_on, &event.result_state);
        assert!(semantic.ok, "{:?}", semantic.divergence);
        let request=CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":store.history_at(0).unwrap(),"through":store.current_history().unwrap(),"max_records":8}).to_string()).unwrap();
        let page = store.commands_since(&request).unwrap();
        assert_eq!(page.items().len(), 1);
        assert_eq!(page.items()[0].commit_record_hash(), event.hash().unwrap());
        assert_eq!(
            page.items()[0].intent(),
            &bundle.record["commands"]["intents"][0]
        );
        assert_eq!(authority(&store), before);
        assert_eq!(store.backend().publications, publications);
    }

    #[test]
    fn h02_actual_pre017_command_profile_recovers_and_replays() {
        archived_commands(false);
    }
    #[test]
    fn h03_actual_signed_pre017_profile_recovers_and_replays() {
        archived_commands(true);
    }

    #[test]
    fn h03_archived_verifier08_receipt_is_not_current_authorization() {
        let (module, genesis, event, _) = command_archive(true);
        let bundle = event.bundle.unwrap();
        let evidence = bundle.evidence.as_ref().unwrap().as_trusted().unwrap();
        assert_eq!(
            evidence.as_json()["verifications"][0]["content"]["verifier_version"],
            "0.8.0"
        );
        let context = AuthorizationContextV2::from_json(
            &bundle.authorization_context.as_ref().unwrap().to_string(),
            evidence.execution_policy(),
        )
        .unwrap();
        assert!(
            validate_trusted_authorization(
                &GovernanceSubject::Module(&module),
                &bundle.governance_candidate().unwrap(),
                genesis.evidence_policy.as_trusted().unwrap(),
                evidence,
                &context
            )
            .is_err()
        );
    }

    #[test]
    fn historical_candidates_do_not_gain_fresh_commit_authority() {
        for signed in [false, true] {
            let (module, genesis, event, _) = command_archive(signed);
            let bundle = event.bundle.unwrap();
            let mut store = Store::create(ProbeBackend::default(), &module, genesis).unwrap();
            let before = authority(&store);
            let result =
                if let Some(evidence) = bundle.evidence.as_ref().and_then(|e| e.as_trusted()) {
                    let context = AuthorizationContextV2::from_json(
                        &bundle.authorization_context.as_ref().unwrap().to_string(),
                        evidence.execution_policy(),
                    )
                    .unwrap();
                    store.commit_with_context(&module, &bundle.evaluated_state, &bundle, &context)
                } else {
                    store.commit(&module, &bundle.evaluated_state, &bundle)
                };
            assert!(
                result.is_err(),
                "old candidate became fresh committed history"
            );
            assert_eq!(authority(&store), before);
            assert_eq!(store.backend().publications, 0);
        }
    }

    #[test]
    fn unsupported_wire_and_query_versions_remain_unadmitted() {
        let ledger = serde_json::from_str::<Value>(&common::read(
            &common::fixtures().join("wire/valid/ledger.json"),
        ))
        .unwrap();
        for version in ["0.1", "0.2", "0.3", "unknown"] {
            let mut document = ledger.clone();
            document["ir_version"] = json!(version);
            assert!(
                behavior_core::admit(&document.to_string()).is_err(),
                "{version}"
            );
        }
        let orders = serde_json::from_str::<Value>(&common::read(
            &common::fixtures().join("wire/valid/orders.json"),
        ))
        .unwrap();
        for version in ["0.4", "0.5"] {
            let mut document = orders.clone();
            document["ir_version"] = json!(version);
            assert!(
                behavior_core::admit(&document.to_string()).is_err(),
                "queries in {version}"
            );
        }
    }

    #[test]
    fn fresh_wire08_v1_commit_keeps_history_upgrade_refusal() {
        let module = behavior_core::admit(&common::read(
            &common::fixtures().join("commands/modules/receipt.json"),
        ))
        .unwrap();
        let mut store = Store::create(
            ProbeBackend::default(),
            &module,
            genesis_for(&module, EvidencePolicy::none(), vec![]),
        )
        .unwrap();
        let bundle = store
            .evaluate(
                &module,
                "receipt",
                &BTreeMap::new(),
                &json!({"recipient":"customer-1"}),
                &json!({}),
                common::T0,
                None,
            )
            .unwrap()
            .bundle
            .unwrap();
        assert_eq!(bundle.format, "behavior.commit_bundle.v1");
        let before = authority(&store);
        assert_eq!(
            store
                .commit(&module, &bundle.evaluated_state, &bundle)
                .unwrap_err()
                .code(),
            "HISTORY_FORMAT_UPGRADE_REQUIRED"
        );
        assert_eq!(authority(&store), before);
        assert_eq!(store.backend().publications, 0);
    }

    #[test]
    fn cross_format_and_unknown_bundles_remain_invalid() {
        let (_, legacy) = setup();
        let (_, genesis, event, _) = command_archive(true);
        let trusted = event.bundle.unwrap();
        for field in ["history", "context", "evidence"] {
            let mut invalid = legacy.clone();
            match field {
                "history" => invalid.evaluated_history = trusted.evaluated_history.clone(),
                "context" => invalid.authorization_context = trusted.authorization_context.clone(),
                _ => invalid.evidence = trusted.evidence.clone(),
            }
            let error =
                CommitBundle::from_json(&serde_json::to_string(&invalid).unwrap()).unwrap_err();
            assert!(
                error
                    .to_string()
                    .contains("legacy bundle contains v2 semantics"),
                "{field}: {error}"
            );
        }
        let mut invalid = trusted;
        let captured = fixture("governance-v2/legacy-required-history.json");
        invalid.evidence = Some(
            serde_json::from_value::<CommitEvidence>(captured["bundle"]["evidence"].clone())
                .unwrap(),
        );
        assert!(
            CommitBundle::from_json(&serde_json::to_string(&invalid).unwrap())
                .unwrap_err()
                .to_string()
                .contains("structural legacy evidence")
        );
        let mut unknown = legacy;
        unknown.format = "behavior.commit_bundle.v3".into();
        assert!(
            CommitBundle::from_json(&serde_json::to_string(&unknown).unwrap())
                .unwrap_err()
                .to_string()
                .contains("unknown commit bundle format")
        );
        assert!(genesis.evidence_policy.as_trusted().is_some());
    }

    #[test]
    fn bundle_universe_remains_outside_the_observed_candidate_domain() {
        let (_, _, event, _) = command_archive(false);
        let mut candidate = event
            .bundle
            .unwrap()
            .governance_candidate()
            .unwrap()
            .as_json();
        candidate["content"]["read_facts"] = json!({"universe":[]});
        candidate["transition_hash"] = json!(
            document_hash("behavior.candidate_transition.v2", &candidate["content"]).unwrap()
        );
        let error = GovernanceCandidate::from_json(&candidate.to_string()).unwrap_err();
        assert_eq!(error.code, "INVALID_CANDIDATE");
        assert!(error.message.contains("universe"));
    }

    #[test]
    fn live_commit_cross_format_pairing_keeps_the_earliest_refusal() {
        let (mut legacy, legacy_bundle) = setup();
        let (module, genesis, event, _) = command_archive(false);
        let trusted_bundle = event.bundle.unwrap();
        let mut trusted = Store::create(ProbeBackend::default(), &module, genesis).unwrap();
        for (store, bundle) in [
            (&mut legacy, &trusted_bundle),
            (&mut trusted, &legacy_bundle),
        ] {
            let before = authority(store);
            let error = store
                .commit(&module, &bundle.evaluated_state, bundle)
                .unwrap_err();
            assert_eq!(error.code(), "BUNDLE_INVALID");
            assert_eq!(
                error.to_string(),
                "BUNDLE_INVALID: bundle/genesis format pairing differs"
            );
            assert_eq!(authority(store), before);
            assert_eq!(store.backend().publications, 0);
        }
    }

    #[test]
    fn unknown_candidate_kind_and_history_format_remain_refused() {
        let (_, _, event, _) = command_archive(false);
        let candidate = event
            .bundle
            .unwrap()
            .governance_candidate()
            .unwrap()
            .as_json();
        for (field, code, cause) in [
            ("kind", "INVALID_CANDIDATE", "unsupported candidate kind"),
            (
                "history",
                "INVALID_HISTORY_REF",
                "invalid history format or genesis anchor",
            ),
        ] {
            let mut invalid = candidate.clone();
            if field == "kind" {
                invalid["content"]["kind"] = json!("unknown");
            } else {
                invalid["content"]["evaluated_history"]["format"] =
                    json!("behavior.history_ref.v3");
            }
            invalid["transition_hash"] = json!(
                document_hash("behavior.candidate_transition.v2", &invalid["content"]).unwrap()
            );
            let error = GovernanceCandidate::from_json(&invalid.to_string()).unwrap_err();
            assert_eq!(error.code, code);
            assert_eq!(error.message, cause);
        }
    }

    fn migration_case() -> (Module, Module, Migration, Store<ProbeBackend>) {
        let source =
            behavior_core::admit(&fixture("soundness/migration-source-a.json").to_string())
                .unwrap();
        let target =
            behavior_core::admit(&fixture("soundness/migration-target.json").to_string()).unwrap();
        let location = json!({"file":"compatibility-migration.dsl","line":1});
        let document = json!({"migration_ir":"0.1","name":"add_z","source":behavior_core::schema(&source).hash,"target":behavior_core::schema(&target).hash,"constants":[],"requirements":[],"transforms":[{"entity":"E","fields":{"z":{"op":"derived","name":"calc","args":["old"],"loc":location}},"drops":[]}],"retire":[]});
        let migration = admit_migration(&source, &target, &document.to_string()).unwrap();
        let genesis = genesis_for(
            &source,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "E".into(),
                value: json!({"id":"only","x":1,"y":2}),
            }],
        );
        let store = Store::create(ProbeBackend::default(), &source, genesis).unwrap();
        (source, target, migration, store)
    }

    #[test]
    fn actual_legacy_migration_preparation_stays_empty_and_dispatches_legacy_history() {
        let (source, target, migration, mut store) = migration_case();
        let from = store.current().unwrap();
        let before = authority(&store);
        let prepared = store
            .prepare_migration(&source, &target, &migration, common::T0, None)
            .unwrap();
        let original = prepared.governance_candidate().unwrap().as_json();
        assert_eq!(original["content"]["kind"], "migration");
        assert_eq!(original["content"]["read_facts"], json!({}));
        assert_eq!(authority(&store), before);
        let committed = store
            .commit_prepared_migration(&source, &target, &migration, &prepared, None, None)
            .unwrap();
        let event = store.backend().record(1).unwrap().unwrap();
        let bundle = event.migration.as_ref().unwrap();
        assert!(bundle.format.is_none() && bundle.candidate.is_none() && bundle.evidence.is_none());
        assert_eq!(event.format, "behavior.transition_record.v1");
        let encoded = serde_json::to_string(bundle).unwrap();
        let decoded: MigrationBundle = behavior_core::canonical::decode_closed(&encoded).unwrap();
        assert_eq!(decoded, *bundle);
        assert_eq!(decoded.hash().unwrap(), event.bundle_hash);
        assert_eq!(store.backend().publications, 1);
        assert_eq!(committed.result_state.position, 1);
        assert!(replay_data(&store, &from, &committed.result_state).ok);
        let modules = BTreeMap::from([
            (source.behavior_version(), source.clone()),
            (target.behavior_version(), target.clone()),
        ]);
        let migrations =
            BTreeMap::from([(migration.hash().to_string(), (migration, source, target))]);
        let semantic = replay_behavior_with(
            &store,
            &modules,
            &migrations,
            &from,
            &committed.result_state,
        );
        assert!(semantic.ok, "{:?}", semantic.divergence);
    }

    #[test]
    fn actual_prepared_migration_does_not_gain_query_observation_support() {
        let (source, target, migration, store) = migration_case();
        let prepared = store
            .prepare_migration(&source, &target, &migration, common::T0, None)
            .unwrap();
        let before = authority(&store);
        let original = prepared.governance_candidate().unwrap().as_json();
        for (evidence, cause) in [
            (
                json!({"existence":[{"entity":"E","id":"only","exists":true}]}),
                "migration has no invocation facts",
            ),
            (
                json!({"queries":[{"instance":"q","definition":"d","entity":"E","captures":[],"members":[],"result_hash":document_hash("behavior.query_result.v1",&json!([])).unwrap()}]}),
                "invalid observed facts",
            ),
        ] {
            let mut invalid = original.clone();
            invalid["content"]["read_facts"] = evidence;
            invalid["transition_hash"] = json!(
                document_hash("behavior.candidate_transition.v2", &invalid["content"]).unwrap()
            );
            let error = GovernanceCandidate::from_json(&invalid.to_string()).unwrap_err();
            assert_eq!(error.code, "INVALID_CANDIDATE");
            assert!(error.message.contains(cause), "{}", error.message);
        }
        assert_eq!(authority(&store), before);
        assert_eq!(store.backend().publications, 0);
    }
}
