#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Core controls for 018 use retained evidence produced by the reference
//! evaluator for the recorded profile. They never manufacture a v1 record by
//! changing the format of a current record.

mod common;

use behavior_core::invocation::replay_invocation;
use behavior_core::read::{ReadRecord, ReadSource, admit_read, evaluate_read, replay_read};
use behavior_core::semantic::module::Module;
use proptest::prelude::*;
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::collections::{BTreeMap, BTreeSet};
use std::path::PathBuf;

const ROWS: [(&str, &str, &str, bool); 9] = [
    ("M04-A", "0.4", "behavior.read_record.v1", false),
    ("M05-A", "0.5", "behavior.read_record.v1", false),
    ("M06-A", "0.6", "behavior.read_record.v1", false),
    ("M07-D", "0.7", "behavior.read_record.v1", true),
    ("M07-A", "0.7", "behavior.read_record.v1", false),
    ("M08-H-D", "0.8", "behavior.read_record.v1", true),
    ("M08-H-A", "0.8", "behavior.read_record.v1", false),
    ("M08-C-D", "0.8", "behavior.read_record.v2", true),
    ("M08-C-A", "0.8", "behavior.read_record.v2", false),
];

fn fixtures() -> PathBuf {
    common::fixtures().join("replay/018")
}

fn matrix() -> Value {
    common::json(&fixtures().join("matrix.json"))
}

fn row(id: &str) -> Value {
    matrix()["rows"]
        .as_array()
        .unwrap()
        .iter()
        .find(|row| row["id"] == id)
        .unwrap_or_else(|| panic!("required support row {id} is missing"))
        .clone()
}

fn fixture_text(row: &Value, key: &str) -> String {
    let path = row["canonical_fixture"][key]
        .as_str()
        .unwrap_or_else(|| panic!("{} requires {key} fixture", row["id"]));
    let text = common::read(&fixtures().join(path));
    let metadata = common::json(
        &fixtures().join(
            row["canonical_fixture"]["capture_metadata"]
                .as_str()
                .unwrap(),
        ),
    );
    assert_eq!(
        format!("sha256:{:x}", Sha256::digest(text.as_bytes())),
        metadata["file_sha256"][path].as_str().unwrap(),
        "{} {key}: captured bytes changed",
        row["id"]
    );
    text
}

fn module(row: &Value) -> Module {
    behavior_core::admit(&fixture_text(row, "module")).unwrap()
}

fn assert_read_control(row: &Value) {
    let module = module(row);
    let text = fixture_text(row, "read_record");
    let document: Value = serde_json::from_str(&text).unwrap();
    assert_eq!(
        document["record_id"],
        row["canonical_fixture"]["original_record_id"]
    );
    assert_eq!(document["format"], row["profile"]);
    assert_eq!(document["behavior_version"], module.behavior_version());
    assert_eq!(document["result"], "VALUE");
    assert_eq!(document["value"], 7);
    let record = ReadRecord::from_json(&text).unwrap();
    assert_eq!(record.record_id(), document["record_id"].as_str().unwrap());
    assert_eq!(record.as_json(), &document);
    let replay = replay_read(&module, &text);
    assert!(replay.matches, "{}: {:?}", row["id"], replay.diff);
    assert!(replay.diff.is_none());
    println!(
        "COVERAGE018 {} core_read canonical",
        row["id"].as_str().unwrap()
    );
}

fn assert_invocation_control(row: &Value, case: &str) {
    let module = module(row);
    let text = fixture_text(row, "invocation_record");
    let envelope: Value = serde_json::from_str(&text).unwrap();
    assert_eq!(
        envelope["record_id"],
        row["canonical_fixture"]["original_invocation_record_id"]
    );
    let read: Value = serde_json::from_str(&fixture_text(row, "read_record")).unwrap();
    assert_eq!(envelope["format"], "behavior.invocation_record.v1");
    assert_eq!(envelope["outcome"]["record"], read);
    assert_eq!(envelope["outcome"]["record_id"], read["record_id"]);
    assert_eq!(envelope["behavior_version"], module.behavior_version());
    assert_eq!(envelope["data_version"], read["data_version"]);
    let mut body = envelope.clone();
    body.as_object_mut().unwrap().remove("record_id");
    assert_eq!(
        envelope["record_id"].as_str().unwrap(),
        format!(
            "invocation:{}",
            behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", &body).unwrap()
        )
    );
    let replay = replay_invocation(&module, &text);
    assert!(replay.matches, "{}: {:?}", row["id"], replay.diff);
    assert!(replay.diff.is_none());
    println!(
        "COVERAGE018 {} core_invocation {case}",
        row["id"].as_str().unwrap()
    );
}

#[test]
fn historical_wire08_v1_scalar_evidence_retains_its_recorded_semantics() {
    assert_read_control(&row("M08-H-D"));
}

#[test]
fn historical_wire08_v1_inner_read_retains_its_complete_invocation_identity() {
    assert_invocation_control(&row("M08-H-D"), "canonical");
}

#[test]
fn canonical_current_wire08_v2_scalar_evidence_remains_a_matching_control() {
    assert_read_control(&row("M08-C-D"));
}

#[test]
fn historical_wire08_v1_error_evidence_and_invocation_remain_matching_controls() {
    let mut row = row("M08-H-D");
    row["canonical_fixture"] = row["error_fixture"].clone();
    let module = module(&row);
    let text = fixture_text(&row, "read_record");
    let document: Value = serde_json::from_str(&text).unwrap();
    assert_eq!(document["format"], "behavior.read_record.v1");
    assert_eq!(document["result"], "EVALUATION_ERROR");
    assert!(
        document["reasons"][0]["message"]
            .as_str()
            .unwrap()
            .contains("division by zero")
    );
    assert!(document["reasons"][0]["loc"].is_object());
    assert!(document.get("facts").is_none());
    let record = ReadRecord::from_json(&text).unwrap();
    assert_eq!(record.record_id(), document["record_id"].as_str().unwrap());
    let replay = replay_read(&module, &text);
    assert!(replay.matches, "historical error: {:?}", replay.diff);
    println!("COVERAGE018 M08-H-D core_read profile_error");
    assert_invocation_control(&row, "profile_error");
}

fn variant(row: &Value, key: &str) -> Value {
    let mut row = row.clone();
    assert!(row[key].is_object(), "{} requires {key}", row["id"]);
    row["canonical_fixture"] = row[key].clone();
    row
}

fn source(row: &Value, module: &Module) -> ReadSource {
    match row["canonical_fixture"]["read_source"].as_str().unwrap() {
        "declared" => ReadSource::Declared(
            row["canonical_fixture"]["read_name"]
                .as_str()
                .unwrap()
                .into(),
        ),
        "ad_hoc" => ReadSource::AdHoc(Box::new(
            admit_read(module, &fixture_text(row, "read_definition")).unwrap(),
        )),
        other => panic!("unsupported fixture source {other}"),
    }
}

fn emit(row: &Value, boundary: &str, case: &str) {
    println!(
        "COVERAGE018 {} {boundary} {case}",
        row["id"].as_str().unwrap()
    );
}

fn reseal_invocation(envelope: &mut Value) {
    envelope.as_object_mut().unwrap().remove("record_id");
    envelope["record_id"] = json!(format!(
        "invocation:{}",
        behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", envelope).unwrap()
    ));
}

#[test]
fn independently_required_support_rows_and_core_cells_equal_the_manifest() {
    let matrix = matrix();
    let rows = matrix["rows"].as_array().unwrap();
    assert_eq!(rows.len(), ROWS.len());
    let actual: BTreeMap<_, _> = rows
        .iter()
        .map(|row| (row["id"].as_str().unwrap(), row))
        .collect();
    assert_eq!(actual.len(), rows.len(), "duplicate matrix row");
    let mut expected_cells = BTreeSet::new();
    for (id, wire, profile, declared) in ROWS {
        let row = actual.get(id).unwrap_or_else(|| panic!("missing {id}"));
        assert_eq!(row["module_wire"], wire);
        assert_eq!(row["profile"], profile);
        assert_eq!(row["source"], if declared { "declared" } else { "ad_hoc" });
        let mut expected = BTreeSet::from(["core_read", "store_read"]);
        if declared {
            expected.extend(["core_invocation", "store_invocation"]);
        } else {
            for boundary in ["core_invocation", "store_invocation"] {
                assert!(
                    row["inapplicable_boundaries"][boundary]
                        .as_str()
                        .unwrap()
                        .len()
                        > 1
                );
                assert!(row["canonical_fixture"]["invocation_record"].is_null());
            }
        }
        let boundaries = row["boundaries"].as_array().unwrap();
        let actual: BTreeSet<_> = boundaries.iter().map(|b| b.as_str().unwrap()).collect();
        assert_eq!(actual.len(), boundaries.len(), "{id}: repeated boundary");
        assert_eq!(actual, expected, "{id}: compatibility domain changed");
        for boundary in expected {
            expected_cells.insert(format!("{id}:{boundary}"));
        }
    }
    let cells = matrix["supported_cells"].as_array().unwrap();
    let actual_cells: BTreeSet<_> = cells
        .iter()
        .map(|cell| {
            let id = format!(
                "{}:{}",
                cell["row"].as_str().unwrap(),
                cell["boundary"].as_str().unwrap()
            );
            assert_eq!(cell["id"], id);
            id
        })
        .collect();
    assert_eq!(cells.len(), 24);
    assert_eq!(actual_cells, expected_cells);
    assert_eq!(
        actual_cells.iter().filter(|c| c.contains(":core_")).count(),
        12
    );
    for case in ["canonical", "profile_error", "profile_binding_refusal"] {
        let cases = matrix["cases"].as_array().unwrap();
        let entry = cases.iter().find(|c| c["id"] == case).unwrap();
        let required = entry["required_cells"].as_array().unwrap();
        let actual: BTreeSet<_> = required
            .iter()
            .map(|cell| {
                assert_eq!(
                    cell["id"],
                    format!(
                        "{}:{}:{case}",
                        cell["row"].as_str().unwrap(),
                        cell["boundary"].as_str().unwrap()
                    )
                );
                format!(
                    "{}:{}",
                    cell["row"].as_str().unwrap(),
                    cell["boundary"].as_str().unwrap()
                )
            })
            .collect();
        assert_eq!(required.len(), 24, "{case}: required case disappeared");
        assert_eq!(actual, expected_cells, "{case}: compatibility case missing");
    }
}

#[test]
fn required_case_inventory_cannot_drop_a_supported_boundary_silently() {
    const CASES: [&str; 29] = [
        "canonical",
        "root_duplicate",
        "nested_duplicate",
        "equal_duplicate",
        "escaped_duplicate",
        "retained_value_attack",
        "malformed_syntax",
        "whitespace",
        "object_key_order",
        "wrong_behavior",
        "wrong_read_identity",
        "profile_error",
        "profile_binding_refusal",
        "legacy_provenance",
        "current_complete_snapshot",
        "current_detached_diagnostics",
        "legacy_omitted_capture_limit",
        "legacy_query_registry",
        "refused_request_string",
        "unknown_field_numeric",
        "foreign_store",
        "wrong_state",
        "wrong_position",
        "wrong_schema",
        "forged_facts",
        "performed_backend_error",
        "fresh_default",
        "read_only",
        "inner_outer_binding",
    ];
    let matrix = matrix();
    let cases = matrix["cases"].as_array().unwrap();
    assert_eq!(cases.len(), CASES.len());
    let actual: BTreeMap<_, _> = cases
        .iter()
        .map(|case| (case["id"].as_str().unwrap(), case))
        .collect();
    assert_eq!(actual.len(), cases.len(), "duplicate case ID");
    for case in CASES {
        let mut expected = BTreeSet::new();
        for (row, wire, profile, declared) in ROWS {
            let applicable = match case {
                "legacy_omitted_capture_limit"
                | "legacy_query_registry"
                | "refused_request_string" => false,
                "legacy_provenance" => profile == "behavior.read_record.v1",
                "current_complete_snapshot" | "current_detached_diagnostics" => {
                    profile == "behavior.read_record.v2"
                }
                "fresh_default" => wire == "0.8",
                "inner_outer_binding" => declared,
                _ => true,
            };
            if !applicable {
                continue;
            }
            for boundary in [
                "core_read",
                "store_read",
                "core_invocation",
                "store_invocation",
            ] {
                if boundary.ends_with("invocation") && !declared {
                    continue;
                }
                if case == "inner_outer_binding" && !boundary.ends_with("invocation") {
                    continue;
                }
                if matches!(
                    case,
                    "foreign_store"
                        | "wrong_state"
                        | "wrong_position"
                        | "wrong_schema"
                        | "forged_facts"
                        | "performed_backend_error"
                        | "read_only"
                ) && !boundary.starts_with("store_")
                {
                    continue;
                }
                expected.insert(format!("{row}:{boundary}:{case}"));
            }
        }
        let required = actual
            .get(case)
            .unwrap_or_else(|| panic!("missing case {case}"))["required_cells"]
            .as_array()
            .unwrap();
        let actual: BTreeSet<_> = required
            .iter()
            .map(|cell| cell["id"].as_str().unwrap().to_string())
            .collect();
        assert_eq!(
            actual.len(),
            required.len(),
            "{case}: duplicate required cell"
        );
        assert_eq!(
            actual, expected,
            "{case}: independently required compatibility cases changed"
        );
    }
}

#[test]
fn every_supported_core_read_and_invocation_cell_preserves_canonical_evidence() {
    for (id, _, _, declared) in ROWS {
        let row = row(id);
        assert_read_control(&row);
        if declared {
            assert_invocation_control(&row, "canonical");
        }
    }
}

#[test]
fn every_recorded_profile_preserves_semantic_error_and_binding_refusal_evidence() {
    for (id, _, _, declared) in ROWS {
        for (key, case, result) in [
            ("error_fixture", "profile_error", "EVALUATION_ERROR"),
            (
                "binding_fixture",
                "profile_binding_refusal",
                "INVALID_BINDING",
            ),
        ] {
            let row = variant(&row(id), key);
            let module = module(&row);
            let text = fixture_text(&row, "read_record");
            let document: Value = serde_json::from_str(&text).unwrap();
            assert_eq!(document["result"], result);
            assert_eq!(document["format"], row["profile"]);
            assert_eq!(
                document["record_id"],
                row["canonical_fixture"]["original_record_id"]
            );
            assert_eq!(
                document["record_id"].as_str().unwrap(),
                ReadRecord::from_json(&text).unwrap().record_id()
            );
            let replay = replay_read(&module, &text);
            assert!(replay.matches, "{id} {case}: {:?}", replay.diff);
            emit(&row, "core_read", case);
            if declared {
                if result == "EVALUATION_ERROR" {
                    assert_invocation_control(&row, case);
                } else {
                    let text = fixture_text(&row, "invocation_record");
                    let envelope: Value = serde_json::from_str(&text).unwrap();
                    assert_eq!(
                        envelope["record_id"],
                        row["canonical_fixture"]["original_invocation_record_id"]
                    );
                    assert_eq!(envelope["outcome"]["kind"], "pre_evaluation_refusal");
                    assert!(envelope["outcome"].get("record").is_none());
                    assert_eq!(
                        envelope["outcome"]["problems"][0]["code"],
                        "INVALID_BINDING"
                    );
                    let replay = replay_invocation(&module, &text);
                    assert!(replay.matches, "{id} {case}: {:?}", replay.diff);
                    emit(&row, "core_invocation", case);
                }
            }
        }
    }
}

#[test]
fn frozen_legacy_error_provenance_remains_identity_bearing() {
    for (id, _, profile, declared) in ROWS {
        if profile != "behavior.read_record.v1" {
            continue;
        }
        let row = variant(&row(id), "error_fixture");
        let module = module(&row);
        let mut record: Value = serde_json::from_str(&fixture_text(&row, "read_record")).unwrap();
        let old_id = record["record_id"].clone();
        record["reasons"][0]["loc"] = json!({"file":"different.beh","line":999});
        record["record_id"] = json!(behavior_core::read::record_id(&record).unwrap());
        assert_ne!(old_id, record["record_id"]);
        let replay = replay_read(&module, &record.to_string());
        assert!(!replay.matches);
        assert!(replay.diff.unwrap().contains("reasons"));
        emit(&row, "core_read", "legacy_provenance");
        if declared {
            let mut envelope: Value =
                serde_json::from_str(&fixture_text(&row, "invocation_record")).unwrap();
            envelope["outcome"]["record"] = record.clone();
            envelope["outcome"]["record_id"] = record["record_id"].clone();
            reseal_invocation(&mut envelope);
            let replay = replay_invocation(&module, &envelope.to_string());
            assert!(!replay.matches);
            assert!(replay.diff.unwrap().contains("reasons"));
            emit(&row, "core_invocation", "legacy_provenance");
        }
    }
}

fn relocate(value: &mut Value) {
    match value {
        Value::Object(object) => {
            if object.contains_key("loc") {
                object.insert("loc".into(), json!({"file":"different.beh","line":999}));
            }
            for child in object.values_mut() {
                relocate(child);
            }
        }
        Value::Array(array) => array.iter_mut().for_each(relocate),
        _ => {}
    }
}

#[test]
fn current_profile_keeps_complete_snapshot_and_detached_diagnostics() {
    for id in ["M08-C-D", "M08-C-A"] {
        let row = row(id);
        let current_module = module(&row);
        let record: Value = serde_json::from_str(&fixture_text(&row, "read_record")).unwrap();
        assert_eq!(
            record["facts"]["universe"],
            json!([{"entity":"Culture","members":[{"id":"c1","measurements":7}]}])
        );
        assert_eq!(record["observed"], json!([["c", "measurements"]]));
        let mut tampered = record.clone();
        tampered["facts"]["universe"][0]["members"][0]["measurements"] = json!(8);
        tampered["record_id"] = json!(behavior_core::read::record_id(&tampered).unwrap());
        assert!(!replay_read(&current_module, &tampered.to_string()).matches);
        emit(&row, "core_read", "current_complete_snapshot");
        if id == "M08-C-D" {
            let mut envelope: Value =
                serde_json::from_str(&fixture_text(&row, "invocation_record")).unwrap();
            envelope["outcome"]["record"] = tampered.clone();
            envelope["outcome"]["record_id"] = tampered["record_id"].clone();
            reseal_invocation(&mut envelope);
            assert!(!replay_invocation(&current_module, &envelope.to_string()).matches);
            emit(&row, "core_invocation", "current_complete_snapshot");
        }
        let error = variant(&row, "error_fixture");
        let first = module(&error);
        let mut definition: Value = serde_json::from_str(&fixture_text(&error, "module")).unwrap();
        relocate(&mut definition);
        let second = behavior_core::admit(&definition.to_string()).unwrap();
        assert_eq!(first.behavior_version(), second.behavior_version());
        let original_source = source(&error, &first);
        let relocated_source = if id == "M08-C-A" {
            let mut doc: Value =
                serde_json::from_str(&fixture_text(&error, "read_definition")).unwrap();
            relocate(&mut doc);
            ReadSource::AdHoc(Box::new(admit_read(&second, &doc.to_string()).unwrap()))
        } else {
            source(&error, &second)
        };
        let request = fixture_text(&error, "request");
        let old = evaluate_read(&first, &original_source, &request);
        let new = evaluate_read(&second, &relocated_source, &request);
        assert_eq!(old.record, new.record);
        assert_ne!(old.record.diagnostics(), new.record.diagnostics());
        assert!(replay_read(&second, &fixture_text(&error, "read_record")).matches);
        emit(&row, "core_read", "current_detached_diagnostics");
        if id == "M08-C-D" {
            assert!(replay_invocation(&second, &fixture_text(&error, "invocation_record")).matches);
            emit(&row, "core_invocation", "current_detached_diagnostics");
        }
    }
}

#[test]
fn fresh_wire08_evaluation_never_uses_an_archived_selector() {
    for id in ["M08-H-D", "M08-H-A", "M08-C-D", "M08-C-A"] {
        let row = row(id);
        let module = module(&row);
        let read = evaluate_read(
            &module,
            &source(&row, &module),
            &fixture_text(&row, "request"),
        );
        assert_eq!(read.record.as_json()["format"], "behavior.read_record.v2");
        assert_eq!(read.record.as_json()["value"], 7);
        assert!(replay_read(&module, &read.record.to_json_string()).matches);
        emit(&row, "core_read", "fresh_default");
        if id.ends_with("-D") {
            let request = json!({"format":"behavior.invocation.v1","capability":"inspect","bindings":{"c":{"entity":"Culture","id":"c1"}},"input":{},"context":{}});
            let requested =
                behavior_core::invocation::RequestedInvocation::decode(&request.to_string())
                    .unwrap()
                    .0
                    .unwrap();
            let snapshot = behavior_core::invocation::Snapshot::decode(
                &module,
                &fixture_text(&row, "snapshot"),
            )
            .unwrap()
            .0
            .unwrap();
            let record =
                behavior_core::invocation::invoke_with_snapshot(&module, &requested, &snapshot)
                    .unwrap();
            assert_eq!(
                record.as_json()["outcome"]["record"]["format"],
                "behavior.read_record.v2"
            );
            assert!(replay_invocation(&module, &record.to_json_string()).matches);
            emit(&row, "core_invocation", "fresh_default");
        }
    }
}

#[test]
fn documented_unsupported_module_profile_and_read_routes_remain_refused() {
    let base = row("M04-A");
    for version in ["0.1", "0.2", "0.3", "unknown"] {
        let mut wire: Value = serde_json::from_str(&fixture_text(&base, "module")).unwrap();
        wire["ir_version"] = json!(version);
        assert!(
            behavior_core::admit(&wire.to_string()).is_err(),
            "U01-{version}"
        );
        println!("COVERAGE018 U01-{version} module_admission refusal");
    }
    for version in ["0.4", "0.5", "0.6"] {
        let mut wire: Value = serde_json::from_str(&fixture_text(&row("M07-D"), "module")).unwrap();
        wire["ir_version"] = json!(version);
        assert!(
            behavior_core::admit(&wire.to_string()).is_err(),
            "U02-{version}"
        );
        println!("COVERAGE018 U02-{version} module_admission refusal");
    }
    for id in ["M04-A", "M05-A", "M06-A", "M07-D", "M07-A"] {
        let row = row(id);
        let module = module(&row);
        let mut document: Value = serde_json::from_str(&fixture_text(&row, "read_record")).unwrap();
        document["format"] = json!("behavior.read_record.v2");
        let replay = replay_read(&module, &document.to_string());
        assert!(!replay.matches);
        assert!(replay.diff.unwrap().contains("unsupported"));
        println!(
            "COVERAGE018 U03-{} core_read refusal",
            row["module_wire"].as_str().unwrap()
        );
        if id == "M07-D" {
            let mut envelope: Value =
                serde_json::from_str(&fixture_text(&row, "invocation_record")).unwrap();
            envelope["outcome"]["record"]["format"] = json!("behavior.read_record.v2");
            assert!(!replay_invocation(&module, &envelope.to_string()).matches);
            println!("COVERAGE018 U03-0.7 core_invocation refusal");
        }
    }
    for missing in [true, false] {
        let row = row("M08-C-D");
        let module = module(&row);
        for (key, boundary, family) in [
            ("read_record", "core_read", "U04"),
            ("invocation_record", "core_invocation", "U05"),
        ] {
            let mut document: Value = serde_json::from_str(&fixture_text(&row, key)).unwrap();
            if missing {
                document.as_object_mut().unwrap().remove("format");
            } else {
                document["format"] = json!("unknown");
            }
            let replay = if boundary == "core_read" {
                replay_read(&module, &document.to_string())
            } else {
                replay_invocation(&module, &document.to_string())
            };
            assert!(!replay.matches);
            assert!(replay.diff.unwrap().contains("format"));
            println!(
                "COVERAGE018 {family}-{} {boundary} refusal",
                if missing { "missing" } else { "unknown" }
            );
        }
    }
    let module = module(&base);
    for version in ["0.4", "0.6", "0.8", "unknown", "missing"] {
        let mut definition: Value =
            serde_json::from_str(&fixture_text(&base, "read_definition")).unwrap();
        if version == "missing" {
            definition.as_object_mut().unwrap().remove("ir_version");
        } else {
            definition["ir_version"] = json!(version);
        }
        assert!(admit_read(&module, &definition.to_string()).is_err());
        println!("COVERAGE018 U06-{version} read_definition_admission refusal");
    }
    let raw = json!({"format":"behavior.invocation.v1","capability":"inspect","bindings":{"c":{"entity":"Culture","id":"c1"}},"input":{},"context":{}});
    let requested = behavior_core::invocation::RequestedInvocation::decode(&raw.to_string())
        .unwrap()
        .0
        .unwrap();
    let snapshot =
        behavior_core::invocation::Snapshot::decode(&module, &fixture_text(&base, "snapshot"))
            .unwrap()
            .0
            .unwrap();
    let record =
        behavior_core::invocation::invoke_with_snapshot(&module, &requested, &snapshot).unwrap();
    assert_eq!(
        record.as_json()["outcome"]["kind"],
        "pre_evaluation_refusal"
    );
    assert!(record.as_json()["outcome"].get("record").is_none());
    assert!(replay_invocation(&module, &record.to_json_string()).matches);
    println!("COVERAGE018 U07-ad_hoc core_invocation refusal");
}

#[test]
fn original_legacy_query_registry_and_missing_capture_limits_remain_profile_specific() {
    let matrix = matrix();
    let examples = matrix["auxiliary_fixtures"].as_array().unwrap();
    let expected = BTreeSet::from([
        "M07-D:legacy_query_registry",
        "M08-H-D:legacy_query_registry",
        "M07-D:legacy_omitted_capture_limit",
        "M08-H-D:legacy_omitted_capture_limit",
    ]);
    let actual: BTreeSet<_> = examples
        .iter()
        .map(|example| example["id"].as_str().unwrap())
        .collect();
    assert_eq!(examples.len(), 4);
    assert_eq!(actual, expected);
    for example in examples {
        let metadata =
            common::json(&fixtures().join(example["capture_metadata"].as_str().unwrap()));
        let captured = |key: &str| {
            let path = example[key].as_str().unwrap();
            let text = common::read(&fixtures().join(path));
            assert_eq!(
                format!("sha256:{:x}", Sha256::digest(text.as_bytes())),
                metadata["file_sha256"][path].as_str().unwrap()
            );
            text
        };
        let module = behavior_core::admit(&captured("module")).unwrap();
        let text = captured("read_record");
        let record: Value = serde_json::from_str(&text).unwrap();
        assert_eq!(record["format"], "behavior.read_record.v1");
        assert_eq!(record["record_id"], metadata["read_record_id"]);
        assert_eq!(record["record_id"], example["original_record_id"]);
        assert_eq!(record["behavior_version"], module.behavior_version());
        assert_eq!(example["boundaries"], json!(["core_read"]));
        let replay = replay_read(&module, &text);
        if example["case"] == "legacy_query_registry" {
            assert_eq!(record["result"], "INVALID_INPUT");
            assert_eq!(record["reasons"][0]["code"], "INCONSISTENT_FACTS");
            assert!(
                record["reasons"][0]["message"]
                    .as_str()
                    .unwrap()
                    .contains("unknown definition")
            );
            assert!(replay.matches, "{}: {:?}", example["id"], replay.diff);
        } else {
            assert_eq!(example["case"], "legacy_omitted_capture_limit");
            assert_eq!(record["result"], "EVALUATION_ERROR");
            assert_eq!(record["reasons"][0]["code"], "UNKNOWN_FACT");
            assert!(
                record.get("facts").is_none(),
                "the archive omitted this failed query capture"
            );
            assert!(
                serde_json::from_str::<Value>(&captured("request")).unwrap()["facts"]["universe"]
                    .is_array()
            );
            assert!(
                !replay.matches,
                "v1 cannot recreate a fact that was never captured"
            );
            assert!(!replay.diff.unwrap().is_empty());
        }
        println!(
            "COVERAGE018 {} core_read {}",
            example["row"].as_str().unwrap(),
            example["case"].as_str().unwrap()
        );
    }
}

fn replay_at(module: &Module, boundary: &str, text: &str) -> behavior_core::record::ReplayResult {
    match boundary {
        "core_read" => replay_read(module, text),
        "core_invocation" => replay_invocation(module, text),
        other => panic!("unsupported Core test boundary {other}"),
    }
}

fn assert_deterministic_nonmatch(module: &Module, boundary: &str, text: &str) {
    let first = replay_at(module, boundary, text);
    let second = replay_at(module, boundary, text);
    assert!(!first.matches, "{boundary} accepted {text}");
    assert!(!first.diff.as_ref().unwrap().is_empty());
    assert_eq!(first.matches, second.matches);
    assert_eq!(first.diff, second.diff);
    let public: Value = serde_json::from_str(&first.to_json_string()).unwrap();
    assert_eq!(public["matches"], false);
    assert!(public["diff"].is_string());
    assert_eq!(public.as_object().unwrap().len(), 2);
}

/// Keep the retained original key/value at the end. Calling a lossy JSON parser
/// on this document would discard the newly inserted claim.
fn prepend_member(text: &str, raw_key: &str, value: &Value) -> String {
    let text = text.trim();
    assert!(text.starts_with('{'));
    format!("{{{raw_key}:{value},{}", &text[1..])
}

fn boundaries(declared: bool) -> Vec<(&'static str, &'static str)> {
    let mut result = vec![("core_read", "read_record")];
    if declared {
        result.push(("core_invocation", "invocation_record"));
    }
    result
}

#[test]
fn raw_record_ambiguity_refuses_before_any_lossy_object_reduction() {
    for (id, _, _, declared) in ROWS {
        let row = row(id);
        let module = module(&row);
        for (boundary, key) in boundaries(declared) {
            let original = fixture_text(&row, key);
            let value: Value = serde_json::from_str(&original).unwrap();
            assert!(replay_at(&module, boundary, &original).matches);
            let (root_key, contradiction) = if boundary == "core_read" {
                ("\"result\"", json!("EVALUATION_ERROR"))
            } else {
                ("\"capability\"", json!("not_inspect"))
            };
            let root = prepend_member(&original, root_key, &contradiction);
            let nested = if boundary == "core_read" {
                original.replacen("\"read\":{", "\"read\":{\"name\":\"other_read\",", 1)
            } else {
                original.replacen(
                    "\"record\":{",
                    "\"record\":{\"result\":\"EVALUATION_ERROR\",",
                    1,
                )
            };
            assert_ne!(
                nested, original,
                "{id}: duplicate insertion was not performed"
            );
            let equal = prepend_member(&original, "\"format\"", &value["format"]);
            let escaped = prepend_member(&original, "\"\\u0066ormat\"", &value["format"]);
            for (case, raw) in [
                ("root_duplicate", &root),
                ("nested_duplicate", &nested),
                ("equal_duplicate", &equal),
                ("escaped_duplicate", &escaped),
            ] {
                // Establish the attack instead of accidentally testing altered
                // last values, invalid syntax or stale hashes.
                let reduced: Value = serde_json::from_str(raw).unwrap();
                assert_eq!(reduced, value);
                assert_eq!(reduced["record_id"], value["record_id"]);
                assert_deterministic_nonmatch(&module, boundary, raw);
                assert!(
                    replay_at(&module, boundary, raw)
                        .diff
                        .unwrap()
                        .contains("duplicate")
                );
                emit(&row, boundary, case);
            }
            let retained = prepend_member(
                &original,
                "\"record_id\"",
                &json!("sha256:contradictory_first_identity"),
            );
            assert_eq!(serde_json::from_str::<Value>(&retained).unwrap(), value);
            assert_deterministic_nonmatch(&module, boundary, &retained);
            emit(&row, boundary, "retained_value_attack");
            for malformed in [
                "not json".to_string(),
                "{".into(),
                original.trim_end().strip_suffix('}').unwrap().to_string(),
            ] {
                assert!(serde_json::from_str::<Value>(&malformed).is_err());
                assert_deterministic_nonmatch(&module, boundary, &malformed);
            }
            emit(&row, boundary, "malformed_syntax");
        }
    }
}

#[test]
fn record_unknown_fields_and_noncanonical_numbers_follow_their_existing_contract() {
    for (id, _, _, declared) in ROWS {
        let row = row(id);
        let module = module(&row);
        for (boundary, key) in boundaries(declared) {
            let original = fixture_text(&row, key);
            let unknown = prepend_member(&original, "\"unknown_018\"", &json!(true));
            assert_deterministic_nonmatch(&module, boundary, &unknown);
            assert!(
                replay_at(&module, boundary, &unknown)
                    .diff
                    .unwrap()
                    .contains("unknown_018")
            );
            for raw_number in [
                "7.0",
                "7e0",
                "7e99",
                "18446744073709551616",
                "-9223372036854775809",
            ] {
                let raw = original.replacen("\"value\":7", &format!("\"value\":{raw_number}"), 1);
                assert_ne!(raw, original, "{id}: numeric mutation was not performed");
                assert!(behavior_core::canonical::decode_strict(&raw).is_err());
                assert_deterministic_nonmatch(&module, boundary, &raw);
                assert!(
                    replay_at(&module, boundary, &raw)
                        .diff
                        .unwrap()
                        .contains("noncanonical numeric representation")
                );
            }
            // Canonical integer spelling stays valid in every retained profile.
            assert!(replay_at(&module, boundary, &original).matches);
            emit(&row, boundary, "unknown_field_numeric");
        }
    }
}

/// Reorder object representation while preserving every array's semantic order,
/// number and string. Whitespace is inserted only between JSON tokens.
fn represented(value: &Value, reverse: bool, space: &str) -> String {
    match value {
        Value::Object(object) => {
            let mut keys: Vec<_> = object.keys().collect();
            if reverse {
                keys.reverse();
            }
            let members = keys
                .into_iter()
                .map(|key| {
                    format!(
                        "{}{space}:{space}{}",
                        serde_json::to_string(key).unwrap(),
                        represented(&object[key], reverse, space)
                    )
                })
                .collect::<Vec<_>>()
                .join(&format!(",{space}"));
            format!("{{{space}{members}{space}}}")
        }
        Value::Array(array) => {
            let elements = array
                .iter()
                .map(|item| represented(item, reverse, space))
                .collect::<Vec<_>>()
                .join(&format!(",{space}"));
            format!("[{space}{elements}{space}]")
        }
        _ => value.to_string(),
    }
}

fn assert_representation_matches(row: &Value, boundary: &str, original: &str, raw: &str) {
    let canonical: Value = serde_json::from_str(original).unwrap();
    let changed: Value = serde_json::from_str(raw).unwrap();
    assert_eq!(
        changed, canonical,
        "only nonsemantic representation may change"
    );
    assert_eq!(changed["record_id"], canonical["record_id"]);
    let replay = replay_at(&module(row), boundary, raw);
    assert!(
        replay.matches,
        "{} {boundary}: {:?}",
        row["id"], replay.diff
    );
    assert!(replay.diff.is_none());
    if boundary == "core_read" {
        assert_eq!(
            ReadRecord::from_json(raw).unwrap().record_id(),
            canonical["record_id"].as_str().unwrap()
        );
    }
    let public: Value = serde_json::from_str(&replay.to_json_string()).unwrap();
    assert_eq!(public, json!({"matches":true}));
}

#[test]
fn whitespace_and_recursive_object_order_preserve_all_original_record_identities() {
    for (id, _, _, declared) in ROWS {
        let row = row(id);
        for (boundary, key) in boundaries(declared) {
            let original = fixture_text(&row, key);
            let value: Value = serde_json::from_str(&original).unwrap();
            let pretty = serde_json::to_string_pretty(&value).unwrap();
            assert_representation_matches(&row, boundary, &original, &pretty);
            emit(&row, boundary, "whitespace");
            let reversed = represented(&value, true, "");
            assert_ne!(
                reversed,
                original.trim(),
                "{id}: object representation order did not change"
            );
            assert_representation_matches(&row, boundary, &original, &reversed);
            emit(&row, boundary, "object_key_order");
        }
    }
}

proptest! {
    #![proptest_config(ProptestConfig::with_cases(32))]

    #[test]
    fn nonsemantic_json_representation_preserves_profile_and_identity(
        index in 0usize..ROWS.len(),
        reverse in any::<bool>(),
        space in "[ \\t\\r\\n]{0,6}",
        choose_invocation in any::<bool>(),
    ) {
        let (id, _, _, declared) = ROWS[index];
        let row = row(id);
        let (boundary, key) = if declared && choose_invocation {
            ("core_invocation", "invocation_record")
        } else {
            ("core_read", "read_record")
        };
        let original = fixture_text(&row, key);
        let value: Value = serde_json::from_str(&original).unwrap();
        let raw = represented(&value, reverse, &space);
        assert_representation_matches(&row, boundary, &original, &raw);
    }
}

#[test]
fn frozen_request_decoding_is_distinct_from_strict_raw_record_decoding() {
    for id in ["M04-A", "M05-A", "M06-A", "M07-A", "M07-D"] {
        let row = row(id);
        let module = module(&row);
        let request = fixture_text(&row, "request");
        let duplicate = prepend_member(
            &request,
            "\"data_version\"",
            &json!("discarded_first_value"),
        );
        assert_eq!(
            serde_json::from_str::<Value>(&duplicate).unwrap(),
            serde_json::from_str::<Value>(&request).unwrap()
        );
        let reference = evaluate_read(&module, &source(&row, &module), &request);
        let historical = evaluate_read(&module, &source(&row, &module), &duplicate);
        assert_eq!(historical.record.result(), "VALUE");
        assert_eq!(
            historical.record, reference.record,
            "legacy request rules stay frozen"
        );
        assert!(historical.record.as_json().get("refused_request").is_none());
        assert!(replay_read(&module, &historical.record.to_json_string()).matches);
    }
}

#[test]
fn duplicate_looking_json_inside_refused_request_is_legitimate_string_evidence() {
    let row = row("M08-C-D");
    let module = module(&row);
    let request = fixture_text(&row, "request");
    let duplicate = prepend_member(
        &request,
        "\"data_version\"",
        &json!("discarded_first_value"),
    );
    let execution = evaluate_read(&module, &source(&row, &module), &duplicate);
    let record = execution.record.as_json();
    assert_eq!(record["format"], "behavior.read_record.v2");
    assert_eq!(record["result"], "INVALID_INPUT");
    assert_eq!(record["refused_request"], duplicate);
    assert_eq!(record["observed"], json!([]));
    assert_eq!(record["derived"], json!([]));
    assert!(record["data_version"].as_str().unwrap().is_empty());
    let text = execution.record.to_json_string();
    assert!(ReadRecord::from_json(&text).is_ok());
    let replay = replay_read(&module, &text);
    assert!(replay.matches, "raw refusal string: {:?}", replay.diff);
    assert!(replay.diff.is_none());
    let ambiguous_envelope = prepend_member(&text, "\"format\"", &record["format"]);
    assert_deterministic_nonmatch(&module, "core_read", &ambiguous_envelope);
    emit(&row, "core_read", "refused_request_string");
}

#[test]
fn independently_required_concrete_refusal_ids_equal_the_manifest() {
    let mut expected = BTreeMap::new();
    for version in ["0.1", "0.2", "0.3", "unknown"] {
        expected.insert(
            format!("U01-{version}"),
            BTreeSet::from(["module_admission"]),
        );
    }
    for version in ["0.4", "0.5", "0.6"] {
        expected.insert(
            format!("U02-{version}"),
            BTreeSet::from(["module_admission"]),
        );
        expected.insert(
            format!("U03-{version}"),
            BTreeSet::from(["core_read", "store_read"]),
        );
    }
    expected.insert(
        "U03-0.7".into(),
        BTreeSet::from([
            "core_read",
            "store_read",
            "core_invocation",
            "store_invocation",
        ]),
    );
    for version in ["missing", "unknown"] {
        expected.insert(
            format!("U04-{version}"),
            BTreeSet::from(["core_read", "store_read"]),
        );
        expected.insert(
            format!("U05-{version}"),
            BTreeSet::from(["core_invocation", "store_invocation"]),
        );
    }
    for version in ["0.4", "0.6", "0.8", "unknown", "missing"] {
        expected.insert(
            format!("U06-{version}"),
            BTreeSet::from(["read_definition_admission"]),
        );
    }
    expected.insert(
        "U07-ad_hoc".into(),
        BTreeSet::from(["core_invocation", "store_invocation"]),
    );
    for substitution in ["behavior_hash", "read_hash", "read_name"] {
        expected.insert(
            format!("U08-{substitution}"),
            BTreeSet::from([
                "core_read",
                "store_read",
                "core_invocation",
                "store_invocation",
            ]),
        );
    }
    for substitution in [
        "foreign_store",
        "wrong_state",
        "wrong_position",
        "wrong_schema",
    ] {
        expected.insert(
            format!("U09-{substitution}"),
            BTreeSet::from(["store_read", "store_invocation"]),
        );
    }
    for operation in ["history", "entity", "schema"] {
        expected.insert(
            format!("U10-{operation}"),
            BTreeSet::from(["store_read", "store_invocation"]),
        );
    }
    assert_eq!(expected.len(), 31);
    let matrix = matrix();
    let unsupported = matrix["unsupported"].as_array().unwrap();
    let actual: BTreeMap<_, _> = unsupported
        .iter()
        .map(|entry| {
            let boundaries: BTreeSet<_> = entry["boundaries"]
                .as_array()
                .unwrap()
                .iter()
                .map(|v| v.as_str().unwrap())
                .collect();
            (entry["id"].as_str().unwrap().to_string(), boundaries)
        })
        .collect();
    assert_eq!(actual.len(), unsupported.len(), "duplicate refusal ID");
    assert_eq!(
        actual, expected,
        "a concrete unsupported combination or boundary disappeared"
    );
}

fn reseal_read_document(document: &mut Value, boundary: &str) {
    if boundary == "core_read" {
        document["record_id"] = json!(behavior_core::read::record_id(document).unwrap());
    } else {
        let inner = &mut document["outcome"]["record"];
        inner["record_id"] = json!(behavior_core::read::record_id(inner).unwrap());
        document["outcome"]["record_id"] = document["outcome"]["record"]["record_id"].clone();
        reseal_invocation(document);
    }
}

fn inner_read<'a>(document: &'a mut Value, boundary: &str) -> &'a mut Value {
    if boundary == "core_read" {
        document
    } else {
        &mut document["outcome"]["record"]
    }
}

#[test]
fn equal_schema_and_rehashed_claims_do_not_authorize_another_behavior_or_read_identity() {
    for (id, _, _, declared) in ROWS {
        let row = row(id);
        let original_module = module(&row);
        let mut other_wire: Value = serde_json::from_str(&fixture_text(&row, "module")).unwrap();
        other_wire["invariants"].as_array_mut().unwrap().push(json!({
            "name":"another_behavior","entity":"Culture","param":"c",
            "loc":{"file":"018-substitution.beh","line":1},
            "body":{"op":"lit","type":{"t":"bool"},"value":true,"loc":{"file":"018-substitution.beh","line":1}}
        }));
        let other_module = behavior_core::admit(&other_wire.to_string()).unwrap();
        assert_eq!(
            behavior_core::schema(&original_module).hash,
            behavior_core::schema(&other_module).hash
        );
        assert_ne!(
            original_module.behavior_version(),
            other_module.behavior_version()
        );
        for (boundary, key) in boundaries(declared) {
            let original = fixture_text(&row, key);
            assert_deterministic_nonmatch(&other_module, boundary, &original);
            let mut document: Value = serde_json::from_str(&original).unwrap();
            document["behavior_version"] = json!(other_module.behavior_version());
            if boundary == "core_invocation" {
                document["outcome"]["record"]["behavior_version"] =
                    json!(other_module.behavior_version());
            }
            reseal_read_document(&mut document, boundary);
            assert_deterministic_nonmatch(&original_module, boundary, &document.to_string());
            emit(&row, boundary, "wrong_behavior");
            println!("COVERAGE018 U08-behavior_hash {boundary} refusal");
            for field in ["hash", "name"] {
                let mut document: Value = serde_json::from_str(&original).unwrap();
                inner_read(&mut document, boundary)["read"][field] = if field == "hash" {
                    json!(format!("sha256:{}", "ab".repeat(32)))
                } else {
                    json!("other_read")
                };
                reseal_read_document(&mut document, boundary);
                assert_deterministic_nonmatch(&original_module, boundary, &document.to_string());
                println!("COVERAGE018 U08-read_{field} {boundary} refusal");
            }
            emit(&row, boundary, "wrong_read_identity");
        }
    }
}

#[test]
fn authentic_inner_reads_cannot_be_substituted_into_contradictory_invocation_envelopes() {
    for id in ["M07-D", "M08-H-D", "M08-C-D"] {
        let row = row(id);
        let module = module(&row);
        let original: Value =
            serde_json::from_str(&fixture_text(&row, "invocation_record")).unwrap();
        for field in [
            "behavior_version",
            "data_version",
            "read_name",
            "capability",
            "binding",
        ] {
            let mut envelope = original.clone();
            match field {
                "behavior_version" => {
                    envelope["outcome"]["record"]["behavior_version"] =
                        json!(format!("sha256:{}", "ab".repeat(32)))
                }
                "data_version" => {
                    envelope["outcome"]["record"]["data_version"] =
                        json!("another-semantic-position")
                }
                "read_name" => envelope["outcome"]["record"]["read"]["name"] = json!("other_read"),
                "capability" => envelope["capability"] = json!("other_read"),
                "binding" => envelope["requested_bindings"]["c"]["id"] = json!("another_identity"),
                _ => unreachable!(),
            }
            reseal_read_document(&mut envelope, "core_invocation");
            if field == "data_version" {
                // The inner read's arbitrary semantic data-version echo is
                // reproducible alone, but it is not this invocation's position.
                assert!(replay_read(&module, &envelope["outcome"]["record"].to_string()).matches);
            }
            assert_deterministic_nonmatch(&module, "core_invocation", &envelope.to_string());
        }
        emit(&row, "core_invocation", "inner_outer_binding");
    }
}

#[test]
fn standalone_reproduction_does_not_certify_store_lineage_state_or_position() {
    for (id, _, _, declared) in ROWS {
        let row = row(id);
        let module = module(&row);
        for (boundary, key) in boundaries(declared) {
            let original: Value = serde_json::from_str(&fixture_text(&row, key)).unwrap();
            for data_version in [
                format!(
                    "store:sha256:{};state:sha256:{};position:0",
                    "ab".repeat(32),
                    "cd".repeat(32)
                ),
                format!(
                    "store:sha256:{};state:sha256:{};position:123",
                    "ab".repeat(32),
                    "cd".repeat(32)
                ),
            ] {
                let mut claimed = original.clone();
                claimed["data_version"] = json!(data_version);
                if boundary == "core_invocation" {
                    claimed["outcome"]["record"]["data_version"] = claimed["data_version"].clone();
                }
                reseal_read_document(&mut claimed, boundary);
                let replay = replay_at(&module, boundary, &claimed.to_string());
                assert!(replay.matches, "{id} {boundary}: {:?}", replay.diff);
                assert!(replay.diff.is_none());
                assert_eq!(
                    serde_json::from_str::<Value>(&replay.to_json_string()).unwrap(),
                    json!({"matches":true})
                );
            }
        }
    }
    // This Core API consumes a Module and retained evidence, with no Backend.
    // Its match therefore neither discharges U09 Store binding checks nor
    // predicts U10 operational failures from required Store access.
}

#[test]
fn invocation_metadata_binding_refusals_and_decode_evidence_keep_their_identity_contracts() {
    for id in ["M07-D", "M08-H-D", "M08-C-D"] {
        let row = row(id);
        let module = module(&row);
        let original: Value =
            serde_json::from_str(&fixture_text(&row, "invocation_record")).unwrap();
        let mut metadata = original.clone();
        metadata["intent_metadata"] = json!({"source":"018-control","sequence":1});
        reseal_invocation(&mut metadata);
        assert_ne!(metadata["record_id"], original["record_id"]);
        assert!(replay_invocation(&module, &metadata.to_string()).matches);
        metadata["intent_metadata"]["sequence"] = json!(2);
        assert_deterministic_nonmatch(&module, "core_invocation", &metadata.to_string());
        metadata["intent_metadata"] = json!("not-an-object");
        reseal_invocation(&mut metadata);
        assert_deterministic_nonmatch(&module, "core_invocation", &metadata.to_string());

        let binding = variant(&row, "binding_fixture");
        let mut refusal: Value =
            serde_json::from_str(&fixture_text(&binding, "invocation_record")).unwrap();
        assert!(refusal["outcome"].get("record").is_none());
        assert!(replay_invocation(&module, &refusal.to_string()).matches);
        refusal["outcome"]["problems"][0]["reason"] = json!("forged_reason");
        reseal_invocation(&mut refusal);
        assert_deterministic_nonmatch(&module, "core_invocation", &refusal.to_string());

        let request = json!({"format":"behavior.invocation.v1","capability":"inspect","bindings":{"c":{"entity":"Culture","id":"c1"}},"input":{},"context":{}});
        let mut invalid_snapshot: Value =
            serde_json::from_str(&fixture_text(&row, "snapshot")).unwrap();
        invalid_snapshot.as_object_mut().unwrap().remove("format");
        let refused = behavior_core::invocation::invoke_document(
            &module,
            &request.to_string(),
            &invalid_snapshot.to_string(),
            None,
        )
        .unwrap();
        let mut recorded = refused.as_json().clone();
        assert_eq!(recorded["outcome"]["kind"], "pre_evaluation_refusal");
        assert_eq!(recorded["outcome"]["stage"], "DECODE");
        assert!(recorded["outcome"].get("record").is_none());
        assert_eq!(
            recorded["outcome"]["decode_evidence"]["source_kind"],
            "documents"
        );
        assert!(replay_invocation(&module, &recorded.to_string()).matches);
        recorded["outcome"]["decode_evidence"]["snapshot"]["format"] =
            json!("behavior.snapshot.v1");
        reseal_invocation(&mut recorded);
        assert_deterministic_nonmatch(&module, "core_invocation", &recorded.to_string());
    }
}

#[test]
fn all_existing_archived_decision_profiles_and_current_action_invocations_remain_replayable() {
    let ledger = behavior_core::admit(&common::read(
        &common::fixtures().join("invocation/modules/ledger.json"),
    ))
    .unwrap();
    let snapshot = behavior_core::invocation::Snapshot::decode(
        &ledger,
        &common::read(&common::fixtures().join("invocation/snapshots/s1.json")),
    )
    .unwrap()
    .0
    .unwrap();
    for (name, archived_profile) in [("suspend", "0.4"), ("register", "0.6")] {
        let original = common::archived_record("invoke", name);
        let archived: Value = serde_json::from_str(&original).unwrap();
        assert_eq!(
            archived["outcome"]["record"]["record_version"],
            archived_profile
        );
        assert!(replay_invocation(&ledger, &original).matches);
        let requested = behavior_core::invocation::RequestedInvocation::decode(&common::read(
            &common::fixtures().join(format!("invocation/invocations/{name}.json")),
        ))
        .unwrap()
        .0
        .unwrap();
        let fresh = behavior_core::invocation::invoke_with_snapshot(&ledger, &requested, &snapshot)
            .unwrap();
        assert_eq!(
            fresh.as_json()["outcome"]["record"]["record_version"],
            "0.8"
        );
        assert_eq!(
            fresh.as_json()["outcome"]["record"]["validation_profile"],
            "behavior.complete_resulting_state.v1"
        );
        assert_eq!(fresh.as_json()["outcome"]["record"]["result"], "ALLOW");
        assert_ne!(fresh.as_json()["record_id"], archived["record_id"]);
        assert!(replay_invocation(&ledger, &fresh.to_json_string()).matches);
    }
    let accounts = behavior_core::admit(&common::read(
        &common::fixtures().join("wire/valid/accounts.json"),
    ))
    .unwrap();
    let archive05 = common::archived_record("006", "check_exists_true");
    assert_eq!(
        serde_json::from_str::<Value>(&archive05).unwrap()["record_version"],
        "0.5"
    );
    assert!(behavior_core::replay(&accounts, &archive05).matches);

    let receipt = behavior_core::admit(include_str!(
        "../../../tests/fixtures/commands/modules/receipt.json"
    ))
    .unwrap();
    let archive07 = include_str!("../../../tests/fixtures/commands/records/receipt.json");
    let invocation07 =
        include_str!("../../../tests/fixtures/commands/records/receipt.invocation.json");
    let golden: Value = serde_json::from_str(include_str!(
        "../../../tests/fixtures/commands/records/receipt.golden.json"
    ))
    .unwrap();
    let record07 = behavior_core::DecisionRecord::from_json(archive07).unwrap();
    assert_eq!(record07.as_json()["record_version"], "0.7");
    assert_eq!(
        behavior_core::canonical::tagged_hash("behavior.transition.v1", record07.as_json())
            .unwrap(),
        golden["decision_record_hash"]
    );
    assert!(behavior_core::replay(&receipt, archive07).matches);
    assert_eq!(
        serde_json::from_str::<Value>(invocation07).unwrap()["record_id"],
        golden["invocation_record_id"]
    );
    assert!(replay_invocation(&receipt, invocation07).matches);
    let request = behavior_core::invocation::RequestedInvocation::decode(include_str!(
        "../../../tests/fixtures/commands/invocations/receipt.json"
    ))
    .unwrap()
    .0
    .unwrap();
    let snapshot = behavior_core::invocation::Snapshot::decode(
        &receipt,
        include_str!("../../../tests/fixtures/commands/snapshots/receipt.json"),
    )
    .unwrap()
    .0
    .unwrap();
    let current =
        behavior_core::invocation::invoke_with_snapshot(&receipt, &request, &snapshot).unwrap();
    assert_eq!(
        current.as_json()["outcome"]["record"]["record_version"],
        "0.8"
    );
    assert_eq!(
        current.as_json()["outcome"]["record"]["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    assert_eq!(
        current.as_json()["outcome"]["record"]["commands"]["intents"]
            .as_array()
            .unwrap()
            .len(),
        1
    );
    assert!(replay_invocation(&receipt, &current.to_json_string()).matches);
}
