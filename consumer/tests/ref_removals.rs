#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Public facade only: proof coverage and actual Store semantics are separate checks.
use behavior_engine::store::documents::{EvidencePolicy, SeedEntity};
use behavior_engine::store::replay::{replay_behavior_with, replay_data};
use behavior_engine::store::store::{genesis_for, genesis_v2_for};
use behavior_engine::store::{InMemoryBackend, Store};
use behavior_engine::verify::governance::EvidencePolicyV2;
use behavior_engine::verify::{CheckKind, Profile, solver::Z3Process, verify};
use serde_json::{Value, json};
use std::collections::BTreeMap;

fn module_named(pattern: &str, version: &str) -> behavior_engine::semantic::Module {
    let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../tests/fixtures/verify/ref-removals")
        .join(format!("{pattern}.json"));
    let mut w: Value = serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap();
    w["ir_version"] = json!(version);
    if version == "0.8" {
        w["commands"] = json!([]);
        w["actions"][0]["command_effects"] = json!([]);
    }
    behavior_engine::admit(&w.to_string()).unwrap()
}
#[test]
fn public_minimal_removal_has_nonempty_reference_preservation_evidence() {
    for version in ["0.7", "0.8"] {
        let m = module_named("guarded", version);
        let p = Profile {
            checks: vec![CheckKind::Preservation],
            ..Profile::default()
        };
        let a = verify(&m, &p, None, &Z3Process::from_env().unwrap()).unwrap();
        assert_eq!(a.value["result"], "verified", "{}", a.value);
        assert!(
            a.value["checks"]
                .as_array()
                .unwrap()
                .iter()
                .any(|c| c["subject"]["kind"] == "reference_world")
        );
    }
}
#[test]
fn public_free_removal_commits_and_replays_but_referenced_removal_does_not_commit() {
    for version in ["0.7", "0.8"] {
        let m = module_named("guarded", version);
        for referenced in [false, true] {
            let mut seed = vec![SeedEntity {
                entity: "Target".into(),
                value: json!({"id":"old","value":1}),
            }];
            if referenced {
                seed.push(SeedEntity {
                    entity: "Holder".into(),
                    value: json!({"id":"h","target":"old"}),
                });
            }
            let genesis = if version == "0.8" {
                let p=EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
                genesis_v2_for(&m, p, seed).unwrap()
            } else {
                genesis_for(&m, EvidencePolicy::none(), seed)
            };
            let mut store = Store::create(InMemoryBackend::new(), &m, genesis).unwrap();
            let before = store.current().unwrap();
            let e = store
                .evaluate(
                    &m,
                    "remove_free",
                    &BTreeMap::from([("old".into(), "old".into())]),
                    &json!({}),
                    &json!({}),
                    "2026-10-26T12:00:00Z",
                    None,
                )
                .unwrap();
            assert_eq!(
                e.record["result"],
                if referenced { "DENY" } else { "ALLOW" }
            );
            if let Some(bundle) = e.bundle {
                store.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
                let after = store.current().unwrap();
                assert!(replay_data(&store, &before, &after).ok);
                let modules = BTreeMap::from([(m.behavior_version(), m.clone())]);
                assert!(
                    replay_behavior_with(&store, &modules, &BTreeMap::new(), &before, &after).ok
                );
            } else {
                assert!(referenced);
                assert_eq!(store.current().unwrap(), before);
            }
        }
    }
}

#[test]
fn public_joint_and_retarget_use_complete_child_state_and_replay_without_proof_artifacts() {
    for version in ["0.7", "0.8"] {
        for pattern in ["joint", "retarget"] {
            for unrelated in [0, 24] {
                for extra in [false, true] {
                    let m = module_named(pattern, version);
                    let proof = verify(
                        &m,
                        &Profile {
                            checks: vec![CheckKind::Preservation],
                            ..Profile::default()
                        },
                        None,
                        &Z3Process::from_env().unwrap(),
                    )
                    .unwrap();
                    assert_eq!(proof.result, "verified");
                    // No proof artifacts are needed by runtime or either replay mode.
                    drop(proof);
                    let mut seed = vec![
                        SeedEntity {
                            entity: "Target".into(),
                            value: json!({"id":"old","value":1}),
                        },
                        SeedEntity {
                            entity: "Target".into(),
                            value: json!({"id":"new","value":2}),
                        },
                        SeedEntity {
                            entity: "Holder".into(),
                            value: json!({"id":"h","target":"old"}),
                        },
                    ];
                    for i in 0..unrelated {
                        seed.push(SeedEntity {
                            entity: "Holder".into(),
                            value: json!({"id":format!("unrelated-{i}"),"target":"new"}),
                        });
                    }
                    if extra {
                        seed.push(SeedEntity {
                            entity: "Holder".into(),
                            value: json!({"id":"extra","target":"old"}),
                        });
                    }
                    let genesis = if version == "0.8" {
                        genesis_v2_for(&m,EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap(),seed).unwrap()
                    } else {
                        genesis_for(&m, EvidencePolicy::none(), seed)
                    };
                    let mut s = Store::create(InMemoryBackend::new(), &m, genesis).unwrap();
                    let from = s.current().unwrap();
                    let mut bindings = BTreeMap::from([
                        ("holder".into(), "h".into()),
                        ("old".into(), "old".into()),
                    ]);
                    if pattern == "retarget" {
                        bindings.insert("new".into(), "new".into());
                    }
                    let action = if pattern == "joint" {
                        "remove_both"
                    } else {
                        "retarget"
                    };
                    let e = s
                        .evaluate(
                            &m,
                            action,
                            &bindings,
                            &json!({}),
                            &json!({}),
                            "2026-10-26T12:00:00Z",
                            None,
                        )
                        .unwrap();
                    assert_eq!(
                        e.record["result"],
                        if extra { "DENY" } else { "ALLOW" },
                        "{}",
                        e.record
                    );
                    if extra {
                        assert!(e.bundle.is_none());
                        assert_eq!(s.current().unwrap(), from);
                        continue;
                    }
                    let b = e.bundle.unwrap();
                    s.commit(&m, &b.evaluated_state, &b).unwrap();
                    let to = s.current().unwrap();
                    let snapshot = s.export_seed_at(&m, &s.current_history().unwrap()).unwrap();
                    assert!(
                        !snapshot
                            .seed
                            .iter()
                            .any(|x| x.entity == "Target" && x.value["id"] == "old")
                    );
                    let holders: Vec<_> = snapshot
                        .seed
                        .iter()
                        .filter(|x| x.entity == "Holder")
                        .collect();
                    assert_eq!(
                        holders.len(),
                        unrelated + usize::from(pattern == "retarget")
                    );
                    assert!(holders.iter().all(|x| x.value["target"] == "new"));
                    assert!(replay_data(&s, &from, &to).ok);
                    assert!(
                        replay_behavior_with(
                            &s,
                            &BTreeMap::from([(m.behavior_version(), m.clone())]),
                            &BTreeMap::new(),
                            &from,
                            &to
                        )
                        .ok
                    );
                }
            }
        }
    }
}

#[test]
fn public_creation_of_a_surviving_reference_to_removed_target_is_refused() {
    for version in ["0.7", "0.8"] {
        let base = module_named("guarded", version);
        let mut w: Value =
            serde_json::from_str(&behavior_engine::serialize::to_wire_json(&base)).unwrap();
        let l = json!({"file":"ref-removals.beh","line":1});
        w["actions"][0]["params"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"fresh","role":"input","type":{"t":"id","entity":"Holder"}}));
        w["actions"][0]["effects"].as_array_mut().unwrap().push(json!({"create":"Holder","id":{"op":"param","param":"fresh","loc":l},"fields":{"target":{"op":"field","param":"old","field":"id","loc":l}},"loc":l}));
        let m = behavior_engine::admit(&w.to_string()).unwrap();
        let seed = vec![SeedEntity {
            entity: "Target".into(),
            value: json!({"id":"old","value":1}),
        }];
        let genesis = if version == "0.8" {
            genesis_v2_for(&m,EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap(),seed).unwrap()
        } else {
            genesis_for(&m, EvidencePolicy::none(), seed)
        };
        let s = Store::create(InMemoryBackend::new(), &m, genesis).unwrap();
        let from = s.current().unwrap();
        let e = s
            .evaluate(
                &m,
                "remove_free",
                &BTreeMap::from([("old".into(), "old".into())]),
                &json!({"fresh":"h"}),
                &json!({}),
                "2026-10-26T12:00:00Z",
                None,
            )
            .unwrap();
        assert!(e.bundle.is_none());
        assert_eq!(e.record["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
        assert_eq!(s.current().unwrap(), from);
    }
}

#[test]
fn public_reference_proofs_are_deterministic_with_and_without_cache_in_exact_context() {
    let p = Profile {
        checks: vec![CheckKind::Preservation],
        ..Profile::default()
    };
    let z = Z3Process::from_env().unwrap();
    let cache = std::env::temp_dir().join(format!("core030-public-cache-{}", std::process::id()));
    let _ = std::fs::remove_dir_all(&cache);
    for version in ["0.7", "0.8"] {
        for pattern in ["guarded", "joint", "retarget"] {
            let m = module_named(pattern, version);
            let cold = verify(&m, &p, Some(&cache), &z).unwrap();
            let warm = verify(&m, &p, Some(&cache), &z).unwrap();
            let independent = verify(&m, &p, None, &z).unwrap();
            assert_eq!(cold.hash, warm.hash);
            assert_eq!(cold.hash, independent.hash);
            assert!(warm.checks.iter().all(|c| c.cached));
            assert!(independent.checks.iter().all(|c| !c.cached));
            assert_eq!(cold.result, "verified");
        }
    }
    let base = module_named("guarded", "0.7");
    let mut w: Value =
        serde_json::from_str(&behavior_engine::serialize::to_wire_json(&base)).unwrap();
    let mut other = w["entities"]
        .as_array()
        .unwrap()
        .iter()
        .find(|e| e["name"] == "Holder")
        .unwrap()
        .clone();
    other["name"] = json!("Other");
    w["entities"].as_array_mut().unwrap().push(other);
    let m = behavior_engine::admit(&w.to_string()).unwrap();
    let changed = verify(&m, &p, Some(&cache), &z).unwrap();
    assert!(changed.checks.iter().all(|c| !c.cached));
    assert_eq!(changed.result, "verified");
    assert_eq!(
        changed
            .checks
            .iter()
            .filter(|c| c.subject.kind == "reference_world")
            .count(),
        2
    );
    std::fs::remove_dir_all(cache).unwrap();
}
