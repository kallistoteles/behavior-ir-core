#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_verify::{Profile, solver::Z3Process, verify};
use serde_json::{Value, json};

// Decoded identity order for multiple same-type child rows is deliberately
// outside current 0.9 proof scope. The original outcome table remains archived.
const CURRENT_SCOPE: [&str; 2] = ["settle", "transfer"];

fn current_expected(expected: &Value) -> Vec<Value> {
    let mut want = common::expected_outcomes(expected);
    want.retain(|c| !CURRENT_SCOPE.iter().any(|action| c["action"] == *action));
    for action in CURRENT_SCOPE {
        for kind in [
            "dead_action",
            "evaluation_error",
            "postcondition",
            "preservation",
        ] {
            want.push(json!({"kind":kind,"action":action,"subject":action,
                "param":null,"outcome":"inconclusive"}));
        }
    }
    want.sort_by_key(Value::to_string);
    want
}

#[test]
fn multi_binding_ledger_has_the_same_obligation_classes_and_runtime_confirmed_findings() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let expected = common::json(&dir.join("verify/ledger.expected.json"));
    let solver = Z3Process::from_env().unwrap();
    let attestation = verify(&module, &Profile::default(), None, &solver).unwrap();
    assert_eq!(
        Value::Array(common::outcomes(&attestation)),
        Value::Array(current_expected(&expected))
    );
    assert_eq!(attestation.result, "not_verified");
    let findings = attestation.findings();
    assert!(findings.iter().any(|f| f["kind"] == "preservation"
        && f["counterexample"]["record"]["action"]["name"] == "register_customer"));
    for finding in findings {
        if finding["kind"] == "inconclusive" {
            let action = CURRENT_SCOPE
                .iter()
                .find(|action| {
                    finding["cites"]["action"]
                        == behavior_core::semantic::types::hash_display(
                            module.action(action).unwrap().hash(),
                        )
                })
                .unwrap_or_else(|| panic!("unexpected current scope: {finding}"));
            let kind = finding["check"].as_str().unwrap();
            assert!(
                [
                    "dead_action",
                    "evaluation_error",
                    "postcondition",
                    "preservation"
                ]
                .contains(&kind)
            );
            assert_eq!(finding["severity"], "blocking");
            assert_eq!(
                finding["explanation"],
                format!(
                    "{kind} of {action} is inconclusive (encoding_error: cannot encode: canonical same-type child identity order for Account)"
                )
            );
            assert!(finding.get("counterexample").is_none());
            continue;
        }
        let witness = &finding["counterexample"];
        let record = &witness["record"];
        if record.get("action").is_some() {
            assert_eq!(record["record_version"], "0.8");
            let universe = witness["facts"]["universe"].as_array().unwrap();
            assert_eq!(universe.len(), module.entities().len());
            for entity in module.entities().keys() {
                assert!(universe.iter().any(|u| u["entity"] == *entity));
            }
            let mut request = json!({"action":record["action"]["name"],"data_version":"verification",
                "state":witness["state"],"input":witness["input"],"context":witness["context"]});
            if let Some(facts) = witness.get("facts") {
                request["facts"] = facts.clone();
            }
            assert_eq!(
                behavior_core::evaluate(&module, &request.to_string()).as_json(),
                record
            );
        } else {
            let mut request = json!({"read":record["read"]["name"],"data_version":"verification",
                "state":witness["state"],"input":witness["input"],"context":witness["context"]});
            // An absent optional facts section is not the malformed value null.
            if let Some(facts) = witness.get("facts") {
                request["facts"] = facts.clone();
            }
            let execution =
                behavior_core::read::evaluate_read_request(&module, &request.to_string()).unwrap();
            assert_eq!(execution.record.as_json(), record);
        }
    }
}
