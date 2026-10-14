#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Feature 008: `behavior engine-info` reports every version of the release (research R2).

use std::process::Command;

use serde_json::Value;

fn run(args: &[&str]) -> (i32, String) {
    let out = Command::new(env!("CARGO_BIN_EXE_behavior"))
        .args(args)
        .output()
        .unwrap();
    (
        out.status.code().unwrap_or(-1),
        String::from_utf8(out.stdout).unwrap(),
    )
}

#[test]
fn engine_info_reports_every_version() {
    let (code, out) = run(&["engine-info"]);
    assert_eq!(code, 0, "{out}");
    let v: Value = serde_json::from_str(&out).unwrap();
    assert_eq!(
        out.trim_end(),
        behavior_core::canonical::to_canonical_string(&v).unwrap()
    );
    assert_eq!(v["engine"], env!("CARGO_PKG_VERSION"));
    assert_eq!(v["wire_ir"], behavior_core::format_versions()["wire_ir"]);
    assert_eq!(v["records"], behavior_core::format_versions()["records"]);
    assert_eq!(v["verifier"], behavior_verify::VERIFIER_VERSION);
    let docs = include_str!("../../behavior-store/src/documents.rs");
    let tags: Vec<&str> = docs
        .lines()
        .filter(|l| l.starts_with("pub const TAG_"))
        .filter_map(|l| l.split('"').nth(1))
        .collect();
    assert!(!tags.is_empty());
    let reported: Vec<&str> = v["store_documents"]
        .as_array()
        .unwrap()
        .iter()
        .map(|t| t.as_str().unwrap())
        .collect();
    for t in &tags {
        assert!(reported.contains(t), "{t} missing from {reported:?}");
    }
    assert_eq!(reported.len(), tags.len());
}

#[test]
fn version_of_a_module_is_unchanged() {
    let wire = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures/wire/valid/orders.json");
    let (code, out) = run(&["version", wire.to_str().unwrap()]);
    assert_eq!(code, 0);
    assert!(out.trim().starts_with("sha256:"), "{out}");
}

/// Feature 011 (FR-006c): the versions come from the engine's public door, and the command line
/// only prints them.
#[test]
fn engine_info_comes_from_the_engine() {
    let (code, out) = run(&["engine-info"]);
    assert_eq!(code, 0, "{out}");
    assert_eq!(
        out.trim_end(),
        behavior_core::canonical::to_canonical_string(&behavior_engine::engine_info()).unwrap()
    );
}

#[test]
fn durable_command_release_reports_all_accepted_formats() {
    let (code, out) = run(&["engine-info"]);
    assert_eq!(code, 0);
    let v: Value = serde_json::from_str(&out).unwrap();
    assert_eq!(v["engine"], "0.13.0");
    assert_eq!(
        v["wire_ir"],
        serde_json::json!(["0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7"])
    );
    assert_eq!(
        v["accepted_wire_ir"],
        serde_json::json!(["0.4", "0.5", "0.6", "0.7", "0.8"])
    );
    assert!(
        v["records"]
            .as_array()
            .unwrap()
            .contains(&serde_json::json!("0.7"))
    );
    assert_eq!(v["verifier"], "0.9.0");
    assert!(
        v["records"]
            .as_array()
            .unwrap()
            .contains(&serde_json::json!("0.8"))
    );
    assert_eq!(
        v["read_records"],
        serde_json::json!(["behavior.read_record.v1", "behavior.read_record.v2"])
    );
    assert_eq!(v["command_stream"], "behavior.command_stream_request.v1");
    assert_eq!(
        v["command_occurrence_domain"],
        "behavior.command_occurrence.v1"
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

fn fixture(name: &str) -> Value {
    let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures")
        .join(name);
    serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap()
}

fn admit_document(document: &str) -> (i32, String) {
    use std::sync::atomic::{AtomicU64, Ordering};
    static NEXT: AtomicU64 = AtomicU64::new(0);
    let path = std::env::temp_dir().join(format!(
        "behavior020-{}-{}.json",
        std::process::id(),
        NEXT.fetch_add(1, Ordering::Relaxed)
    ));
    std::fs::write(&path, document).unwrap();
    let result = run(&["admit", path.to_str().unwrap()]);
    std::fs::remove_file(path).unwrap();
    result
}

#[test]
fn admission_metadata_cli_matches_actual_version_witnesses() {
    let first = run(&["engine-info"]);
    assert_eq!(first.0, 0);
    assert_eq!(first, run(&["engine-info"]));
    let info: Value = serde_json::from_str(&first.1).unwrap();
    assert_eq!(
        info["accepted_wire_ir"],
        serde_json::json!(["0.4", "0.5", "0.6", "0.7", "0.8"])
    );
    for (version, file) in WITNESSES {
        let doc = fixture(file);
        assert_eq!(doc["ir_version"], version);
        let (status, out) = admit_document(&doc.to_string());
        assert_eq!(status, 0, "{version}: {out}");
        assert_eq!(serde_json::from_str::<Value>(&out).unwrap()["ok"], true);
        println!("VERSION_ROW:positive:{version}");
    }
}

#[test]
fn admission_refusal_cli_preserves_status_and_complete_support() {
    let (_, info) = run(&["engine-info"]);
    let info: Value = serde_json::from_str(&info).unwrap();
    for version in EXCLUDED {
        let mut doc = fixture("wire/valid/empty.json");
        doc["ir_version"] = serde_json::json!(version);
        let first = admit_document(&doc.to_string());
        assert_eq!(first.0, 2);
        assert_eq!(first, admit_document(&doc.to_string()));
        let report: Value = serde_json::from_str(&first.1).unwrap();
        assert_eq!(report["errors"][0]["code"], "UNSUPPORTED_IR_VERSION");
        let message = report["errors"][0]["message"].as_str().unwrap();
        assert!(message.starts_with(&format!("unsupported ir_version `{version}`;")));
        assert!(message.contains(SUPPORT), "{message}");
        let clause = message
            .split("this engine accepts ")
            .nth(1)
            .unwrap()
            .split(" only.")
            .next()
            .unwrap();
        let versions: Vec<_> = clause
            .split('`')
            .enumerate()
            .filter_map(|(i, v)| (i % 2 == 1).then_some(v))
            .collect();
        assert_eq!(serde_json::json!(versions), info["accepted_wire_ir"]);
        println!("VERSION_ROW:unsupported:{version:?}");
    }
}

#[test]
fn admission_controls_cli_preserves_structural_and_body_failures() {
    for (i, version) in [
        None,
        Some(serde_json::json!(null)),
        Some(serde_json::json!(true)),
        Some(serde_json::json!(4)),
        Some(serde_json::json!([])),
        Some(serde_json::json!({})),
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
        let (status, out) = admit_document(&doc.to_string());
        assert_eq!(status, 2);
        assert_eq!(
            serde_json::from_str::<Value>(&out).unwrap()["errors"][0]["code"],
            "DECODE_ERROR"
        );
        println!("VERSION_ROW:structure:{i}");
    }
    for (version, file) in WITNESSES {
        let mut doc = fixture(file);
        doc.as_object_mut().unwrap().remove("enums");
        let (status, out) = admit_document(&doc.to_string());
        assert_eq!(status, 2);
        let report: Value = serde_json::from_str(&out).unwrap();
        assert_eq!(report["errors"][0]["code"], "DECODE_ERROR");
        assert!(
            report["errors"][0]["message"]
                .as_str()
                .unwrap()
                .contains("enums")
        );
        println!("VERSION_ROW:body:{version}");
    }
    for (a, b) in [("0.8", "0.8"), ("0.8", "0.4")] {
        let (status, out) = admit_document(&format!(
            "{{\"ir_version\":\"{a}\",\"ir_version\":\"{b}\"}}"
        ));
        assert_eq!(status, 2);
        let report: Value = serde_json::from_str(&out).unwrap();
        assert_eq!(report["errors"][0]["code"], "DECODE_ERROR");
        assert!(
            report["errors"][0]["message"]
                .as_str()
                .unwrap()
                .contains("ambiguous wire version")
        );
        println!("VERSION_ROW:duplicate:{a}:{b}");
    }
}
