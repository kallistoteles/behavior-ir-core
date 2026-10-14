#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Feature 008: the format versions the engine reports come from the constants that implement
//! them (research R2).

use behavior_core::eval::{RECORD_VERSION, RECORD_VERSION_LIFECYCLE, RECORD_VERSION_QUERIES};
use behavior_core::record::RECORD_VERSION_COMMANDS;
use behavior_core::wire::{
    IR_VERSION, IR_VERSION_COMMANDS, IR_VERSION_CONSTRAINTS, IR_VERSION_EXACT,
    IR_VERSION_FIXED_SCALE, IR_VERSION_LIFECYCLE, IR_VERSION_QUERIES, IR_VERSION_READS,
};
use serde_json::json;

#[test]
fn format_versions_report_the_implemented_constants() {
    let v = behavior_core::format_versions();
    assert_eq!(v["engine"], env!("CARGO_PKG_VERSION"));
    assert_eq!(
        v["wire_ir"],
        json!([
            IR_VERSION,
            IR_VERSION_CONSTRAINTS,
            IR_VERSION_FIXED_SCALE,
            IR_VERSION_EXACT,
            IR_VERSION_LIFECYCLE,
            IR_VERSION_QUERIES,
            IR_VERSION_READS
        ])
    );
    assert_eq!(
        v["wire_ir"],
        json!(["0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7"])
    );
    assert_eq!(
        v["records"],
        json!([
            RECORD_VERSION,
            RECORD_VERSION_LIFECYCLE,
            RECORD_VERSION_QUERIES,
            RECORD_VERSION_COMMANDS,
            "0.8"
        ])
    );
    assert_eq!(v["records"], json!(["0.4", "0.5", "0.6", "0.7", "0.8"]));
    assert_eq!(
        v["accepted_wire_ir"],
        json!([
            IR_VERSION_EXACT,
            IR_VERSION_LIFECYCLE,
            IR_VERSION_QUERIES,
            IR_VERSION_READS,
            IR_VERSION_COMMANDS
        ])
    );
    assert_eq!(
        v["accepted_wire_ir"],
        json!(["0.4", "0.5", "0.6", "0.7", "0.8"])
    );
    // Read records (feature 010) are a separate document kind, named by their format tag.
    assert_eq!(
        v["read_records"],
        json!(["behavior.read_record.v1", "behavior.read_record.v2"])
    );
}

const WITNESSES: [(&str, &str); 5] = [
    ("0.4", "wire/valid/exact_closure.json"),
    ("0.5", "wire/valid/accounts.json"),
    ("0.6", "wire/valid/orders.json"),
    ("0.7", "reads/modules/lab.json"),
    ("0.8", "commands/modules/receipt.json"),
];
const EXCLUDED: [&str; 8] = ["0.1", "0.2", "0.3", "0.9", "1.0", "0.4.0", " 0.4", ""];
const SUPPORT: &str = "this engine accepts `0.4`, `0.5`, `0.6`, `0.7` and `0.8` only.";
const MIGRATION: &str = "Wire IR 0.1–0.3 used rounded decimal arithmetic, 0.4 is exact: re-serialize from the DSL and declare a scale where computed values are stored";

fn fixture(name: &str) -> serde_json::Value {
    let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures")
        .join(name);
    serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap()
}

#[test]
fn admission_metadata_agrees_with_real_version_witnesses() {
    let info = behavior_core::format_versions();
    assert_eq!(
        info["accepted_wire_ir"],
        json!(["0.4", "0.5", "0.6", "0.7", "0.8"])
    );
    assert_eq!(info, behavior_core::format_versions());
    for (version, file) in WITNESSES {
        let doc = fixture(file);
        assert_eq!(doc["ir_version"], version);
        let result = behavior_core::admission_report(&doc.to_string());
        assert!(result.ok, "{version}: {:?}", result.errors);
        println!("VERSION_ROW:positive:{version}");
    }
}

#[test]
fn admission_refusal_support_clause_is_complete_and_preserves_other_text() {
    let info = behavior_core::format_versions();
    for version in EXCLUDED {
        let mut doc = fixture("wire/valid/empty.json");
        doc["ir_version"] = json!(version);
        let first = behavior_core::admission_report(&doc.to_string());
        let second = behavior_core::admission_report(&doc.to_string());
        assert!(!first.ok);
        assert_eq!(first.to_json_string(), second.to_json_string());
        assert_eq!(first.errors.len(), 1);
        assert_eq!(first.errors[0].code, "UNSUPPORTED_IR_VERSION");
        assert_eq!(
            first.errors[0].message,
            format!("unsupported ir_version `{version}`; {SUPPORT} {MIGRATION}")
        );
        let clause = first.errors[0]
            .message
            .split("this engine accepts ")
            .nth(1)
            .unwrap()
            .split(" only.")
            .next()
            .unwrap();
        let reported: Vec<_> = clause
            .split('`')
            .enumerate()
            .filter_map(|(i, token)| (i % 2 == 1).then_some(token))
            .collect();
        assert_eq!(json!(reported), info["accepted_wire_ir"]);
        println!("VERSION_ROW:unsupported:{version:?}");
    }
}

#[test]
fn admission_controls_excluded_versions_never_select_a_decoder() {
    for version in EXCLUDED {
        let mut doc = fixture("wire/valid/empty.json");
        doc["ir_version"] = json!(version);
        let result = behavior_core::admission_report(&doc.to_string());
        assert!(!result.ok);
        assert_eq!(result.errors[0].code, "UNSUPPORTED_IR_VERSION");
        assert!(
            result.errors[0]
                .message
                .starts_with(&format!("unsupported ir_version `{version}`;"))
        );
    }
}

#[test]
fn admission_controls_structural_headers_and_body_errors_remain_distinct() {
    for (i, version) in [
        None,
        Some(json!(null)),
        Some(json!(true)),
        Some(json!(4)),
        Some(json!([])),
        Some(json!({})),
    ]
    .into_iter()
    .enumerate()
    {
        let mut doc = fixture("wire/valid/empty.json");
        match version {
            Some(v) => {
                doc["ir_version"] = v;
            }
            None => {
                doc.as_object_mut().unwrap().remove("ir_version");
            }
        }
        let result = behavior_core::admission_report(&doc.to_string());
        assert!(!result.ok);
        assert_eq!(result.errors[0].code, "DECODE_ERROR");
        println!("VERSION_ROW:structure:{i}");
    }
    for (version, file) in WITNESSES {
        let mut doc = fixture(file);
        doc.as_object_mut().unwrap().remove("enums");
        let result = behavior_core::admission_report(&doc.to_string());
        assert!(!result.ok);
        assert_eq!(result.errors[0].code, "DECODE_ERROR");
        assert!(result.errors[0].message.contains("enums"));
        println!("VERSION_ROW:body:{version}");
    }
}

#[test]
fn admission_controls_duplicate_dispatch_keys_refuse_before_body_selection() {
    for (left, right) in [("0.8", "0.8"), ("0.8", "0.4")] {
        let doc = format!("{{\"ir_version\":\"{left}\",\"ir_version\":\"{right}\"}}");
        let result = behavior_core::admission_report(&doc);
        assert!(!result.ok);
        assert_eq!(result.errors[0].code, "DECODE_ERROR");
        assert!(result.errors[0].message.contains("ambiguous wire version"));
        println!("VERSION_ROW:duplicate:{left}:{right}");
    }
}
