#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Core 018: the original audit counterexamples remain separately named.
//! Historical records are retained bytes, never fresh v2 records relabelled v1.
#[path = "../../behavior-core/tests/support/read_soundness.rs"]
mod audit_model;

use std::cell::Cell;
use std::collections::{BTreeMap, BTreeSet};
use std::path::PathBuf;

use behavior_core::invocation::RequestedInvocation;
use behavior_core::read::{ReadRecord, ReadSource, replay_read};
use behavior_core::record::ReplayResult;
use behavior_core::semantic::module::Module;
use behavior_store::documents::{
    EntityKey, EntityVersion, EvidencePolicy, Genesis, Head, RefChange, SeedEntity,
    TransitionRecord, data_version,
};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store};
use proptest::prelude::*;
use serde_json::{Value, json};

fn fixture_root() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures/replay/018")
}

fn fixture(path: &str) -> String {
    std::fs::read_to_string(fixture_root().join(path)).unwrap()
}

/// Compare all canonical contents reachable through the persistence contract,
/// including historical versions, schema/history coordinates and derived indexes.
/// Comparing the head alone would miss a write that leaves it unchanged.
fn snapshot<B: Backend>(store: &Store<B>) -> Value {
    let backend = store.backend();
    let genesis = backend.genesis().unwrap().unwrap();
    let head = backend.head().unwrap().unwrap();
    let mut positions = Vec::new();
    let mut all_keys = BTreeSet::new();
    let mut versions = BTreeMap::new();
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
        let mut states = Vec::new();
        for position in 0..=head.state_ref.position {
            let mut incoming = backend.incoming_at(&key, position).unwrap();
            incoming.sort();
            states.push(json!({
                "position": position,
                "version": backend.version_at(&key, position).unwrap(),
                "used": backend.used_at(&key, position).unwrap(),
                "incoming": incoming.iter().map(|edge| edge.to_json()).collect::<Vec<_>>(),
            }));
        }
        identities.push(json!({
            "key": key,
            "removed_at": backend.removed_at(&key).unwrap(),
            "states": states,
        }));
    }
    let versions: Vec<_> = versions
        .into_iter()
        .map(|((key, revision), value)| {
            assert_eq!(
                backend.version(&key, revision).unwrap().as_ref(),
                Some(&value)
            );
            value
        })
        .collect();
    let stream = behavior_store::commands::CommandStreamRequest::from_json(
        &json!({
            "format":"behavior.command_stream_request.v1", "after":store.history_at(0).unwrap(),
            "through":store.current_history().unwrap()
        })
        .to_string(),
    )
    .unwrap();
    let commands = store.commands_since(&stream).unwrap().as_json();
    json!({"genesis": genesis, "head": head, "positions": positions,
        "record_beyond_head": backend.record(head.state_ref.position + 1).unwrap(),
        "identities": identities, "versions": versions, "commands":commands})
}

fn audit_store() -> (Module, Store<InMemoryBackend>) {
    let module =
        behavior_core::admit(&audit_model::module(Some("state"), false).to_string()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(
            &module,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "Culture".into(),
                value: audit_model::value(0),
            }],
        ),
    )
    .unwrap();
    (module, store)
}

fn assert_audit_coordinate(store: &Store<InMemoryBackend>, module: &Module, record: &Value) {
    let at = store.current().unwrap();
    let schema = store.schema_at(&at).unwrap();
    assert_eq!(at.position, 0);
    assert_eq!(schema.hash, behavior_core::schema(module).hash);
    assert_eq!(
        record["data_version"],
        data_version(&store.store_id().unwrap(), &at)
    );
    assert_eq!(
        record["behavior_version"],
        behavior_core::semantic::types::hash_display(module.hash())
    );
}

#[test]
fn historical_wire08_v1_read_must_replay_against_its_exact_store_position() {
    let (module, store) = audit_store();
    let original = fixture("archives/audit016-wire08-v1-read.json");
    let archived: Value = serde_json::from_str(&original).unwrap();
    assert_eq!(archived["format"], "behavior.read_record.v1");
    assert_eq!(
        archived["record_id"],
        "read:sha256:f3071c1ca0e1402f032dc303f8fb52e6ff491ac622495acc8748ad275084bee3"
    );
    assert_eq!(archived["result"], "EVALUATION_ERROR");
    assert_audit_coordinate(&store, &module, &archived);
    assert!(ReadRecord::from_json(&original).is_ok());
    let before = snapshot(&store);

    let fresh = store
        .read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::from([("c".into(), "c1".into())]),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap();
    assert_eq!(fresh.record.as_json()["format"], "behavior.read_record.v2");
    assert_eq!(fresh.record.result(), "EVALUATION_ERROR");
    assert!(
        store
            .replay_read(&module, &fresh.record.to_json_string())
            .unwrap()
            .matches
    );
    let standalone = replay_read(&module, &original);
    assert!(
        standalone.matches,
        "standalone historical control: {:?}",
        standalone.diff
    );

    let backed = store.replay_read(&module, &original).unwrap();
    assert_eq!(
        snapshot(&store),
        before,
        "historical replay changed canonical Store contents"
    );
    assert_eq!(fixture("archives/audit016-wire08-v1-read.json"), original);
    assert!(
        backed.matches,
        "historical read must retain its recorded profile against Store: {:?}",
        backed.diff
    );
}

#[test]
fn historical_wire08_v1_inner_read_must_replay_as_store_invocation() {
    let (module, store) = audit_store();
    let original = fixture("archives/audit016-wire08-v1-invocation.json");
    let archived: Value = serde_json::from_str(&original).unwrap();
    assert_eq!(
        archived["record_id"],
        "invocation:sha256:a68e3ba9ecca66b87e0b4ec9747a1b3be8eeb548c92fa4d28f8277c89879866a"
    );
    assert_eq!(
        archived["outcome"]["record"]["format"],
        "behavior.read_record.v1"
    );
    assert_eq!(
        archived["outcome"]["record"]["record_id"],
        "read:sha256:f3071c1ca0e1402f032dc303f8fb52e6ff491ac622495acc8748ad275084bee3"
    );
    assert_audit_coordinate(&store, &module, &archived);
    let before = snapshot(&store);
    let raw = json!({"format":"behavior.invocation.v1","capability":"inspect",
        "bindings":{"c":{"entity":"Culture","id":"c1"}},"input":{},"context":{}});
    let requested = RequestedInvocation::decode(&raw.to_string())
        .unwrap()
        .0
        .unwrap();
    let fresh = store
        .invoke(&module, &requested, "1970-01-01T00:00:00Z", None, None)
        .unwrap();
    assert!(fresh.bundle.is_none());
    assert_eq!(
        fresh.record.as_json()["outcome"]["record"]["format"],
        "behavior.read_record.v2"
    );
    assert!(
        store
            .replay_invocation(&module, &fresh.record.to_json_string())
            .unwrap()
            .matches
    );
    let standalone = behavior_core::invocation::replay_invocation(&module, &original);
    assert!(
        standalone.matches,
        "standalone historical invocation control: {:?}",
        standalone.diff
    );

    let backed = store.replay_invocation(&module, &original).unwrap();
    assert_eq!(
        snapshot(&store),
        before,
        "invocation replay changed canonical Store contents"
    );
    assert_eq!(
        fixture("archives/audit016-wire08-v1-invocation.json"),
        original
    );
    assert!(
        backed.matches,
        "historical inner read must retain its recorded profile against Store: {:?}",
        backed.diff
    );
}

#[test]
fn store_replay_rejects_contradictory_duplicate_current_read_result() {
    let mut wire = audit_model::module(None, false);
    wire["reads"][0]["body"] =
        json!({"value":audit_model::op("count",vec![audit_model::select()])});
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(
            &module,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "Culture".into(),
                value: audit_model::value(1),
            }],
        ),
    )
    .unwrap();
    let before = snapshot(&store);
    let fresh = store
        .read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::new(),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap();
    let record = fresh.record;
    assert_eq!(record.as_json()["format"], "behavior.read_record.v2");
    assert_eq!(record.result(), "VALUE");
    assert_eq!(record.as_json()["value"], 1);
    let original = record.to_json_string();
    assert!(ReadRecord::from_json(&original).is_ok());
    assert!(replay_read(&module, &original).matches);
    assert!(store.replay_read(&module, &original).unwrap().matches);

    // Preserve the last value and original hash: map reduction would erase the contradiction.
    assert!(original.starts_with('{'));
    let contradictory = format!("{{\"result\":\"EVALUATION_ERROR\",{}", &original[1..]);
    let reduced: Value = serde_json::from_str(&contradictory).unwrap();
    assert_eq!(&reduced, record.as_json());
    assert!(ReadRecord::from_json(&contradictory).is_err());
    assert!(!replay_read(&module, &contradictory).matches);
    let backed = store.replay_read(&module, &contradictory).unwrap();
    assert_eq!(
        snapshot(&store),
        before,
        "duplicate replay changed canonical Store contents"
    );
    assert!(
        !backed.matches,
        "Store replay accepted contradictory duplicate result after lossy map reduction"
    );
}

fn json_fixture(path: &str) -> Value {
    serde_json::from_str(&fixture(path)).unwrap()
}

fn manifest() -> Value {
    let manifest = json_fixture("matrix.json");
    // This independent enumeration prevents missing cases in the manifest from
    // weakening the suite into testing only whatever happened to be listed.
    let expected = BTreeSet::from([
        ("M04-A", "0.4", "behavior.read_record.v1"),
        ("M05-A", "0.5", "behavior.read_record.v1"),
        ("M06-A", "0.6", "behavior.read_record.v1"),
        ("M07-D", "0.7", "behavior.read_record.v1"),
        ("M07-A", "0.7", "behavior.read_record.v1"),
        ("M08-H-D", "0.8", "behavior.read_record.v1"),
        ("M08-H-A", "0.8", "behavior.read_record.v1"),
        ("M08-C-D", "0.8", "behavior.read_record.v2"),
        ("M08-C-A", "0.8", "behavior.read_record.v2"),
    ]);
    let rows = manifest["rows"].as_array().unwrap();
    let actual: BTreeSet<_> = rows
        .iter()
        .map(|row| {
            (
                row["id"].as_str().unwrap(),
                row["module_wire"].as_str().unwrap(),
                row["profile"].as_str().unwrap(),
            )
        })
        .collect();
    assert_eq!(
        rows.len(),
        expected.len(),
        "duplicate or missing matrix row"
    );
    assert_eq!(actual, expected, "unknown or missing supported row/profile");
    let mut expected_cells = BTreeSet::new();
    let mut actual_cells = BTreeSet::new();
    for row in rows {
        let id = row["id"].as_str().unwrap();
        expected_cells.insert((id, "store_read"));
        if matches!(id, "M07-D" | "M08-H-D" | "M08-C-D") {
            expected_cells.insert((id, "store_invocation"));
        }
        for boundary in row["boundaries"].as_array().unwrap() {
            let boundary = boundary.as_str().unwrap();
            assert!(matches!(
                boundary,
                "core_read" | "core_invocation" | "store_read" | "store_invocation"
            ));
            if boundary.starts_with("store_") {
                actual_cells.insert((id, boundary));
            }
        }
    }
    assert_eq!(expected_cells.len(), 12);
    assert_eq!(
        actual_cells, expected_cells,
        "unsupported or missing Store boundary"
    );
    manifest
}

fn row(id: &str) -> Value {
    manifest()["rows"]
        .as_array()
        .unwrap()
        .iter()
        .find(|row| row["id"] == id)
        .unwrap()
        .clone()
}

fn setup(spec: &Value) -> (Module, Store<InMemoryBackend>) {
    let module = behavior_core::admit(&fixture(spec["module"].as_str().unwrap())).unwrap();
    let setup = json_fixture(spec["store_setup"].as_str().unwrap());
    assert_eq!(setup["evidence_policy"], "none");
    let seed: Vec<SeedEntity> = serde_json::from_value(setup["seed"].clone()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), seed),
    )
    .unwrap();
    (module, store)
}

fn core_replay(module: &Module, boundary: &str, original: &str) -> ReplayResult {
    match boundary {
        "store_read" => replay_read(module, original),
        "store_invocation" => behavior_core::invocation::replay_invocation(module, original),
        _ => panic!("not a Store boundary: {boundary}"),
    }
}

fn backed_replay<B: Backend>(
    store: &Store<B>,
    module: &Module,
    boundary: &str,
    original: &str,
) -> Result<ReplayResult, behavior_store::StoreError> {
    match boundary {
        "store_read" => store.replay_read(module, original),
        "store_invocation" => store.replay_invocation(module, original),
        _ => panic!("not a Store boundary: {boundary}"),
    }
}

fn paired_case(
    store: &Store<InMemoryBackend>,
    module: &Module,
    id: &str,
    boundary: &str,
    case: &str,
    original: &str,
    expected: bool,
) {
    let before = snapshot(store);
    let core = core_replay(module, boundary, original);
    let backed = backed_replay(store, module, boundary, original).unwrap();
    assert_eq!(
        core.matches, expected,
        "{id} {boundary} {case} Core: {:?}",
        core.diff
    );
    assert_eq!(
        backed.matches, expected,
        "{id} {boundary} {case} Store: {:?}",
        backed.diff
    );
    // Both inputs are the same canonical evidence and every additional Store
    // premise holds. Backend traces are deliberately outside this comparison.
    assert_eq!(
        backed.diff, core.diff,
        "{id} {boundary} {case} semantic diff diverged"
    );
    assert_eq!(
        snapshot(store),
        before,
        "{id} {boundary} {case} mutated Store"
    );
    println!("COVERAGE018 {id} {boundary} {case}");
}

fn matrix_profiles(id: &str) {
    let row = row(id);
    for (spec_key, case, result) in [
        ("canonical_fixture", "canonical", "VALUE"),
        ("error_fixture", "profile_error", "EVALUATION_ERROR"),
        (
            "binding_fixture",
            "profile_binding_refusal",
            "INVALID_BINDING",
        ),
    ] {
        let spec = &row[spec_key];
        let (module, store) = setup(spec);
        let original = fixture(spec["read_record"].as_str().unwrap());
        let record: Value = serde_json::from_str(&original).unwrap();
        let capture = json_fixture(spec["capture_metadata"].as_str().unwrap());
        assert_eq!(record["record_id"], capture["read_record_id"]);
        assert_eq!(record["format"], row["profile"]);
        assert_eq!(record["result"], result);
        assert_eq!(
            record["data_version"],
            data_version(&store.store_id().unwrap(), &store.current().unwrap())
        );
        paired_case(&store, &module, id, "store_read", case, &original, true);
        assert_eq!(fixture(spec["read_record"].as_str().unwrap()), original);
        if let Some(path) = spec["invocation_record"].as_str() {
            let invocation = fixture(path);
            let envelope: Value = serde_json::from_str(&invocation).unwrap();
            assert_eq!(envelope["record_id"], capture["invocation_record_id"]);
            if case == "profile_binding_refusal" {
                assert_eq!(envelope["outcome"]["kind"], "pre_evaluation_refusal");
                assert!(envelope["outcome"].get("record").is_none());
            } else {
                assert_eq!(envelope["outcome"]["record"], record);
            }
            paired_case(
                &store,
                &module,
                id,
                "store_invocation",
                case,
                &invocation,
                true,
            );
            assert_eq!(fixture(path), invocation);
        }
    }
    let spec = &row["canonical_fixture"];
    let (module, store) = setup(spec);
    let record = json_fixture(spec["read_record"].as_str().unwrap());
    let source = behavior_core::read::record_source(&module, &record).unwrap();
    let setup = json_fixture(spec["store_setup"].as_str().unwrap());
    let bindings: BTreeMap<String, String> =
        serde_json::from_value(setup["targets"].clone()).unwrap();
    let fresh = store
        .read(
            &module,
            &source,
            &bindings,
            &setup["input"],
            &setup["context"],
            None,
        )
        .unwrap();
    let fresh_profile = if row["module_wire"] == "0.8" {
        "behavior.read_record.v2"
    } else {
        "behavior.read_record.v1"
    };
    assert_eq!(fresh.record.as_json()["format"], fresh_profile);
    assert_eq!(fresh.record.as_json()["value"], 7);
    assert_eq!(
        fresh.record.record_id(),
        json_fixture(spec["capture_metadata"].as_str().unwrap())["fresh_read_record_id"]
            .as_str()
            .unwrap()
    );
    if row["module_wire"] == "0.8" {
        paired_case(
            &store,
            &module,
            id,
            "store_read",
            "fresh_default",
            &fresh.record.to_json_string(),
            true,
        );
        if spec["invocation_record"].is_string() {
            let requested = RequestedInvocation::decode(&setup["invocation"].to_string())
                .unwrap()
                .0
                .unwrap();
            let invoked = store
                .invoke(&module, &requested, "1970-01-01T00:00:00Z", None, None)
                .unwrap();
            assert!(invoked.bundle.is_none());
            assert_eq!(
                invoked.record.as_json()["outcome"]["record"]["format"],
                fresh_profile
            );
            paired_case(
                &store,
                &module,
                id,
                "store_invocation",
                "fresh_default",
                &invoked.record.to_json_string(),
                true,
            );
        }
    }
}

macro_rules! matrix_test {
    ($name:ident, $row:literal) => {
        #[test]
        fn $name() {
            matrix_profiles($row);
        }
    };
}
matrix_test!(store_matrix_m04_ad_hoc_v1, "M04-A");
matrix_test!(store_matrix_m05_ad_hoc_v1, "M05-A");
matrix_test!(store_matrix_m06_ad_hoc_v1, "M06-A");
matrix_test!(store_matrix_m07_declared_v1, "M07-D");
matrix_test!(store_matrix_m07_ad_hoc_v1, "M07-A");
matrix_test!(store_matrix_m08_declared_historical_v1, "M08-H-D");
matrix_test!(store_matrix_m08_ad_hoc_historical_v1, "M08-H-A");
matrix_test!(store_matrix_m08_declared_current_v2, "M08-C-D");
matrix_test!(store_matrix_m08_ad_hoc_current_v2, "M08-C-A");

#[test]
fn store_matrix_preserves_profile_defined_provenance_and_snapshot() {
    for row in manifest()["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["error_fixture"];
        let (module, store) = setup(spec);
        let mut relocated = json_fixture(spec["module"].as_str().unwrap());
        audit_model::relocate(&mut relocated);
        let relocated = behavior_core::admit(&relocated.to_string()).unwrap();
        assert_eq!(module.behavior_version(), relocated.behavior_version());
        assert_eq!(
            behavior_core::schema(&module).hash,
            behavior_core::schema(&relocated).hash
        );
        let current = row["profile"] == "behavior.read_record.v2";
        let case = if current {
            "current_detached_diagnostics"
        } else {
            "legacy_provenance"
        };
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            if let Some(path) = spec[key].as_str() {
                // A retained ad-hoc definition supplies its original locations;
                // relocating only the module cannot alter those historical inputs.
                let expected_match = current || row["source"] == "ad_hoc";
                paired_case(
                    &store,
                    &relocated,
                    id,
                    boundary,
                    case,
                    &fixture(path),
                    expected_match,
                );
            }
        }
        if current {
            let spec = &row["canonical_fixture"];
            let (module, store) = setup(spec);
            let expected = json_fixture(spec["snapshot"].as_str().unwrap());
            for (boundary, key) in [
                ("store_read", "read_record"),
                ("store_invocation", "invocation_record"),
            ] {
                if let Some(path) = spec[key].as_str() {
                    let original = fixture(path);
                    let document: Value = serde_json::from_str(&original).unwrap();
                    let read = if boundary == "store_read" {
                        &document
                    } else {
                        &document["outcome"]["record"]
                    };
                    assert_eq!(read["facts"], expected["facts"]);
                    paired_case(
                        &store,
                        &module,
                        id,
                        boundary,
                        "current_complete_snapshot",
                        &original,
                        true,
                    );
                }
            }
        }
    }
}

#[test]
fn store_unsupported_profile_and_format_combinations_remain_nonmatching() {
    for id in ["M04-A", "M05-A", "M06-A", "M07-A", "M07-D"] {
        let row = row(id);
        let spec = &row["canonical_fixture"];
        let (module, store) = setup(spec);
        let mut record = json_fixture(spec["read_record"].as_str().unwrap());
        record["format"] = json!("behavior.read_record.v2");
        let before = snapshot(&store);
        assert!(!replay_read(&module, &record.to_string()).matches);
        assert!(
            !store
                .replay_read(&module, &record.to_string())
                .unwrap()
                .matches
        );
        assert_eq!(snapshot(&store), before);
        println!(
            "UNSUPPORTED018 U03-{} store_read",
            row["module_wire"].as_str().unwrap()
        );
        if let Some(path) = spec["invocation_record"].as_str() {
            let mut invocation = json_fixture(path);
            invocation["outcome"]["record"]["format"] = json!("behavior.read_record.v2");
            assert!(
                !store
                    .replay_invocation(&module, &invocation.to_string())
                    .unwrap()
                    .matches
            );
            assert_eq!(snapshot(&store), before);
            println!("UNSUPPORTED018 U03-0.7 store_invocation");
        }
    }
    let row = row("M08-C-D");
    let spec = &row["canonical_fixture"];
    let (module, store) = setup(spec);
    for (boundary, key, family) in [
        ("store_read", "read_record", "U04"),
        ("store_invocation", "invocation_record", "U05"),
    ] {
        for format in ["missing", "unknown"] {
            let mut document = json_fixture(spec[key].as_str().unwrap());
            if format == "missing" {
                document.as_object_mut().unwrap().remove("format");
            } else {
                document["format"] = json!("behavior.unsupported_record.v9");
            }
            let before = snapshot(&store);
            assert!(!core_replay(&module, boundary, &document.to_string()).matches);
            let backed = backed_replay(&store, &module, boundary, &document.to_string()).unwrap();
            assert!(!backed.matches, "{boundary} {format}: {:?}", backed.diff);
            assert_eq!(snapshot(&store), before);
            println!("UNSUPPORTED018 {family}-{format} {boundary}");
        }
    }
}

#[test]
fn ad_hoc_reads_do_not_become_invocation_capabilities() {
    for id in ["M07-A", "M08-H-A", "M08-C-A"] {
        let row = row(id);
        let (module, store) = setup(&row["canonical_fixture"]);
        assert!(module.read("inspect").is_none());
        let requested = RequestedInvocation::decode(
            &json!({
                "format":"behavior.invocation.v1", "capability":"inspect", "bindings":{},
                "input":{}, "context":{}
            })
            .to_string(),
        )
        .unwrap()
        .0
        .unwrap();
        let before = snapshot(&store);
        let result = store
            .invoke(&module, &requested, "1970-01-01T00:00:00Z", None, None)
            .unwrap();
        assert!(result.bundle.is_none());
        let record = result.record.as_json();
        assert_eq!(record["outcome"]["kind"], "pre_evaluation_refusal");
        assert!(record["outcome"].get("record").is_none());
        assert!(
            record["outcome"]["problems"]
                .as_array()
                .unwrap()
                .iter()
                .any(|problem| problem["code"] == "UNKNOWN_CAPABILITY")
        );
        assert!(
            store
                .replay_invocation(&module, &result.record.to_json_string())
                .unwrap()
                .matches
        );
        assert_eq!(snapshot(&store), before);
    }
    println!("UNSUPPORTED018 U07-ad_hoc store_invocation");
}

#[test]
fn historical_wire08_v1_replay_uses_its_original_position_after_writes_and_migration() {
    let row = row("M08-H-D");
    let spec = &row["canonical_fixture"];
    let (module, mut store) = setup(spec);
    let original_read = fixture(spec["read_record"].as_str().unwrap());
    let original_invocation = fixture(spec["invocation_record"].as_str().unwrap());
    let initial = store.current().unwrap();

    // This is a v1 lineage. Its later writer uses the supported Wire 0.7
    // history contract, while the retained read remains historical Wire 0.8/v1.
    // Equal schemas permit another behavior to write; they never authorize it
    // to reinterpret the archived behavior or substitute a history position.
    let mut writer = json_fixture(spec["module"].as_str().unwrap());
    writer["ir_version"] = json!("0.7");
    writer.as_object_mut().unwrap().remove("commands");
    writer["actions"] = json!([{
        "name":"replace_measurement", "loc":audit_model::loc(),
        "params":[{"name":"c","role":"state","type":{"t":"entity","name":"Culture"}},
                  {"name":"n","role":"input","type":{"t":"int"}}],
        "preconditions":[], "postconditions":[],
        "effects":[{"target":{"param":"c","field":"measurements"},
                    "value":{"op":"param","param":"n","loc":audit_model::loc()},
                    "loc":audit_model::loc()}]
    }]);
    let writer = behavior_core::admit(&writer.to_string()).unwrap();
    assert_ne!(writer.behavior_version(), module.behavior_version());
    assert_eq!(
        behavior_core::schema(&writer).hash,
        behavior_core::schema(&module).hash
    );
    for measurement in [8, 7] {
        let evaluation = store
            .evaluate(
                &writer,
                "replace_measurement",
                &BTreeMap::from([("c".into(), "c1".into())]),
                &json!({"n":measurement}),
                &json!({}),
                "1970-01-01T00:00:00Z",
                None,
            )
            .unwrap();
        let bundle = evaluation.bundle.expect("write control must be allowed");
        store
            .commit(&writer, &bundle.evaluated_state, &bundle)
            .unwrap();
    }
    let after_writes = store.current().unwrap();
    assert_eq!(after_writes.position, 2);
    assert_eq!(
        after_writes.state, initial.state,
        "equivalent contents must retain StateId"
    );
    assert_ne!(store.history_at(2).unwrap(), store.history_at(0).unwrap());

    let mut target = behavior_core::serialize::to_wire_value(&writer);
    target["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"tag","type":{"t":"int"},"loc":audit_model::loc()}));
    let target = behavior_core::admit(&target.to_string()).unwrap();
    let migration = json!({"migration_ir":"0.1", "name":"add_tag",
        "source":behavior_core::schema(&module).hash, "target":behavior_core::schema(&target).hash,
        "constants":[], "requirements":[], "retire":[],
        "transforms":[{"entity":"Culture","fields":{"tag":audit_model::integer(1)},
                       "drops":[],"loc":audit_model::loc()}]});
    let migration =
        behavior_core::migration::admit_migration(&writer, &target, &migration.to_string())
            .unwrap();
    store
        .migrate(&migration, &writer, &target, "1970-01-01T00:00:00Z", None)
        .unwrap();
    assert_eq!(store.current().unwrap().position, 3);
    assert_ne!(
        store.schema_at(&store.current().unwrap()).unwrap().hash,
        store.schema_at(&initial).unwrap().hash
    );
    let before_replay = snapshot(&store);
    for (boundary, original) in [
        ("store_read", &original_read),
        ("store_invocation", &original_invocation),
    ] {
        let standalone = core_replay(&module, boundary, original);
        assert!(
            standalone.matches,
            "historical standalone control: {:?}",
            standalone.diff
        );
        let backed = backed_replay(&store, &module, boundary, original).unwrap();
        assert!(
            backed.matches,
            "historical {boundary} after writes/migration: {:?}",
            backed.diff
        );
        assert_eq!(backed.diff, standalone.diff);
        assert!(
            !backed_replay(&store, &target, boundary, original)
                .unwrap()
                .matches,
            "current schema/behavior cannot reinterpret the archived read"
        );
        assert_eq!(snapshot(&store), before_replay);
    }
    assert_eq!(
        fixture(spec["read_record"].as_str().unwrap()),
        original_read
    );
    assert_eq!(
        fixture(spec["invocation_record"].as_str().unwrap()),
        original_invocation
    );
    println!("AUXILIARY018 historical_v1_after_writes_and_migration");
}

fn raw_prefix(original: &str, key_literal: &str, value_literal: &str) -> String {
    let original = original.trim();
    assert!(original.starts_with('{'));
    format!("{{{key_literal}:{value_literal},{}", &original[1..])
}

fn reversed_object_text(value: &Value) -> String {
    match value {
        Value::Object(object) => format!(
            "{{{}}}",
            object
                .iter()
                .rev()
                .map(|(key, value)| format!(
                    "{}:{}",
                    serde_json::to_string(key).unwrap(),
                    reversed_object_text(value)
                ))
                .collect::<Vec<_>>()
                .join(",")
        ),
        Value::Array(items) => format!(
            "[{}]",
            items
                .iter()
                .map(reversed_object_text)
                .collect::<Vec<_>>()
                .join(",")
        ),
        other => other.to_string(),
    }
}

fn deterministic_raw_nonmatch(
    store: &Store<InMemoryBackend>,
    module: &Module,
    id: &str,
    boundary: &str,
    case: &str,
    raw: &str,
) {
    let before = snapshot(store);
    let core = core_replay(module, boundary, raw);
    assert!(
        !core.matches,
        "{id} {boundary} {case} Core accepted malformed evidence"
    );
    assert!(core.diff.as_ref().is_some_and(|diff| !diff.is_empty()));
    let first = backed_replay(store, module, boundary, raw).unwrap();
    let repeated = backed_replay(store, module, boundary, raw).unwrap();
    assert!(
        !first.matches,
        "{id} {boundary} {case} Store accepted malformed evidence"
    );
    assert!(first.diff.as_ref().is_some_and(|diff| !diff.is_empty()));
    assert_eq!(
        first.to_json_string(),
        repeated.to_json_string(),
        "nondeterministic refusal"
    );
    assert_eq!(
        first.to_json_string(),
        core.to_json_string(),
        "shared raw boundary differs"
    );
    assert_eq!(
        snapshot(store),
        before,
        "raw replay mutated authoritative Store contents"
    );
}

#[test]
fn store_raw_matrix_rejects_ambiguity_before_lossy_object_reduction() {
    for row in manifest()["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["canonical_fixture"];
        let (module, store) = setup(spec);
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            let Some(path) = spec[key].as_str() else {
                continue;
            };
            let original = fixture(path);
            let canonical: Value = serde_json::from_str(&original).unwrap();
            assert!(
                backed_replay(&store, &module, boundary, &original)
                    .unwrap()
                    .matches
            );
            let root_key = if boundary == "store_read" {
                "\"result\""
            } else {
                "\"capability\""
            };
            let nested = if boundary == "store_read" {
                assert!(original.contains("\"read\":{"));
                original.replacen("\"read\":{", "\"read\":{\"name\":\"contradictory\",", 1)
            } else {
                assert!(original.contains("\"record\":{"));
                original.replacen(
                    "\"record\":{",
                    "\"record\":{\"result\":\"EVALUATION_ERROR\",",
                    1,
                )
            };
            for (case, raw) in [
                (
                    "root_duplicate",
                    raw_prefix(&original, root_key, "\"contradictory\""),
                ),
                ("nested_duplicate", nested),
                (
                    "equal_duplicate",
                    raw_prefix(&original, "\"format\"", &canonical["format"].to_string()),
                ),
                (
                    "escaped_duplicate",
                    raw_prefix(
                        &original,
                        "\"\\u0066ormat\"",
                        &canonical["format"].to_string(),
                    ),
                ),
                (
                    "retained_value_attack",
                    raw_prefix(&original, "\"record_id\"", "\"forged_identity\""),
                ),
            ] {
                // Every attack reduces to exactly the legitimate object under
                // last-key parsing, including its original semantic identity.
                let reduced: Value = serde_json::from_str(&raw).unwrap();
                assert_eq!(
                    reduced, canonical,
                    "attack did not retain original last values/hash"
                );
                deterministic_raw_nonmatch(&store, &module, id, boundary, case, &raw);
                println!("COVERAGE018 {id} {boundary} {case}");
            }
            let truncated = original.trim().strip_suffix('}').unwrap();
            deterministic_raw_nonmatch(
                &store,
                &module,
                id,
                boundary,
                "malformed_syntax",
                truncated,
            );
            println!("COVERAGE018 {id} {boundary} malformed_syntax");
            assert_eq!(fixture(path), original);
        }
    }
}

#[test]
fn store_matrix_unknown_fields_numeric_forms_and_rehashed_contradictions_nonmatch() {
    for row in manifest()["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["canonical_fixture"];
        let (module, store) = setup(spec);
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            let Some(path) = spec[key].as_str() else {
                continue;
            };
            let original = fixture(path);
            let mut unknown: Value = serde_json::from_str(&original).unwrap();
            unknown["unrecognized"] = json!(true);
            deterministic_raw_nonmatch(
                &store,
                &module,
                id,
                boundary,
                "unknown_field_numeric",
                &unknown.to_string(),
            );
            assert!(original.contains("\"value\":7"));
            for numeric in ["7.0", "7e0", "7e99"] {
                let raw = original.replacen("\"value\":7", &format!("\"value\":{numeric}"), 1);
                deterministic_raw_nonmatch(
                    &store,
                    &module,
                    id,
                    boundary,
                    "unknown_field_numeric",
                    &raw,
                );
            }
            // A freshly computed content identity does not make a false
            // semantic claim equivalent to the evaluator's result.
            let mut contradicted: Value = serde_json::from_str(&original).unwrap();
            if boundary == "store_read" {
                contradicted["value"] = json!(8);
                contradicted["record_id"] =
                    json!(behavior_core::read::record_id(&contradicted).unwrap());
            } else {
                let inner = &mut contradicted["outcome"]["record"];
                inner["value"] = json!(8);
                inner["record_id"] = json!(behavior_core::read::record_id(inner).unwrap());
                contradicted["outcome"]["record_id"] =
                    contradicted["outcome"]["record"]["record_id"].clone();
                contradicted.as_object_mut().unwrap().remove("record_id");
                let hash = behavior_core::canonical::tagged_hash(
                    "behavior.invocation_record.v1",
                    &contradicted,
                )
                .unwrap();
                contradicted["record_id"] = json!(format!("invocation:{hash}"));
            }
            deterministic_raw_nonmatch(
                &store,
                &module,
                id,
                boundary,
                "rehashed_contradiction",
                &contradicted.to_string(),
            );
            println!("COVERAGE018 {id} {boundary} unknown_field_numeric");
            assert_eq!(fixture(path), original);
        }
    }
}

#[test]
fn store_matrix_whitespace_and_object_order_preserve_original_identity() {
    for row in manifest()["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["canonical_fixture"];
        let (module, store) = setup(spec);
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            let Some(path) = spec[key].as_str() else {
                continue;
            };
            let original = fixture(path);
            let canonical: Value = serde_json::from_str(&original).unwrap();
            for (case, raw) in [
                (
                    "whitespace",
                    format!(
                        " \n\t{}\r\n ",
                        serde_json::to_string_pretty(&canonical).unwrap()
                    ),
                ),
                ("object_key_order", reversed_object_text(&canonical)),
            ] {
                let decoded: Value = serde_json::from_str(&raw).unwrap();
                assert_eq!(decoded, canonical);
                assert_eq!(decoded["record_id"], canonical["record_id"]);
                paired_case(&store, &module, id, boundary, case, &raw, true);
            }
            assert_eq!(fixture(path), original);
        }
    }
}

proptest! {
    #![proptest_config(ProptestConfig::with_cases(32))]
    #[test]
    fn store_replay_formatting_property_preserves_semantics(
        row_index in 0usize..9, invocation in any::<bool>(),
        indentation in 0usize..6, line_breaks in 0usize..5, reverse in any::<bool>()
    ) {
        let manifest = manifest();
        let row = &manifest["rows"][row_index];
        let spec = &row["canonical_fixture"];
        let boundary = if invocation && spec["invocation_record"].is_string() {
            "store_invocation"
        } else { "store_read" };
        let key = if boundary == "store_invocation" { "invocation_record" } else { "read_record" };
        let original = fixture(spec[key].as_str().unwrap());
        let canonical: Value = serde_json::from_str(&original).unwrap();
        let body = if reverse { reversed_object_text(&canonical) } else {
            serde_json::to_string_pretty(&canonical).unwrap()
        };
        let raw = format!("{}{}{}{}", " ".repeat(indentation), "\n".repeat(line_breaks), body, "\t".repeat(indentation));
        let (module, store) = setup(spec);
        let before = snapshot(&store);
        let replay = backed_replay(&store, &module, boundary, &raw).unwrap();
        prop_assert!(replay.matches, "{id} {boundary}: {diff:?}", id=row["id"], boundary=boundary, diff=&replay.diff);
        prop_assert!(replay.diff.is_none());
        prop_assert_eq!(snapshot(&store), before);
        let decoded: Value = serde_json::from_str(&raw).unwrap();
        prop_assert_eq!(&decoded["record_id"], &canonical["record_id"]);
        prop_assert_eq!(decoded, canonical);
    }
}

fn reseal(document: &mut Value, boundary: &str) {
    if boundary == "store_read" {
        document["record_id"] = json!(behavior_core::read::record_id(document).unwrap());
    } else {
        if document["outcome"].get("record").is_some() {
            reseal(&mut document["outcome"]["record"], "store_read");
            document["outcome"]["record_id"] = document["outcome"]["record"]["record_id"].clone();
        }
        document.as_object_mut().unwrap().remove("record_id");
        let hash = behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", document)
            .unwrap();
        document["record_id"] = json!(format!("invocation:{hash}"));
    }
}

fn set_recorded_data_version(document: &mut Value, boundary: &str, value: &str) {
    document["data_version"] = json!(value);
    if boundary == "store_invocation" && document["outcome"].get("record").is_some() {
        document["outcome"]["record"]["data_version"] = json!(value);
    }
}

fn read_claim<'a>(document: &'a mut Value, boundary: &str) -> &'a mut Value {
    if boundary == "store_read" {
        document
    } else {
        &mut document["outcome"]["record"]
    }
}

fn store_specific_nonmatch<B: Backend>(
    store: &Store<B>,
    module: &Module,
    boundary: &str,
    document: &Value,
) {
    // A self-consistent standalone claim is not evidence about this Store.
    let standalone = core_replay(module, boundary, &document.to_string());
    assert!(
        standalone.matches,
        "standalone premise did not hold: {:?}",
        standalone.diff
    );
    let before = snapshot(store);
    let backed = backed_replay(store, module, boundary, &document.to_string()).unwrap();
    assert!(!backed.matches, "Store-specific contradiction was accepted");
    assert!(backed.diff.as_ref().is_some_and(|diff| !diff.is_empty()));
    assert_eq!(snapshot(store), before);
}

fn writer07(spec: &Value) -> Module {
    let mut writer = json_fixture(spec["module"].as_str().unwrap());
    writer["ir_version"] = json!("0.7");
    writer.as_object_mut().unwrap().remove("commands");
    writer["actions"] = json!([{
        "name":"replace_measurement", "loc":audit_model::loc(),
        "params":[{"name":"c","role":"state","type":{"t":"entity","name":"Culture"}},
                  {"name":"n","role":"input","type":{"t":"int"}}],
        "preconditions":[],"postconditions":[],
        "effects":[{"target":{"param":"c","field":"measurements"},
                    "value":{"op":"param","param":"n","loc":audit_model::loc()},"loc":audit_model::loc()}]
    }]);
    behavior_core::admit(&writer.to_string()).unwrap()
}

fn advanced_store(spec: &Value) -> (Module, Store<InMemoryBackend>, Module) {
    let (module, mut store) = setup(spec);
    let writer = writer07(spec);
    assert_eq!(
        behavior_core::schema(&module).hash,
        behavior_core::schema(&writer).hash
    );
    for n in [8, 7] {
        let result = store
            .evaluate(
                &writer,
                "replace_measurement",
                &BTreeMap::from([("c".into(), "c1".into())]),
                &json!({"n":n}),
                &json!({}),
                "1970-01-01T00:00:00Z",
                None,
            )
            .unwrap();
        let candidate = result.bundle.unwrap();
        store
            .commit(&writer, &candidate.evaluated_state, &candidate)
            .unwrap();
    }
    assert_eq!(
        store.state_at(0).unwrap().state,
        store.state_at(2).unwrap().state
    );
    assert_ne!(
        store.state_at(0).unwrap().state,
        store.state_at(1).unwrap().state
    );
    let mut target = behavior_core::serialize::to_wire_value(&writer);
    target["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"tag","type":{"t":"int"},"loc":audit_model::loc()}));
    let target = behavior_core::admit(&target.to_string()).unwrap();
    let migration = json!({"migration_ir":"0.1", "name":"add_tag",
        "source":behavior_core::schema(&writer).hash,"target":behavior_core::schema(&target).hash,
        "constants":[],"requirements":[],"retire":[],
        "transforms":[{"entity":"Culture","fields":{"tag":audit_model::integer(1)},
                       "drops":[],"loc":audit_model::loc()}]});
    let migration =
        behavior_core::migration::admit_migration(&writer, &target, &migration.to_string())
            .unwrap();
    store
        .migrate(&migration, &writer, &target, "1970-01-01T00:00:00Z", None)
        .unwrap();
    assert_eq!(store.current().unwrap().position, 3);
    (module, store, target)
}

#[test]
fn store_matrix_requires_exact_behavior_and_read_identity() {
    for row in manifest()["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["canonical_fixture"];
        let (module, store) = setup(spec);
        // The writer's extra action changes behavior while retaining exactly
        // the same schema. Schema equivalence cannot authorize replay semantics.
        let other = writer07(spec);
        assert_eq!(
            behavior_core::schema(&other).hash,
            behavior_core::schema(&module).hash
        );
        assert_ne!(other.behavior_version(), module.behavior_version());
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            let Some(path) = spec[key].as_str() else {
                continue;
            };
            let original = fixture(path);
            let before = snapshot(&store);
            assert!(!core_replay(&other, boundary, &original).matches);
            assert!(
                !backed_replay(&store, &other, boundary, &original)
                    .unwrap()
                    .matches
            );
            assert_eq!(snapshot(&store), before);
            let mut wrong: Value = serde_json::from_str(&original).unwrap();
            wrong["behavior_version"] = json!(other.behavior_version());
            deterministic_raw_nonmatch(
                &store,
                &module,
                id,
                boundary,
                "wrong_behavior",
                &wrong.to_string(),
            );
            println!("COVERAGE018 {id} {boundary} wrong_behavior");
            println!("COVERAGE018 U08-behavior_hash {boundary} refusal");
            for field in ["hash", "name"] {
                let mut wrong: Value = serde_json::from_str(&original).unwrap();
                read_claim(&mut wrong, boundary)["read"][field] = if field == "hash" {
                    json!(format!("sha256:{}", "b".repeat(64)))
                } else {
                    json!("not_the_recorded_read")
                };
                if field == "hash" {
                    deterministic_raw_nonmatch(
                        &store,
                        &module,
                        id,
                        boundary,
                        "wrong_read_identity",
                        &wrong.to_string(),
                    );
                } else {
                    // An unknown declaration has no resolved typed parameters.
                    // Store reconstruction and standalone captured evaluation
                    // therefore do not establish identical semantic inputs;
                    // each boundary must deterministically reject the claim,
                    // but their first diagnostic need not be the same.
                    let raw = wrong.to_string();
                    let core = core_replay(&module, boundary, &raw);
                    let repeated_core = core_replay(&module, boundary, &raw);
                    assert!(!core.matches);
                    assert!(core.diff.as_ref().is_some_and(|diff| !diff.is_empty()));
                    assert_eq!(core.to_json_string(), repeated_core.to_json_string());
                    let backed = backed_replay(&store, &module, boundary, &raw).unwrap();
                    let repeated_backed = backed_replay(&store, &module, boundary, &raw).unwrap();
                    assert!(!backed.matches);
                    assert!(backed.diff.as_ref().is_some_and(|diff| !diff.is_empty()));
                    assert_eq!(backed.to_json_string(), repeated_backed.to_json_string());
                    assert_eq!(snapshot(&store), before);
                }
                println!("COVERAGE018 U08-read_{field} {boundary} refusal");
            }
            println!("COVERAGE018 {id} {boundary} wrong_read_identity");
            assert!(
                backed_replay(&store, &module, boundary, &original)
                    .unwrap()
                    .matches
            );
        }
    }
}

#[test]
fn store_matrix_checks_lineage_state_position_and_historical_schema() {
    for row in manifest()["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["canonical_fixture"];
        let (module, store, target) = advanced_store(spec);
        let before = snapshot(&store);
        let at0 = store.state_at(0).unwrap();
        let at2 = store.state_at(2).unwrap();
        let at3 = store.state_at(3).unwrap();
        let lineage = store.store_id().unwrap();
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            let Some(path) = spec[key].as_str() else {
                continue;
            };
            let original = fixture(path);
            assert!(
                backed_replay(&store, &module, boundary, &original)
                    .unwrap()
                    .matches
            );
            for (case, altered) in [
                (
                    "foreign_store",
                    format!(
                        "store:sha256:{};state:{};position:0",
                        "d".repeat(64),
                        at0.state
                    ),
                ),
                (
                    "wrong_state",
                    format!("store:{lineage};state:sha256:{};position:0", "e".repeat(64)),
                ),
                (
                    "wrong_position",
                    format!("store:{lineage};state:{};position:1", at0.state),
                ),
                ("wrong_schema", data_version(&lineage, &at3)),
            ] {
                let mut substituted: Value = serde_json::from_str(&original).unwrap();
                set_recorded_data_version(&mut substituted, boundary, &altered);
                reseal(&mut substituted, boundary);
                store_specific_nonmatch(&store, &module, boundary, &substituted);
                println!("COVERAGE018 {id} {boundary} {case}");
                println!("COVERAGE018 U09-{case} {boundary} refusal");
            }
            assert_ne!(
                behavior_core::schema(&target).hash,
                behavior_core::schema(&module).hash
            );

            // A position is part of the immutable claim's identity. Keeping
            // the old identity while moving to equivalent contents refuses.
            let mut equivalent: Value = serde_json::from_str(&original).unwrap();
            set_recorded_data_version(&mut equivalent, boundary, &data_version(&lineage, &at2));
            assert!(
                !backed_replay(&store, &module, boundary, &equivalent.to_string())
                    .unwrap()
                    .matches
            );
            // Resealing creates a different legitimate claim; replay is not
            // authentication of when a host originally observed equal contents.
            reseal(&mut equivalent, boundary);
            assert_ne!(
                equivalent["record_id"],
                serde_json::from_str::<Value>(&original).unwrap()["record_id"]
            );
            assert!(core_replay(&module, boundary, &equivalent.to_string()).matches);
            assert!(
                backed_replay(&store, &module, boundary, &equivalent.to_string())
                    .unwrap()
                    .matches
            );
            assert_eq!(snapshot(&store), before);
            assert_eq!(fixture(path), original);
        }
    }
}

#[test]
fn store_matrix_rejects_forged_state_facts_observations_and_binding_claims() {
    for row in manifest()["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["canonical_fixture"];
        let (module, store) = setup(spec);
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            let Some(path) = spec[key].as_str() else {
                continue;
            };
            let original = fixture(path);
            let mut forged: Value = serde_json::from_str(&original).unwrap();
            let read = read_claim(&mut forged, boundary);
            read["state"]["c"]["measurements"] = json!(99);
            read["value"] = json!(99);
            if read["format"] == "behavior.read_record.v2" {
                read["facts"]["universe"][0]["members"][0]["measurements"] = json!(99);
            }
            reseal(&mut forged, boundary);
            store_specific_nonmatch(&store, &module, boundary, &forged);
            let mut observed: Value = serde_json::from_str(&original).unwrap();
            read_claim(&mut observed, boundary)["observed"] = json!([]);
            reseal(&mut observed, boundary);
            deterministic_raw_nonmatch(
                &store,
                &module,
                id,
                boundary,
                "forged_facts",
                &observed.to_string(),
            );
            println!("COVERAGE018 {id} {boundary} forged_facts");

            for mutation in ["missing", "extra", "wrong_id"] {
                let mut tampered: Value = serde_json::from_str(&original).unwrap();
                let read = read_claim(&mut tampered, boundary);
                match mutation {
                    "missing" => {
                        read["state"].as_object_mut().unwrap().remove("c");
                    }
                    "extra" => {
                        read["state"]["extra"] = json!({"id":"c1","measurements":7});
                    }
                    "wrong_id" => {
                        read["state"]["c"]["id"] = json!("missing");
                    }
                    _ => unreachable!(),
                }
                reseal(&mut tampered, boundary);
                let before = snapshot(&store);
                let backed =
                    backed_replay(&store, &module, boundary, &tampered.to_string()).unwrap();
                assert!(
                    !backed.matches,
                    "{id} {boundary} tampered {mutation} binding was accepted"
                );
                assert!(backed.diff.as_ref().is_some_and(|diff| !diff.is_empty()));
                assert_eq!(snapshot(&store), before);
            }
            if boundary == "store_invocation" {
                for identity in [
                    json!({"entity":"Culture","id":"missing"}),
                    json!({"entity":"Other","id":"c1"}),
                ] {
                    let mut tampered: Value = serde_json::from_str(&original).unwrap();
                    tampered["requested_bindings"]["c"] = identity;
                    reseal(&mut tampered, boundary);
                    let before = snapshot(&store);
                    assert!(
                        !backed_replay(&store, &module, boundary, &tampered.to_string())
                            .unwrap()
                            .matches
                    );
                    assert_eq!(snapshot(&store), before);
                }
            }
        }
    }
}

#[test]
fn store_invocation_inner_outer_binding_cannot_be_substituted() {
    for id in ["M07-D", "M08-H-D", "M08-C-D"] {
        let row = row(id);
        let spec = &row["canonical_fixture"];
        let (module, store) = setup(spec);
        let original = fixture(spec["invocation_record"].as_str().unwrap());
        for (field, value) in [
            (
                "behavior_version",
                json!(format!("sha256:{}", "f".repeat(64))),
            ),
            ("data_version", json!("another:position")),
        ] {
            let mut tampered: Value = serde_json::from_str(&original).unwrap();
            tampered["outcome"]["record"][field] = value;
            reseal(&mut tampered, "store_invocation");
            deterministic_raw_nonmatch(
                &store,
                &module,
                id,
                "store_invocation",
                "inner_outer_binding",
                &tampered.to_string(),
            );
        }
        let mut capability: Value = serde_json::from_str(&original).unwrap();
        capability["capability"] = json!("unknown");
        reseal(&mut capability, "store_invocation");
        deterministic_raw_nonmatch(
            &store,
            &module,
            id,
            "store_invocation",
            "inner_outer_binding",
            &capability.to_string(),
        );
        println!("COVERAGE018 {id} store_invocation inner_outer_binding");
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum FailurePoint {
    Head,
    Entity,
    Used,
    Record(u64),
}

struct FaultBackend {
    inner: InMemoryBackend,
    failure: Cell<Option<FailurePoint>>,
    failed_calls: Cell<usize>,
    mutations: Cell<usize>,
}

impl FaultBackend {
    fn new(inner: InMemoryBackend) -> Self {
        Self {
            inner,
            failure: Cell::new(None),
            failed_calls: Cell::new(0),
            mutations: Cell::new(0),
        }
    }
    fn check(&self, point: FailurePoint) -> Result<(), BackendError> {
        if self.failure.get() == Some(point) {
            self.failed_calls.set(self.failed_calls.get() + 1);
            Err(BackendError(format!("018 injected {point:?}")))
        } else {
            Ok(())
        }
    }
}

impl Backend for FaultBackend {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        self.check(FailurePoint::Head)?;
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
        Err(BackendError(
            "read-only replay backend attempted create".into(),
        ))
    }
    fn version_at(
        &self,
        key: &EntityKey,
        position: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        self.check(FailurePoint::Entity)?;
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
        self.check(FailurePoint::Record(position))?;
        self.inner.record(position)
    }
    fn removed_at(&self, key: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(key)
    }
    fn incoming_at(&self, target: &EntityKey, position: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.inner.incoming_at(target, position)
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
        self.check(FailurePoint::Used)?;
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
        Err(BackendError(
            "read-only replay backend attempted commit".into(),
        ))
    }
}

fn performed_failure(
    store: &Store<FaultBackend>,
    module: &Module,
    boundary: &str,
    original: &str,
    point: FailurePoint,
) {
    let before = snapshot(store);
    store.backend().failed_calls.set(0);
    store.backend().failure.set(Some(point));
    let result = backed_replay(store, module, boundary, original);
    let failed = store.backend().failed_calls.get();
    store.backend().failure.set(None);
    assert!(
        failed > 0,
        "the injected operation was never actually performed: {point:?}"
    );
    assert!(
        matches!(result, Err(behavior_store::StoreError::Backend(ref message))
        if message == &format!("018 injected {point:?}")),
        "backend failure changed category: {result:?}"
    );
    assert_eq!(
        snapshot(store),
        before,
        "operational failure changed canonical authority"
    );
    assert_eq!(store.backend().mutations.get(), 0);
}

#[test]
fn store_matrix_performed_backend_failures_remain_operational_and_read_only() {
    for row in manifest()["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["canonical_fixture"];
        let (module, ordinary) = setup(spec);
        let ordinary = Store::open(FaultBackend::new(ordinary.into_backend())).unwrap();
        let (_, advanced, _) = advanced_store(spec);
        let advanced = Store::open(FaultBackend::new(advanced.into_backend())).unwrap();
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            let Some(path) = spec[key].as_str() else {
                continue;
            };
            let original = fixture(path);
            assert!(core_replay(&module, boundary, &original).matches);
            performed_failure(&ordinary, &module, boundary, &original, FailurePoint::Head);
            // This cold Store must reconstruct validity/bound entity evidence;
            // assert an entity read occurred, never require a fixed call count.
            performed_failure(
                &ordinary,
                &module,
                boundary,
                &original,
                FailurePoint::Entity,
            );
            println!("COVERAGE018 U10-entity {boundary} refusal");
            // With head3, state_at(0) reads event1 to establish the old state.
            performed_failure(
                &advanced,
                &module,
                boundary,
                &original,
                FailurePoint::Record(1),
            );
            println!("COVERAGE018 U10-history {boundary} refusal");
            // Event3 is the actual migration. After state_at(0) has succeeded,
            // schema_at_position(0) walks from schema.since=3 via event3.
            performed_failure(
                &advanced,
                &module,
                boundary,
                &original,
                FailurePoint::Record(3),
            );
            println!("COVERAGE018 U10-schema {boundary} refusal");
            println!("COVERAGE018 {id} {boundary} performed_backend_error");
            assert!(
                backed_replay(&ordinary, &module, boundary, &original)
                    .unwrap()
                    .matches
            );
            assert!(
                backed_replay(&advanced, &module, boundary, &original)
                    .unwrap()
                    .matches
            );
        }
    }
}

#[test]
fn performed_identity_fact_failure_retains_its_existing_action_error_category() {
    // Read grammar excludes never_used. This is an auxiliary action control,
    // not a fictitious read-matrix cell: SnapshotFacts::used is history-backed.
    let (module, store) = retained_store("audit-counterexample", "valid-create.transition.json");
    let parent = store.state_at(0).unwrap();
    let requested = RequestedInvocation::decode(
        &json!({"format":"behavior.invocation.v1",
        "capability":"create","bindings":{},"input":{"id":"fresh"},"context":{}})
        .to_string(),
    )
    .unwrap()
    .0
    .unwrap();
    let before = snapshot(&store);
    let control = store
        .invoke(
            &module,
            &requested,
            "1970-01-01T00:00:00Z",
            None,
            Some(&parent),
        )
        .unwrap();
    assert_eq!(control.record.inner_record().unwrap()["result"], "ALLOW");
    assert!(control.bundle.is_none());
    store.backend().failure.set(Some(FailurePoint::Used));
    store.backend().failed_calls.set(0);
    let failure = store.invoke(
        &module,
        &requested,
        "1970-01-01T00:00:00Z",
        None,
        Some(&parent),
    );
    let failed = store.backend().failed_calls.get();
    store.backend().failure.set(None);
    assert!(
        failed > 0,
        "the history-backed fact callback was never performed"
    );
    // This callback maps the backend error to FactError. The evaluator records
    // ERROR/UNKNOWN_FACT, rather than returning a Store replay operational Err.
    let failure = failure.unwrap();
    let inner = failure.record.inner_record().unwrap();
    assert_eq!(inner["result"], "ERROR");
    assert_eq!(inner["reasons"][0]["code"], "UNKNOWN_FACT");
    assert!(failure.bundle.is_none());
    assert!(
        !store
            .replay_invocation(&module, &failure.record.to_json_string())
            .unwrap()
            .matches,
        "once the required fact succeeds, the recorded operationally induced ERROR no longer reproduces"
    );
    assert_eq!(snapshot(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!("AUXILIARY018 actual_identity_fact_provider_failure_category");
}

#[test]
fn store_origin_transport_refusal_preserves_existing_reconstruction_limit() {
    // 022 corrects this live expectation after T002/T008; the original 018
    // label and immutable capture remain evidence of the former limitation.
    let row = row("M08-C-D");
    let spec = &row["canonical_fixture"];
    let (module, store) = setup(spec);
    let before = snapshot(&store);
    // This record genuinely originates at the public Store boundary; no Store
    // coordinate is invented for a standalone raw transport-refusal fixture.
    let refused = store
        .read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::from([("c".into(), "c1".into())]),
            &json!([]),
            &json!({}),
            None,
        )
        .unwrap();
    assert_eq!(refused.record.result(), "INVALID_INPUT");
    assert_eq!(
        refused.record.as_json()["data_version"],
        data_version(&store.store_id().unwrap(), &store.current().unwrap())
    );
    assert!(refused.record.as_json()["refused_request"].is_string());
    assert_eq!(refused.record.as_json()["input"], json!({}));
    assert!(replay_read(&module, &refused.record.to_json_string()).matches);
    let backed = store
        .replay_read(&module, &refused.record.to_json_string())
        .unwrap();
    assert!(
        backed.matches,
        "022 must reproduce the original rejected request: {:?}",
        backed.diff
    );
    assert!(backed.diff.is_none());
    assert_eq!(snapshot(&store), before);
    println!("AUXILIARY018 store_origin_transport_refusal_capture_limit");
}

#[test]
fn store_matrix_all_replay_outcomes_preserve_canonical_command_authority() {
    // No step commits a state/history record, executes a command or creates
    // reusable uncommitted validity. Cache population is not semantic authority.
    for row in manifest()["rows"].as_array().unwrap() {
        let id = row["id"].as_str().unwrap();
        let spec = &row["canonical_fixture"];
        let (module, store) = setup(spec);
        let store = Store::open(FaultBackend::new(store.into_backend())).unwrap();
        let before = snapshot(&store);
        for (boundary, key) in [
            ("store_read", "read_record"),
            ("store_invocation", "invocation_record"),
        ] {
            let Some(path) = spec[key].as_str() else {
                continue;
            };
            let original = fixture(path);
            assert!(
                backed_replay(&store, &module, boundary, &original)
                    .unwrap()
                    .matches
            );
            let mut mismatch: Value = serde_json::from_str(&original).unwrap();
            read_claim(&mut mismatch, boundary)["value"] = json!(8);
            reseal(&mut mismatch, boundary);
            assert!(
                !backed_replay(&store, &module, boundary, &mismatch.to_string())
                    .unwrap()
                    .matches
            );
            let malformed = raw_prefix(&original, "\"format\"", "\"ambiguous\"");
            assert!(
                !backed_replay(&store, &module, boundary, &malformed)
                    .unwrap()
                    .matches
            );
            performed_failure(&store, &module, boundary, &original, FailurePoint::Head);
            assert_eq!(snapshot(&store), before);
            assert_eq!(store.backend().mutations.get(), 0);
            println!("COVERAGE018 {id} {boundary} read_only");
        }
    }
}

fn retained_store(group: &str, event_name: &str) -> (Module, Store<FaultBackend>) {
    let root = format!("../../resulting-state-validity/{group}");
    let module = behavior_core::admit(&fixture(&format!("{root}/module.json"))).unwrap();
    let genesis: Genesis =
        serde_json::from_value(json_fixture(&format!("{root}/genesis.json"))).unwrap();
    let event: TransitionRecord =
        serde_json::from_value(json_fixture(&format!("{root}/{event_name}"))).unwrap();
    let initial = Store::create(InMemoryBackend::new(), &module, genesis).unwrap();
    let mut backend = initial.into_backend();
    let parent = backend.head().unwrap().unwrap();
    assert_eq!(parent.state_ref, event.committed_on);
    assert_eq!(parent.last_record, event.previous_record);
    let mut accumulator =
        behavior_store::muhash::Accumulator::from_hex(&parent.acc_num, &parent.acc_den).unwrap();
    let mut versions = event.new_versions.clone();
    versions.extend(event.created.clone());
    for version in &versions {
        if let Some(previous) = backend
            .version_at(&version.key(), parent.state_ref.position)
            .unwrap()
        {
            accumulator.remove(&previous.content_hash).unwrap();
        }
        accumulator.insert(&version.content_hash).unwrap();
    }
    let removals: Vec<_> = event
        .removed
        .iter()
        .map(|removed| EntityKey {
            entity: removed.entity.clone(),
            id: removed.id.clone(),
        })
        .collect();
    for key in &removals {
        accumulator
            .remove(
                &backend
                    .version_at(key, parent.state_ref.position)
                    .unwrap()
                    .unwrap()
                    .content_hash,
            )
            .unwrap();
    }
    assert_eq!(accumulator.state_id().unwrap(), event.result_state.state);
    let (acc_num, acc_den) = accumulator.to_hex();
    let next = Head {
        state_ref: event.result_state.clone(),
        acc_num,
        acc_den,
        last_record: event.hash().unwrap(),
        schema: parent.schema,
    };
    // Install an independently captured durable historical event through the
    // test host. This is not fresh admission/commit of an obsolete candidate.
    assert_eq!(
        backend
            .commit(
                &parent.last_record,
                &versions,
                &removals,
                &event.ref_changes,
                &event,
                &next
            )
            .unwrap(),
        CasOutcome::Applied
    );
    let store = Store::open(FaultBackend::new(backend)).unwrap();
    (module, store)
}

#[test]
fn archived_017_action_and_current_refusal_branches_remain_read_only() {
    let (module, store) = retained_store("audit-counterexample", "valid-create.transition.json");
    let original = fixture(
        "../../resulting-state-validity/audit-counterexample/valid-create.invocation-record.json",
    );
    let before = snapshot(&store);
    let historical: Value = serde_json::from_str(&original).unwrap();
    assert_eq!(historical["outcome"]["record"]["record_version"], "0.5");
    assert!(behavior_core::invocation::replay_invocation(&module, &original).matches);
    assert!(store.replay_invocation(&module, &original).unwrap().matches);
    let parent = store.state_at(0).unwrap();
    for id in ["unrelated", "new"] {
        let requested = RequestedInvocation::decode(
            &json!({"format":"behavior.invocation.v1",
            "capability":"create","bindings":{},"input":{"id":id},"context":{}})
            .to_string(),
        )
        .unwrap()
        .0
        .unwrap();
        let result = store
            .invoke(
                &module,
                &requested,
                "1970-01-01T00:00:00Z",
                None,
                Some(&parent),
            )
            .unwrap();
        assert!(
            result.bundle.is_none(),
            "past evaluation cannot expose live commit authority"
        );
        assert_eq!(
            result.record.as_json()["outcome"]["record"]["record_version"],
            "0.8"
        );
        assert!(
            store
                .replay_invocation(&module, &result.record.to_json_string())
                .unwrap()
                .matches
        );
        assert_eq!(snapshot(&store), before);
    }
    // Actual raw intent decoding supplies its own immutable refusal evidence.
    let refused = store.invoke_intent(&module, r#"{"format":"behavior.capability_intent.v1","capability":"create","bindings":[],"input":{}}"#,
        &json!({}), "1970-01-01T00:00:00Z", Some(&parent)).unwrap();
    assert!(refused.bundle.is_none());
    assert_eq!(
        refused.record.as_json()["outcome"]["kind"],
        "pre_evaluation_refusal"
    );
    assert!(
        refused.record.as_json()["outcome"]
            .get("decode_evidence")
            .is_some()
    );
    assert!(
        store
            .replay_invocation(&module, &refused.record.to_json_string())
            .unwrap()
            .matches
    );
    assert_eq!(snapshot(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!("AUXILIARY018 archived_017_action_current_and_decode_refusal");
}

#[test]
fn replay_does_not_promote_command_candidates_or_change_committed_occurrences() {
    let (module, store) = retained_store("commands", "transition.json");
    let request = behavior_store::commands::CommandStreamRequest::from_json(&fixture(
        "../../resulting-state-validity/commands/stream-request.json",
    ))
    .unwrap();
    let page = store.commands_since(&request).unwrap();
    assert_eq!(
        page.as_json(),
        json_fixture("../../resulting-state-validity/commands/stream-page.json")
    );
    assert_eq!(page.items().len(), 1);
    let before = snapshot(&store);
    let at0 = store.state_at(0).unwrap();
    let source = ReadSource::AdHoc(Box::new(
        behavior_core::read::admit_read(
            &module,
            &json!({"ir_version":"0.7","read":{"name":"one","params":[],"loc":audit_model::loc(),
            "body":{"value":audit_model::integer(1)}}})
            .to_string(),
        )
        .unwrap(),
    ));
    let read = store
        .read(
            &module,
            &source,
            &BTreeMap::new(),
            &json!({}),
            &json!({}),
            Some(&at0),
        )
        .unwrap();
    assert!(
        store
            .replay_read(&module, &read.record.to_json_string())
            .unwrap()
            .matches
    );
    let requested = RequestedInvocation::decode(
        &json!({"format":"behavior.invocation.v1",
        "capability":"receipt","bindings":{},"input":{"recipient":"uncommitted"},"context":{}})
        .to_string(),
    )
    .unwrap()
    .0
    .unwrap();
    let head_candidate = store
        .invoke(&module, &requested, "1970-01-01T00:00:00Z", None, None)
        .unwrap();
    assert!(
        head_candidate.bundle.is_some(),
        "live ordinary candidate control must be allowed"
    );
    assert!(
        store
            .replay_invocation(&module, &head_candidate.record.to_json_string())
            .unwrap()
            .matches
    );
    let past = store
        .invoke(
            &module,
            &requested,
            "1970-01-01T00:00:00Z",
            None,
            Some(&at0),
        )
        .unwrap();
    assert!(past.bundle.is_none());
    assert!(
        store
            .replay_invocation(&module, &past.record.to_json_string())
            .unwrap()
            .matches
    );
    assert_eq!(
        store.commands_since(&request).unwrap().as_json(),
        page.as_json()
    );
    assert_eq!(snapshot(&store), before);
    assert_eq!(store.backend().mutations.get(), 0);
    println!("AUXILIARY018 committed_commands_unchanged_by_read_and_candidate_replay");
}

proptest! {
    #![proptest_config(ProptestConfig::with_cases(16))]
    #[test]
    fn replay_outcome_property_never_changes_store_authority(row_index in 0usize..9,
        invocation in any::<bool>(), outcome in 0u8..4, forged_value in 8i64..100) {
        let manifest = manifest();
        let spec = &manifest["rows"][row_index]["canonical_fixture"];
        let (module, store) = setup(spec);
        let store = Store::open(FaultBackend::new(store.into_backend())).unwrap();
        let boundary = if invocation && spec["invocation_record"].is_string() { "store_invocation" } else { "store_read" };
        let key = if boundary == "store_invocation" { "invocation_record" } else { "read_record" };
        let original = fixture(spec[key].as_str().unwrap());
        let before = snapshot(&store);
        match outcome {
            0 => { prop_assert!(backed_replay(&store, &module, boundary, &original).unwrap().matches); },
            1 => {
                let mut document: Value = serde_json::from_str(&original).unwrap();
                read_claim(&mut document, boundary)["value"] = json!(forged_value);
                reseal(&mut document, boundary);
                prop_assert!(!backed_replay(&store, &module, boundary, &document.to_string()).unwrap().matches);
            },
            2 => { prop_assert!(!backed_replay(&store, &module, boundary,
                &raw_prefix(&original, "\"format\"", "\"duplicate\"")).unwrap().matches); },
            3 => { performed_failure(&store, &module, boundary, &original, FailurePoint::Head); },
            _ => unreachable!(),
        }
        prop_assert_eq!(snapshot(&store), before);
        prop_assert_eq!(store.backend().mutations.get(), 0);
    }
}
