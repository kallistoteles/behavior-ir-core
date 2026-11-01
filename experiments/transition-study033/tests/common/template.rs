//! Independent literal positive fixture; no experiment recognizer is used to build it.
use serde_json::{Value, json};

pub fn literal_module() -> Value {
    let loc = json!({"file":"core033-public.beh","line":1});
    let integer = |n: i64| json!({"op":"lit","type":{"t":"int"},"value":n,"loc":loc});
    let param = |p: &str| json!({"op":"param","param":p,"loc":loc});
    let emits = vec![
        json!({"command":"WorkIntent","payload":{"kind":{"op":"lit","type":{"t":"string"},"value":"process","loc":loc}},"loc":loc});
        2
    ];
    let action = |name: &str, params: Value, effects: Value| json!({"name":name,"params":params,"effects":effects,"preconditions":[],"postconditions":[],"command_effects":emits,"loc":loc});
    json!({
        "ir_version":"0.8","enums":[],"nominals":[],"derived":[],"reads":[],
        "entities":[{"name":"E","fields":[{"name":"x","type":{"t":"int"},"loc":loc},{"name":"padding","type":{"t":"string"},"loc":loc}],"loc":loc}],
        "commands":[{"name":"WorkIntent","fields":[{"name":"kind","type":{"t":"string"},"loc":loc}],"loc":loc}],
        "constraints":[{"name":"positive","entity":"E","param":"e","body":{"op":"gt","args":[{"op":"field","param":"e","field":"x","loc":loc},integer(0)],"loc":loc},"loc":loc}],
        "invariants":[{"name":"population","body":{"op":"le","args":[{"op":"count","args":[{"op":"select","entity":"E","loc":loc}],"loc":loc},integer(1000)],"loc":loc},"loc":loc}],
        "actions":[
            action("create",json!([{"name":"id","role":"input","type":{"t":"id","entity":"E"}}]),json!([{"create":"E","id":param("id"),"fields":{"x":integer(1),"padding":{"op":"lit","type":{"t":"string"},"value":"","loc":loc}},"loc":loc}])),
            action("set",json!([{"name":"value","role":"input","type":{"t":"int"}},{"name":"e","role":"state","type":{"t":"entity","name":"E"}}]),json!([{"target":{"param":"e","field":"x"},"value":param("value"),"loc":loc}])),
            action("emit",json!([]),json!([]))
        ]
    })
}
