//! Research-only complete-path observation harness. Timings never enter Core documents.
#![allow(clippy::unwrap_used, dead_code, unexpected_cfgs)]
use super::{core_api, store_api};
#[path = "execution_evidence_fixtures.rs"]
pub mod fixture;
use fixture::Case;
use serde_json::{Value as Json, json};
use std::{collections::BTreeMap, time::Instant};
use store_api::{Backend, InMemoryBackend, Store};
const NOW: &str = "2026-10-28T00:00:00Z";
fn ms(clock: Instant) -> f64 {
    clock.elapsed().as_secs_f64() * 1000.
}
fn bindings(case: &Case, create: bool) -> BTreeMap<String, String> {
    if create {
        if case.relations {
            BTreeMap::from([("parent".into(), "p0".into())])
        } else {
            BTreeMap::new()
        }
    } else {
        (0..case.batch)
            .map(|i| (format!("e{i}"), format!("e{i}")))
            .collect()
    }
}
fn input(case: &Case, step: usize, create: bool) -> Json {
    if create {
        json!(
            (0..case.batch)
                .map(|i| (format!("id{i}"), json!(format!("new{step}_{i}"))))
                .collect::<BTreeMap<_, _>>()
        )
    } else {
        json!({"n":step+2})
    }
}
fn reset_work() {
    #[cfg(feature = "validation-work")]
    core_api::eval::work::reset();
}
fn work() -> Json {
    #[cfg(feature = "validation-work")]
    {
        serde_json::to_value(core_api::eval::work::read()).unwrap()
    }
    #[cfg(not(feature = "validation-work"))]
    {
        Json::Null
    }
}
pub fn run(case: &Case) -> (Json, Json) {
    let preparation = Instant::now();
    let module = fixture::module(case);
    let mut store = Store::create(
        InMemoryBackend::new(),
        &module,
        fixture::genesis(case, &module),
    )
    .unwrap();
    let origin = store.current().unwrap();
    let origin_history = store.current_history().unwrap();
    let setup_ms = ms(preparation);
    let history_clock = Instant::now();
    for _ in 0..case.history {
        let b = store
            .evaluate(
                &module,
                "set",
                &bindings(case, false),
                &json!({"n":1}),
                &json!({}),
                NOW,
                None,
            )
            .unwrap()
            .bundle
            .unwrap();
        store.commit(&module, &b.evaluated_state, &b).unwrap();
    }
    let history_ms = ms(history_clock);
    let prepared = store.current_history().unwrap();
    assert_eq!(prepared.position, case.history as u64);
    let mut records = Vec::new();
    let mut bundles = Vec::new();
    let mut committed = Vec::new();
    let mut evaluate_ms = 0.;
    let mut commit_ms = 0.;
    let create = case.operation == "create";
    reset_work();
    let cycle = Instant::now();
    for step in 0..case.steps {
        let clock = Instant::now();
        let evaluated = store
            .evaluate(
                &module,
                if create { "create" } else { "set" },
                &bindings(case, create),
                &input(case, step, create),
                &json!({}),
                NOW,
                None,
            )
            .unwrap();
        evaluate_ms += ms(clock);
        assert_eq!(evaluated.record["result"], "ALLOW", "{}", evaluated.record);
        let b = evaluated.bundle.unwrap();
        let clock = Instant::now();
        let c = store.commit(&module, &b.evaluated_state, &b).unwrap();
        commit_ms += ms(clock);
        records.push(evaluated.record);
        bundles.push(b);
        committed.push(json!({"record_id":c.record_id,"result_state":c.result_state,"already":c.already,"evidence_trust":c.evidence_trust}));
    }
    let clock = Instant::now();
    let drain = store
        .evaluate(
            &module,
            "set",
            &bindings(case, false),
            &json!({"n":1}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap();
    let drain_ms = ms(clock);
    let cycle_ms = ms(cycle);
    assert_eq!(drain.record["result"], "ALLOW");
    records.push(drain.record);
    let cycle_work = work();
    let end = store.current().unwrap();
    let actual_members = store.backend().keys_at("E", end.position).unwrap().len();
    assert_eq!(
        actual_members,
        case.n + if create { case.steps * case.batch } else { 0 }
    );
    assert_eq!(end.position, (case.history + case.steps) as u64);
    reset_work();
    let clock = Instant::now();
    let read = store
        .read(
            &module,
            &core_api::read::ReadSource::Declared("ratio".into()),
            &BTreeMap::from([("e".into(), "e0".into())]),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap();
    let read_ms = ms(clock);
    let read_work = work();
    let request = store_api::commands::CommandStreamRequest::from_json(
        &json!({
        "format":"behavior.command_stream_request.v1","after":prepared,
        "through":store.current_history().unwrap(),"max_records":1})
        .to_string(),
    )
    .unwrap();
    reset_work();
    let clock = Instant::now();
    let page = store.commands_since(&request).unwrap();
    let page_ms = ms(clock);
    let page_work = work();
    assert_eq!(page.items().len(), case.commands);
    let clock = Instant::now();
    let data = store_api::replay::replay_data(&store, &origin, &end);
    let data_ms = ms(clock);
    let modules = BTreeMap::from([(module.behavior_version(), module.clone())]);
    let clock = Instant::now();
    let behavior = store_api::replay::replay_behavior(&store, &modules, &origin, &end);
    let behavior_ms = ms(clock);
    let clock = Instant::now();
    let references = store_api::replay::replay_index(&store, &module, &origin, &end);
    let references_ms = ms(clock);
    assert!(data.ok && behavior.ok && references.ok);
    let commits: Vec<_> = (1..=end.position)
        .map(|p| store.backend().record(p).unwrap().unwrap())
        .collect();
    let mut types = vec!["E"];
    if case.relations {
        types.push("Parent");
    }
    let versions: Vec<_> = types
        .into_iter()
        .flat_map(|t| store.backend().keys_at(t, end.position).unwrap())
        .map(|key| {
            store
                .backend()
                .version_at(&key, end.position)
                .unwrap()
                .unwrap()
        })
        .collect();
    let clock = Instant::now();
    let store = Store::open(store.into_backend()).unwrap();
    let reopen_ms = ms(clock);
    let clock = Instant::now();
    let cold = store
        .evaluate(
            &module,
            "set",
            &bindings(case, false),
            &json!({"n":1}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap();
    let first_eval_ms = ms(clock);
    assert_eq!(cold.record["result"], "ALLOW");
    records.push(cold.record);
    let observations = json!({"subject":{"case":case,"behavior":module.behavior_version(),"schema":core_api::schema(&module).hash,
        "origin":origin_history,"prepared":prepared,"profile":"0.8"},"records":records,"bundles":bundles,
        "commits":commits,"committed_results":committed,"head":store.backend().head().unwrap(),"versions":versions,
        "reads":[read.record.as_json()],"commands":page,"replay":{"data":data,"behavior":behavior,"references":references}});
    let clock = Instant::now();
    let encoded = observations.to_string();
    let serialization_ms = ms(clock);
    let observation_bytes = encoded.len();
    let clock = Instant::now();
    if let Some(path) = std::env::var_os("CORE031_OBSERVATION") {
        std::fs::write(path, encoded.as_bytes()).unwrap();
    }
    let artifact_write_ms = ms(clock);
    let process_hwm = std::fs::read_to_string("/proc/self/status")
        .ok()
        .and_then(|s| {
            s.lines()
                .find(|l| l.starts_with("VmHWM:"))
                .map(str::to_owned)
        });
    let result = json!({"case_id":case.case_id,"mode":if cfg!(feature="validation-work"){"diagnostic"}else{"production-like"},
        "execution_outcome":"ALLOW","prepared_history_position":prepared.position,"final_position":end.position,
        "final_members":actual_members,"changed_identities":if create{case.steps*case.batch}else{case.batch},
        "observation_bytes":observation_bytes,"process_hwm":process_hwm,
        "work":{"cycle":cycle_work,"read":read_work,"page":page_work},
        "metrics":{"setup_ms":setup_ms,"history_ms":history_ms,"evaluate_ms":evaluate_ms,"commit_ms":commit_ms,
            "drain_ms":drain_ms,"cycle_ms":cycle_ms,"read_ms":read_ms,"page_ms":page_ms,
            "data_replay_ms":data_ms,"behavior_replay_ms":behavior_ms,"reference_replay_ms":references_ms,
            "reopen_ms":reopen_ms,"first_eval_ms":first_eval_ms,"audit_serialization_ms":serialization_ms,"artifact_write_ms":artifact_write_ms}});
    (result, observations)
}
