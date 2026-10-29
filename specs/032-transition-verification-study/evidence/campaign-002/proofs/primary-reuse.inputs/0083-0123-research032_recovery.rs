//! Test-only host fixture using the public facade and existing durable host backend.
#![allow(clippy::unwrap_used, dead_code)]
#[path = "durable_backend.rs"]
mod host;
#[path = "commands.rs"]
mod model;
use behavior_engine as core;
use core::store::commands::CommandStreamRequest;
use core::store::documents::{CommitBundle, HistoryRef};
use core::store::{Backend, Store};
use serde_json::{Value, json};
use std::{collections::BTreeMap, path::Path, time::Instant};
const NOW: &str = "2026-10-28T00:00:00Z";
fn module() -> core::semantic::Module {
    let mut wire = model::command_only_module(true);
    let emission = wire["actions"][0]["command_effects"][0].clone();
    wire["actions"][0]["command_effects"] = json!([emission.clone(), emission]);
    core::admit(&wire.to_string()).unwrap()
}
fn candidate(
    store: &Store<host::DurableBackend>,
    module: &core::semantic::Module,
    recipient: &str,
) -> CommitBundle {
    store
        .evaluate(
            module,
            "receipt",
            &BTreeMap::new(),
            &json!({"recipient":recipient}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap()
        .bundle
        .unwrap()
}
fn page(store: &Store<host::DurableBackend>, after: &HistoryRef, through: &HistoryRef) -> Value {
    let request=CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":after,"through":through,"max_records":1}).to_string()).unwrap();
    serde_json::to_value(store.commands_since(&request).unwrap()).unwrap()
}
pub fn worker(root: &Path) {
    let module = module();
    let mut store = Store::open(host::DurableBackend::open(root).unwrap()).unwrap();
    let bundle = candidate(&store, &module, "same");
    store.backend_mut().fault = host::Fault::CrashAfterPersistence;
    store
        .commit(&module, &bundle.evaluated_state, &bundle)
        .unwrap();
    panic!("lost-ack boundary not reached");
}
pub fn trial(repetition: usize) -> Value {
    let clock = Instant::now();
    let root = std::env::temp_dir().join(format!(
        "core032-recovery-{}-{repetition}-{}",
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
    let module = module();
    let policy=core::verify::governance::EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let store = Store::create(
        host::DurableBackend::open(&root).unwrap(),
        &module,
        core::store::store::genesis_v2_for(&module, policy, vec![]).unwrap(),
    )
    .unwrap();
    let anchor = store.current_history().unwrap();
    let stale = candidate(&store, &module, "other");
    drop(store);
    let child_clock = Instant::now();
    let child = std::process::Command::new(std::env::current_exe().unwrap())
        .args(["--exact", "research032_recovery_worker", "--nocapture"])
        .env("CORE032_RECOVERY_ROOT", &root)
        .output()
        .unwrap();
    assert_eq!(
        child.status.code(),
        Some(86),
        "{}",
        String::from_utf8_lossy(&child.stderr)
    );
    let child_seconds = child_clock.elapsed().as_secs_f64();
    let reopen = Instant::now();
    let mut store = Store::open(host::DurableBackend::open(&root).unwrap()).unwrap();
    let reopen_seconds = reopen.elapsed().as_secs_f64();
    let head = store.current_history().unwrap();
    assert_eq!(head.position, 1);
    assert_eq!(head.state, anchor.state);
    assert_ne!(head.record, anchor.record);
    assert_eq!(
        store
            .commit(&module, &stale.evaluated_state, &stale)
            .unwrap_err()
            .code(),
        "STATE_CONFLICT"
    );
    let original = store.backend().record(1).unwrap().unwrap().bundle.unwrap();
    let before = page(&store, &anchor, &head);
    let retried = store
        .commit(&module, &original.evaluated_state, &original)
        .unwrap();
    let after = page(&store, &anchor, &head);
    assert_eq!(before, after);
    assert_eq!(store.current_history().unwrap(), head);
    let count = before["items"].as_array().unwrap().len();
    assert_eq!(count, 2);
    assert_ne!(
        before["items"][0]["command_occurrence_id"],
        before["items"][1]["command_occurrence_id"]
    );
    let modules = BTreeMap::from([(module.behavior_version(), module)]);
    let start = core::store::documents::StateRef {
        position: anchor.position,
        state: anchor.state.clone(),
    };
    let end = store.current().unwrap();
    let replay = Instant::now();
    let data = core::store::replay::replay_data(&store, &start, &end);
    let behavior =
        core::store::replay::replay_behavior_with(&store, &modules, &BTreeMap::new(), &start, &end);
    let replay_seconds = replay.elapsed().as_secs_f64();
    assert!(data.ok && behavior.ok);
    // The only declared proved/bridged prefix is the genesis anchor. A native
    // commit beyond it never inherits a certificate for the suffix.
    let native_head_certified = head == anchor;
    assert!(!native_head_certified);
    let path = root.join("store.json");
    let mut broken: Value = serde_json::from_slice(&std::fs::read(&path).unwrap()).unwrap();
    broken["records"].as_array_mut().unwrap().clear();
    std::fs::write(path, serde_json::to_vec(&broken).unwrap()).unwrap();
    let request=CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":anchor,"through":head,"max_records":1}).to_string()).unwrap();
    let missing_support_rejected = store.commands_since(&request).is_err();
    assert!(missing_support_rejected);
    json!({"format":"core032.public-recovery.v1","repetition":repetition,"recovered_position":head.position,"retry_already":retried.already,"command_occurrences":count,"replay_ok":data.ok&&behavior.ok,"native_head_certified":native_head_certified,"missing_support_rejected":missing_support_rejected,"anchor":anchor,"native_head":head,"commands":before,"metrics":{"whole_seconds":clock.elapsed().as_secs_f64(),"worker_seconds":child_seconds,"reopen_seconds":reopen_seconds,"replay_seconds":replay_seconds},"scope":"cooperating local-filesystem process-exit; not power loss, authorization or physical command dispatch"})
}
