#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Whole-Store creation through the supported facade. These test probes are
//! deliberately nonconforming; filesystem assertions are scoped to the test host.
#[path = "support/durable_backend.rs"]
mod host;
use behavior_engine::semantic::Module;
use behavior_engine::store::documents::{
    EntityKey, EntityVersion, EvidencePolicy, Genesis, Head, RefChange, SeedEntity, StoreError,
    TransitionRecord,
};
use behavior_engine::store::store::{genesis_for, genesis_v2_for};
use behavior_engine::store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store};
use behavior_engine::verify::governance::EvidencePolicyV2;
use serde_json::{Value, json};
use std::collections::{BTreeMap, BTreeSet};
use std::path::PathBuf;
use std::sync::Arc;
use std::sync::atomic::{AtomicUsize, Ordering};
static NEXT: AtomicUsize = AtomicUsize::new(0);
const NOW: &str = "2026-10-12T12:00:00Z";

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
fn seed() -> Vec<SeedEntity> {
    vec![
        SeedEntity {
            entity: "Customer".into(),
            value: json!({"id":"c1","name":"Ada"}),
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
}
fn genesis(m: &Module, v2: bool, seed: Vec<SeedEntity>) -> Genesis {
    if v2 {
        let policy = EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
        genesis_v2_for(m, policy, seed).unwrap()
    } else {
        genesis_for(m, EvidencePolicy::none(), seed)
    }
}
fn refused<B: Backend>(result: Result<Store<B>, StoreError>) -> StoreError {
    result
        .err()
        .expect("the incomplete or invalid attempt must be refused")
}
#[derive(Clone, Copy)]
enum ProbeMode {
    Delegate,
    NoPublication,
    GenesisOnly,
    AfterPublicationError,
    AfterPublicationAndObservationError,
}
struct Probe {
    inner: InMemoryBackend,
    creates: Arc<AtomicUsize>,
    mode: ProbeMode,
    claimed: Option<Genesis>,
}
impl Probe {
    fn new(mode: ProbeMode) -> (Self, Arc<AtomicUsize>) {
        let creates = Arc::new(AtomicUsize::new(0));
        (
            Self {
                inner: InMemoryBackend::new(),
                creates: creates.clone(),
                mode,
                claimed: None,
            },
            creates,
        )
    }
}
impl Backend for Probe {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        Ok(self.claimed.clone().or(self.inner.genesis()?))
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
        self.creates.fetch_add(1, Ordering::Relaxed);
        match self.mode {
            ProbeMode::Delegate => self.inner.create(g, h, s, r),
            ProbeMode::NoPublication => Ok(()),
            ProbeMode::GenesisOnly => {
                self.claimed = Some(g.clone());
                Ok(())
            }
            ProbeMode::AfterPublicationError | ProbeMode::AfterPublicationAndObservationError => {
                // Dormant compiling fault scaffold: the activation assertion
                // must fail before this test instrument is implemented.
                self.inner.create(g, h, s, r)
            }
        }
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
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(k)
    }
    fn incoming_at(&self, k: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.inner.incoming_at(k, p)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
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
        self.inner.commit(e, v, r, f, t, h)
    }
}
struct Scratch(PathBuf);
impl Scratch {
    fn new() -> Self {
        let path = std::env::temp_dir().join(format!(
            "019-facade-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        std::fs::create_dir(&path).unwrap();
        // Establish the root separately. Process tests do not establish device
        // power-loss behavior; this records the host's parent-entry premise.
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

#[test]
fn supported_genesis_profiles_open_exact_empty_and_referenced_products() {
    let m = module();
    for v2 in [false, true] {
        for seeds in [vec![], seed()] {
            let g = genesis(&m, v2, seeds.clone());
            let (backend, calls) = Probe::new(ProbeMode::Delegate);
            let s = Store::create(backend, &m, g.clone()).unwrap();
            assert_eq!(
                calls.load(Ordering::Relaxed),
                1,
                "legal control activates probe"
            );
            let history = s.current_history().unwrap();
            assert_eq!(history.position, 0);
            assert_eq!(history.store, g.hash().unwrap());
            assert_eq!(history.record, g.hash().unwrap());
            assert!(s.backend().record(0).unwrap().is_none());
            for entity in ["Account", "AuditNote", "Customer"] {
                let actual: BTreeSet<_> = s
                    .backend()
                    .keys_at(entity, 0)
                    .unwrap()
                    .into_iter()
                    .collect();
                let expected: BTreeSet<_> = seeds
                    .iter()
                    .filter(|item| item.entity == entity)
                    .map(|item| key(entity, item.value["id"].as_str().unwrap()))
                    .collect();
                assert_eq!(actual, expected);
            }
            for item in &seeds {
                let k = key(&item.entity, item.value["id"].as_str().unwrap());
                let original = s.backend().version(&k, 1).unwrap().unwrap();
                assert_eq!((original.revision, original.created_at), (1, 0));
                assert_eq!(original, s.backend().version_at(&k, 0).unwrap().unwrap());
                assert_eq!(original.value, item.value);
                assert!(s.backend().used_at(&k, 0).unwrap());
            }
            if !seeds.is_empty() {
                assert_eq!(
                    s.backend().incoming_at(&key("Customer", "c1"), 0).unwrap(),
                    vec![RefEdge {
                        entity: "Account".into(),
                        id: "a1".into(),
                        field: "owner".into()
                    }]
                );
                assert!(
                    s.backend()
                        .incoming_at(&key("Customer", "c2"), 0)
                        .unwrap()
                        .is_empty(),
                    "plain Id is not a required Ref"
                );
            }
            let reopened = Store::open(s.into_backend()).unwrap();
            assert_eq!(reopened.current_history().unwrap(), history);
            assert_eq!(reopened.genesis().unwrap(), g);
        }
    }
}

#[test]
fn legacy_raw_decimal_seed_is_not_confused_with_encoded_original_version() {
    let m = module();
    let mut raw = seed();
    raw[2].value["balance"] = json!("0");
    let g = genesis(&m, false, raw);
    let s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    assert_eq!(s.genesis().unwrap().seed[2].value["balance"], "0");
    assert_eq!(
        s.backend()
            .version(&key("Account", "a1"), 1)
            .unwrap()
            .unwrap()
            .value["balance"],
        "0.00"
    );
    let s = Store::open(s.into_backend()).unwrap();
    assert_eq!(s.genesis().unwrap(), g);
}

#[test]
fn invalid_original_candidates_never_request_backend_publication() {
    let m = module();
    let mut cases = Vec::new();
    let mut wrong_type = seed();
    wrong_type[0].value["name"] = json!(17);
    cases.push(wrong_type);
    let mut duplicate = seed();
    duplicate.push(duplicate[0].clone());
    cases.push(duplicate);
    let mut dangling = seed();
    dangling[2].value["owner"] = json!("missing");
    cases.push(dangling);
    let mut negative = seed();
    negative[2].value["balance"] = json!("-1.00");
    cases.push(negative);
    let mut off_grid = seed();
    off_grid[2].value["balance"] = json!("0.001");
    cases.push(off_grid);
    for candidate in cases {
        let (backend, calls) = Probe::new(ProbeMode::Delegate);
        let error = refused(Store::create(backend, &m, genesis(&m, false, candidate)));
        assert_eq!(error.code(), "GENESIS_INVALID", "{error}");
        assert_eq!(calls.load(Ordering::Relaxed), 0);
    }
    let mut g = genesis(&m, false, seed());
    g.entity_declarations.remove("Customer");
    let (backend, calls) = Probe::new(ProbeMode::Delegate);
    assert_eq!(
        refused(Store::create(backend, &m, g)).code(),
        "SCHEMA_MISMATCH"
    );
    assert_eq!(calls.load(Ordering::Relaxed), 0);
}

#[test]
fn success_without_publication_is_rejected_after_the_probe_activates() {
    let m = module();
    let (backend, calls) = Probe::new(ProbeMode::NoPublication);
    let result = Store::create(backend, &m, genesis(&m, false, seed()));
    assert_eq!(calls.load(Ordering::Relaxed), 1);
    assert_eq!(refused(result).code(), "STORE_INCOMPLETE");
}

#[test]
fn acknowledged_genesis_only_product_does_not_become_an_openable_store() {
    let m = module();
    let g = genesis(&m, false, seed());
    let legal = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let h = legal.backend().head().unwrap().unwrap();
    let originals: Vec<_> = g
        .seed
        .iter()
        .map(|s| {
            legal
                .backend()
                .version(&key(&s.entity, s.value["id"].as_str().unwrap()), 1)
                .unwrap()
                .unwrap()
        })
        .collect();
    let (mut probe, calls) = Probe::new(ProbeMode::GenesisOnly);
    probe.create(&g, &h, &originals, &[]).unwrap();
    assert_eq!(calls.load(Ordering::Relaxed), 1);
    assert!(probe.genesis().unwrap().is_some());
    assert!(probe.head().unwrap().is_none());
    assert_eq!(refused(Store::open(probe)).code(), "STORE_INCOMPLETE");
}

#[test]
fn malformed_authoritative_snapshot_is_never_reinterpreted_or_overwritten() {
    let m = module();
    let scratch = Scratch::new();
    let path = scratch.0.join("store.json");
    let bytes = br#"{"genesis":null,"genesis":null,"head":null,"versions":[],"records":[],"removals":[],"refs":[]}"#;
    std::fs::write(&path, bytes).unwrap();
    let error = refused(Store::create(
        host::DurableBackend::open(&scratch.0).unwrap(),
        &m,
        genesis(&m, false, seed()),
    ));
    assert_eq!(error.code(), "BACKEND_ERROR");
    assert_eq!(std::fs::read(&path).unwrap(), bytes);
}

#[test]
fn nullable_authoritative_snapshot_is_integrity_failure_not_absence() {
    let m = module();
    let scratch = Scratch::new();
    let path = scratch.0.join("store.json");
    let bytes =
        br#"{"genesis":null,"head":null,"versions":[],"records":[],"removals":[],"refs":[]}"#;
    std::fs::write(&path, bytes).unwrap();
    let result = Store::create(
        host::DurableBackend::open(&scratch.0).unwrap(),
        &m,
        genesis(&m, false, seed()),
    );
    assert_eq!(refused(result).code(), "BACKEND_ERROR");
    assert_eq!(std::fs::read(&path).unwrap(), bytes);
}

fn commit_action<B: Backend>(
    store: &mut Store<B>,
    m: &Module,
    action: &str,
    binding: &[(&str, &str)],
    input: Value,
) {
    let bindings = binding
        .iter()
        .map(|(name, id)| (name.to_string(), id.to_string()))
        .collect();
    let evaluation = store
        .evaluate(m, action, &bindings, &input, &json!({}), NOW, None)
        .unwrap();
    let bundle = evaluation
        .bundle
        .unwrap_or_else(|| panic!("{action}: {}", evaluation.record));
    store.commit(m, &bundle.evaluated_state, &bundle).unwrap();
}
fn migrate_customer_tag<B: Backend>(store: &mut Store<B>, source: &Module) -> Module {
    let mut wire: Value = serde_json::from_str(include_str!(
        "../../tests/fixtures/wire/valid/accounts.json"
    ))
    .unwrap();
    wire["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"tag","type":{"t":"int"},"loc":{"file":"019-migration.beh","line":1}}));
    let target = behavior_engine::admit(&wire.to_string()).unwrap();
    let migration = json!({"migration_ir":"0.1","name":"add_customer_tag",
        "source":behavior_engine::schema(source).hash,"target":behavior_engine::schema(&target).hash,
        "constants":[],"requirements":[],"retire":[],
        "transforms":[{"entity":"Customer","fields":{"tag":{"op":"lit","type":{"t":"int"},"value":1,"loc":{"file":"019-migration.beh","line":1}}},"drops":[],"loc":{"file":"019-migration.beh","line":1}}]});
    let migration =
        behavior_engine::migration::admit_migration(source, &target, &migration.to_string())
            .unwrap();
    store
        .migrate(&migration, source, &target, NOW, None)
        .unwrap();
    target
}

#[test]
fn equivalent_retry_preserves_both_supported_original_creation_profiles() {
    let m = module();
    for v2 in [false, true] {
        let g = genesis(&m, v2, seed());
        let s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
        let initial = s.current_history().unwrap();
        let recovered = Store::create(s.into_backend(), &m, g.clone())
            .unwrap_or_else(|e| panic!("equivalent recovery must succeed: {e}"));
        assert_eq!(recovered.current_history().unwrap(), initial);
        assert_eq!(recovered.genesis().unwrap(), g);
    }
}

#[test]
fn original_create_recovers_after_update_and_migration_without_schema_reset() {
    let m = module();
    for v2 in [false, true] {
        let g = genesis(&m, v2, seed());
        let mut s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
        commit_action(
            &mut s,
            &m,
            "deposit",
            &[("account", "a1")],
            json!({"amount":"1.00"}),
        );
        let target = migrate_customer_tag(&mut s, &m);
        let before = s.current_history().unwrap();
        let current = s.current().unwrap();
        let schema = s.schema_at(&current).unwrap();
        assert_eq!(
            schema.hash,
            behavior_engine::schema(&target).hash,
            "legal migration control"
        );
        let original = s
            .backend()
            .version(&key("Account", "a1"), 1)
            .unwrap()
            .unwrap();
        let recovered = Store::create(s.into_backend(), &m, g.clone())
            .unwrap_or_else(|e| panic!("advanced original-request recovery: {e}"));
        assert_eq!(recovered.current_history().unwrap(), before);
        assert_eq!(recovered.schema_at(&current).unwrap(), schema);
        assert_eq!(
            recovered
                .backend()
                .version(&key("Account", "a1"), 1)
                .unwrap(),
            Some(original)
        );
        assert_eq!(
            recovered
                .load(&key("Customer", "c1"), &current)
                .unwrap()
                .value["tag"],
            1
        );
        let bindings = BTreeMap::from([("account".into(), "a1".into())]);
        let error = recovered
            .evaluate(
                &m,
                "deposit",
                &bindings,
                &json!({"amount":"1.00"}),
                &json!({}),
                NOW,
                None,
            )
            .err()
            .unwrap();
        assert_eq!(error.code(), "SCHEMA_MISMATCH");
        assert_eq!(
            recovered
                .evaluate(
                    &target,
                    "deposit",
                    &bindings,
                    &json!({"amount":"1.00"}),
                    &json!({}),
                    NOW,
                    None
                )
                .unwrap()
                .record["result"],
            "ALLOW"
        );
    }
}

#[test]
fn later_equal_state_recovery_preserves_used_lifetimes_and_history_position() {
    let m = module();
    let g = genesis(&m, true, seed());
    let mut s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let initial = s.current().unwrap();
    commit_action(
        &mut s,
        &m,
        "register_customer",
        &[],
        json!({"customer_id":"temporary","name":"temporary"}),
    );
    commit_action(
        &mut s,
        &m,
        "remove_customer",
        &[("customer", "temporary")],
        json!({}),
    );
    let before = s.current_history().unwrap();
    assert_eq!(before.position, 2);
    assert_eq!(before.state, initial.state);
    assert!(
        s.backend()
            .used_at(&key("Customer", "temporary"), 2)
            .unwrap()
    );
    let recovered = Store::create(s.into_backend(), &m, g)
        .unwrap_or_else(|e| panic!("later equal-state recovery: {e}"));
    assert_eq!(recovered.current_history().unwrap(), before);
    assert_eq!(
        recovered
            .backend()
            .removed_at(&key("Customer", "temporary"))
            .unwrap(),
        Some(2)
    );
    let evaluation = recovered
        .evaluate(
            &m,
            "register_customer",
            &BTreeMap::new(),
            &json!({"customer_id":"temporary","name":"again"}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap();
    assert_eq!(evaluation.record["result"], "ENTITY_ID_ALREADY_USED");
}

#[test]
fn primary_creation_failure_survives_equivalent_or_unavailable_secondary_evidence() {
    let m = module();
    for mode in [
        ProbeMode::AfterPublicationError,
        ProbeMode::AfterPublicationAndObservationError,
    ] {
        let (backend, calls) = Probe::new(mode);
        let error = refused(Store::create(backend, &m, genesis(&m, false, seed())));
        assert_eq!(calls.load(Ordering::Relaxed), 1);
        assert_eq!(
            error,
            StoreError::Backend("019 primary lost acknowledgment".into())
        );
    }
}

#[test]
fn direct_durable_backend_retry_preserves_an_advanced_snapshot() {
    let m = module();
    let scratch = Scratch::new();
    let g = genesis(&m, true, seed());
    let mut s = Store::create(
        host::DurableBackend::open(&scratch.0).unwrap(),
        &m,
        g.clone(),
    )
    .unwrap();
    let h0 = s.backend().head().unwrap().unwrap();
    let versions: Vec<_> = g
        .seed
        .iter()
        .map(|item| {
            s.backend()
                .version(&key(&item.entity, item.value["id"].as_str().unwrap()), 1)
                .unwrap()
                .unwrap()
        })
        .collect();
    let refs = vec![RefChange {
        target: key("Customer", "c1"),
        source: key("Account", "a1"),
        field: "owner".into(),
        op: "add".into(),
    }];
    commit_action(
        &mut s,
        &m,
        "deposit",
        &[("account", "a1")],
        json!({"amount":"1.00"}),
    );
    migrate_customer_tag(&mut s, &m);
    let before = s.current_history().unwrap();
    let primary = std::fs::read(scratch.0.join("store.json")).unwrap();
    let mut backend = s.into_backend();
    backend
        .create(&g, &h0, &versions, &refs)
        .unwrap_or_else(|e| panic!("direct Backend advanced retry: {e}"));
    assert_eq!(
        std::fs::read(scratch.0.join("store.json")).unwrap(),
        primary
    );
    assert_eq!(
        Store::open(backend).unwrap().current_history().unwrap(),
        before
    );
}
