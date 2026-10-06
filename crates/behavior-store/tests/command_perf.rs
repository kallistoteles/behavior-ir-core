#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Measurements are observations, never timing assertions or semantic outputs.
#[path = "../../behavior-core/tests/support/commands.rs"]
mod model;
use behavior_store::commands::CommandStreamRequest;
use behavior_store::documents::SeedEntity;
use behavior_store::store::genesis_v2_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use serde_json::json;
use std::collections::{BTreeMap, BTreeSet};
use std::time::Instant;
#[test]
fn representative_counts_preserve_semantics_and_report_actual_scaling() {
    println!(
        "PERF kind,axis,entities,commands,history,admit_us,evaluate_us,commit_us,stream_us,page_bytes"
    );
    for kind in ["state", "command", "mixed"] {
        for (axis, entities, commands, events) in [
            ("entities", 1, 4, 2),
            ("entities", 16, 4, 2),
            ("entities", 64, 4, 2),
            ("commands", 4, 1, 2),
            ("commands", 4, 8, 2),
            ("commands", 4, 32, 2),
            ("history", 4, 4, 1),
            ("history", 4, 4, 4),
            ("history", 4, 4, 16),
        ] {
            let mut wire = if kind == "command" {
                model::command_only_module(true)
            } else {
                model::module()
            };
            wire["entities"] = model::module()["entities"].clone();
            let n = if kind == "state" { 0 } else { commands };
            let emission = wire["actions"][0]["command_effects"][0].clone();
            wire["actions"][0]["command_effects"] = json!(vec![emission; n]);
            let start = Instant::now();
            let m = behavior_core::admit(&wire.to_string()).unwrap();
            let admit = start.elapsed().as_micros();
            let ep=EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
            let seed = (0..entities)
                .map(|i| {
                    let mut value = model::value(2, true);
                    value["id"] = json!(format!("order-{i}"));
                    SeedEntity {
                        entity: "Order".into(),
                        value,
                    }
                })
                .collect();
            let mut store = Store::create(
                InMemoryBackend::new(),
                &m,
                genesis_v2_for(&m, ep, seed).unwrap(),
            )
            .unwrap();
            let origin = store.current_history().unwrap();
            let mut evaluate = 0;
            let mut commit = 0;
            for _ in 0..events {
                let bindings = if kind == "command" {
                    BTreeMap::new()
                } else {
                    BTreeMap::from([("order".into(), "order-0".into())])
                };
                let input = if kind == "command" {
                    json!({"recipient":"customer-1"})
                } else {
                    json!({})
                };
                let start = Instant::now();
                let b = store
                    .evaluate(
                        &m,
                        if kind == "command" {
                            "receipt"
                        } else {
                            "submit"
                        },
                        &bindings,
                        &input,
                        &json!({}),
                        "2026-10-05T12:00:00Z",
                        None,
                    )
                    .unwrap()
                    .bundle
                    .unwrap();
                evaluate += start.elapsed().as_micros();
                assert_eq!(b.record["commands"]["intents"].as_array().unwrap().len(), n);
                let start = Instant::now();
                store.commit(&m, &b.evaluated_state, &b).unwrap();
                commit += start.elapsed().as_micros();
            }
            let head = store.current_history().unwrap();
            assert_eq!(head.position, events);
            if kind == "command" {
                assert_eq!(head.state, origin.state);
            }
            assert_eq!(
                store
                    .backend()
                    .keys_at("Order", head.position)
                    .unwrap()
                    .len(),
                entities
            );
            let request=CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":origin,"max_records":1}).to_string()).unwrap();
            let start = Instant::now();
            let page = store.commands_since(&request).unwrap();
            let stream = start.elapsed().as_micros();
            assert_eq!(page.items().len(), n);
            assert_eq!(page.next_after().position, 1);
            assert_eq!(
                page.items()
                    .iter()
                    .map(|c| c.command_occurrence_id())
                    .collect::<BTreeSet<_>>()
                    .len(),
                n
            );
            let bytes = page.as_json().to_string().len();
            println!(
                "PERF {kind},{axis},{entities},{n},{events},{admit},{evaluate},{commit},{stream},{bytes}"
            );
        }
    }
}
