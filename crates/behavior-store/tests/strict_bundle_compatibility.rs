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
