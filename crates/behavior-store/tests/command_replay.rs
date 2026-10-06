#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/command_history.rs"]
mod h;
use behavior_store::replay::{replay_behavior_with, replay_data};
use behavior_store::{Backend, Store};
use serde_json::json;
use std::collections::BTreeMap;
#[test]
fn data_replay_needs_no_current_module_and_behavior_replay_needs_exact_semantics() {
    let m = h::module(true, true);
    let mut s = h::store(&m);
    let start = s.current();
    let start = start.unwrap();
    h::commit(&m, &mut s, "same");
    let end = s.current().unwrap();
    let before = h::counts(&s);
    let commands = h::all(&s);
    assert!(replay_data(&s, &start, &end).ok);
    let correct = BTreeMap::from([(m.behavior_version(), m.clone())]);
    assert!(replay_behavior_with(&s, &correct, &BTreeMap::new(), &start, &end).ok);
    assert!(!replay_behavior_with(&s, &BTreeMap::new(), &BTreeMap::new(), &start, &end).ok);
    let changed = h::module(false, true);
    let substituted = BTreeMap::from([(m.behavior_version(), changed)]);
    assert!(!replay_behavior_with(&s, &substituted, &BTreeMap::new(), &start, &end).ok);
    assert_eq!(h::counts(&s), before);
    assert_eq!(h::all(&s), commands);
    let copied = Store::open(s.backend().clone()).unwrap();
    assert!(replay_data(&copied, &start, &end).ok);
    assert_eq!(h::all(&copied), commands);
}
#[test]
fn altered_archives_counts_occurrence_assertions_parent_or_end_state_fail_both_replays() {
    let m = h::module(true, true);
    let mut s = h::store(&m);
    let start = s.current().unwrap();
    h::commit(&m, &mut s, "same");
    let end = s.current().unwrap();
    let original = s.backend().record(1).unwrap().unwrap();
    let modules = BTreeMap::from([(m.behavior_version(), m)]);
    for fault in 0..7 {
        let mut bad = original.clone();
        match fault {
            0 => {
                bad.bundle.as_mut().unwrap().record["commands"]["declarations"][0]["name"] =
                    json!("Forged")
            }
            1 => {
                bad.bundle.as_mut().unwrap().record["commands"]["intents"][0]["payload"]["recipient"] =
                    json!("corrupted_payload")
            }
            2 => {
                bad.bundle.as_mut().unwrap().record["commands"]["intents"]
                    .as_array_mut()
                    .unwrap()
                    .pop();
            }
            3 => {
                bad.bundle.as_mut().unwrap().record["commands"]["intents"][0]["command_occurrence_id"] =
                    json!("forged")
            }
            4 => bad.previous_record = format!("sha256:{}", "ab".repeat(32)),
            5 => bad.result_state.state = format!("sha256:{}", "ab".repeat(32)),
            _ => bad.bundle.as_mut().unwrap().record["semantic_profile"] = json!("0.7"),
        };
        s.backend_mut().records.insert(1, bad);
        assert!(!replay_data(&s, &start, &end).ok, "data {fault}");
        assert!(
            !replay_behavior_with(&s, &modules, &BTreeMap::new(), &start, &end).ok,
            "behavior {fault}"
        );
    }
    s.backend_mut().records.clear();
    assert!(replay_data(&s, &start, &end).ok);
}
#[test]
fn typed_enum_and_nominal_archives_validate_without_current_declarations() {
    let mut wire = h::model::ratio_module(h::model::boolean(true));
    wire["enums"] = json!([{"name":"Channel","values":["EMAIL","SMS"],"loc":h::model::loc()}]);
    wire["commands"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"channel","type":{"t":"enum","name":"Channel"},"loc":h::model::loc()}));
    wire["actions"][0]["command_effects"][0]["payload"]["channel"] =
        h::model::lit(json!({"t":"enum","name":"Channel"}), json!("EMAIL"));
    let m = behavior_core::admit(&wire.to_string()).unwrap();
    let ep=behavior_verify::governance::trusted::EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let seed = vec![behavior_store::documents::SeedEntity {
        entity: "Order".into(),
        value: h::model::value(2, true),
    }];
    let mut s = Store::create(
        h::faults::FaultBackend::default(),
        &m,
        behavior_store::store::genesis_v2_for(&m, ep, seed).unwrap(),
    )
    .unwrap();
    let start = s.current().unwrap();
    let b = s
        .evaluate(
            &m,
            "submit",
            &BTreeMap::from([("order".into(), "order-1".into())]),
            &json!({}),
            &json!({}),
            h::NOW,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    let end = s.current().unwrap();
    assert!(replay_data(&s, &start, &end).ok);
    let mut bad = s.backend().record(1).unwrap().unwrap();
    bad.bundle.as_mut().unwrap().record["commands"]["types"][0]["hash"] =
        json!(format!("sha256:{}", "ab".repeat(32)));
    s.backend_mut().records.insert(1, bad);
    assert!(!replay_data(&s, &start, &end).ok);
}
