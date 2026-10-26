#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Required, bounded metamorphic properties for current typed child evidence.
//! The tiny oracle is ordinary finite target membership and decoded UTF-8 order.
//! No production validator, dependency classifier or replay function is an oracle.

use behavior_core::semantic::module::Module;
use behavior_core::semantic::types::hash_display;
use behavior_core::{admit, evaluate, replay, schema};
use serde_json::{Value, json};
use std::collections::BTreeSet;

fn loc() -> Value {
    json!({"file":"metamorphic.beh","line":1})
}

fn field(name: &str) -> Value {
    json!({"op":"field","param":"e","field":name,"loc":loc()})
}

fn model(command: bool) -> Value {
    let mut action = json!({"name":"remove","params":[
        {"name":"target","role":"state","type":{"t":"entity","name":"Target"}}],
        "preconditions":[],"postconditions":[],"effects":[{"remove":"target","loc":loc()}],"loc":loc()});
    if command {
        action["command_effects"] = json!([]);
    }
    let mut wire = json!({"ir_version":if command {"0.8"} else {"0.7"},
        "enums":[],"nominals":[],"derived":[],"reads":[],"constraints":[],
        "entities":[{"name":"Target","fields":[],"loc":loc()},
            {"name":"E","fields":[
                {"name":"owner","type":{"t":"ref","entity":"Target"},"loc":loc()},
                {"name":"loc","type":{"t":"string"},"loc":loc()},
                {"name":"message","type":{"t":"string"},"loc":loc()}],"loc":loc()}],
        // These reads make domain fields with diagnostic-looking names observable;
        // their values are unrestricted and are never source-location metadata.
        "invariants":[{"name":"domain_fields","entity":"E","param":"e",
            "body":{"op":"and","args":[
                {"op":"eq","args":[field("loc"),field("loc")],"loc":loc()},
                {"op":"eq","args":[field("message"),field("message")],"loc":loc()}],"loc":loc()},"loc":loc()}],
        "actions":[action]});
    if command {
        wire["commands"] = json!([]);
    }
    wire
}

fn request(removed: &str) -> Value {
    let members: Vec<_> = [" ", "é", "\\n", "a", "\n"]
        .into_iter()
        .map(|id| json!({"id":id,"owner":"t","loc":"domain-loc","message":"domain-message"}))
        .collect();
    json!({"action":"remove","data_version":"metamorphic-parent",
        "state":{"target":{"id":removed}},"input":{},"context":{},"facts":{"universe":[
            {"entity":"Target","members":[{"id":"t"},{"id":"spare"}]},
            {"entity":"E","members":members}]}})
}

/// The parent is explicitly complete. Apply the removal by finite membership,
/// then choose the first missing-target witness by decoded string bytes.
fn first_missing_target(request: &Value) -> Option<String> {
    let universe = request["facts"]["universe"].as_array().unwrap();
    let targets = universe.iter().find(|u| u["entity"] == "Target").unwrap();
    let removed = request["state"]["target"]["id"].as_str().unwrap();
    let live: BTreeSet<_> = targets["members"]
        .as_array()
        .unwrap()
        .iter()
        .map(|v| v["id"].as_str().unwrap())
        .filter(|id| *id != removed)
        .collect();
    let rows = universe.iter().find(|u| u["entity"] == "E").unwrap();
    rows["members"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|v| !live.contains(v["owner"].as_str().unwrap()))
        .map(|v| v["id"].as_str().unwrap())
        .min_by(|a, b| a.as_bytes().cmp(b.as_bytes()))
        .map(str::to_string)
}

fn permute(values: &mut [Value], seed: u64) {
    let mut rng = seed.max(1);
    for i in (1..values.len()).rev() {
        rng ^= rng << 13;
        rng ^= rng >> 7;
        rng ^= rng << 17;
        values.swap(i, (rng as usize) % (i + 1));
    }
}

fn relocate_wire(value: &mut Value, seed: u64) {
    match value {
        Value::Object(object) => {
            if object.contains_key("loc") {
                object.insert(
                    "loc".into(),
                    json!({"file":format!("relocated-{seed}.beh"),"line":seed+30}),
                );
            }
            for (key, item) in object.iter_mut() {
                if key != "loc" {
                    relocate_wire(item, seed);
                }
            }
        }
        Value::Array(values) => values.iter_mut().for_each(|v| relocate_wire(v, seed)),
        _ => {}
    }
}

/// Vary actual transport object order, not just an already-sorted Rust map.
fn transport_json(value: &Value, reverse: bool) -> String {
    match value {
        Value::Object(object) => {
            let mut entries: Vec<_> = object.iter().collect();
            if reverse {
                entries.reverse();
            }
            format!(
                "{{{}}}",
                entries
                    .into_iter()
                    .map(|(k, v)| format!(
                        "{}:{}",
                        serde_json::to_string(k).unwrap(),
                        transport_json(v, !reverse)
                    ))
                    .collect::<Vec<_>>()
                    .join(",")
            )
        }
        Value::Array(values) => format!(
            "[{}]",
            values
                .iter()
                .map(|v| transport_json(v, reverse))
                .collect::<Vec<_>>()
                .join(",")
        ),
        _ => value.to_string(),
    }
}

fn failing_child(record: &Value) -> &Value {
    record["trace"]
        .as_array()
        .unwrap()
        .iter()
        .find(|step| {
            matches!(
                step["phase"].as_str(),
                Some("invariant_post" | "constraint_post")
            ) && (step["outcome"] == false || step["outcome"].get("error").is_some())
        })
        .expect("the independently invalid child has a typed witness")
}

fn assert_ref_witness(module: &Module, record: &Value, id: &str) {
    assert_eq!(record["result"], "DENY");
    assert_eq!(record["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
    let check = module
        .constraints_for("E")
        .find(|(_, c)| c.reference() == Some("owner"))
        .unwrap()
        .1;
    let failure = failing_child(record);
    assert_eq!(failure["subject"], json!({"entity":"E","id":id}));
    assert_eq!(failure["phase"], "constraint_post");
    assert_eq!(
        failure["obligation"],
        json!({"kind":"constraint","source":"synthesized_reference",
        "entity_declaration":schema(module).declarations["E"],"field":"owner","hash":hash_display(check.hash())})
    );
    assert_eq!(failure["hash"], failure["obligation"]["hash"]);
    assert_eq!(
        failure["observations"],
        json!([{"field":"owner","phase_state":"S'","value":"t"}])
    );
}

#[test]
fn typed_first_witness_and_identity_inputs_ignore_nonsemantic_layout() {
    assert!("\n".as_bytes() < " ".as_bytes());
    assert!(serde_json::to_string("\n").unwrap() > serde_json::to_string(" ").unwrap());
    for command in [false, true] {
        let wire = model(command);
        let req = request("t");
        let expected_id = first_missing_target(&req).unwrap();
        assert_eq!(expected_id, "\n");
        let reference_module = admit(&wire.to_string()).unwrap();
        let reference = evaluate(&reference_module, &req.to_string());
        assert_ref_witness(&reference_module, reference.as_json(), &expected_id);
        for seed in 1..=16 {
            let mut changed_wire = wire.clone();
            relocate_wire(&mut changed_wire, seed);
            permute(changed_wire["entities"].as_array_mut().unwrap(), seed);
            let module = admit(&transport_json(&changed_wire, seed % 2 == 0)).unwrap();
            assert_eq!(
                module.behavior_version(),
                reference_module.behavior_version()
            );
            assert_eq!(schema(&module), schema(&reference_module));
            let mut changed_req = req.clone();
            let universe = changed_req["facts"]["universe"].as_array_mut().unwrap();
            for (i, u) in universe.iter_mut().enumerate() {
                permute(u["members"].as_array_mut().unwrap(), seed * (i as u64 + 11));
            }
            permute(universe, seed);
            assert_eq!(
                first_missing_target(&changed_req),
                Some(expected_id.clone())
            );
            let changed = evaluate(&module, &transport_json(&changed_req, seed % 2 == 0));
            assert_ref_witness(&module, changed.as_json(), &expected_id);
            assert_eq!(
                changed.as_json(),
                reference.as_json(),
                "profile={command} seed={seed}"
            );
            assert_eq!(changed.command_intents(), reference.command_intents());
            let archived = replay(&module, &changed.to_json_string());
            assert!(
                archived.matches,
                "profile={command} seed={seed}: {archived:?}"
            );
        }
    }
}

#[test]
fn diagnostic_looking_domain_fields_are_preserved_and_change_record_content() {
    for command in [false, true] {
        let module = admit(&model(command).to_string()).unwrap();
        let req = request("t");
        let reference = evaluate(&module, &req.to_string());
        let step = reference.as_json()["trace"]
            .as_array()
            .unwrap()
            .iter()
            .find(|s| {
                s["phase"] == "invariant_post" && s["subject"] == json!({"entity":"E","id":"\n"})
            })
            .unwrap();
        assert_eq!(
            step["observations"],
            json!([
            {"field":"loc","phase_state":"S'","value":"domain-loc"},
            {"field":"message","phase_state":"S'","value":"domain-message"}])
        );
        for name in ["loc", "message"] {
            let mut changed_req = req.clone();
            let row = changed_req["facts"]["universe"][1]["members"]
                .as_array_mut()
                .unwrap()
                .iter_mut()
                .find(|v| v["id"] == "\n")
                .unwrap();
            row[name] = json!(format!("changed-domain-{name}"));
            let changed_value = row[name].clone();
            let changed = evaluate(&module, &changed_req.to_string());
            assert_ref_witness(&module, changed.as_json(), "\n");
            assert_ne!(changed.to_json_string(), reference.to_json_string());
            assert!(
                changed.as_json()["facts"]["universe"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .find(|u| u["entity"] == "E")
                    .unwrap()["members"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .any(|v| v["id"] == "\n" && v[name] == changed_value)
            );
        }
    }
}

#[test]
fn independent_valid_child_and_invalid_parent_controls() {
    for command in [false, true] {
        let module = admit(&model(command).to_string()).unwrap();
        let valid = request("spare");
        assert_eq!(first_missing_target(&valid), None);
        let record = evaluate(&module, &valid.to_string());
        assert_eq!(record.result(), "ALLOW");
        assert!(
            record.as_json()["trace"]
                .as_array()
                .unwrap()
                .iter()
                .filter(|s| matches!(
                    s["phase"].as_str(),
                    Some("invariant_post" | "constraint_post")
                ))
                .all(|s| s["outcome"] == true)
        );
        let mut invalid = request("t");
        invalid["facts"]["universe"][1]["members"][0]["owner"] = json!("absent");
        let refused = evaluate(&module, &invalid.to_string());
        assert_eq!(refused.result(), "INVALID_INPUT");
        assert_eq!(
            refused.as_json()["reasons"][0]["code"],
            "INVALID_STATE_SNAPSHOT"
        );
        assert!(
            !refused.as_json()["trace"]
                .as_array()
                .unwrap()
                .iter()
                .any(|s| matches!(
                    s["phase"].as_str(),
                    Some("invariant_post" | "constraint_post")
                ))
        );
        assert!(replay(&module, &refused.to_json_string()).matches);
    }
}

#[test]
fn prepared_and_ordinary_profiles_preserve_complete_unicode_child_records() {
    for command in [false, true] {
        let module = admit(&model(command).to_string()).unwrap();
        for target in ["spare", "t"] {
            let mut req = request(target);
            let facts = behavior_core::facts::Facts::from_json(&req["facts"]).unwrap();
            req.as_object_mut().unwrap().remove("facts");
            let prepared = behavior_core::eval::prepared::PreparedSnapshot::new(&module, &facts)
                .unwrap()
                .unwrap();
            let actual = prepared.evaluate(&module, &req.to_string(), &facts);
            let (reference, observed) =
                behavior_core::evaluate_with(&module, &req.to_string(), &facts);
            assert_eq!(actual.record().to_json_string(), reference.to_json_string());
            assert_eq!(actual.observed().facts, observed.facts);
            assert_eq!(actual.observed().fields, observed.fields);
            assert!(replay(&module, &actual.record().to_json_string()).matches);
        }
    }
}
