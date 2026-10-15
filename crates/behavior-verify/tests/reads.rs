#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Declared reads are verified (feature 010, FR-017): every evaluation error a read can hit on a
//! valid state is found, with a counterexample confirmed by evaluating the read.

mod common;

use serde_json::Value;

#[test]
fn read_outcomes_match_expectations() {
    let (a, expected) = common::run("reads");
    let got = common::outcomes(&a);
    let mut want = common::expected_outcomes(&expected);
    // The frozen historical table is unchanged. Legacy reads do not establish
    // constraints on bound values; current confirmation supplies a complete
    // finite universe, whose existing consistency checks reject the two
    // smoothed_ph error models (negative or out-of-bound measurements).
    for check in &mut want {
        if check["action"] == "read:smoothed_ph" {
            check["outcome"] = serde_json::json!("inconclusive");
        }
    }
    want.sort_by_key(Value::to_string);
    assert_eq!(
        Value::Array(got),
        Value::Array(want),
        "\n{}",
        a.to_json_string().unwrap()
    );
}

#[test]
fn read_counterexamples_reproduce_the_error() {
    let (a, _, module) = common::run_with_module("reads");
    let findings = a.findings();
    assert_eq!(findings.len(), 6, "{}", a.to_json_string().unwrap());
    let mut confirmed = 0;
    let mut delimited = std::collections::BTreeSet::new();
    for f in findings {
        if f["kind"] == "inconclusive" {
            assert_eq!(f["check"], "evaluation_error");
            assert_eq!(f["severity"], "blocking");
            assert_eq!(
                f["cites"]["read"],
                behavior_core::semantic::types::hash_display(
                    module.read("smoothed_ph").unwrap().hash()
                )
            );
            let error = f["cites"]["error"].as_str().unwrap();
            let expression = match error {
                "division_by_zero" => {
                    "decimal(culture.ph_total) / decimal(culture.measurements + 1)"
                }
                "overflow" => "culture.measurements + 1",
                other => panic!("unexpected current read scope {other}: {f}"),
            };
            assert!(delimited.insert(error.to_string()));
            assert_eq!(
                f["explanation"],
                format!(
                    "evaluation_error of {expression} in read:smoothed_ph is inconclusive (counterexample_not_reproduced)"
                )
            );
            assert!(f.get("counterexample").is_none());
            continue;
        }
        confirmed += 1;
        assert_eq!(f["kind"], "evaluation_error", "{f}");
        let cx = &f["counterexample"];
        let record = &f["counterexample"]["record"];
        assert_eq!(record["format"], "behavior.read_record.v1", "{f}");
        assert_eq!(record["result"], "EVALUATION_ERROR", "{f}");
        // The confirmed record replays: it is a real read of a real state.
        let r = behavior_core::read::replay_read(&module, &record.to_string());
        assert!(r.matches, "{:?}", r.diff);
        let request = serde_json::json!({"read":record["read"]["name"],
            "data_version":record["data_version"],"state":cx["state"],
            "input":cx["input"],"context":cx["context"],"facts":cx["facts"]});
        let again =
            behavior_core::read::evaluate_read_request(&module, &request.to_string()).unwrap();
        assert_eq!(again.record.as_json(), record, "{f}");
    }
    assert_eq!(confirmed, 4);
    assert_eq!(
        delimited,
        std::collections::BTreeSet::from(["division_by_zero".into(), "overflow".into()])
    );
}

/// Complete finite evidence is not a witness when it violates the module's
/// existing constraints. This paired control preserves the frozen legacy
/// plain-read behavior and explains the current conservative confirmation gap.
#[test]
fn invalid_bound_read_error_models_are_refused_when_supplied_as_universes() {
    use serde_json::json;
    let (_, _, module) = common::run_with_module("reads");
    for (measurements, expression) in [(-1_i64, "division by zero"), (i64::MAX, "numeric overflow")]
    {
        let value = json!({"id":"invalid","measurements":measurements,"ph_total":1});
        let mut request = json!({"read":"smoothed_ph","data_version":"read-control",
            "state":{"culture":value},"input":{},"context":{}});
        let plain =
            behavior_core::read::evaluate_read_request(&module, &request.to_string()).unwrap();
        assert_eq!(plain.record.as_json()["result"], "EVALUATION_ERROR");
        assert!(
            plain.record.as_json()["reasons"][0]["message"]
                .as_str()
                .unwrap()
                .contains(expression)
        );
        request["facts"] = json!({"universe":[{"entity":"Culture","members":[value]}]});
        let finite =
            behavior_core::read::evaluate_read_request(&module, &request.to_string()).unwrap();
        assert_eq!(finite.record.as_json()["result"], "INVALID_INPUT");
        assert_eq!(
            finite.record.as_json()["reasons"][0]["code"],
            "INCONSISTENT_FACTS"
        );
        let replay = behavior_core::read::replay_read(&module, &finite.record.to_json_string());
        assert!(replay.matches, "{replay:?}");
    }
}

/// A query projection whose read also binds an entity of the projected type: the counterexample
/// state holds both the bound entity and the member, so it reproduces (code review, finding 4).
#[test]
fn a_projection_with_a_bound_entity_of_its_type_is_confirmed() {
    use behavior_verify::solver::Z3Process;
    use behavior_verify::{CheckKind, Profile, verify};
    use serde_json::json;
    let l = json!({"file": "o.py", "line": 1});
    let f = |p: &str, n: &str| json!({"op": "field", "param": p, "field": n, "loc": l});
    let int = json!({"t": "int"});
    let wire = json!({
        "ir_version": "0.7", "enums": [], "nominals": [], "invariants": [], "actions": [],
        "entities": [{"name": "Culture", "loc": l, "fields": [
            {"name": "measurements", "type": int, "loc": l},
            {"name": "ph_total", "type": int, "loc": l}]}],
        "constraints": [{"name": "counted", "entity": "Culture", "param": "c", "loc": l,
            "body": {"op": "ge", "loc": l, "args": [f("c", "measurements"),
                     {"op": "lit", "type": int, "value": 0, "loc": l}]}}],
        "derived": [{"name": "avg", "kind": "derived", "loc": l,
            "params": [{"name": "c", "type": {"t": "entity", "name": "Culture"}}],
            "body": {"op": "div", "args": [f("c", "ph_total"), f("c", "measurements")],
                     "loc": l}}],
        "reads": [{"name": "others", "loc": l,
            "params": [{"name": "culture", "role": "state",
                        "type": {"t": "entity", "name": "Culture"}}],
            // Every other culture: the member is never the bound one.
            "body": {"project": {"param": "c", "items": [{"derived": "avg"}], "over": {
                "op": "where", "param": "c", "loc": l,
                "args": [{"op": "select", "entity": "Culture", "loc": l}],
                "body": {"op": "ne", "loc": l, "args": [f("c", "id"), f("culture", "id")]}}}}}],
    });
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let profile = Profile {
        checks: vec![CheckKind::EvaluationError],
        ..Profile::default()
    };
    let a = verify(&module, &profile, None, &Z3Process::from_env().unwrap()).unwrap();
    let outcomes: Vec<(String, String)> = a.value["checks"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|c| c["action"]["name"] == "read:others")
        .map(|c| {
            (
                c["subject"]["name"].as_str().unwrap().to_string(),
                c["outcome"].as_str().unwrap().to_string(),
            )
        })
        .collect();
    assert!(
        outcomes
            .iter()
            .any(|(s, o)| s.contains("division by zero") && o == "counterexample"),
        "{outcomes:?}\n{}",
        a.to_json_string().unwrap()
    );
}
