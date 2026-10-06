#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Wire0.8 command products are admitted semantics, never arbitrary host effects.
mod common;
#[path = "support/commands.rs"]
mod model;
use behavior_core::{admission_report, admit};
use serde_json::{Value, json};

fn accepted(w: &Value) {
    let result = admission_report(&w.to_string());
    assert!(
        result.ok,
        "expected valid command module: {:?}",
        result.errors
    );
}
fn refused(w: &Value, code: &str) {
    let result = admission_report(&w.to_string());
    assert!(!result.ok, "invalid command module admitted");
    assert!(
        result.errors.iter().any(|e| e.code == code),
        "expected {code}: {:?}",
        result.errors
    );
    assert!(result.behavior_version.is_none());
}
#[test]
fn typed_command_and_guard_are_admitted_in_new_profile() {
    accepted(&model::module());
}
#[test]
fn empty_product_has_no_implicit_id_and_is_valid() {
    let mut w = model::module();
    w["commands"] = json!([model::declaration("Receipt", &[])]);
    w["actions"][0]["command_effects"][0]["payload"] = json!({});
    accepted(&w);
}
#[test]
fn supported_scalar_products_and_inert_absent_identity_are_admitted() {
    let mut w = model::module();
    w["enums"] = json!([{"name":"Channel","values":["EMAIL","SMS"],"loc":model::loc()}]);
    w["nominals"] = json!([{"name":"Money","underlying":{"t":"decimal"},"scale":2,"ops":["add","order"],"loc":model::loc()}]);
    let fields = [
        ("bool", json!({"t":"bool"})),
        ("integer", json!({"t":"int"})),
        ("decimal", json!({"t":"decimal"})),
        ("string", json!({"t":"string"})),
        ("enum", json!({"t":"enum","name":"Channel"})),
        ("nominal", json!({"t":"nominal","name":"Money"})),
        ("identity", json!({"t":"id","entity":"Order"})),
        ("optional", json!({"t":"option","of":{"t":"int"}})),
    ];
    let values = [
        json!(true),
        json!(i64::MIN),
        json!("1.250"),
        json!("å"),
        json!("EMAIL"),
        json!("2.00"),
        json!("does-not-exist"),
        Value::Null,
    ];
    let payload: serde_json::Map<_, _> = fields
        .iter()
        .zip(values)
        .map(|((n, t), v)| (n.to_string(), model::lit(t.clone(), v)))
        .collect();
    w["commands"] = json!([model::declaration("Receipt", &fields)]);
    w["actions"][0]["command_effects"][0]["payload"] = Value::Object(payload);
    accepted(&w);
}
#[test]
fn emission_payload_must_match_declared_product_exactly() {
    accepted(&model::module());
    for payload in [
        json!({}),
        json!({"recipient":model::string("x"),"extra":model::integer(1)}),
        json!({"recipient":model::integer(1)}),
    ] {
        let mut w = model::module();
        w["actions"][0]["command_effects"][0]["payload"] = payload;
        assert!(!admission_report(&w.to_string()).ok);
    }
}
#[test]
fn guard_requires_bool_even_when_the_payload_is_valid() {
    let mut w = model::module();
    w["actions"][0]["command_effects"][0]["when"] = model::integer(0);
    refused(&w, "NOT_BOOLEAN");
}
#[test]
fn duplicate_or_empty_command_field_names_are_refused() {
    accepted(&model::module());
    for fields in [
        vec![("x", json!({"t":"int"})), ("x", json!({"t":"string"}))],
        vec![("", json!({"t":"bool"}))],
    ] {
        let mut w = model::module();
        w["commands"] = json!([model::declaration("Receipt", &fields)]);
        assert!(!admission_report(&w.to_string()).ok);
    }
}
#[test]
fn commands_share_the_global_name_namespace() {
    let mut w = model::module();
    w["commands"][0]["name"] = json!("Order");
    w["actions"][0]["command_effects"][0]["command"] = json!("Order");
    refused(&w, "DUPLICATE_NAME");
}
#[test]
fn forbidden_nonstorable_and_reference_products_are_refused() {
    accepted(&model::module());
    for ty in [
        json!({"t":"entity","name":"Order"}),
        json!({"t":"ref","entity":"Order"}),
        json!({"t":"exact"}),
        json!({"t":"query","entity":"Order"}),
        json!({"t":"blob"}),
        json!({"t":"array","of":{"t":"int"}}),
        json!({"t":"option","of":{"t":"option","of":{"t":"int"}}}),
    ] {
        let mut w = model::module();
        w["commands"][0]["fields"][0]["type"] = ty;
        assert!(!admission_report(&w.to_string()).ok);
    }
}
#[test]
fn a_false_guard_does_not_make_invalid_payload_syntax_admissible() {
    let mut w = model::module();
    w["actions"][0]["command_effects"][0]["when"] = model::boolean(false);
    w["actions"][0]["command_effects"][0]["payload"]["recipient"] =
        json!({"op":"field","param":"outside_scope","field":"name","loc":model::loc()});
    refused(&w, "UNKNOWN_PARAM");
}
#[test]
fn new_arrays_are_required_even_when_empty() {
    let mut w = model::module();
    w["commands"] = json!([]);
    w["actions"][0]["command_effects"] = json!([]);
    accepted(&w);
    for key in ["commands", "command_effects"] {
        let mut bad = w.clone();
        if key == "commands" {
            bad.as_object_mut().unwrap().remove(key);
        } else {
            bad["actions"][0].as_object_mut().unwrap().remove(key);
        }
        refused(&bad, "DECODE_ERROR");
    }
}
#[test]
fn old_versions_reject_both_new_keys_including_empty_arrays() {
    for version in ["0.4", "0.5", "0.6", "0.7"] {
        for module_key in [false, true] {
            let mut w = model::module();
            w["ir_version"] = json!(version);
            w.as_object_mut().unwrap().remove("commands");
            w.as_object_mut().unwrap().remove("reads");
            w["actions"][0]
                .as_object_mut()
                .unwrap()
                .remove("command_effects");
            assert!(admit(&w.to_string()).is_ok());
            if module_key {
                w["commands"] = json!([]);
            } else {
                w["actions"][0]["command_effects"] = json!([]);
            }
            refused(&w, "DECODE_ERROR");
        }
    }
}
#[test]
fn read_derived_and_invariant_cannot_emit_commands() {
    accepted(&model::module());
    for section in ["reads", "derived", "invariants"] {
        let mut w = model::module();
        let mut item = match section {
            "reads" => {
                json!({"name":"read_value","params":[],"body":{"value":model::integer(1)},"loc":model::loc()})
            }
            "derived" => {
                json!({"name":"derived_value","kind":"derived","params":[],"body":model::integer(1),"loc":model::loc()})
            }
            _ => json!({"name":"rule","body":model::boolean(true),"loc":model::loc()}),
        };
        item["command_effects"] = w["actions"][0]["command_effects"].clone();
        w[section] = json!([item]);
        refused(&w, "DECODE_ERROR");
    }
}
#[test]
fn strict_new_wire_does_not_reduce_duplicate_payload_or_version_keys() {
    let w = model::module().to_string();
    let version = format!("{{\"ir_version\":\"0.7\",{}", &w[1..]);
    accepted(&serde_json::from_str::<Value>(&w).unwrap());
    assert!(!admission_report(&version).ok);
    let payload = w.replace("\"recipient\":{", "\"recipient\":null,\"recipient\":{");
    let result = admission_report(&payload);
    assert!(!result.ok);
    assert!(result.errors.iter().any(|e| e.code == "DECODE_ERROR"));
}
#[test]
fn schema_migration_and_requirement_documents_cannot_emit_commands() {
    let root = common::fixtures().join("migration");
    let source = admit(&common::read(&root.join("modules/cultures_v1.json"))).unwrap();
    let target = admit(&common::read(&root.join("modules/cultures_v2.json"))).unwrap();
    let mut document = common::json(&root.join("valid/cultures_v1_to_v2.json"));
    assert!(
        behavior_core::migration::admit_migration(&source, &target, &document.to_string()).is_ok()
    );
    document["command_effects"] = json!([]);
    let refused =
        behavior_core::migration::admit_migration(&source, &target, &document.to_string())
            .unwrap_err();
    assert!(refused.errors.iter().any(|e| e.code == "DECODE_ERROR"));
}
#[test]
fn exact_payload_conversion_cannot_introduce_implicit_rounding() {
    let mut w = model::ratio_module(model::boolean(true));
    w["commands"][0]["fields"][0]["type"] = json!({"t":"decimal"});
    let expression = |denominator: &str| {
        model::op(
            "div",
            vec![
                model::lit(json!({"t":"decimal"}), json!("1")),
                model::lit(json!({"t":"decimal"}), json!(denominator)),
            ],
        )
    };
    w["actions"][0]["command_effects"][0]["payload"]["ratio"] = expression("2");
    accepted(&w);
    w["actions"][0]["command_effects"][0]["payload"]["ratio"] = expression("3");
    refused(&w, "LOSSY_CONVERSION");
}

#[test]
fn direct_wire_construction_cannot_hide_commands_in_a_legacy_profile() {
    let mut wire = behavior_core::wire::decode_module(&model::module().to_string()).unwrap();
    wire.profile = behavior_core::semantic::types::SemanticProfile::Legacy;
    assert!(behavior_core::admit::admit_wire(&wire).is_err());
}

#[test]
fn command_wire_and_record_schemas_accept_closed_shapes_and_refuse_extensions() {
    use std::io::Write;
    use std::process::{Command, Stdio};
    let w = model::module();
    let m = admit(&w.to_string()).unwrap();
    let r = behavior_core::evaluate(&m, &model::request(2, true).to_string());
    let source = r#"
import copy,json,pathlib,sys
from jsonschema import Draft202012Validator
wire,record=json.load(sys.stdin)
for name,value in [('wire-ir-0.8',wire),('decision-record-0.7',record)]:
    schema=json.loads(pathlib.Path(f'schema/{name}.schema.json').read_text())
    Draft202012Validator.check_schema(schema)
    validator=Draft202012Validator(schema)
    assert validator.is_valid(value),f'valid {name} rejected: {list(validator.iter_errors(value))}'
    bad=copy.deepcopy(value);bad['hidden']=True
    assert not validator.is_valid(bad),'unknown root key accepted'
    if name=='wire-ir-0.8':
        for key in ['commands','reads']:
            bad=copy.deepcopy(value);bad.pop(key)
            assert not validator.is_valid(bad),f'missing {key} accepted'
        bad=copy.deepcopy(value);bad['actions'][0].pop('command_effects')
        assert not validator.is_valid(bad),'missing command bag accepted'
        bad=copy.deepcopy(value);bad['actions'][0]['command_effects'][0]['hidden']=1
        assert not validator.is_valid(bad),'open emission product'
        for typ in [{'t':'ref','entity':'Order'},{'t':'exact'},{'t':'option','of':{'t':'option','of':{'t':'int'}}}]:
            bad=copy.deepcopy(value);bad['commands'][0]['fields'][0]['type']=typ
            assert not validator.is_valid(bad),f'forbidden scalar accepted: {typ}'
    else:
        bad=copy.deepcopy(value);bad['commands']['intents'][0]['command_occurrence_id']='uncommitted'
        assert not validator.is_valid(bad),'candidate occurrence accepted'
        bad=copy.deepcopy(value);bad['trace'][0]['loc']={'file':'private','line':1}
        assert not validator.is_valid(bad),'source provenance accepted'
        bad=copy.deepcopy(value);bad['commands']['declarations'][0]['fields'][0]['type']={'t':'ref','entity':'Order'}
        assert not validator.is_valid(bad),'unsupported archive scalar accepted'
"#;
    let mut child = Command::new("python3")
        .args(["-c", source])
        .current_dir(common::repo_root())
        .stdin(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .unwrap();
    child
        .stdin
        .take()
        .unwrap()
        .write_all(json!([w, r.as_json()]).to_string().as_bytes())
        .unwrap();
    let output = child.wait_with_output().unwrap();
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
}
