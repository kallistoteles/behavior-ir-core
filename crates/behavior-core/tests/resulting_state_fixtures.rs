#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Hand-specified current fixtures, separate from immutable compatibility outputs.
mod common;

use behavior_core::{DecisionRecord, admit, evaluate, replay};
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::collections::BTreeMap;
use std::io::Write;
use std::process::{Command, Stdio};

fn fixture_root() -> std::path::PathBuf {
    common::fixtures().join("resulting-state-validity/current")
}

fn case(name: &str) -> (behavior_core::semantic::Module, Value, Value) {
    let root = fixture_root();
    let manifest = common::json(&root.join("manifest.json"));
    for (path, digest) in manifest["files"].as_object().unwrap() {
        let bytes = std::fs::read(root.join(path)).unwrap();
        assert_eq!(
            format!("{:x}", Sha256::digest(&bytes)),
            digest.as_str().unwrap()
        );
    }
    for (path, digest) in manifest["module_files"].as_object().unwrap() {
        let bytes = std::fs::read(common::repo_root().join(path)).unwrap();
        assert_eq!(
            format!("{:x}", Sha256::digest(&bytes)),
            digest.as_str().unwrap()
        );
    }
    let inventory = common::json(&root.join("cases.json"));
    let case = inventory["cases"]
        .as_array()
        .unwrap()
        .iter()
        .find(|case| case["name"] == name)
        .unwrap();
    let module = admit(&common::read(
        &common::repo_root().join(case["module"].as_str().unwrap()),
    ))
    .unwrap();
    let request = common::json(&root.join(case["request"].as_str().unwrap()));
    let expected = common::json(&root.join(case["expectation"].as_str().unwrap()));
    (module, request, expected)
}

fn schema_cases(cases: &[(Value, bool)]) {
    let program = r#"
import json, sys
from jsonschema import Draft202012Validator
schema = json.load(open('schema/decision-record-0.8.schema.json'))
Draft202012Validator.check_schema(schema)
validator = Draft202012Validator(schema)
for index, (record, accepted) in enumerate(json.load(sys.stdin)):
    errors = list(validator.iter_errors(record))
    assert (not errors) == accepted, (index, accepted, [str(error) for error in errors])
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

fn evaluate_case(name: &str) -> (behavior_core::semantic::Module, Value, DecisionRecord) {
    let (module, request, expected) = case(name);
    let input_before = request.clone();
    let record = evaluate(&module, &request.to_string());
    let problems = common::subset_problems(&expected, record.as_json());
    assert!(
        problems.is_empty(),
        "{name}: {problems:?}: {}",
        record.to_json_string()
    );
    assert_eq!(
        request, input_before,
        "evaluation changed the caller's input"
    );
    let decoded = DecisionRecord::from_json(&record.to_json_string()).unwrap();
    assert_eq!(decoded.as_json(), record.as_json());
    assert_eq!(decoded.to_json_string(), record.to_json_string());
    schema_cases(&[(record.as_json().clone(), true)]);
    let reproduction = replay(&module, &record.to_json_string());
    assert!(reproduction.matches, "{name}: {:?}", reproduction.diff);
    println!("fixture {name}: {}", record.to_json_string());
    (module, request, record)
}

fn finite_child(identity: &str) -> BTreeMap<String, Value> {
    BTreeMap::from([
        ("e0".into(), json!({"id":"e0","target":"new","x":1,"y":2})),
        (
            identity.into(),
            json!({"id":identity,"target":"absent","x":1,"y":2}),
        ),
    ])
}

fn independent_validity(rows: &BTreeMap<String, Value>) -> bool {
    // The actual constraint is not exists(row.target); no production validator is consulted.
    rows.values()
        .all(|row| !rows.contains_key(row["target"].as_str().unwrap()))
}

#[test]
fn current_invalid_creation_selects_the_unchanged_typed_witness() {
    let parent = BTreeMap::from([("e0".into(), finite_child("new")["e0"].clone())]);
    assert!(independent_validity(&parent));
    let child = finite_child("new");
    assert!(!independent_validity(&child));
    assert_eq!(child["e0"], parent["e0"]);
    assert!(
        !child.contains_key("absent"),
        "the created row itself satisfies the rule"
    );
    let (module, _, record) = evaluate_case("invalid-create");
    let hash =
        behavior_core::semantic::types::hash_display(module.constraints()["positive"].hash());
    assert_eq!(record.as_json()["trace"][1]["obligation"]["hash"], hash);
    assert!(record.command_intents().is_empty());
    let old = common::read(
        &common::fixtures()
            .join("resulting-state-validity/audit-counterexample/invalid-create.record.json"),
    );
    let archived: Value = serde_json::from_str(&old).unwrap();
    assert_eq!(archived["record_version"], "0.5");
    assert_eq!(archived["result"], "ALLOW");
    assert!(replay(&module, &old).matches);
    assert_ne!(
        archived,
        *record.as_json(),
        "fresh and historical evidence must remain distinct"
    );
}

#[test]
fn current_valid_creation_has_canonical_complete_child_witnesses() {
    assert!(independent_validity(&finite_child("unrelated")));
    let (_, _, record) = evaluate_case("valid-create");
    assert!(record.command_intents().is_empty());
    let witnesses: Vec<_> = record.as_json()["trace"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|step| step.get("subject").is_some())
        .collect();
    assert_eq!(witnesses.len(), 2);
    assert_eq!(witnesses[0]["subject"]["id"], "e0");
    assert_eq!(witnesses[1]["subject"]["id"], "unrelated");
    assert!(witnesses.iter().all(|step| step["outcome"] == true));
}

#[test]
fn current_partial_parent_is_a_refusal_and_not_an_empty_world() {
    let (_, request, record) = evaluate_case("partial-parent");
    assert!(request["facts"].get("universe").is_none());
    assert!(record.command_intents().is_empty());
}

#[test]
fn current_unguarded_margin_records_an_exact_division_error() {
    let (_, request, record) = evaluate_case("project-margin-zero");
    assert_eq!(request["state"]["project"]["revenue"], "0");
    assert_eq!(request["state"]["project"]["cost"], "10");
    assert_eq!(record.as_json()["state"]["project"]["flagged"], false);
    assert!(record.command_intents().is_empty());
}

#[test]
fn current_receipt_is_one_candidate_intent_without_dispatch_or_occurrence() {
    let (_, _, record) = evaluate_case("receipt");
    assert_eq!(record.command_intents().len(), 1);
    let intent = &record.command_intents().intents()[0];
    assert_eq!(
        intent.as_json()["payload"],
        json!({"recipient":"fixture-client"})
    );
    assert_eq!(
        record.as_json()["commands"]["intents"][0],
        *intent.as_json()
    );
    assert!(intent.as_json().get("command_occurrence_id").is_none());
    assert!(intent.as_json().get("dispatched").is_none());
}

#[test]
fn current_fixture_codec_and_schema_reject_malformed_typed_evidence() {
    let (module, request, _) = case("invalid-create");
    let record = evaluate(&module, &request.to_string()).as_json().clone();
    let mut cases = vec![(record.clone(), true)];
    for mutation in 0..5 {
        let mut bad = record.clone();
        match mutation {
            0 => bad["validation_profile"] = json!("unknown"),
            1 => bad["trace"][1]["subject"] = json!("E#e0"),
            2 => {
                bad["trace"][1]["obligation"]
                    .as_object_mut()
                    .unwrap()
                    .remove("name");
            }
            3 => bad["trace"][1]["observations"][0]["phase_state"] = json!("S"),
            _ => bad["hidden"] = json!(true),
        }
        assert!(
            DecisionRecord::from_json(&bad.to_string()).is_err(),
            "mutation {mutation}"
        );
        assert!(!replay(&module, &bad.to_string()).matches);
        cases.push((bad, false));
    }
    schema_cases(&cases);
}

#[test]
fn structurally_valid_witness_and_error_tampering_fails_replay() {
    let (module, request, _) = case("invalid-create");
    let record = evaluate(&module, &request.to_string()).as_json().clone();
    let mut cases = Vec::new();
    for mutation in 0..2 {
        let mut bad = record.clone();
        if mutation == 0 {
            bad["trace"][1]["subject"]["id"] = json!("foreign");
        } else {
            bad["trace"][1]["observations"][0]["value"] = json!("foreign");
        }
        DecisionRecord::from_json(&bad.to_string()).unwrap();
        assert!(!replay(&module, &bad.to_string()).matches);
        cases.push((bad, true));
    }
    let (module, request, _) = case("project-margin-zero");
    let mut bad = evaluate(&module, &request.to_string()).as_json().clone();
    bad["reasons"][0]["details"]["operands"][0]["value"] = json!("11");
    DecisionRecord::from_json(&bad.to_string()).unwrap();
    assert!(!replay(&module, &bad.to_string()).matches);
    cases.push((bad, true));
    schema_cases(&cases);
}
