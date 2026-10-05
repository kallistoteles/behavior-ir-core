#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_core::invocation::{
    RequestedInvocation, Snapshot, invoke_with_snapshot, replay_invocation,
};
use serde_json::json;

#[test]
fn actions_and_reads_share_all_applicable_binding_outcomes_at_arities_zero_to_three() {
    let dir = common::fixtures().join("invocation");
    let mut wire = common::json(&dir.join("modules/ledger.json"));
    let actions = wire["actions"].as_array().unwrap().clone();
    for action in &actions {
        wire["reads"].as_array_mut().unwrap().push(json!({"name":format!("probe_{}",action["name"].as_str().unwrap()),
            "params":action["params"],"loc":{"file":"probe","line":1},
            "body":{"value":{"op":"lit","type":{"t":"bool"},"value":true,"loc":{"file":"probe","line":1}}}}));
    }
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let snapshot = Snapshot::decode(&module, &common::read(&dir.join("snapshots/s1.json")))
        .unwrap()
        .0
        .unwrap();
    let mut seen = 0;
    for (name, base) in [
        ("register_customer", "register"),
        ("suspend_customer", "suspend"),
        ("transfer", "transfer"),
        ("settle", "settle3"),
    ] {
        let raw = common::json(&dir.join(format!("invocations/{base}.json")));
        let names: Vec<_> = raw["bindings"]
            .as_object()
            .unwrap()
            .keys()
            .cloned()
            .collect();
        for outcome in [
            "resolved",
            "unknown",
            "wrong_type",
            "alias",
            "missing",
            "extra",
        ] {
            if names.is_empty() && !matches!(outcome, "resolved" | "extra") {
                continue;
            }
            if outcome == "alias" && names.len() < 2 {
                continue;
            }
            let mut request = raw.clone();
            match outcome {
                "unknown" => request["bindings"][&names[0]]["id"] = json!("absent"),
                "wrong_type" => {
                    request["bindings"][&names[0]]["entity"] =
                        json!(if request["bindings"][&names[0]]["entity"] == "Account" {
                            "Customer"
                        } else {
                            "Account"
                        })
                }
                "alias" => request["bindings"][&names[1]] = request["bindings"][&names[0]].clone(),
                "missing" => {
                    request["bindings"]
                        .as_object_mut()
                        .unwrap()
                        .remove(&names[0]);
                }
                "extra" => request["bindings"]["extra"] = json!({"entity":"Customer","id":"c1"}),
                _ => {}
            }
            let mut results = Vec::new();
            for capability in [name.to_string(), format!("probe_{name}")] {
                request["capability"] = json!(capability);
                let requested = RequestedInvocation::decode(&request.to_string())
                    .unwrap()
                    .0
                    .unwrap();
                let record = invoke_with_snapshot(&module, &requested, &snapshot).unwrap();
                let replay = replay_invocation(&module, &record.to_json_string());
                assert!(replay.matches, "{capability}/{outcome}: {:?}", replay.diff);
                results.push(record);
            }
            assert_eq!(
                results[0].refusal_stage(),
                results[1].refusal_stage(),
                "{name}/{outcome}"
            );
            assert_eq!(
                results[0].as_json()["outcome"].get("problems"),
                results[1].as_json()["outcome"].get("problems")
            );
            if outcome == "resolved" {
                assert_eq!(results[0].outcome_kind(), "evaluated");
            } else {
                assert_eq!(results[0].refusal_stage(), Some("BINDING"));
            }
            seen += 1;
        }
    }
    assert_eq!(seen, 19);
}
