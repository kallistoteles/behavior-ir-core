#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_verify::{Profile, solver::Z3Process, verify};
use serde_json::{Value, json};

#[test]
fn multi_binding_ledger_has_the_same_obligation_classes_and_runtime_confirmed_findings() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let expected = common::json(&dir.join("verify/ledger.expected.json"));
    let solver = Z3Process::from_env().unwrap();
    let attestation = verify(&module, &Profile::default(), None, &solver);
    assert_eq!(
        Value::Array(common::outcomes(&attestation)),
        Value::Array(common::expected_outcomes(&expected))
    );
    assert_eq!(attestation.result, "not_verified");
    let findings = attestation.findings();
    assert!(findings.iter().any(|f| f["kind"] == "preservation"
        && f["counterexample"]["record"]["action"]["name"] == "register_customer"));
    for finding in findings {
        let witness = &finding["counterexample"];
        let record = &witness["record"];
        if record.get("action").is_some() {
            let request = json!({"action":record["action"]["name"],"data_version":"verification",
                "state":witness["state"],"input":witness["input"],"context":witness["context"],"facts":witness["facts"]});
            assert_eq!(
                behavior_core::evaluate(&module, &request.to_string()).as_json(),
                record
            );
        } else {
            let request = json!({"read":record["read"]["name"],"data_version":"verification",
                "state":witness["state"],"input":witness["input"],"context":witness["context"],"facts":witness["facts"]});
            let execution =
                behavior_core::read::evaluate_read_request(&module, &request.to_string()).unwrap();
            assert_eq!(execution.record.as_json(), record);
        }
    }
}
