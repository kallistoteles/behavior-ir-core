#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/commands.rs"]
mod model;
use behavior_core::{admit, evaluate, replay};
use serde_json::json;
#[test]
fn allowed_false_guard_and_selected_payload_error_replay_exactly() {
    for (w, request) in [
        (model::module(), model::request(2, true)),
        (
            model::ratio_module(model::boolean(false)),
            model::request(0, true),
        ),
        (
            model::ratio_module(model::boolean(true)),
            model::request(0, true),
        ),
        (
            model::command_only_module(true),
            model::command_only_request("same"),
        ),
    ] {
        let m = admit(&w.to_string()).unwrap();
        let record = evaluate(&m, &request.to_string());
        let result = replay(&m, &record.to_json_string());
        assert!(result.matches, "{:?}", result.diff);
    }
}
#[test]
fn permutations_and_detached_locations_reproduce_same_bytes_and_intents() {
    let mut w = model::module();
    let a = w["actions"][0]["command_effects"][0].clone();
    let mut b = a.clone();
    b["payload"]["recipient"] = model::string("other");
    w["actions"][0]["command_effects"] = json!([a.clone(), b, a]);
    let m = admit(&w.to_string()).unwrap();
    let record = evaluate(&m, &model::request(2, true).to_string());
    model::emissions_mut(&mut w).reverse();
    model::relocation(&mut w, "/different/source");
    let permuted = admit(&w.to_string()).unwrap();
    assert_eq!(m.behavior_version(), permuted.behavior_version());
    let actual = evaluate(&permuted, &model::request(2, true).to_string());
    assert_eq!(record.to_json_string(), actual.to_json_string());
    assert!(replay(&permuted, &record.to_json_string()).matches);
}
#[test]
fn query_binder_and_equal_derived_alias_changes_preserve_semantic_replay() {
    let mut w = model::module();
    w["commands"][0]["fields"][0]["type"] = json!({"t":"int"});
    w["actions"][0]["command_effects"][0]["payload"]["recipient"] = model::op(
        "count",
        vec![
            json!({"op":"where","args":[{"op":"select","entity":"Order","loc":model::loc()}],"param":"member","body":{"op":"field","param":"member","field":"notifications","loc":model::loc()},"loc":model::loc()}),
        ],
    );
    let derived = |name: &str| json!({"name":name,"kind":"derived","params":[{"name":"order","type":{"t":"entity","name":"Order"}}],"body":model::field("notifications"),"loc":model::loc()});
    w["derived"] = json!([derived("sameA"), derived("sameB")]);
    w["actions"][0]["command_effects"][0]["when"] =
        json!({"op":"derived","name":"sameA","args":["order"],"loc":model::loc()});
    let m = admit(&w.to_string()).unwrap();
    let r = evaluate(&m, &model::request(2, true).to_string());
    w["actions"][0]["command_effects"][0]["payload"]["recipient"]["args"][0]["param"] =
        json!("renamed");
    w["actions"][0]["command_effects"][0]["payload"]["recipient"]["args"][0]["body"]["param"] =
        json!("renamed");
    w["actions"][0]["command_effects"][0]["when"]["name"] = json!("sameB");
    let other = admit(&w.to_string()).unwrap();
    assert_eq!(m.behavior_version(), other.behavior_version());
    assert!(replay(&other, &r.to_json_string()).matches);
}
#[test]
fn changing_declaration_payload_count_hash_facts_or_semantic_trace_diverges() {
    let m = admit(&model::module().to_string()).unwrap();
    let good = evaluate(&m, &model::request(2, true).to_string())
        .as_json()
        .clone();
    for fault in 0..7 {
        let mut bad = good.clone();
        match fault {
            0 => bad["commands"]["declarations"][0]["name"] = json!("Other"),
            1 => bad["commands"]["intents"][0]["payload"]["recipient"] = json!("other"),
            2 => {
                let c = bad["commands"]["intents"][0].clone();
                bad["commands"]["intents"].as_array_mut().unwrap().push(c);
            }
            3 => {
                bad["commands"]["intents"][0]["intent_hash"] =
                    json!(format!("sha256:{}", "ab".repeat(32)))
            }
            4 => bad["trace"][0]["outcome"] = json!("unknown"),
            5 => bad["facts"]["universe"][0]["members"][0]["cost"] = json!(100),
            _ => bad["commands"]["intents"][0]["command_occurrence_id"] = json!("invented"),
        };
        assert!(!replay(&m, &bad.to_string()).matches, "fault {fault}");
    }
}
#[test]
fn duplicate_invocation_record_keys_are_rejected_before_map_reduction() {
    use behavior_core::invocation::{invoke_document, replay_invocation};
    let m = admit(&model::command_only_module(true).to_string()).unwrap();
    let record = invoke_document(
        &m,
        &model::command_only_invocation("same").to_string(),
        &model::command_only_snapshot().to_string(),
        None,
    )
    .unwrap();
    let text = record.to_json_string();
    assert!(replay_invocation(&m, &text).matches);
    let root = text.replacen(
        "\"capability\":\"receipt\"",
        "\"capability\":\"forged\",\"capability\":\"receipt\"",
        1,
    );
    assert!(
        !replay_invocation(&m, &root).matches,
        "ambiguous root accepted"
    );
    let nested = text.replacen(
        "\"recipient\":\"same\"",
        "\"recipient\":\"forged\",\"recipient\":\"same\"",
        1,
    );
    assert!(
        !replay_invocation(&m, &nested).matches,
        "ambiguous nested product accepted"
    );
}
#[test]
fn legacy_record_keeps_its_exact_provenance_comparison() {
    let mut w = model::module();
    w["ir_version"] = json!("0.7");
    w.as_object_mut().unwrap().remove("commands");
    w["actions"][0]
        .as_object_mut()
        .unwrap()
        .remove("command_effects");
    let m = admit(&w.to_string()).unwrap();
    let r = evaluate(&m, &model::request(2, true).to_string());
    assert!(replay(&m, &r.to_json_string()).matches);
    model::relocation(&mut w, "/other/legacy");
    let other = admit(&w.to_string()).unwrap();
    assert_eq!(m.behavior_version(), other.behavior_version());
    assert!(!replay(&other, &r.to_json_string()).matches);
    assert!(r.as_json().get("commands").is_none());
}
#[test]
fn receipt_golden_roundtrip_and_both_record_forms_replay() {
    let m = admit(include_str!(
        "../../../tests/fixtures/commands/modules/receipt.json"
    ))
    .unwrap();
    let text = include_str!("../../../tests/fixtures/commands/records/receipt.json");
    let invocation =
        include_str!("../../../tests/fixtures/commands/records/receipt.invocation.json");
    let golden: serde_json::Value = serde_json::from_str(include_str!(
        "../../../tests/fixtures/commands/records/receipt.golden.json"
    ))
    .unwrap();
    let r = behavior_core::DecisionRecord::from_json(text).unwrap();
    assert_eq!(r.as_json()["behavior_version"], golden["behavior_version"]);
    assert_eq!(
        behavior_core::canonical::tagged_hash("behavior.transition.v1", r.as_json()).unwrap(),
        golden["decision_record_hash"]
    );
    assert_eq!(
        r.command_intents()
            .intents()
            .iter()
            .map(|c| c.as_json()["intent_hash"].clone())
            .collect::<Vec<_>>(),
        golden["intent_hashes"].as_array().unwrap().clone()
    );
    assert!(replay(&m, text).matches);
    assert!(behavior_core::invocation::replay_invocation(&m, invocation).matches);
    let envelope: serde_json::Value = serde_json::from_str(invocation).unwrap();
    assert_eq!(envelope["record_id"], golden["invocation_record_id"]);
}
