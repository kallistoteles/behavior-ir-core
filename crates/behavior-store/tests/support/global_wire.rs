// Shared wire fixtures for public production-like probes and private reference tests.
#![allow(clippy::unwrap_used)]
use serde_json::{Value as Json, json};
#[derive(Clone, Copy, Debug)]
pub(crate) enum Global {
    None,
    True,
    AtMost(i64),
    Unsupported,
}

pub(crate) fn wire(global: Global) -> Json {
    let mut w: Json = serde_json::from_str(include_str!(concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/../../tests/fixtures/soundness/module.json"
    )))
    .unwrap();
    let l = json!({"file":"global-validation.beh","line":1});
    let literal = |n: i64| json!({"op":"lit","type":{"t":"int"},"value":n,"loc":l});
    let count = json!({"op":"count","args":[{"op":"select","entity":"E","loc":l}],"loc":l});
    let body = match global {
        Global::None => None,
        Global::True => Some(json!({"op":"lit","type":{"t":"bool"},"value":true,"loc":l})),
        Global::AtMost(k) => Some(json!({"op":"le","args":[count,literal(k)],"loc":l})),
        Global::Unsupported => Some(json!({"op":"ge","args":[count,literal(0)],"loc":l})),
    };
    w["invariants"] = body.map_or_else(
        || json!([]),
        |body| json!([{"name":"population","body":body,"loc":l}]),
    );
    w["entities"].as_array_mut().unwrap().push(
        json!({"name":"Other","fields":[{"name":"value","type":{"t":"int"},"loc":l}],"loc":l}),
    );
    w["actions"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"n","role":"input","type":{"t":"int"}}));
    w["actions"][0]["effects"][0]["value"] = json!({"op":"param","param":"n","loc":l});
    for (name, entity, fields) in [
        ("create", "E", json!({"x":literal(1),"y":literal(2)})),
        ("create_other", "Other", json!({"value":literal(1)})),
    ] {
        w["actions"].as_array_mut().unwrap().push(json!({"name":name,"loc":l,
            "params":[{"name":"id","role":"input","type":{"t":"id","entity":entity}}],
            "effects":[{"create":entity,"id":{"op":"param","param":"id","loc":l},"fields":fields,"loc":l}],
            "preconditions":[],"postconditions":[]}));
    }
    w["actions"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"remove","loc":l,
        "params":[{"name":"alias","role":"state","type":{"t":"entity","name":"E"}}],
        "effects":[{"remove":"alias","loc":l}],"preconditions":[],"postconditions":[]}));
    w
}

pub(crate) fn scaled_wire(global: Global, batch: usize, rules: usize) -> Json {
    assert!(batch > 0 && rules > 0);
    let mut w = wire(global);
    let template = w["actions"][1].clone();
    for index in 1..batch {
        let name = format!("id{index}");
        let mut param = template["params"][0].clone();
        param["name"] = json!(name);
        let mut effect = template["effects"][0].clone();
        effect["id"]["param"] = json!(name);
        w["actions"][1]["params"]
            .as_array_mut()
            .unwrap()
            .push(param);
        w["actions"][1]["effects"]
            .as_array_mut()
            .unwrap()
            .push(effect);
    }
    if let Some(template) = w["invariants"].as_array().unwrap().first().cloned() {
        for index in 1..rules {
            let mut rule = template.clone();
            rule["name"] = json!(format!("population{index}"));
            w["invariants"].as_array_mut().unwrap().push(rule);
        }
    }
    w
}
