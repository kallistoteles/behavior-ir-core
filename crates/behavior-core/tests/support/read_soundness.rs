#![allow(dead_code)]
//! Small independent read model for the soundness regressions.
use serde_json::{Value, json};

pub fn loc() -> Value {
    json!({"file":"read.beh","line":1})
}
pub fn integer(n: i64) -> Value {
    json!({"op":"lit","type":{"t":"int"},"value":n,"loc":loc()})
}
pub fn boolean(b: bool) -> Value {
    json!({"op":"lit","type":{"t":"bool"},"value":b,"loc":loc()})
}
pub fn field(param: &str, name: &str) -> Value {
    json!({"op":"field","param":param,"field":name,"loc":loc()})
}
pub fn op(name: &str, args: Vec<Value>) -> Value {
    json!({"op":name,"args":args,"loc":loc()})
}
pub fn select() -> Value {
    json!({"op":"select","entity":"Culture","loc":loc()})
}
pub fn filter(base: Value, body: Value) -> Value {
    json!({"op":"where","param":"c","args":[base],"body":body,"loc":loc()})
}
pub fn ratio(param: &str) -> Value {
    op("div", vec![integer(1), field(param, "measurements")])
}
pub fn dangerous_filter() -> Value {
    op(
        "and",
        vec![op("gt", vec![ratio("c"), integer(0)]), boolean(false)],
    )
}
pub fn module(role: Option<&str>, positive: bool) -> Value {
    let body = match role {
        Some(_) => json!({"value":ratio("c")}),
        None => {
            json!({"project":{"param":"c","over":filter(select(),dangerous_filter()),"items":[{"field":"measurements"}]}})
        }
    };
    let params = role.map_or_else(Vec::new, |role| {
        vec![json!({"name":"c","role":role,"type":{"t":"entity","name":"Culture"}})]
    });
    json!({"ir_version":"0.8","enums":[],"nominals":[],"derived":[],"commands":[],
        "entities":[{"name":"Culture","loc":loc(),"fields":[{"name":"measurements","type":{"t":"int"},"loc":loc()}]}],
        "constraints":[{"name":"bounded","entity":"Culture","param":"c","loc":loc(),
            "body":op("and",vec![op("ge",vec![field("c","measurements"),integer(i64::from(positive))]),op("le",vec![field("c","measurements"),integer(100)])])}],
        "invariants":[],"actions":[],"reads":[{"name":"inspect","params":params,"body":body,"loc":loc()}]})
}
pub fn value(n: i64) -> Value {
    json!({"id":"c1","measurements":n})
}
pub fn request(role: Option<&str>, n: i64) -> Value {
    let state = if role == Some("state") {
        json!({"c":value(n)})
    } else {
        json!({})
    };
    let input = if role == Some("input") {
        json!({"c":value(n)})
    } else {
        json!({})
    };
    let context = if role == Some("context") {
        json!({"c":value(n)})
    } else {
        json!({})
    };
    let members = if role.is_none() || role == Some("state") {
        vec![value(n)]
    } else {
        vec![]
    };
    json!({"data_version":"soundness:1","state":state,"input":input,"context":context,
        "facts":{"universe":[{"entity":"Culture","members":members}]}})
}
pub fn relocate(v: &mut Value) {
    match v {
        Value::Object(o) => {
            if o.contains_key("loc") {
                o.insert("loc".into(), json!({"file":"other.beh","line":99}));
            }
            for v in o.values_mut() {
                relocate(v);
            }
        }
        Value::Array(a) => {
            for v in a {
                relocate(v);
            }
        }
        _ => {}
    }
}
