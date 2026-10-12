#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Real process interruption at named creation boundaries. These tests cover
//! the cooperating Linux filesystem host, not machine power loss or device honesty.
#[path = "support/durable_backend.rs"]
mod host;
use behavior_engine::semantic::Module;
use behavior_engine::store::documents::{
    EntityKey, EvidencePolicy, Genesis, RefChange, SeedEntity,
};
use behavior_engine::store::store::{genesis_for, genesis_v2_for};
use behavior_engine::store::{Backend, InMemoryBackend, Store};
use behavior_engine::verify::governance::EvidencePolicyV2;
use serde_json::{Value, json};
use std::collections::BTreeMap;
use std::path::{Path, PathBuf};
use std::process::{Child, Command, Output};
use std::sync::atomic::{AtomicUsize, Ordering};
use std::time::{Duration, Instant};
static NEXT: AtomicUsize = AtomicUsize::new(0);
const NOW: &str = "2026-10-12T12:00:00Z";
struct Scratch(PathBuf);
impl Scratch {
    fn new() -> Self {
        let path = std::env::temp_dir().join(format!(
            "019-creation-process-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        std::fs::create_dir(&path).unwrap();
        // Root existence is established separately from Store publication.
        std::fs::File::open(path.parent().unwrap())
            .unwrap()
            .sync_all()
            .unwrap();
        std::fs::File::open(&path).unwrap().sync_all().unwrap();
        Self(path)
    }
}
impl Drop for Scratch {
    fn drop(&mut self) {
        std::fs::remove_dir_all(&self.0).unwrap();
    }
}
fn module() -> Module {
    behavior_engine::admit(include_str!(
        "../../tests/fixtures/wire/valid/accounts.json"
    ))
    .unwrap()
}
fn key(entity: &str, id: &str) -> EntityKey {
    EntityKey {
        entity: entity.into(),
        id: id.into(),
    }
}
fn requested(m: &Module, profile: &str, empty: bool, foreign: bool) -> Genesis {
    let seeds = if empty {
        vec![]
    } else {
        vec![
            SeedEntity {
                entity: "Customer".into(),
                value: json!({"id":"c1","name":if foreign {"Foreign"} else {"Ada"}}),
            },
            SeedEntity {
                entity: "Customer".into(),
                value: json!({"id":"c2","name":"Bo"}),
            },
            SeedEntity {
                entity: "Account".into(),
                value: json!({"id":"a1","owner":"c1","balance":"0.00"}),
            },
            SeedEntity {
                entity: "AuditNote".into(),
                value: json!({"id":"n1","about":"c2","text":"note"}),
            },
        ]
    };
    match profile {
        "v1"=>genesis_for(m,EvidencePolicy::none(),seeds),
        "v2"=>genesis_v2_for(m,EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap(),seeds).unwrap(),
        _=>panic!("unrecognized profile {profile}"),
    }
}
fn command(root: &Path, mode: &str, profile: &str, empty: bool, foreign: bool) -> Command {
    let mut command = Command::new(std::env::current_exe().unwrap());
    command
        .args(["--exact", "process_worker", "--nocapture"])
        .env("BEHAVIOR_CREATION019_ROOT", root)
        .env("BEHAVIOR_CREATION019_MODE", mode)
        .env("BEHAVIOR_CREATION019_PROFILE", profile)
        .env(
            "BEHAVIOR_CREATION019_EMPTY",
            if empty { "true" } else { "false" },
        )
        .env(
            "BEHAVIOR_CREATION019_FOREIGN",
            if foreign { "true" } else { "false" },
        );
    command
}
fn worker(root: &Path, mode: &str, profile: &str, empty: bool, foreign: bool) -> Output {
    command(root, mode, profile, empty, foreign)
        .output()
        .unwrap()
}
fn result(output: &Output) -> Value {
    assert!(
        output.status.success(),
        "worker status {:?}: {} {}",
        output.status.code(),
        String::from_utf8_lossy(&output.stdout),
        String::from_utf8_lossy(&output.stderr)
    );
    String::from_utf8_lossy(&output.stdout)
        .lines()
        .find_map(|line| line.strip_prefix("RESULT019="))
        .map(|line| serde_json::from_str(line).unwrap())
        .expect("recognized worker must emit actual result")
}
fn activation(output: &Output, boundary: &str) {
    assert!(
        String::from_utf8_lossy(&output.stderr)
            .lines()
            .any(|line| line == format!("CREATION_BOUNDARY019={boundary}")),
        "requested fault did not execute: {boundary}; {}",
        String::from_utf8_lossy(&output.stderr)
    );
}

#[test]
fn every_registered_fault_is_observed_active_before_fault_tool_implementation() {
    let mut dormant = Vec::new();
    for boundary in [
        "before-staging-error",
        "after-temp-create",
        "after-partial-write",
        "after-complete-write",
        "after-file-sync",
        "rename-error",
        "after-rename",
        "directory-sync-error",
        "after-directory-sync",
        "recovery-read-error",
        "recovery-sync-error",
    ] {
        let scratch = Scratch::new();
        if boundary.starts_with("recovery-") {
            assert_eq!(
                result(&worker(&scratch.0, "create:none", "v2", false, false))["outcome"],
                "complete"
            );
        }
        let output = worker(
            &scratch.0,
            &format!("create:{boundary}"),
            "v2",
            false,
            false,
        );
        let marker = format!("CREATION_BOUNDARY019={boundary}");
        let active = String::from_utf8_lossy(&output.stderr)
            .lines()
            .any(|line| line == marker);
        let expected_crash = matches!(
            boundary,
            "after-temp-create"
                | "after-partial-write"
                | "after-complete-write"
                | "after-file-sync"
                | "after-rename"
                | "after-directory-sync"
        );
        let outcome_correct = if expected_crash {
            output.status.code() == Some(86)
        } else {
            output.status.success() && result(&output)["code"] == "BACKEND_ERROR"
        };
        println!(
            "ACTIVATION019 {boundary} marker={active} outcome={outcome_correct} status={:?}",
            output.status.code()
        );
        if !(active && outcome_correct) {
            dormant.push(boundary);
        }
    }
    assert!(
        dormant.is_empty(),
        "requested creation fault selections were dormant: {dormant:?}"
    );
}
fn staging(root: &Path) -> Vec<PathBuf> {
    std::fs::read_dir(root)
        .unwrap()
        .map(|e| e.unwrap().path())
        .filter(|p| {
            p.file_name()
                .unwrap()
                .to_string_lossy()
                .starts_with("snapshot-")
        })
        .collect()
}
fn assert_complete(root: &Path, profile: &str, empty: bool, position: u64) -> Value {
    let found = result(&worker(root, "inspect", profile, empty, false));
    assert_eq!(found["outcome"], "complete", "{found}");
    assert_eq!(found["history"]["position"], position);
    assert_eq!(found["original_count"], if empty { 0 } else { 4 });
    assert_eq!(found["original_ref_count"], if empty { 0 } else { 1 });
    found
}

#[test]
fn each_private_creation_crash_window_is_activated_and_staging_stays_unopenable() {
    for profile in ["v1", "v2"] {
        for empty in [true, false] {
            for boundary in [
                "after-temp-create",
                "after-partial-write",
                "after-complete-write",
                "after-file-sync",
            ] {
                let scratch = Scratch::new();
                let output = worker(
                    &scratch.0,
                    &format!("create:{boundary}"),
                    profile,
                    empty,
                    false,
                );
                activation(&output, boundary);
                assert_eq!(
                    output.status.code(),
                    Some(86),
                    "fault must terminate before acknowledged publication"
                );
                assert!(!scratch.0.join("store.json").exists());
                assert_eq!(staging(&scratch.0).len(), 1);
                let inspected = result(&worker(&scratch.0, "inspect", profile, empty, false));
                assert_eq!(inspected["outcome"], "absent");
                assert_eq!(inspected["open_code"], "BACKEND_ERROR");
                assert_eq!(
                    result(&worker(&scratch.0, "create:none", profile, empty, false))["outcome"],
                    "complete"
                );
                assert_complete(&scratch.0, profile, empty, 0);
                println!(
                    "WINDOW019 {profile} empty={empty} {boundary} absent_orphan_private_then_recreated"
                );
            }
        }
    }
}

#[test]
fn postrename_and_postdurability_crashes_recover_one_exact_publication() {
    for profile in ["v1", "v2"] {
        for empty in [true, false] {
            for boundary in ["after-rename", "after-directory-sync"] {
                let scratch = Scratch::new();
                let output = worker(
                    &scratch.0,
                    &format!("create:{boundary}"),
                    profile,
                    empty,
                    false,
                );
                activation(&output, boundary);
                assert_eq!(output.status.code(), Some(86));
                assert!(scratch.0.join("store.json").exists());
                let bytes = std::fs::read(scratch.0.join("store.json")).unwrap();
                let before = assert_complete(&scratch.0, profile, empty, 0);
                let recovered = result(&worker(&scratch.0, "create:none", profile, empty, false));
                assert_eq!(recovered["outcome"], "complete");
                assert_eq!(recovered["history"], before["history"]);
                assert_eq!(std::fs::read(scratch.0.join("store.json")).unwrap(), bytes);
                assert!(staging(&scratch.0).is_empty());
                println!(
                    "WINDOW019 {profile} empty={empty} {boundary} complete_then_original_retry"
                );
            }
        }
    }
}

#[test]
fn creation_operational_errors_do_not_invent_rollback_or_success() {
    for profile in ["v1", "v2"] {
        for (boundary, published) in [
            ("before-staging-error", false),
            ("rename-error", false),
            ("directory-sync-error", true),
        ] {
            let scratch = Scratch::new();
            let output = worker(
                &scratch.0,
                &format!("create:{boundary}"),
                profile,
                false,
                false,
            );
            activation(&output, boundary);
            let report = result(&output);
            assert_eq!(report["outcome"], "error");
            assert_eq!(report["code"], "BACKEND_ERROR");
            assert_eq!(scratch.0.join("store.json").exists(), published);
            let observed = result(&worker(&scratch.0, "inspect", profile, false, false));
            assert_eq!(
                observed["outcome"],
                if published { "complete" } else { "absent" }
            );
            assert_eq!(
                result(&worker(&scratch.0, "create:none", profile, false, false))["outcome"],
                "complete"
            );
            assert_complete(&scratch.0, profile, false, 0);
            println!("WINDOW019 {profile} {boundary} error_published={published}_then_recovered");
        }
    }
}

#[test]
fn performed_recovery_read_and_sync_faults_remain_operational() {
    for profile in ["v1", "v2"] {
        let scratch = Scratch::new();
        assert_eq!(
            result(&worker(&scratch.0, "create:none", profile, false, false))["outcome"],
            "complete"
        );
        let before = std::fs::read(scratch.0.join("store.json")).unwrap();
        for boundary in ["recovery-read-error", "recovery-sync-error"] {
            let output = worker(
                &scratch.0,
                &format!("create:{boundary}"),
                profile,
                false,
                false,
            );
            activation(&output, boundary);
            let report = result(&output);
            assert_eq!(report["outcome"], "error");
            assert_eq!(report["code"], "BACKEND_ERROR");
            assert_eq!(std::fs::read(scratch.0.join("store.json")).unwrap(), before);
            assert_complete(&scratch.0, profile, false, 0);
            println!("WINDOW019 {profile} {boundary} no_success_or_false_absence");
        }
    }
}

#[test]
fn original_request_and_direct_backend_retry_preserve_updated_migrated_history() {
    for profile in ["v1", "v2"] {
        let scratch = Scratch::new();
        result(&worker(&scratch.0, "create:none", profile, false, false));
        assert_eq!(
            result(&worker(&scratch.0, "advance", profile, false, false))["history"]["position"],
            1
        );
        assert_eq!(
            result(&worker(&scratch.0, "migrate", profile, false, false))["history"]["position"],
            2
        );
        let before = assert_complete(&scratch.0, profile, false, 2);
        let bytes = std::fs::read(scratch.0.join("store.json")).unwrap();
        for mode in ["create:none", "direct-retry"] {
            let report = result(&worker(&scratch.0, mode, profile, false, false));
            assert_eq!(report["outcome"], "complete");
            assert_eq!(report["history"], before["history"]);
            assert_eq!(report["schema"], before["schema"]);
            assert_eq!(std::fs::read(scratch.0.join("store.json")).unwrap(), bytes);
        }
        let conflict = result(&worker(&scratch.0, "create:none", profile, false, true));
        assert_eq!(conflict["code"], "STORE_CREATION_CONFLICT");
        assert_eq!(std::fs::read(scratch.0.join("store.json")).unwrap(), bytes);
        println!("HISTORY019 {profile} update_migration_store_and_direct_retry_no_rewrite");
    }
}

#[test]
fn later_equal_state_and_removed_seed_identity_survive_creation_recovery() {
    for profile in ["v1", "v2"] {
        let scratch = Scratch::new();
        let initial = result(&worker(&scratch.0, "create:none", profile, false, false));
        let cycle = result(&worker(&scratch.0, "cycle", profile, false, false));
        assert_eq!(cycle["history"]["position"], 2);
        assert_eq!(cycle["history"]["state"], initial["history"]["state"]);
        let bytes = std::fs::read(scratch.0.join("store.json")).unwrap();
        let recovered = result(&worker(&scratch.0, "create:none", profile, false, false));
        assert_eq!(recovered["history"], cycle["history"]);
        assert_eq!(std::fs::read(scratch.0.join("store.json")).unwrap(), bytes);
        let removed = result(&worker(&scratch.0, "remove-seed", profile, false, false));
        assert_eq!(removed["history"]["position"], 3);
        let bytes = std::fs::read(scratch.0.join("store.json")).unwrap();
        let recovered = result(&worker(&scratch.0, "direct-retry", profile, false, false));
        assert_eq!(recovered["history"], removed["history"]);
        assert_eq!(std::fs::read(scratch.0.join("store.json")).unwrap(), bytes);
        println!("HISTORY019 {profile} equal_state_later_position_and_removed_seed_recovery");
    }
}

fn concurrent(
    scratch: &Scratch,
    profile: &str,
    left_mode: &str,
    right_foreign: bool,
) -> (Output, Output) {
    let gate = scratch.0.join("start-gate");
    let spawn = |label: &str, mode: &str, foreign: bool| -> Child {
        command(&scratch.0, mode, profile, false, foreign)
            .env("BEHAVIOR_CREATION019_GATE", &gate)
            .env("BEHAVIOR_CREATION019_READY", scratch.0.join(label))
            .stdout(std::process::Stdio::piped())
            .stderr(std::process::Stdio::piped())
            .spawn()
            .unwrap()
    };
    let left = spawn("left-ready", left_mode, false);
    let right = spawn("right-ready", "create:none", right_foreign);
    let deadline = Instant::now() + Duration::from_secs(10);
    while !(scratch.0.join("left-ready").exists() && scratch.0.join("right-ready").exists()) {
        assert!(
            Instant::now() < deadline,
            "both recognized workers must reach the startup gate"
        );
        std::thread::sleep(Duration::from_millis(5));
    }
    std::fs::write(&gate, b"go").unwrap();
    (
        left.wait_with_output().unwrap(),
        right.wait_with_output().unwrap(),
    )
}

#[test]
fn equivalent_process_initializers_and_create_versus_first_commit_share_one_lineage() {
    for profile in ["v1", "v2"] {
        for left_mode in ["create:none", "create-and-commit"] {
            let scratch = Scratch::new();
            let (left, right) = concurrent(&scratch, profile, left_mode, false);
            assert_eq!(result(&left)["outcome"], "complete");
            assert_eq!(result(&right)["outcome"], "complete");
            let final_state = assert_complete(
                &scratch.0,
                profile,
                false,
                if left_mode == "create-and-commit" {
                    1
                } else {
                    0
                },
            );
            assert_eq!(
                result(&left)["history"]["store"],
                final_state["history"]["store"]
            );
            assert_eq!(
                result(&right)["history"]["store"],
                final_state["history"]["store"]
            );
            println!("RACE019 {profile} {left_mode} equivalent_complete_only");
        }
    }
}

#[test]
fn conflicting_process_initializers_publish_one_complete_winner() {
    for profile in ["v1", "v2"] {
        let scratch = Scratch::new();
        let (left, right) = concurrent(&scratch, profile, "create:none", true);
        let results = [result(&left), result(&right)];
        assert_eq!(
            results
                .iter()
                .filter(|r| r["outcome"] == "complete")
                .count(),
            1
        );
        assert_eq!(
            results
                .iter()
                .filter(|r| r["code"] == "STORE_CREATION_CONFLICT")
                .count(),
            1
        );
        let winner = results.iter().find(|r| r["outcome"] == "complete").unwrap();
        let final_state = assert_complete(&scratch.0, profile, false, 0);
        assert_eq!(final_state["history"], winner["history"]);
        println!("RACE019 {profile} conflicting_one_complete_one_established_conflict");
    }
}

#[test]
fn unrecognized_worker_mode_fails_explicitly() {
    let scratch = Scratch::new();
    let output = worker(&scratch.0, "unknown-mode", "v2", false, false);
    assert!(!output.status.success());
    assert!(String::from_utf8_lossy(&output.stderr).contains("unrecognized creation worker mode"));
    assert!(!scratch.0.join("store.json").exists());
}

fn summarize(s: &Store<host::DurableBackend>) -> Value {
    let g = s.genesis().unwrap();
    let current = s.current().unwrap();
    let count = g
        .seed
        .iter()
        .filter(|item| {
            s.backend()
                .version(&key(&item.entity, item.value["id"].as_str().unwrap()), 1)
                .unwrap()
                .is_some_and(|v| v.created_at == 0)
        })
        .count();
    let refs = s.backend().incoming_at(&key("Customer", "c1"), 0).unwrap();
    json!({"outcome":"complete","history":s.current_history().unwrap(),"schema":s.schema_at(&current).unwrap(),"original_count":count,"original_ref_count":refs.len()})
}
fn act(
    s: &mut Store<host::DurableBackend>,
    m: &Module,
    name: &str,
    bindings: &[(&str, &str)],
    input: Value,
) {
    let bindings: BTreeMap<String, String> = bindings
        .iter()
        .map(|(name, id)| (name.to_string(), id.to_string()))
        .collect();
    let e = s
        .evaluate(m, name, &bindings, &input, &json!({}), NOW, None)
        .unwrap();
    let bundle = e.bundle.unwrap_or_else(|| panic!("{name}: {}", e.record));
    s.commit(m, &bundle.evaluated_state, &bundle).unwrap();
}
#[test]
fn process_worker() {
    let Some(root) = std::env::var_os("BEHAVIOR_CREATION019_ROOT") else {
        return;
    };
    let root = PathBuf::from(root);
    let mode = std::env::var("BEHAVIOR_CREATION019_MODE").unwrap();
    let profile = std::env::var("BEHAVIOR_CREATION019_PROFILE").unwrap();
    let empty = std::env::var("BEHAVIOR_CREATION019_EMPTY")
        .unwrap()
        .parse::<bool>()
        .unwrap();
    let foreign = std::env::var("BEHAVIOR_CREATION019_FOREIGN")
        .unwrap()
        .parse::<bool>()
        .unwrap();
    if let Some(gate) = std::env::var_os("BEHAVIOR_CREATION019_GATE") {
        std::fs::write(
            std::env::var_os("BEHAVIOR_CREATION019_READY").unwrap(),
            b"ready",
        )
        .unwrap();
        let deadline = Instant::now() + Duration::from_secs(10);
        while !PathBuf::from(&gate).exists() {
            assert!(Instant::now() < deadline, "worker gate timed out");
            std::thread::sleep(Duration::from_millis(5));
        }
    }
    let m = module();
    let g = requested(&m, &profile, empty, foreign);
    let report = if let Some(boundary) = mode.strip_prefix("create:") {
        let mut backend = host::DurableBackend::open(&root).unwrap();
        backend.creation_fault =
            host::CreationFault::from_name(boundary).expect("unrecognized creation fault");
        match Store::create(backend, &m, g) {
            Ok(s) => summarize(&s),
            Err(e) => json!({"outcome":"error","code":e.code(),"message":e.to_string()}),
        }
    } else {
        match mode.as_str() {
            "inspect" => {
                let backend = host::DurableBackend::open(&root).unwrap();
                if backend.genesis().unwrap().is_none() {
                    assert!(backend.head().unwrap().is_none());
                    let e = Store::open(backend)
                        .err()
                        .expect("absent Store must not open");
                    json!({"outcome":"absent","open_code":e.code()})
                } else {
                    summarize(&Store::open(backend).unwrap())
                }
            }
            "create-and-commit" => {
                let mut s =
                    Store::create(host::DurableBackend::open(&root).unwrap(), &m, g).unwrap();
                act(
                    &mut s,
                    &m,
                    "deposit",
                    &[("account", "a1")],
                    json!({"amount":"1.00"}),
                );
                summarize(&s)
            }
            "advance" => {
                let mut s = Store::open(host::DurableBackend::open(&root).unwrap()).unwrap();
                act(
                    &mut s,
                    &m,
                    "deposit",
                    &[("account", "a1")],
                    json!({"amount":"1.00"}),
                );
                summarize(&s)
            }
            "cycle" => {
                let mut s = Store::open(host::DurableBackend::open(&root).unwrap()).unwrap();
                act(
                    &mut s,
                    &m,
                    "register_customer",
                    &[],
                    json!({"customer_id":"temporary","name":"temporary"}),
                );
                act(
                    &mut s,
                    &m,
                    "remove_customer",
                    &[("customer", "temporary")],
                    json!({}),
                );
                summarize(&s)
            }
            "remove-seed" => {
                let mut s = Store::open(host::DurableBackend::open(&root).unwrap()).unwrap();
                act(&mut s, &m, "close_account", &[("account", "a1")], json!({}));
                summarize(&s)
            }
            "migrate" => {
                let mut s = Store::open(host::DurableBackend::open(&root).unwrap()).unwrap();
                let mut wire: Value = serde_json::from_str(include_str!(
                    "../../tests/fixtures/wire/valid/accounts.json"
                ))
                .unwrap();
                let loc = json!({"file":"019-process-migration.beh","line":1});
                wire["entities"][0]["fields"]
                    .as_array_mut()
                    .unwrap()
                    .push(json!({"name":"tag","type":{"t":"int"},"loc":loc}));
                let target = behavior_engine::admit(&wire.to_string()).unwrap();
                let document = json!({"migration_ir":"0.1","name":"add_tag","source":behavior_engine::schema(&m).hash,"target":behavior_engine::schema(&target).hash,"constants":[],"requirements":[],"retire":[],"transforms":[{"entity":"Customer","fields":{"tag":{"op":"lit","type":{"t":"int"},"value":1,"loc":loc}},"drops":[],"loc":loc}]});
                let migration =
                    behavior_engine::migration::admit_migration(&m, &target, &document.to_string())
                        .unwrap();
                s.migrate(&migration, &m, &target, NOW, None).unwrap();
                summarize(&s)
            }
            "direct-retry" => {
                let legal = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
                let h = legal.backend().head().unwrap().unwrap();
                let originals: Vec<_> = g
                    .seed
                    .iter()
                    .map(|item| {
                        legal
                            .backend()
                            .version(&key(&item.entity, item.value["id"].as_str().unwrap()), 1)
                            .unwrap()
                            .unwrap()
                    })
                    .collect();
                let refs = if empty {
                    vec![]
                } else {
                    vec![RefChange {
                        target: key("Customer", "c1"),
                        source: key("Account", "a1"),
                        field: "owner".into(),
                        op: "add".into(),
                    }]
                };
                let mut backend = host::DurableBackend::open(&root).unwrap();
                match backend.create(&g, &h, &originals, &refs) {
                    Ok(()) => summarize(&Store::open(backend).unwrap()),
                    Err(e) => {
                        json!({"outcome":"error","code":"BACKEND_ERROR","message":e.to_string()})
                    }
                }
            }
            _ => panic!("unrecognized creation worker mode {mode}"),
        }
    };
    println!("RESULT019={report}");
}
