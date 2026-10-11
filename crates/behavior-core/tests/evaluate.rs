#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Evaluation against hand-written expectations and reviewed golden records.
//! Frozen pre-017 records retain their original tables; fresh runs use complete parents.

mod common;

use behavior_core::{admit, evaluate, replay};
use proptest::prelude::*;
use serde_json::{Value, json};

fn module(name: &str) -> behavior_core::semantic::Module {
    let wire = common::read(&common::fixtures().join(format!("wire/valid/{name}.json")));
    admit(&wire).unwrap()
}

fn expectations() -> Value {
    common::json(&common::fixtures().join("requests/expectations.json"))
}

#[test]
fn archived_records_meet_hand_written_expectations() {
    let mut failures = Vec::new();
    for (name, exp) in expectations().as_object().unwrap() {
        let m = module(exp["wire"].as_str().unwrap());
        let text = common::archived_record("root", name);
        let record: Value = serde_json::from_str(&text).unwrap();
        assert!(replay(&m, &text).matches, "archive {name}");
        let mut check = |what: &str, ok: bool, detail: String| {
            if !ok {
                failures.push(format!("{name}: {what}: {detail}"));
            }
        };
        check(
            "result",
            record["result"] == exp["result"],
            format!("{}", record["result"]),
        );
        let trace = record["trace"].as_array().unwrap();
        let phases: Vec<&Value> = trace.iter().map(|s| &s["phase"]).collect();
        let want: Vec<&Value> = exp["phases"].as_array().unwrap().iter().collect();
        check("phases", phases == want, format!("{phases:?}"));
        for (i, (step, outcome)) in trace
            .iter()
            .zip(exp["outcomes"].as_array().unwrap())
            .enumerate()
        {
            let ok = match outcome.get("error_prefix") {
                Some(p) => step["outcome"]["error"]
                    .as_str()
                    .is_some_and(|e| e.starts_with(p.as_str().unwrap())),
                None => step["outcome"] == *outcome,
            };
            check(&format!("outcome[{i}]"), ok, format!("{}", step["outcome"]));
        }
        for (i, reads) in exp["reads"].as_object().unwrap() {
            let i: usize = i.parse().unwrap();
            check(
                &format!("reads[{i}]"),
                trace[i]["reads"] == *reads,
                format!("{}", trace[i]["reads"]),
            );
        }
        check(
            "changes",
            record["changes"] == exp["changes"],
            format!("{}", record["changes"]),
        );
        let codes: Vec<&Value> = record["reasons"]
            .as_array()
            .unwrap()
            .iter()
            .map(|r| &r["code"])
            .collect();
        let want: Vec<&Value> = exp["reasons"].as_array().unwrap().iter().collect();
        check("reasons", codes == want, format!("{}", record["reasons"]));
        if let Some(derived) = exp.get("derived") {
            let got: Vec<Value> = record["derived"]
                .as_array()
                .unwrap()
                .iter()
                .map(|d| json!([d["name"], d["phase_state"], d["value"]]))
                .collect();
            check(
                "derived",
                Value::Array(got.clone()) == *derived,
                format!("{got:?}"),
            );
        }
        for step in trace {
            check(
                "step hash",
                step["hash"]
                    .as_str()
                    .is_some_and(|h| h.starts_with("sha256:")),
                step.to_string(),
            );
        }
        check(
            "behavior_version",
            record["behavior_version"] == json!(m.behavior_version()),
            format!("{}", record["behavior_version"]),
        );
    }
    assert!(failures.is_empty(), "\n{}", failures.join("\n"));
}

#[test]
fn archived_goldens_are_unchanged_and_current_complete_runs_are_deterministic() {
    for (name, exp) in expectations().as_object().unwrap() {
        let archived = common::archived_record("root", name);
        assert_eq!(
            archived,
            common::read(&common::fixtures().join(format!("records/{name}.json")))
        );
        let m = module(exp["wire"].as_str().unwrap());
        let raw = common::json(&common::fixtures().join(format!("requests/{name}.json")));
        // Malformed binding/value cases remain raw; no preparation may repair them.
        let request = if name.starts_with("invalid_") {
            raw
        } else {
            common::complete_request(&m, &raw)
        };
        let first = evaluate(&m, &request.to_string());
        let second = evaluate(&m, &request.to_string());
        assert_eq!(first.to_json_string(), second.to_json_string(), "{name}");
        assert_eq!(first.as_json()["record_version"], "0.8");
        assert_eq!(
            first.as_json()["validation_profile"],
            "behavior.complete_resulting_state.v1"
        );
        // These witnesses follow the invoice/project rules, not the archived trace layout.
        let result = match name.as_str() {
            "invoice_allowed" | "invoice_exact_boundary" | "margin_flagged" => "ALLOW",
            "discount_breaks_invariant"
            | "invoice_above_limit"
            | "invoice_wrong_role"
            | "margin_guarded_zero_revenue" => "DENY",
            "invoice_invalid_state" => "INVALID_INPUT",
            "margin_unguarded_zero_revenue" => "ERROR",
            "invalid_extra_field"
            | "invalid_fractional_number"
            | "invalid_missing_field"
            | "invalid_wrong_section" => "INVALID_INPUT",
            _ => panic!("unclassified current fixture {name}"),
        };
        assert_eq!(
            first.as_json()["result"],
            result,
            "{name}: {}",
            first.to_json_string()
        );
        assert!(
            replay(&m, &first.to_json_string()).matches,
            "current {name}"
        );
        if matches!(name.as_str(), "invoice_allowed" | "invoice_exact_boundary") {
            let child = first.as_json()["trace"]
                .as_array()
                .unwrap()
                .iter()
                .find(|step| step.get("subject").is_some())
                .unwrap();
            assert_eq!(child["subject"], json!({"entity":"Invoice","id":"1042"}));
            assert_eq!(child["obligation"]["kind"], "invariant");
            assert_eq!(child["outcome"], true);
        }
    }
}

proptest! {
    #[test]
    fn allow_exactly_when_amount_within_limit(amount in 0u64..200_000, limit in 0u64..200_000, cents in 0u8..100) {
        let m = module("invoice");
        let amount = format!("{amount}.{cents:02}");
        let request = json!({
            "action": "approve_invoice", "data_version": "1",
            "state": {"invoice": {"id": "1", "amount": amount, "status": "pending", "approved_by": null}},
            "input": {},
            "context": {"actor": {"id": "a", "role": "manager", "approval_limit": limit.to_string()}}
        });
        let record: Value = serde_json::from_str(&evaluate(&m, &common::complete_request(&m, &request).to_string()).to_json_string()).unwrap();
        let within = amount.parse::<f64>().unwrap() <= limit as f64 + 1e-9
            && behavior_core::decimal::Dec::parse_str(&amount).unwrap()
                <= behavior_core::decimal::Dec::from_i64(limit as i64);
        prop_assert_eq!(record["result"] == "ALLOW", within);
        prop_assert_eq!(record["changes"].as_array().unwrap().is_empty(), !within);
    }
}
