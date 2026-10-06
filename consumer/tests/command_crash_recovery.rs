#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Separate OS processes prove the host's atomic durable event and lost-ack recovery.
#[path = "support/durable_backend.rs"]
mod host;
#[path = "../../crates/behavior-core/tests/support/commands.rs"]
mod model;
use behavior_engine::store::documents::{CommitBundle, EntityKey, SeedEntity};
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{Backend, Store};
use behavior_engine::verify::governance::EvidencePolicyV2;
use serde_json::{Value, json};
use std::path::{Path, PathBuf};
use std::process::{Command, Output};
use std::sync::atomic::{AtomicUsize, Ordering};
static NEXT: AtomicUsize = AtomicUsize::new(0);
const NOW: &str = "2026-10-05T12:00:00Z";
struct Scratch(PathBuf);
impl Scratch {
    fn new() -> Self {
        let p = std::env::temp_dir().join(format!(
            "013-command-process-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        std::fs::create_dir(&p).unwrap();
        Self(p)
    }
}
impl Drop for Scratch {
    fn drop(&mut self) {
        std::fs::remove_dir_all(&self.0).unwrap();
    }
}
fn key() -> EntityKey {
    EntityKey {
        entity: "Order".into(),
        id: "order-1".into(),
    }
}
fn policy() -> EvidencePolicyV2 {
    EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap()
}
fn worker(root: &Path, mode: &str) -> Output {
    Command::new(std::env::current_exe().unwrap())
        .args(["--exact", "process_worker", "--nocapture"])
        .env("BEHAVIOR_TEST_DURABLE_ROOT", root)
        .env("BEHAVIOR_TEST_DURABLE_MODE", mode)
        .output()
        .unwrap()
}
fn result(o: &Output) -> Value {
    assert!(
        o.status.success(),
        "worker failed: {} {}",
        String::from_utf8_lossy(&o.stdout),
        String::from_utf8_lossy(&o.stderr)
    );
    String::from_utf8_lossy(&o.stdout)
        .lines()
        .find_map(|s| s.strip_prefix("DURABLE_RESULT="))
        .map(|s| serde_json::from_str(s).unwrap())
        .unwrap()
}
#[test]
fn two_process_recovery_finds_one_durable_mixed_event_after_lost_acknowledgment() {
    let s = Scratch::new();
    let prepared = result(&worker(&s.0, "prepare"));
    assert_eq!(prepared["position"], 0);
    assert_eq!(prepared["event"], Value::Null);
    let crashed = worker(&s.0, "commit-crash");
    assert_eq!(
        crashed.status.code(),
        Some(86),
        "{} {}",
        String::from_utf8_lossy(&crashed.stdout),
        String::from_utf8_lossy(&crashed.stderr)
    );
    let recovered = result(&worker(&s.0, "recover"));
    assert_eq!(recovered["position"], 1);
    assert_eq!(recovered["submitted"], true);
    assert_eq!(recovered["commands"].as_array().unwrap().len(), 1);
    assert_eq!(recovered["already"], true);
    assert_eq!(recovered["extra_event"], Value::Null);
    assert_eq!(recovered["data_replay"], true);
    let again = result(&worker(&s.0, "recover"));
    assert_eq!(recovered, again);
}
#[test]
fn separate_process_prewrite_failure_exposes_neither_state_nor_request() {
    let s = Scratch::new();
    result(&worker(&s.0, "prepare"));
    let refused = result(&worker(&s.0, "commit-abort"));
    assert_eq!(refused["position"], 0);
    assert_eq!(refused["submitted"], false);
    assert_eq!(refused["event"], Value::Null);
    let next = result(&worker(&s.0, "inspect"));
    assert_eq!(next["position"], 0);
    assert_eq!(next["submitted"], false);
    assert_eq!(next["event"], Value::Null);
}
#[test]
fn host_storage_is_real_persistence_even_without_command_semantics() {
    let s = Scratch::new();
    let m=behavior_engine::admit(r#"{"ir_version":"0.4","enums":[],"nominals":[],"entities":[],"derived":[],"invariants":[],"constraints":[],"actions":[]}"#).unwrap();
    let initial = {
        let backend = host::DurableBackend::open(&s.0).unwrap();
        let store =
            Store::create(backend, &m, genesis_v2_for(&m, policy(), vec![]).unwrap()).unwrap();
        store.current_history().unwrap()
    };
    let reopened = Store::open(host::DurableBackend::open(&s.0).unwrap()).unwrap();
    assert_eq!(reopened.current_history().unwrap(), initial);
}
#[test]
fn process_worker() {
    let Some(root) = std::env::var_os("BEHAVIOR_TEST_DURABLE_ROOT") else {
        return;
    };
    let root = PathBuf::from(root);
    let mode = std::env::var("BEHAVIOR_TEST_DURABLE_MODE").unwrap();
    let m = behavior_engine::admit(&model::module().to_string()).unwrap();
    if mode == "prepare" {
        let backend = host::DurableBackend::open(&root).unwrap();
        let s = Store::create(
            backend,
            &m,
            genesis_v2_for(
                &m,
                policy(),
                vec![SeedEntity {
                    entity: "Order".into(),
                    value: model::value(2, true),
                }],
            )
            .unwrap(),
        )
        .unwrap();
        let requested = behavior_engine::invocation::RequestedInvocation::decode(
            &model::invocation().to_string(),
        )
        .unwrap()
        .0
        .unwrap();
        let b = s
            .invoke(&m, &requested, NOW, None, None)
            .unwrap()
            .bundle
            .unwrap();
        std::fs::write(root.join("candidate.json"), serde_json::to_vec(&b).unwrap()).unwrap();
        println!(
            "DURABLE_RESULT={}",
            json!({"position":s.current().unwrap().position,"event":s.backend().record(1).unwrap()})
        );
        return;
    }
    let mut backend = host::DurableBackend::open(&root).unwrap();
    backend.fault = match mode.as_str() {
        "commit-crash" => host::Fault::CrashAfterPersistence,
        "commit-abort" => host::Fault::AbortBeforeWrite,
        _ => host::Fault::None,
    };
    let mut s = Store::open(backend).unwrap();
    if mode == "inspect" || mode == "commit-abort" {
        if mode == "commit-abort" {
            let b = CommitBundle::from_json(
                &std::fs::read_to_string(root.join("candidate.json")).unwrap(),
            )
            .unwrap();
            assert!(s.commit(&m, &b.evaluated_state, &b).is_err());
        }
        println!(
            "DURABLE_RESULT={}",
            json!({"position":s.current().unwrap().position,"submitted":s.backend().version_at(&key(),s.current().unwrap().position).unwrap().unwrap().value["submitted"],"event":s.backend().record(1).unwrap()})
        );
        return;
    }
    let b = CommitBundle::from_json(&std::fs::read_to_string(root.join("candidate.json")).unwrap())
        .unwrap();
    let committed = s.commit(&m, &b.evaluated_state, &b).unwrap();
    assert_ne!(
        mode, "commit-crash",
        "the durable fault failed to terminate before acknowledgment"
    );
    let event = s.backend().record(1).unwrap().unwrap();
    let end = s.current().unwrap();
    let start = b.evaluated_state.clone();
    let body = serde_json::to_value(event).unwrap();
    println!(
        "DURABLE_RESULT={}",
        json!({"position":end.position,"submitted":s.backend().version_at(&key(),end.position).unwrap().unwrap().value["submitted"],
        "commands":body["bundle"]["record"]["commands"]["intents"],"already":committed.already,"record_id":committed.record_id,
        "extra_event":s.backend().record(2).unwrap(),"data_replay":behavior_engine::store::replay::replay_data(&s,&start,&end).ok})
    );
}
