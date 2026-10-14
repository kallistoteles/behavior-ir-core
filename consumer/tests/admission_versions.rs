//! Independent reporting/admission checks through the supported facade only.
use behavior_engine::{admission_report, engine_info, format_versions};
use serde_json::{Value, json};

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
        .join("../tests/fixtures")
        .join(name);
    serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap()
}

#[test]
fn admission_metadata_facade_reports_only_current_module_versions() {
    let info = engine_info();
    let versions = format_versions();
    let expected = json!(["0.4", "0.5", "0.6", "0.7", "0.8"]);
    assert_eq!(info["accepted_wire_ir"], expected);
    assert_eq!(versions["accepted_wire_ir"], expected);
    assert_eq!(info, engine_info());
    assert_eq!(
        info["wire_ir"],
        json!(["0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7"])
    );
    assert_eq!(info["records"], json!(["0.4", "0.5", "0.6", "0.7", "0.8"]));
    assert_eq!(
        info["read_records"],
        json!(["behavior.read_record.v1", "behavior.read_record.v2"])
    );
    assert_eq!(info["verifier"], "0.9.0");
    for key in ["engine", "wire_ir", "records", "read_records"] {
        assert_eq!(versions[key], info[key]);
    }
    assert_eq!(
        versions
            .as_object()
            .unwrap()
            .keys()
            .map(String::as_str)
            .collect::<Vec<_>>(),
        [
            "accepted_wire_ir",
            "engine",
            "read_records",
            "records",
            "wire_ir"
        ]
    );
    assert_eq!(
        info.as_object()
            .unwrap()
            .keys()
            .map(String::as_str)
            .collect::<Vec<_>>(),
        [
            "accepted_wire_ir",
            "command_occurrence_domain",
            "command_stream",
            "engine",
            "read_records",
            "records",
            "store_documents",
            "verifier",
            "wire_ir"
        ]
    );
    for (version, name) in WITNESSES {
        let doc = fixture(name);
        assert_eq!(doc["ir_version"], version);
        let report = admission_report(&doc.to_string());
        assert!(report.ok, "{version}: {:?}", report.errors);
        println!("VERSION_ROW:positive:{version}");
    }
}

#[test]
fn admission_refusal_facade_support_and_evidence_are_preserved() {
    for version in EXCLUDED {
        let mut doc = fixture("wire/valid/empty.json");
        doc["ir_version"] = json!(version);
        let report = admission_report(&doc.to_string());
        assert!(!report.ok);
        assert_eq!(report.errors.len(), 1);
        assert_eq!(report.errors[0].code, "UNSUPPORTED_IR_VERSION");
        let message = &report.errors[0].message;
        assert!(message.starts_with(&format!("unsupported ir_version `{version}`;")));
        assert!(message.contains(SUPPORT), "{message}");
        let clause = message
            .split("this engine accepts ")
            .nth(1)
            .unwrap()
            .split(" only.")
            .next()
            .unwrap();
        let accepted: Vec<_> = clause
            .split('`')
            .enumerate()
            .filter_map(|(i, v)| (i % 2 == 1).then_some(v))
            .collect();
        assert_eq!(json!(accepted), engine_info()["accepted_wire_ir"]);
        assert_eq!(
            report.to_json_string(),
            admission_report(&doc.to_string()).to_json_string()
        );
        println!("VERSION_ROW:unsupported:{version:?}");
    }
}

#[test]
fn admission_controls_facade_structural_body_and_dispatch_errors() {
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
        let report = admission_report(&doc.to_string());
        assert!(!report.ok);
        assert_eq!(report.errors[0].code, "DECODE_ERROR");
        println!("VERSION_ROW:structure:{i}");
    }
    for (version, name) in WITNESSES {
        let mut doc = fixture(name);
        doc.as_object_mut().unwrap().remove("enums");
        let report = admission_report(&doc.to_string());
        assert!(!report.ok);
        assert_eq!(report.errors[0].code, "DECODE_ERROR");
        assert!(report.errors[0].message.contains("enums"));
        println!("VERSION_ROW:body:{version}");
    }
    for (a, b) in [("0.8", "0.8"), ("0.8", "0.4")] {
        let report = admission_report(&format!(
            "{{\"ir_version\":\"{a}\",\"ir_version\":\"{b}\"}}"
        ));
        assert!(!report.ok);
        assert_eq!(report.errors[0].code, "DECODE_ERROR");
        assert!(report.errors[0].message.contains("ambiguous wire version"));
        println!("VERSION_ROW:duplicate:{a}:{b}");
    }
}
