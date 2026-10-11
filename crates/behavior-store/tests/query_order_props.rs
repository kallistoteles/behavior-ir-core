#![allow(clippy::unwrap_used, clippy::expect_used)]

//! SC-002 and SC-008 (feature 007): the backend's iteration order and its indexes never leak into
//! behavior. 1,000 permutations of the order in which `keys_at` and `keys_by_field_at` list keys,
//! with and without the field index (a rebuilt or missing index), give identical results, traces
//! and records, and behavior replay agrees. Run with
//! `cargo test --release -p behavior-store --test query_order_props -- --ignored`.

mod common;

use std::cell::Cell;
use std::collections::BTreeMap;

use behavior_core::read::{ReadSource, admit_read, evaluate_read_with};
use behavior_core::semantic::module::Module;
use behavior_store::documents::{
    EntityKey, EntityVersion, Genesis, Head, RefChange, TransitionRecord, data_version,
};
use behavior_store::replay::replay_behavior;
use behavior_store::store::StoreFacts;
use behavior_store::{
    Backend, BackendError, CasOutcome, Evaluation, InMemoryBackend, RefEdge, Store,
};
use common::*;
use serde_json::{Value, json};

/// A read-only view of a backend that permutes key listings with `seed` and optionally hides
/// the field index.
struct Permuted<'a> {
    inner: &'a InMemoryBackend,
    seed: u64,
    indexed: bool,
    counters: Counters,
}

#[derive(Default)]
struct Counters {
    enumerations: Cell<usize>,
    index_calls: Cell<usize>,
    index_hits: Cell<usize>,
    fallbacks: Cell<usize>,
}

fn permute(mut keys: Vec<EntityKey>, seed: u64) -> Vec<EntityKey> {
    let mut rng = seed.max(1);
    for i in (1..keys.len()).rev() {
        rng ^= rng << 13;
        rng ^= rng >> 7;
        rng ^= rng << 17;
        keys.swap(i, (rng as usize) % (i + 1));
    }
    keys
}

impl Backend for Permuted<'_> {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        self.inner.head()
    }
    fn create(
        &mut self,
        _: &Genesis,
        _: &Head,
        _: &[EntityVersion],
        _: &[RefChange],
    ) -> Result<(), BackendError> {
        Err(BackendError("read-only".into()))
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.counters
            .enumerations
            .set(self.counters.enumerations.get() + 1);
        Ok(permute(self.inner.keys_at(t, p)?, self.seed))
    }
    fn keys_by_field_at(
        &self,
        t: &str,
        f: &str,
        v: &Value,
        p: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        self.counters
            .index_calls
            .set(self.counters.index_calls.get() + 1);
        if !self.indexed {
            self.counters
                .fallbacks
                .set(self.counters.fallbacks.get() + 1);
            return Ok(None);
        }
        let result = self
            .inner
            .keys_by_field_at(t, f, v, p)?
            .map(|k| permute(k, self.seed.wrapping_mul(31)));
        if result.is_some() {
            self.counters
                .index_hits
                .set(self.counters.index_hits.get() + 1);
        } else {
            self.counters
                .fallbacks
                .set(self.counters.fallbacks.get() + 1);
        }
        Ok(result)
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(k)
    }
    fn incoming_at(&self, t: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.inner.incoming_at(t, p)
    }
    fn version_at(&self, k: &EntityKey, p: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version_at(k, p)
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version(k, r)
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.inner.record(p)
    }
    fn commit(
        &mut self,
        _: &str,
        _: &[EntityVersion],
        _: &[EntityKey],
        _: &[RefChange],
        _: &TransitionRecord,
        _: &Head,
    ) -> Result<CasOutcome, BackendError> {
        Err(BackendError("read-only".into()))
    }
}

fn modules() -> BTreeMap<String, Module> {
    let m = orders();
    BTreeMap::from([(m.behavior_version(), m)])
}

/// A store whose sets have many members and ties (equal amounts, equal keys to look up).
fn history() -> Store<InMemoryBackend> {
    let mut seed = orders_seed();
    for i in 0..12 {
        seed.push(order_seed(
            &format!("p{i:02}"),
            "c1",
            "5.00",
            if i % 3 == 0 { "closed" } else { "open" },
        ));
    }
    for i in 0..6 {
        seed.push(employee_seed(
            &format!("e{}", i + 2),
            &format!("N{}", i + 2),
        ));
    }
    let mut s = orders_store_with(InMemoryBackend::new(), seed);
    for (action, bindings, input) in [
        (
            "remove_cheapest",
            vec![("order", "p00"), ("customer", "c1")],
            json!({}),
        ),
        (
            "raise_limit",
            vec![("customer", "c2")],
            json!({"limit": "150.00"}),
        ),
        ("hire", vec![], json!({"employee_id": "e9", "number": "N9"})),
        (
            "renumber",
            vec![("employee", "e2")],
            json!({"number": "N20"}),
        ),
    ] {
        let e = run_orders(&s, action, &bindings, input);
        commit_orders(&mut s, &e);
    }
    s
}

type Probe = (&'static str, Vec<(&'static str, &'static str)>, Value);

/// Query-heavy evaluations at the head, as records.
fn evaluations<B: Backend>(s: &Store<B>) -> Vec<Evaluation> {
    let probes: [Probe; 7] = [
        ("check_orders", vec![("customer", "c1")], json!({})),
        ("check_orders", vec![("customer", "c2")], json!({})),
        ("close_customer", vec![("customer", "c1")], json!({})),
        (
            "remove_cheapest",
            vec![("order", "p01"), ("customer", "c1")],
            json!({}),
        ),
        (
            "place_order",
            vec![("customer", "c1")],
            json!({"order_id": "q1", "amount": "1.00"}),
        ),
        (
            "hire_unchecked",
            vec![],
            json!({"employee_id": "e10", "number": "N3"}),
        ),
        (
            "renumber",
            vec![("employee", "e3")],
            json!({"number": "N4"}),
        ),
    ];
    probes
        .into_iter()
        .map(|(a, b, i)| run_orders(s, a, &b, i))
        .collect()
}

fn decisions<B: Backend>(s: &Store<B>) -> Vec<Value> {
    evaluations(s).into_iter().map(|e| e.record).collect()
}

fn fingerprints(evaluations: &[Evaluation]) -> Vec<Value> {
    evaluations
        .iter()
        .map(|e| {
            json!({"record":e.record,
        "transition":e.bundle.as_ref().map(|b|b.transition_hash.clone()),
        "bundle":e.bundle.as_ref().map(|b|b.hash().unwrap())})
        })
        .collect()
}

fn assert_probe_results(evaluations: &[Evaluation]) {
    // Explicit finite history: open orders prevent closing c1; two Employee
    // probes duplicate a surviving key. Other guards/postconditions hold.
    let expected = ["ALLOW", "ALLOW", "DENY", "ALLOW", "ALLOW", "DENY", "DENY"];
    assert_eq!(evaluations.len(), expected.len());
    for (e, result) in evaluations.iter().zip(expected) {
        assert_eq!(e.record["result"], result, "{}", e.record);
        assert_eq!(e.bundle.is_some(), result == "ALLOW");
    }
}

fn indexed_customer_count(module: &Module) -> ReadSource {
    let l = json!({"file":"index-control.beh","line":1});
    let query = json!({"op":"where","param":"o","loc":l,
        "args":[{"op":"select","entity":"Order","loc":l}],
        "body":{"op":"eq","loc":l,"args":[
            {"op":"field","param":"o","field":"customer","loc":l},
            {"op":"field","param":"customer","field":"id","loc":l}]}});
    let doc = json!({"ir_version":"0.7","read":{"name":"indexed_customer_count",
        "params":[{"name":"customer","role":"state","type":{"t":"entity","name":"Customer"}}],
        "body":{"value":{"op":"count","args":[query],"loc":l}},"loc":l}});
    ReadSource::AdHoc(Box::new(admit_read(module, &doc.to_string()).unwrap()))
}

#[test]
fn required_permutations_preserve_current_results_and_real_index_fallbacks() {
    let base = history();
    let module = orders();
    let reference_evaluations = evaluations(&base);
    assert_probe_results(&reference_evaluations);
    let reference = fingerprints(&reference_evaluations);
    let at = base.current().unwrap();
    let customer = base
        .load(
            &EntityKey {
                entity: "Customer".into(),
                id: "c1".into(),
            },
            &at,
        )
        .unwrap()
        .value;
    let request = json!({"data_version":data_version(&base.store_id().unwrap(),&at),
        "state":{"customer":customer},"input":{},"context":{}});
    let source = indexed_customer_count(&module);
    let plain_facts = StoreFacts {
        backend: base.backend(),
        position: at.position,
    };
    let read_reference = evaluate_read_with(&module, &source, &request.to_string(), &plain_facts);
    assert_eq!(read_reference.record.as_json()["result"], "VALUE");
    // o1 survives, p00 was removed, and p01..p11 survive: exactly12 c1 rows.
    assert_eq!(read_reference.record.as_json()["value"], 12);
    for seed in 1..=16 {
        for indexed in [false, true] {
            let view = Store::open(Permuted {
                inner: base.backend(),
                seed,
                indexed,
                counters: Counters::default(),
            })
            .unwrap();
            let before = view.backend().counters.enumerations.get();
            let cold = evaluations(&view);
            assert_probe_results(&cold);
            assert_eq!(
                fingerprints(&cold),
                reference,
                "cold seed={seed} indexed={indexed}"
            );
            let captured = view.backend().counters.enumerations.get();
            assert!(
                captured > before,
                "cold complete snapshot must actually enumerate"
            );
            let warm = evaluations(&view);
            assert_probe_results(&warm);
            assert_eq!(
                fingerprints(&warm),
                reference,
                "warm seed={seed} indexed={indexed}"
            );
            assert_eq!(
                view.backend().counters.enumerations.get(),
                captured,
                "same committed parent must reuse its complete snapshot"
            );
            assert_eq!(view.current().unwrap(), at);
            // Fresh Store computations use complete snapshots. Exercise the
            // optional index provider explicitly, so toggling it is not vacuous.
            let facts = StoreFacts {
                backend: view.backend(),
                position: at.position,
            };
            let actual = evaluate_read_with(&module, &source, &request.to_string(), &facts);
            assert_eq!(actual.record.as_json(), read_reference.record.as_json());
            assert_eq!(actual.record.as_json()["value"], 12);
            let counters = &view.backend().counters;
            assert!(
                counters.index_calls.get() > 0,
                "index plan must actually execute"
            );
            if indexed {
                assert!(counters.index_hits.get() > 0);
                assert_eq!(counters.fallbacks.get(), 0);
                assert_eq!(counters.enumerations.get(), captured);
            } else {
                assert_eq!(counters.index_hits.get(), 0);
                assert!(counters.fallbacks.get() > 0);
                assert!(counters.enumerations.get() > captured);
            }
        }
    }
}

#[test]
#[ignore = "1,000 permutations; run with --release --ignored"]
fn backend_order_and_indexes_never_change_a_decision() {
    let base = history();
    let reference = decisions(&base);
    let (from, to) = (base.state_at(0).unwrap(), base.current().unwrap());
    for seed in 1..=1000u64 {
        let view = Store::open(Permuted {
            inner: base.backend(),
            seed,
            indexed: seed % 2 == 0,
            counters: Counters::default(),
        })
        .unwrap();
        assert_eq!(decisions(&view), reference, "seed {seed}");
        if seed % 100 == 0 {
            let r = replay_behavior(&view, &modules(), &from, &to);
            assert!(r.ok, "seed {seed}: {r:?}");
        }
    }
}
