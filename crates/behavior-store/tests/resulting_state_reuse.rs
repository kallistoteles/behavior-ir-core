#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: complete semantic evidence with reconstructible, exact-state reuse.
mod common;
use behavior_core::{invocation::RequestedInvocation, read::ReadSource, semantic::module::Module};
use behavior_store::documents::*;
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use serde_json::{Value, json};
use std::cell::Cell;

#[derive(Default)]
struct Counted {
    inner: InMemoryBackend,
    keys: Cell<usize>,
    versions: Cell<usize>,
    used: Cell<usize>,
    fault: Cell<Option<&'static str>>,
}
impl Counted {
    fn reset(&self) {
        self.keys.set(0);
        self.versions.set(0);
        self.used.set(0);
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
        if self.fault.get() == Some("unrelated") && k.id == "e1" {
            return Err(BackendError("unrelated injected".into()));
        }
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
        if self.fault.get() == Some("keys") {
            return Err(BackendError("keys injected".into()));
        }
        self.inner.keys_at(t, p)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        self.used.set(self.used.get() + 1);
        if self.fault.get() == Some("used") {
            return Err(BackendError("used injected".into()));
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
        self.inner.commit(e, v, r, f, t, h)
    }
}

fn wire(version: &str) -> Value {
    let mut w = common::json(&common::fixtures().join("soundness/module.json"));
    let l = json!({"file":"017-reuse.beh","line":1});
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
fn seeded(m: &Module, n: usize) -> Store<Counted> {
    let seed = (0..n)
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
    Store::create(Counted::default(), m, genesis).unwrap()
}
fn read(s: &Store<Counted>, m: &Module) -> behavior_core::read::ReadExecution {
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
fn set(s: &Store<Counted>, m: &Module, n: i64) -> behavior_store::Evaluation {
    s.evaluate(
        m,
        "set",
        &common::bind(&[("e", "e0")]),
        &json!({"n":n}),
        &json!({}),
        common::T0,
        None,
    )
    .unwrap()
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
fn request(action: &str, id: Option<&str>, input: Value) -> RequestedInvocation {
    let bindings = id.map_or_else(|| json!({}), |id| json!({"e":{"entity":"E","id":id}}));
    let (r, errors) = RequestedInvocation::decode(&json!({"format":"behavior.invocation.v1","capability":action,"bindings":bindings,"input":input,"context":{}}).to_string()).unwrap();
    assert!(errors.is_empty());
    r.unwrap()
}
fn complete(record: &Value, n: usize, commands: bool) {
    assert_eq!(
        record["validation_profile"],
        "behavior.complete_resulting_state.v1"
    );
    let subjects: Vec<_> = record["trace"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|t| t["phase"] == "constraint_post")
        .map(|t| t["subject"].clone())
        .collect();
    let mut ids: Vec<_> = (0..n).map(|i| format!("e{i}")).collect();
    ids.sort();
    assert_eq!(
        subjects,
        ids.iter()
            .map(|id| json!({"entity":"E","id":id}))
            .collect::<Vec<_>>()
    );
    if commands {
        let intents = record["commands"]["intents"].as_array().unwrap();
        assert_eq!(intents.len(), 2);
        assert_eq!(intents[0], intents[1]);
    }
}

#[test]
fn cold_warm_reopen_and_cache_loss_preserve_the_complete_record_and_bundle() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m, 12);
        let cold = set(&s, &m, 2);
        complete(&cold.record, 12, version == "0.8");
        let warm = set(&s, &m, 2);
        assert_eq!(cold.record, warm.record);
        assert_eq!(cold.bundle, warm.bundle);
        let _ = s.backend_mut();
        let lost = set(&s, &m, 2);
        assert_eq!(cold.record, lost.record);
        assert_eq!(cold.bundle, lost.bundle);
        let s = Store::open(s.into_backend()).unwrap();
        let reopened = set(&s, &m, 2);
        assert_eq!(cold.record, reopened.record);
        assert_eq!(cold.bundle, reopened.bundle);
        assert!(behavior_core::replay(&m, &reopened.record.to_string()).matches);
    }
}

#[test]
fn warm_evaluation_and_invocation_capture_full_evidence_without_backend_enumeration() {
    for version in ["0.7", "0.8"] {
        for n in [10, 100] {
            let m = module(version);
            let s = seeded(&m, n);
            read(&s, &m);
            s.backend().reset();
            let direct = set(&s, &m, 2);
            complete(&direct.record, n, version == "0.8");
            let invoked = s
                .invoke(
                    &m,
                    &request("set", Some("e0"), json!({"n":2})),
                    common::T0,
                    None,
                    None,
                )
                .unwrap();
            assert_eq!(invoked.record.as_json()["outcome"]["record"], direct.record);
            assert_eq!(invoked.bundle, direct.bundle);
            eprintln!(
                "BACKEND_WORK phase=evaluate_invoke wire={version} child_entities={n} keys={} versions={} used={}",
                s.backend().keys.get(),
                s.backend().versions.get(),
                s.backend().used.get()
            );
            assert_eq!(
                s.backend().keys.get(),
                0,
                "warm evaluate/invoke enumerated {n} rows for Wire {version}"
            );
            assert!(
                s.backend().versions.get() < 10,
                "warm values reloaded: {}",
                s.backend().versions.get()
            );
        }
    }
}

#[test]
fn warm_commit_rederives_the_same_complete_candidate_without_reloading_the_universe() {
    for version in ["0.7", "0.8"] {
        for n in [10, 100] {
            let m = module(version);
            let mut s = seeded(&m, n);
            let b = set(&s, &m, 2).bundle.unwrap();
            complete(&b.record, n, version == "0.8");
            s.backend().reset();
            s.commit(&m, &b.evaluated_state, &b).unwrap();
            assert_eq!(
                s.backend()
                    .record(1)
                    .unwrap()
                    .unwrap()
                    .bundle
                    .unwrap()
                    .record,
                b.record
            );
            eprintln!(
                "BACKEND_WORK phase=commit_rederive wire={version} child_entities={n} keys={} versions={} used={}",
                s.backend().keys.get(),
                s.backend().versions.get(),
                s.backend().used.get()
            );
            assert_eq!(
                s.backend().keys.get(),
                0,
                "rederive enumerated {n} rows for Wire {version}"
            );
            assert!(s.backend().versions.get() < 10);
            s.backend().reset();
            assert_eq!(read(&s, &m).record.as_json()["value"], "1");
            assert_eq!((s.backend().keys.get(), s.backend().versions.get()), (0, 0));
        }
    }
}

#[test]
fn repeated_update_and_creation_reads_retain_committed_child_validity() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m, 10);
        for i in 0..3 {
            let b = set(&s, &m, i + 2).bundle.unwrap();
            s.commit(&m, &b.evaluated_state, &b).unwrap();
            s.backend().reset();
            read(&s, &m);
            assert_eq!((s.backend().keys.get(), s.backend().versions.get()), (0, 0));
            let b = create(&s, &m, &format!("new{i}")).bundle.unwrap();
            s.commit(&m, &b.evaluated_state, &b).unwrap();
            s.backend().reset();
            read(&s, &m);
            assert_eq!((s.backend().keys.get(), s.backend().versions.get()), (0, 0));
        }
    }
}

#[test]
fn warm_creation_uses_captured_rows_but_checks_historical_freshness() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let s = seeded(&m, 100);
        read(&s, &m);
        s.backend().reset();
        let e = create(&s, &m, "fresh");
        assert!(e.bundle.is_some());
        eprintln!(
            "BACKEND_WORK phase=create wire={version} child_entities=101 keys={} versions={} used={}",
            s.backend().keys.get(),
            s.backend().versions.get(),
            s.backend().used.get()
        );
        assert!(
            s.backend().used.get() > 0,
            "freshness was reduced to current existence"
        );
        assert_eq!(
            s.backend().keys.get(),
            0,
            "warm create repeated backend universe capture"
        );
        assert!(s.backend().versions.get() < 10);
    }
}

#[test]
fn actual_used_errors_keep_the_existing_fact_provider_error_route_with_a_warm_snapshot() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let s = seeded(&m, 10);
        read(&s, &m);
        s.backend().reset();
        s.backend().fault.set(Some("used"));
        let evaluated = s
            .evaluate(
                &m,
                "create",
                &Default::default(),
                &json!({"id":"fresh"}),
                &json!({}),
                common::T0,
                None,
            )
            .unwrap();
        assert_eq!(evaluated.record["result"], "ERROR");
        assert_eq!(evaluated.record["reasons"][0]["code"], "UNKNOWN_FACT");
        assert!(evaluated.bundle.is_none());
        assert!(s.backend().used.get() > 0);
        assert_eq!(s.current().unwrap().position, 0);
        s.backend().fault.set(None);
        assert_eq!(create(&s, &m, "fresh").record["result"], "ALLOW");
    }
}

#[test]
fn semantically_redundant_failed_reads_are_omitted_using_exact_captured_evidence() {
    for fault in ["keys", "unrelated"] {
        let m = module("0.7");
        let s = seeded(&m, 10);
        let reference = set(&s, &m, 2);
        s.backend().fault.set(Some(fault));
        let optimized = s.evaluate(
            &m,
            "set",
            &common::bind(&[("e", "e0")]),
            &json!({"n":2}),
            &json!({}),
            common::T0,
            None,
        );
        assert!(
            optimized.is_ok(),
            "redundant {fault} access failed: {optimized:?}"
        );
        let optimized = optimized.unwrap();
        assert_eq!(optimized.record, reference.record);
        assert_eq!(optimized.bundle, reference.bundle);
    }
}

#[test]
fn equal_state_content_at_another_history_position_keeps_distinct_identity_lifetime() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m, 10);
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
        read(&s, &m);
        let current = s.current().unwrap();
        assert_eq!(initial.state, current.state);
        assert_ne!(initial.position, current.position);
        let now = create(&s, &m, "temporary");
        assert_eq!(now.record["result"], "ENTITY_ID_ALREADY_USED");
        assert!(now.bundle.is_none());
        s.backend().reset();
        let then = s
            .invoke(
                &m,
                &request("create", None, json!({"id":"temporary"})),
                common::T0,
                None,
                Some(&initial),
            )
            .unwrap();
        assert_eq!(
            then.record.as_json()["outcome"]["record"]["result"],
            "ALLOW"
        );
        assert!(then.bundle.is_none());
        assert_eq!(
            s.backend().keys.get(),
            1,
            "exact historical capture was unnecessarily loaded twice"
        );
        assert!(
            s.replay_invocation(&m, &then.record.to_json_string())
                .unwrap()
                .matches
        );
    }
}

#[test]
fn changed_behavior_with_identical_schema_and_profile_never_reuses_parent_validity() {
    let m = module("0.7");
    let s = seeded(&m, 10);
    read(&s, &m);
    let mut w = wire("0.7");
    w["constraints"][0]["body"]["args"][1]["value"] = json!(1);
    let stronger = behavior_core::admit(&w.to_string()).unwrap();
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
    assert_eq!(
        s.backend().keys.get(),
        1,
        "changed behavior must establish its own parent validity"
    );
}

#[test]
fn changed_language_profile_with_the_same_schema_establishes_its_own_complete_capture() {
    let legacy = module("0.7");
    let current = module("0.8");
    assert_eq!(
        behavior_core::schema(&legacy).hash,
        behavior_core::schema(&current).hash
    );
    let policy = EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let seed = (0..10)
        .map(|i| SeedEntity {
            entity: "E".into(),
            value: json!({"id":format!("e{i}"),"x":1,"y":2}),
        })
        .collect();
    let s = Store::create(
        Counted::default(),
        &legacy,
        genesis_v2_for(&legacy, policy, seed).unwrap(),
    )
    .unwrap();
    read(&s, &legacy);
    // A separate reopened instance provides a cold current-profile reference over identical canonical inputs.
    let reference = Store::open(Counted {
        inner: s.backend().inner.clone(),
        ..Default::default()
    })
    .unwrap();
    let cold = set(&reference, &current, 2);
    complete(&cold.record, 10, true);
    s.backend().reset();
    let changed = set(&s, &current, 2);
    assert_eq!(changed.record, cold.record);
    assert_eq!(changed.bundle, cold.bundle);
    eprintln!(
        "BACKEND_WORK phase=profile_switch wire=0.8 child_entities=10 keys={} versions={} used={}",
        s.backend().keys.get(),
        s.backend().versions.get(),
        s.backend().used.get()
    );
    assert_eq!(
        s.backend().keys.get(),
        1,
        "a profile change needs one new canonical capture, not cached legacy validity or duplicate loads"
    );
}

#[test]
fn schema_substitution_is_refused_even_when_old_parent_validation_is_warm() {
    let m = module("0.7");
    let s = seeded(&m, 10);
    read(&s, &m);
    let mut w = wire("0.7");
    let l = json!({"file":"017-reuse.beh","line":1});
    w["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"z","type":{"t":"int"},"loc":l}));
    w["actions"][1]["effects"][0]["fields"]["z"] =
        json!({"op":"lit","type":{"t":"int"},"value":0,"loc":l});
    let wrong = behavior_core::admit(&w.to_string()).unwrap();
    assert_ne!(
        behavior_core::schema(&m).hash,
        behavior_core::schema(&wrong).hash
    );
    let error = s
        .evaluate(
            &wrong,
            "set",
            &common::bind(&[("e", "e0")]),
            &json!({"n":2}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap_err();
    assert!(error.to_string().contains("SCHEMA_MISMATCH"), "{error:?}");
    assert_eq!(s.current().unwrap().position, 0);
    assert!(s.backend().record(1).unwrap().is_none());
}

#[test]
fn backend_mut_invalidation_and_reopen_reestablish_cache_from_canonical_state() {
    let m = module("0.7");
    let mut s = seeded(&m, 10);
    let first = read(&s, &m);
    s.backend_mut().fault.set(Some("keys"));
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
    s.backend().fault.set(None);
    s.backend().reset();
    assert_eq!(read(&s, &m).record, first.record);
    assert_eq!(
        (s.backend().keys.get(), s.backend().versions.get()),
        (1, 10)
    );
    let s = Store::open(s.into_backend()).unwrap();
    s.backend().reset();
    assert_eq!(read(&s, &m).record, first.record);
    assert_eq!(
        (s.backend().keys.get(), s.backend().versions.get()),
        (1, 10)
    );
}
