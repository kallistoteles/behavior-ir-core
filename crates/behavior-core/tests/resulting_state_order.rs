#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: black-box canonical first failure, using admitted existing APIs.
use behavior_core::semantic::module::Module;
use behavior_core::semantic::types::hash_display;
use behavior_core::{admit, evaluate};
use serde_json::{Value, json};

fn loc() -> Value {
    json!({"file":"017-order.beh","line":1})
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
fn positive() -> Value {
    op("gt", vec![field("row", "x"), int(0)])
}
fn ratio() -> Value {
    op(
        "gt",
        vec![op("div", vec![int(1), field("row", "x")]), int(0)],
    )
}
fn entity(name: &str) -> Value {
    json!({"name":name,"fields":[{"name":"x","type":{"t":"int"},"loc":loc()}],"loc":loc()})
}
fn rule(name: &str, entity: &str, body: Value) -> Value {
    json!({"name":name,"entity":entity,"param":"row","body":body,"loc":loc()})
}
fn state_param(name: &str, entity: &str) -> Value {
    json!({"name":name,"role":"state","type":{"t":"entity","name":entity}})
}
fn zero(param: &str) -> Value {
    json!({"target":{"param":param,"field":"x"},"value":int(0),"loc":loc()})
}
fn model(
    entities: Value,
    invariants: Value,
    constraints: Value,
    params: Value,
    effects: Value,
) -> Value {
    json!({"ir_version":"0.8","enums":[],"nominals":[],"entities":entities,"derived":[],
        "invariants":invariants,"constraints":constraints,"reads":[],"commands":[],
        "actions":[{"name":"change","params":params,"preconditions":[],"postconditions":[],
        "effects":effects,"command_effects":[],"loc":loc()}]})
}
fn request(state: Value, universes: Value) -> Value {
    json!({"action":"change","data_version":"017-order-parent","state":state,"input":{},"context":{},"facts":{"universe":universes}})
}
fn run(w: &Value, r: &Value) -> (Module, Value) {
    let m = admit(&w.to_string()).unwrap();
    let record = evaluate(&m, &r.to_string()).as_json().clone();
    (m, record)
}
fn first_child_failure(record: &Value) -> &Value {
    record["trace"]
        .as_array()
        .unwrap()
        .iter()
        .find(|s| {
            matches!(
                s["phase"].as_str(),
                Some("invariant_post" | "constraint_post")
            ) && (s["outcome"] == false || s["outcome"].get("error").is_some())
        })
        .expect("a reached child failure must have a trace witness")
}
fn declared_witness(m: &Module, record: &Value, kind: &str, name: &str, entity: &str, id: &str) {
    let h = if kind == "invariant" {
        m.invariants().get(name).unwrap().hash()
    } else {
        m.constraints().get(name).unwrap().hash()
    };
    let witness = first_child_failure(record);
    assert_eq!(
        witness["subject"],
        json!({"entity":entity,"id":id}),
        "{record}"
    );
    assert_eq!(
        witness["obligation"],
        json!({"kind":kind,"source":"declared","name":name,"hash":hash_display(h)}),
        "{record}"
    );
    assert_eq!(witness["hash"], witness["obligation"]["hash"]);
}

#[test]
fn postcondition_precedes_child_failure() {
    let mut w = model(
        json!([entity("E")]),
        json!([]),
        json!([rule("positive", "E", positive())]),
        json!([state_param("e", "E")]),
        json!([zero("e")]),
    );
    w["actions"][0]["postconditions"] =
        json!([{"expr":{"op":"lit","type":{"t":"bool"},"value":false,"loc":loc()},"loc":loc()}]);
    let (_, rec) = run(
        &w,
        &request(
            json!({"e":{"id":"e","x":1}}),
            json!([{"entity":"E","members":[{"id":"e","x":1}]}]),
        ),
    );
    assert_eq!(rec["result"], "DENY", "{rec}");
    assert_eq!(rec["reasons"][0]["code"], "POSTCONDITION_FAILED");
    assert!(
        !rec["trace"].as_array().unwrap().iter().any(|s| {
            matches!(
                s["phase"].as_str(),
                Some("invariant_post" | "constraint_post")
            ) && (s["outcome"] == false || s["outcome"].get("error").is_some())
        }),
        "unreachable child failures must not be fabricated"
    );
}

#[test]
fn earlier_entity_constraint_precedes_later_invariant_error() {
    let w = model(
        json!([entity("B"), entity("A")]),
        json!([rule("ratio", "B", ratio())]),
        json!([rule("positive", "A", positive())]),
        json!([state_param("b", "B"), state_param("a", "A")]),
        json!([zero("b"), zero("a")]),
    );
    let (m, rec) = run(
        &w,
        &request(
            json!({"a":{"id":"a","x":1},"b":{"id":"b","x":1}}),
            json!([{"entity":"B","members":[{"id":"b","x":1}]},{"entity":"A","members":[{"id":"a","x":1}]}]),
        ),
    );
    assert_eq!(
        rec["result"], "DENY",
        "canonical A constraint must precede B invariant error; {rec}"
    );
    assert_eq!(rec["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
    declared_witness(&m, &rec, "constraint", "positive", "A", "a");
}

#[test]
fn same_entity_invariant_error_precedes_constraint_failure() {
    let w = model(
        json!([entity("E")]),
        json!([rule("ratio", "E", ratio())]),
        json!([rule("positive", "E", positive())]),
        json!([state_param("e", "E")]),
        json!([zero("e")]),
    );
    let (m, rec) = run(
        &w,
        &request(
            json!({"e":{"id":"e","x":1}}),
            json!([{"entity":"E","members":[{"id":"e","x":1}]}]),
        ),
    );
    assert_eq!(rec["result"], "ERROR", "{rec}");
    declared_witness(&m, &rec, "invariant", "ratio", "E", "e");
}

#[test]
fn declared_constraint_precedes_synthesized_reference() {
    let mut e = entity("E");
    e["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"target","type":{"t":"ref","entity":"T"},"loc":loc()}));
    let w = model(
        json!([e, entity("T")]),
        json!([]),
        json!([rule("z_declared", "E", positive())]),
        json!([state_param("e", "E"), state_param("t", "T")]),
        json!([zero("e"),{"target":{"param":"e","field":"target"},"value":{"op":"lit","type":{"t":"id","entity":"T"},"value":"t","loc":loc()},"loc":loc()},{"remove":"t","loc":loc()}]),
    );
    let (m, rec) = run(
        &w,
        &request(
            json!({"e":{"id":"e","x":1,"target":"t"},"t":{"id":"t","x":1}}),
            json!([{"entity":"E","members":[{"id":"e","x":1,"target":"t"}]},{"entity":"T","members":[{"id":"t","x":1}]}]),
        ),
    );
    assert_eq!(rec["result"], "DENY", "{rec}");
    assert_eq!(
        first_child_failure(&rec)["hash"],
        hash_display(m.constraints()["z_declared"].hash()),
        "semantic declared variant precedes formatted ref label; {rec}"
    );
    declared_witness(&m, &rec, "constraint", "z_declared", "E", "e");
}

#[test]
fn decoded_id_utf8_order_is_not_json_escape_order() {
    let newline = "\n";
    let space = " ";
    assert!(newline.as_bytes() < space.as_bytes());
    assert!(serde_json::to_string(newline).unwrap() > serde_json::to_string(space).unwrap());
    let w = model(
        json!([entity("E")]),
        json!([]),
        json!([rule("positive", "E", positive())]),
        json!([state_param("space", "E"), state_param("newline", "E")]),
        json!([zero("space"), zero("newline")]),
    );
    let (m, rec) = run(
        &w,
        &request(
            json!({"space":{"id":space,"x":1},"newline":{"id":newline,"x":1}}),
            json!([{"entity":"E","members":[{"id":space,"x":1},{"id":newline,"x":1}]}]),
        ),
    );
    assert_eq!(rec["result"], "DENY", "{rec}");
    declared_witness(&m, &rec, "constraint", "positive", "E", newline);
}

#[test]
fn child_witness_identifies_unbound_subject_and_semantic_declaration() {
    let mut w: Value = serde_json::from_str(include_str!(
        "../../../tests/fixtures/resulting-state-validity/audit-counterexample/module.json"
    ))
    .unwrap();
    w["ir_version"] = json!("0.8");
    w["commands"] = json!([]);
    for a in w["actions"].as_array_mut().unwrap() {
        a["command_effects"] = json!([]);
    }
    let mut r: Value = serde_json::from_str(include_str!("../../../tests/fixtures/resulting-state-validity/audit-counterexample/invalid-create.request.json")).unwrap();
    r["data_version"] = json!("017-parent");
    let (m, rec) = run(&w, &r);
    assert_eq!(rec["result"], "DENY", "{rec}");
    declared_witness(&m, &rec, "constraint", "positive", "E", "e0");
}
