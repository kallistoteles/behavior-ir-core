#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core 022 consumer evidence uses only the supported behavior-engine facade.

use behavior_engine::admit;
use behavior_engine::invocation::{RequestedInvocation, invoke_document, replay_invocation};
use behavior_engine::read::{ReadSource, replay_read};
use behavior_engine::semantic::Module;
use behavior_engine::store::commands::CommandStreamRequest;
use behavior_engine::store::documents::{EvidencePolicy, SeedEntity, data_version};
use behavior_engine::store::store::genesis_for;
use behavior_engine::store::{Backend, InMemoryBackend, RefEdge, Store};
use serde_json::{Value, json};
use std::collections::{BTreeMap, BTreeSet};
use std::path::PathBuf;

fn repository() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .parent()
        .unwrap()
        .to_path_buf()
}

fn fixture(path: &str) -> String {
    let path = repository().join("tests/fixtures/replay/022").join(path);
    std::fs::read_to_string(&path).unwrap_or_else(|error| panic!("{}: {error}", path.display()))
}

fn json_fixture(path: &str) -> Value {
    serde_json::from_str(&fixture(path)).unwrap()
}

fn case(id: &str) -> Value {
    json_fixture("matrix.json")["cases"]
        .as_array()
        .unwrap()
        .iter()
        .find(|case| case["id"] == id)
        .unwrap_or_else(|| panic!("required consumer case {id} missing"))
        .clone()
}

fn setup() -> (Module, Store<InMemoryBackend>) {
    let setup = json_fixture("stores/culture.json");
    assert_eq!(setup["evidence_policy"], "none");
    let module = admit(
        &std::fs::read_to_string(repository().join(setup["module"].as_str().unwrap())).unwrap(),
    )
    .unwrap();
    let seeds: Vec<SeedEntity> = serde_json::from_value(setup["seed"].clone()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), seeds),
    )
    .unwrap();
    assert_eq!(
        setup["data_version"],
        data_version(&store.store_id().unwrap(), &store.current().unwrap()),
        "consumer setup differs from the actual captured Store coordinate"
    );
    (module, store)
}

// A head-only check would miss mutation of immutable versions, identity history,
// reference indexes or committed commands. Observe all existing public authority.
fn canonical_contents<B: Backend>(store: &Store<B>) -> Value {
    let backend = store.backend();
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
    let request = CommandStreamRequest::from_json(
        &json!({
            "format": "behavior.command_stream_request.v1",
            "after": store.history_at(0).unwrap(),
            "through": store.current_history().unwrap(),
        })
        .to_string(),
    )
    .unwrap();
    json!({
        "genesis": backend.genesis().unwrap(),
        "head": head,
        "positions": positions,
        "identities": identities,
        "versions": immutable_versions,
        "record_beyond_head": backend.record(head.state_ref.position + 1).unwrap(),
        "commands": store.commands_since(&request).unwrap().as_json(),
    })
}

fn assert_result_shape(matches: bool, diff: &Option<String>, text: &str) {
    let encoded: Value = serde_json::from_str(text).unwrap();
    if matches {
        assert!(diff.is_none());
        assert_eq!(encoded, json!({"matches": true}));
    } else {
        let reason = diff.as_ref().expect("non-match requires a string diff");
        assert!(!reason.trim().is_empty());
        assert_eq!(encoded, json!({"matches": false, "diff": reason}));
    }
}

fn read_attempt(id: &str, module: &Module, store: &Store<InMemoryBackend>) -> String {
    let attempt = json_fixture(&format!("stores/attempts/{id}.json"));
    assert_eq!(attempt["boundary"], "store_read");
    let targets: BTreeMap<String, String> =
        serde_json::from_value(attempt["targets"].clone()).unwrap();
    store
        .read(
            module,
            &ReadSource::Declared(attempt["read"].as_str().unwrap().into()),
            &targets,
            &attempt["input"],
            &attempt["context"],
            None,
        )
        .unwrap()
        .record
        .to_json_string()
}

fn read_pair(id: &str, module: &Module, store: &Store<InMemoryBackend>) {
    let entry = case(id);
    let original = fixture(entry["fixture"].as_str().unwrap());
    let claim: Value = serde_json::from_str(&original).unwrap();
    assert_eq!(claim["record_id"], entry["original_record_id"]);
    assert_eq!(claim["data_version"], entry["data_version"]);
    assert_eq!(claim["format"], entry["profile"]);
    assert_eq!(
        claim["data_version"],
        data_version(&store.store_id().unwrap(), &store.current().unwrap())
    );
    let before = canonical_contents(store);
    assert_eq!(
        format!("{}\n", read_attempt(id, module, store)),
        original,
        "actual public Store operation changed the captured original record"
    );
    let core = replay_read(module, &original);
    assert!(core.matches, "{id}: {:?}", core.diff);
    assert_result_shape(core.matches, &core.diff, &core.to_json_string());
    let backed = store.replay_read(module, &original).unwrap();
    assert_result_shape(backed.matches, &backed.diff, &backed.to_json_string());
    assert_eq!(canonical_contents(store), before);
    assert_eq!(fixture(entry["fixture"].as_str().unwrap()), original);
    assert!(backed.matches, "{id}: {:?}", backed.diff);
    assert_eq!(core.to_json_string(), backed.to_json_string());
    println!("COVERAGE022 {id} consumer_read original_evidence");
}

fn invocation_attempt(id: &str, module: &Module, store: &Store<InMemoryBackend>) -> String {
    let attempt = json_fixture(&format!("stores/attempts/{id}.json"));
    let document = attempt["document"].to_string();
    match attempt["boundary"].as_str().unwrap() {
        "invoke_document" => invoke_document(
            module,
            &document,
            &attempt["snapshot"].to_string(),
            attempt.get("host_context").filter(|value| !value.is_null()),
        )
        .unwrap()
        .to_json_string(),
        "store_intent" => store
            .invoke_intent(
                module,
                &document,
                &attempt["context"],
                "1970-01-01T00:00:00Z",
                None,
            )
            .unwrap()
            .record
            .to_json_string(),
        "store_invocation" => {
            let requested = RequestedInvocation::decode(&document).unwrap().0.unwrap();
            let fresh = store
                .invoke(module, &requested, "1970-01-01T00:00:00Z", None, None)
                .unwrap();
            assert!(
                fresh.bundle.is_none(),
                "read/refusal produced a fresh bundle"
            );
            fresh.record.to_json_string()
        }
        boundary => panic!("unknown captured attempt boundary: {boundary}"),
    }
}

fn invocation_pair(id: &str, module: &Module, store: &Store<InMemoryBackend>) -> Value {
    let entry = case(id);
    let original = fixture(entry["fixture"].as_str().unwrap());
    let claim: Value = serde_json::from_str(&original).unwrap();
    assert_eq!(claim["record_id"], entry["original_record_id"]);
    assert_eq!(claim["data_version"], entry["data_version"]);
    assert_eq!(claim["format"], entry["profile"]);
    assert_eq!(
        claim["data_version"],
        data_version(&store.store_id().unwrap(), &store.current().unwrap())
    );
    let before = canonical_contents(store);
    assert_eq!(
        format!("{}\n", invocation_attempt(id, module, store)),
        original,
        "actual public invocation operation changed the captured original record"
    );
    let core = replay_invocation(module, &original);
    assert_eq!(
        core.matches,
        entry["expected"]["core_invocation"].as_bool().unwrap(),
        "{id}: {:?}",
        core.diff
    );
    assert_result_shape(core.matches, &core.diff, &core.to_json_string());
    let backed = store.replay_invocation(module, &original).unwrap();
    assert_result_shape(backed.matches, &backed.diff, &backed.to_json_string());
    assert_eq!(canonical_contents(store), before);
    assert_eq!(fixture(entry["fixture"].as_str().unwrap()), original);
    assert_eq!(
        backed.matches,
        entry["expected"]["store_invocation"].as_bool().unwrap(),
        "{id}: {:?}",
        backed.diff
    );
    let repeated = store.replay_invocation(module, &original).unwrap();
    assert_eq!(repeated.to_json_string(), backed.to_json_string());
    assert_eq!(canonical_contents(store), before);
    if backed.matches {
        assert_eq!(core.to_json_string(), backed.to_json_string());
    }
    println!("COVERAGE022 {id} consumer_invocation original_evidence");
    claim
}

fn host_decode_refusal(id: &str) {
    let (module, store) = setup();
    let original = json_fixture(case(id)["fixture"].as_str().unwrap());
    assert_eq!(original["outcome"]["kind"], "pre_evaluation_refusal");
    assert_eq!(original["outcome"]["stage"], "DECODE");
    assert_eq!(
        original["outcome"]["decode_evidence"]["source_kind"],
        "invocation"
    );
    assert!(original["outcome"].get("record").is_none());
    assert!(
        original["outcome"]["decode_evidence"]
            .get("snapshot")
            .is_none(),
        "request decode archive cannot acquire an unrecorded caller Snapshot"
    );
    invocation_pair(id, &module, &store);
}

fn snapshot_decode_refusal(id: &str, code: &str, intent: bool) {
    let (module, store) = setup();
    let attempt = json_fixture(&format!("stores/attempts/{id}.json"));
    assert_eq!(!attempt["host_context"].is_null(), intent);
    let original = json_fixture(case(id)["fixture"].as_str().unwrap());
    assert_eq!(original["outcome"]["kind"], "pre_evaluation_refusal");
    assert_eq!(original["outcome"]["stage"], "DECODE");
    assert_eq!(
        original["outcome"]["decode_evidence"]["source_kind"],
        "documents"
    );
    assert_eq!(
        original["outcome"]["decode_evidence"]["snapshot"], attempt["snapshot"],
        "rejected Snapshot is retained as the original attempt"
    );
    assert!(original["outcome"].get("record").is_none());
    assert!(
        original["outcome"]["problems"]
            .as_array()
            .unwrap()
            .iter()
            .any(|problem| problem["code"] == code)
    );
    invocation_pair(id, &module, &store);
}

#[test]
fn facade_ordinary_semantic_and_binding_reads_retain_their_public_contract() {
    let (module, store) = setup();
    for id in [
        "C022-ordinary-read",
        "C022-semantic-read",
        "C022-binding-read",
    ] {
        read_pair(id, &module, &store);
        let entry = case(id);
        let claim = json_fixture(entry["fixture"].as_str().unwrap());
        assert!(claim.get("refused_request").is_none());
    }
}

#[test]
fn facade_store_input_array_refusal_preserves_original_transport_record() {
    let (module, store) = setup();
    read_pair("R022-01", &module, &store);
}

#[test]
fn facade_store_context_array_refusal_preserves_original_transport_record() {
    let (module, store) = setup();
    read_pair("R022-02", &module, &store);
}

#[test]
fn facade_host_input_array_refusal_preserves_invocation_origin() {
    host_decode_refusal("R022-03");
}

#[test]
fn facade_host_binding_shape_refusal_preserves_invocation_origin() {
    host_decode_refusal("R022-04");
}

#[test]
fn facade_intent_host_success_and_binding_refusals_keep_their_origins() {
    let (module, store) = setup();
    let intent = invocation_pair("C022-intent-decode", &module, &store);
    assert_eq!(
        intent["outcome"]["decode_evidence"]["source_kind"],
        "intent"
    );
    assert!(intent["outcome"].get("record").is_none());
    let evaluated = invocation_pair("C022-host-success", &module, &store);
    assert_eq!(evaluated["outcome"]["kind"], "evaluated");
    assert_eq!(evaluated["outcome"]["record"]["value"], 7);
    for id in ["C022-unknown-binding", "C022-wrong-type"] {
        let refused = invocation_pair(id, &module, &store);
        assert_eq!(refused["outcome"]["stage"], "BINDING");
        assert!(refused["outcome"].get("record").is_none());
        assert!(refused["outcome"].get("decode_evidence").is_none());
    }
}

#[test]
fn facade_malformed_host_snapshot_refusal_matches_without_state_promotion() {
    snapshot_decode_refusal(
        "P022-SNAPSHOT-REJECTED-malformed-host",
        "INVALID_SNAPSHOT",
        false,
    );
}

#[test]
fn facade_malformed_intent_snapshot_refusal_matches_without_state_promotion() {
    snapshot_decode_refusal(
        "P022-SNAPSHOT-REJECTED-malformed-intent",
        "INVALID_SNAPSHOT",
        true,
    );
}

#[test]
fn facade_contradictory_host_snapshot_refusal_matches_without_state_promotion() {
    snapshot_decode_refusal(
        "P022-SNAPSHOT-REJECTED-contradictory-host",
        "INCONSISTENT_FACTS",
        false,
    );
}

#[test]
fn facade_contradictory_intent_snapshot_refusal_matches_without_state_promotion() {
    snapshot_decode_refusal(
        "P022-SNAPSHOT-REJECTED-contradictory-intent",
        "INCONSISTENT_FACTS",
        true,
    );
}

#[test]
fn facade_truthful_sparse_snapshot_reproduces_original_unavailable_value() {
    let (module, store) = setup();
    let original = json_fixture("records/P022-SPARSE-truthful.json");
    assert_eq!(original["outcome"]["stage"], "DECODE");
    assert_eq!(
        original["outcome"]["problems"][0]["code"],
        "INCOMPLETE_SNAPSHOT"
    );
    assert!(original["outcome"].get("record").is_none());
    assert_eq!(
        original["outcome"]["decode_evidence"]["snapshot"]["entities"],
        json!([])
    );
    assert!(
        original["outcome"]["decode_evidence"]["snapshot"]["facts"]
            .get("universe")
            .is_none()
    );
    invocation_pair("P022-SPARSE-truthful", &module, &store);
}

#[test]
fn facade_false_sparse_existence_and_absence_claims_do_not_certify_history() {
    let (module, store) = setup();
    for id in [
        "P022-SPARSE-false-positive",
        "P022-SPARSE-false-absence",
        "P022-SPARSE-false-empty-universe",
    ] {
        let original = invocation_pair(id, &module, &store);
        assert_eq!(original["outcome"]["kind"], "pre_evaluation_refusal");
        assert!(original["outcome"].get("record").is_none());
        if id != "P022-SPARSE-false-positive" {
            assert_eq!(original["outcome"]["stage"], "BINDING");
            assert!(original["outcome"].get("decode_evidence").is_none());
        }
    }
}

fn historical_fixture(path: &str) -> String {
    std::fs::read_to_string(repository().join("tests/fixtures/replay/018").join(path)).unwrap()
}

fn historical_setup(id: &str) -> (Module, Store<InMemoryBackend>, Value) {
    let manifest: Value = serde_json::from_str(&historical_fixture("matrix.json")).unwrap();
    let row = manifest["rows"]
        .as_array()
        .unwrap()
        .iter()
        .find(|row| row["id"] == id)
        .unwrap();
    let spec = row["canonical_fixture"].clone();
    let module = admit(&historical_fixture(spec["module"].as_str().unwrap())).unwrap();
    let setup: Value =
        serde_json::from_str(&historical_fixture(spec["store_setup"].as_str().unwrap())).unwrap();
    let seeds = serde_json::from_value(setup["seed"].clone()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), seeds),
    )
    .unwrap();
    (module, store, spec)
}

fn historical_pair(module: &Module, store: &Store<InMemoryBackend>, spec: &Value) {
    let read = historical_fixture(spec["read_record"].as_str().unwrap());
    let invocation = historical_fixture(spec["invocation_record"].as_str().unwrap());
    let read_claim: Value = serde_json::from_str(&read).unwrap();
    let envelope: Value = serde_json::from_str(&invocation).unwrap();
    assert_eq!(read_claim["record_id"], spec["original_record_id"]);
    assert_eq!(envelope["record_id"], spec["original_invocation_record_id"]);
    assert_eq!(envelope["outcome"]["record"], read_claim);
    let before = canonical_contents(store);
    for replay in [
        replay_read(module, &read),
        replay_invocation(module, &invocation),
        store.replay_read(module, &read).unwrap(),
        store.replay_invocation(module, &invocation).unwrap(),
    ] {
        assert!(replay.matches, "{:?}", replay.diff);
        assert_result_shape(replay.matches, &replay.diff, &replay.to_json_string());
    }
    assert_eq!(canonical_contents(store), before);
    assert_eq!(
        historical_fixture(spec["read_record"].as_str().unwrap()),
        read
    );
    assert_eq!(
        historical_fixture(spec["invocation_record"].as_str().unwrap()),
        invocation
    );
}

#[test]
fn facade_historical_profiles_and_nested_reads_preserve_original_evidence() {
    for id in ["M07-D", "M08-H-D", "M08-C-D"] {
        let (module, store, spec) = historical_setup(id);
        historical_pair(&module, &store, &spec);
        println!("AUXILIARY022 consumer_historical_profile {id}");
    }
}

#[test]
fn facade_archived_inner_read_replays_after_writes_and_schema_migration() {
    let (module, mut store, spec) = historical_setup("M08-H-D");
    let initial = store.current().unwrap();
    let mut wire: Value =
        serde_json::from_str(&historical_fixture(spec["module"].as_str().unwrap())).unwrap();
    wire["ir_version"] = json!("0.7");
    wire.as_object_mut().unwrap().remove("commands");
    let loc = json!({"file":"022-consumer-history.beh","line":1});
    wire["actions"] = json!([{
        "name":"replace_measurement", "loc":loc,
        "params":[{"name":"c","role":"state","type":{"t":"entity","name":"Culture"}},
                  {"name":"n","role":"input","type":{"t":"int"}}],
        "preconditions":[], "postconditions":[],
        "effects":[{"target":{"param":"c","field":"measurements"},
                    "value":{"op":"param","param":"n","loc":loc},"loc":loc}]
    }]);
    let writer = admit(&wire.to_string()).unwrap();
    assert_eq!(
        behavior_engine::schema(&writer).hash,
        behavior_engine::schema(&module).hash
    );
    assert_ne!(writer.behavior_version(), module.behavior_version());
    for value in [8, 7] {
        let fresh = store
            .evaluate(
                &writer,
                "replace_measurement",
                &BTreeMap::from([("c".into(), "c1".into())]),
                &json!({"n":value}),
                &json!({}),
                "1970-01-01T00:00:00Z",
                None,
            )
            .unwrap();
        let bundle = fresh
            .bundle
            .expect("fresh ALLOW must have commit authority");
        store
            .commit(&writer, &bundle.evaluated_state, &bundle)
            .unwrap();
        historical_pair(&module, &store, &spec);
    }
    assert_eq!(store.current().unwrap().position, 2);
    assert_eq!(store.current().unwrap().state, initial.state);
    let mut target = wire.clone();
    target["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"tag","type":{"t":"int"},"loc":loc}));
    let target = admit(&target.to_string()).unwrap();
    let migration = json!({"migration_ir":"0.1","name":"add_tag",
        "source":behavior_engine::schema(&writer).hash,"target":behavior_engine::schema(&target).hash,
        "constants":[],"requirements":[],"retire":[],
        "transforms":[{"entity":"Culture","fields":{"tag":{"op":"lit","type":{"t":"int"},"value":1,"loc":loc}},"drops":[],"loc":loc}]});
    let migration =
        behavior_engine::migration::admit_migration(&writer, &target, &migration.to_string())
            .unwrap();
    store
        .migrate(&migration, &writer, &target, "1970-01-01T00:00:00Z", None)
        .unwrap();
    assert_eq!(store.current().unwrap().position, 3);
    historical_pair(&module, &store, &spec);
    println!("AUXILIARY022 consumer_archived_read_later_writes_migration");
}

#[test]
fn facade_authentic_decode_refusals_still_require_actual_store_anchors() {
    let (module, store) = setup();
    let at = store.current().unwrap();
    let lineage = store.store_id().unwrap();
    let before = canonical_contents(&store);
    for id in ["R022-03", "P022-SNAPSHOT-REJECTED-malformed-host"] {
        let original = json_fixture(&format!("stores/attempts/{id}.json"));
        for (name, coordinate) in [
            (
                "foreign-store",
                format!(
                    "store:sha256:{};state:{};position:0",
                    "0".repeat(64),
                    at.state
                ),
            ),
            (
                "wrong-state",
                format!("store:{lineage};state:sha256:{};position:0", "0".repeat(64)),
            ),
            (
                "future-position",
                format!("store:{lineage};state:{};position:1", at.state),
            ),
        ] {
            let mut attempt = original.clone();
            attempt["snapshot"]["data_version"] = json!(coordinate);
            let record = invoke_document(
                &module,
                &attempt["document"].to_string(),
                &attempt["snapshot"].to_string(),
                attempt.get("host_context").filter(|v| !v.is_null()),
            )
            .unwrap();
            let core = replay_invocation(&module, &record.to_json_string());
            assert!(core.matches, "{:?}", core.diff);
            let backed = store
                .replay_invocation(&module, &record.to_json_string())
                .unwrap();
            assert!(!backed.matches, "{id}/{name} accepted a false Store anchor");
            assert_result_shape(backed.matches, &backed.diff, &backed.to_json_string());
            assert_eq!(canonical_contents(&store), before);
            println!("AUXILIARY022 consumer_decode_anchor {id}/{name}");
        }
    }
}

#[test]
fn facade_enclosing_and_nested_substitutions_cannot_gain_replay_authority() {
    let (module, store) = setup();
    let original = fixture("records/C022-host-success.json");
    let before = canonical_contents(&store);
    let duplicate = format!(
        "{{\"format\":\"behavior.invocation_record.v1\",{}",
        &original[1..]
    );
    let mut substituted: Value = serde_json::from_str(&original).unwrap();
    substituted["outcome"]["record"] = json_fixture("records/R022-01.json");
    substituted.as_object_mut().unwrap().remove("record_id");
    let hash =
        behavior_engine::canonical::tagged_hash("behavior.invocation_record.v1", &substituted)
            .unwrap();
    substituted["record_id"] = json!(format!("invocation:{hash}"));
    for raw in [duplicate, substituted.to_string()] {
        let core = replay_invocation(&module, &raw);
        let backed = store.replay_invocation(&module, &raw).unwrap();
        assert!(!core.matches && !backed.matches);
        assert_result_shape(core.matches, &core.diff, &core.to_json_string());
        assert_result_shape(backed.matches, &backed.diff, &backed.to_json_string());
        assert_eq!(
            store
                .replay_invocation(&module, &raw)
                .unwrap()
                .to_json_string(),
            backed.to_json_string()
        );
        assert_eq!(canonical_contents(&store), before);
    }
    assert_eq!(fixture("records/C022-host-success.json"), original);
    println!("AUXILIARY022 consumer_enclosing_nested_substitutions");
}
