#![allow(clippy::unwrap_used)]
//! Reconstruction tests share Core's production `check_behavior_snapshot` checker.
//! `full_child` independently reconstructs canonical rows and reference inputs;
//! it is not an independent semantic validity oracle. The explicit valid/invalid
//! controls below state their expected result separately from that shared checker.
use super::super::*;
use crate::InMemoryBackend;
use serde_json::json;

pub(super) fn wire() -> Json {
    serde_json::from_str(include_str!(
        "../../../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap()
}
pub(super) fn module() -> Module {
    behavior_core::admit(&wire().to_string()).unwrap()
}
pub(super) fn seeded(n: usize) -> Store<InMemoryBackend> {
    let m = module();
    let seed = (0..n)
        .map(|i| crate::documents::SeedEntity {
            entity: "E".into(),
            value: json!({"id":format!("e{i}"),"x":1,"y":2}),
        })
        .collect();
    Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(&m, crate::documents::EvidencePolicy::none(), seed),
    )
    .unwrap()
}
#[test]
fn oracle_reconstructs_complete_parent_and_all_atomic_edits() {
    let s = seeded(3);
    let m = module();
    let changes = vec![
        (key("E", "e0"), json!({"id":"e0","x":2,"y":2})),
        (key("E", "new"), json!({"id":"new","x":3,"y":2})),
    ];
    let (rows, facts) = full_child(&s.backend, &m, 0, &changes, &[key("E", "e1")]);
    assert_eq!(rows.len(), 3);
    assert_eq!(rows[&("E".into(), "e2".into())]["x"], 1);
    assert!(facts.exists("E", "new").unwrap());
    assert!(!facts.exists("E", "e1").unwrap());
    assert!(behavior_core::eval::check_behavior_snapshot(&m, &rows, &facts).is_ok());
}
#[test]
fn oracle_detects_unchanged_nonlocal_violation() {
    let mut w = wire();
    let l = json!({"file":"oracle.beh","line":1});
    w["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"target","type":{"t":"id","entity":"E"},"loc":l}));
    w["constraints"][0]["body"] = json!({"op":"not","loc":l,"args":[{"op":"exists","loc":l,"args":[{"op":"field","param":"e","field":"target","loc":l}]}]});
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            crate::documents::EvidencePolicy::none(),
            vec![crate::documents::SeedEntity {
                entity: "E".into(),
                value: json!({"id":"source","x":1,"y":2,"target":"new"}),
            }],
        ),
    )
    .unwrap();
    let changed = vec![(
        key("E", "new"),
        json!({"id":"new","x":1,"y":2,"target":"absent"}),
    )];
    let (rows, facts) = full_child(&s.backend, &m, 0, &changed, &[]);
    let only = changed
        .into_iter()
        .map(|(k, v)| ((k.entity, k.id), v))
        .collect();
    assert!(behavior_core::eval::check_behavior_snapshot(&m, &only, &facts).is_ok());
    assert!(behavior_core::eval::check_behavior_snapshot(&m, &rows, &facts).is_err());
}

pub(super) type Rows = BTreeMap<(String, String), Json>;
/// Independent canonical reconstruction: no optimized plan, affected set or cached indexes.
pub(super) fn full_child<B: Backend>(
    backend: &B,
    module: &Module,
    position: u64,
    changes: &[(EntityKey, Json)],
    removed: &[EntityKey],
) -> (Rows, behavior_core::facts::Facts) {
    let mut rows = Rows::new();
    for entity in module.entities().keys() {
        for k in backend.keys_at(entity, position).unwrap() {
            let v = backend.version_at(&k, position).unwrap().unwrap();
            assert_eq!(v.key(), k);
            rows.insert((k.entity, k.id), v.value);
        }
    }
    for k in removed {
        rows.remove(&(k.entity.clone(), k.id.clone()));
    }
    for (k, v) in changes {
        rows.insert((k.entity.clone(), k.id.clone()), v.clone());
    }
    let mut facts = behavior_core::facts::Facts::default();
    for entity in module.entities().keys() {
        facts.universe.insert(entity.clone(), BTreeMap::new());
    }
    for ((entity, id), v) in &rows {
        facts
            .universe
            .get_mut(entity)
            .unwrap()
            .insert(id.clone(), v.clone());
        facts
            .references
            .entry((entity.clone(), id.clone()))
            .or_default();
        // Extract canonical declared Ref fields directly; never trust ref_changes/incoming cache.
        for (field, target) in module.entity(entity).unwrap().reference_fields() {
            if let Some(target_id) = v.get(field).and_then(Json::as_str) {
                facts
                    .references
                    .entry((target.to_string(), target_id.to_string()))
                    .or_default()
                    .push(RefEdge {
                        entity: entity.clone(),
                        id: id.clone(),
                        field: field.to_string(),
                    });
            }
        }
    }
    for edges in facts.references.values_mut() {
        edges.sort();
        edges.dedup();
    }
    (rows, facts)
}

#[test]
fn whole_module_guard_rejects_global_and_nonlocal_obligations() {
    assert!(super::dependency::local_module(&module()));
    let mut w = wire();
    let l = json!({"file":"guard.beh","line":1});
    w["invariants"] = json!([{"name":"global","loc":l,"body":{"op":"gt","loc":l,"args":[{"op":"count","loc":l,"args":[{"op":"select","entity":"E","loc":l}]},{"op":"lit","type":{"t":"int"},"value":0,"loc":l}]}}]);
    assert!(!super::dependency::local_module(
        &behavior_core::admit(&w.to_string()).unwrap()
    ));
}

proptest::proptest! {
    #![proptest_config(proptest::test_runner::Config::with_cases(128))]
    #[test]
    fn candidate_matches_independent_full_child_including_invalid_rows(
        n in 1usize..20, changes in proptest::collection::vec((0usize..25,-2i64..20,0u8..6),0..20)
    ) {
        let s=seeded(n); let m=module();
        let mut edited=BTreeMap::new();
        for (i,x,kind) in changes {
            let id=format!("e{i}");let mut v=json!({"id":id,"x":x,"y":2});
            match kind {0=>v["id"]=json!("wrong"),1=>v["x"]=json!("bad"),2=>{v.as_object_mut().unwrap().remove("y");},_=>{}}
            edited.insert(key("E",&id),v);
        }
        let input:Vec<_>=edited.iter().map(|(k,v)|(k.clone(),v.clone())).collect();
        let (rows,facts)=full_child(&s.backend,&m,0,&input,&[]);
        let parent=s.validate_snapshot_full(&m,0).unwrap();
        let candidate=super::candidate::Candidate {parent:&parent,changed:edited};
        let only=candidate.changed.iter().map(|(k,v)|((k.entity.clone(),k.id.clone()),v.clone())).collect();
        proptest::prop_assert_eq!(behavior_core::eval::check_behavior_snapshot(&m,&only,&candidate),behavior_core::eval::check_behavior_snapshot(&m,&rows,&facts));
    }
}

#[test]
fn candidate_field_failure_retains_existing_diagnostic() {
    let k = key("E", "one");
    let parent = SeedFacts {
        keys: BTreeSet::from([k.clone()]),
        incoming: BTreeMap::new(),
        values: BTreeMap::from([(k, json!({"id":"one","x":1}))]),
    };
    let c = super::candidate::Candidate {
        parent: &parent,
        changed: BTreeMap::new(),
    };
    assert_eq!(c.field("E", "one", "y"), parent.field("E", "one", "y"));
}

#[test]
fn warm_reuse_has_zero_validation_universe_work() {
    let s = seeded(20);
    let m = module();
    let at = s.current().unwrap();
    let schema = s.schema_at(&at).unwrap();
    s.validate_snapshot(&m, &at, &schema).unwrap();
    super::reset_work();
    s.validate_snapshot(&m, &at, &schema).unwrap();
    assert_eq!(super::work().universe, 0);
    assert_eq!(super::work().unchanged_rows, 0);
}
#[test]
fn changed_and_created_refs_see_one_simultaneous_child() {
    let mut w = wire();
    let l = json!({"file":"refs.beh","line":1});
    w["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"target","type":{"t":"option","of":{"t":"ref","entity":"E"}},"loc":l}));
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            crate::documents::EvidencePolicy::none(),
            vec![crate::documents::SeedEntity {
                entity: "E".into(),
                value: json!({"id":"e0","x":1,"y":2,"target":null}),
            }],
        ),
    )
    .unwrap();
    assert!(super::dependency::local_module(&m));
    for target in ["new", "missing"] {
        let changed = BTreeMap::from([
            (
                key("E", "e0"),
                json!({"id":"e0","x":1,"y":2,"target":target}),
            ),
            (
                key("E", "new"),
                json!({"id":"new","x":1,"y":2,"target":"e0"}),
            ),
        ]);
        let edits: Vec<_> = changed
            .iter()
            .map(|(k, v)| (k.clone(), v.clone()))
            .collect();
        let (rows, facts) = full_child(&s.backend, &m, 0, &edits, &[]);
        let parent = s.validate_snapshot_full(&m, 0).unwrap();
        let c = super::candidate::Candidate {
            parent: &parent,
            changed,
        };
        assert_eq!(
            behavior_core::eval::check_behavior_snapshot(&m, &c.rows(), &c),
            behavior_core::eval::check_behavior_snapshot(&m, &rows, &facts)
        );
        assert_eq!(
            behavior_core::eval::check_behavior_snapshot(&m, &rows, &facts).is_ok(),
            target == "new"
        );
    }
}

fn first_record() -> (Module, TransitionRecord, Head) {
    let m = module();
    let mut s = seeded(2);
    let e = s
        .evaluate(
            &m,
            "set",
            &BTreeMap::from([("e".into(), "e0".into())]),
            &json!({}),
            &json!({}),
            "2026-09-27T12:00:00Z",
            None,
        )
        .unwrap();
    let b = e.bundle.unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    (m, s.backend.record(1).unwrap().unwrap(), s.head().unwrap())
}
#[test]
fn pending_refuses_record_bound_to_another_parent() {
    let s = seeded(2);
    let (m, mut record, _) = first_record();
    let parent = s.current().unwrap();
    record.committed_on.position = 99;
    assert!(
        s.validate_incremental_child(&m, &parent, &s.genesis_schema, &record)
            .is_err()
    );
}
#[test]
fn exact_behavior_profile_and_position_are_bound_even_for_equal_values() {
    let mut s = seeded(2);
    let (m, record, head) = first_record();
    let at = s.current().unwrap();
    let old = s.snapshot_identity(&m, &at, &s.genesis_schema).unwrap();
    let pending = s
        .validate_incremental_child(&m, &at, &s.genesis_schema, &record)
        .unwrap();
    s.carry_incremental_child(pending, &head, &[], &[], &[]);
    let new = s
        .validated
        .lock()
        .unwrap()
        .as_ref()
        .unwrap()
        .identity
        .clone();
    assert_eq!(old.history.state, new.history.state);
    assert_ne!(old.history.position, new.history.position);
    assert_ne!(old.history.record, new.history.record);
    let mut w = wire();
    w["constraints"][0]["body"]["args"][1]["value"] = json!(2);
    let changed = behavior_core::admit(&w.to_string()).unwrap();
    // Another admitted behavior over exactly the same schema/rows must fully re-establish validity.
    let original = seeded(2);
    assert!(
        original
            .validate_snapshot(&changed, &at, &original.genesis_schema)
            .is_err()
    );
    let mut w = wire();
    w["ir_version"] = json!("0.8");
    w["commands"] = json!([]);
    w["actions"][0]["command_effects"] = json!([]);
    let other = behavior_core::admit(&w.to_string()).unwrap();
    assert_ne!(
        old.behavior,
        original
            .snapshot_identity(&other, &at, &original.genesis_schema)
            .unwrap()
            .behavior
    );
}
#[test]
fn uncertain_ownership_and_wrong_child_discard_materialization() {
    for held in [false, true] {
        let mut s = seeded(2);
        let (m, record, mut head) = first_record();
        let at = s.current().unwrap();
        let facts = if held {
            Some(s.validate_snapshot(&m, &at, &s.genesis_schema).unwrap())
        } else {
            None
        };
        let pending = s
            .validate_incremental_child(&m, &at, &s.genesis_schema, &record)
            .unwrap();
        if !held {
            head.last_record = "wrong".into();
        }
        s.carry_incremental_child(pending, &head, &[], &[], &[]);
        assert!(s.validated.lock().unwrap().is_none());
        drop(facts);
    }
}
#[test]
fn mutable_access_and_reopen_have_no_unbound_evidence() {
    let mut s = seeded(2);
    s.backend_mut();
    assert!(s.validated.lock().unwrap().is_none());
    let s = Store::open(s.into_backend()).unwrap();
    assert!(s.validated.lock().unwrap().is_none());
    let m = module();
    let at = s.current().unwrap();
    assert!(s.validate_snapshot(&m, &at, &s.genesis_schema).is_ok());
}

fn assert_current_profile_refused(record: &TransitionRecord, label: &str) {
    let s = seeded(2);
    let m = module();
    let at = s.current().unwrap();
    s.validate_snapshot(&m, &at, &s.genesis_schema).unwrap();
    let original = s
        .validated
        .lock()
        .unwrap()
        .as_ref()
        .unwrap()
        .identity
        .clone();
    let outcome = s.validate_incremental_child(&m, &at, &s.genesis_schema, record);
    assert!(
        matches!(outcome, Ok(None) | Err(_)),
        "{label} must not produce a reusable prospective current-profile proof"
    );
    assert!(s.validated.lock().unwrap().as_ref().unwrap().identity == original);
}

#[test]
fn current_record_profile_can_prepare_but_cannot_publish_child_validation() {
    let s = seeded(2);
    let (m, record, _) = first_record();
    let raw = &record.bundle.as_ref().unwrap().record;
    assert_eq!(raw["record_version"], "0.8");
    assert_eq!(
        raw["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    assert!(raw.get("semantic_profile").is_none());
    let at = s.current().unwrap();
    s.validate_snapshot(&m, &at, &s.genesis_schema).unwrap();
    let before = s
        .validated
        .lock()
        .unwrap()
        .as_ref()
        .unwrap()
        .identity
        .clone();
    let pending = s
        .validate_incremental_child(&m, &at, &s.genesis_schema, &record)
        .unwrap();
    assert!(pending.is_some());
    assert!(s.validated.lock().unwrap().as_ref().unwrap().identity == before);
}

#[test]
fn pending_current_proof_refuses_changed_or_missing_record_version() {
    let (_, original, _) = first_record();
    for version in [
        None,
        Some("0.4"),
        Some("0.5"),
        Some("0.6"),
        Some("0.7"),
        Some("9.9"),
    ] {
        let mut record = original.clone();
        let raw = record
            .bundle
            .as_mut()
            .unwrap()
            .record
            .as_object_mut()
            .unwrap();
        match version {
            Some(v) => {
                raw.insert("record_version".into(), json!(v));
            }
            None => {
                raw.remove("record_version");
            }
        }
        // This is marker tampering of a current record, not a claim that the
        // altered bytes are a valid archived computation or an authorized commit.
        assert_current_profile_refused(&record, &format!("record_version {version:?}"));
    }
}

#[test]
fn pending_current_proof_refuses_changed_or_missing_validation_profile() {
    let (_, original, _) = first_record();
    for profile in [
        None,
        Some("behavior.complete_resulting_state.v2"),
        Some("archived"),
    ] {
        let mut record = original.clone();
        let raw = record
            .bundle
            .as_mut()
            .unwrap()
            .record
            .as_object_mut()
            .unwrap();
        match profile {
            Some(p) => {
                raw.insert("validation_profile".into(), json!(p));
            }
            None => {
                raw.remove("validation_profile");
            }
        }
        assert_current_profile_refused(&record, &format!("validation_profile {profile:?}"));
    }
}

#[test]
fn pending_current_proof_refuses_conflicting_language_profile() {
    let (_, original, _) = first_record();
    for profile in ["behavior.commands.v1", "unknown"] {
        let mut record = original.clone();
        record.bundle.as_mut().unwrap().record["semantic_profile"] = json!(profile);
        assert_current_profile_refused(&record, &format!("legacy module with {profile}"));
    }
}

#[test]
fn rebuilding_lost_materialization_preserves_current_record_and_exact_history() {
    let m = module();
    let mut s = seeded(2);
    let before = s
        .evaluate(
            &m,
            "set",
            &BTreeMap::from([("e".into(), "e0".into())]),
            &json!({}),
            &json!({}),
            "2026-09-27T12:00:00Z",
            None,
        )
        .unwrap();
    let at = s.current().unwrap();
    let expected_identity = s.snapshot_identity(&m, &at, &s.genesis_schema).unwrap();
    s.backend_mut();
    assert!(s.validated.lock().unwrap().is_none());
    let reopened = Store::open(s.into_backend()).unwrap();
    assert!(reopened.validated.lock().unwrap().is_none());
    let after = reopened
        .evaluate(
            &m,
            "set",
            &BTreeMap::from([("e".into(), "e0".into())]),
            &json!({}),
            &json!({}),
            "2026-09-27T12:00:00Z",
            None,
        )
        .unwrap();
    assert_eq!(before.record, after.record);
    assert_eq!(before.bundle, after.bundle);
    assert_eq!(after.record["record_version"], "0.8");
    assert_eq!(
        after.record["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    assert!(
        reopened
            .validated
            .lock()
            .unwrap()
            .as_ref()
            .unwrap()
            .identity
            == expected_identity
    );
}

#[test]
fn two_created_rows_discharge_synthesized_refs_against_one_child_state() {
    let mut w = wire();
    let l = json!({"file":"two-created-refs.beh","line":1});
    w["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"target","type":{"t":"option","of":{"t":"ref","entity":"E"}},"loc":l}));
    let m = behavior_core::admit(&w.to_string()).unwrap();
    assert!(super::dependency::local_module(&m));
    let s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(&m, crate::documents::EvidencePolicy::none(), vec![]),
    )
    .unwrap();
    let parent = s.validate_snapshot_full(&m, 0).unwrap();
    for target in ["right", "missing"] {
        let changed = BTreeMap::from([
            (
                key("E", "left"),
                json!({"id":"left","x":1,"y":2,"target":target}),
            ),
            (
                key("E", "right"),
                json!({"id":"right","x":1,"y":2,"target":"left"}),
            ),
        ]);
        let edits = changed
            .iter()
            .map(|(k, v)| (k.clone(), v.clone()))
            .collect::<Vec<_>>();
        let (rows, facts) = full_child(&s.backend, &m, 0, &edits, &[]);
        let candidate = super::candidate::Candidate {
            parent: &parent,
            changed,
        };
        let optimized =
            behavior_core::eval::check_behavior_snapshot(&m, &candidate.rows(), &candidate);
        let full = behavior_core::eval::check_behavior_snapshot(&m, &rows, &facts);
        assert_eq!(optimized, full);
        // All local x constraints are true; the only invalid control is the
        // explicitly absent target. Both legitimate targets are newly created.
        assert_eq!(optimized.is_ok(), target == "right");
        assert!(!parent.exists("E", "left").unwrap());
        assert!(!parent.exists("E", "right").unwrap());
    }
}

#[test]
fn actual_removal_record_has_no_incremental_carry_forward() {
    let mut w = wire();
    let l = json!({"file":"no-removal-carry.beh","line":1});
    w["actions"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"remove","loc":l,
        "params":[{"name":"e","role":"state","type":{"t":"entity","name":"E"}}],
        "preconditions":[],"postconditions":[],"effects":[{"remove":"e","loc":l}]}));
    let m = behavior_core::admit(&w.to_string()).unwrap();
    assert!(super::dependency::local_module(&m));
    let make = || {
        Store::create(
            InMemoryBackend::new(),
            &m,
            genesis_for(
                &m,
                crate::documents::EvidencePolicy::none(),
                (0..2)
                    .map(|i| crate::documents::SeedEntity {
                        entity: "E".into(),
                        value: json!({"id":format!("e{i}"),"x":1,"y":2}),
                    })
                    .collect(),
            ),
        )
        .unwrap()
    };
    let s = make();
    let mut writer = make();
    let evaluated = writer
        .evaluate(
            &m,
            "remove",
            &BTreeMap::from([("e".into(), "e1".into())]),
            &json!({}),
            &json!({}),
            "2026-09-27T12:00:00Z",
            None,
        )
        .unwrap();
    assert_eq!(evaluated.record["result"], "ALLOW");
    let bundle = evaluated.bundle.unwrap();
    writer.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
    let record = writer.backend.record(1).unwrap().unwrap();
    assert_eq!(record.removed.len(), 1);
    let at = s.current().unwrap();
    assert!(
        s.validate_incremental_child(&m, &at, &s.genesis_schema, &record)
            .unwrap()
            .is_none()
    );
}

#[test]
fn actual_global_query_record_is_ineligible_for_incremental_carry_forward() {
    let mut w = wire();
    let l = json!({"file":"no-global-carry.beh","line":1});
    w["invariants"] = json!([{"name":"population","loc":l,"body":{"op":"gt","loc":l,
        "args":[{"op":"count","args":[{"op":"select","entity":"E","loc":l}],"loc":l},
            {"op":"lit","type":{"t":"int"},"value":0,"loc":l}]}}]);
    let m = behavior_core::admit(&w.to_string()).unwrap();
    assert!(!super::dependency::local_module(&m));
    let make = || {
        Store::create(
            InMemoryBackend::new(),
            &m,
            genesis_for(
                &m,
                crate::documents::EvidencePolicy::none(),
                (0..2)
                    .map(|i| crate::documents::SeedEntity {
                        entity: "E".into(),
                        value: json!({"id":format!("e{i}"),"x":1,"y":2}),
                    })
                    .collect(),
            ),
        )
        .unwrap()
    };
    let s = make();
    let mut writer = make();
    let evaluated = writer
        .evaluate(
            &m,
            "set",
            &BTreeMap::from([("e".into(), "e0".into())]),
            &json!({}),
            &json!({}),
            "2026-09-27T12:00:00Z",
            None,
        )
        .unwrap();
    assert_eq!(evaluated.record["result"], "ALLOW");
    let bundle = evaluated.bundle.unwrap();
    writer.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
    let record = writer.backend.record(1).unwrap().unwrap();
    let at = s.current().unwrap();
    assert!(
        s.validate_incremental_child(&m, &at, &s.genesis_schema, &record)
            .unwrap()
            .is_none()
    );
}
