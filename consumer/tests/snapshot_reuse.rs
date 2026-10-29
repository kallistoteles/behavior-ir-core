#![allow(clippy::unwrap_used)]
//! Snapshot reuse remains transparent through the supported consumer facade.
use behavior_engine::read::ReadSource;
use behavior_engine::store::documents::{EvidencePolicy, SeedEntity};
use behavior_engine::store::store::genesis_for;
use behavior_engine::store::{InMemoryBackend, Store};
use serde_json::json;
use std::collections::BTreeMap;

#[test]
fn local_commit_and_cold_reopen_produce_identical_replayable_reads() {
    let m =
        behavior_engine::admit(include_str!("../../tests/fixtures/soundness/module.json")).unwrap();
    let seed = vec![SeedEntity {
        entity: "E".into(),
        value: json!({"id":"only","x":2,"y":2}),
    }];
    let mut s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(&m, EvidencePolicy::none(), seed),
    )
    .unwrap();
    let bindings = BTreeMap::from([("e".into(), "only".into())]);
    let e = s
        .evaluate(
            &m,
            "set",
            &bindings,
            &json!({}),
            &json!({}),
            "2026-10-09T10:00:00Z",
            None,
        )
        .unwrap();
    let b = e.bundle.unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    let run = |s: &Store<InMemoryBackend>| {
        s.read(
            &m,
            &ReadSource::Declared("ratio".into()),
            &bindings,
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record
    };
    let warm = run(&s);
    let s = Store::open(s.into_backend()).unwrap();
    assert_eq!(warm, run(&s));
    assert!(behavior_engine::read::replay_read(&m, &warm.to_json_string()).matches);
}
