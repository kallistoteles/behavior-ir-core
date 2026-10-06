#![allow(clippy::unwrap_used, clippy::expect_used)]
//! ≡₀.₈ is normalized admitted syntax, not equality on one invocation.
#[path = "support/commands.rs"]
mod model;
use behavior_core::{admission_result, admit, schema};
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
fn m(w: &Value) -> behavior_core::semantic::module::Module {
    admit(&w.to_string()).unwrap()
}
fn hash(w: &Value) -> String {
    m(w).behavior_version()
}
fn two() -> Value {
    let mut w = model::module();
    w["commands"] = json!([
        model::declaration(
            "Receipt",
            &[
                ("recipient", json!({"t":"string"})),
                ("purpose", json!({"t":"string"}))
            ]
        ),
        model::declaration("Alert", &[("ratio", json!({"t":"int"}))])
    ]);
    w["actions"][0]["command_effects"] = json!([
        model::emission(
            "Receipt",
            None,
            json!({"recipient":model::string("x"),"purpose":model::string("order")})
        ),
        model::emission("Alert", None, json!({"ratio":model::integer(1)}))
    ]);
    w
}
#[test]
fn bags_and_product_fields_have_one_semantic_identity() {
    let a = two();
    let mut b = a.clone();
    model::emissions_mut(&mut b).reverse();
    b["commands"].as_array_mut().unwrap().reverse();
    b["commands"][1]["fields"].as_array_mut().unwrap().reverse();
    assert_eq!(hash(&a), hash(&b));
    assert_eq!(
        admission_result(&m(&a)).items,
        admission_result(&m(&b)).items
    );
}
#[test]
fn command_multiplicity_is_semantic_and_never_deduplicated() {
    let a = two();
    let mut b = a.clone();
    let e = b["actions"][0]["command_effects"][0].clone();
    model::emissions_mut(&mut b).push(e);
    assert_ne!(hash(&a), hash(&b));
    let mut c = b.clone();
    model::emissions_mut(&mut c).reverse();
    assert_eq!(hash(&b), hash(&c));
}
#[test]
fn omitted_guard_equals_literal_true_and_locations_are_diagnostic() {
    let a = two();
    let mut b = a.clone();
    for e in model::emissions_mut(&mut b) {
        e["when"] = model::boolean(true);
    }
    model::relocation(&mut b, "/another/checkout/model.beh");
    assert_eq!(hash(&a), hash(&b));
}
#[test]
fn public_names_guards_types_payloads_and_counts_remain_distinct() {
    let a = two();
    let expected = hash(&a);
    for variant in 0..5 {
        let mut b = a.clone();
        match variant {
            0 => {
                b["commands"][0]["name"] = json!("Renamed");
                b["actions"][0]["command_effects"][0]["command"] = json!("Renamed");
            }
            1 => b["actions"][0]["command_effects"][0]["when"] = model::boolean(false),
            2 => {
                b["commands"][1]["fields"][0]["type"] = json!({"t":"decimal"});
                b["actions"][0]["command_effects"][1]["payload"]["ratio"] =
                    model::lit(json!({"t":"decimal"}), json!("1"));
            }
            3 => {
                b["actions"][0]["command_effects"][0]["payload"]["recipient"] =
                    model::string("changed")
            }
            _ => {
                model::emissions_mut(&mut b).pop();
            }
        }
        assert_ne!(expected, hash(&b), "variant {variant}");
    }
}
#[test]
fn command_changes_do_not_change_persisted_schema_identity() {
    let a = two();
    let mut b = a.clone();
    b["commands"][0]["name"] = json!("Renamed");
    b["actions"][0]["command_effects"][0]["command"] = json!("Renamed");
    assert_ne!(hash(&a), hash(&b));
    assert_eq!(schema(&m(&a)).hash, schema(&m(&b)).hash);
    let mut legacy = a.clone();
    legacy["ir_version"] = json!("0.7");
    legacy.as_object_mut().unwrap().remove("commands");
    legacy["actions"][0]
        .as_object_mut()
        .unwrap()
        .remove("command_effects");
    assert_eq!(schema(&m(&a)).hash, schema(&m(&legacy)).hash);
}
#[test]
fn same_output_for_one_invocation_does_not_equate_definitions() {
    let mut a = model::module();
    a["actions"][0]["command_effects"][0]["when"] = model::boolean(false);
    let mut b = a.clone();
    b["actions"][0]["command_effects"][0]["payload"]["recipient"] = model::string("another");
    assert_ne!(hash(&a), hash(&b));
    let req = model::request(0, false).to_string();
    let ar = behavior_core::evaluate(&m(&a), &req);
    let br = behavior_core::evaluate(&m(&b), &req);
    assert_eq!(ar.as_json()["commands"]["intents"], json!([]));
    assert_eq!(br.as_json()["commands"]["intents"], json!([]));
}
#[test]
fn independent_empty_product_domain_vector_matches_declared_binary_encoding() {
    let mut w = model::module();
    w["commands"] = json!([model::declaration("Receipt", &[])]);
    w["actions"][0]["command_effects"][0]["payload"] = json!({});
    let mut digest = Sha256::new();
    digest.update(b"behavior.command_declaration.v1\0");
    digest.update(7_u32.to_be_bytes());
    digest.update(b"Receipt");
    digest.update(0_u32.to_be_bytes());
    let expected = format!("sha256:{:x}", digest.finalize());
    assert_eq!(admission_result(&m(&w)).items["command:Receipt"], expected);
}
#[test]
fn query_binder_spelling_and_equal_dependency_aliases_are_irrelevant() {
    let mut a = model::ratio_module(model::boolean(true));
    a["commands"][0]["fields"][0]["type"] = json!({"t":"int"});
    let query = json!({"op":"where","args":[{"op":"select","entity":"Order","loc":model::loc()}],
        "param":"candidate","body":{"op":"field","param":"candidate","field":"notifications","loc":model::loc()},"loc":model::loc()});
    a["actions"][0]["command_effects"][0]["payload"]["ratio"] = model::op("count", vec![query]);
    let mut b = a.clone();
    b["actions"][0]["command_effects"][0]["payload"]["ratio"]["args"][0]["param"] =
        json!("renamed");
    b["actions"][0]["command_effects"][0]["payload"]["ratio"]["args"][0]["body"]["param"] =
        json!("renamed");
    assert_eq!(hash(&a), hash(&b));
    let d = |name: &str| json!({"name":name,"kind":"derived","params":[{"name":"order","type":{"t":"entity","name":"Order"}}],"body":model::field("notifications"),"loc":model::loc()});
    a["derived"] = json!([d("enabledA"), d("enabledB")]);
    b = a.clone();
    a["actions"][0]["command_effects"][0]["when"] =
        json!({"op":"derived","name":"enabledA","args":["order"],"loc":model::loc()});
    b["actions"][0]["command_effects"][0]["when"] =
        json!({"op":"derived","name":"enabledB","args":["order"],"loc":model::loc()});
    assert_eq!(hash(&a), hash(&b));
}
#[test]
fn all_new_semantic_domains_match_an_independent_binary_oracle() {
    fn string(body: &mut Vec<u8>, s: &str) {
        body.extend(u32::try_from(s.len()).unwrap().to_be_bytes());
        body.extend(s.as_bytes());
    }
    fn digest(tag: &str, body: &[u8]) -> [u8; 32] {
        let mut h = Sha256::new();
        h.update(tag.as_bytes());
        h.update([0]);
        h.update(body);
        h.finalize().into()
    }
    fn display(h: &[u8; 32]) -> String {
        format!(
            "sha256:{}",
            h.iter().map(|b| format!("{b:02x}")).collect::<String>()
        )
    }
    let mut declaration = Vec::new();
    string(&mut declaration, "Receipt");
    declaration.extend(1_u32.to_be_bytes());
    string(&mut declaration, "recipient");
    declaration.push(0x04);
    let dh = digest("behavior.command_declaration.v1", &declaration);
    let true_hash = digest("behavior.expr.v1", &[0x01, 0x01, 0x01]);
    let mut literal = vec![0x01, 0x04];
    string(&mut literal, "customer-1");
    let lh = digest("behavior.expr.v1", &literal);
    let mut emission = dh.to_vec();
    emission.extend(true_hash);
    emission.extend(1_u32.to_be_bytes());
    string(&mut emission, "recipient");
    emission.extend(lh);
    let eh = digest("behavior.command_emission.v1", &emission);
    let mut entity = Vec::new();
    string(&mut entity, "Order");
    entity.extend(5_u32.to_be_bytes());
    string(&mut entity, "id");
    entity.push(0x21);
    string(&mut entity, "Order");
    for (field, ty) in [
        ("submitted", 0x01),
        ("notifications", 0x01),
        ("income", 0x02),
        ("cost", 0x02),
    ] {
        string(&mut entity, field);
        entity.push(ty);
    }
    let entity_hash = digest("behavior.entity.v1", &entity);
    let mut effect = Vec::new();
    string(&mut effect, "order");
    string(&mut effect, "submitted");
    effect.extend(true_hash);
    let effect_hash = digest("behavior.effect.v1", &effect);
    let mut action = Vec::new();
    string(&mut action, "0.8");
    action.extend(1_u32.to_be_bytes());
    string(&mut action, "order");
    action.push(1);
    action.push(0x30);
    string(&mut action, "Order");
    action.extend(0_u32.to_be_bytes());
    action.extend(1_u32.to_be_bytes());
    action.extend(effect_hash);
    action.extend(0_u32.to_be_bytes());
    action.extend(1_u32.to_be_bytes());
    action.extend(eh);
    let ah = digest("behavior.action.v2", &action);
    let mut module = Vec::new();
    string(&mut module, "0.8");
    module.extend(3_u32.to_be_bytes());
    for (kind, name, hash) in [
        (3, "Order", entity_hash),
        (6, "submit", ah),
        (9, "Receipt", dh),
    ] {
        module.push(kind);
        string(&mut module, name);
        module.extend(hash);
    }
    let mh = digest("behavior.module.v2", &module);
    let mut intent = dh.to_vec();
    intent.extend(1_u32.to_be_bytes());
    string(&mut intent, "recipient");
    string(&mut intent, "customer-1");
    let ih = digest("behavior.command_intent.v1", &intent);
    let frozen: Value = serde_json::from_str(include_str!(
        "../../../tests/fixtures/commands/hash-vectors.json"
    ))
    .unwrap();
    for (name, hash) in [
        ("declaration", dh),
        ("emission", eh),
        ("action", ah),
        ("module", mh),
        ("intent", ih),
    ] {
        assert_eq!(frozen["vectors"][name], display(&hash), "oracle {name}");
    }
    let mut w = model::module();
    w["actions"][0]["command_effects"][0]
        .as_object_mut()
        .unwrap()
        .remove("when");
    let admitted = m(&w);
    let report = admission_result(&admitted);
    assert_eq!(report.items["command:Receipt"], display(&dh));
    assert_eq!(report.items["action:submit"], display(&ah));
    assert_eq!(admitted.behavior_version(), display(&mh));
    let result = behavior_core::evaluate(&admitted, &model::request(2, true).to_string());
    assert_eq!(
        result.as_json()["commands"]["intents"][0]["intent_hash"],
        display(&ih)
    );
}
