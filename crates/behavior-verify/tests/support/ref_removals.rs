#![allow(dead_code, clippy::unwrap_used, clippy::expect_used)]
use behavior_core::semantic::module::Module;
use behavior_verify::{Attestation, CheckKind, Profile, solver::Z3Process, verify};
use serde_json::{Value, json};
use std::path::Path;

pub fn wire(pattern: &str, version: &str) -> Value {
    let path = Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures/verify/ref-removals")
        .join(format!("{pattern}.json"));
    let mut w: Value = serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap();
    w["ir_version"] = json!(version);
    if version == "0.8" {
        w["commands"] = json!([]);
        for action in w["actions"].as_array_mut().unwrap() {
            action["command_effects"] = json!([]);
        }
    }
    w
}
pub fn module(pattern: &str, version: &str) -> Module {
    behavior_core::admit(&wire(pattern, version).to_string()).unwrap()
}
pub fn profile() -> Profile {
    Profile {
        checks: vec![CheckKind::Preservation],
        ..Profile::default()
    }
}
pub fn report(m: &Module) -> Attestation {
    verify(m, &profile(), None, &Z3Process::from_env().unwrap()).unwrap()
}
pub fn assert_reference_proven(a: &Attestation) {
    let checks = a.value["checks"].as_array().unwrap();
    assert!(
        checks
            .iter()
            .any(|c| c["subject"]["kind"] == "reference_world"),
        "missing actual complete-world Ref check: {}",
        a.value
    );
    assert!(!checks.is_empty());
    assert!(
        checks.iter().all(|c| c["outcome"] == "proven"),
        "{}",
        a.value
    );
    assert_eq!(a.value["result"], "verified");
}

pub fn loc() -> Value {
    json!({"file":"ref-removals.beh","line":1})
}
pub fn field(p: &str, f: &str) -> Value {
    json!({"op":"field","param":p,"field":f,"loc":loc()})
}
pub fn op(op: &str, args: Vec<Value>) -> Value {
    json!({"op":op,"args":args,"loc":loc()})
}
pub fn integer(n: i64) -> Value {
    json!({"op":"lit","type":{"t":"int"},"value":n,"loc":loc()})
}
pub fn count_guard(source: &str, field_name: &str, target: &str, n: i64) -> Value {
    json!({"expr":op("eq",vec![op("count",vec![json!({"op":"where","args":[{"op":"select","entity":source,"loc":loc()}],"param":"candidate","body":op("eq",vec![field("candidate",field_name),field(target,"id")]),"loc":loc()})]),integer(n)]),"loc":loc()})
}
pub fn reference_fields(a: &Attestation) -> std::collections::BTreeSet<String> {
    a.value["checks"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|c| c["subject"]["kind"] == "reference_world")
        .map(|c| c["subject"]["name"].as_str().unwrap().to_owned())
        .collect()
}
