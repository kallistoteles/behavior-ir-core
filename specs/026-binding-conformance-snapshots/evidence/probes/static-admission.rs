// Read-only admission identities and expression structure. Never evaluates an action.
use behavior_engine::{admit, semantic::types::hash_display};
use serde_json::{Value, json};
fn main() {
    let root = std::env::args().nth(1).expect("fixture root");
    let mut output = serde_json::Map::new();
    for (domain, action_name) in [
        ("invoice", "approve_invoice"), ("project_margin", "flag_project"),
        ("accounts", "remove_customer"), ("ledger", "transfer"), ("orders", "close_customer"),
    ] {
        let text = std::fs::read_to_string(format!("{root}/tests/fixtures/bindings/{domain}.json")).unwrap();
        let module = admit(&text).unwrap();
        let action = module.action(action_name).unwrap();
        let mut nodes = serde_json::Map::new();
        let mut roots = Vec::new();
        for (i, c) in action.preconditions().iter().enumerate() { roots.push((format!("pre/{i}"), c.expr())); }
        for (i, c) in action.postconditions().iter().enumerate() { roots.push((format!("post/{i}"), c.expr())); }
        for (i, e) in action.effects().iter().enumerate() { roots.push((format!("effect/{i}"), e.value())); }
        for (name, d) in module.derived_items() { roots.push((format!("derived/{name}"), d.body())); }
        for (name, d) in module.invariants() { roots.push((format!("invariant/{name}"), d.body())); }
        for (name, d) in module.global_invariants() { roots.push((format!("global/{name}"), d.body())); }
        for (name, d) in module.constraints() { roots.push((format!("constraint/{name}"), d.body())); }
        while let Some((path, expr)) = roots.pop() {
            nodes.insert(path.clone(), json!({"hash":hash_display(expr.hash()), "kind":format!("{:?}",expr.kind()),"type":format!("{:?}",expr.ty())}));
            for (i, child) in expr.children().into_iter().enumerate() { roots.push((format!("{path}/{i}"), child)); }
        }
        let effects: Vec<Value> = action.effects().iter().map(|e| json!({"param":e.param(),"field":e.field(),"hash":hash_display(e.hash())})).collect();
        let removes: Vec<Value> = action.removes().iter().map(|e| json!({"param":e.param(),"hash":hash_display(e.hash())})).collect();
        output.insert(domain.into(),json!({"action":action_name,"effects":effects,"removes":removes,"nodes":nodes}));
    }
    println!("{}", Value::Object(output));
}
