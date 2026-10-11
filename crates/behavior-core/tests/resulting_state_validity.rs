#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: direct whole-child predicates, independent of production validation.
#[path = "support/commands.rs"]
mod commands;
mod common;
use behavior_core::{admit, evaluate};
use serde_json::{Value, json};
use std::collections::BTreeMap;

fn model(version: &str) -> Value {
    let mut w = common::json(
        &common::fixtures().join("resulting-state-validity/audit-counterexample/module.json"),
    );
    w["ir_version"] = json!(version);
    if version == "0.8" {
        w["commands"] = json!([]);
        for a in w["actions"].as_array_mut().unwrap() {
            a["command_effects"] = json!([]);
        }
    }
    w
}

fn parent() -> Value {
    json!({"id":"e0","x":1,"y":2,"target":"new"})
}

fn request(action: &str, id: Option<&str>) -> Value {
    let mut r = json!({"action":action,"data_version":"017-parent", "state":{},
        "input":{},"context":{},"facts":{"universe":[{"entity":"E","members":[parent()]}]}});
    if let Some(id) = id {
        r["input"] = json!({"id":id});
        r["facts"]["identities"] = json!([{"entity":"E","id":id,"used":false}]);
    }
    r
}

/// The model's complete validity predicate is absence of every row's target.
/// This test-owned mapping does not inspect production traces or affected sets.
fn independently_valid(rows: &BTreeMap<String, Value>) -> bool {
    rows.values()
        .all(|row| !rows.contains_key(row["target"].as_str().unwrap()))
}

fn child(id: &str) -> BTreeMap<String, Value> {
    BTreeMap::from([
        ("e0".into(), parent()),
        (id.into(), json!({"id":id,"x":1,"y":2,"target":"absent"})),
    ])
}

fn audit_creation_denies_unchanged_nonlocal_constraint(version: &str) {
    assert!(independently_valid(&BTreeMap::from([(
        "e0".into(),
        parent()
    )])));
    let candidate = child("new");
    assert!(!independently_valid(&candidate));
    assert!(
        !candidate.contains_key("absent"),
        "the created row itself is valid"
    );
    assert_eq!(
        candidate["e0"],
        parent(),
        "the failing survivor is unchanged"
    );
    let m = admit(&model(version).to_string()).unwrap();
    let input = request("create", Some("new"));
    let original = input.clone();
    let record = evaluate(&m, &input.to_string());
    assert_eq!(
        record.as_json()["result"],
        "DENY",
        "{version}: independent child predicate is false; {record:?}"
    );
    assert_eq!(
        record.as_json()["reasons"][0]["code"],
        "CONSTRAINT_VIOLATED"
    );
    assert_eq!(input, original);
}

#[test]
fn audit_creation_denies_unchanged_nonlocal_constraint_legacy() {
    audit_creation_denies_unchanged_nonlocal_constraint("0.7");
}

#[test]
fn audit_creation_denies_unchanged_nonlocal_constraint_command_profile() {
    audit_creation_denies_unchanged_nonlocal_constraint("0.8");
}

#[test]
fn valid_creation_preserves_complete_child() {
    let candidate = child("unrelated");
    assert!(independently_valid(&candidate));
    for version in ["0.7", "0.8"] {
        let m = admit(&model(version).to_string()).unwrap();
        let record = evaluate(&m, &request("create", Some("unrelated")).to_string());
        assert_eq!(record.as_json()["result"], "ALLOW", "{version}: {record:?}");
        assert_eq!(
            record.as_json()["lifecycle"][0]["value"],
            candidate["unrelated"]
        );
    }
}

#[test]
fn noop_preserves_valid_complete_parent() {
    assert!(independently_valid(&BTreeMap::from([(
        "e0".into(),
        parent()
    )])));
    for version in ["0.7", "0.8"] {
        let mut w = model(version);
        let mut noop = json!({"name":"noop","params":[{"name":"e","role":"state","type":{"t":"entity","name":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"target":{"param":"e","field":"x"},"value":{"op":"field","param":"e","field":"x","loc":{"file":"017.beh","line":1}},"loc":{"file":"017.beh","line":1}}],"loc":{"file":"017.beh","line":1}});
        if version == "0.8" {
            noop["command_effects"] = json!([]);
        }
        w["actions"].as_array_mut().unwrap().push(noop);
        let m = admit(&w.to_string()).unwrap();
        let mut input = request("noop", None);
        input["state"] = json!({"e":parent()});
        let record = evaluate(&m, &input.to_string());
        assert_eq!(record.as_json()["result"], "ALLOW", "{version}: {record:?}");
        assert!(
            record.as_json()["changes"]
                .as_array()
                .unwrap()
                .iter()
                .all(|c| c["old"] == c["new"])
        );
        assert!(record.as_json().get("lifecycle").is_none());
    }
}

fn loc() -> Value {
    json!({"file":"017-validity.beh","line":1})
}
fn int(n: i64) -> Value {
    json!({"op":"lit","type":{"t":"int"},"value":n,"loc":loc()})
}
fn field(param: &str, name: &str) -> Value {
    json!({"op":"field","param":param,"field":name,"loc":loc()})
}
fn op(name: &str, args: Vec<Value>) -> Value {
    json!({"op":name,"args":args,"loc":loc()})
}
fn entity(name: &str, fields: Value) -> Value {
    json!({"name":name,"fields":fields,"loc":loc()})
}
fn state_param(name: &str, entity: &str) -> Value {
    json!({"name":name,"role":"state","type":{"t":"entity","name":entity}})
}
fn action(params: Value, effects: Value) -> Value {
    json!({"name":"change","params":params,"effects":effects,
        "preconditions":[],"postconditions":[],"command_effects":[],"loc":loc()})
}
fn finite_model(entities: Value, constraints: Value, action: Value) -> Value {
    json!({"ir_version":"0.8","enums":[],"nominals":[],"entities":entities,
        "derived":[],"invariants":[],"constraints":constraints,"commands":[],"reads":[],"actions":[action]})
}
fn finite_request(state: Value, universe: Value) -> Value {
    json!({"action":"change","data_version":"017-finite-parent","state":state,
        "input":{},"context":{},"facts":{"universe":universe}})
}
fn evaluate_json(w: &Value, r: &Value) -> Value {
    let m = admit(&w.to_string()).unwrap();
    evaluate(&m, &r.to_string()).as_json().clone()
}
fn deny(w: &Value, r: &Value, code: &str) -> Value {
    let rec = evaluate_json(w, r);
    assert_eq!(rec["result"], "DENY", "{rec}");
    assert_eq!(rec["reasons"][0]["code"], code, "{rec}");
    assert_eq!(rec["changes"], json!([]));
    assert!(rec.get("lifecycle").is_none());
    assert!(rec["commands"]["intents"].as_array().unwrap().is_empty());
    rec
}
fn same_profile_replays(w: &Value, rec: &Value) {
    let m = admit(&w.to_string()).unwrap();
    let replay = behavior_core::replay(&m, &rec.to_string());
    assert!(
        replay.matches,
        "same-profile replay: {:?}; {rec}",
        replay.diff
    );
}

fn existence_removal(derived: bool) -> (Value, Value) {
    let watch = json!({"id":"w","target":"t"});
    let target = json!({"id":"t","x":1});
    let live_before = BTreeMap::from([("t", target.clone())]);
    let live_after: BTreeMap<&str, Value> = BTreeMap::new();
    assert!(live_before.contains_key(watch["target"].as_str().unwrap()));
    assert!(!live_after.contains_key(watch["target"].as_str().unwrap()));
    let mut w = finite_model(
        json!([
            entity(
                "Watch",
                json!([{"name":"target","type":{"t":"id","entity":"Target"},"loc":loc()}])
            ),
            entity(
                "Target",
                json!([{"name":"x","type":{"t":"int"},"loc":loc()}])
            )
        ]),
        json!([{"name":"present","entity":"Watch","param":"row",
            "body":op("exists", vec![field("row","target")]),"loc":loc()}]),
        action(
            json!([state_param("victim", "Target")]),
            json!([{"remove":"victim","loc":loc()}]),
        ),
    );
    if derived {
        w["derived"] = json!([
            {"name":"leaf_exists","kind":"derived","params":[{"name":"leaf","type":{"t":"entity","name":"Watch"}}],
             "body":op("exists",vec![field("leaf","target")]),"loc":loc()},
            {"name":"outer_exists","kind":"derived","params":[{"name":"outer","type":{"t":"entity","name":"Watch"}}],
             "body":{"op":"derived","name":"leaf_exists","args":["outer"],"loc":loc()},"loc":loc()}
        ]);
        w["constraints"][0]["body"] =
            json!({"op":"derived","name":"outer_exists","args":["row"],"loc":loc()});
    }
    let r = finite_request(
        json!({"victim":target}),
        json!([{"entity":"Watch","members":[watch]}, {"entity":"Target","members":[target]}]),
    );
    (w, r)
}

#[test]
fn removal_rechecks_unchanged_plain_identity_existence() {
    let (w, r) = existence_removal(false);
    deny(&w, &r, "CONSTRAINT_VIOLATED");
}

#[test]
fn removal_rechecks_complete_transitive_derived_dependency() {
    let (w, r) = existence_removal(true);
    deny(&w, &r, "CONSTRAINT_VIOLATED");
}

/// A direct edge model: a required target must have an incoming source, and
/// every live source must point to a live target. No production index is used.
fn required_incoming_valid(targets: &[Value], sources: &[Value]) -> bool {
    sources
        .iter()
        .all(|s| targets.iter().any(|t| t["id"] == s["target"]))
        && targets
            .iter()
            .all(|t| t["x"].as_i64().unwrap() > 0 || sources.iter().any(|s| s["target"] == t["id"]))
}
fn incoming_model(remove: bool, destination: &str) -> (Value, Value) {
    let targets = [json!({"id":"t","x":0}), json!({"id":"u","x":1})];
    let original = json!({"id":"r","target":"t"});
    assert!(required_incoming_valid(
        &targets,
        std::slice::from_ref(&original)
    ));
    let child_sources = if remove {
        vec![]
    } else {
        vec![json!({"id":"r","target":destination})]
    };
    assert_eq!(
        required_incoming_valid(&targets, &child_sources),
        !remove && destination == "t"
    );
    let effect = if remove {
        json!({"remove":"source","loc":loc()})
    } else {
        json!({"target":{"param":"source","field":"target"},
            "value":{"op":"lit","type":{"t":"id","entity":"T"},"value":destination,"loc":loc()},"loc":loc()})
    };
    let w = finite_model(
        json!([
            entity(
                "R",
                json!([{"name":"target","type":{"t":"ref","entity":"T"},"loc":loc()}])
            ),
            entity("T", json!([{"name":"x","type":{"t":"int"},"loc":loc()}]))
        ]),
        json!([{"name":"required_incoming","entity":"T","param":"row",
            "body":op("or",vec![op("gt",vec![field("row","x"),int(0)]),op("referenced",vec![field("row","id")])]),"loc":loc()}]),
        action(json!([state_param("source", "R")]), json!([effect])),
    );
    let r = finite_request(
        json!({"source":original}),
        json!([{"entity":"R","members":[original]},{"entity":"T","members":targets}]),
    );
    (w, r)
}

#[test]
fn update_rechecks_unchanged_required_incoming_reference() {
    let (w, r) = incoming_model(false, "u");
    deny(&w, &r, "CONSTRAINT_VIOLATED");
}

#[test]
fn removal_rechecks_unchanged_required_incoming_reference() {
    let (w, r) = incoming_model(true, "t");
    deny(&w, &r, "CONSTRAINT_VIOLATED");
}

#[test]
fn retarget_preserving_required_reference_is_valid() {
    let (w, r) = incoming_model(false, "t");
    let rec = evaluate_json(&w, &r);
    assert_eq!(rec["result"], "ALLOW", "{rec}");
    assert!(
        rec["changes"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["old"] == c["new"])
    );
}

#[test]
fn global_filtered_count_rejects_an_invalid_child_and_allows_a_valid_control() {
    let rows = [json!({"id":"a","x":1}), json!({"id":"b","x":0})];
    assert_eq!(
        rows.iter().filter(|v| v["x"].as_i64().unwrap() > 0).count(),
        1
    );
    let selection = json!({"op":"where","args":[{"op":"select","entity":"E","loc":loc()}],
        "param":"row","body":op("gt",vec![field("row","x"),int(0)]),"loc":loc()});
    let mut w = finite_model(
        json!([entity(
            "E",
            json!([{"name":"x","type":{"t":"int"},"loc":loc()}])
        )]),
        json!([]),
        action(
            json!([state_param("e", "E")]),
            json!([{"target":{"param":"e","field":"x"},"value":int(1),"loc":loc()}]),
        ),
    );
    // Closed module scope admits queries; entity constraints do not.
    w["invariants"] = json!([{"name":"at_most_one_positive","body":op("le",vec![op("count",vec![selection]),int(1)]),"loc":loc()}]);
    let r = finite_request(json!({"e":rows[1]}), json!([{"entity":"E","members":rows}]));
    let invalid_child = [rows[0].clone(), json!({"id":"b","x":1})];
    assert_eq!(
        invalid_child
            .iter()
            .filter(|v| v["x"].as_i64().unwrap() > 0)
            .count(),
        2
    );
    w["actions"][0]["effects"][0]["value"] = int(0);
    let control = evaluate_json(&w, &r);
    assert_eq!(control["result"], "ALLOW", "{control}");
    same_profile_replays(&w, &control);
    w["actions"][0]["effects"][0]["value"] = int(1);
    let rec = deny(&w, &r, "INVARIANT_VIOLATED");
    same_profile_replays(&w, &rec);
}

#[test]
fn global_sum_rejects_an_invalid_child_and_allows_a_valid_control() {
    let rows = [json!({"id":"a","x":1}), json!({"id":"b","x":2})];
    let sum = |rows: &[Value]| rows.iter().map(|v| v["x"].as_i64().unwrap()).sum::<i64>();
    assert_eq!(sum(&rows), 3);
    let aggregate = json!({"op":"sum","args":[{"op":"select","entity":"E","loc":loc()}],
        "param":"row","body":field("row","x"),"loc":loc()});
    let mut w = finite_model(
        json!([entity(
            "E",
            json!([{"name":"x","type":{"t":"int"},"loc":loc()}])
        )]),
        json!([]),
        action(
            json!([state_param("e", "E")]),
            json!([{"target":{"param":"e","field":"x"},"value":int(3),"loc":loc()}]),
        ),
    );
    w["invariants"] =
        json!([{"name":"sum_bound","body":op("le",vec![aggregate,int(3)]),"loc":loc()}]);
    let r = finite_request(json!({"e":rows[1]}), json!([{"entity":"E","members":rows}]));
    assert_eq!(sum(&[rows[0].clone(), json!({"id":"b","x":3})]), 4);
    let rec = deny(&w, &r, "INVARIANT_VIOLATED");
    same_profile_replays(&w, &rec);
    w["actions"][0]["effects"][0]["value"] = int(2);
    let control = evaluate_json(&w, &r);
    assert_eq!(control["result"], "ALLOW", "{control}");
    same_profile_replays(&w, &control);
}

#[test]
fn empty_declared_type_has_vacuous_rules_for_command_only_action() {
    for guard in [false, true] {
        let mut w = commands::command_only_module(guard);
        w["entities"] = json!([entity("Empty", json!([]))]);
        w["constraints"] = json!([{"name":"impossible","entity":"Empty","param":"row","body":commands::boolean(false),"loc":loc()}]);
        w["invariants"] = json!([{"name":"also_impossible","entity":"Empty","param":"row","body":commands::boolean(false),"loc":loc()}]);
        let mut r = commands::command_only_request("recipient");
        r["facts"] = json!({"universe":[{"entity":"Empty","members":[]}]});
        let m = admit(&w.to_string()).unwrap();
        let rec = evaluate(&m, &r.to_string());
        assert_eq!(rec.result(), "ALLOW", "{rec:?}");
        assert_eq!(rec.command_intents().len(), usize::from(guard));
        assert_eq!(rec.as_json()["changes"], json!([]));
        assert!(
            !rec.as_json()["trace"]
                .as_array()
                .unwrap()
                .iter()
                .any(|s| s.get("subject").is_some())
        );
    }
}

#[test]
fn creation_from_an_empty_valid_parent_is_valid() {
    let candidate = BTreeMap::from([(
        "unrelated".to_string(),
        json!({"id":"unrelated","x":1,"y":2,"target":"absent"}),
    )]);
    assert!(independently_valid(&BTreeMap::new()));
    assert!(independently_valid(&candidate));
    for version in ["0.7", "0.8"] {
        let mut r = request("create", Some("unrelated"));
        r["facts"]["universe"][0]["members"] = json!([]);
        let rec = evaluate_json(&model(version), &r);
        assert_eq!(rec["result"], "ALLOW", "{version}: {rec}");
        assert_eq!(rec["lifecycle"][0]["value"], candidate["unrelated"]);
    }
}

#[test]
fn same_transition_reference_creation_uses_the_complete_child() {
    let target = json!({"id":"t"});
    let source = json!({"id":"r","target":"t"});
    let direct_child = BTreeMap::from([(("T", "t"), target), (("R", "r"), source.clone())]);
    assert!(direct_child.contains_key(&("T", source["target"].as_str().unwrap())));
    let w = finite_model(
        json!([
            entity("T", json!([])),
            entity(
                "R",
                json!([{"name":"target","type":{"t":"ref","entity":"T"},"loc":loc()}])
            )
        ]),
        json!([]),
        action(
            json!([]),
            json!([
                {"create":"R","id":{"op":"lit","type":{"t":"id","entity":"R"},"value":"r","loc":loc()},
                 "fields":{"target":{"op":"lit","type":{"t":"id","entity":"T"},"value":"t","loc":loc()}},"loc":loc()},
                {"create":"T","id":{"op":"lit","type":{"t":"id","entity":"T"},"value":"t","loc":loc()},"fields":{},"loc":loc()}
            ]),
        ),
    );
    let mut r = finite_request(
        json!({}),
        json!([{"entity":"R","members":[]},{"entity":"T","members":[]}]),
    );
    r["facts"]["identities"] =
        json!([{"entity":"R","id":"r","used":false},{"entity":"T","id":"t","used":false}]);
    let rec = evaluate_json(&w, &r);
    assert_eq!(rec["result"], "ALLOW", "{rec}");
    assert_eq!(rec["lifecycle"].as_array().unwrap().len(), 2);
}
