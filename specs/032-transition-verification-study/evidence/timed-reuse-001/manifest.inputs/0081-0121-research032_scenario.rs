//! Frozen JSON requests for the private full-reference libtest process.
#![allow(clippy::unwrap_used, dead_code)]
use super::{core_api, store_api};
use serde::{Deserialize, Serialize};
use serde_json::{Value as Json, json};
use std::collections::{BTreeMap, BTreeSet};
use store_api::{Backend, InMemoryBackend, Store};

#[derive(Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Attempt {
    pub action: String,
    pub bindings: BTreeMap<String, String>,
    pub input: Json,
    pub context: Json,
    pub now: String,
}
#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Scenario {
    pub module: Json,
    pub genesis: Json,
    pub attempts: Vec<Attempt>,
    #[serde(default)]
    pub measure_after: usize,
}
fn state(store: &Store<InMemoryBackend>, module: &core_api::semantic::Module) -> Json {
    let history = store.current_history().unwrap();
    let snapshot = store.export_seed_at(module, &history).unwrap();
    let mut used = BTreeSet::new();
    for row in store.backend().genesis().unwrap().unwrap().seed {
        used.insert((row.entity, row.value["id"].as_str().unwrap().to_string()));
    }
    for p in 1..=history.position {
        for row in store.backend().record(p).unwrap().unwrap().created {
            used.insert((row.entity, row.id));
        }
    }
    json!({"snapshot":snapshot,"used":used})
}
pub fn run(scenario: Scenario) -> Json {
    let initialization = std::time::Instant::now();
    let module = core_api::admit(&scenario.module.to_string()).unwrap();
    let genesis = store_api::documents::Genesis::from_json(&scenario.genesis.to_string()).unwrap();
    let mut store = Store::create(InMemoryBackend::new(), &module, genesis).unwrap();
    let initialization_ms = initialization.elapsed().as_secs_f64() * 1000.0;
    assert!(scenario.measure_after <= scenario.attempts.len());
    let prefix = std::time::Instant::now();
    let mut prefix_ms = 0.0;
    let mut observations = Vec::new();
    for (index, attempt) in scenario.attempts.into_iter().enumerate() {
        let measured = index >= scenario.measure_after;
        if index == scenario.measure_after {
            prefix_ms = prefix.elapsed().as_secs_f64() * 1000.0;
        }
        let whole_clock = std::time::Instant::now();
        let before = if measured {
            state(&store, &module)
        } else {
            Json::Null
        };
        let clock = std::time::Instant::now();
        let evaluated = store.evaluate(
            &module,
            &attempt.action,
            &attempt.bindings,
            &attempt.input,
            &attempt.context,
            &attempt.now,
            None,
        );
        let evaluate_ms = clock.elapsed().as_secs_f64() * 1000.0;
        let mut commit_ms = 0.0;
        let observed = match evaluated {
            Ok(e) => {
                let mut committed = None;
                if let Some(b) = e.bundle {
                    let clock = std::time::Instant::now();
                    store.commit(&module, &b.evaluated_state, &b).unwrap();
                    commit_ms = clock.elapsed().as_secs_f64() * 1000.0;
                    if measured {
                        committed = store
                            .backend()
                            .record(store.current_history().unwrap().position)
                            .unwrap();
                    }
                }
                if measured {
                    json!({"core_record":e.record,"store_error":null,"committed_record":committed})
                } else {
                    Json::Null
                }
            }
            Err(e) => {
                if measured {
                    json!({"core_record":null,"store_error":{"stage":"Store::evaluate","code":e.code(),"message":e.to_string()},"committed_record":null})
                } else {
                    Json::Null
                }
            }
        };
        if measured {
            let after = state(&store, &module);
            let whole_ms = whole_clock.elapsed().as_secs_f64() * 1000.0;
            observations.push(json!({"before":before,"after":after,"observed":observed,"metrics":{"evaluate_ms":evaluate_ms,"commit_ms":commit_ms,"whole_ms":whole_ms}}));
        }
    }
    json!({"format":"core032.full-reference.v1","behavior":module.behavior_version(),"observations":observations,"preparation":{"initialization_ms":initialization_ms,"prefix_ms":prefix_ms,"omitted_prefix_outputs":scenario.measure_after}})
}
