#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Feature 014: observable semantics and backend-call work, not timing assertions.
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
        if self.fail_keys.get() {
            return Err(BackendError("keys unavailable".into()));
        }
        self.inner.keys_at(t, p)
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
        self.inner.commit(e, v, r, f, t, h)
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

#[test]
fn same_snapshot_validation_is_reused_by_reads_and_evaluations() {
    let m = admit(&wire());
    let s = seeded(&m, 100);
    let first = read_at(&s, &m, None);
    s.backend().reset();
    assert_eq!(read_at(&s, &m, None).record, first.record);
    assert_eq!(
        s.backend().keys.get(),
        0,
        "warm read enumerated the universe"
    );
    assert_eq!(s.backend().versions.get(), 0, "warm read reloaded values");
    let e = evaluate(&s, &m, 2);
    assert!(e.bundle.is_some());
    assert_eq!(
        s.backend().keys.get(),
        0,
        "warm evaluation enumerated the universe"
    );
    assert!(s.backend().versions.get() < 10);
}

#[test]
fn local_commit_carries_validity_without_reading_the_universe() {
    let m = admit(&wire());
    for n in [10, 100, 1000] {
        let mut s = seeded(&m, n);
        let e = evaluate(&s, &m, 2);
        s.backend().reset();
        let b = e.bundle.unwrap();
        s.commit(&m, &b.evaluated_state, &b).unwrap();
        assert_eq!(s.backend().keys.get(), 0, "commit revalidated {n} entities");
        assert!(s.backend().versions.get() < 10);
        s.backend().reset();
        let r = read_at(&s, &m, None);
        assert_eq!(r.record.as_json()["value"], json!("1"));
        assert_eq!(s.backend().keys.get(), 0, "child validity was not retained");
        assert_eq!(s.backend().versions.get(), 0);
    }
}

#[test]
fn mutable_backend_access_and_open_start_cold_and_propagate_errors() {
    let m = admit(&wire());
    let mut s = seeded(&m, 10);
    read_at(&s, &m, None);
    s.backend_mut().fail_keys.set(true);
    assert!(
        s.read(
            &m,
            &ReadSource::Declared("ratio".into()),
            &common::bind(&[("e", "e0")]),
            &json!({}),
            &json!({}),
            None
        )
        .is_err()
    );
    s.backend().fail_keys.set(false);
    read_at(&s, &m, None);
    let s = Store::open(s.into_backend()).unwrap();
    s.backend().reset();
    read_at(&s, &m, None);
    assert_eq!(s.backend().keys.get(), 1);
    assert_eq!(s.backend().versions.get(), 10);
}

#[test]
fn behavior_change_with_same_schema_never_reuses_validation() {
    let m = admit(&wire());
    let s = seeded(&m, 10);
    read_at(&s, &m, None);
    let mut w = wire();
    w["constraints"][0]["body"]["args"][1]["value"] = json!(1);
    let stronger = admit(&w);
    assert_eq!(
        behavior_core::schema(&m).hash,
        behavior_core::schema(&stronger).hash
    );
    s.backend().reset();
    assert!(
        s.evaluate(
            &stronger,
            "set",
            &common::bind(&[("e", "e0")]),
            &json!({"n":2}),
            &json!({}),
            common::T0,
            None
        )
        .is_err()
    );
    assert_eq!(s.backend().keys.get(), 1);
}

#[test]
fn failed_cas_or_backend_commit_never_establishes_child_validity() {
    let m = admit(&wire());
    for backend_error in [false, true] {
        let mut s = seeded(&m, 10);
        s.backend_mut().refuse = !backend_error;
        s.backend_mut().fail_commit = backend_error;
        let original = s.backend().head().unwrap();
        let b = evaluate(&s, &m, 2).bundle.unwrap();
        assert!(s.commit(&m, &b.evaluated_state, &b).is_err());
        assert_eq!(s.backend().head().unwrap(), original);
        assert_eq!(read_at(&s, &m, None).record.as_json()["value"], json!("2"));
    }
}

#[test]
fn global_rule_models_reuse_only_the_same_snapshot() {
    let mut w = wire();
    let l = json!({"file":"reuse.beh","line":1});
    w["invariants"] = json!([{"name":"at_least_one","loc":l,"body":{"op":"gt","loc":l,"args":[{"op":"count","args":[{"op":"select","entity":"E","loc":l}],"loc":l},{"op":"lit","type":{"t":"int"},"value":0,"loc":l}]}}]);
    let m = admit(&w);
    let mut s = seeded(&m, 10);
    read_at(&s, &m, None);
    s.backend().reset();
    read_at(&s, &m, None);
    assert_eq!(s.backend().keys.get(), 0);
    let b = evaluate(&s, &m, 2).bundle.unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    s.backend().reset();
    read_at(&s, &m, None);
    assert!(
        s.backend().keys.get() > 0,
        "global model was certified by local path"
    );
}

#[test]
fn derived_and_reference_models_do_not_carry_child_validity() {
    for reference in [false, true] {
        let mut w = wire();
        let l = json!({"file":"reuse.beh","line":1});
        if reference {
            w["entities"][0]["fields"].as_array_mut().unwrap().push(json!({"name":"target","type":{"t":"option","of":{"t":"ref","entity":"E"}},"loc":l}));
        } else {
            w["derived"] = json!([{"name":"indirect","kind":"derived","params":[{"name":"e","type":{"t":"entity","name":"E"}}],"body":w["constraints"][0]["body"],"loc":l}]);
        }
        let m = admit(&w);
        let seed = (0..10)
            .map(|i| {
                let mut value = json!({"id":format!("e{i}"),"x":1,"y":2});
                if reference {
                    value["target"] = Value::Null;
                }
                SeedEntity {
                    entity: "E".into(),
                    value,
                }
            })
            .collect();
        let mut s = Store::create(
            Counted::default(),
            &m,
            genesis_for(&m, EvidencePolicy::none(), seed),
        )
        .unwrap();
        let b = evaluate(&s, &m, 2).bundle.unwrap();
        s.commit(&m, &b.evaluated_state, &b).unwrap();
        s.backend().reset();
        read_at(&s, &m, None);
        assert!(
            s.backend().keys.get() > 0,
            "nonlocal model was carried across commit"
        );
    }
}

#[test]
fn same_content_at_different_positions_keeps_distinct_lifetime_facts() {
    use behavior_core::invocation::RequestedInvocation;
    let mut w = wire();
    let l = json!({"file":"reuse.beh","line":1});
    let lit = |n| json!({"op":"lit","type":{"t":"int"},"value":n,"loc":l});
    w["actions"].as_array_mut().unwrap().extend([
        json!({"name":"create","loc":l,"params":[{"name":"id","role":"input","type":{"t":"id","entity":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"create":"E","id":{"op":"param","param":"id","loc":l},"fields":{"x":lit(1),"y":lit(2)},"loc":l}]}),
        json!({"name":"remove","loc":l,"params":[{"name":"e","role":"state","type":{"t":"entity","name":"E"}}],"preconditions":[],"postconditions":[],"effects":[{"remove":"e","loc":l}]})
    ]);
    let m = admit(&w);
    let mut s = seeded(&m, 10);
    let initial = s.current().unwrap();
    let b = s
        .evaluate(
            &m,
            "create",
            &Default::default(),
            &json!({"id":"temporary"}),
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
    assert_eq!(
        s.backend().keys.get(),
        1,
        "creation used local-update certificate"
    );
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
    read_at(&s, &m, None);
    assert_eq!(
        s.backend().keys.get(),
        1,
        "removal used local-update certificate"
    );
    let current = s.current().unwrap();
    assert_eq!(initial.state, current.state);
    assert_ne!(initial.position, current.position);
    let req = RequestedInvocation::decode(&json!({"format":"behavior.invocation.v1","capability":"create","bindings":{},"input":{"id":"temporary"},"context":{}}).to_string()).unwrap().0.unwrap();
    let now = s.invoke(&m, &req, common::T0, None, None).unwrap();
    assert_eq!(
        now.record.as_json()["outcome"]["record"]["result"],
        "ENTITY_ID_ALREADY_USED"
    );
    s.backend().reset();
    let then = s
        .invoke(&m, &req, common::T0, None, Some(&initial))
        .unwrap();
    assert_eq!(
        then.record.as_json()["outcome"]["record"]["result"],
        "ALLOW"
    );
    assert!(then.bundle.is_none());
    assert_eq!(
        s.backend().keys.get(),
        1,
        "content equality reused a different position"
    );
    assert!(
        s.replay_invocation(&m, &then.record.to_json_string())
            .unwrap()
            .matches
    );
}

#[test]
fn cache_preserves_send_sync_and_concurrent_read_results() {
    fn assert_send_sync<T: Send + Sync>() {}
    assert_send_sync::<Store<InMemoryBackend>>();
    let m = admit(&wire());
    let s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "E".into(),
                value: json!({"id":"e0","x":1,"y":2}),
            }],
        ),
    )
    .unwrap();
    std::thread::scope(|scope| {
        let run = || {
            s.read(
                &m,
                &ReadSource::Declared("ratio".into()),
                &common::bind(&[("e", "e0")]),
                &json!({}),
                &json!({}),
                None,
            )
            .unwrap()
            .record
        };
        let threads: Vec<_> = (0..8).map(|_| scope.spawn(run)).collect();
        for t in threads {
            assert_eq!(t.join().unwrap(), run());
        }
    });
}

#[test]
#[ignore = "release-profile validation benchmark; timings are evidence, not a CI assertion"]
fn release_snapshot_validation_measurements() {
    use std::time::Instant;
    let m = admit(&wire());
    for n in [100, 1000, 10000] {
        let mut s = seeded(&m, n);
        let mut read = Vec::new();
        let mut eval = Vec::new();
        let mut commit = Vec::new();
        let mut cold = Vec::new();
        for i in 0..7 {
            // Local commits test carry-forward on every iteration.
            let t = Instant::now();
            let e = evaluate(&s, &m, 2 + i);
            eval.push(t.elapsed());
            let b = e.bundle.unwrap();
            let t = Instant::now();
            s.commit(&m, &b.evaluated_state, &b).unwrap();
            commit.push(t.elapsed());
            let t = Instant::now();
            read_at(&s, &m, None);
            read.push(t.elapsed());
            s.backend_mut(); // explicit reference-path invalidation
            let t = Instant::now();
            read_at(&s, &m, None);
            cold.push(t.elapsed());
        }
        for values in [&mut eval, &mut commit, &mut read, &mut cold] {
            values.sort();
        }
        eprintln!(
            "N={n}: median evaluate={:?} commit={:?} warm_read={:?} cold_read={:?}",
            eval[3], commit[3], read[3], cold[3]
        );
    }
}

proptest! {
    #![proptest_config(ProptestConfig::with_cases(64))]
    #[test]
    fn warm_sequences_match_full_validation(xs in prop::collection::vec(-2i64..12,1..12), n in 1usize..12) {
        let m = admit(&wire());
        let mut fast = seeded(&m,n);
        let mut full = seeded(&m,n);
        for x in xs {
            // Mutable access intentionally clears only the reference store's cache.
            full.backend_mut();
            let a = evaluate(&fast,&m,x);
            let b = evaluate(&full,&m,x);
            prop_assert_eq!(&a.record,&b.record);
            prop_assert_eq!(&a.bundle,&b.bundle);
            if let (Some(a),Some(b)) = (a.bundle,b.bundle) {
                prop_assert_eq!(fast.commit(&m,&a.evaluated_state,&a).unwrap(), full.commit(&m,&b.evaluated_state,&b).unwrap());
                prop_assert_eq!(fast.backend().head().unwrap(),full.backend().head().unwrap());
            }
            full.backend_mut();
            let a = read_at(&fast,&m,None);
            let b = read_at(&full,&m,None);
            prop_assert_eq!(&a.record,&b.record);
            prop_assert!(behavior_core::read::replay_read(&m,&a.record.to_json_string()).matches);
        }
    }
}
