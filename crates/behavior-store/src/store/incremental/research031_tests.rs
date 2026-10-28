//! Full-observation controls for the research harness; not a public runtime interface.
#![allow(clippy::unwrap_used)]
use super::*;
use crate as store_api;
use behavior_core as core_api;
use serde_json::{Value as Json, json};
#[path = "../../../tests/support/execution_evidence_workload.rs"]
mod execution_workload;

fn observations(reference: bool) -> Json {
    observations_and_metrics(reference).0
}

fn observations_and_metrics(reference: bool) -> (Json, Json) {
    with_reference(reference, || {
        let clock = std::time::Instant::now();
        let (module, mut store) = global_fixtures::store(global_fixtures::Global::AtMost(1000), 2);
        let start = store.current().unwrap();
        let subject = json!({"behavior":module.behavior_version(), "schema":behavior_core::schema(&module).hash,
            "history":store.current_history().unwrap(), "profile":"0.8"});
        let mut records = Vec::new();
        let mut bundles = Vec::new();
        for index in 0..2 {
            let evaluated = store
                .evaluate(
                    &module,
                    "create",
                    &BTreeMap::new(),
                    &json!({"id":format!("new{index}")}),
                    &json!({}),
                    "2026-10-28T00:00:00Z",
                    None,
                )
                .unwrap();
            assert_eq!(evaluated.record["result"], "ALLOW");
            let bundle = evaluated.bundle.unwrap();
            records.push(evaluated.record);
            bundles.push(serde_json::to_value(&bundle).unwrap());
            store
                .commit(&module, &bundle.evaluated_state, &bundle)
                .unwrap();
        }
        let drain_clock = std::time::Instant::now();
        let drain = store
            .evaluate(
                &module,
                "set",
                &BTreeMap::from([("e".into(), "e0".into())]),
                &json!({"n":1}),
                &json!({}),
                "2026-10-28T00:00:00Z",
                None,
            )
            .unwrap();
        let drain_ms = drain_clock.elapsed().as_secs_f64() * 1000.;
        records.push(drain.record);
        let cycle_ms = clock.elapsed().as_secs_f64() * 1000.;
        let end = store.current().unwrap();
        let commits: Vec<_> = (1..=end.position)
            .map(|i| store.backend().record(i).unwrap().unwrap())
            .collect();
        let versions: Vec<_> = ["E", "Other"]
            .into_iter()
            .flat_map(|name| store.backend().keys_at(name, end.position).unwrap())
            .map(|key| {
                store
                    .backend()
                    .version_at(&key, end.position)
                    .unwrap()
                    .unwrap()
            })
            .collect();
        let read = store
            .read(
                &module,
                &behavior_core::read::ReadSource::Declared("ratio".into()),
                &BTreeMap::from([("e".into(), "e0".into())]),
                &json!({}),
                &json!({}),
                None,
            )
            .unwrap();
        let page_request = crate::commands::CommandStreamRequest::from_json(
            &json!({
            "format":"behavior.command_stream_request.v1", "after":store.history_at(0).unwrap(),
            "through":store.current_history().unwrap(), "max_records":1})
            .to_string(),
        )
        .unwrap();
        let page = store.commands_since(&page_request).unwrap();
        let modules = BTreeMap::from([(module.behavior_version(), module.clone())]);
        let data = crate::replay::replay_data(&store, &start, &end);
        let behavior = crate::replay::replay_behavior(&store, &modules, &start, &end);
        let references = crate::replay::replay_index(&store, &module, &start, &end);
        assert!(data.ok && behavior.ok && references.ok);
        (
            json!({"subject":subject,"records":records,"bundles":bundles,"commits":commits,
            "head":store.backend().head().unwrap(),"versions":versions,"reads":[read.record.as_json()],
            "commands":page,"replay":{"data":data,"behavior":behavior,"references":references}}),
            json!({"cycle_ms":cycle_ms,"drain_ms":drain_ms}),
        )
    })
}

#[test]
fn research031_full_observations_cover_every_family() {
    let value = observations(false);
    for family in [
        "subject", "records", "bundles", "commits", "head", "versions", "reads", "commands",
        "replay",
    ] {
        assert!(
            value.get(family).is_some(),
            "missing full observation family: {family}"
        );
    }
}

#[test]
fn research031_reference_is_complete_and_matches_normal() {
    let normal = observations(false);
    let reference = observations(true);
    assert!(
        reference.get("versions").is_some(),
        "digest-only reference is insufficient"
    );
    assert_eq!(normal, reference);
}

#[test]
#[ignore = "explicit isolated full-reference artifact collector; not a production interface"]
fn research031_reference_probe() {
    let argv: Vec<String> =
        serde_json::from_str(&std::env::var("CORE031_CASE_ARGV").unwrap()).unwrap();
    if argv != vec!["foundation"] {
        assert_eq!(argv.len(), 1);
        let case: execution_workload::fixture::Case = serde_json::from_str(&argv[0]).unwrap();
        let (result, _) = with_reference(true, || execution_workload::run(&case));
        println!("CORE031_RESULT {result}");
        return;
    }
    let (observed, metrics) = observations_and_metrics(true);
    std::fs::write(
        std::env::var("CORE031_OBSERVATION").unwrap(),
        observed.to_string(),
    )
    .unwrap();
    let result = json!({"metrics":metrics,"mode":if cfg!(feature="validation-work"){"diagnostic"}else{"production-like"},
        "execution_outcome":"ALLOW", "scope":"foundation fixture; not full 031 campaign"});
    println!("CORE031_RESULT {result}");
}

#[cfg(feature = "validation-work")]
#[test]
fn research031_known_work_counter_calibration() {
    behavior_core::eval::work::reset();
    let data = json!({"a":1});
    crate::documents::hash_of("core031.calibration", &data).unwrap();
    let _: Json = crate::documents::decode("calibration", &data).unwrap();
    assert!(behavior_core::record::DecisionRecord::from_json("not-json").is_err());
    let counters = serde_json::to_value(behavior_core::eval::work::read()).unwrap();
    assert_eq!(counters["document_hash_calls"], 1);
    assert_eq!(counters["document_decode_calls"], 1);
    assert_eq!(
        counters["document_decode_json_bytes"],
        data.to_string().len()
    );
    assert_eq!(counters["record_parse_calls"], 1);
    assert_eq!(counters["record_parse_bytes"], "not-json".len());
    assert_eq!(counters["hash_document_json_bytes"], data.to_string().len());
    let mut wrong = counters.clone();
    wrong["document_hash_calls"] = json!(2);
    assert_ne!(
        wrong, counters,
        "an offset counter sample must not pass exact calibration"
    );
}

#[test]
fn research031_scaling_and_command_reference_have_identical_complete_bytes() {
    use execution_workload::fixture::Case;
    for case in [
        Case {
            n: 3,
            steps: 2,
            history: 2,
            ..Case::default()
        },
        Case {
            n: 3,
            steps: 2,
            commands: 2,
            relations: true,
            global: "filtered".into(),
            ..Case::default()
        },
    ] {
        let (_, normal) = execution_workload::run(&case);
        let (_, reference) = with_reference(true, || execution_workload::run(&case));
        assert_eq!(normal.to_string(), reference.to_string());
    }
}
