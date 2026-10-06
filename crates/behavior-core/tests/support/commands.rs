#![allow(dead_code)]
//! Independent small command model used by Core, Store, Verifier and facade tests.
use serde_json::{Value, json};

pub fn loc() -> Value {
    json!({"file":"/models/commands.beh","line":1})
}
pub fn lit(ty: Value, value: Value) -> Value {
    json!({"op":"lit","type":ty,"value":value,"loc":loc()})
}
pub fn integer(value: i64) -> Value {
    lit(json!({"t":"int"}), json!(value))
}
pub fn boolean(value: bool) -> Value {
    lit(json!({"t":"bool"}), json!(value))
}
pub fn string(value: &str) -> Value {
    lit(json!({"t":"string"}), json!(value))
}
pub fn field(name: &str) -> Value {
    json!({"op":"field","param":"order","field":name,"loc":loc()})
}
pub fn op(name: &str, args: Vec<Value>) -> Value {
    json!({"op":name,"args":args,"loc":loc()})
}
pub fn declaration(name: &str, fields: &[(&str, Value)]) -> Value {
    let fields: Vec<_> = fields
        .iter()
        .map(|(n, t)| json!({"name":n,"type":t,"loc":loc()}))
        .collect();
    json!({"name":name,"fields":fields,"loc":loc()})
}
pub fn emission(command: &str, when: Option<Value>, payload: Value) -> Value {
    let mut value = json!({"command":command,"payload":payload,"loc":loc()});
    if let Some(when) = when {
        value["when"] = when;
    }
    value
}
pub fn module() -> Value {
    json!({"ir_version":"0.8","enums":[],"nominals":[],"derived":[],
        "invariants":[],"constraints":[],"reads":[],
        "entities":[{"name":"Order","fields":[
            {"name":"submitted","type":{"t":"bool"},"loc":loc()},
            {"name":"notifications","type":{"t":"bool"},"loc":loc()},
            {"name":"income","type":{"t":"int"},"loc":loc()},
            {"name":"cost","type":{"t":"int"},"loc":loc()}],"loc":loc()}],
        "commands":[declaration("Receipt", &[("recipient",json!({"t":"string"}))])],
        "actions":[{"name":"submit","params":[{"name":"order","role":"state","type":{"t":"entity","name":"Order"}}],
            "preconditions":[],"postconditions":[],
            "effects":[{"target":{"param":"order","field":"submitted"},"value":boolean(true),"loc":loc()}],
            "command_effects":[emission("Receipt",Some(field("notifications")),json!({"recipient":string("customer-1")}))],"loc":loc()}]})
}
pub fn value(cost: i64, notifications: bool) -> Value {
    json!({"id":"order-1","submitted":false,"notifications":notifications,"income":10,"cost":cost})
}
pub fn request(cost: i64, notifications: bool) -> Value {
    let state = value(cost, notifications);
    json!({"action":"submit","data_version":"test:commands:1","state":{"order":state},
        "input":{},"context":{},"facts":{"universe":[{"entity":"Order","members":[state]}]}})
}
pub fn invocation() -> Value {
    json!({"format":"behavior.invocation.v1","capability":"submit",
        "bindings":{"order":{"entity":"Order","id":"order-1"}},"input":{},"context":{}})
}
pub fn snapshot(cost: i64, notifications: bool) -> Value {
    let state = value(cost, notifications);
    json!({"format":"behavior.snapshot.v1","data_version":"test:commands:1",
        "entities":[{"entity":"Order","value":state}],
        "facts":{"universe":[{"entity":"Order","members":[state]}]}})
}
pub fn ratio_module(guard: Value) -> Value {
    let mut w = module();
    // Division produces Exact, never a truncated Int. Explicit rescale names
    // the payload grid and rounding in the Behavior semantics.
    w["nominals"] = json!([{"name":"Ratio","underlying":{"t":"decimal"},"scale":4,"ops":["order"],"loc":loc()}]);
    w["commands"] = json!([declaration(
        "Alert",
        &[("ratio", json!({"t":"nominal","name":"Ratio"}))]
    )]);
    w["actions"][0]["command_effects"] = json!([emission(
        "Alert",
        Some(guard),
        json!({"ratio":ratio(op("div",vec![field("income"),field("cost")]))})
    )]);
    w
}
pub fn ratio(value: Value) -> Value {
    json!({"op":"rescale","args":[value],"nominal":"Ratio","rounding":"down","loc":loc()})
}
pub fn relocation(value: &mut Value, file: &str) {
    match value {
        Value::Object(fields) => {
            if fields.contains_key("loc") {
                fields.insert("loc".into(), json!({"file":file,"line":999}));
            }
            for value in fields.values_mut() {
                relocation(value, file);
            }
        }
        Value::Array(values) => {
            for value in values {
                relocation(value, file);
            }
        }
        _ => {}
    }
}
pub fn emissions_mut(w: &mut Value) -> &mut Vec<Value> {
    w["actions"][0]["command_effects"]
        .as_array_mut()
        .expect("fixture has an emission bag")
}
