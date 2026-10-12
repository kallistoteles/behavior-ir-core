#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Fixed-scale values at runtime (feature 003): grid and range on input, exact lossless
//! arithmetic, exact quantities, explicit rescale with trace entries.
//!
//! `requests/003/expectations.json` maps each request to a JSON *subset* of its record: objects
//! must contain the listed keys, arrays must have the listed length with matching elements.
//! `$contains` lists substrings a string at a dotted path must contain; `$absent` lists dotted
//! paths that must not exist.

mod common;

use behavior_core::semantic::module::Module;
use behavior_core::{admit, evaluate, replay};
use proptest::prelude::*;
use serde_json::{Value, json};

fn module() -> Module {
    admit(&common::read(
        &common::fixtures().join("wire/valid/fixed_scale.json"),
    ))
    .unwrap()
}

fn subset(expected: &Value, got: &Value, path: &str, out: &mut Vec<String>) {
    match (expected, got) {
        (Value::Object(e), Value::Object(g)) => {
            for (k, v) in e {
                if k.starts_with('$') {
                    continue;
                }
                match g.get(k) {
                    Some(gv) => subset(v, gv, &format!("{path}.{k}"), out),
                    None => out.push(format!("{path}.{k}: missing")),
                }
            }
        }
        (Value::Array(e), Value::Array(g)) => {
            if e.len() != g.len() {
                out.push(format!(
                    "{path}: expected {} elements, got {}: {got}",
                    e.len(),
                    g.len()
                ));
                return;
            }
            for (i, (ev, gv)) in e.iter().zip(g).enumerate() {
                subset(ev, gv, &format!("{path}[{i}]"), out);
            }
        }
        (e, g) if e == g => {}
        (e, g) => out.push(format!("{path}: expected {e}, got {g}")),
    }
}

fn at<'a>(v: &'a Value, dotted: &str) -> Option<&'a Value> {
    dotted
        .split('.')
        .try_fold(v, |cur, part| match part.parse::<usize>() {
            Ok(i) => cur.get(i),
            Err(_) => cur.get(part),
        })
}

fn record(m: &Module, name: &str) -> (String, Value) {
    let request = common::read(&common::fixtures().join(format!("requests/003/{name}.json")));
    let raw: Value = serde_json::from_str(&request).unwrap();
    let request = if matches!(name, "off_grid_nested" | "off_grid_state" | "out_of_range") {
        raw
    } else {
        common::complete_request(m, &raw)
    };
    let text = evaluate(m, &request.to_string()).to_json_string();
    let v: Value = serde_json::from_str(&text).unwrap();
    (text, v)
}

#[test]
fn archived_records_meet_003_expectations() {
    let m = module();
    let exp = common::json(&common::fixtures().join("requests/003/expectations.json"));
    let mut failures = Vec::new();
    for (name, e) in exp.as_object().unwrap() {
        let text = common::archived_record("003", name);
        let rec: Value = serde_json::from_str(&text).unwrap();
        assert!(replay(&m, &text).matches, "archive {name}");
        let mut out = Vec::new();
        if rec["record_version"] != "0.4" {
            out.push(format!("record_version {}", rec["record_version"]));
        }
        subset(e, &rec, "", &mut out);
        if let Some(Value::Object(c)) = e.get("$contains") {
            for (p, needles) in c {
                let s = at(&rec, p).and_then(Value::as_str).unwrap_or_default();
                for n in needles.as_array().unwrap() {
                    if !s.contains(n.as_str().unwrap()) {
                        out.push(format!("{p}: `{s}` does not contain {n}"));
                    }
                }
            }
        }
        if let Some(Value::Array(paths)) = e.get("$absent") {
            for p in paths {
                if at(&rec, p.as_str().unwrap()).is_some() {
                    out.push(format!("{p}: should be absent"));
                }
            }
        }
        if !out.is_empty() {
            failures.push(format!(
                "{name}:\n    {}\n    record: {rec}",
                out.join("\n    ")
            ));
        }
    }
    assert!(failures.is_empty(), "\n{}", failures.join("\n"));
}

#[test]
fn current_complete_arithmetic_matches_exact_tables_and_replays() {
    let m = module();
    let exp = common::json(&common::fixtures().join("requests/003/expectations.json"));
    for (name, expected) in exp.as_object().unwrap() {
        let (text, rec) = record(&m, name);
        assert_eq!(rec["record_version"], "0.8");
        assert_eq!(
            rec["validation_profile"],
            "behavior.complete_resulting_state.v1"
        );
        // Check current semantic evidence, without importing historical diagnostic names/text.
        let result = match name.as_str() {
            "add_overflow" | "division_by_zero_in_rescale" | "rescale_out_of_range" => "ERROR",
            "check_margin_false" => "DENY",
            "off_grid_nested" | "off_grid_state" | "out_of_range" => "INVALID_INPUT",
            "charge"
            | "check_margin_true"
            | "derived_values"
            | "per_unit"
            | "round_ceiling_neg"
            | "round_ceiling_pos"
            | "round_down_neg"
            | "round_down_pos"
            | "round_floor_neg"
            | "round_floor_pos"
            | "round_half_even_neg"
            | "round_half_even_pos"
            | "round_half_up_neg"
            | "round_half_up_pos"
            | "round_up_neg"
            | "round_up_pos"
            | "short_scale"
            | "split3"
            | "split3_nested"
            | "third_exact"
            | "third_via_derived"
            | "trailing_zeros"
            | "triple" => "ALLOW",
            _ => panic!("unclassified arithmetic fixture {name}"),
        };
        assert_eq!(rec["result"], result, "{name}: {rec}");
        // The old hand-written numeric values remain a valid exact-arithmetic oracle.
        for key in ["changes", "state"] {
            if let Some(value) = expected.get(key) {
                assert!(
                    common::subset_problems(&json!({key:value}), &rec).is_empty(),
                    "{name}: {key}: {rec}"
                );
            }
        }
        if let Some(steps) = expected["trace"].as_array() {
            for (i, step) in steps.iter().enumerate() {
                if let Some(rescales) = step["rescales"].as_array() {
                    for (j, rescale) in rescales.iter().enumerate() {
                        for key in ["exact", "result", "rounding", "scale"] {
                            if let Some(value) = rescale.get(key) {
                                assert_eq!(
                                    rec["trace"][i]["rescales"][j][key], *value,
                                    "{name}: rescale {key}"
                                );
                            }
                        }
                    }
                }
            }
        }
        if let Some(entries) = expected["derived"].as_array() {
            for entry in entries {
                let hash = behavior_core::semantic::types::hash_display(
                    m.derived(entry["name"].as_str().unwrap()).unwrap().hash(),
                );
                let actual = rec["derived"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .find(|d| d["hash"] == hash)
                    .unwrap();
                assert_eq!(actual["value"], entry["value"]);
                assert_eq!(actual["phase_state"], "S");
                assert!(actual.get("name").is_none());
            }
        }
        if result == "ERROR" {
            let code = if name == "division_by_zero_in_rescale" {
                "DIVISION_BY_ZERO"
            } else {
                "NUMERIC_OVERFLOW"
            };
            assert_eq!(rec["reasons"][0]["code"], "EVALUATION_ERROR");
            assert_eq!(rec["reasons"][0]["details"]["code"], code);
            assert!(rec["reasons"][0].get("message").is_none());
        }
        if matches!(name.as_str(), "off_grid_nested" | "off_grid_state") {
            assert_eq!(rec["reasons"][0]["code"], "OFF_GRID");
        }
        if name == "out_of_range" {
            assert_eq!(rec["reasons"][0]["code"], "OUT_OF_RANGE");
        }
        let r = replay(&m, &text);
        assert!(r.matches, "{name}: {}", r.to_json_string());
    }
}

#[test]
fn one_third_is_exact_inline_and_through_a_derived_value() {
    // Feature 004: `amount * (1 / 3)` rounded down is exactly 0.01 whether 1/3 is written inline
    // or comes from a derived value (all decimal arithmetic is exact; the 003 exact region is
    // gone).
    let m = module();
    let (_, a) = record(&m, "third_exact");
    let (_, b) = record(&m, "third_via_derived");
    assert_eq!(a["changes"][0]["new"], "0.01");
    assert_eq!(b["changes"][0]["new"], "0.01");
}

fn add_spent(amount: &str) -> String {
    json!({"action": "add_spent", "data_version": "1", "input": {}, "context": {},
           "state": {"invoice": {"id": "i1", "amount": amount, "fee": "0"},
                     "budget": {"id": "b1", "limit": "0", "spent": "0"}}})
    .to_string()
}

proptest! {
    #[test]
    fn off_grid_values_are_always_rejected(int in 0u64..1_000_000_000, frac in 1u32..1000) {
        // Three fractional digits with a non-zero last digit: never on the scale-2 grid.
        prop_assume!(frac % 10 != 0);
        let m = module();
        let rec: Value = serde_json::from_str(
            &evaluate(&m, &add_spent(&format!("{int}.{frac:03}"))).to_json_string()).unwrap();
        prop_assert_eq!(&rec["result"], "INVALID_INPUT");
        prop_assert_eq!(&rec["reasons"][0]["code"], "OFF_GRID");
    }

    #[test]
    fn on_grid_values_are_kept_with_two_digits(int in 0u64..1_000_000_000, cents in 0u32..100) {
        let m = module();
        let rec: Value = serde_json::from_str(
            &evaluate(&m, &common::complete_request(&m, &serde_json::from_str(&add_spent(&format!("{int}.{cents:02}"))).unwrap()).to_string()).to_json_string()).unwrap();
        prop_assert_eq!(&rec["result"], "ALLOW");
        let expected = format!("{int}.{cents:02}");
        prop_assert_eq!(rec["state"]["invoice"]["amount"].as_str().unwrap(), expected.as_str());
    }
}
