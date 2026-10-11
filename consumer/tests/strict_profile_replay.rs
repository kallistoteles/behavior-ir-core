#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core018 consumer result-shape controls through the supported facade only.

use behavior_engine::admit;
use behavior_engine::invocation::{RequestedInvocation, Snapshot, invoke_with_snapshot};
use behavior_engine::read::ReadSource;
use behavior_engine::semantic::Module;
use behavior_engine::store::documents::{
    EntityKey, EntityVersion, EvidencePolicy, Genesis, Head, RefChange, SeedEntity, StoreError,
    TransitionRecord, data_version,
};
use behavior_engine::store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store};
use serde_json::{Value, json};
use std::cell::Cell;
use std::collections::{BTreeMap, BTreeSet};
use std::path::PathBuf;

fn fixture_root() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../tests/fixtures/replay/018")
}

fn fixture(path: &str) -> String {
    let path = fixture_root().join(path);
    std::fs::read_to_string(&path).unwrap_or_else(|error| panic!("{}: {error}", path.display()))
}

fn row(id: &str) -> Value {
    let manifest: Value = serde_json::from_str(&fixture("matrix.json")).unwrap();
    manifest["rows"]
        .as_array()
        .unwrap()
        .iter()
        .find(|row| row["id"] == id)
        .unwrap_or_else(|| panic!("required consumer fixture row {id} missing"))
        .clone()
}

// The facade returns the existing concrete result. These argument types check
// the accessible Rust fields without importing the implementation crate or
// requiring a new facade export for its type name.
fn assert_result_shape(matches: bool, diff: &Option<String>, text: &str, serde_value: Value) {
    let encoded: Value = serde_json::from_str(text).unwrap();
    assert_eq!(
        encoded, serde_value,
        "inherent and serde serialization differ"
    );
    let object = encoded.as_object().unwrap();
    assert_eq!(object["matches"], json!(matches));
    if matches {
        assert!(diff.is_none(), "matching replay carried a mismatch reason");
        assert_eq!(encoded, json!({"matches": true}));
        assert_eq!(object.len(), 1, "match introduced an extra result field");
    } else {
        let reason = diff.as_ref().expect("non-match must explain its reason");
        assert!(!reason.trim().is_empty(), "non-match reason is empty");
        assert_eq!(object["diff"], json!(reason));
        assert!(
            object["diff"].is_string(),
            "diff changed to another JSON type"
        );
        assert_eq!(
            object.len(),
            2,
            "non-match introduced an extra result field"
        );
        assert!(object.keys().all(|key| key == "matches" || key == "diff"));
    }
}

#[test]
fn facade_replay_match_keeps_boolean_and_omits_optional_string_for_each_profile() {
    for id in ["M07-D", "M08-H-D", "M08-C-D"] {
        let row = row(id);
        let fixture_paths = &row["canonical_fixture"];
        let module = admit(&fixture(fixture_paths["module"].as_str().unwrap())).unwrap();
        let read_text = fixture(fixture_paths["read_record"].as_str().unwrap());
        let read: Value = serde_json::from_str(&read_text).unwrap();
        assert_eq!(read["format"], row["profile"]);
        assert_eq!(read["record_id"], fixture_paths["original_record_id"]);
        let invocation_text = fixture(fixture_paths["invocation_record"].as_str().unwrap());
        for result in [
            behavior_engine::read::replay_read(&module, &read_text),
            behavior_engine::invocation::replay_invocation(&module, &invocation_text),
        ] {
            let matches: bool = result.matches;
            let diff: Option<String> = result.diff.clone();
            assert!(matches, "{id}: {diff:?}");
            assert_result_shape(
                matches,
                &diff,
                &result.to_json_string(),
                serde_json::to_value(&result).unwrap(),
            );
        }
    }
}

#[test]
fn facade_malformed_ambiguous_and_mismatching_read_keeps_false_and_string_diff() {
    let row = row("M08-C-D");
    let paths = &row["canonical_fixture"];
    let module = admit(&fixture(paths["module"].as_str().unwrap())).unwrap();
    let original = fixture(paths["read_record"].as_str().unwrap());
    let duplicate = format!("{{\"result\":\"EVALUATION_ERROR\",{}", &original[1..]);
    let escaped_duplicate = format!(
        "{{\"\\u0066ormat\":\"behavior.read_record.v2\",{}",
        &original[1..]
    );
    let mut changed: Value = serde_json::from_str(&original).unwrap();
    changed["value"] = json!(999);
    for raw in [
        "{".to_string(),
        duplicate,
        escaped_duplicate,
        changed.to_string(),
    ] {
        let first = behavior_engine::read::replay_read(&module, &raw);
        let repeated = behavior_engine::read::replay_read(&module, &raw);
        let matches: bool = first.matches;
        let diff: Option<String> = first.diff.clone();
        assert!(!matches, "noncanonical evidence matched: {raw}");
        assert_eq!(first.to_json_string(), repeated.to_json_string());
        assert_result_shape(
            matches,
            &diff,
            &first.to_json_string(),
            serde_json::to_value(&first).unwrap(),
        );
    }
}

#[test]
fn facade_invocation_nonmatch_uses_the_same_existing_two_field_contract() {
    let row = row("M08-C-D");
    let paths = &row["canonical_fixture"];
    let module = admit(&fixture(paths["module"].as_str().unwrap())).unwrap();
    let original = fixture(paths["invocation_record"].as_str().unwrap());
    let duplicate = format!(
        "{{\"format\":\"behavior.invocation_record.v1\",{}",
        &original[1..]
    );
    let inner_duplicate = original.replacen(
        "\"result\":\"VALUE\"",
        "\"result\":\"EVALUATION_ERROR\",\"result\":\"VALUE\"",
        1,
    );
    assert_ne!(
        inner_duplicate, original,
        "inner duplicate case did not mutate input"
    );
    let mut changed: Value = serde_json::from_str(&original).unwrap();
    changed["outcome"]["record"]["value"] = json!(999);
    for raw in [
        "{".to_string(),
        duplicate,
        inner_duplicate,
        changed.to_string(),
    ] {
        let result = behavior_engine::invocation::replay_invocation(&module, &raw);
        let repeated = behavior_engine::invocation::replay_invocation(&module, &raw);
        let matches: bool = result.matches;
        let diff: Option<String> = result.diff.clone();
        assert!(!matches, "invocation evidence matched: {raw}");
        assert_eq!(result.to_json_string(), repeated.to_json_string());
        assert_result_shape(
            matches,
            &diff,
            &result.to_json_string(),
            serde_json::to_value(&result).unwrap(),
        );
    }
}

fn json_fixture(path: &str) -> Value {
    serde_json::from_str(&fixture(path)).unwrap()
}

fn fixture_store<B: Backend>(paths: &Value, backend: B) -> (Module, Store<B>) {
    let module = admit(&fixture(paths["module"].as_str().unwrap())).unwrap();
    let setup = json_fixture(paths["store_setup"].as_str().unwrap());
    assert_eq!(setup["evidence_policy"], "none");
    let seeds: Vec<SeedEntity> = serde_json::from_value(setup["seed"].clone()).unwrap();
    let store = Store::create(
        backend,
        &module,
        behavior_engine::store::store::genesis_for(&module, EvidencePolicy::none(), seeds),
    )
    .unwrap();
    (module, store)
}

// Observe canonical persistence through the public contract, including history,
// immutable versions, membership/reference indexes and committed command evidence.
// A head-only comparison could miss a mutation that leaves the head unchanged.
fn canonical_contents<B: Backend>(store: &Store<B>) -> Value {
    let backend = store.backend();
    let genesis = backend.genesis().unwrap().unwrap();
    let head = backend.head().unwrap().unwrap();
    let mut all_keys = BTreeSet::new();
    let mut versions = BTreeMap::new();
    let mut positions = Vec::new();
    for position in 0..=head.state_ref.position {
        let state = store.state_at(position).unwrap();
        let schema = store.schema_at(&state).unwrap();
        let mut membership = BTreeMap::new();
        for entity in schema.declarations.keys() {
            let mut keys = backend.keys_at(entity, position).unwrap();
            keys.sort();
            for key in &keys {
                all_keys.insert(key.clone());
                let version = backend.version_at(key, position).unwrap().unwrap();
                versions.insert((key.clone(), version.revision), version);
            }
            membership.insert(entity.clone(), keys);
        }
        positions.push(json!({
            "state": state,
            "history": store.history_at(position).unwrap(),
            "schema": schema,
            "record": backend.record(position).unwrap(),
            "membership": membership,
        }));
    }
    let mut identities = Vec::new();
    for key in all_keys {
        let mut at_positions = Vec::new();
        for position in 0..=head.state_ref.position {
            let mut incoming = backend.incoming_at(&key, position).unwrap();
            incoming.sort();
            at_positions.push(json!({
                "position": position,
                "version": backend.version_at(&key, position).unwrap(),
                "used": backend.used_at(&key, position).unwrap(),
                "incoming": incoming.iter().map(RefEdge::to_json).collect::<Vec<_>>(),
            }));
        }
        identities.push(json!({
            "key": key,
            "removed_at": backend.removed_at(&key).unwrap(),
            "positions": at_positions,
        }));
    }
    let immutable_versions: Vec<_> = versions
        .into_iter()
        .map(|((key, revision), version)| {
            assert_eq!(
                backend.version(&key, revision).unwrap().as_ref(),
                Some(&version)
            );
            version
        })
        .collect();
    let request = behavior_engine::store::commands::CommandStreamRequest::from_json(
        &json!({
            "format":"behavior.command_stream_request.v1",
            "after":store.history_at(0).unwrap(),
            "through":store.current_history().unwrap(),
        })
        .to_string(),
    )
    .unwrap();
    json!({
        "genesis": genesis,
        "head": head,
        "positions": positions,
        "identities": identities,
        "versions": immutable_versions,
        "record_beyond_head": backend.record(head.state_ref.position + 1).unwrap(),
        "commands": store.commands_since(&request).unwrap().as_json(),
    })
}

#[test]
fn facade_store_replays_independent_profiles_errors_and_binding_refusals_without_mutation() {
    for id in ["M07-D", "M08-H-D", "M08-C-D"] {
        let row = row(id);
        for variant in ["canonical_fixture", "error_fixture", "binding_fixture"] {
            let paths = &row[variant];
            let (module, store) = fixture_store(paths, InMemoryBackend::new());
            let read_text = fixture(paths["read_record"].as_str().unwrap());
            let read: Value = serde_json::from_str(&read_text).unwrap();
            let at = store.current().unwrap();
            assert_eq!(at.position, 0);
            assert_eq!(read["format"], row["profile"]);
            assert_eq!(read["result"], paths["expected_result"]);
            assert_eq!(read["record_id"], paths["original_record_id"]);
            assert_eq!(read["behavior_version"], module.behavior_version());
            assert_eq!(
                read["data_version"],
                data_version(&store.store_id().unwrap(), &at)
            );
            let before = canonical_contents(&store);
            let core_read = behavior_engine::read::replay_read(&module, &read_text);
            let store_read = store.replay_read(&module, &read_text).unwrap();
            assert!(
                core_read.matches && store_read.matches,
                "{id}/{variant}: {:?}",
                store_read.diff
            );
            assert_eq!(core_read.to_json_string(), store_read.to_json_string());
            assert_result_shape(
                store_read.matches,
                &store_read.diff,
                &store_read.to_json_string(),
                serde_json::to_value(&store_read).unwrap(),
            );
            assert_eq!(canonical_contents(&store), before);

            let invocation_text = fixture(paths["invocation_record"].as_str().unwrap());
            let invocation: Value = serde_json::from_str(&invocation_text).unwrap();
            assert_eq!(
                invocation["record_id"],
                paths["original_invocation_record_id"]
            );
            assert_eq!(invocation["data_version"], read["data_version"]);
            assert_eq!(invocation["schema"], store.schema_at(&at).unwrap().hash);
            if variant == "binding_fixture" {
                assert_eq!(invocation["outcome"]["kind"], "pre_evaluation_refusal");
                assert!(invocation["outcome"].get("record").is_none());
            } else {
                assert_eq!(invocation["outcome"]["record"], read);
            }
            let core_invocation =
                behavior_engine::invocation::replay_invocation(&module, &invocation_text);
            let store_invocation = store.replay_invocation(&module, &invocation_text).unwrap();
            assert!(
                core_invocation.matches && store_invocation.matches,
                "{id}/{variant}: {:?}",
                store_invocation.diff
            );
            assert_eq!(
                core_invocation.to_json_string(),
                store_invocation.to_json_string()
            );
            assert_result_shape(
                store_invocation.matches,
                &store_invocation.diff,
                &store_invocation.to_json_string(),
                serde_json::to_value(&store_invocation).unwrap(),
            );
            assert_eq!(canonical_contents(&store), before);
            assert_eq!(fixture(paths["read_record"].as_str().unwrap()), read_text);
            assert_eq!(
                fixture(paths["invocation_record"].as_str().unwrap()),
                invocation_text
            );
        }
    }
}

#[test]
fn facade_fresh_store_reads_and_invocations_keep_current_v2_defaults() {
    for id in ["M08-H-D", "M08-C-D"] {
        let row = row(id);
        let paths = &row["canonical_fixture"];
        let setup = json_fixture(paths["store_setup"].as_str().unwrap());
        let metadata = json_fixture(paths["capture_metadata"].as_str().unwrap());
        let (module, store) = fixture_store(paths, InMemoryBackend::new());
        let before = canonical_contents(&store);
        // Warm archived replay cannot turn a later fresh call into historical emission.
        assert!(
            store
                .replay_read(&module, &fixture(paths["read_record"].as_str().unwrap()))
                .unwrap()
                .matches
        );
        let targets: BTreeMap<String, String> =
            serde_json::from_value(setup["targets"].clone()).unwrap();
        let fresh = store
            .read(
                &module,
                &ReadSource::Declared("inspect".into()),
                &targets,
                &setup["input"],
                &setup["context"],
                None,
            )
            .unwrap();
        assert_eq!(fresh.record.as_json()["format"], "behavior.read_record.v2");
        assert_eq!(fresh.record.as_json()["value"], 7);
        assert_eq!(
            fresh.record.record_id(),
            metadata["fresh_read_record_id"].as_str().unwrap()
        );
        let requested = RequestedInvocation::decode(&setup["invocation"].to_string())
            .unwrap()
            .0
            .unwrap();
        let fresh_invocation = store
            .invoke(&module, &requested, "1970-01-01T00:00:00Z", None, None)
            .unwrap();
        assert!(fresh_invocation.bundle.is_none());
        assert_eq!(
            fresh_invocation.record.inner_record(),
            Some(fresh.record.as_json())
        );
        assert!(
            store
                .replay_invocation(&module, &fresh_invocation.record.to_json_string())
                .unwrap()
                .matches
        );
        assert_eq!(canonical_contents(&store), before);
    }
}

#[test]
fn facade_authentic_core_evidence_does_not_certify_foreign_store_coordinates() {
    let row = row("M08-C-D");
    let paths = &row["canonical_fixture"];
    let (module, store) = fixture_store(paths, InMemoryBackend::new());
    let at = store.current().unwrap();
    let before = canonical_contents(&store);
    let setup = json_fixture(paths["store_setup"].as_str().unwrap());
    let requested = RequestedInvocation::decode(&setup["invocation"].to_string())
        .unwrap()
        .0
        .unwrap();
    let substitutions = [
        format!(
            "store:sha256:{};state:{};position:0",
            "0".repeat(64),
            at.state
        ),
        format!(
            "store:{};state:sha256:{};position:0",
            store.store_id().unwrap(),
            "0".repeat(64)
        ),
        format!(
            "store:{};state:{};position:1",
            store.store_id().unwrap(),
            at.state
        ),
    ];
    for data_version in substitutions {
        let mut request = json_fixture(paths["request"].as_str().unwrap());
        request["data_version"] = json!(data_version);
        // Use the public evaluator to seal authentic current evidence. The
        // consumer neither copies hash algorithms nor forges archive selectors.
        let read = behavior_engine::read::evaluate_read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &request.to_string(),
        );
        assert_eq!(read.record.as_json()["value"], 7);
        assert!(behavior_engine::read::replay_read(&module, &read.record.to_json_string()).matches);
        let refused = store
            .replay_read(&module, &read.record.to_json_string())
            .unwrap();
        assert!(!refused.matches);
        assert_result_shape(
            refused.matches,
            &refused.diff,
            &refused.to_json_string(),
            serde_json::to_value(&refused).unwrap(),
        );
        assert_eq!(canonical_contents(&store), before);

        let mut snapshot = json_fixture(paths["snapshot"].as_str().unwrap());
        snapshot["data_version"] = json!(data_version);
        let snapshot = Snapshot::decode(&module, &snapshot.to_string())
            .unwrap()
            .0
            .unwrap();
        let invoked = invoke_with_snapshot(&module, &requested, &snapshot).unwrap();
        assert!(
            behavior_engine::invocation::replay_invocation(&module, &invoked.to_json_string())
                .matches
        );
        let refused = store
            .replay_invocation(&module, &invoked.to_json_string())
            .unwrap();
        assert!(!refused.matches);
        assert_result_shape(
            refused.matches,
            &refused.diff,
            &refused.to_json_string(),
            serde_json::to_value(&refused).unwrap(),
        );
        assert_eq!(canonical_contents(&store), before);
    }
}

// A consumer can implement the unchanged Backend contract. This narrow fault
// interrupts an actually performed head access, rather than predicting errors
// from a hypothetical backend call eliminated by replay's strict preflight.
struct HeadFaultBackend {
    inner: InMemoryBackend,
    fail_head: Cell<bool>,
    failed_heads: Cell<usize>,
}

impl HeadFaultBackend {
    fn new() -> Self {
        Self {
            inner: InMemoryBackend::new(),
            fail_head: Cell::new(false),
            failed_heads: Cell::new(0),
        }
    }
}

impl Backend for HeadFaultBackend {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        if self.fail_head.get() {
            self.failed_heads.set(self.failed_heads.get() + 1);
            Err(BackendError("consumer injected head failure".into()))
        } else {
            self.inner.head()
        }
    }
    fn create(
        &mut self,
        genesis: &Genesis,
        head: &Head,
        seed: &[EntityVersion],
        refs: &[RefChange],
    ) -> Result<(), BackendError> {
        self.inner.create(genesis, head, seed, refs)
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
        expected: &str,
        versions: &[EntityVersion],
        removals: &[EntityKey],
        refs: &[RefChange],
        record: &TransitionRecord,
        head: &Head,
    ) -> Result<CasOutcome, BackendError> {
        self.inner
            .commit(expected, versions, removals, refs, record, head)
    }
}

#[test]
fn facade_store_replay_keeps_performed_backend_failure_operational_and_state_unchanged() {
    let row = row("M08-C-D");
    let paths = &row["canonical_fixture"];
    let (module, store) = fixture_store(paths, HeadFaultBackend::new());
    let before = canonical_contents(&store);
    for invocation in [false, true] {
        let path = if invocation {
            "invocation_record"
        } else {
            "read_record"
        };
        let original = fixture(paths[path].as_str().unwrap());
        let failures_before = store.backend().failed_heads.get();
        store.backend().fail_head.set(true);
        let error = if invocation {
            store.replay_invocation(&module, &original).unwrap_err()
        } else {
            store.replay_read(&module, &original).unwrap_err()
        };
        assert_eq!(error.code(), "BACKEND_ERROR");
        assert!(
            matches!(error, StoreError::Backend(ref message) if message == "consumer injected head failure")
        );
        assert!(
            store.backend().failed_heads.get() > failures_before,
            "fault was not actually performed"
        );
        store.backend().fail_head.set(false);
        assert_eq!(canonical_contents(&store), before);

        // Malformed evidence is already a semantic non-match. An armed fault
        // need not be fabricated when its backend operation is unnecessary.
        let failures_before = store.backend().failed_heads.get();
        store.backend().fail_head.set(true);
        let first = if invocation {
            store.replay_invocation(&module, "{")
        } else {
            store.replay_read(&module, "{")
        }
        .unwrap();
        let repeated = if invocation {
            store.replay_invocation(&module, "{")
        } else {
            store.replay_read(&module, "{")
        }
        .unwrap();
        assert!(!first.matches);
        assert_eq!(first.to_json_string(), repeated.to_json_string());
        assert_result_shape(
            first.matches,
            &first.diff,
            &first.to_json_string(),
            serde_json::to_value(&first).unwrap(),
        );
        assert_eq!(store.backend().failed_heads.get(), failures_before);
        store.backend().fail_head.set(false);
        assert_eq!(canonical_contents(&store), before);
    }
}
