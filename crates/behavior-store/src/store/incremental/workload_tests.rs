#![allow(clippy::unwrap_used)]
use super::*;
#[test]
fn reference_control_reconstructs_parent_and_complete_child() {
    let s = tests::seeded(3);
    let m = tests::module();
    let at = s.current().unwrap();
    let schema = s.genesis_schema.clone();
    let mut writer = tests::seeded(3);
    let e = writer
        .evaluate(
            &m,
            "set",
            &BTreeMap::from([("e".into(), "e0".into())]),
            &serde_json::json!({}),
            &serde_json::json!({}),
            "2026-09-27T12:00:00Z",
            None,
        )
        .unwrap();
    let b = e.bundle.unwrap();
    writer.commit(&m, &b.evaluated_state, &b).unwrap();
    let record = writer.backend.record(1).unwrap().unwrap();
    reset_work();
    with_reference(true, || {
        s.validate_snapshot(&m, &at, &schema).unwrap();
        s.validate_incremental_child(&m, &at, &schema, &record)
            .unwrap();
    });
    assert_eq!(work().full_parent, 1);
    assert_eq!(work().full_child, 1);
    assert_eq!(work().universe, 2);
    assert_eq!(work().rows, 6);
    reset_work();
    s.validate_incremental_child(&m, &at, &schema, &record)
        .unwrap();
    assert_eq!(work().universe, 0);
    assert_eq!(work().unchanged_rows, 0);
}

use crate::InMemoryBackend;
use serde_json::json;
use std::cell::Cell;
use std::time::Instant;
#[derive(Default)]
struct Counting {
    inner: InMemoryBackend,
    reads: Cell<usize>,
}
impl Counting {
    fn count(&self) {
        self.reads.set(self.reads.get() + 1);
    }
}
impl Backend for Counting {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.count();
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        self.count();
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
        self.count();
        self.inner.version_at(k, p)
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.count();
        self.inner.version(k, r)
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.count();
        self.inner.record(p)
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.count();
        self.inner.removed_at(k)
    }
    fn incoming_at(&self, k: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.count();
        self.inner.incoming_at(k, p)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.count();
        self.inner.keys_at(t, p)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        self.count();
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
        self.inner.commit(e, v, r, f, t, h)
    }
}
fn work_json(w: Work) -> Json {
    json!({"universe":w.universe,"rows":w.rows,"unchanged_rows":w.unchanged_rows,"full_parent":w.full_parent,"full_child":w.full_child})
}

#[test]
#[ignore = "sequential release workload evidence, no semantic latency threshold"]
fn controlled_10000_pairs() {
    let mut wire = tests::wire();
    let l = json!({"file":"bench.beh","line":1});
    wire["actions"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"n","role":"input","type":{"t":"int"}}));
    wire["actions"][0]["effects"][0]["value"] = json!({"op":"param","param":"n","loc":l});
    wire["actions"].as_array_mut().unwrap().push(json!({"name":"create","loc":l,"params":[{"name":"id","role":"input","type":{"t":"id","entity":"E"}}],"effects":[{"create":"E","id":{"op":"param","param":"id","loc":l},"fields":{"x":{"op":"lit","type":{"t":"int"},"value":1,"loc":l},"y":{"op":"lit","type":{"t":"int"},"value":2,"loc":l}},"loc":l}],"preconditions":[],"postconditions":[]}));
    let m = behavior_core::admit(&wire.to_string()).unwrap();
    assert!(dependency::local_module(&m));
    let mut outcomes = BTreeMap::new();
    for reference in [false, true] {
        for workload in ["warm", "update_read", "create_read"] {
            let setup = Instant::now();
            let seed = (0..10000)
                .map(|i| crate::documents::SeedEntity {
                    entity: "E".into(),
                    value: json!({"id":format!("e{i}"),"x":1,"y":2}),
                })
                .collect();
            let mut s = Store::create(
                Counting::default(),
                &m,
                genesis_for(&m, crate::documents::EvidencePolicy::none(), seed),
            )
            .unwrap();
            eprintln!(
                "CONTROLLED_SETUP {}",
                json!({"reference":reference,"workload":workload,"setup_ms":setup.elapsed().as_secs_f64()*1000.0})
            );
            let mut results = Vec::new();
            with_reference(reference, || {
                for i in 0..30 {
                    s.backend.reads.set(0);
                    reset_work();
                    let pair = Instant::now();
                    let mut write_ms = 0.0;
                    let mut event = Json::Null;
                    if workload != "warm" {
                        let start = Instant::now();
                        let (action, bindings, input) = if workload == "update_read" {
                            (
                                "set",
                                BTreeMap::from([("e".into(), "e0".into())]),
                                json!({"n":i+2}),
                            )
                        } else {
                            ("create", BTreeMap::new(), json!({"id":format!("new{i}")}))
                        };
                        let e = s
                            .evaluate(
                                &m,
                                action,
                                &bindings,
                                &input,
                                &json!({}),
                                "2026-09-27T12:00:00Z",
                                None,
                            )
                            .unwrap();
                        let b = e.bundle.unwrap();
                        let c = s.commit(&m, &b.evaluated_state, &b).unwrap();
                        write_ms = start.elapsed().as_secs_f64() * 1000.0;
                        event = json!({"decision":e.record,"bundle":b,"record_id":c.record_id,"state":c.result_state});
                    }
                    let read = Instant::now();
                    let r = s
                        .read(
                            &m,
                            &ReadSource::Declared("ratio".into()),
                            &BTreeMap::from([("e".into(), "e0".into())]),
                            &json!({}),
                            &json!({}),
                            None,
                        )
                        .unwrap();
                    let read_ms = read.elapsed().as_secs_f64() * 1000.0;
                    let pair_ms = pair.elapsed().as_secs_f64() * 1000.0;
                    let measured_work = work();
                    let reads = s.backend.reads.get();
                    if !reference {
                        assert_eq!(measured_work.universe, 0);
                        assert_eq!(measured_work.unchanged_rows, 0);
                    } else if workload != "warm" {
                        assert_eq!(measured_work.full_child, 1);
                    }
                    results.push(json!({"event":event,"read":r.record.to_json_string()}));
                    eprintln!(
                        "CONTROLLED_015 {}",
                        json!({"reference":reference,"workload":workload,"sample":i,"write_ms":write_ms,"read_ms":read_ms,"pair_ms":pair_ms,"backend_reads":reads,"validation":work_json(measured_work)})
                    );
                }
            });
            if reference {
                assert_eq!(outcomes.get(workload).unwrap(), &results);
            } else {
                outcomes.insert(workload, results);
            }
        }
    }
    eprintln!("CONTROLLED_PARITY true");
}
