#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Actual Core producers, using the original conformance seed and workload.

use super::*;
use crate::memory::InMemoryBackend;
use crate::store::genesis_v2_for;
use behavior_verify::governance::trusted::EvidencePolicyV2;

fn v2_orders() -> (Store<InMemoryBackend>, Module) {
    let module = orders().unwrap();
    let policy = EvidencePolicyV2::from_json(include_str!(
        "../../../../tests/fixtures/governance-v2/evidence-policy-none.json"
    ))
    .unwrap();
    let genesis = genesis_v2_for(&module, policy, orders_seed()).unwrap();
    (
        Store::create(InMemoryBackend::new(), &module, genesis).unwrap(),
        module,
    )
}

#[test]
fn orders_history_v2_producer_evidence_completes_eight_commits() {
    let (mut store, module) = v2_orders();
    let result = orders_history(&mut store, &module);
    assert!(
        result.is_ok(),
        "Core must consume its v2 query evidence; head={}, failure={:?}",
        store.current().unwrap().position,
        result.as_ref().err()
    );
    let records = result.unwrap();
    assert_eq!(records.len(), 9);
    assert_eq!(store.current().unwrap().position, 8);
    assert!(records.iter().any(|r| r["facts"]["queries"].is_array()));
}

#[test]
fn orders_history_v1_original_workload_still_completes() {
    let (mut store, module) = create_orders(InMemoryBackend::new()).unwrap();
    assert_eq!(orders_history(&mut store, &module).unwrap().len(), 9);
    assert_eq!(store.current().unwrap().position, 8);
}

#[test]
fn v1_optional_index_reversed_enumeration_preserves_records() {
    let (mut indexed, module) = create_orders(InMemoryBackend::new()).unwrap();
    let (mut reversed, _) = create_orders(ReversedKeys {
        inner: InMemoryBackend::new(),
    })
    .unwrap();
    assert_eq!(
        orders_history(&mut indexed, &module).unwrap(),
        orders_history(&mut reversed, &module).unwrap()
    );
    assert_eq!(
        indexed.current_history().unwrap(),
        reversed.current_history().unwrap()
    );
}

#[test]
fn v1_actual_queries_include_empty_and_nonempty_membership() {
    let (mut store, module) = create_orders(InMemoryBackend::new()).unwrap();
    let records = orders_history(&mut store, &module).unwrap();
    let members: Vec<_> = records
        .iter()
        .filter_map(|r| r["facts"]["queries"].as_array())
        .flatten()
        .map(|q| q["members"].as_array().unwrap())
        .collect();
    assert!(members.iter().any(|m| m.is_empty()));
    assert!(members.iter().any(|m| !m.is_empty()));
}

#[test]
fn v2_nonquery_producer_still_commits() {
    // The orders module has a query-dependent module invariant even for
    // renumber. Use the original non-query ledger control instead.
    let module = ledger().unwrap();
    let policy = EvidencePolicyV2::from_json(include_str!(
        "../../../../tests/fixtures/governance-v2/evidence-policy-none.json"
    ))
    .unwrap();
    let genesis = genesis_v2_for(&module, policy, seed()).unwrap();
    let mut store = Store::create(InMemoryBackend::new(), &module, genesis).unwrap();
    let evaluated = transfer(&store, &module, "a1", "a2", "1.00").unwrap();
    let bundle = evaluated.bundle.as_ref().unwrap();
    assert!(bundle.read_facts.get("queries").is_none());
    apply(&mut store, &module, evaluated).unwrap();
    assert_eq!(store.current().unwrap().position, 1);
}

#[derive(Clone, Copy)]
enum QueryMode {
    Indexed,
    Unindexed,
    Reversed,
}

struct QueryBackend {
    inner: InMemoryBackend,
    mode: QueryMode,
    probes: std::cell::Cell<usize>,
    hits: std::cell::Cell<usize>,
    reversals: std::cell::Cell<usize>,
    publications: usize,
}
impl QueryBackend {
    fn new(mode: QueryMode) -> Self {
        Self {
            inner: InMemoryBackend::new(),
            mode,
            probes: Default::default(),
            hits: Default::default(),
            reversals: Default::default(),
            publications: 0,
        }
    }
    fn keys(&self, mut keys: Vec<EntityKey>) -> Vec<EntityKey> {
        if matches!(self.mode, QueryMode::Reversed) {
            if keys.len() > 1 {
                self.reversals.set(self.reversals.get() + 1);
            }
            keys.reverse();
        }
        keys
    }
}
impl Backend for QueryBackend {
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
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        Ok(self.keys(self.inner.keys_at(t, p)?))
    }
    fn keys_by_field_at(
        &self,
        t: &str,
        f: &str,
        v: &Json,
        p: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        self.probes.set(self.probes.get() + 1);
        if matches!(self.mode, QueryMode::Unindexed) {
            return Ok(None);
        }
        Ok(self.inner.keys_by_field_at(t, f, v, p)?.map(|keys| {
            self.hits.set(self.hits.get() + 1);
            self.keys(keys)
        }))
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(k)
    }
    fn incoming_at(&self, k: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.inner.incoming_at(k, p)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        self.inner.used_at(k, p)
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
        x: &str,
        v: &[EntityVersion],
        rm: &[EntityKey],
        r: &[RefChange],
        tr: &TransitionRecord,
        h: &Head,
    ) -> Result<CasOutcome, BackendError> {
        self.publications += 1;
        self.inner.commit(x, v, rm, r, tr, h)
    }
}

fn compare_query_modes(v2: bool) {
    let module = orders().unwrap();
    let mut snapshots = Vec::new();
    for mode in [
        QueryMode::Indexed,
        QueryMode::Unindexed,
        QueryMode::Reversed,
    ] {
        let genesis = if v2 {
            let policy = EvidencePolicyV2::from_json(include_str!(
                "../../../../tests/fixtures/governance-v2/evidence-policy-none.json"
            ))
            .unwrap();
            genesis_v2_for(&module, policy, orders_seed()).unwrap()
        } else {
            genesis_for(&module, EvidencePolicy::none(), orders_seed())
        };
        let mut store = Store::create(QueryBackend::new(mode), &module, genesis).unwrap();
        let records = orders_history(&mut store, &module).unwrap();
        assert_eq!(records.len(), 9);
        assert_eq!(store.current().unwrap().position, 8);
        let backend = store.backend();
        // Current Store actions use complete snapshots, so they need no optional
        // field-index call. Exercise the existing StoreFacts provider explicitly
        // as well, following query_order_props' real index/fallback control.
        let loc = json!({"file":"bundle-index-control.beh","line":1});
        let query = json!({"op":"where","param":"o","loc":loc,
            "args":[{"op":"select","entity":"Order","loc":loc}],
            "body":{"op":"eq","loc":loc,"args":[
                {"op":"field","param":"o","field":"customer","loc":loc},
                {"op":"field","param":"customer","field":"id","loc":loc}]}});
        let read_document = json!({"ir_version":"0.7","read":{"name":"index_count",
            "params":[{"name":"customer","role":"state","type":{"t":"entity","name":"Customer"}}],
            "body":{"value":{"op":"count","args":[query],"loc":loc}},"loc":loc}});
        let read = behavior_core::read::ReadSource::AdHoc(Box::new(
            behavior_core::read::admit_read(&module, &read_document.to_string()).unwrap(),
        ));
        let at = store.current().unwrap();
        let customer = store.load(&akey("Customer", "c1"), &at).unwrap().value;
        let request = json!({"data_version":crate::documents::data_version(&store.store_id().unwrap(), &at),
            "state":{"customer":customer},"input":{},"context":{}});
        let facts = crate::store::StoreFacts {
            backend,
            position: at.position,
        };
        let read_record =
            behavior_core::read::evaluate_read_with(&module, &read, &request.to_string(), &facts)
                .record;
        assert_eq!(read_record.as_json()["result"], "VALUE");
        assert_eq!(read_record.as_json()["value"], 2);
        assert!(
            backend.probes.get() > 0,
            "optional field-index path must execute"
        );
        match mode {
            QueryMode::Unindexed => assert_eq!(backend.hits.get(), 0),
            QueryMode::Indexed => assert!(backend.hits.get() > 0),
            QueryMode::Reversed => {
                assert!(backend.hits.get() > 0);
                assert!(
                    backend.reversals.get() > 0,
                    "nontrivial backend order must reverse"
                );
            }
        }
        // The reference backend's complete deterministic Debug includes genesis,
        // all records (bundles/candidate hashes/commands), versions, lifetimes,
        // references and field indexes, not just the current entity values.
        snapshots.push((
            records,
            read_record.as_json().clone(),
            store.current_history().unwrap(),
            format!("{:?}", backend.inner),
        ));
    }
    assert_eq!(snapshots[0], snapshots[1]);
    assert_eq!(snapshots[0], snapshots[2]);
}

#[test]
fn same_profile_v1_index_scan_and_reversed_enumeration_are_equivalent() {
    compare_query_modes(false);
}

#[test]
fn same_profile_v2_index_scan_and_reversed_enumeration_are_equivalent() {
    compare_query_modes(true);
}

use behavior_verify::governance::trusted::{
    AuthorizationContextV2, EvidenceV2, ExecutionPolicyV2, GovernanceSubject, authorize_trusted,
    sign_authorization,
};

struct RequiredHost {
    policy: EvidencePolicyV2,
    execution: ExecutionPolicyV2,
    context: AuthorizationContextV2,
    seed: &'static str,
}
impl RequiredHost {
    fn new() -> Self {
        let execution = ExecutionPolicyV2::from_json(include_str!(
            "../../../../tests/fixtures/governance-v2/policy-none.json"
        ))
        .unwrap();
        let mut policy: Json = serde_json::from_str(include_str!(
            "../../../../tests/fixtures/governance-v2/evidence-policy.json"
        ))
        .unwrap();
        policy["execution_policies"] = json!([execution.hash()]);
        let policy = EvidencePolicyV2::from_json(&policy.to_string()).unwrap();
        let context = AuthorizationContextV2::from_json(
            include_str!("../../../../tests/fixtures/governance-v2/context-unbound.json"),
            &execution,
        )
        .unwrap();
        Self {
            policy,
            execution,
            context,
            seed: include_str!("../../../../tests/fixtures/governance-v2/authorizer.seed").trim(),
        }
    }
    fn evidence(&self, module: &Module, bundle: &CommitBundle) -> EvidenceV2 {
        let issuer = self.policy.as_json()["trusted_authorities"][0]["key_id"]
            .as_str()
            .unwrap()
            .to_owned();
        let auth = authorize_trusted(
            &GovernanceSubject::Module(module),
            &bundle.governance_candidate().unwrap(),
            &self.policy,
            &self.execution,
            &[],
            &issuer,
            &self.context,
        )
        .unwrap();
        assert_eq!(auth.decision(), "allow");
        let signed = sign_authorization(&auth, self.seed).unwrap();
        EvidenceV2::from_json(
            &json!({"format":"behavior.evidence.v2",
            "execution_policy":self.execution.as_json(),"authorization":signed.as_json(),
            "verifications":[],"waivers":[],"waiver_signatures":[]})
            .to_string(),
        )
        .unwrap()
    }
}

fn required_orders() -> (Store<QueryBackend>, Module, RequiredHost) {
    let module = orders().unwrap();
    let host = RequiredHost::new();
    let genesis = genesis_v2_for(&module, host.policy.clone(), orders_seed()).unwrap();
    let store = Store::create(QueryBackend::new(QueryMode::Indexed), &module, genesis).unwrap();
    (store, module, host)
}

#[test]
fn required_authorization_orders_history_authenticates_all_eight_commits() {
    let (mut store, module, host) = required_orders();
    // Same seed and nine steps as the unchanged parent's require:none runner.
    let steps: [Step; 9] = [
        (
            "place_order",
            vec![("customer", "c1")],
            json!({"order_id":"o1","amount":"20.00"}),
        ),
        (
            "place_order",
            vec![("customer", "c1")],
            json!({"order_id":"o2","amount":"20.00"}),
        ),
        (
            "place_order",
            vec![("customer", "c1")],
            json!({"order_id":"o3","amount":"30.00"}),
        ),
        ("check_orders", vec![("customer", "c1")], json!({})),
        (
            "remove_cheapest",
            vec![("order", "o1"), ("customer", "c1")],
            json!({}),
        ),
        (
            "raise_limit",
            vec![("customer", "c1")],
            json!({"limit":"200.00"}),
        ),
        ("hire", vec![], json!({"employee_id":"e2","number":"N2"})),
        ("renumber", vec![("employee", "e1")], json!({"number":"N3"})),
        ("check_orders", vec![("customer", "c2")], json!({})),
    ];
    let mut evaluated = 0;
    let mut committed = 0;
    for (action, bindings, input) in steps {
        let result = run_action(&store, &module, action, &bindings, input).unwrap();
        evaluated += 1;
        if let Some(bundle) = result.bundle {
            let evidence = host.evidence(&module, &bundle);
            let signed = bundle.with_trusted_evidence(&evidence).unwrap();
            let outcome = store
                .commit_with_context(&module, &signed.evaluated_state, &signed, &host.context)
                .unwrap();
            assert_eq!(outcome.evidence_trust, Some("authenticated"));
            committed += 1;
            let record = store.backend().record(committed).unwrap().unwrap();
            assert!(record.authorization.is_some());
            assert_eq!(
                record.bundle.unwrap().authorization_context,
                Some(host.context.as_json())
            );
        }
    }
    assert_eq!((evaluated, committed), (9, 8));
    assert_eq!(store.current().unwrap().position, 8);
    assert_eq!(store.backend().publications, 8);
}

fn proposed_order(store: &Store<QueryBackend>, module: &Module, id: &str) -> CommitBundle {
    run_action(
        store,
        module,
        "place_order",
        &[("customer", "c1")],
        json!({"order_id":id,"amount":"20.00"}),
    )
    .unwrap()
    .bundle
    .unwrap()
}

fn assert_required_refusal(
    store: &mut Store<QueryBackend>,
    module: &Module,
    host: &RequiredHost,
    bundle: &CommitBundle,
    code: &str,
) {
    let before = format!("{:?}", store.backend().inner);
    let publications = store.backend().publications;
    let error = store
        .commit_with_context(module, &bundle.evaluated_state, bundle, &host.context)
        .unwrap_err();
    assert_eq!(error.code(), code, "{error}");
    assert_eq!(format!("{:?}", store.backend().inner), before);
    assert_eq!(store.backend().publications, publications);
}

#[test]
fn query_integrity_does_not_waive_required_authorization() {
    let (mut store, module, host) = required_orders();
    let bundle = proposed_order(&store, &module, "o1");
    bundle.governance_candidate().unwrap();
    assert_required_refusal(&mut store, &module, &host, &bundle, "EVIDENCE_REQUIRED");
    let signed = bundle
        .with_trusted_evidence(&host.evidence(&module, &bundle))
        .unwrap();
    assert_eq!(
        store
            .commit_with_context(&module, &signed.evaluated_state, &signed, &host.context)
            .unwrap()
            .evidence_trust,
        Some("authenticated")
    );
}

#[test]
fn authorization_for_other_valid_query_candidate_is_refused() {
    let (mut store, module, host) = required_orders();
    let first = proposed_order(&store, &module, "o1");
    let other = proposed_order(&store, &module, "o2");
    assert_ne!(first.transition_hash, other.transition_hash);
    let evidence = host.evidence(&module, &first);
    assert_eq!(
        other.with_trusted_evidence(&evidence).unwrap_err().code(),
        "EVIDENCE_MISMATCH"
    );
    let mut mismatched = other;
    mismatched.evidence = Some(crate::documents::CommitEvidence::Trusted(Box::new(
        evidence,
    )));
    assert_required_refusal(&mut store, &module, &host, &mismatched, "EVIDENCE_MISMATCH");
}

#[test]
fn prior_query_authorization_cannot_be_reused_after_commit() {
    let (mut store, module, host) = required_orders();
    let first = proposed_order(&store, &module, "o1");
    let evidence = host.evidence(&module, &first);
    let signed = first.with_trusted_evidence(&evidence).unwrap();
    store
        .commit_with_context(&module, &signed.evaluated_state, &signed, &host.context)
        .unwrap();
    let next = proposed_order(&store, &module, "o2");
    assert_eq!(
        next.with_trusted_evidence(&evidence).unwrap_err().code(),
        "EVIDENCE_MISMATCH"
    );
    let mut reused = next;
    reused.evidence = Some(crate::documents::CommitEvidence::Trusted(Box::new(
        evidence,
    )));
    assert_required_refusal(&mut store, &module, &host, &reused, "EVIDENCE_MISMATCH");
    assert_eq!(store.current().unwrap().position, 1);
}
