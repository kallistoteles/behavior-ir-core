#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: response success, durable authority and speculative reuse are distinct.
mod common;
use behavior_core::{read::ReadSource, semantic::module::Module};
use behavior_store::commands::CommandStreamRequest;
use behavior_store::documents::*;
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use serde_json::{Value, json};
use std::cell::Cell;

#[derive(Default)]
struct Faults {
    inner: InMemoryBackend,
    keys: Cell<usize>,
    versions: Cell<usize>,
    commits: usize,
    fault: Cell<Option<&'static str>>,
}
impl Faults {
    fn reset(&self) {
        self.keys.set(0);
        self.versions.set(0);
    }
}
impl Backend for Faults {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        self.inner.head()
    }
    fn create(
        &mut self,
        g: &Genesis,
        h: &Head,
        s: &[EntityVersion],
        r: &[RefChange],
    ) -> Result<(), BackendError> {
        self.inner.create(g, h, s, r)
    }
    fn version_at(&self, k: &EntityKey, p: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.versions.set(self.versions.get() + 1);
        self.inner.version_at(k, p)
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version(k, r)
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.inner.record(p)
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(k)
    }
    fn incoming_at(&self, k: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.inner.incoming_at(k, p)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.keys.set(self.keys.get() + 1);
        self.inner.keys_at(t, p)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        self.inner.used_at(k, p)
    }
    fn commit(
        &mut self,
        e: &str,
        v: &[EntityVersion],
        r: &[EntityKey],
        f: &[RefChange],
        t: &TransitionRecord,
        h: &Head,
    ) -> Result<CasOutcome, BackendError> {
        self.commits += 1;
        if self.fault.get() == Some("cas") {
            return Ok(CasOutcome::HeadMoved);
        }
        if self.fault.get() == Some("prewrite") {
            return Err(BackendError("prewrite injected".into()));
        }
        let result = self.inner.commit(e, v, r, f, t, h)?;
        if self.fault.get() == Some("lost_ack") && result == CasOutcome::Applied {
            return Err(BackendError("lost acknowledgment injected".into()));
        }
        Ok(result)
    }
}
fn wire(version: &str) -> Value {
    let mut w = common::json(&common::fixtures().join("soundness/module.json"));
    let l = json!({"file":"017-faults.beh","line":1});
    let lit = |n| json!({"op":"lit","type":{"t":"int"},"value":n,"loc":l});
    w["ir_version"] = json!(version);
    w["actions"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"n","role":"input","type":{"t":"int"}}));
    w["actions"][0]["effects"][0]["value"] = json!({"op":"param","param":"n","loc":l});
    w["actions"].as_array_mut().unwrap().extend([
        json!({"name":"create","loc":l,"params":[{"name":"id","role":"input","type":{"t":"id","entity":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"create":"E","id":{"op":"param","param":"id","loc":l},"fields":{"x":lit(1),"y":lit(2)},"loc":l}]}),
        json!({"name":"remove","loc":l,"params":[{"name":"e","role":"state","type":{"t":"entity","name":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"remove":"e","loc":l}]})
    ]);
    if version == "0.8" {
        w["commands"] = json!([{"name":"Receipt","fields":[{"name":"message","type":{"t":"string"},"loc":l}],"loc":l}]);
        let c = json!({"command":"Receipt","payload":{"message":{"op":"lit","type":{"t":"string"},"value":"receipt","loc":l}},"loc":l});
        for a in w["actions"].as_array_mut().unwrap() {
            a["command_effects"] = json!([c.clone(), c.clone()]);
        }
    }
    w
}
fn module(version: &str) -> Module {
    behavior_core::admit(&wire(version).to_string()).unwrap()
}
fn seeded(m: &Module) -> Store<Faults> {
    let seed = (0..10)
        .map(|i| SeedEntity {
            entity: "E".into(),
            value: json!({"id":format!("e{i}"),"x":1,"y":2}),
        })
        .collect();
    let genesis = if behavior_core::serialize::to_wire_value(m)["ir_version"] == "0.8" {
        let policy = EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
        genesis_v2_for(m, policy, seed).unwrap()
    } else {
        genesis_for(m, EvidencePolicy::none(), seed)
    };
    Store::create(Faults::default(), m, genesis).unwrap()
}
fn key(id: &str) -> EntityKey {
    EntityKey {
        entity: "E".into(),
        id: id.into(),
    }
}
fn read(s: &Store<Faults>, m: &Module) -> behavior_core::read::ReadExecution {
    s.read(
        m,
        &ReadSource::Declared("ratio".into()),
        &common::bind(&[("e", "e0")]),
        &json!({}),
        &json!({}),
        None,
    )
    .unwrap()
}
fn create(s: &Store<Faults>, m: &Module, id: &str) -> behavior_store::Evaluation {
    s.evaluate(
        m,
        "create",
        &Default::default(),
        &json!({"id":id}),
        &json!({}),
        common::T0,
        None,
    )
    .unwrap()
}
fn set(s: &Store<Faults>, m: &Module, id: &str, n: i64) -> behavior_store::Evaluation {
    s.evaluate(
        m,
        "set",
        &common::bind(&[("e", id)]),
        &json!({"n":n}),
        &json!({}),
        common::T0,
        None,
    )
    .unwrap()
}
fn authority(s: &Store<Faults>) -> Value {
    let head = s.backend().head().unwrap().unwrap();
    let p = head.state_ref.position;
    let keys = s.backend().keys_at("E", p).unwrap();
    let values: Vec<_> = keys
        .iter()
        .map(|k| s.backend().version_at(k, p).unwrap())
        .collect();
    let records: Vec<_> = (1..=p + 1)
        .map(|p| s.backend().record(p).unwrap())
        .collect();
    let identities: Vec<_> = ["e0","e1","new","temporary","fresh"].iter().map(|id|json!({"id":id,"used":s.backend().used_at(&key(id),p).unwrap(),"removed":s.backend().removed_at(&key(id)).unwrap(),"incoming":s.backend().incoming_at(&key(id),p).unwrap().iter().map(RefEdge::to_json).collect::<Vec<_>>() })).collect();
    json!({"head":head,"genesis":s.backend().genesis().unwrap(),"keys":keys,"values":values,"records":records,"identities":identities})
}
fn commands(s: &Store<Faults>, after: &HistoryRef) -> Vec<Value> {
    let request = CommandStreamRequest::from_json(
        &json!({"format":"behavior.command_stream_request.v1","after":after,"max_records":256})
            .to_string(),
    )
    .unwrap();
    s.commands_since(&request)
        .unwrap()
        .items()
        .iter()
        .map(|c| c.as_json())
        .collect()
}
fn duplicate_occurrences(items: &[Value], position: u64) {
    assert_eq!(items.len(), 2);
    assert_eq!(items[0]["intent"], items[1]["intent"]);
    assert_ne!(
        items[0]["command_occurrence_id"],
        items[1]["command_occurrence_id"]
    );
    assert_eq!(items[0]["history_position"], position);
    assert_eq!(items[1]["history_position"], position);
    assert_eq!(items[0]["multiplicity_index"], 0);
    assert_eq!(items[1]["multiplicity_index"], 1);
}

#[test]
fn valid_candidates_that_do_not_apply_publish_neither_child_cache_nor_commands() {
    for version in ["0.7", "0.8"] {
        for fault in ["cas", "prewrite"] {
            let m = module(version);
            let mut s = seeded(&m);
            let parent_read = read(&s, &m).record;
            let start = s.current_history().unwrap();
            let before = authority(&s);
            let b = create(&s, &m, "new").bundle.unwrap();
            assert_eq!(authority(&s), before);
            if version == "0.8" {
                assert!(commands(&s, &start).is_empty());
                assert_eq!(b.record["commands"]["intents"].as_array().unwrap().len(), 2);
            }
            // Interior fault controls preserve the live parent cache; backend_mut would mask publication defects.
            s.backend().fault.set(Some(fault));
            let result = s.commit(&m, &b.evaluated_state, &b);
            assert!(result.is_err(), "{fault} unexpectedly applied");
            assert_eq!(authority(&s), before);
            assert!(!s.backend().used_at(&key("new"), 0).unwrap());
            assert_eq!(s.backend().commits, 1);
            if version == "0.8" {
                assert!(commands(&s, &start).is_empty());
            }
            s.backend().reset();
            assert_eq!(read(&s, &m).record, parent_read);
            assert_eq!(
                s.backend().keys.get(),
                0,
                "failed candidate displaced the valid parent"
            );
            s.backend().fault.set(None);
            let applied = s.commit(&m, &b.evaluated_state, &b).unwrap();
            assert!(!applied.already);
            assert_eq!(s.backend().commits, 2);
            assert_eq!(s.current().unwrap().position, 1);
            if version == "0.8" {
                duplicate_occurrences(&commands(&s, &start), 1);
            }
            s.backend().reset();
            read(&s, &m);
            assert_eq!(
                s.backend().keys.get(),
                0,
                "successful exact child was not carried"
            );
        }
    }
}

#[test]
fn lost_acknowledgment_preserves_one_durable_event_and_recovery_publishes_no_speculative_certificate()
 {
    let m = module("0.8");
    let mut s = seeded(&m);
    read(&s, &m);
    let start = s.current_history().unwrap();
    let b = create(&s, &m, "new").bundle.unwrap();
    assert!(commands(&s, &start).is_empty());
    s.backend().fault.set(Some("lost_ack"));
    let error = s.commit(&m, &b.evaluated_state, &b).unwrap_err();
    assert!(
        matches!(error,StoreError::Backend(ref message) if message.contains("lost acknowledgment")),
        "{error:?}"
    );
    assert_eq!(s.current().unwrap().position, 1);
    assert!(s.backend().used_at(&key("new"), 1).unwrap());
    let durable = authority(&s);
    let occurrences = commands(&s, &start);
    duplicate_occurrences(&occurrences, 1);
    assert_eq!(s.backend().commits, 1);
    s.backend().fault.set(None);
    let recovered = s.commit(&m, &b.evaluated_state, &b).unwrap();
    assert!(recovered.already);
    assert_eq!(s.backend().commits, 1);
    assert_eq!(authority(&s), durable);
    assert_eq!(
        commands(&s, &start),
        occurrences,
        "retry created or renamed command occurrences"
    );
    // The uncertain response never ran successful child carry. Recovery rederives the original parent;
    // the first child read must establish its own full certificate from actual committed history.
    s.backend().reset();
    let first = read(&s, &m);
    assert_eq!(s.backend().keys.get(), 1);
    assert_eq!(s.backend().versions.get(), 11);
    s.backend().reset();
    assert_eq!(read(&s, &m).record, first.record);
    assert_eq!((s.backend().keys.get(), s.backend().versions.get()), (0, 0));
    let used = create(&s, &m, "new");
    assert!(used.bundle.is_none());
    assert_eq!(used.record["result"], "ENTITY_ID_ALREADY_USED");
    assert_eq!(authority(&s), durable);
    assert_eq!(commands(&s, &start), occurrences);
}

#[test]
fn lost_acknowledgment_without_recovery_rebuilds_the_actual_child_before_reuse() {
    let m = module("0.7");
    let mut s = seeded(&m);
    read(&s, &m);
    let b = set(&s, &m, "e0", 2).bundle.unwrap();
    s.backend().fault.set(Some("lost_ack"));
    assert!(s.commit(&m, &b.evaluated_state, &b).is_err());
    assert_eq!(s.current().unwrap().position, 1);
    s.backend().reset();
    let child = read(&s, &m);
    assert_eq!(child.record.as_json()["value"], "1");
    assert_eq!(
        (s.backend().keys.get(), s.backend().versions.get()),
        (1, 10)
    );
    s.backend().reset();
    assert_eq!(read(&s, &m).record, child.record);
    assert_eq!((s.backend().keys.get(), s.backend().versions.get()), (0, 0));
}

#[test]
fn an_invalid_child_never_produces_a_committable_candidate_or_command_occurrence() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let s = seeded(&m);
        let parent = read(&s, &m).record;
        let start = s.current_history().unwrap();
        let before = authority(&s);
        // Direct model predicate x > 0 is false in the proposed child e0.x=0.
        let child_x = 0_i64;
        assert!(!(child_x > 0));
        let invalid = set(&s, &m, "e0", child_x);
        assert_eq!(invalid.record["result"], "DENY");
        assert_eq!(invalid.record["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
        assert!(invalid.bundle.is_none());
        assert_eq!(s.backend().commits, 0);
        assert_eq!(authority(&s), before);
        if version == "0.8" {
            assert!(
                invalid.record["commands"]["intents"]
                    .as_array()
                    .unwrap()
                    .is_empty()
            );
            assert!(commands(&s, &start).is_empty());
        }
        s.backend().reset();
        assert_eq!(read(&s, &m).record, parent);
        assert_eq!(s.backend().keys.get(), 0);
    }
}

#[test]
fn stale_whole_state_candidate_cannot_replace_the_committed_child_certificate() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m);
        let pending = set(&s, &m, "e0", 2).bundle.unwrap();
        let actual = set(&s, &m, "e1", 3).bundle.unwrap();
        s.commit(&m, &actual.evaluated_state, &actual).unwrap();
        let before = authority(&s);
        let committed_read = read(&s, &m).record;
        let error = s
            .commit(&m, &pending.evaluated_state, &pending)
            .unwrap_err();
        assert!(error.to_string().contains("STATE_CONFLICT"), "{error:?}");
        assert_eq!(authority(&s), before);
        assert_eq!(s.backend().commits, 1);
        s.backend().reset();
        assert_eq!(read(&s, &m).record, committed_read);
        assert_eq!(s.backend().keys.get(), 0);
    }
}

#[test]
fn removal_rebuilds_validity_without_forgetting_historical_identity_use() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m);
        let initial = s.current().unwrap();
        let b = create(&s, &m, "temporary").bundle.unwrap();
        s.commit(&m, &b.evaluated_state, &b).unwrap();
        let b = s
            .evaluate(
                &m,
                "remove",
                &common::bind(&[("e", "temporary")]),
                &json!({}),
                &json!({}),
                common::T0,
                None,
            )
            .unwrap()
            .bundle
            .unwrap();
        s.commit(&m, &b.evaluated_state, &b).unwrap();
        s.backend().reset();
        read(&s, &m);
        assert_eq!(
            (s.backend().keys.get(), s.backend().versions.get()),
            (1, 10)
        );
        let current = s.current().unwrap();
        assert_eq!(initial.state, current.state);
        assert_ne!(initial.position, current.position);
        assert!(
            s.backend()
                .used_at(&key("temporary"), current.position)
                .unwrap()
        );
        assert!(
            !s.backend()
                .used_at(&key("temporary"), initial.position)
                .unwrap()
        );
        let before = authority(&s);
        let reused = create(&s, &m, "temporary");
        assert_eq!(reused.record["result"], "ENTITY_ID_ALREADY_USED");
        assert!(reused.bundle.is_none());
        assert_eq!(authority(&s), before);
        let fresh = create(&s, &m, "fresh").bundle.unwrap();
        s.commit(&m, &fresh.evaluated_state, &fresh).unwrap();
        assert!(s.backend().used_at(&key("fresh"), 3).unwrap());
        s.backend().reset();
        read(&s, &m);
        assert_eq!(s.backend().keys.get(), 0);
    }
}
