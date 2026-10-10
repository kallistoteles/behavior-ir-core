#![allow(clippy::unwrap_used)]
//! Lifecycle derivative behavior through only the supported facade.
use behavior_engine::store::{
    InMemoryBackend, Store,
    documents::{EvidencePolicy, SeedEntity},
    store::genesis_for,
};
use behavior_engine::{admit, read::ReadSource};
use serde_json::{Value, json};
use std::collections::BTreeMap;
#[test]
fn creation_then_read_reopen_and_replay_agree() {
    let mut w: Value =
        serde_json::from_str(include_str!("../../tests/fixtures/soundness/module.json")).unwrap();
    let l = json!({"file":"consumer.beh","line":1});
    let lit = |n| json!({"op":"lit","type":{"t":"int"},"value":n,"loc":l});
    w["actions"].as_array_mut().unwrap().push(json!({"name":"create","loc":l,"params":[{"name":"id","role":"input","type":{"t":"id","entity":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"create":"E","id":{"op":"param","param":"id","loc":l},"fields":{"x":lit(1),"y":lit(2)},"loc":l}]}));
    let m = admit(&w.to_string()).unwrap();
    let mut s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "E".into(),
                value: json!({"id":"seed","x":1,"y":2}),
            }],
        ),
    )
    .unwrap();
    let e = s
        .evaluate(
            &m,
            "create",
            &BTreeMap::new(),
            &json!({"id":"new"}),
            &json!({}),
            "2026-10-10T10:00:00Z",
            None,
        )
        .unwrap();
    let b = e.bundle.unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    let run = |s: &Store<InMemoryBackend>| {
        s.read(
            &m,
            &ReadSource::Declared("ratio".into()),
            &BTreeMap::from([("e".into(), "new".into())]),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record
    };
    let warm = run(&s);
    let reopened = Store::open(s.into_backend()).unwrap();
    assert_eq!(warm, run(&reopened));
    assert!(behavior_engine::read::replay_read(&m, &warm.to_json_string()).matches);
}

#[test]
fn update_noop_and_reconstruction_preserve_canonical_replay() {
    let wire = std::fs::read_to_string(
        std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../tests/fixtures/soundness/module.json"),
    )
    .unwrap();
    let mut w: Value = serde_json::from_str(&wire).unwrap();
    w["actions"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"n","role":"input","type":{"t":"int"}}));
    w["actions"][0]["effects"][0]["value"] =
        json!({"op":"param","param":"n","loc":{"file":"consumer.beh","line":1}});
    let m = behavior_engine::admit(&w.to_string()).unwrap();
    let mut s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "E".into(),
                value: json!({"id":"e","x":1,"y":2}),
            }],
        ),
    )
    .unwrap();
    let start = s.current().unwrap();
    let binding = BTreeMap::from([("e".into(), "e".into())]);
    for n in [3, 3, 4] {
        let b = s
            .evaluate(
                &m,
                "set",
                &binding,
                &json!({"n":n}),
                &json!({}),
                "2026-09-27T12:00:00Z",
                None,
            )
            .unwrap()
            .bundle
            .unwrap();
        s.commit(&m, &b.evaluated_state, &b).unwrap();
    }
    let end = s.current().unwrap();
    assert_eq!(end.position, 3);
    let modules = BTreeMap::from([(m.behavior_version(), m.clone())]);
    assert!(behavior_engine::store::replay::replay_data(&s, &start, &end).ok);
    assert!(
        behavior_engine::store::replay::replay_behavior_with(
            &s,
            &modules,
            &BTreeMap::new(),
            &start,
            &end
        )
        .ok
    );
    let run = |s: &Store<InMemoryBackend>| {
        s.read(
            &m,
            &ReadSource::Declared("ratio".into()),
            &binding,
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record
    };
    let warm = run(&s);
    let reopened = Store::open(s.into_backend()).unwrap();
    assert_eq!(warm, run(&reopened));
}
