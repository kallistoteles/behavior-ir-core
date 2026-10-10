#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Feature 015: differential lifecycle and committed derivative materialization.
mod common;
use behavior_core::read::ReadSource;
use behavior_core::semantic::module::Module;
use behavior_store::documents::*;
use behavior_store::store::genesis_for;
use behavior_store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store};
use proptest::prelude::*;
use serde_json::{Value, json};
use std::cell::Cell;

#[derive(Default)]
struct Counted {
    inner: InMemoryBackend,
    keys: Cell<usize>,
    versions: Cell<usize>,
    fail_keys: Cell<bool>,
    refuse: bool,
    fail_commit: bool,
    uncertain: bool,
    fault: Cell<Option<&'static str>>,
    used_calls: Cell<usize>,
    fail_used_on: Cell<usize>,
}
impl Counted {
    fn reset(&self) {
        self.keys.set(0);
        self.versions.set(0);
    }
}
impl Backend for Counted {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        if self.fault.get() == Some("head") {
            return Err(BackendError("head injected".into()));
        }
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
        if self.fault.get() == Some("version_at") {
            return Err(BackendError("version_at injected".into()));
        }
        if self.fault.get() == Some("unrelated") && k.id == "e1" {
            return Err(BackendError("unrelated injected".into()));
        }
        self.versions.set(self.versions.get() + 1);
        self.inner.version_at(k, p)
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version(k, r)
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        if self.fault.get() == Some("record") {
            return Err(BackendError("record injected".into()));
        }
        self.inner.record(p)
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        if self.fault.get() == Some("removed_at") {
            return Err(BackendError("removed_at injected".into()));
        }
        self.inner.removed_at(k)
    }
    fn incoming_at(&self, k: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        if self.fault.get() == Some("incoming_at") {
            return Err(BackendError("incoming_at injected".into()));
        }
        self.inner.incoming_at(k, p)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.keys.set(self.keys.get() + 1);
        if self.fail_keys.get() {
            return Err(BackendError("keys unavailable".into()));
        }
        self.inner.keys_at(t, p)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        self.used_calls.set(self.used_calls.get() + 1);
        if self.fault.get() == Some("used_at") || self.fail_used_on.get() == self.used_calls.get() {
            return Err(BackendError("used_at injected".into()));
        }
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
        if self.fail_commit {
            return Err(BackendError("commit unavailable".into()));
        }
        if self.refuse {
            return Ok(CasOutcome::HeadMoved);
        }
        let outcome = self.inner.commit(e, v, r, f, t, h)?;
        if self.uncertain {
            return Err(BackendError("lost commit acknowledgment".into()));
        }
        Ok(outcome)
    }
}

fn wire() -> Value {
    let mut w = common::json(&common::fixtures().join("soundness/module.json"));
    w["actions"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"n","role":"input","type":{"t":"int"}}));
    w["actions"][0]["effects"][0]["value"] =
        json!({"op":"param","param":"n","loc":{"file":"reuse.beh","line":1}});
    w
}
fn admit(w: &Value) -> Module {
    behavior_core::admit(&w.to_string()).unwrap()
}
fn seeded(m: &Module, n: usize) -> Store<Counted> {
    Store::create(
        Counted::default(),
        m,
        genesis_for(
            m,
            EvidencePolicy::none(),
            (0..n)
                .map(|i| SeedEntity {
                    entity: "E".into(),
                    value: json!({"id":format!("e{i}"),"x":1,"y":2}),
                })
                .collect(),
        ),
    )
    .unwrap()
}
fn evaluate(s: &Store<Counted>, m: &Module, x: i64) -> behavior_store::Evaluation {
    s.evaluate(
        m,
        "set",
        &common::bind(&[("e", "e0")]),
        &json!({"n":x}),
        &json!({}),
        common::T0,
        None,
    )
    .unwrap()
}
fn read_at(
    s: &Store<Counted>,
    m: &Module,
    at: Option<&StateRef>,
) -> behavior_core::read::ReadExecution {
    s.read(
        m,
        &ReadSource::Declared("ratio".into()),
        &common::bind(&[("e", "e0")]),
        &json!({}),
        &json!({}),
        at,
    )
    .unwrap()
}

fn lifecycle_wire() -> Value {
    let mut w = wire();
    let l = json!({"file":"delta.beh","line":1});
    let lit = |n| json!({"op":"lit","type":{"t":"int"},"value":n,"loc":l});
    w["actions"].as_array_mut().unwrap().extend([
        json!({"name":"create","loc":l,"params":[{"name":"id","role":"input","type":{"t":"id","entity":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"create":"E","id":{"op":"param","param":"id","loc":l},"fields":{"x":lit(1),"y":lit(2)},"loc":l}]}),
        json!({"name":"remove","loc":l,"params":[{"name":"e","role":"state","type":{"t":"entity","name":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"remove":"e","loc":l}]})
    ]);
    w
}
fn create(s: &Store<Counted>, m: &Module, id: &str) -> behavior_store::Evaluation {
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
fn remove(s: &Store<Counted>, m: &Module, id: &str) -> behavior_store::Evaluation {
    s.evaluate(
        m,
        "remove",
        &common::bind(&[("e", id)]),
        &json!({}),
        &json!({}),
        common::T0,
        None,
    )
    .unwrap()
}
#[test]
fn creates_carry_validity_but_removals_rebuild() {
    let m = admit(&lifecycle_wire());
    for n in [10, 100, 1000] {
        let mut s = seeded(&m, n);
        for i in 0..3 {
            let id = format!("new{i}");
            let b = create(&s, &m, &id).bundle.unwrap();
            s.backend().reset();
            s.commit(&m, &b.evaluated_state, &b).unwrap();
            read_at(&s, &m, None);
            assert_eq!(
                s.backend().keys.get(),
                0,
                "create/read scanned {n} entities"
            );
            assert!(s.backend().versions.get() < 10);
            let b = remove(&s, &m, &id).bundle.unwrap();
            s.backend().reset();
            s.commit(&m, &b.evaluated_state, &b).unwrap();
            read_at(&s, &m, None);
            assert_eq!(s.backend().keys.get(), 1, "removal must rebuild child");
            assert!(
                create(&s, &m, &id).bundle.is_none(),
                "deleted identity was reused"
            );
        }
    }
}
#[test]
fn global_obligations_preserve_full_validation_boundary() {
    let mut w = lifecycle_wire();
    let l = json!({"file":"delta.beh","line":1});
    w["invariants"] = json!([{"name":"exists_rows","loc":l,"body":{"op":"gt","loc":l,"args":[{"op":"count","args":[{"op":"select","entity":"E","loc":l}],"loc":l},{"op":"lit","type":{"t":"int"},"value":0,"loc":l}]}}]);
    let m = admit(&w);
    let mut s = seeded(&m, 10);
    let b = create(&s, &m, "new").bundle.unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    s.backend().reset();
    let actual = read_at(&s, &m, None).record;
    assert_eq!(
        s.backend().keys.get(),
        1,
        "global obligations must rebuild child"
    );
    s.backend_mut();
    assert_eq!(actual, read_at(&s, &m, None).record);
}
#[test]
fn failed_create_commit_never_publishes_candidate() {
    let m = admit(&lifecycle_wire());
    for fail in [false, true] {
        let mut s = seeded(&m, 10);
        s.backend_mut().fail_commit = fail;
        s.backend_mut().refuse = !fail;
        let parent = s.current().unwrap();
        let b = create(&s, &m, "new").bundle.unwrap();
        assert!(s.commit(&m, &b.evaluated_state, &b).is_err());
        assert_eq!(s.current().unwrap(), parent);
        assert_eq!(read_at(&s, &m, None).record.as_json()["value"], json!("2"));
        // Reopen rebuild is the reference authority after a refusal.
        let reopened = Store::open(s.into_backend()).unwrap();
        assert_eq!(
            read_at(&reopened, &m, None).record.as_json()["value"],
            json!("2")
        );
        assert!(create(&reopened, &m, "new").bundle.is_some());
    }
}
proptest! {
    #![proptest_config(ProptestConfig::with_cases(48))]
    #[test]
    fn lifecycle_sequences_equal_parent_reconstruction(ops in prop::collection::vec((0u8..3,0u8..6),1..16)) {
        let m=admit(&lifecycle_wire());let mut fast=seeded(&m,6);let mut full=seeded(&m,6);
        for (op,i) in ops {
            let id=format!("new{i}");full.backend_mut();
            let run=|s:&Store<Counted>|match op {0=>create(s,&m,&id),1 if s.load(&EntityKey {entity:"E".into(),id:id.clone()},&s.current().unwrap()).is_ok()=>remove(s,&m,&id),1=>evaluate(s,&m,0),_=>evaluate(s,&m,1+i64::from(i))};
            let a=run(&fast);let b=run(&full);prop_assert_eq!(&a.record,&b.record);prop_assert_eq!(&a.bundle,&b.bundle);
            if let (Some(a),Some(b))=(a.bundle,b.bundle) {
                prop_assert_eq!(fast.commit(&m,&a.evaluated_state,&a).unwrap(),full.commit(&m,&b.evaluated_state,&b).unwrap());
                prop_assert_eq!(fast.backend().head().unwrap(),full.backend().head().unwrap());
            }
            full.backend_mut();prop_assert_eq!(read_at(&fast,&m,None).record,read_at(&full,&m,None).record);
        }
    }
}

#[test]
fn incoming_reference_indexes_survive_create_detach_and_remove() {
    let mut w = lifecycle_wire();
    let l = json!({"file":"delta.beh","line":1});
    let optional = json!({"t":"option","of":{"t":"ref","entity":"E"}});
    w["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"target","type":optional,"loc":l}));
    w["actions"][1]["params"].as_array_mut().unwrap().push(
        json!({"name":"target","role":"input","type":{"t":"option","of":{"t":"id","entity":"E"}}}),
    );
    w["actions"][1]["effects"][0]["fields"]["target"] =
        json!({"op":"param","param":"target","loc":l});
    w["actions"].as_array_mut().unwrap().push(json!({"name":"detach","loc":l,"params":[{"name":"e","role":"state","type":{"t":"entity","name":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"target":{"param":"e","field":"target"},"value":{"op":"lit","type":{"t":"option","of":{"t":"id","entity":"E"}},"value":null,"loc":l},"loc":l}]}));
    let m = admit(&w);
    let seed = (0..10)
        .map(|i| SeedEntity {
            entity: "E".into(),
            value: json!({"id":format!("e{i}"),"x":1,"y":2,"target":null}),
        })
        .collect();
    let mut s = Store::create(
        Counted::default(),
        &m,
        genesis_for(&m, EvidencePolicy::none(), seed),
    )
    .unwrap();
    let b = s
        .evaluate(
            &m,
            "create",
            &Default::default(),
            &json!({"id":"source","target":"e0"}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    s.backend().reset();
    read_at(&s, &m, None);
    assert_eq!(s.backend().keys.get(), 0);
    assert!(
        remove(&s, &m, "e0").bundle.is_none(),
        "referenced target removal allowed"
    );
    let b = s
        .evaluate(
            &m,
            "detach",
            &common::bind(&[("e", "source")]),
            &json!({}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    let b = remove(&s, &m, "e0").bundle.unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    // Read another survivor after target/source edges changed, then compare rebuild.
    let run = |s: &Store<Counted>| {
        s.read(
            &m,
            &ReadSource::Declared("ratio".into()),
            &common::bind(&[("e", "e1")]),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record
    };
    s.backend().reset();
    let actual = run(&s);
    assert_eq!(s.backend().keys.get(), 1);
    s.backend_mut();
    assert_eq!(actual, run(&s));
}

#[test]
#[ignore = "release workload evidence; latency is not a semantic acceptance assertion"]
fn repeated_warm_update_read_and_create_read_workloads() {
    use std::time::Instant;
    let m = admit(&lifecycle_wire());
    for n in [100, 1000, 10000] {
        for reference in [false, true] {
            let mut s = seeded(&m, n);
            for workload in ["warm", "update_read", "create_read"] {
                for i in 0..7 {
                    if reference {
                        s.backend_mut();
                    }
                    s.backend().reset();
                    let pair = Instant::now();
                    let write = Instant::now();
                    if workload != "warm" {
                        let e = if workload == "update_read" {
                            evaluate(&s, &m, 2 + i)
                        } else {
                            create(&s, &m, &format!("new{i}"))
                        };
                        let b = e.bundle.unwrap();
                        s.commit(&m, &b.evaluated_state, &b).unwrap();
                    }
                    let write_us = if workload == "warm" {
                        0
                    } else {
                        write.elapsed().as_micros()
                    };
                    // The reference series explicitly rebuilds before every operation.
                    if reference {
                        s.backend_mut();
                    }
                    let read = Instant::now();
                    read_at(&s, &m, None);
                    let read_us = read.elapsed().as_micros();
                    eprintln!(
                        "{{\"model\":\"controlled\",\"n\":{n},\"reference\":{reference},\"workload\":\"{workload}\",\"sample\":{i},\"write_us\":{write_us},\"read_us\":{read_us},\"pair_us\":{},\"keys\":{},\"versions\":{}}}",
                        pair.elapsed().as_micros(),
                        s.backend().keys.get(),
                        s.backend().versions.get()
                    );
                }
            }
        }
    }
}

#[test]
fn lost_acknowledgment_rebuilds_the_actual_child_without_speculative_evidence() {
    let m = admit(&lifecycle_wire());
    let mut s = seeded(&m, 10);
    s.backend_mut().uncertain = true;
    let parent = s.current().unwrap();
    let b = create(&s, &m, "new").bundle.unwrap();
    assert!(s.commit(&m, &b.evaluated_state, &b).is_err());
    assert_ne!(s.current().unwrap(), parent);
    s.backend().reset();
    read_at(&s, &m, None);
    assert_eq!(
        s.backend().keys.get(),
        1,
        "an unacknowledged child proof was published"
    );
    s.backend().reset();
    read_at(&s, &m, None);
    assert_eq!(s.backend().keys.get(), 0);
    assert!(
        create(&s, &m, "new").bundle.is_none(),
        "committed identity forgotten after lost acknowledgment"
    );
}

/// Characterizes the pre-015 boundary; full-child validation belongs at existing sites.
#[test]
fn nonlocal_creation_preserves_014_refusal_boundary() {
    let mut w = lifecycle_wire();
    let l = json!({"file":"gap.beh","line":1});
    w["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"target","type":{"t":"id","entity":"E"},"loc":l}));
    w["constraints"][0]["body"] = json!({"op":"not","loc":l,"args":[{"op":"exists","loc":l,"args":[{"op":"field","param":"e","field":"target","loc":l}]}]});
    w["actions"]
        .as_array_mut()
        .unwrap()
        .iter_mut()
        .find(|a| a["name"] == "create")
        .unwrap()["effects"][0]["fields"]["target"] =
        json!({"op":"lit","type":{"t":"id","entity":"E"},"value":"absent","loc":l});
    let m = admit(&w);
    let seed = vec![SeedEntity {
        entity: "E".into(),
        value: json!({"id":"e0","x":1,"y":2,"target":"new"}),
    }];
    let mut s = Store::create(
        Counted::default(),
        &m,
        genesis_for(&m, EvidencePolicy::none(), seed),
    )
    .unwrap();
    let b = create(&s, &m, "new").bundle.unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    let error = s
        .read(
            &m,
            &ReadSource::Declared("ratio".into()),
            &common::bind(&[("e", "e0")]),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap_err();
    assert!(error.to_string().contains("STATE_INVALID"));
}

#[test]
fn fixed_workflow_semantic_projection() {
    let m = admit(&lifecycle_wire());
    let mut s = seeded(&m, 5);
    let mut projections = Vec::new();
    for op in 0..4 {
        let e = match op {
            0 => evaluate(&s, &m, 3),
            1 => create(&s, &m, "new"),
            2 => remove(&s, &m, "new"),
            _ => evaluate(&s, &m, 3),
        };
        projections.push(e.record.clone());
        let b = e.bundle.unwrap();
        let committed = s.commit(&m, &b.evaluated_state, &b).unwrap();
        projections.push(json!({"bundle":b,"record_id":committed.record_id,"state":committed.result_state,"read":read_at(&s,&m,None).record.to_json_string(),"history_record":s.backend().record(s.current().unwrap().position).unwrap()}));
    }
    eprintln!(
        "SEMANTIC_PROJECTION {}",
        serde_json::to_string(&projections).unwrap()
    );
}

#[test]
fn mandatory_backend_failures_and_redundant_omissions_keep_existing_routes() {
    let m = admit(&lifecycle_wire());
    let mut s = seeded(&m, 10);
    let b = create(&s, &m, "new").bundle.unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    read_at(&s, &m, None);
    s.backend().fault.set(Some("unrelated"));
    s.backend().fail_keys.set(true);
    // Already proven redundant universe and e1 reads may be omitted, even if they would fail.
    read_at(&s, &m, None);
    s.backend().fail_keys.set(false);
    s.backend().fault.set(None);
    for fault in ["head", "record"] {
        s.backend().fault.set(Some(fault));
        let error = s
            .read(
                &m,
                &ReadSource::Declared("ratio".into()),
                &common::bind(&[("e", "e0")]),
                &json!({}),
                &json!({}),
                None,
            )
            .unwrap_err();
        assert!(matches!(error, StoreError::Backend(_)), "{fault}: {error}");
        s.backend().fault.set(None);
    }
    for fault in ["version_at", "removed_at"] {
        s.backend().fault.set(Some(fault));
        assert!(matches!(
            s.load(
                &EntityKey {
                    entity: "E".into(),
                    id: "e0".into()
                },
                &s.current().unwrap()
            ),
            Err(StoreError::Backend(_))
        ));
        s.backend().fault.set(None);
    }
    let removal = remove(&s, &m, "e0").bundle.unwrap();
    s.backend().fault.set(Some("incoming_at"));
    assert!(matches!(
        s.commit(&m, &removal.evaluated_state, &removal),
        Err(StoreError::Backend(_))
    ));
    s.backend().fault.set(None);
    let b = create(&s, &m, "other").bundle.unwrap();
    s.backend().fault.set(Some("used_at"));
    let error = s.commit(&m, &b.evaluated_state, &b).unwrap_err();
    assert!(
        matches!(error, StoreError::BundleInvalid(_)),
        "rederivation route: {error:?}"
    );
    assert_eq!(s.current().unwrap().position, 1);
    s.backend().fault.set(None);
    s.backend().used_calls.set(0);
    s.backend().fail_used_on.set(2);
    let error = s.commit(&m, &b.evaluated_state, &b).unwrap_err();
    assert!(
        matches!(error, StoreError::Backend(_)),
        "freshness route: {error:?}"
    );
    s.backend().fail_used_on.set(0);
    s.backend().fault.set(Some("used_at"));
    let observed = s.evaluate(
        &m,
        "create",
        &Default::default(),
        &json!({"id":"third"}),
        &json!({}),
        common::T0,
        None,
    );
    // This fact-provider failure must follow the existing evaluator route, never an ALLOW.
    match observed {
        Ok(e) => {
            assert!(e.bundle.is_none());
            assert!(e.record.to_string().contains("used_at injected"));
        }
        Err(e) => assert!(e.to_string().contains("used_at injected")),
    }
}
