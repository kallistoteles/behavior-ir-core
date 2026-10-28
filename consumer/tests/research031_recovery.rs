#![allow(clippy::unwrap_used)]
use serde_json::{Value as Json, json};

#[path = "../../crates/behavior-core/tests/support/commands.rs"]
mod commands;
#[path = "support/durable_backend.rs"]
mod host;
use behavior_engine as core_api;
use behavior_engine::store as store_api;
use std::{collections::BTreeMap, time::Instant};
use store_api::{Backend, Store};
const NOW: &str = "2026-10-28T00:00:00Z";
fn milliseconds(clock: Instant) -> f64 {
    clock.elapsed().as_secs_f64() * 1000.
}
fn request(store: &Store<host::DurableBackend>) -> store_api::commands::CommandStreamRequest {
    store_api::commands::CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1",
        "after":store.history_at(0).unwrap(),"through":store.current_history().unwrap(),"max_records":1}).to_string()).unwrap()
}
#[test]
fn persisted_ack_worker() {
    let Some(root) = std::env::var_os("CORE031_LOST_ACK_ROOT") else {
        return;
    };
    let module = core_api::admit(&commands::module().to_string()).unwrap();
    let mut store =
        Store::open(host::DurableBackend::open(std::path::Path::new(&root)).unwrap()).unwrap();
    let b = store
        .evaluate(
            &module,
            "submit",
            &BTreeMap::from([("order".into(), "order-1".into())]),
            &json!({}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    store.backend_mut().fault = host::Fault::CrashAfterPersistence;
    store.commit(&module, &b.evaluated_state, &b).unwrap();
    panic!("durable lost-ack boundary was not reached");
}
fn recovery_trial(repetition: usize) -> Json {
    let root = std::env::temp_dir().join(format!(
        "core031-recovery-{}-{repetition}-{}",
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
    let module = core_api::admit(&commands::module().to_string()).unwrap();
    let policy=core_api::verify::governance::EvidencePolicyV2::from_json(
        r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let clock = Instant::now();
    let seed = vec![store_api::documents::SeedEntity {
        entity: "Order".into(),
        value: commands::value(2, true),
    }];
    let store = Store::create(
        host::DurableBackend::open(&root).unwrap(),
        &module,
        store_api::store::genesis_v2_for(&module, policy, seed).unwrap(),
    )
    .unwrap();
    let start = store.current().unwrap();
    drop(store);
    let setup_ms = milliseconds(clock);
    let clock = Instant::now();
    let child = std::process::Command::new(std::env::current_exe().unwrap())
        .args(["--exact", "persisted_ack_worker", "--nocapture"])
        .env("CORE031_LOST_ACK_ROOT", &root)
        .output()
        .unwrap();
    let worker_wall_ms = milliseconds(clock);
    assert_eq!(
        child.status.code(),
        Some(86),
        "{}",
        String::from_utf8_lossy(&child.stderr)
    );
    let clock = Instant::now();
    let mut store = Store::open(host::DurableBackend::open(&root).unwrap()).unwrap();
    let reopen_ms = milliseconds(clock);
    let history = store.current_history().unwrap();
    assert_eq!(history.position, 1);
    let original = store.backend().record(1).unwrap().unwrap().bundle.unwrap();
    assert_eq!(original.commit_time, NOW);
    let before = store.commands_since(&request(&store)).unwrap();
    let clock = Instant::now();
    let retried = store
        .commit(&module, &original.evaluated_state, &original)
        .unwrap();
    let retry_ms = milliseconds(clock);
    assert_eq!(store.current_history().unwrap(), history);
    let after = store.commands_since(&request(&store)).unwrap();
    assert_eq!(before, after);
    let mut wrong = original.clone();
    wrong.commit_time = "2026-10-29T00:00:00Z".into();
    assert!(
        store
            .commit(&module, &wrong.evaluated_state, &wrong)
            .unwrap()
            .already,
        "retry wall time does not replace the original committed event time"
    );
    assert_eq!(
        store
            .backend()
            .record(1)
            .unwrap()
            .unwrap()
            .bundle
            .unwrap()
            .commit_time,
        NOW
    );
    wrong.authorization_context = Some(json!({"changed":true}));
    assert!(
        store
            .commit(&module, &wrong.evaluated_state, &wrong)
            .is_err(),
        "different authorization context must not inherit original-event authority"
    );
    let clock = Instant::now();
    let fresh = store
        .evaluate(
            &module,
            "submit",
            &BTreeMap::from([("order".into(), "order-1".into())]),
            &json!({}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap();
    let reevaluate_ms = milliseconds(clock);
    assert_eq!(fresh.record["result"], "ALLOW");
    let end = store.current().unwrap();
    let modules = BTreeMap::from([(module.behavior_version(), module.clone())]);
    let clock = Instant::now();
    let data = store_api::replay::replay_data(&store, &start, &end);
    let behavior =
        store_api::replay::replay_behavior_with(&store, &modules, &BTreeMap::new(), &start, &end);
    let replay_ms = milliseconds(clock);
    json!({"repetition":repetition,"recovered_position":history.position,"retry_already":retried.already,
        "commands_before_retry":before,"commands_after_retry":after,"command_count":before.items().len(),
        "replay_ok":data.ok&&behavior.ok,"reference_replay":{"status":"not-applicable-to-this-fixture","reason":"No Ref fields; dedicated reference replay is not exposed by the pinned public facade. Internal Core harness measures it separately."},"head":history,"original_bundle":original,
        "metrics":{"setup_ms":setup_ms,"worker_process_wall_ms":worker_wall_ms,"reopen_ms":reopen_ms,
            "recover_retry_ms":retry_ms,"reevaluate_ms":reevaluate_ms,"replay_ms":replay_ms},
        "scope":"cooperating local-filesystem process-exit fixture; not power-loss/device or general fsync performance"})
}

#[test]
fn persisted_before_acknowledgement_is_recovered_with_exact_commands() {
    for repetition in 0..3 {
        let observation = recovery_trial(repetition);
        assert_eq!(
            observation["recovered_position"], 1,
            "persisted child must be recovered, not guessed"
        );
        assert_eq!(observation["retry_already"], true);
        assert_eq!(
            observation["commands_before_retry"],
            observation["commands_after_retry"]
        );
        assert_eq!(observation["command_count"], 1);
        assert_eq!(observation["replay_ok"], true);
        println!("CORE031_RECOVERY {observation}");
    }
}
