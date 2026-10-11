#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Independent new-format structural schema/codec parity in the pinned environment.
#[path = "support/commands.rs"]
mod commands;
mod common;

use behavior_core::{DecisionRecord, admit, evaluate};
use serde_json::{Value, json};
use std::io::Write;
use std::process::{Command, Stdio};

fn schema_path() -> std::path::PathBuf {
    common::repo_root().join("schema/decision-record-0.8.schema.json")
}

fn schema_cases(cases: &[(Value, bool)]) {
    assert!(
        schema_path().is_file(),
        "current record 0.8 schema is missing"
    );
    let program = r#"
import json, sys
from jsonschema import Draft202012Validator
schema = json.load(open('schema/decision-record-0.8.schema.json'))
Draft202012Validator.check_schema(schema)
validator = Draft202012Validator(schema)
for index, (record, accepted) in enumerate(json.load(sys.stdin)):
    errors = list(validator.iter_errors(record))
    assert (not errors) == accepted, (index, accepted, [str(e) for e in errors])
"#;
    let mut child = Command::new("python3")
        .args(["-c", program])
        .current_dir(common::repo_root())
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .unwrap();
    child
        .stdin
        .take()
        .unwrap()
        .write_all(serde_json::to_string(cases).unwrap().as_bytes())
        .unwrap();
    let output = child.wait_with_output().unwrap();
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
}

fn module(command: bool) -> behavior_core::semantic::module::Module {
    let mut wire = commands::module();
    if !command {
        wire["ir_version"] = json!("0.6");
        wire.as_object_mut().unwrap().remove("commands");
        wire.as_object_mut().unwrap().remove("reads");
        wire["actions"][0]
            .as_object_mut()
            .unwrap()
            .remove("command_effects");
    }
    wire["constraints"] = json!([{
        "name":"positive_cost", "entity":"Order", "param":"order", "loc":commands::loc(),
        "body":commands::op("ge", vec![commands::field("cost"), commands::integer(0)])
    }]);
    admit(&wire.to_string()).unwrap()
}

#[test]
fn record_08_schema_exists_and_is_a_valid_draft_2020_12_document() {
    schema_cases(&[]);
}

#[test]
fn record_08_structural_codec_and_schema_agree_for_profiles_witnesses_and_refusals() {
    assert!(
        schema_path().is_file(),
        "current record 0.8 schema is missing"
    );
    let mut cases = Vec::new();
    for command in [false, true] {
        let module = module(command);
        let record = evaluate(&module, &commands::request(2, true).to_string())
            .as_json()
            .clone();
        assert_eq!(record["record_version"], "0.8");
        DecisionRecord::from_json(&record.to_string()).unwrap();
        cases.push((record.clone(), true));
        let child_index = record["trace"]
            .as_array()
            .unwrap()
            .iter()
            .position(|step| step["phase"] == "constraint_post")
            .unwrap();
        assert_eq!(
            record["trace"][child_index]["observations"],
            json!([{"field":"cost","phase_state":"S'","value":2}])
        );
        for mutation in 0..15 {
            let mut bad = record.clone();
            match mutation {
                0 => bad["hidden"] = json!(true),
                1 => bad["validation_profile"] = json!("unknown"),
                2 => bad["record_version"] = json!("0.9"),
                3 => {
                    bad.as_object_mut().unwrap().remove("validation_profile");
                }
                4 => bad["semantic_profile"] = json!("wrong"),
                5 => bad["trace"][child_index]["subject"] = json!("Order#order-1"),
                6 => {
                    bad["trace"][child_index]["subject"]
                        .as_object_mut()
                        .unwrap()
                        .remove("id");
                }
                7 => bad["trace"][child_index]["obligation"]["source"] = json!("display"),
                8 => {
                    bad["trace"][child_index]["obligation"]
                        .as_object_mut()
                        .unwrap()
                        .remove("name");
                }
                9 => bad["refused_request"] = json!("{"),
                10 => {
                    bad.as_object_mut().unwrap().remove("facts");
                }
                11 if command => {
                    bad.as_object_mut().unwrap().remove("commands");
                }
                11 => bad["commands"] = json!({"declarations":[],"types":[],"intents":[]}),
                12 => bad["trace"][child_index]["observations"][0]["phase_state"] = json!("S"),
                13 => bad["trace"][child_index]["observations"][0]["hidden"] = json!(true),
                _ => {
                    bad["trace"][child_index]
                        .as_object_mut()
                        .unwrap()
                        .remove("observations");
                }
            }
            assert!(
                DecisionRecord::from_json(&bad.to_string()).is_err(),
                "structural case {mutation}: {bad}"
            );
            cases.push((bad, false));
        }
        let refused = evaluate(&module, "{").as_json().clone();
        assert_eq!(refused["result"], "INVALID_INPUT");
        assert_eq!(refused["refused_request"], "{");
        DecisionRecord::from_json(&refused.to_string()).unwrap();
        cases.push((refused.clone(), true));
        let mut bad = refused;
        bad["trace"] = record["trace"].clone();
        assert!(DecisionRecord::from_json(&bad.to_string()).is_err());
        cases.push((bad, false));
    }
    schema_cases(&cases);
}
