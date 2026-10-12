//! Core022 baseline fixtures and Store replay regressions. No production bypasses.
#![allow(clippy::unwrap_used, clippy::expect_used)]

mod common;

use std::cell::Cell;
use std::collections::{BTreeMap, BTreeSet};
use std::path::PathBuf;

use behavior_core::invocation::{RequestedInvocation, Snapshot, invoke_document};
use behavior_core::read::ReadSource;
use behavior_core::semantic::module::Module;
use behavior_store::documents::{
    EntityKey, EntityVersion, EvidencePolicy, Genesis, Head, RefChange, SeedEntity,
    TransitionRecord, data_version,
};
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{
    Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store, StoreError,
};
use serde_json::{Value as Json, json};

fn root() -> PathBuf {
    common::fixtures().join("replay/022")
}

fn module() -> Module {
    behavior_core::admit(&common::read(
        &common::fixtures().join("replay/018/rows/M08-C-D/module.json"),
    ))
    .unwrap()
}

fn setup() -> (Module, Store<InMemoryBackend>) {
    let module = module();
    let genesis = genesis_for(
        &module,
        EvidencePolicy::none(),
        vec![SeedEntity {
            entity: "Culture".into(),
            value: json!({"id":"c1","measurements":7}),
        }],
    );
    let store = Store::create(InMemoryBackend::new(), &module, genesis).unwrap();
    (module, store)
}

fn authority<B: Backend>(store: &Store<B>) -> Json {
    let at = store.current().unwrap();
    let keys = store.backend().keys_at("Culture", at.position).unwrap();
    let versions: Vec<_> = keys
        .iter()
        .map(|k| store.backend().version_at(k, at.position).unwrap())
        .collect();
    json!({
        "genesis":store.backend().genesis().unwrap(),
        "head":store.backend().head().unwrap(),
        "keys":keys,"versions":versions,
        "next_record":store.backend().record(at.position+1).unwrap(),
        "incoming":store.backend().incoming_at(&EntityKey{entity:"Culture".into(),id:"c1".into()},at.position).unwrap().iter().map(|edge| edge.to_json()).collect::<Vec<_>>(),
        "used":store.backend().used_at(&EntityKey{entity:"Culture".into(),id:"c1".into()},at.position).unwrap()
    })
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
enum ReadFault {
    Head,
    Entity,
    Used,
    Record(u64),
}

/// Public Backend boundary only: direct errors and callback errors stay distinct.
struct ReadProbeBackend {
    inner: InMemoryBackend,
    fault: Cell<Option<ReadFault>>,
    hits: Cell<usize>,
    mutations: Cell<usize>,
    corrupt_link: Cell<Option<u64>>,
    corrupt_hits: Cell<usize>,
    invalid_unrelated_row: Cell<bool>,
    invalid_row_hits: Cell<usize>,
    corrupt_header: Cell<Option<u64>>,
    header_hits: Cell<usize>,
    reverse_enumeration: Cell<bool>,
    enumeration_hits: Cell<usize>,
    corrupt_optional_index: Cell<bool>,
    optional_index_hits: Cell<usize>,
    corrupt_reference_index: Cell<bool>,
    reference_index_hits: Cell<usize>,
}

impl ReadProbeBackend {
    fn new(inner: InMemoryBackend) -> Self {
        Self {
            inner,
            fault: Cell::new(None),
            hits: Cell::new(0),
            mutations: Cell::new(0),
            corrupt_link: Cell::new(None),
            corrupt_hits: Cell::new(0),
            invalid_unrelated_row: Cell::new(false),
            invalid_row_hits: Cell::new(0),
            corrupt_header: Cell::new(None),
            header_hits: Cell::new(0),
            reverse_enumeration: Cell::new(false),
            enumeration_hits: Cell::new(0),
            corrupt_optional_index: Cell::new(false),
            optional_index_hits: Cell::new(0),
            corrupt_reference_index: Cell::new(false),
            reference_index_hits: Cell::new(0),
        }
    }
    fn check(&self, point: ReadFault) -> Result<(), BackendError> {
        if self.fault.get() == Some(point) {
            self.hits.set(self.hits.get() + 1);
            Err(BackendError(format!("022 injected {point:?}")))
        } else {
            Ok(())
        }
    }
    fn arm(&self, point: ReadFault) {
        self.hits.set(0);
        self.fault.set(Some(point));
    }
}

impl Backend for ReadProbeBackend {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        self.check(ReadFault::Head)?;
        self.inner.head()
    }
    fn create(
        &mut self,
        _genesis: &Genesis,
        _head: &Head,
        _seed: &[EntityVersion],
        _refs: &[RefChange],
    ) -> Result<(), BackendError> {
        self.mutations.set(self.mutations.get() + 1);
        Err(BackendError("022 replay attempted create".into()))
    }
    fn version_at(
        &self,
        key: &EntityKey,
        position: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        self.check(ReadFault::Entity)?;
        let mut version = self.inner.version_at(key, position)?;
        if self.invalid_unrelated_row.get()
            && key.entity == "Culture"
            && key.id == "c4"
            && let Some(version) = version.as_mut()
        {
            self.invalid_row_hits.set(self.invalid_row_hits.get() + 1);
            version.value["measurements"] = json!("not an integer");
        }
        Ok(version)
    }
    fn version(
        &self,
        key: &EntityKey,
        revision: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version(key, revision)
    }
    fn record(&self, position: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.check(ReadFault::Record(position))?;
        let mut record = self.inner.record(position)?;
        if self.corrupt_link.get() == Some(position)
            && let Some(record) = record.as_mut()
        {
            self.corrupt_hits.set(self.corrupt_hits.get() + 1);
            record.previous_record = format!("sha256:{}", "a".repeat(64));
        }
        if self.corrupt_header.get() == Some(position)
            && let Some(record) = record.as_mut()
        {
            self.header_hits.set(self.header_hits.get() + 1);
            record.position = position + 1;
        }
        Ok(record)
    }
    fn removed_at(&self, key: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(key)
    }
    fn incoming_at(&self, key: &EntityKey, position: u64) -> Result<Vec<RefEdge>, BackendError> {
        if self.corrupt_reference_index.get() {
            self.reference_index_hits
                .set(self.reference_index_hits.get() + 1);
            Ok(Vec::new())
        } else {
            self.inner.incoming_at(key, position)
        }
    }
    fn keys_at(&self, entity: &str, position: u64) -> Result<Vec<EntityKey>, BackendError> {
        let mut keys = self.inner.keys_at(entity, position)?;
        if self.reverse_enumeration.get() {
            self.enumeration_hits.set(self.enumeration_hits.get() + 1);
            keys.reverse();
        }
        Ok(keys)
    }
    fn keys_by_field_at(
        &self,
        entity: &str,
        field: &str,
        value: &Json,
        position: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        if self.corrupt_optional_index.get() {
            self.optional_index_hits
                .set(self.optional_index_hits.get() + 1);
            Ok(Some(vec![EntityKey {
                entity: entity.into(),
                id: "ghost".into(),
            }]))
        } else {
            self.inner.keys_by_field_at(entity, field, value, position)
        }
    }
    fn used_at(&self, key: &EntityKey, position: u64) -> Result<bool, BackendError> {
        self.check(ReadFault::Used)?;
        self.inner.used_at(key, position)
    }
    fn commit(
        &mut self,
        _expected: &str,
        _versions: &[EntityVersion],
        _removals: &[EntityKey],
        _refs: &[RefChange],
        _record: &TransitionRecord,
        _head: &Head,
    ) -> Result<CasOutcome, BackendError> {
        self.mutations.set(self.mutations.get() + 1);
        Err(BackendError("022 replay attempted commit".into()))
    }
}

fn action_module() -> Module {
    let mut wire: Json = serde_json::from_str(&common::read(
        &common::fixtures().join("replay/018/rows/M08-C-D/module.json"),
    ))
    .unwrap();
    let loc = json!({"file":"022-read-control.beh","line":1});
    wire["actions"] = json!([
        {"name":"replace_measurement","loc":loc,
         "params":[{"name":"c","role":"state","type":{"t":"entity","name":"Culture"}},
            {"name":"n","role":"input","type":{"t":"int"}}],
         "preconditions":[],"postconditions":[],"command_effects":[],
         "effects":[{"target":{"param":"c","field":"measurements"},
            "value":{"op":"param","param":"n","loc":loc},"loc":loc}]},
        {"name":"create_culture","loc":loc,
         "params":[{"name":"id","role":"input","type":{"t":"id","entity":"Culture"}}],
         "preconditions":[],"postconditions":[],"command_effects":[],
         "effects":[{"create":"Culture","id":{"op":"param","param":"id","loc":loc},
            "fields":{"measurements":{"op":"lit","type":{"t":"int"},"value":7,"loc":loc}},"loc":loc}]}
    ]);
    behavior_core::admit(&wire.to_string()).unwrap()
}

fn probe_store(advanced: bool) -> (Module, Store<ReadProbeBackend>, String) {
    let module = action_module();
    let policy = behavior_verify::governance::trusted::EvidencePolicyV2::from_json(
        r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#,
    )
    .unwrap();
    let mut store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(
            &module,
            policy,
            vec![SeedEntity {
                entity: "Culture".into(),
                value: json!({"id":"c1","measurements":7}),
            }],
        )
        .unwrap(),
    )
    .unwrap();
    if advanced {
        let evaluated = store
            .evaluate(
                &module,
                "replace_measurement",
                &BTreeMap::from([("c".into(), "c1".into())]),
                &json!({"n":8}),
                &json!({}),
                common::T0,
                None,
            )
            .unwrap();
        let bundle = evaluated.bundle.unwrap();
        store
            .commit(&module, &bundle.evaluated_state, &bundle)
            .unwrap();
        assert_eq!(store.current().unwrap().position, 1);
    }
    let record = store
        .read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::from([("c".into(), "c1".into())]),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record
        .to_json_string();
    let store = Store::open(ReadProbeBackend::new(store.into_backend())).unwrap();
    (module, store, record)
}

fn read_reseal(value: &mut Json) {
    value["record_id"] = json!(behavior_core::read::record_id(value).unwrap());
}

#[test]
fn store_read_rejects_independent_foreign_state_and_position_claims() {
    let (module, store, record) = probe_store(false);
    let before = authority(&store);
    let original: Json = serde_json::from_str(&record).unwrap();
    let dv = original["data_version"].as_str().unwrap();
    for (id, coordinate) in [
        (
            "foreign-store",
            dv.replace(
                &store.store_id().unwrap(),
                &format!("sha256:{}", "b".repeat(64)),
            ),
        ),
        (
            "wrong-state",
            dv.replace(
                &store.current().unwrap().state,
                &format!("sha256:{}", "c".repeat(64)),
            ),
        ),
        ("future-position", dv.replace("position:0", "position:9")),
        (
            "missing-position",
            dv.split(";position:").next().unwrap().to_owned(),
        ),
    ] {
        let mut value = original.clone();
        value["data_version"] = json!(coordinate);
        read_reseal(&mut value);
        let standalone = behavior_core::read::replay_read(&module, &value.to_string());
        assert!(
            standalone.matches,
            "standalone coordinate premise failed: {:?}",
            standalone.diff
        );
        let result = store.replay_read(&module, &value.to_string()).unwrap();
        assert!(!result.matches, "independent coordinate accepted: {id}");
        assert!(result.diff.unwrap().contains("data_version"));
        println!("COVERAGE022 P022-ANCHOR-{id} store_read non_match");
    }
    assert_eq!(authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
}

#[test]
fn store_read_rejects_self_consistent_substituted_historical_values() {
    let (module, store, record) = probe_store(false);
    let before = authority(&store);
    let mut value: Json = serde_json::from_str(&record).unwrap();
    value["state"]["c"]["measurements"] = json!(99);
    value["value"] = json!(99);
    value["facts"]["universe"][0]["members"][0]["measurements"] = json!(99);
    read_reseal(&mut value);
    let standalone = behavior_core::read::replay_read(&module, &value.to_string());
    assert!(
        standalone.matches,
        "standalone value premise failed: {:?}",
        standalone.diff
    );
    let result = store.replay_read(&module, &value.to_string()).unwrap();
    assert!(
        !result.matches,
        "standalone consistency is not actual historical state"
    );
    assert_eq!(authority(&store), before);
    println!("COVERAGE022 P022-FALSE-SELF-CONSISTENCY-false-value store_read non_match");
}

#[test]
fn store_read_preserves_existing_complete_comparison_first_difference() {
    let (module, store, record) = probe_store(false);
    let mut value: Json = serde_json::from_str(&record).unwrap();
    value["value"] = json!(99);
    read_reseal(&mut value);
    let expected = behavior_core::record::compare(&value, &serde_json::from_str(&record).unwrap());
    let actual = store.replay_read(&module, &value.to_string()).unwrap();
    assert_eq!(actual.to_json_string(), expected.to_json_string());
    assert!(
        actual.diff.unwrap().starts_with("record_id"),
        "existing comparison order changed"
    );
}

#[test]
fn store_read_performed_backend_faults_remain_operational_errors() {
    for (advanced, point, case) in [
        (false, ReadFault::Head, "head"),
        (false, ReadFault::Entity, "entity"),
        (true, ReadFault::Record(1), "history"),
    ] {
        let (module, store, record) = probe_store(advanced);
        let before = authority(&store);
        store.backend().arm(point);
        let result = store.replay_read(&module, &record);
        let hits = store.backend().hits.get();
        store.backend().fault.set(None);
        assert!(
            hits > 0,
            "required operation was not actually performed: {point:?}"
        );
        assert!(
            matches!(result,Err(StoreError::Backend(ref message)) if message==&format!("022 injected {point:?}")),
            "direct backend error changed category: {result:?}"
        );
        assert_eq!(authority(&store), before);
        assert_eq!(store.backend().mutations.get(), 0);
        println!("COVERAGE022 C022-ERROR-{case} store_read operational_error");
    }
}

#[test]
fn store_read_schema_mismatch_precedes_later_history_fault() {
    let (module, store, record) = probe_store(true);
    let mut wire = behavior_core::serialize::to_wire_value(&module);
    // This alternate module only produces a transport-refused read. Its unused
    // create action would need the added field and must not invalidate admission.
    wire["actions"] = json!([]);
    wire["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({
        "name":"tag","type":{"t":"int"},"loc":{"file":"022-read-control.beh","line":1}}));
    let other = behavior_core::admit(&wire.to_string()).unwrap();
    let dv = data_version(&store.store_id().unwrap(), &store.current().unwrap());
    let attempted = json!({"data_version":dv,"state":{"c":{"id":"c1","measurements":8}},"input":[],"context":{}});
    let refused = behavior_core::read::evaluate_read(
        &other,
        &ReadSource::Declared("inspect".into()),
        &attempted.to_string(),
    )
    .record;
    assert!(behavior_core::read::replay_read(&other, &refused.to_json_string()).matches);
    let before = authority(&store);
    store.backend().arm(ReadFault::Record(1));
    let mismatch = store
        .replay_read(&other, &refused.to_json_string())
        .unwrap();
    assert!(!mismatch.matches);
    assert!(mismatch.diff.unwrap().contains("SCHEMA_MISMATCH"));
    assert_eq!(
        store.backend().hits.get(),
        0,
        "late history fault displaced schema prerequisite"
    );
    store.backend().fault.set(None);
    assert_eq!(authority(&store), before);
    // Matching schema proves that the probe is live on the guarded later read.
    store.backend().arm(ReadFault::Record(1));
    let fault = store.replay_read(&module, &record);
    assert!(store.backend().hits.get() > 0);
    assert!(matches!(fault, Err(StoreError::Backend(_))));
    store.backend().fault.set(None);
    assert_eq!(authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!("COVERAGE022 C022-ERROR-schema-before-history-fault store_read preserved_contract");
}

#[test]
fn store_read_transport_refusal_retains_actual_snapshot_prevalidation() {
    let (module, ordinary) = setup();
    let store = Store::open(ReadProbeBackend::new(ordinary.into_backend())).unwrap();
    let before = authority(&store);
    for id in ["R022-01", "R022-02"] {
        store.backend().arm(ReadFault::Entity);
        let result = store.replay_read(&module, &fixture(id));
        assert!(
            store.backend().hits.get() > 0,
            "raw refusal waived Store prevalidation"
        );
        assert!(matches!(result, Err(StoreError::Backend(_))));
        store.backend().fault.set(None);
        assert_eq!(authority(&store), before);
    }
    assert_eq!(store.backend().mutations.get(), 0);
}

#[test]
fn store_read_rejects_wrong_canonical_history_linkage() {
    let (module, store, record) = probe_store(true);
    let before = authority(&store);
    assert!(behavior_core::read::replay_read(&module, &record).matches);
    store.backend().corrupt_link.set(Some(1));
    let result = store.replay_read(&module, &record).unwrap();
    assert!(
        store.backend().corrupt_hits.get() > 0,
        "canonical event corruption probe was unused"
    );
    store.backend().corrupt_link.set(None);
    assert_eq!(authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    assert!(
        !result.matches,
        "record identity alone did not establish canonical parent linkage"
    );
    println!("COVERAGE022 P022-ANCHOR-wrong-linkage store_read non_match");
}

#[test]
fn identity_fact_callback_failure_retains_existing_evaluator_facterror_contract() {
    // never_used is excluded from reads: this is a separate auxiliary action
    // control, not an invented read compatibility cell.
    let (module, store, _) = probe_store(false);
    let requested = RequestedInvocation::decode(
        &json!({"format":"behavior.invocation.v1",
        "capability":"create_culture","bindings":{},"input":{"id":"fresh"},"context":{}})
        .to_string(),
    )
    .unwrap()
    .0
    .unwrap();
    let before = authority(&store);
    let good = store
        .invoke(&module, &requested, common::T0, None, None)
        .unwrap();
    assert_eq!(good.record.inner_record().unwrap()["result"], "ALLOW");
    assert!(good.bundle.is_some());
    assert!(
        store
            .replay_invocation(&module, &good.record.to_json_string())
            .unwrap()
            .matches
    );
    store.backend().arm(ReadFault::Used);
    let refused = store
        .invoke(&module, &requested, common::T0, None, None)
        .unwrap();
    assert!(
        store.backend().hits.get() > 0,
        "used_at callback was not performed"
    );
    store.backend().fault.set(None);
    let inner = refused.record.inner_record().unwrap();
    assert_eq!(inner["result"], "ERROR");
    assert_eq!(inner["reasons"][0]["code"], "UNKNOWN_FACT");
    assert!(refused.bundle.is_none());
    store.backend().arm(ReadFault::Used);
    let replayed = store
        .replay_invocation(&module, &good.record.to_json_string())
        .unwrap();
    assert!(
        store.backend().hits.get() > 0,
        "replay used_at callback was not performed"
    );
    assert!(
        !replayed.matches,
        "ALLOW cannot match the actual ERROR/UNKNOWN_FACT callback result"
    );
    assert!(replayed.diff.as_ref().is_some_and(|diff| !diff.is_empty()));
    store.backend().fault.set(None);
    assert_eq!(authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!(
        "COVERAGE022 C022-ERROR-evaluator-used-facterror store_invocation Ok_non_match ERROR/UNKNOWN_FACT paired_fresh_callback"
    );
}

fn coherent_snapshot(store: &Store<InMemoryBackend>) -> Json {
    let at = store.current().unwrap();
    let value = store
        .load(
            &EntityKey {
                entity: "Culture".into(),
                id: "c1".into(),
            },
            &at,
        )
        .unwrap()
        .value;
    json!({"format":"behavior.snapshot.v1",
        "data_version":data_version(&store.store_id().unwrap(),&at),
        "entities":[{"entity":"Culture","value":value}],
        "facts":{"universe":[{"entity":"Culture","members":[value]}]}})
}

fn invocation(id: &str) -> Json {
    json!({"format":"behavior.invocation.v1","capability":"inspect",
        "bindings":{"c":{"entity":"Culture","id":id}},"input":{},"context":{}})
}

fn intent(id: &str) -> Json {
    let mut raw = invocation(id);
    raw["format"] = json!("behavior.capability_intent.v1");
    raw.as_object_mut().unwrap().remove("context");
    raw
}

fn attempt_read(input: Json, context: Json, id: &str) -> Json {
    json!({"boundary":"store_read","read":"inspect","targets":{"c":id},
        "input":input,"context":context})
}

fn attempt_documents(document: Json, snapshot: Json, context: Option<Json>) -> Json {
    json!({"boundary":"invoke_document","document":document,
        "snapshot":snapshot,"host_context":context})
}

fn produce(module: &Module, store: &Store<InMemoryBackend>, attempt: &Json) -> String {
    match attempt["boundary"].as_str().unwrap() {
        "store_read" => {
            let bindings = serde_json::from_value(attempt["targets"].clone()).unwrap();
            store
                .read(
                    module,
                    &ReadSource::Declared(attempt["read"].as_str().unwrap().into()),
                    &bindings,
                    &attempt["input"],
                    &attempt["context"],
                    None,
                )
                .unwrap()
                .record
                .to_json_string()
        }
        "invoke_document" => invoke_document(
            module,
            &attempt["document"].to_string(),
            &attempt["snapshot"].to_string(),
            attempt.get("host_context").filter(|v| !v.is_null()),
        )
        .unwrap()
        .to_json_string(),
        "store_intent" => store
            .invoke_intent(
                module,
                &attempt["document"].to_string(),
                &attempt["context"],
                common::T0,
                None,
            )
            .unwrap()
            .record
            .to_json_string(),
        "store_invocation" => {
            let requested = RequestedInvocation::decode(&attempt["document"].to_string())
                .unwrap()
                .0
                .unwrap();
            let result = store
                .invoke(module, &requested, common::T0, None, None)
                .unwrap();
            assert!(
                result.bundle.is_none(),
                "read invocation must not construct a bundle"
            );
            result.record.to_json_string()
        }
        other => panic!("unknown capture boundary {other}"),
    }
}

fn attempts(store: &Store<InMemoryBackend>) -> BTreeMap<String, Json> {
    let snapshot = coherent_snapshot(store);
    let mut out = BTreeMap::new();
    out.insert("R022-01".into(), attempt_read(json!([]), json!({}), "c1"));
    out.insert("R022-02".into(), attempt_read(json!({}), json!([]), "c1"));
    let mut raw = invocation("c1");
    raw["input"] = json!([]);
    out.insert(
        "R022-03".into(),
        attempt_documents(raw, snapshot.clone(), None),
    );
    let mut raw = invocation("c1");
    raw["bindings"]["c"] = json!("c1");
    out.insert(
        "R022-04".into(),
        attempt_documents(raw, snapshot.clone(), None),
    );
    for shape in ["malformed", "contradictory"] {
        for origin in ["host", "intent"] {
            let mut rejected = snapshot.clone();
            if shape == "malformed" {
                rejected["entities"] = json!({});
            } else {
                rejected["facts"]["existence"] =
                    json!([{"entity":"Culture","id":"c1","exists":false}]);
            }
            let (document, context) = if origin == "intent" {
                (intent("c1"), Some(json!({})))
            } else {
                (invocation("c1"), None)
            };
            out.insert(
                format!("P022-SNAPSHOT-REJECTED-{shape}-{origin}"),
                attempt_documents(document, rejected, context),
            );
        }
    }
    for (name, id, exists, empty_universe) in [
        ("truthful", "c1", true, false),
        ("false-positive", "c9", true, false),
        ("false-absence", "c1", false, false),
        ("false-empty-universe", "c1", false, true),
    ] {
        let mut sparse = json!({"format":"behavior.snapshot.v1","data_version":snapshot["data_version"],
            "entities":[],"facts":{}});
        if empty_universe {
            sparse["facts"]["universe"] = json!([{"entity":"Culture","members":[]}]);
        } else {
            sparse["facts"]["existence"] = json!([{"entity":"Culture","id":id,"exists":exists}]);
        }
        assert!(
            Snapshot::decode(&module(), &sparse.to_string())
                .unwrap()
                .0
                .is_some(),
            "sparse control must establish an accepted Snapshot: {name}"
        );
        out.insert(
            format!("P022-SPARSE-{name}"),
            attempt_documents(invocation(id), sparse, None),
        );
    }
    out.insert(
        "C022-ordinary-read".into(),
        attempt_read(json!({}), json!({}), "c1"),
    );
    out.insert(
        "C022-semantic-read".into(),
        attempt_read(json!({"unexpected":1}), json!({}), "c1"),
    );
    out.insert(
        "C022-binding-read".into(),
        attempt_read(json!({}), json!({}), "c9"),
    );
    out.insert(
        "C022-host-success".into(),
        attempt_documents(invocation("c1"), snapshot, None),
    );
    let mut raw = intent("c1");
    raw["input"] = json!([]);
    out.insert(
        "C022-intent-decode".into(),
        json!({"boundary":"store_intent","document":raw,"context":{}}),
    );
    out.insert(
        "C022-unknown-binding".into(),
        json!({"boundary":"store_invocation","document":invocation("c9")}),
    );
    let mut raw = invocation("c1");
    raw["bindings"]["c"]["entity"] = json!("Other");
    out.insert(
        "C022-wrong-type".into(),
        json!({"boundary":"store_invocation","document":raw}),
    );
    out
}

fn fixture(id: &str) -> String {
    common::read(&root().join(format!("records/{id}.json")))
}

fn assert_original(module: &Module, store: &Store<InMemoryBackend>, id: &str) -> Json {
    let attempt = common::json(&root().join(format!("stores/attempts/{id}.json")));
    let original = fixture(id);
    assert_eq!(
        produce(module, store, &attempt) + "\n",
        original,
        "original record bytes changed: {id}"
    );
    let value: Json = serde_json::from_str(&original).unwrap();
    assert_eq!(
        value["data_version"],
        data_version(&store.store_id().unwrap(), &store.current().unwrap())
    );
    let replay = if value["format"] == "behavior.invocation_record.v1" {
        behavior_core::invocation::replay_invocation(module, &original)
    } else {
        behavior_core::read::replay_read(module, &original)
    };
    assert!(
        replay.matches,
        "standalone control did not reproduce {id}: {:?}",
        replay.diff
    );
    value
}

fn legal_controls(module: &Module, store: &Store<InMemoryBackend>) {
    for id in [
        "C022-ordinary-read",
        "C022-semantic-read",
        "C022-binding-read",
        "C022-host-success",
        "C022-intent-decode",
        "C022-unknown-binding",
        "C022-wrong-type",
    ] {
        let value = assert_original(module, store, id);
        let backed = if value["format"] == "behavior.invocation_record.v1" {
            store.replay_invocation(module, &fixture(id)).unwrap()
        } else {
            store.replay_read(module, &fixture(id)).unwrap()
        };
        assert!(
            backed.matches,
            "legal Store control failed {id}: {:?}",
            backed.diff
        );
    }
}

fn write_original(path: PathBuf, text: &str) {
    if path.exists() {
        assert_eq!(
            common::read(&path),
            text,
            "refusing to overwrite captured bytes"
        );
    } else {
        std::fs::write(path, text).unwrap();
    }
}

/// Explicit fixture capture mode never runs under ordinary gates. Without that
/// environment variable this test verifies custody through the original APIs.
#[test]
fn baseline_capture_is_genuine_and_reproducible() {
    let (module, store) = setup();
    let before = authority(&store);
    let all = attempts(&store);
    let capture = std::env::var("CAPTURE_REPLAY022_FIXTURES").as_deref() == Ok("1");
    if capture {
        std::fs::create_dir_all(root().join("records")).unwrap();
        std::fs::create_dir_all(root().join("stores/attempts")).unwrap();
        let setup = json!({"module":"tests/fixtures/replay/018/rows/M08-C-D/module.json",
            "evidence_policy":"none","seed":[{"entity":"Culture","value":{"id":"c1","measurements":7}}],
            "data_version":data_version(&store.store_id().unwrap(),&store.current().unwrap()),
            "source_revision":"f0d2a5102adcb0b491cac166f023fd87bb03e7a7"});
        write_original(
            root().join("stores/culture.json"),
            &(serde_json::to_string_pretty(&setup).unwrap() + "\n"),
        );
        write_original(
            root().join("stores/snapshot.json"),
            &(serde_json::to_string_pretty(&coherent_snapshot(&store)).unwrap() + "\n"),
        );
        for (id, attempt) in &all {
            write_original(
                root().join(format!("stores/attempts/{id}.json")),
                &(serde_json::to_string_pretty(attempt).unwrap() + "\n"),
            );
            write_original(
                root().join(format!("records/{id}.json")),
                &(produce(&module, &store, attempt) + "\n"),
            );
            println!("CAPTURE022 {id}");
        }
    }
    let matrix = common::json(&root().join("matrix.json"));
    let expected: Vec<_> = matrix["runner_case_ids"]
        .as_array()
        .unwrap()
        .iter()
        .map(|v| v.as_str().unwrap().to_owned())
        .collect();
    assert_eq!(all.keys().cloned().collect::<Vec<_>>(), {
        let mut expected = expected;
        expected.sort();
        expected
    });
    for id in all.keys() {
        assert_original(&module, &store, id);
    }
    legal_controls(&module, &store);
    assert_eq!(
        authority(&store),
        before,
        "capture/reproduction changed canonical authority"
    );
}

#[test]
fn ordinary_read_invocation_and_binding_controls_match() {
    let (module, store) = setup();
    let before = authority(&store);
    legal_controls(&module, &store);
    assert_eq!(authority(&store), before);
}

fn require_read_match(id: &str, section: &str) {
    let (module, store) = setup();
    let before = authority(&store);
    legal_controls(&module, &store);
    let value = assert_original(&module, &store, id);
    assert_eq!(value["result"], "INVALID_INPUT");
    assert!(value["refused_request"].is_string());
    assert_eq!(value[section], json!({}));
    let raw: Json = serde_json::from_str(value["refused_request"].as_str().unwrap()).unwrap();
    assert_eq!(raw[section], json!([]));
    let result = store.replay_read(&module, &fixture(id)).unwrap();
    assert_eq!(
        authority(&store),
        before,
        "replay changed canonical authority"
    );
    assert!(
        result.matches,
        "{id}: corrected original-request Store replay must match: {:?}",
        result.diff
    );
}

#[test]
fn store_read_input_array_refusal_replays_original_request() {
    require_read_match("R022-01", "input");
}

#[test]
fn store_read_context_array_refusal_replays_original_request() {
    require_read_match("R022-02", "context");
}

fn require_invocation_match(id: &str) {
    let (module, store) = setup();
    let before = authority(&store);
    legal_controls(&module, &store);
    let value = assert_original(&module, &store, id);
    assert_eq!(value["outcome"]["kind"], "pre_evaluation_refusal");
    assert_eq!(
        value["outcome"]["decode_evidence"]["source_kind"],
        "invocation"
    );
    assert!(value["outcome"].get("record").is_none());
    let result = store.replay_invocation(&module, &fixture(id)).unwrap();
    assert_eq!(
        authority(&store),
        before,
        "replay changed canonical authority"
    );
    assert!(
        result.matches,
        "{id}: original invocation boundary must match: {:?}",
        result.diff
    );
}

#[test]
fn host_invocation_input_array_refusal_keeps_invocation_origin() {
    require_invocation_match("R022-03");
}

#[test]
fn host_invocation_binding_shape_refusal_keeps_invocation_origin() {
    require_invocation_match("R022-04");
}

fn require_rejected_snapshot_match(shape: &str) {
    let (module, store) = setup();
    let before = authority(&store);
    legal_controls(&module, &store);
    for origin in ["host", "intent"] {
        let id = format!("P022-SNAPSHOT-REJECTED-{shape}-{origin}");
        let attempt = common::json(&root().join(format!("stores/attempts/{id}.json")));
        assert!(
            Snapshot::decode(&module, &attempt["snapshot"].to_string())
                .unwrap()
                .0
                .is_none()
        );
        let value = assert_original(&module, &store, &id);
        assert_eq!(
            value["outcome"]["decode_evidence"]["source_kind"],
            "documents"
        );
        let result = store.replay_invocation(&module, &fixture(&id)).unwrap();
        assert_eq!(authority(&store), before);
        assert!(
            result.matches,
            "{id}: original rejected Snapshot must reproduce under independent Store anchor: {:?}",
            result.diff
        );
    }
}

#[test]
fn malformed_supplied_snapshot_refusal_matches_with_independent_anchor() {
    require_rejected_snapshot_match("malformed");
}

#[test]
fn contradictory_supplied_snapshot_refusal_matches_with_independent_anchor() {
    require_rejected_snapshot_match("contradictory");
}

#[test]
fn accepted_sparse_snapshot_preserves_missing_value_and_truthful_existence() {
    let (module, store) = setup();
    let before = authority(&store);
    legal_controls(&module, &store);
    let value = assert_original(&module, &store, "P022-SPARSE-truthful");
    assert_eq!(
        value["outcome"]["decode_evidence"]["source_kind"],
        "documents"
    );
    assert_eq!(
        value["outcome"]["problems"][0]["code"],
        "INCOMPLETE_SNAPSHOT"
    );
    let result = store
        .replay_invocation(&module, &fixture("P022-SPARSE-truthful"))
        .unwrap();
    assert_eq!(authority(&store), before);
    assert!(
        result.matches,
        "truthful sparse availability must not be filled from Store: {:?}",
        result.diff
    );
}

#[test]
fn accepted_sparse_snapshot_false_existence_and_absence_are_not_historical_truth() {
    let (module, store) = setup();
    let before = authority(&store);
    for id in [
        "P022-SPARSE-false-positive",
        "P022-SPARSE-false-absence",
        "P022-SPARSE-false-empty-universe",
    ] {
        assert_original(&module, &store, id);
        let result = store.replay_invocation(&module, &fixture(id)).unwrap();
        assert!(!result.matches, "false historical claim matched: {id}");
    }
    assert_eq!(authority(&store), before);
}

// US2 retained accepted-Snapshot claims. The omitted second Culture value
// preserves the original INCOMPLETE_SNAPSHOT path while independent claims vary.
fn claim_module() -> Module {
    let mut wire = behavior_core::serialize::to_wire_value(&action_module());
    wire["nominals"] = json!([{"name":"Money","underlying":{"t":"decimal"},"scale":2,
        "ops":["add","order","ratio","scale"],"loc":{"file":"022-claims.beh","line":1}}]);
    wire["entities"].as_array_mut().unwrap().push(json!({"name":"Tag",
        "loc":{"file":"022-claims.beh","line":1},"fields":[
          {"name":"culture","type":{"t":"ref","entity":"Culture"},"loc":{"file":"022-claims.beh","line":1}},
          {"name":"score","type":{"t":"int"},"loc":{"file":"022-claims.beh","line":1}},
          {"name":"amount","type":{"t":"nominal","name":"Money"},"loc":{"file":"022-claims.beh","line":1}}]}));
    let loc = json!({"file":"022-claims.beh","line":1});
    let query = |op: &str| {
        json!({"op":"where","param":"t","loc":loc,
        "args":[{"op":"select","entity":"Tag","loc":loc}],
        "body":{"op":op,"loc":loc,"args":[{"op":"field","param":"t","field":"score","loc":loc},
          {"op":"param","param":"threshold","loc":loc}]}})
    };
    let count = |op: &str| json!({"op":"count","loc":loc,"args":[query(op)]});
    wire["actions"].as_array_mut().unwrap().extend([
        json!({"name":"retire_culture","loc":loc,"params":[
          {"name":"c","role":"state","type":{"t":"entity","name":"Culture"}}],
          "preconditions":[],"postconditions":[],"effects":[{"remove":"c","loc":loc}],"command_effects":[]}),
        json!({"name":"registered_query","loc":loc,"params":[
          {"name":"c","role":"state","type":{"t":"entity","name":"Culture"}},
          {"name":"threshold","role":"input","type":{"t":"int"}}],
          "preconditions":[{"expr":{"op":"ge","loc":loc,"args":[count("ge"),
            {"op":"lit","type":{"t":"int"},"value":0,"loc":loc}]},"loc":loc}],
          "postconditions":[],"effects":[{"target":{"param":"c","field":"measurements"},
            "value":{"op":"field","param":"c","field":"measurements","loc":loc},"loc":loc}],
          "command_effects":[]})
    ]);
    wire["reads"].as_array_mut().unwrap().extend([
        json!({"name":"inspect_pair","loc":loc,"params":[
          {"name":"first","role":"state","type":{"t":"entity","name":"Culture"}},
          {"name":"second","role":"state","type":{"t":"entity","name":"Culture"}}],
          "body":{"value":{"op":"field","param":"first","field":"measurements","loc":loc}}}),
        json!({"name":"count_tags","loc":loc,"params":[
          {"name":"threshold","role":"input","type":{"t":"int"}}],"body":{"value":count("ge")}}),
        // This distinct definition is absent from the original Snapshot query
        // registry; it occurs only in an unrelated declared read.
        json!({"name":"count_tags_unregistered","loc":loc,"params":[
          {"name":"threshold","role":"input","type":{"t":"int"}}],"body":{"value":count("gt")}}),
    ]);
    behavior_core::admit(&wire.to_string()).unwrap()
}

fn claim_store() -> (Module, Store<ReadProbeBackend>) {
    let module = claim_module();
    let policy=behavior_verify::governance::trusted::EvidencePolicyV2::from_json(
        r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let mut seed: Vec<_> = [("c1", 7), ("c2", 8), ("c3", 9), ("c4", 11)]
        .into_iter()
        .map(|(id, n)| SeedEntity {
            entity: "Culture".into(),
            value: json!({"id":id,"measurements":n}),
        })
        .collect();
    seed.push(SeedEntity {
        entity: "Tag".into(),
        value: tag_value("1.00"),
    });
    let mut store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(&module, policy, seed).unwrap(),
    )
    .unwrap();
    let retired = store
        .evaluate(
            &module,
            "retire_culture",
            &BTreeMap::from([("c".into(), "c3".into())]),
            &json!({}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    store
        .commit(&module, &retired.evaluated_state, &retired)
        .unwrap();
    let store = Store::open(ReadProbeBackend::new(store.into_backend())).unwrap();
    let retired = EntityKey {
        entity: "Culture".into(),
        id: "c3".into(),
    };
    assert!(store.backend().used_at(&retired, 1).unwrap());
    assert_eq!(store.backend().removed_at(&retired).unwrap(), Some(1));
    (module, store)
}

fn tag_value(amount: &str) -> Json {
    json!({"id":"t1","culture":"c1","score":5,"amount":amount})
}

fn sparse_claim_snapshot(store: &Store<ReadProbeBackend>) -> Json {
    let at = store.current().unwrap();
    let value = store
        .load(
            &EntityKey {
                entity: "Culture".into(),
                id: "c1".into(),
            },
            &at,
        )
        .unwrap()
        .value;
    json!({"format":"behavior.snapshot.v1","data_version":data_version(&store.store_id().unwrap(),&at),
        "entities":[{"entity":"Culture","value":value}],
        "facts":{"existence":[{"entity":"Culture","id":"c2","exists":true}]}})
}

fn pair_request(second: &str) -> Json {
    json!({"format":"behavior.invocation.v1","capability":"inspect_pair",
        "bindings":{"first":{"entity":"Culture","id":"c1"},"second":{"entity":"Culture","id":second}},
        "input":{},"context":{}})
}

fn real_query_fact(module: &Module, store: &Store<ReadProbeBackend>, name: &str) -> Json {
    let result = store
        .read(
            module,
            &ReadSource::Declared(name.into()),
            &BTreeMap::new(),
            &json!({"threshold":0}),
            &json!({}),
            None,
        )
        .unwrap();
    assert_eq!(result.record.result(), "VALUE");
    assert_eq!(result.record.as_json()["value"], 1);
    result.record.as_json()["facts"]["queries"]
        .as_array()
        .unwrap()
        .iter()
        .find(|q| !q["captures"].as_array().unwrap().is_empty())
        .unwrap()
        .clone()
}

fn claim_snapshot(
    module: &Module,
    store: &Store<ReadProbeBackend>,
    kind: &str,
    truthful: bool,
) -> Json {
    let mut snapshot = sparse_claim_snapshot(store);
    match kind {
        "values" => {
            if !truthful {
                snapshot["entities"][0]["value"]["measurements"] = json!(99);
            }
        }
        "existence" => snapshot["facts"]["existence"]
            .as_array_mut()
            .unwrap()
            .push(json!({"entity":"Culture","id":"c4","exists":truthful})),
        "used" => {
            snapshot["facts"]["existence"]
                .as_array_mut()
                .unwrap()
                .push(json!({"entity":"Culture","id":"c3","exists":false}));
            snapshot["facts"]["identities"] =
                json!([{"entity":"Culture","id":"c3","used":truthful}]);
        }
        "fields" => {
            snapshot["facts"]["fields"] = json!([{"entity":"Tag","id":"t1","field":"score","value":if truthful {5} else {99}}])
        }
        "universe" => {
            snapshot["facts"]["universe"] = json!([{"entity":"Tag","members":if truthful {json!([tag_value("1.00")])} else {json!([])}}])
        }
        "references" => {
            snapshot["facts"]["references"] = json!([{"entity":"Culture","id":"c1","incoming":if truthful {
            json!([{"entity":"Tag","id":"t1","field":"culture"}])} else {json!([])}}])
        }
        "queries" => {
            let mut query = real_query_fact(module, store, "count_tags");
            if !truthful {
                query["members"] = json!([]);
            }
            snapshot["facts"]["queries"] = json!([query]);
        }
        other => panic!("unsupported claim kind {other}"),
    }
    snapshot
}

fn accepted_claim_record(module: &Module, snapshot: &Json) -> String {
    let (decoded, errors) = Snapshot::decode(module, &snapshot.to_string()).unwrap();
    assert!(
        decoded.is_some() && errors.is_empty(),
        "claim must be established by accepted Snapshot: {:?}",
        errors
            .iter()
            .map(|p| (&p.code, &p.path, &p.message))
            .collect::<Vec<_>>()
    );
    let record = invoke_document(
        module,
        &pair_request("c2").to_string(),
        &snapshot.to_string(),
        None,
    )
    .unwrap();
    assert_eq!(record.outcome_kind(), "pre_evaluation_refusal");
    assert_eq!(
        record.as_json()["outcome"]["decode_evidence"]["source_kind"],
        "documents"
    );
    assert!(
        record.as_json()["outcome"]["problems"]
            .as_array()
            .unwrap()
            .iter()
            .any(|p| p["code"] == "INCOMPLETE_SNAPSHOT")
    );
    assert!(record.inner_record().is_none());
    let replay = behavior_core::invocation::replay_invocation(module, &record.to_json_string());
    assert!(
        replay.matches,
        "original accepted archive must reproduce: {:?}",
        replay.diff
    );
    record.to_json_string()
}

fn require_claim(kind: &str, truthful: bool) {
    let (module, store) = claim_store();
    let before = authority(&store);
    let snapshot = claim_snapshot(&module, &store, kind, truthful);
    let record = accepted_claim_record(&module, &snapshot);
    let result = store.replay_invocation(&module, &record).unwrap();
    assert_eq!(authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    if truthful {
        assert!(
            result.matches,
            "truthful {kind} claim and sparse availability must match: {:?}",
            result.diff
        );
    } else {
        assert!(!result.matches, "false {kind} claim matched");
        let diff = result.diff.unwrap();
        let identifies = if kind == "values" {
            diff.contains("entities") || diff.contains("values")
        } else if kind == "used" {
            diff.contains("identities") || diff.contains("used")
        } else {
            diff.contains(kind)
        };
        assert!(
            identifies,
            "historical {kind} claim must be checked, not merely rejected at a different origin: {diff}"
        );
    }
    println!(
        "COVERAGE022 P022-CLAIMS-{kind}-{} store_invocation {}",
        if truthful { "truthful" } else { "substituted" },
        if truthful {
            "match"
        } else {
            "historical_claim_non_match"
        }
    );
}

#[test]
fn accepted_snapshot_claim_setup_preserves_truthful_missing_availability() {
    let (module, store) = claim_store();
    let requested = RequestedInvocation::decode(&pair_request("c2").to_string())
        .unwrap()
        .0
        .unwrap();
    let ordinary = store
        .invoke(&module, &requested, common::T0, None, None)
        .unwrap();
    assert_eq!(ordinary.record.inner_record().unwrap()["result"], "VALUE");
    assert!(
        store
            .replay_invocation(&module, &ordinary.record.to_json_string())
            .unwrap()
            .matches
    );
    accepted_claim_record(&module, &sparse_claim_snapshot(&store));
    real_query_fact(&module, &store, "count_tags");
}

#[test]
fn accepted_snapshot_values_match_history() {
    require_claim("values", true);
}
#[test]
fn substituted_snapshot_values_report_historical_claim() {
    require_claim("values", false);
}
#[test]
fn accepted_snapshot_existence_matches_history() {
    require_claim("existence", true);
}
#[test]
fn substituted_snapshot_existence_reports_historical_claim() {
    require_claim("existence", false);
}
#[test]
fn accepted_snapshot_used_matches_retired_identity_history() {
    require_claim("used", true);
}
#[test]
fn substituted_snapshot_used_reports_historical_claim() {
    require_claim("used", false);
}
#[test]
fn accepted_snapshot_fields_match_history() {
    require_claim("fields", true);
}
#[test]
fn substituted_snapshot_fields_report_historical_claim() {
    require_claim("fields", false);
}
#[test]
fn accepted_snapshot_universe_matches_history() {
    require_claim("universe", true);
}
#[test]
fn substituted_snapshot_universe_reports_historical_claim() {
    require_claim("universe", false);
}
#[test]
fn accepted_snapshot_references_match_history() {
    require_claim("references", true);
}
#[test]
fn substituted_snapshot_references_report_historical_claim() {
    require_claim("references", false);
}
#[test]
fn accepted_snapshot_queries_match_history() {
    require_claim("queries", true);
}
#[test]
fn substituted_snapshot_queries_report_historical_claim() {
    require_claim("queries", false);
}

#[test]
fn accepted_snapshot_query_missing_capture_reports_historical_claim() {
    let (module, store) = claim_store();
    let mut snapshot = sparse_claim_snapshot(&store);
    let mut query = real_query_fact(&module, &store, "count_tags");
    query["captures"] = json!([]);
    snapshot["facts"]["queries"] = json!([query]);
    let record = accepted_claim_record(&module, &snapshot);
    let result = store.replay_invocation(&module, &record).unwrap();
    assert!(!result.matches);
    let diff = result.diff.unwrap();
    assert!(
        diff.contains("queries"),
        "uncheckable retained query capture must be checked: {diff}"
    );
}

#[test]
fn accepted_snapshot_query_unavailable_definition_reports_historical_claim() {
    let (module, store) = claim_store();
    let mut snapshot = sparse_claim_snapshot(&store);
    snapshot["facts"]["queries"] =
        json!([real_query_fact(&module, &store, "count_tags_unregistered")]);
    let record = accepted_claim_record(&module, &snapshot);
    let result = store.replay_invocation(&module, &record).unwrap();
    assert!(!result.matches);
    let diff = result.diff.unwrap();
    assert!(
        diff.contains("queries"),
        "existing query registry must establish retained definition: {diff}"
    );
}

#[test]
fn accepted_snapshot_query_unknown_definition_reports_historical_claim() {
    let (module, store) = claim_store();
    let mut snapshot = sparse_claim_snapshot(&store);
    let mut query = real_query_fact(&module, &store, "count_tags");
    query["definition"] = json!(format!("sha256:{}", "d".repeat(64)));
    snapshot["facts"]["queries"] = json!([query]);
    let record = accepted_claim_record(&module, &snapshot);
    let result = store.replay_invocation(&module, &record).unwrap();
    assert!(!result.matches);
    let diff = result.diff.unwrap();
    assert!(
        diff.contains("queries"),
        "unknown retained query must not become historical truth: {diff}"
    );
}

#[test]
fn omitted_mandatory_query_definition_rejects_snapshot_and_replays_original_refusal() {
    let (module, store) = claim_store();
    let mut snapshot = sparse_claim_snapshot(&store);
    let mut query = real_query_fact(&module, &store, "count_tags");
    query.as_object_mut().unwrap().remove("definition");
    snapshot["facts"]["queries"] = json!([query]);
    assert!(
        Snapshot::decode(&module, &snapshot.to_string())
            .unwrap()
            .0
            .is_none()
    );
    let record = invoke_document(
        &module,
        &pair_request("c2").to_string(),
        &snapshot.to_string(),
        None,
    )
    .unwrap();
    assert!(
        behavior_core::invocation::replay_invocation(&module, &record.to_json_string()).matches
    );
    let result = store
        .replay_invocation(&module, &record.to_json_string())
        .unwrap();
    assert!(
        result.matches,
        "atomically rejected query shape gains no historical claim: {:?}",
        result.diff
    );
}

#[test]
fn internally_contradictory_snapshot_components_remain_rejected_attempt_evidence() {
    let (module, store) = claim_store();
    for kind in [
        "existence",
        "used",
        "fields",
        "universe",
        "references",
        "queries",
    ] {
        let mut snapshot = sparse_claim_snapshot(&store);
        match kind {
            "existence" => snapshot["facts"]["existence"]
                .as_array_mut()
                .unwrap()
                .push(json!({"entity":"Culture","id":"c1","exists":false})),
            "used" => {
                snapshot["facts"]["identities"] =
                    json!([{"entity":"Culture","id":"c1","used":false}])
            }
            "fields" => {
                snapshot["entities"]
                    .as_array_mut()
                    .unwrap()
                    .push(json!({"entity":"Tag","value":tag_value("1.00")}));
                snapshot["facts"]["fields"] =
                    json!([{"entity":"Tag","id":"t1","field":"score","value":99}]);
            }
            "universe" => {
                snapshot["facts"]["universe"] = json!([{"entity":"Culture","members":[]}])
            }
            "references" => {
                snapshot["entities"]
                    .as_array_mut()
                    .unwrap()
                    .push(json!({"entity":"Tag","value":tag_value("1.00")}));
                snapshot["facts"]["references"] =
                    json!([{"entity":"Culture","id":"c1","incoming":[]}]);
            }
            "queries" => {
                snapshot["facts"]["universe"] =
                    json!([{"entity":"Tag","members":[tag_value("1.00")]}]);
                let mut query = real_query_fact(&module, &store, "count_tags");
                query["members"] = json!([]);
                snapshot["facts"]["queries"] = json!([query]);
            }
            _ => unreachable!(),
        }
        assert!(
            Snapshot::decode(&module, &snapshot.to_string())
                .unwrap()
                .0
                .is_none(),
            "must reject component atomically: {kind}"
        );
        let record = invoke_document(
            &module,
            &pair_request("c2").to_string(),
            &snapshot.to_string(),
            None,
        )
        .unwrap();
        assert!(
            behavior_core::invocation::replay_invocation(&module, &record.to_json_string()).matches
        );
        let result = store
            .replay_invocation(&module, &record.to_json_string())
            .unwrap();
        assert!(
            result.matches,
            "rejected {kind} must remain attempted evidence under independent anchor: {:?}",
            result.diff
        );
    }
}

#[test]
fn exact_decimal_snapshot_values_match_without_rewriting_original_archive() {
    let (module, store) = claim_store();
    let mut identities = Vec::new();
    for amount in ["1", "1.0", "1.00"] {
        let mut snapshot = sparse_claim_snapshot(&store);
        snapshot["entities"]
            .as_array_mut()
            .unwrap()
            .push(json!({"entity":"Tag","value":tag_value(amount)}));
        let record = accepted_claim_record(&module, &snapshot);
        let value: Json = serde_json::from_str(&record).unwrap();
        assert_eq!(
            value["outcome"]["decode_evidence"]["snapshot"]["entities"][1]["value"]["amount"],
            amount
        );
        identities.push(value["record_id"].clone());
        let result = store.replay_invocation(&module, &record).unwrap();
        assert!(
            result.matches,
            "exact equivalent amount {amount} must match canonical history: {:?}",
            result.diff
        );
    }
    assert_ne!(
        identities[0], identities[1],
        "original attempted archives retain their own identities"
    );
}

#[test]
fn ordinary_binding_refusals_do_not_promote_id_only_surrogates_to_full_values() {
    let (module, store) = claim_store();
    for second in ["missing", "c1"] {
        let requested = RequestedInvocation::decode(&pair_request(second).to_string())
            .unwrap()
            .0
            .unwrap();
        let record = store
            .invoke(&module, &requested, common::T0, None, None)
            .unwrap()
            .record;
        assert_eq!(record.outcome_kind(), "pre_evaluation_refusal");
        assert!(record.inner_record().is_none());
        assert!(record.as_json()["outcome"].get("decode_evidence").is_none());
        assert!(
            behavior_core::invocation::replay_invocation(&module, &record.to_json_string()).matches
        );
        let result = store
            .replay_invocation(&module, &record.to_json_string())
            .unwrap();
        assert!(
            result.matches,
            "ordinary bound IDs retain existence-only evidence: {:?}",
            result.diff
        );
    }
}

#[test]
fn decoded_request_failure_does_not_fabricate_unarchived_snapshot_claims() {
    let (module, store) = claim_store();
    let snapshot = claim_snapshot(&module, &store, "fields", false);
    assert!(
        Snapshot::decode(&module, &snapshot.to_string())
            .unwrap()
            .0
            .is_some()
    );
    let before = historical_authority(&store);
    for source in ["invocation", "intent"] {
        let mut requested = pair_request("c2");
        requested["input"] = json!([]);
        let context = json!({});
        if source == "intent" {
            requested["format"] = json!("behavior.capability_intent.v1");
            requested.as_object_mut().unwrap().remove("context");
        }
        let record = invoke_document(
            &module,
            &requested.to_string(),
            &snapshot.to_string(),
            if source == "intent" {
                Some(&context)
            } else {
                None
            },
        )
        .unwrap();
        assert_eq!(
            record.as_json()["outcome"]["decode_evidence"]["source_kind"],
            source
        );
        assert!(
            record.as_json()["outcome"]["decode_evidence"]
                .get("snapshot")
                .is_none()
        );
        assert!(
            behavior_core::invocation::replay_invocation(&module, &record.to_json_string()).matches
        );
        let result = store
            .replay_invocation(&module, &record.to_json_string())
            .unwrap();
        assert!(
            result.matches,
            "unarchived Snapshot claims cannot be fabricated: {:?}",
            result.diff
        );
        assert_eq!(historical_authority(&store), before);
        assert_eq!(store.backend().mutations.get(), 0);
        println!(
            "COVERAGE022 P022-CAPTURE-LIMITS-{source}-shape core_invocation store_invocation unretained_snapshot_match"
        );
    }
}

#[test]
fn ordinary_unknown_capability_decode_stage_retains_full_store_prevalidation() {
    let (module, store) = claim_store();
    let mut raw = pair_request("c2");
    raw["capability"] = json!("unknown_capability");
    let requested = RequestedInvocation::decode(&raw.to_string())
        .unwrap()
        .0
        .unwrap();
    let record = store
        .invoke(&module, &requested, common::T0, None, None)
        .unwrap()
        .record;
    assert_eq!(record.refusal_stage(), Some("DECODE"));
    assert!(record.as_json()["outcome"].get("decode_evidence").is_none());
    assert!(
        store
            .replay_invocation(&module, &record.to_json_string())
            .unwrap()
            .matches
    );
    let store = Store::open(store.into_backend()).unwrap();
    let before = authority(&store);
    store.backend().invalid_unrelated_row.set(true);
    let result = store
        .replay_invocation(&module, &record.to_json_string())
        .unwrap();
    assert!(
        store.backend().invalid_row_hits.get() > 0,
        "DECODE label skipped actual Store parent validation"
    );
    store.backend().invalid_unrelated_row.set(false);
    assert!(
        !result.matches,
        "invalid unrelated canonical row bypassed ordinary Store prevalidation"
    );
    assert!(result.diff.unwrap().contains("STATE_INVALID"));
    assert_eq!(authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
}

// US3 preservation uses original 018 archives and public Store boundaries.
fn inherited_root() -> PathBuf {
    common::fixtures().join("replay/018")
}

fn inherited(path: &str) -> String {
    common::read(&inherited_root().join(path))
}

fn inherited_setup(spec: &Json) -> (Module, Store<InMemoryBackend>) {
    let module = behavior_core::admit(&inherited(spec["module"].as_str().unwrap())).unwrap();
    let setup = common::json(&inherited_root().join(spec["store_setup"].as_str().unwrap()));
    assert_eq!(setup["evidence_policy"], "none");
    let seed = serde_json::from_value(setup["seed"].clone()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), seed),
    )
    .unwrap();
    (module, store)
}

/// Includes all reachable historical rows, revisions, canonical records,
/// schema coordinates and materialized reference/use answers, not just Head.
fn historical_authority<B: Backend>(store: &Store<B>) -> Json {
    let backend = store.backend();
    let head = backend.head().unwrap().unwrap();
    let mut positions = Vec::new();
    let mut keys = BTreeSet::new();
    let mut revisions = BTreeMap::new();
    for position in 0..=head.state_ref.position {
        let at = store.state_at(position).unwrap();
        let schema = store.schema_at(&at).unwrap();
        let mut membership = BTreeMap::new();
        for entity in schema.declarations.keys() {
            let mut members = backend.keys_at(entity, position).unwrap();
            members.sort();
            for key in &members {
                keys.insert(key.clone());
                let version = backend.version_at(key, position).unwrap().unwrap();
                revisions.insert((key.clone(), version.revision), version);
            }
            membership.insert(entity.clone(), members);
        }
        positions.push(json!({"state":at,"schema":schema,
            "history":store.history_at(position).unwrap(),
            "record":backend.record(position).unwrap(),"membership":membership}));
    }
    let mut identities = Vec::new();
    for key in keys {
        let states: Vec<_> = (0..=head.state_ref.position)
            .map(|position| {
                let mut incoming = backend.incoming_at(&key, position).unwrap();
                incoming.sort();
                json!({"position":position,"version":backend.version_at(&key,position).unwrap(),
                "incoming":incoming.iter().map(RefEdge::to_json).collect::<Vec<_>>(),
                "used":backend.used_at(&key,position).unwrap()})
            })
            .collect();
        identities.push(
            json!({"key":key,"removed_at":backend.removed_at(&key).unwrap(),"states":states}),
        );
    }
    let versions: Vec<_> = revisions
        .into_iter()
        .map(|((key, revision), value)| {
            assert_eq!(
                backend.version(&key, revision).unwrap().as_ref(),
                Some(&value)
            );
            value
        })
        .collect();
    json!({"genesis":backend.genesis().unwrap(),"head":head,"positions":positions,
        "identities":identities,"versions":versions,
        "beyond_head":backend.record(head.state_ref.position+1).unwrap()})
}

fn inherited_writer(spec: &Json) -> Module {
    let mut wire: Json =
        serde_json::from_str(&inherited(spec["module"].as_str().unwrap())).unwrap();
    wire["ir_version"] = json!("0.7");
    wire.as_object_mut().unwrap().remove("commands");
    let loc = json!({"file":"022-history.beh","line":1});
    wire["actions"] = json!([{"name":"replace_measurement","loc":loc,
        "params":[{"name":"c","role":"state","type":{"t":"entity","name":"Culture"}},
            {"name":"n","role":"input","type":{"t":"int"}}],
        "preconditions":[],"postconditions":[],
        "effects":[{"target":{"param":"c","field":"measurements"},
            "value":{"op":"param","param":"n","loc":loc},"loc":loc}]}]);
    behavior_core::admit(&wire.to_string()).unwrap()
}

fn inherited_writes(store: &mut Store<InMemoryBackend>, spec: &Json) -> Module {
    let writer = inherited_writer(spec);
    let at0 = store.state_at(0).unwrap();
    let value = store
        .load(
            &EntityKey {
                entity: "Culture".into(),
                id: "c1".into(),
            },
            &at0,
        )
        .unwrap()
        .value;
    let n = value["measurements"].as_i64().unwrap();
    for n in [n + 1, n] {
        let bundle = store
            .evaluate(
                &writer,
                "replace_measurement",
                &BTreeMap::from([("c".into(), "c1".into())]),
                &json!({"n":n}),
                &json!({}),
                common::T0,
                None,
            )
            .unwrap()
            .bundle
            .unwrap();
        store
            .commit(&writer, &bundle.evaluated_state, &bundle)
            .unwrap();
    }
    assert_eq!(store.current().unwrap().position, 2);
    assert_eq!(
        store.state_at(0).unwrap().state,
        store.state_at(2).unwrap().state
    );
    assert_ne!(
        store.state_at(0).unwrap().state,
        store.state_at(1).unwrap().state
    );
    writer
}

fn inherited_migration(store: &mut Store<InMemoryBackend>, writer: &Module) -> Module {
    let loc = json!({"file":"022-history.beh","line":1});
    let mut wire = behavior_core::serialize::to_wire_value(writer);
    wire["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"tag","type":{"t":"int"},"loc":loc}));
    let target = behavior_core::admit(&wire.to_string()).unwrap();
    let document = json!({"migration_ir":"0.1","name":"add_tag",
        "source":behavior_core::schema(writer).hash,"target":behavior_core::schema(&target).hash,
        "constants":[],"requirements":[],"retire":[],
        "transforms":[{"entity":"Culture","fields":{"tag":{"op":"lit","type":{"t":"int"},"value":1,"loc":loc}},
            "drops":[],"loc":loc}]});
    let migration =
        behavior_core::migration::admit_migration(writer, &target, &document.to_string()).unwrap();
    store
        .migrate(&migration, writer, &target, common::T0, None)
        .unwrap();
    assert_eq!(store.current().unwrap().position, 3);
    target
}

fn inherited_core(
    module: &Module,
    boundary: &str,
    record: &str,
) -> behavior_core::record::ReplayResult {
    match boundary {
        "store_read" => behavior_core::read::replay_read(module, record),
        "store_invocation" => behavior_core::invocation::replay_invocation(module, record),
        _ => unreachable!(),
    }
}

fn inherited_backed<B: Backend>(
    store: &Store<B>,
    module: &Module,
    boundary: &str,
    record: &str,
) -> Result<behavior_core::record::ReplayResult, StoreError> {
    match boundary {
        "store_read" => store.replay_read(module, record),
        "store_invocation" => store.replay_invocation(module, record),
        _ => unreachable!(),
    }
}

fn inherited_reseal(value: &mut Json, boundary: &str) {
    if boundary == "store_read" {
        read_reseal(value);
    } else {
        if value["outcome"].get("record").is_some() {
            read_reseal(&mut value["outcome"]["record"]);
            value["outcome"]["record_id"] = value["outcome"]["record"]["record_id"].clone();
        }
        value.as_object_mut().unwrap().remove("record_id");
        let hash =
            behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", value).unwrap();
        value["record_id"] = json!(format!("invocation:{hash}"));
    }
}

fn inherited_coordinate(value: &mut Json, boundary: &str, coordinate: &str) {
    value["data_version"] = json!(coordinate);
    if boundary == "store_invocation" && value["outcome"].get("record").is_some() {
        value["outcome"]["record"]["data_version"] = json!(coordinate);
    }
}

#[test]
fn inherited_original_variants_match_before_and_after_writes_and_migration() {
    let manifest = common::json(&inherited_root().join("matrix.json"));
    let mut executions = 0;
    for row in manifest["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        for variant in ["canonical_fixture", "error_fixture", "binding_fixture"] {
            let spec = &row[variant];
            let (module, mut store) = inherited_setup(spec);
            let originals: Vec<_> = [
                ("store_read", "read_record", "original_record_id"),
                (
                    "store_invocation",
                    "invocation_record",
                    "original_invocation_record_id",
                ),
            ]
            .into_iter()
            .filter_map(|(boundary, key, identity)| {
                spec[key].as_str().map(|path| {
                    let original = inherited(path);
                    let value: Json = serde_json::from_str(&original).unwrap();
                    assert_eq!(value["record_id"], spec[identity]);
                    (boundary, path.to_owned(), original)
                })
            })
            .collect();
            for phase in ["original_head", "after_writes", "after_migration"] {
                if phase == "after_writes" {
                    inherited_writes(&mut store, spec);
                }
                if phase == "after_migration" {
                    inherited_migration(&mut store, &inherited_writer(spec));
                }
                let before = historical_authority(&store);
                for (boundary, path, original) in &originals {
                    let standalone = inherited_core(&module, boundary, original);
                    assert!(
                        standalone.matches,
                        "{id} {variant} {boundary} standalone: {:?}",
                        standalone.diff
                    );
                    let replay = inherited_backed(&store, &module, boundary, original).unwrap();
                    assert!(
                        replay.matches,
                        "{id} {variant} {boundary} {phase}: {:?}",
                        replay.diff
                    );
                    assert_eq!(historical_authority(&store), before);
                    assert_eq!(
                        inherited(path),
                        *original,
                        "historical archive bytes changed"
                    );
                    executions += 1;
                    println!("PRESERVATION022 {id} {variant} {boundary} {phase} original_match");
                }
            }
        }
    }
    assert_eq!(
        executions, 108,
        "36 supported Store variant cells across three history phases"
    );
}

#[test]
fn inherited_coordinates_and_equal_state_positions_remain_independent_claims() {
    let manifest = common::json(&inherited_root().join("matrix.json"));
    let mut cells = 0;
    for row in manifest["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["canonical_fixture"];
        let (module, mut store) = inherited_setup(spec);
        let writer = inherited_writes(&mut store, spec);
        let target = inherited_migration(&mut store, &writer);
        assert_eq!(
            behavior_core::schema(&module).hash,
            behavior_core::schema(&writer).hash
        );
        assert_ne!(module.hash(), writer.hash());
        assert_ne!(
            behavior_core::schema(&module).hash,
            behavior_core::schema(&target).hash
        );
        let before = historical_authority(&store);
        let lineage = store.store_id().unwrap();
        let at0 = store.state_at(0).unwrap();
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            let Some(path) = spec[key].as_str() else {
                continue;
            };
            let original = inherited(path);
            assert!(
                inherited_backed(&store, &module, boundary, &original)
                    .unwrap()
                    .matches
            );
            for (case, coordinate) in [
                (
                    "foreign-store",
                    format!(
                        "store:sha256:{};state:{};position:0",
                        "d".repeat(64),
                        at0.state
                    ),
                ),
                (
                    "wrong-state",
                    format!("store:{lineage};state:sha256:{};position:0", "e".repeat(64)),
                ),
                (
                    "wrong-position",
                    format!("store:{lineage};state:{};position:1", at0.state),
                ),
                (
                    "missing-position",
                    format!("store:{lineage};state:{}", at0.state),
                ),
                (
                    "future-position",
                    format!("store:{lineage};state:{};position:9", at0.state),
                ),
                (
                    "wrong-schema",
                    data_version(&lineage, &store.state_at(3).unwrap()),
                ),
            ] {
                let mut claim: Json = serde_json::from_str(&original).unwrap();
                inherited_coordinate(&mut claim, boundary, &coordinate);
                inherited_reseal(&mut claim, boundary);
                let core = inherited_core(&module, boundary, &claim.to_string());
                assert!(
                    core.matches,
                    "{id} {case} standalone premise: {:?}",
                    core.diff
                );
                let result =
                    inherited_backed(&store, &module, boundary, &claim.to_string()).unwrap();
                assert!(!result.matches, "{id} {boundary} {case} matched");
                assert!(result.diff.is_some());
                assert_eq!(historical_authority(&store), before);
                println!("COVERAGE022 P022-ANCHOR-{case} {boundary} {id} non_match");
            }
            let mut equal: Json = serde_json::from_str(&original).unwrap();
            inherited_coordinate(
                &mut equal,
                boundary,
                &data_version(&lineage, &store.state_at(2).unwrap()),
            );
            assert!(
                !inherited_backed(&store, &module, boundary, &equal.to_string())
                    .unwrap()
                    .matches
            );
            inherited_reseal(&mut equal, boundary);
            assert_ne!(
                equal["record_id"],
                serde_json::from_str::<Json>(&original).unwrap()["record_id"]
            );
            assert!(inherited_core(&module, boundary, &equal.to_string()).matches);
            assert!(
                inherited_backed(&store, &module, boundary, &equal.to_string())
                    .unwrap()
                    .matches,
                "resealed evidence about genuinely equal content is a new legitimate claim"
            );
            assert_eq!(historical_authority(&store), before);
            assert_eq!(inherited(path), original);
            println!(
                "PRESERVATION022 {id} {boundary} equal_state_distinct_position original_identity_refuses new_claim_matches"
            );
            cells += 1;
        }
    }
    assert_eq!(cells, 12);
}

#[test]
fn same_schema_different_read_behavior_preserves_original_historical_module() {
    let (module, store) = claim_store();
    let mut wire = behavior_core::serialize::to_wire_value(&module);
    let inspect = wire["reads"]
        .as_array_mut()
        .unwrap()
        .iter_mut()
        .find(|r| r["name"] == "inspect")
        .unwrap();
    inspect["body"]["value"] = json!({"op":"lit","type":{"t":"int"},"value":123,"loc":{"file":"022-behavior.beh","line":1}});
    let other = behavior_core::admit(&wire.to_string()).unwrap();
    assert_eq!(
        behavior_core::schema(&module).hash,
        behavior_core::schema(&other).hash
    );
    assert_ne!(module.hash(), other.hash());
    let before = historical_authority(&store);
    for active in [&module, &other] {
        let read = store
            .read(
                active,
                &ReadSource::Declared("inspect".into()),
                &BTreeMap::from([("c".into(), "c1".into())]),
                &json!({}),
                &json!({}),
                None,
            )
            .unwrap();
        assert_eq!(
            read.record.as_json()["value"],
            if active.hash() == module.hash() {
                7
            } else {
                123
            }
        );
        assert!(
            store
                .replay_read(active, &read.record.to_json_string())
                .unwrap()
                .matches
        );
        let opposite = if active.hash() == module.hash() {
            &other
        } else {
            &module
        };
        assert!(
            !store
                .replay_read(opposite, &read.record.to_json_string())
                .unwrap()
                .matches
        );
        let requested = RequestedInvocation::decode(&invocation("c1").to_string())
            .unwrap()
            .0
            .unwrap();
        let invocation = store
            .invoke(active, &requested, common::T0, None, None)
            .unwrap();
        assert!(
            store
                .replay_invocation(active, &invocation.record.to_json_string())
                .unwrap()
                .matches
        );
        assert!(
            !store
                .replay_invocation(opposite, &invocation.record.to_json_string())
                .unwrap()
                .matches
        );
    }
    assert_eq!(historical_authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!(
        "COVERAGE022 P022-ANCHOR-wrong-behavior store_read store_invocation same_schema_non_match"
    );
}

#[test]
fn actual_wrong_history_header_refuses_read_and_documents_replay() {
    let (module, store) = claim_store();
    let docs = accepted_claim_record(&module, &sparse_claim_snapshot(&store));
    let read = store
        .read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::from([("c".into(), "c1".into())]),
            &json!([]),
            &json!({}),
            None,
        )
        .unwrap()
        .record
        .to_json_string();
    assert_eq!(
        serde_json::from_str::<Json>(&read).unwrap()["result"],
        "INVALID_INPUT"
    );
    let before = historical_authority(&store);
    assert!(store.replay_invocation(&module, &docs).unwrap().matches);
    assert!(store.replay_read(&module, &read).unwrap().matches);
    for (boundary, record) in [("store_read", read), ("store_invocation", docs)] {
        for kind in ["header", "linkage"] {
            store
                .backend()
                .corrupt_header
                .set(if kind == "header" { Some(1) } else { None });
            store
                .backend()
                .corrupt_link
                .set(if kind == "linkage" { Some(1) } else { None });
            store.backend().header_hits.set(0);
            store.backend().corrupt_hits.set(0);
            let result = inherited_backed(&store, &module, boundary, &record).unwrap();
            assert!(
                if kind == "header" {
                    store.backend().header_hits.get() > 0
                } else {
                    store.backend().corrupt_hits.get() > 0
                },
                "actual canonical history {kind} not loaded"
            );
            assert!(!result.matches);
            assert!(
                result
                    .diff
                    .as_ref()
                    .is_some_and(|diff| diff.contains("position") || diff.contains("history"))
            );
            store.backend().corrupt_header.set(None);
            store.backend().corrupt_link.set(None);
            assert_eq!(historical_authority(&store), before);
            println!("COVERAGE022 P022-ANCHOR-wrong-{kind} {boundary} performed_non_match");
        }
    }
    assert_eq!(store.backend().mutations.get(), 0);
}

#[test]
fn rejected_snapshot_omits_later_entity_loading_but_keeps_actual_history_anchor() {
    let (module, store) = claim_store();
    let mut snapshot = sparse_claim_snapshot(&store);
    snapshot["entities"] = json!({});
    assert!(
        Snapshot::decode(&module, &snapshot.to_string())
            .unwrap()
            .0
            .is_none()
    );
    let record = invoke_document(
        &module,
        &pair_request("c2").to_string(),
        &snapshot.to_string(),
        None,
    )
    .unwrap()
    .to_json_string();
    assert!(behavior_core::invocation::replay_invocation(&module, &record).matches);
    let before = historical_authority(&store);
    store.backend().arm(ReadFault::Entity);
    let result = store.replay_invocation(&module, &record).unwrap();
    assert!(
        result.matches,
        "rejected Snapshot imposes no accepted entity claims: {:?}",
        result.diff
    );
    assert_eq!(
        store.backend().hits.get(),
        0,
        "later entity load imposed on Snapshot rejection"
    );
    store.backend().arm(ReadFault::Record(1));
    assert!(matches!(
        store.replay_invocation(&module, &record),
        Err(StoreError::Backend(_))
    ));
    assert!(
        store.backend().hits.get() > 0,
        "mandatory history anchor was skipped"
    );
    store.backend().fault.set(None);
    assert_eq!(historical_authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!(
        "COVERAGE022 C022-ERROR-omitted-later-operation store_invocation entity_not_reached history_performed"
    );
}

#[test]
fn accepted_used_claim_loading_failure_remains_direct_backend_error() {
    let (module, store) = claim_store();
    let snapshot = claim_snapshot(&module, &store, "used", true);
    let record = accepted_claim_record(&module, &snapshot);
    let before = historical_authority(&store);
    assert!(store.replay_invocation(&module, &record).unwrap().matches);
    store.backend().arm(ReadFault::Used);
    let result = store.replay_invocation(&module, &record);
    assert!(
        store.backend().hits.get() > 0,
        "accepted used claim was not independently loaded"
    );
    assert!(
        matches!(result, Err(StoreError::Backend(_))),
        "claim loading is operational, unlike evaluator callback: {result:?}"
    );
    store.backend().fault.set(None);
    assert_eq!(historical_authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!("COVERAGE022 C022-ERROR-fact store_invocation used_claim_performed Backend_error");
}

#[test]
fn invocation_core_mismatch_precedes_any_store_head_fault() {
    let (module, store) = claim_store();
    let record = accepted_claim_record(&module, &sparse_claim_snapshot(&store));
    let mut value: Json = serde_json::from_str(&record).unwrap();
    value["behavior_version"] = json!(format!("sha256:{}", "f".repeat(64)));
    let core = behavior_core::invocation::replay_invocation(&module, &value.to_string());
    assert!(!core.matches);
    let before = historical_authority(&store);
    store.backend().arm(ReadFault::Head);
    let result = store
        .replay_invocation(&module, &value.to_string())
        .unwrap();
    assert_eq!(result.to_json_string(), core.to_json_string());
    assert_eq!(
        store.backend().hits.get(),
        0,
        "Store anchor ran before original Core comparison"
    );
    store.backend().fault.set(None);
    assert_eq!(historical_authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
}

#[test]
fn documents_schema_mismatch_precedes_later_history_and_entity_faults() {
    let (module, store) = claim_store();
    let actual = accepted_claim_record(&module, &sparse_claim_snapshot(&store));
    let mut other_wire = behavior_core::serialize::to_wire_value(&module);
    other_wire["actions"] = json!([]);
    other_wire["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"extra","type":{"t":"int"},"loc":{"file":"022-schema.beh","line":1}}));
    let other = behavior_core::admit(&other_wire.to_string()).unwrap();
    let snapshot = json!({"format":"behavior.snapshot.v1","data_version":data_version(&store.store_id().unwrap(),&store.current().unwrap()),"entities":{}});
    let record = invoke_document(
        &other,
        &pair_request("c2").to_string(),
        &snapshot.to_string(),
        None,
    )
    .unwrap()
    .to_json_string();
    assert!(behavior_core::invocation::replay_invocation(&other, &record).matches);
    let before = historical_authority(&store);
    for point in [ReadFault::Record(1), ReadFault::Entity] {
        store.backend().arm(point);
        let result = store.replay_invocation(&other, &record).unwrap();
        assert!(!result.matches);
        assert!(
            result
                .diff
                .as_ref()
                .is_some_and(|d| d.contains("SCHEMA_MISMATCH")),
            "schema precedence: {:?}",
            result.diff
        );
        assert_eq!(
            store.backend().hits.get(),
            0,
            "late {point:?} reached before schema refusal"
        );
        let performed = store.replay_invocation(&module, &actual);
        assert!(
            store.backend().hits.get() > 0,
            "paired required {point:?} operation not reached"
        );
        assert!(matches!(performed, Err(StoreError::Backend(_))));
        store.backend().fault.set(None);
        assert_eq!(historical_authority(&store), before);
    }
    assert_eq!(store.backend().mutations.get(), 0);
    println!(
        "COVERAGE022 C022-ERROR-schema-before-history-fault store_invocation schema_first later_history_and_entity_not_reached"
    );
}

#[test]
fn ordinary_self_consistent_false_absence_is_not_store_binding_truth() {
    let (module, store) = claim_store();
    let snapshot = sparse_claim_snapshot(&store);
    let request = json!({"format":"behavior.invocation.v1","capability":"inspect",
        "bindings":{"c":{"entity":"Culture","id":"c4"}},"input":{},"context":{}});
    let record =
        invoke_document(&module, &request.to_string(), &snapshot.to_string(), None).unwrap();
    assert_eq!(record.outcome_kind(), "pre_evaluation_refusal");
    assert_eq!(
        record.as_json()["outcome"]["problems"][0]["reason"],
        "UNKNOWN_BINDING"
    );
    assert!(record.as_json()["outcome"].get("decode_evidence").is_none());
    assert!(
        behavior_core::invocation::replay_invocation(&module, &record.to_json_string()).matches
    );
    let before = historical_authority(&store);
    let result = store
        .replay_invocation(&module, &record.to_json_string())
        .unwrap();
    assert!(!result.matches, "c4 truly exists at archived coordinate");
    let requested = RequestedInvocation::decode(&request.to_string())
        .unwrap()
        .0
        .unwrap();
    let true_record = store
        .invoke(&module, &requested, common::T0, None, None)
        .unwrap()
        .record;
    assert_eq!(true_record.outcome_kind(), "evaluated");
    assert!(
        store
            .replay_invocation(&module, &true_record.to_json_string())
            .unwrap()
            .matches
    );
    assert_eq!(historical_authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
}

fn decimal_read_module() -> Module {
    let mut wire = behavior_core::serialize::to_wire_value(&claim_module());
    wire["reads"].as_array_mut().unwrap().push(json!({"name":"inspect_amount",
        "loc":{"file":"022-decimal.beh","line":1},
        "params":[{"name":"t","role":"state","type":{"t":"entity","name":"Tag"}}],
        "body":{"value":{"op":"field","param":"t","field":"amount","loc":{"file":"022-decimal.beh","line":1}}}}));
    behavior_core::admit(&wire.to_string()).unwrap()
}

#[test]
fn exact_decimal_read_values_are_typed_before_historical_comparison() {
    let (_, store) = claim_store();
    let module = decimal_read_module();
    let before = historical_authority(&store);
    let source = ReadSource::Declared("inspect_amount".into());
    let actual = store
        .read(
            &module,
            &source,
            &BTreeMap::from([("t".into(), "t1".into())]),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record;
    let mut ids = Vec::new();
    for amount in ["1", "1.0", "1.00", "2.00"] {
        let mut request = behavior_core::read::record_request(actual.as_json());
        request["state"]["t"] = tag_value(amount);
        let universe = request["facts"]["universe"].as_array_mut().unwrap();
        let tags = universe.iter_mut().find(|u| u["entity"] == "Tag").unwrap();
        tags["members"] = json!([tag_value(amount)]);
        let record =
            behavior_core::read::evaluate_read(&module, &source, &request.to_string()).record;
        assert_eq!(
            record.result(),
            "VALUE",
            "original typed request {amount}: {}",
            record.to_json_string()
        );
        let core = behavior_core::read::replay_read(&module, &record.to_json_string());
        assert!(core.matches, "typed premise for {amount}: {:?}", core.diff);
        let result = store
            .replay_read(&module, &record.to_json_string())
            .unwrap();
        assert_eq!(
            result.matches,
            amount != "2.00",
            "historical exact decimal {amount}: {:?}",
            result.diff
        );
        if amount != "2.00" {
            ids.push(record.as_json()["record_id"].clone());
        }
        assert_eq!(historical_authority(&store), before);
    }
    assert_eq!(ids[0], ids[1]);
    assert_eq!(ids[1], ids[2]);
    assert_eq!(store.backend().mutations.get(), 0);
    println!("COVERAGE022 P022-EXACT-VALUES-decimal-equivalent store_read typed_match");
    println!("COVERAGE022 P022-EXACT-VALUES-decimal-different store_read non_match");
}

#[test]
fn exact_different_decimal_snapshot_value_reports_historical_claim() {
    let (module, store) = claim_store();
    let mut snapshot = sparse_claim_snapshot(&store);
    snapshot["entities"]
        .as_array_mut()
        .unwrap()
        .push(json!({"entity":"Tag","value":tag_value("2.00")}));
    let record = accepted_claim_record(&module, &snapshot);
    let before = historical_authority(&store);
    let result = store.replay_invocation(&module, &record).unwrap();
    assert!(!result.matches);
    assert!(
        result
            .diff
            .as_ref()
            .is_some_and(|d| d.contains("entities") || d.contains("values")),
        "typed claim diff: {:?}",
        result.diff
    );
    assert_eq!(historical_authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!(
        "COVERAGE022 P022-EXACT-VALUES-decimal-different store_invocation historical_claim_non_match"
    );
}

#[test]
fn reordered_evidence_and_complete_backend_enumeration_preserve_truth() {
    let (module, store) = claim_store();
    let before = historical_authority(&store);
    let actual_read = store
        .read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::from([("c".into(), "c1".into())]),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record
        .to_json_string();
    let actual: Json = serde_json::from_str(&actual_read).unwrap();
    let mut request = behavior_core::read::record_request(&actual);
    let universe = request["facts"]["universe"].as_array_mut().unwrap();
    universe.reverse();
    for entity in universe {
        entity["members"].as_array_mut().unwrap().reverse();
    }
    let reordered_read = behavior_core::read::evaluate_read(
        &module,
        &ReadSource::Declared("inspect".into()),
        &request.to_string(),
    )
    .record;
    assert_eq!(reordered_read.result(), "VALUE");
    assert_eq!(
        reordered_read.as_json(),
        &actual,
        "typed unordered request facts retain the canonical original record"
    );
    assert!(behavior_core::read::replay_read(&module, &reordered_read.to_json_string()).matches);
    assert!(
        store
            .replay_read(&module, &reordered_read.to_json_string())
            .unwrap()
            .matches
    );
    let mut snapshot = claim_snapshot(&module, &store, "universe", true);
    snapshot["entities"]
        .as_array_mut()
        .unwrap()
        .push(json!({"entity":"Tag","value":tag_value("1.00")}));
    snapshot["facts"]["existence"]
        .as_array_mut()
        .unwrap()
        .push(json!({"entity":"Culture","id":"c4","exists":true}));
    let first = accepted_claim_record(&module, &snapshot);
    snapshot["entities"].as_array_mut().unwrap().reverse();
    snapshot["facts"]["existence"]
        .as_array_mut()
        .unwrap()
        .reverse();
    let reordered = accepted_claim_record(&module, &snapshot);
    assert_ne!(
        first, reordered,
        "archive preserves original attempted evidence order"
    );
    store.backend().reverse_enumeration.set(true);
    for record in [&first, &reordered] {
        assert!(store.replay_invocation(&module, record).unwrap().matches);
    }
    assert!(store.replay_read(&module, &actual_read).unwrap().matches);
    assert!(
        store.backend().enumeration_hits.get() > 0,
        "complete reversed enumeration was not performed"
    );
    store.backend().reverse_enumeration.set(false);
    assert_eq!(historical_authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!("COVERAGE022 P022-EXACT-VALUES-unordered-evidence-reorder store_invocation match");
    println!(
        "COVERAGE022 P022-EXACT-VALUES-unordered-evidence-reorder store_read canonical_request_set_match"
    );
    println!(
        "COVERAGE022 P022-EXACT-VALUES-index-enumeration-reorder store_read store_invocation match"
    );
}

#[test]
fn alias_and_unknown_binding_are_reproduced_together_without_body_execution() {
    let (base, store) = claim_store();
    let mut wire = behavior_core::serialize::to_wire_value(&base);
    let read = wire["reads"]
        .as_array_mut()
        .unwrap()
        .iter_mut()
        .find(|read| read["name"] == "inspect_pair")
        .unwrap();
    read["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"third","role":"state","type":{"t":"entity","name":"Culture"}}));
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let mut request = pair_request("c1");
    request["bindings"]["third"] = json!({"entity":"Culture","id":"missing"});
    let requested = RequestedInvocation::decode(&request.to_string())
        .unwrap()
        .0
        .unwrap();
    let before = historical_authority(&store);
    let original = store
        .invoke(&module, &requested, common::T0, None, None)
        .unwrap()
        .record;
    assert_eq!(original.outcome_kind(), "pre_evaluation_refusal");
    assert!(original.inner_record().is_none());
    let reasons: BTreeSet<_> = original.as_json()["outcome"]["problems"]
        .as_array()
        .unwrap()
        .iter()
        .map(|p| p["reason"].as_str().unwrap())
        .collect();
    assert_eq!(
        reasons,
        BTreeSet::from(["STATE_ALIAS_NOT_ALLOWED", "UNKNOWN_BINDING"])
    );
    assert_eq!(original.as_json()["binding_facts"][0]["status"], "bound");
    assert_eq!(original.as_json()["binding_facts"][1]["status"], "bound");
    assert_eq!(original.as_json()["binding_facts"][2]["status"], "unknown");
    assert!(
        behavior_core::invocation::replay_invocation(&module, &original.to_json_string()).matches
    );
    assert!(
        store
            .replay_invocation(&module, &original.to_json_string())
            .unwrap()
            .matches
    );
    assert_eq!(historical_authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!(
        "COVERAGE022 P022-RESOLUTION-alias-plus-other-failure core_invocation store_invocation cooccurring_original_refusal"
    );
}

#[test]
fn optional_field_and_reference_indexes_cannot_replace_canonical_claim_truth() {
    let (module, store) = claim_store();
    let before = historical_authority(&store);
    let query = claim_snapshot(&module, &store, "queries", true);
    let incoming = claim_snapshot(&module, &store, "references", true);
    let false_query = claim_snapshot(&module, &store, "queries", false);
    let false_incoming = claim_snapshot(&module, &store, "references", false);
    let records: Vec<_> = [
        (query, true),
        (incoming, true),
        (false_query, false),
        (false_incoming, false),
    ]
    .into_iter()
    .map(|(snapshot, expected)| (accepted_claim_record(&module, &snapshot), expected))
    .collect();
    let read = store
        .read(
            &module,
            &ReadSource::Declared("count_tags".into()),
            &BTreeMap::new(),
            &json!({"threshold":0}),
            &json!({}),
            None,
        )
        .unwrap()
        .record
        .to_json_string();
    store.backend().corrupt_optional_index.set(true);
    store.backend().corrupt_reference_index.set(true);
    // Prove corruption is armed at the public Backend boundary. A canonical
    // replay need not consult these accelerators to be trustworthy.
    let key = EntityKey {
        entity: "Culture".into(),
        id: "c1".into(),
    };
    assert!(store.backend().incoming_at(&key, 1).unwrap().is_empty());
    assert_eq!(
        store
            .backend()
            .keys_by_field_at("Tag", "score", &json!(5), 1)
            .unwrap()
            .unwrap()[0]
            .id,
        "ghost"
    );
    assert!(
        store.backend().optional_index_hits.get() > 0
            && store.backend().reference_index_hits.get() > 0
    );
    for (record, expected) in records {
        let result = store.replay_invocation(&module, &record).unwrap();
        assert_eq!(
            result.matches, expected,
            "canonical evidence vs optional index: {:?}",
            result.diff
        );
    }
    assert!(store.replay_read(&module, &read).unwrap().matches);
    store.backend().corrupt_optional_index.set(false);
    store.backend().corrupt_reference_index.set(false);
    assert_eq!(historical_authority(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!(
        "COVERAGE022 P022-EXACT-VALUES-corrupted-index store_read store_invocation canonical_answer_preserved"
    );
}

#[test]
fn resealed_forged_phase_and_unsupported_archive_variants_refuse_at_both_boundaries() {
    let (module, store) = setup();
    let host = assert_original(&module, &store, "R022-03");
    let documents = assert_original(&module, &store, "P022-SNAPSHOT-REJECTED-malformed-host");
    assert!(
        store
            .replay_invocation(&module, &host.to_string())
            .unwrap()
            .matches
    );
    assert!(
        store
            .replay_invocation(&module, &documents.to_string())
            .unwrap()
            .matches
    );
    let before = historical_authority(&store);
    let mut variants = Vec::new();
    let mut stage = host.clone();
    stage["outcome"]["stage"] = json!("BINDING");
    stage["outcome"]["problems"][0]["stage"] = json!("BINDING");
    variants.push(("P022-FORGED-PHASE-stage", stage));
    let mut source = host.clone();
    source["outcome"]["decode_evidence"]["source_kind"] = json!("intent");
    variants.push(("P022-FORGED-PHASE-source-kind", source));
    let mut outcome = host.clone();
    outcome["outcome"]["kind"] = json!("evaluated");
    variants.push(("P022-FORGED-PHASE-outcome-kind", outcome));
    let mut format = host.clone();
    format["outcome"]["decode_evidence"]["document"]["format"] =
        json!("behavior.capability_intent.v1");
    variants.push(("P022-FORGED-PHASE-document-format", format));
    // Documents-origin evidence retains the Snapshot's coordinate. Changing
    // only the enclosing coordinate contradicts the reproduced attempt; a
    // new coherently resealed coordinate-only host claim is a different case.
    let mut coordinate = documents;
    coordinate["data_version"] = json!(
        host["data_version"]
            .as_str()
            .unwrap()
            .replace("position:0", "position:9")
    );
    variants.push(("P022-FORGED-PHASE-data-version", coordinate));
    let mut valid = host.clone();
    valid["outcome"]["decode_evidence"]["document"]["input"] = json!({});
    variants.push(("P022-FORGED-PHASE-valid-replacement", valid));
    let mut archive = host.clone();
    archive["outcome"]["decode_evidence"] = json!([]);
    variants.push(("P022-CAPTURE-LIMITS-unknown-archive", archive));
    let mut unknown = host;
    unknown["outcome"]["decode_evidence"]["source_kind"] = json!("unsupported-origin");
    variants.push(("P022-CAPTURE-LIMITS-unknown-source", unknown));
    for (id, mut value) in variants {
        inherited_reseal(&mut value, "store_invocation");
        let core = behavior_core::invocation::replay_invocation(&module, &value.to_string());
        assert!(!core.matches, "{id} silently established a checked route");
        let backed = store
            .replay_invocation(&module, &value.to_string())
            .unwrap();
        assert_eq!(
            backed.to_json_string(),
            core.to_json_string(),
            "{id} complete Core refusal must precede Store anchoring"
        );
        assert_eq!(historical_authority(&store), before);
        println!("COVERAGE022 {id} core_invocation store_invocation non_match");
    }
}
