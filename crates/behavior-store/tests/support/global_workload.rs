//! Public-API 029 measurement probe. Default release builds contain no work counters.
#![allow(clippy::unwrap_used)]
#[path = "global_wire.rs"]
mod fixture;
use super::store_api;
use serde_json::{Value as Json, json};
use std::{collections::BTreeMap, time::Instant};
use store_api::documents::{EvidencePolicy, SeedEntity, hash_of};
use store_api::{Backend, InMemoryBackend, Store};

pub(crate) fn run(n: usize, steps: usize, rule_name: &str, workload: &str) -> Json {
    run_scaled(n, steps, rule_name, workload, 1, 1)
}

pub(crate) fn run_scaled(
    n: usize,
    steps: usize,
    rule_name: &str,
    workload: &str,
    batch: usize,
    rules: usize,
) -> Json {
    let preparation = Instant::now();
    assert!(n > 0 && steps > 0);
    let rule = match rule_name {
        "none" => fixture::Global::None,
        "true" => fixture::Global::True,
        "count" => fixture::Global::AtMost(i64::try_from(n + steps * batch).unwrap()),
        "unsupported" => fixture::Global::Unsupported,
        _ => panic!("unknown rule"),
    };
    assert!(["create", "update", "unrelated", "warm", "reopen"].contains(&workload));
    let module =
        behavior_core::admit(&fixture::scaled_wire(rule, batch, rules).to_string()).unwrap();
    let seed = (0..n)
        .map(|i| SeedEntity {
            entity: "E".into(),
            value: json!({"id":format!("e{i}"),"x":1,"y":2}),
        })
        .collect();
    let mut store = Store::create(
        InMemoryBackend::new(),
        &module,
        store_api::store::genesis_for(&module, EvidencePolicy::none(), seed),
    )
    .unwrap();
    let setup_ms = preparation.elapsed().as_secs_f64() * 1000.0;
    #[cfg(feature = "validation-work")]
    behavior_core::eval::work::reset();
    let mut records = Vec::new();
    let mut committed = Vec::new();
    let mut evaluate_ms = 0.0;
    let mut commit_ms = 0.0;
    let mut open_ms = 0.0;
    let run = Instant::now();
    for i in 0..steps {
        let (action, bindings, mut input) = match workload {
            "create" => ("create", BTreeMap::new(), json!({"id":format!("new{i}")})),
            "unrelated" => (
                "create_other",
                BTreeMap::new(),
                json!({"id":format!("other{i}")}),
            ),
            _ => (
                "set",
                BTreeMap::from([("e".into(), "e0".into())]),
                json!({"n":i+1}),
            ),
        };
        if workload == "create" {
            for index in 1..batch {
                input[format!("id{index}")] = json!(format!("new{i}_{index}"));
            }
        }
        let phase = Instant::now();
        let evaluated = store
            .evaluate(
                &module,
                action,
                &bindings,
                &input,
                &json!({}),
                "2026-10-25T12:00:00Z",
                None,
            )
            .unwrap();
        evaluate_ms += phase.elapsed().as_secs_f64() * 1000.0;
        assert_eq!(evaluated.record["result"], "ALLOW");
        let bundle = evaluated.bundle.unwrap();
        if workload != "warm" {
            let phase = Instant::now();
            let c = store
                .commit(&module, &bundle.evaluated_state, &bundle)
                .unwrap();
            commit_ms += phase.elapsed().as_secs_f64() * 1000.0;
            committed.push((c.record_id, c.result_state));
            if workload == "reopen" {
                let phase = Instant::now();
                store = Store::open(store.into_backend()).unwrap();
                open_ms += phase.elapsed().as_secs_f64() * 1000.0;
            }
        }
        records.push(evaluated.record);
    }
    let phase = Instant::now();
    let drain = store
        .evaluate(
            &module,
            "set",
            &BTreeMap::from([("e".into(), "e0".into())]),
            &json!({"n":1}),
            &json!({}),
            "2026-10-25T12:00:00Z",
            None,
        )
        .unwrap();
    let drain_ms = phase.elapsed().as_secs_f64() * 1000.0;
    let total_ms = run.elapsed().as_secs_f64() * 1000.0;
    assert_eq!(drain.record["result"], "ALLOW");
    records.push(drain.record);
    #[cfg(feature = "validation-work")]
    let work = serde_json::to_value(behavior_core::eval::work::read()).unwrap();
    #[cfg(not(feature = "validation-work"))]
    let work = Json::Null;
    // Independent post-measurement audit, never moved validation from the timed path.
    let position = store.current().unwrap().position;
    let final_e = store.backend().keys_at("E", position).unwrap().len();
    let final_other = store.backend().keys_at("Other", position).unwrap().len();
    assert_eq!(
        final_e,
        n + if workload == "create" {
            steps * batch
        } else {
            0
        }
    );
    assert_eq!(final_other, if workload == "unrelated" { steps } else { 0 });
    let observations =
        json!({"records":records,"commits":committed,"head":store.backend().head().unwrap()});
    let observation_bytes = observations.to_string().len();
    let digest = hash_of("core029.measurement.observations", &observations).unwrap();
    let hwm = std::fs::read_to_string("/proc/self/status")
        .ok()
        .and_then(|s| {
            s.lines()
                .find(|l| l.starts_with("VmHWM:"))
                .map(str::to_owned)
        });
    json!({"n":n,"steps":steps,"rule":rule_name,"workload":workload,"batch":batch,"rules":rules,
        "mode":if cfg!(feature="validation-work"){"instrumented"}else{"production-like"},
        "setup_ms":setup_ms,"evaluate_ms":evaluate_ms,"commit_ms":commit_ms,"open_ms":open_ms,"drain_ms":drain_ms,"total_ms":total_ms,
        "final_e_members":final_e,"final_other_members":final_other,
        "including_setup_ms":setup_ms+total_ms,"process_hwm":hwm,"observations_digest":digest,"observation_bytes":observation_bytes,"work":work})
}
