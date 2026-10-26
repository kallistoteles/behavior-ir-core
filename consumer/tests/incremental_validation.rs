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

#[path = "support/durable_backend.rs"]
mod global_host;
fn bounded_module() -> behavior_engine::semantic::Module {
    let mut w: Value =
        serde_json::from_str(include_str!("../../tests/fixtures/soundness/module.json")).unwrap();
    let l = json!({"file":"consumer-global.beh","line":1});
    w["invariants"] = json!([{"name":"population","loc":l,"body":{"op":"le","loc":l,"args":[{"op":"count","loc":l,"args":[{"op":"select","entity":"E","loc":l}]},{"op":"lit","type":{"t":"int"},"value":3,"loc":l}]}}]);
    w["actions"].as_array_mut().unwrap().push(json!({"name":"create","loc":l,"params":[{"name":"id","role":"input","type":{"t":"id","entity":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"create":"E","id":{"op":"param","param":"id","loc":l},"fields":{"x":{"op":"lit","type":{"t":"int"},"value":1,"loc":l},"y":{"op":"lit","type":{"t":"int"},"value":2,"loc":l}},"loc":l}]}));
    admit(&w.to_string()).unwrap()
}
#[test]
fn global_creation_lost_ack_worker() {
    let Some(root) = std::env::var_os("CORE029_LOST_ACK_ROOT") else {
        return;
    };
    let root = std::path::Path::new(&root);
    let m = bounded_module();
    let mut s = Store::open(global_host::DurableBackend::open(root).unwrap()).unwrap();
    let b = s
        .evaluate(
            &m,
            "create",
            &BTreeMap::new(),
            &json!({"id":"lost"}),
            &json!({}),
            "2026-10-25T12:00:00Z",
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    std::fs::write(root.join("candidate.json"), serde_json::to_vec(&b).unwrap()).unwrap();
    s.backend_mut().fault = global_host::Fault::CrashAfterPersistence;
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    panic!("crash boundary was not reached");
}
#[test]
fn global_creation_durable_lost_ack_retry_and_replay() {
    use behavior_engine::store::documents::CommitBundle;
    let root = std::env::temp_dir().join(format!(
        "core029-consumer-{}-{}",
        std::process::id(),
        std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .unwrap()
            .as_nanos()
    ));
    std::fs::create_dir(&root).unwrap();
    struct Cleanup(std::path::PathBuf);
    impl Drop for Cleanup {
        fn drop(&mut self) {
            std::fs::remove_dir_all(&self.0).unwrap();
        }
    }
    let _cleanup = Cleanup(root.clone());
    std::fs::File::open(root.parent().unwrap())
        .unwrap()
        .sync_all()
        .unwrap();
    std::fs::File::open(&root).unwrap().sync_all().unwrap();
    let m = bounded_module();
    let s = Store::create(
        global_host::DurableBackend::open(&root).unwrap(),
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
    let start = s.current().unwrap();
    drop(s);
    let child = std::process::Command::new(std::env::current_exe().unwrap())
        .args(["--exact", "global_creation_lost_ack_worker", "--nocapture"])
        .env("CORE029_LOST_ACK_ROOT", &root)
        .output()
        .unwrap();
    assert_eq!(
        child.status.code(),
        Some(86),
        "{}",
        String::from_utf8_lossy(&child.stderr)
    );
    let mut s = Store::open(global_host::DurableBackend::open(&root).unwrap()).unwrap();
    let b: CommitBundle =
        serde_json::from_slice(&std::fs::read(root.join("candidate.json")).unwrap()).unwrap();
    let head = s.current_history().unwrap();
    assert_eq!(head.position, 1);
    assert!(s.commit(&m, &b.evaluated_state, &b).unwrap().already);
    assert_eq!(s.current_history().unwrap(), head);
    let allowed = s
        .evaluate(
            &m,
            "create",
            &BTreeMap::new(),
            &json!({"id":"third"}),
            &json!({}),
            "2026-10-25T12:00:00Z",
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    s.commit(&m, &allowed.evaluated_state, &allowed).unwrap();
    let denied = s
        .evaluate(
            &m,
            "create",
            &BTreeMap::new(),
            &json!({"id":"fourth"}),
            &json!({}),
            "2026-10-25T12:00:00Z",
            None,
        )
        .unwrap();
    assert_eq!(denied.record["result"], "DENY");
    assert!(denied.bundle.is_none());
    let end = s.current().unwrap();
    let modules = BTreeMap::from([(m.behavior_version().to_string(), m)]);
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
}
