#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "../../behavior-core/tests/support/read_soundness.rs"]
mod model;
use behavior_core::read::{ReadSource, replay_read};
use behavior_store::documents::{EvidencePolicy, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use serde_json::json;
use std::collections::BTreeMap;

#[test]
fn a_valid_store_does_not_make_invalid_read_input_valid() {
    let m = behavior_core::admit(&model::module(Some("input"), true).to_string()).unwrap();
    let s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(&m, EvidencePolicy::none(), vec![]),
    )
    .unwrap();
    let head = s.backend().head().unwrap();
    let x = s
        .read(
            &m,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::new(),
            &json!({"c":model::value(0)}),
            &json!({}),
            None,
        )
        .unwrap();
    assert_eq!(x.record.result(), "INVALID_INPUT");
    assert!(replay_read(&m, &x.record.to_json_string()).matches);
    assert_eq!(s.backend().head().unwrap(), head);
}

#[test]
fn store_query_failures_have_self_contained_evidence_and_do_not_mutate_history() {
    let m = behavior_core::admit(&model::module(None, false).to_string()).unwrap();
    let s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "Culture".into(),
                value: model::value(0),
            }],
        ),
    )
    .unwrap();
    let head = s.backend().head().unwrap();
    let x = s
        .read(
            &m,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::new(),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap();
    assert_eq!(x.record.result(), "EVALUATION_ERROR");
    let r = replay_read(&m, &x.record.to_json_string());
    assert!(r.matches, "{:?}", r.diff);
    assert_eq!(s.backend().head().unwrap(), head);
}

#[test]
fn store_read_only_query_success_replays_without_accessing_the_store() {
    let mut w = model::module(None, false);
    w["reads"][0]["body"] = json!({"value":model::op("count",vec![model::select()])});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "Culture".into(),
                value: model::value(1),
            }],
        ),
    )
    .unwrap();
    let head = s.backend().head().unwrap();
    let record = s
        .read(
            &m,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::new(),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record;
    assert_eq!(record.result(), "VALUE");
    assert_eq!(record.as_json()["value"], 1);
    assert_eq!(s.backend().head().unwrap(), head);
    drop(s);
    let replay = replay_read(&m, &record.to_json_string());
    assert!(replay.matches, "{:?}", replay.diff);
}
