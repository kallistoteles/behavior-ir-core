//! Private whole-Store creation conformance. These around-call instruments test
//! observable obligations; they do not simulate host-private writes or power loss.
use super::*;
use std::cell::Cell;
use std::collections::BTreeSet;
use std::rc::Rc;

// One-shot deterministic schedules have independent activation tests. Taking
// the pending action before borrowing the target avoids recursive RefMut use.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum ScheduleAt {
    BeforeCreate,
    AfterAbsentGenesis,
    AfterGenesis,
    BeforeHead,
    AfterHead,
}
enum Scheduled {
    Publish(Box<Publication>),
    Commit(Box<Landing>),
}

#[derive(Clone, Copy, PartialEq, Eq)]
enum Mode {
    Normal,
    NoPublication,
    GenesisOnly,
    MissingHead,
    MissingSeed,
    CorruptContent,
    CorruptAnchor,
    MissingRefs,
}

// These private selectors have separate observed activation REDs. Registration
// failures alone do not establish that a fault instrument actually executed.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum CreateFault {
    BeforePublish,
    AfterPublish,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum ReadFault {
    Genesis,
    Head,
    VersionAt,
    Version,
    Record,
    Removed,
    Incoming,
    Keys,
    Used,
    FieldIndex,
}

struct Probe<B> {
    inner: Rc<RefCell<B>>,
    creates: Rc<Cell<usize>>,
    mode: Mode,
    staged_genesis: Rc<RefCell<Option<Genesis>>>,
    hits: Rc<Cell<usize>>,
    create_fault: Rc<Cell<Option<CreateFault>>>,
    read_fault: Rc<Cell<Option<ReadFault>>>,
    schedule: Rc<RefCell<Option<(ScheduleAt, Scheduled)>>>,
    landed: Rc<Cell<usize>>,
    reverse_edges: Rc<Cell<bool>>,
    unindexed: Rc<Cell<bool>>,
}
impl<B> Clone for Probe<B> {
    fn clone(&self) -> Self {
        Self {
            inner: Rc::clone(&self.inner),
            creates: Rc::clone(&self.creates),
            mode: self.mode,
            staged_genesis: Rc::clone(&self.staged_genesis),
            hits: Rc::clone(&self.hits),
            create_fault: Rc::clone(&self.create_fault),
            read_fault: Rc::clone(&self.read_fault),
            schedule: Rc::clone(&self.schedule),
            landed: Rc::clone(&self.landed),
            reverse_edges: Rc::clone(&self.reverse_edges),
            unindexed: Rc::clone(&self.unindexed),
        }
    }
}
impl<B> Probe<B> {
    fn new(inner: B, mode: Mode) -> Self {
        Self {
            inner: Rc::new(RefCell::new(inner)),
            creates: Rc::new(Cell::new(0)),
            mode,
            staged_genesis: Rc::new(RefCell::new(None)),
            hits: Rc::new(Cell::new(0)),
            create_fault: Rc::new(Cell::new(None)),
            read_fault: Rc::new(Cell::new(None)),
            schedule: Rc::new(RefCell::new(None)),
            landed: Rc::new(Cell::new(0)),
            reverse_edges: Rc::new(Cell::new(false)),
            unindexed: Rc::new(Cell::new(false)),
        }
    }
    fn hit(&self) {
        self.hits.set(self.hits.get() + 1);
    }
    fn check_read(&self, point: ReadFault) -> Result<(), BackendError> {
        if self.read_fault.get() == Some(point) {
            self.hit();
            Err(BackendError(format!("019 conformance {point:?}")))
        } else {
            Ok(())
        }
    }
    fn version_view(&self, mut value: Option<EntityVersion>) -> Option<EntityVersion> {
        if self.mode == Mode::MissingSeed {
            self.hit();
            return None;
        }
        if self.mode == Mode::CorruptContent
            && let Some(v) = &mut value
        {
            self.hit();
            v.content_hash = format!("sha256:{}", "f".repeat(64));
        }
        value
    }
}
impl<B: Backend> Probe<B> {
    fn land(&self, at: ScheduleAt) -> Result<(), BackendError> {
        let scheduled = {
            let mut pending = self.schedule.borrow_mut();
            if pending.as_ref().is_some_and(|(point, _)| *point == at) {
                pending.take().map(|(_, action)| action)
            } else {
                None
            }
        };
        let Some(scheduled) = scheduled else {
            return Ok(());
        };
        match scheduled {
            Scheduled::Publish(product) => product.publish(&mut *self.inner.borrow_mut())?,
            Scheduled::Commit(landing) => {
                let outcome = self.inner.borrow_mut().commit(
                    &landing.expected,
                    &landing.versions,
                    &landing.removals,
                    &landing.ref_changes,
                    &landing.record,
                    &landing.head,
                )?;
                if outcome != CasOutcome::Applied {
                    return Err(BackendError(
                        "019 conformance schedule did not apply".into(),
                    ));
                }
            }
        }
        self.landed.set(self.landed.get() + 1);
        Ok(())
    }
}
impl<B: Backend> Backend for Probe<B> {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.check_read(ReadFault::Genesis)?;
        let value = if self.mode == Mode::GenesisOnly {
            self.hit();
            self.staged_genesis.borrow().clone()
        } else {
            self.inner.borrow().genesis()?
        };
        if value.is_none() {
            self.land(ScheduleAt::AfterAbsentGenesis)?;
        }
        self.land(ScheduleAt::AfterGenesis)?;
        Ok(value)
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        self.check_read(ReadFault::Head)?;
        self.land(ScheduleAt::BeforeHead)?;
        if self.mode == Mode::MissingHead {
            self.hit();
            return Ok(None);
        }
        let mut head = self.inner.borrow().head()?;
        if self.mode == Mode::CorruptAnchor
            && let Some(h) = &mut head
        {
            self.hit();
            h.last_record = format!("sha256:{}", "f".repeat(64));
        }
        self.land(ScheduleAt::AfterHead)?;
        Ok(head)
    }
    fn create(
        &mut self,
        g: &Genesis,
        h: &Head,
        s: &[EntityVersion],
        r: &[RefChange],
    ) -> Result<(), BackendError> {
        self.creates.set(self.creates.get() + 1);
        self.land(ScheduleAt::BeforeCreate)?;
        let fault = self.create_fault.take();
        if fault == Some(CreateFault::BeforePublish) {
            self.hit();
            return Err(BackendError("019 conformance before publication".into()));
        }
        match self.mode {
            Mode::NoPublication => {
                self.hit();
                Ok(())
            }
            Mode::GenesisOnly => {
                self.hit();
                *self.staged_genesis.borrow_mut() = Some(g.clone());
                Ok(())
            }
            _ => self.inner.borrow_mut().create(g, h, s, r),
        }?;
        if fault == Some(CreateFault::AfterPublish) {
            self.hit();
            return Err(BackendError("019 conformance after publication".into()));
        }
        Ok(())
    }
    fn version_at(&self, k: &EntityKey, p: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.check_read(ReadFault::VersionAt)?;
        let value = self.inner.borrow().version_at(k, p)?;
        Ok(self.version_view(value))
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.check_read(ReadFault::Version)?;
        let value = self.inner.borrow().version(k, r)?;
        Ok(self.version_view(value))
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.check_read(ReadFault::Record)?;
        self.inner.borrow().record(p)
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.check_read(ReadFault::Removed)?;
        self.inner.borrow().removed_at(k)
    }
    fn incoming_at(&self, k: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.check_read(ReadFault::Incoming)?;
        if self.mode == Mode::MissingRefs {
            self.hit();
            return Ok(vec![]);
        }
        let mut incoming = self.inner.borrow().incoming_at(k, p)?;
        if self.reverse_edges.get() {
            incoming.reverse();
        }
        Ok(incoming)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.check_read(ReadFault::Keys)?;
        self.inner.borrow().keys_at(t, p)
    }
    fn keys_by_field_at(
        &self,
        t: &str,
        f: &str,
        v: &Json,
        p: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        self.check_read(ReadFault::FieldIndex)?;
        if self.unindexed.get() {
            return Ok(None);
        }
        self.inner.borrow().keys_by_field_at(t, f, v, p)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        self.check_read(ReadFault::Used)?;
        self.inner.borrow().used_at(k, p)
    }
    fn commit(
        &mut self,
        e: &str,
        v: &[EntityVersion],
        r: &[EntityKey],
        c: &[RefChange],
        t: &TransitionRecord,
        h: &Head,
    ) -> Result<CasOutcome, BackendError> {
        self.inner.borrow_mut().commit(e, v, r, c, t, h)
    }
}

fn genesis(module: &Module, seed: Vec<SeedEntity>, v2: bool) -> Result<Genesis, String> {
    if v2 {
        let policy = behavior_verify::governance::trusted::EvidencePolicyV2::from_json(
            r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#
        ).map_err(e)?;
        crate::store::genesis_v2_for(module, policy, seed).map_err(e)
    } else {
        Ok(genesis_for(module, EvidencePolicy::none(), seed))
    }
}

fn same_product<B: Backend, R: Backend>(
    actual: &Store<B>,
    expected: &Store<R>,
    g: &Genesis,
) -> Result<(), String> {
    ensure(
        actual.genesis().map_err(e)? == *g,
        "creation genesis differs",
    )?;
    ensure(
        actual.backend().head().map_err(e)? == expected.backend().head().map_err(e)?,
        "creation initial head differs",
    )?;
    ensure(
        actual.current_history().map_err(e)? == expected.current_history().map_err(e)?,
        "creation original history anchor differs",
    )?;
    ensure(
        actual.backend().record(1).map_err(e)?.is_none(),
        "creation inserted a transition event",
    )?;
    for entity in g.entity_declarations.keys() {
        let mut keys = actual.backend().keys_at(entity, 0).map_err(e)?;
        let mut reference = expected.backend().keys_at(entity, 0).map_err(e)?;
        keys.sort();
        reference.sort();
        ensure(keys == reference, "creation original universe differs")?;
        for key in keys {
            ensure(
                actual.backend().version_at(&key, 0).map_err(e)?
                    == expected.backend().version_at(&key, 0).map_err(e)?,
                "creation original as-of incarnation differs",
            )?;
            ensure(
                actual.backend().version(&key, 1).map_err(e)?
                    == expected.backend().version(&key, 1).map_err(e)?,
                "creation original revision differs",
            )?;
            ensure(
                actual.backend().used_at(&key, 0).map_err(e)?,
                "creation lost original identity lifetime",
            )?;
            ensure(
                actual.backend().removed_at(&key).map_err(e)?.is_none(),
                "creation seed identity was removed",
            )?;
            let mut incoming = actual.backend().incoming_at(&key, 0).map_err(e)?;
            let mut original = expected.backend().incoming_at(&key, 0).map_err(e)?;
            incoming.sort();
            original.sort();
            ensure(
                incoming == original,
                "creation original reference relation differs",
            )?;
        }
    }
    Ok(())
}

pub(super) fn complete_product<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = accounts()?;
    for v2 in [false, true] {
        for seed in [vec![], accounts_seed()] {
            let g = genesis(&module, seed, v2)?;
            // Both products are derived by the authoritative Core validator.
            let reference =
                Store::create(crate::InMemoryBackend::new(), &module, g.clone()).map_err(e)?;
            let store = Store::create(factory(), &module, g.clone()).map_err(e)?;
            same_product(&store, &reference, &g)?;
            let reopened = Store::open(store.into_backend()).map_err(e)?;
            same_product(&reopened, &reference, &g)?;
        }
    }
    Ok(())
}

fn refuses_without_publish<B: Backend>(
    factory: &dyn Fn() -> B,
    module: &Module,
    g: Genesis,
    code: &str,
) -> Result<(), String> {
    let probe = Probe::new(factory(), Mode::Normal);
    let observer = probe.clone();
    let result = Store::create(probe, module, g);
    let err = match result {
        Err(error) => error,
        Ok(_) => return Err("invalid creation returned a Store".into()),
    };
    ensure(
        err.code() == code,
        format!("invalid creation category: {}", err.code()),
    )?;
    ensure(
        observer.creates.get() == 0,
        "invalid seed invoked Backend publication",
    )?;
    ensure(
        observer.genesis().map_err(e)?.is_none() && observer.head().map_err(e)?.is_none(),
        "invalid seed published primary material",
    )
}

pub(super) fn invalid_seed_no_publish<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = ledger()?;
    for v2 in [false, true] {
        let original = genesis(&module, seed(), v2)?;
        for invalid in [
            json!({"id":"a1","active":"bad","balance":"100.00"}),
            json!({"id":"a1","active":true,"balance":"1.001"}),
            json!({"id":"a1","active":true,"balance":"-1.00"}),
            json!({"id":"a1","active":true,"balance":"100.00","unexpected":true}),
            json!({"active":true,"balance":"100.00"}),
        ] {
            let mut g = original.clone();
            g.seed[0].value = invalid;
            refuses_without_publish(factory, &module, g, "GENESIS_INVALID")?;
        }
        let mut duplicate = original.clone();
        duplicate.seed.push(duplicate.seed[0].clone());
        refuses_without_publish(factory, &module, duplicate, "GENESIS_INVALID")?;
        let mut wrong_schema = original.clone();
        wrong_schema
            .entity_declarations
            .insert("Account".into(), format!("sha256:{}", "a".repeat(64)));
        refuses_without_publish(factory, &module, wrong_schema, "SCHEMA_MISMATCH")?;
        let accounts = accounts()?;
        let mut missing_ref = genesis(&accounts, accounts_seed(), v2)?;
        missing_ref
            .seed
            .retain(|s| !(s.entity == "Customer" && s.value["id"] == "c1"));
        refuses_without_publish(factory, &accounts, missing_ref, "GENESIS_INVALID")?;
        let mut wire: Json = serde_json::from_str(LEDGER_WIRE).map_err(e)?;
        // Module invariants were introduced in Wire 0.6. This fresh fixture
        // uses that admitted profile rather than retagging historical evidence.
        wire["ir_version"] = json!("0.6");
        let loc = json!({"file":"creation-conformance","line":1});
        wire["invariants"] = json!([{"name":"false_global","loc":loc,"body":{"op":"lit","type":{"t":"bool"},"value":false,"loc":loc}}]);
        let global =
            behavior_core::admit(&wire.to_string()).map_err(|r| format!("{:?}", r.errors))?;
        refuses_without_publish(
            factory,
            &global,
            genesis(&global, seed(), v2)?,
            "GENESIS_INVALID",
        )?;
    }
    Ok(())
}

pub(super) fn incomplete_product<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = accounts()?;
    for v2 in [false, true] {
        for mode in [
            Mode::NoPublication,
            Mode::GenesisOnly,
            Mode::MissingHead,
            Mode::MissingSeed,
            Mode::CorruptContent,
            Mode::CorruptAnchor,
            Mode::MissingRefs,
        ] {
            let g = genesis(&module, accounts_seed(), v2)?;
            let probe = Probe::new(factory(), mode);
            let observer = probe.clone();
            let result = Store::create(probe, &module, g);
            let error = match result {
                Err(error) => error,
                Ok(_) => return Err("incomplete publication gained Store authority".into()),
            };
            ensure(
                ["STORE_INCOMPLETE", "HISTORY_MISMATCH", "BUNDLE_INVALID"].contains(&error.code()),
                format!("incomplete creation category: {}", error.code()),
            )?;
            ensure(
                observer.hits.get() > 0,
                "incomplete publication fixture did not activate",
            )?;
            if mode != Mode::MissingRefs {
                ensure(
                    Store::open(observer).is_err(),
                    "ordinary opening exposed an incomplete Store",
                )?;
            }
        }
    }
    Ok(())
}

pub(super) fn before_publication_failure<B: Backend>(
    factory: &dyn Fn() -> B,
) -> Result<(), String> {
    let module = ledger()?;
    for v2 in [false, true] {
        let g = genesis(&module, seed(), v2)?;
        let probe = Probe::new(factory(), Mode::Normal);
        let observer = probe.clone();
        probe.create_fault.set(Some(CreateFault::BeforePublish));
        let error = match Store::create(probe, &module, g) {
            Err(error) => error,
            Ok(_) => return Err("before-publication failure returned success".into()),
        };
        ensure(
            error.code() == "BACKEND_ERROR"
                && error
                    .to_string()
                    .contains("019 conformance before publication"),
            "primary prepublication error changed",
        )?;
        ensure(
            observer.creates.get() == 1 && observer.hits.get() == 1,
            "before-publication fault did not activate exactly once",
        )?;
        ensure(
            observer.genesis().map_err(e)?.is_none() && observer.head().map_err(e)?.is_none(),
            "isolated before-publication failure exposed a Store",
        )?;
    }
    Ok(())
}

fn original_parts(
    module: &Module,
    g: &Genesis,
) -> Result<(Head, Vec<EntityVersion>, Vec<RefChange>), String> {
    let reference = Store::create(crate::InMemoryBackend::new(), module, g.clone()).map_err(e)?;
    let head = reference
        .backend()
        .head()
        .map_err(e)?
        .ok_or("reference initial head missing")?;
    let mut versions = Vec::new();
    let mut refs = Vec::new();
    for entity in g.entity_declarations.keys() {
        for key in reference.backend().keys_at(entity, 0).map_err(e)? {
            versions.push(
                reference
                    .backend()
                    .version_at(&key, 0)
                    .map_err(e)?
                    .ok_or("reference original version missing")?,
            );
            for edge in reference.backend().incoming_at(&key, 0).map_err(e)? {
                refs.push(RefChange {
                    target: key.clone(),
                    source: EntityKey {
                        entity: edge.entity,
                        id: edge.id,
                    },
                    field: edge.field,
                    op: "add".into(),
                });
            }
        }
    }
    versions.sort_by_key(EntityVersion::key);
    refs.sort();
    Ok((head, versions, refs))
}

pub(super) fn lost_ack_recovery<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = ledger()?;
    for v2 in [false, true] {
        let g = genesis(&module, seed(), v2)?;
        let probe = Probe::new(factory(), Mode::Normal);
        let observer = probe.clone();
        probe.create_fault.set(Some(CreateFault::AfterPublish));
        let error = match Store::create(probe, &module, g.clone()) {
            Err(error) => error,
            Ok(_) => return Err("lost creation acknowledgment was fabricated as success".into()),
        };
        ensure(
            error.code() == "BACKEND_ERROR"
                && error
                    .to_string()
                    .contains("019 conformance after publication"),
            "primary lost-ack error changed",
        )?;
        ensure(
            observer.hits.get() == 1 && observer.creates.get() == 1,
            "lost-ack control did not activate",
        )?;
        let recovered = Store::create(observer.clone(), &module, g.clone()).map_err(e)?;
        let reference =
            Store::create(crate::InMemoryBackend::new(), &module, g.clone()).map_err(e)?;
        same_product(&recovered, &reference, &g)?;
        ensure(
            observer.creates.get() == 1,
            "Store retry published a second initialization",
        )?;
        let (head, versions, refs) = original_parts(&module, &g)?;
        let mut direct = observer.clone();
        direct.create(&g, &head, &versions, &refs).map_err(e)?;
        same_product(&recovered, &reference, &g)?;
        ensure(
            observer.creates.get() == 2,
            "direct Backend idempotency was not exercised",
        )?;
    }
    Ok(())
}

pub(super) fn recovery_read_failure<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = ledger()?;
    for v2 in [false, true] {
        for point in [
            ReadFault::Genesis,
            ReadFault::Head,
            ReadFault::VersionAt,
            ReadFault::Version,
            ReadFault::Record,
            ReadFault::Removed,
            ReadFault::Incoming,
            ReadFault::Keys,
            ReadFault::Used,
        ] {
            let g = genesis(&module, seed(), v2)?;
            let probe = Probe::new(factory(), Mode::Normal);
            let observer = probe.clone();
            let mut store = Store::create(probe, &module, g.clone()).map_err(e)?;
            let bundle = bundle(unary(&store, &module, "touch", "a1")?)?;
            commit(&mut store, &module, &bundle)?;
            let before = observer.head().map_err(e)?;
            let creates = observer.creates.get();
            observer.read_fault.set(Some(point));
            let error = match Store::create(store.into_backend(), &module, g) {
                Err(error) => error,
                Ok(_) => {
                    return Err(format!(
                        "required {point:?} failure returned successful recovery"
                    ));
                }
            };
            ensure(
                error.code() == "BACKEND_ERROR"
                    && error
                        .to_string()
                        .contains(&format!("019 conformance {point:?}")),
                format!("required {point:?} operational error changed"),
            )?;
            ensure(
                observer.hits.get() > 0,
                format!("required {point:?} fault never executed"),
            )?;
            observer.read_fault.set(None);
            ensure(
                observer.head().map_err(e)? == before && observer.creates.get() == creates,
                "failed recovery mutated the original lineage",
            )?;
        }
    }
    Ok(())
}

#[cfg(test)]
mod fault_activation_tests {
    #![allow(clippy::unwrap_used, clippy::expect_used)]
    use super::*;

    #[test]
    fn private_before_create_fault_must_activate_before_publication() {
        let module = ledger().unwrap();
        let g = genesis(&module, seed(), false).unwrap();
        let probe = Probe::new(crate::InMemoryBackend::new(), Mode::Normal);
        let observer = probe.clone();
        probe.create_fault.set(Some(CreateFault::BeforePublish));
        let result = Store::create(probe, &module, g);
        assert!(result.is_err(), "private before-create selector is dormant");
        assert_eq!(result.err().unwrap().code(), "BACKEND_ERROR");
        assert!(observer.genesis().unwrap().is_none());
        assert_eq!(observer.hits.get(), 1);
    }
    #[test]
    fn private_after_create_fault_must_retain_publication_and_error() {
        let module = ledger().unwrap();
        let g = genesis(&module, seed(), false).unwrap();
        let probe = Probe::new(crate::InMemoryBackend::new(), Mode::Normal);
        let observer = probe.clone();
        probe.create_fault.set(Some(CreateFault::AfterPublish));
        let result = Store::create(probe, &module, g.clone());
        assert!(result.is_err(), "private after-create selector is dormant");
        assert_eq!(result.err().unwrap().code(), "BACKEND_ERROR");
        assert_eq!(observer.genesis().unwrap(), Some(g));
        assert_eq!(observer.head().unwrap().unwrap().state_ref.position, 0);
        assert_eq!(observer.hits.get(), 1);
    }
    macro_rules! fault_test {
        ($name:ident,$point:ident,$call:expr) => {
            #[test]
            fn $name() {
                let probe = Probe::new(crate::InMemoryBackend::new(), Mode::Normal);
                probe.read_fault.set(Some(ReadFault::$point));
                let call: fn(&Probe<crate::InMemoryBackend>) -> Result<(), BackendError> = $call;
                assert_eq!(
                    call(&probe),
                    Err(BackendError(format!(
                        "019 conformance {:?}",
                        ReadFault::$point
                    ))),
                    "private read fault selector is dormant"
                );
                assert_eq!(probe.hits.get(), 1);
            }
        };
    }
    fn account() -> EntityKey {
        EntityKey {
            entity: "Account".into(),
            id: "a1".into(),
        }
    }
    fault_test!(private_genesis_fault, Genesis, |b| b.genesis().map(|_| ()));
    fault_test!(private_head_fault, Head, |b| b.head().map(|_| ()));
    fault_test!(private_asof_fault, VersionAt, |b| b
        .version_at(&account(), 0)
        .map(|_| ()));
    fault_test!(private_revision_fault, Version, |b| b
        .version(&account(), 1)
        .map(|_| ()));
    fault_test!(private_record_fault, Record, |b| b.record(1).map(|_| ()));
    fault_test!(private_removed_fault, Removed, |b| b
        .removed_at(&account())
        .map(|_| ()));
    fault_test!(private_incoming_fault, Incoming, |b| b
        .incoming_at(&account(), 0)
        .map(|_| ()));
    fault_test!(private_keys_fault, Keys, |b| b
        .keys_at("Account", 0)
        .map(|_| ()));
    fault_test!(private_used_fault, Used, |b| b
        .used_at(&account(), 0)
        .map(|_| ()));
    fault_test!(private_field_index_fault, FieldIndex, |b| b
        .keys_by_field_at("Account", "active", &json!(true), 0)
        .map(|_| ()));
}

#[derive(Clone)]
struct Publication {
    genesis: Genesis,
    head: Head,
    versions: Vec<EntityVersion>,
    refs: Vec<RefChange>,
}
impl Publication {
    fn of(module: &Module, g: &Genesis) -> Result<Self, String> {
        let (head, versions, refs) = original_parts(module, g)?;
        Ok(Self {
            genesis: g.clone(),
            head,
            versions,
            refs,
        })
    }
    fn publish<B: Backend>(&self, backend: &mut B) -> Result<(), BackendError> {
        backend.create(&self.genesis, &self.head, &self.versions, &self.refs)
    }
}

#[cfg(test)]
mod schedule_activation_tests {
    #![allow(clippy::unwrap_used, clippy::expect_used)]
    use super::*;

    fn prepared() -> (Publication, Landing) {
        let module = ledger().unwrap();
        let g = genesis(&module, seed(), false).unwrap();
        let (head, versions, refs) = original_parts(&module, &g).unwrap();
        let publication = Publication {
            genesis: g.clone(),
            head: head.clone(),
            versions,
            refs,
        };
        let mut reference = Store::create(crate::InMemoryBackend::new(), &module, g).unwrap();
        let proposed = bundle(unary(&reference, &module, "touch", "a1").unwrap()).unwrap();
        commit(&mut reference, &module, &proposed).unwrap();
        let landing = Landing::of(
            head.last_record,
            reference.backend().record(1).unwrap().unwrap(),
            reference.backend().head().unwrap().unwrap(),
        );
        (publication, landing)
    }

    #[test]
    fn private_schedule_before_create_uses_the_same_target() {
        let (publication, _) = prepared();
        let mut probe = Probe::new(crate::InMemoryBackend::new(), Mode::Normal);
        let observer = probe.clone();
        *probe.schedule.borrow_mut() = Some((
            ScheduleAt::BeforeCreate,
            Scheduled::Publish(Box::new(publication.clone())),
        ));
        probe
            .create(
                &publication.genesis,
                &publication.head,
                &publication.versions,
                &publication.refs,
            )
            .unwrap();
        assert_eq!(
            observer.landed.get(),
            1,
            "before-create scheduler is dormant"
        );
        assert_eq!(
            observer.inner.borrow().genesis().unwrap(),
            Some(publication.genesis)
        );
        assert_eq!(
            observer.inner.borrow().head().unwrap(),
            Some(publication.head)
        );
    }

    #[test]
    fn private_schedule_after_absent_genesis_retains_the_absent_answer() {
        let (publication, _) = prepared();
        let probe = Probe::new(crate::InMemoryBackend::new(), Mode::Normal);
        let observer = probe.clone();
        *probe.schedule.borrow_mut() = Some((
            ScheduleAt::AfterAbsentGenesis,
            Scheduled::Publish(Box::new(publication.clone())),
        ));
        assert!(probe.genesis().unwrap().is_none());
        assert_eq!(
            observer.landed.get(),
            1,
            "after-absent-genesis scheduler is dormant"
        );
        assert_eq!(
            observer.inner.borrow().genesis().unwrap(),
            Some(publication.genesis)
        );
    }

    fn committed_at(
        at: ScheduleAt,
        call: fn(&Probe<crate::InMemoryBackend>) -> u64,
        expected: u64,
    ) {
        let (publication, landing) = prepared();
        let mut probe = Probe::new(crate::InMemoryBackend::new(), Mode::Normal);
        probe
            .create(
                &publication.genesis,
                &publication.head,
                &publication.versions,
                &publication.refs,
            )
            .unwrap();
        let observer = probe.clone();
        *probe.schedule.borrow_mut() = Some((at, Scheduled::Commit(Box::new(landing))));
        assert_eq!(call(&probe), expected);
        assert_eq!(
            observer.landed.get(),
            1,
            "private commit scheduler is dormant"
        );
        assert_eq!(
            observer
                .inner
                .borrow()
                .head()
                .unwrap()
                .unwrap()
                .state_ref
                .position,
            1
        );
        assert_eq!(
            observer.inner.borrow().record(1).unwrap().unwrap().position,
            1
        );
    }

    #[test]
    fn private_schedule_after_genesis_commits_without_recursive_borrow() {
        committed_at(
            ScheduleAt::AfterGenesis,
            |probe| {
                assert!(probe.genesis().unwrap().is_some());
                0
            },
            0,
        );
    }

    #[test]
    fn private_schedule_before_head_returns_the_new_coherent_head() {
        committed_at(
            ScheduleAt::BeforeHead,
            |probe| probe.head().unwrap().unwrap().state_ref.position,
            1,
        );
    }

    #[test]
    fn private_schedule_after_head_retains_the_captured_old_head() {
        committed_at(
            ScheduleAt::AfterHead,
            |probe| probe.head().unwrap().unwrap().state_ref.position,
            0,
        );
    }

    #[test]
    fn private_reverse_edges_selector_changes_only_answer_order() {
        let module = accounts().unwrap();
        let mut input = accounts_seed();
        input.push(SeedEntity {
            entity: "Account".into(),
            value: json!({"id":"a2","owner":"c1","balance":"0.00"}),
        });
        let g = genesis(&module, input, false).unwrap();
        let probe = Probe::new(crate::InMemoryBackend::new(), Mode::Normal);
        let store = Store::create(probe, &module, g).unwrap();
        let probe = store.into_backend();
        let target = akey("Customer", "c1");
        let original = probe.incoming_at(&target, 0).unwrap();
        assert_eq!(
            original.len(),
            2,
            "legal reverse-order fixture needs two edges"
        );
        probe.reverse_edges.set(true);
        let mut reversed = original;
        reversed.reverse();
        assert_eq!(
            probe.incoming_at(&target, 0).unwrap(),
            reversed,
            "private edge order selector is dormant"
        );
    }

    #[test]
    fn private_unindexed_selector_retains_optional_index_contract() {
        let probe = Probe::new(crate::InMemoryBackend::new(), Mode::Normal);
        assert!(
            probe
                .keys_by_field_at("Account", "active", &json!(true), 0)
                .unwrap()
                .is_some()
        );
        probe.unindexed.set(true);
        assert!(
            probe
                .keys_by_field_at("Account", "active", &json!(true), 0)
                .unwrap()
                .is_none(),
            "private unindexed selector is dormant"
        );
    }
}

/// Test evidence includes original and current canonical primary material. It is
/// deliberately independent of cache/index implementation and Backend order.
fn material<B: Backend>(store: &Store<B>) -> Result<Json, String> {
    let g = store.genesis().map_err(e)?;
    let head = store
        .backend()
        .head()
        .map_err(e)?
        .ok_or("creation head missing")?;
    let mut entities: BTreeSet<String> = g.entity_declarations.keys().cloned().collect();
    if let Some(schema) = &head.schema {
        entities.extend(schema.declarations.keys().cloned());
    }
    let p = head.state_ref.position;
    let mut universes = Vec::new();
    let mut all = BTreeSet::new();
    for entity in entities {
        for position in 0..=p {
            let mut keys = store.backend().keys_at(&entity, position).map_err(e)?;
            keys.sort();
            all.extend(keys.iter().cloned());
            universes.push(json!([entity, position, keys]));
        }
    }
    let mut versions = Vec::new();
    for key in all {
        let mut asof = Vec::new();
        let mut incoming = Vec::new();
        let mut used = Vec::new();
        let mut revision = 0;
        for position in 0..=p {
            let version = store.backend().version_at(&key, position).map_err(e)?;
            revision = revision.max(version.as_ref().map_or(0, |v| v.revision));
            asof.push(version);
            let mut edges = store.backend().incoming_at(&key, position).map_err(e)?;
            edges.sort();
            incoming.push(
                edges
                    .into_iter()
                    .map(|edge| json!([edge.entity, edge.id, edge.field]))
                    .collect::<Vec<_>>(),
            );
            used.push(store.backend().used_at(&key, position).map_err(e)?);
        }
        let by_revision = (1..=revision)
            .map(|r| store.backend().version(&key, r).map_err(e))
            .collect::<Result<Vec<_>, _>>()?;
        versions.push(json!([
            key,
            asof,
            by_revision,
            incoming,
            used,
            store.backend().removed_at(&key).map_err(e)?
        ]));
    }
    let records = (1..=p + 1)
        .map(|p| store.backend().record(p).map_err(e))
        .collect::<Result<Vec<_>, _>>()?;
    Ok(
        json!({"genesis":g,"head":head,"universes":universes,"versions":versions,"records":records,"history":store.current_history().map_err(e)?}),
    )
}

fn retry_preserves<B: Backend>(
    store: Store<Probe<B>>,
    module: &Module,
    g: &Genesis,
) -> Result<Store<Probe<B>>, String> {
    let before = material(&store)?;
    let observer = store.backend().clone();
    let publications = observer.creates.get();
    let recovered = Store::create(store.into_backend(), module, g.clone()).map_err(e)?;
    ensure(
        observer.creates.get() == publications,
        "Store recovery republishes initialization",
    )?;
    ensure(
        material(&recovered)? == before,
        "Store recovery resets or changes canonical lineage",
    )?;
    let original = Publication::of(module, g)?;
    original.publish(&mut observer.clone()).map_err(e)?;
    ensure(
        observer.creates.get() == publications + 1,
        "direct Backend retry was not exercised",
    )?;
    ensure(
        material(&recovered)? == before,
        "direct Backend retry resets or changes canonical lineage",
    )?;
    Ok(recovered)
}

pub(super) fn equivalent_retry<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = accounts()?;
    for v2 in [false, true] {
        let g = genesis(&module, accounts_seed(), v2)?;
        let store =
            Store::create(Probe::new(factory(), Mode::Normal), &module, g.clone()).map_err(e)?;
        let store = retry_preserves(store, &module, &g)?;
        retry_preserves(store, &module, &g)?;
    }
    Ok(())
}

fn other_policy(module: &Module, seed: Vec<SeedEntity>, v2: bool) -> Result<Genesis, String> {
    if v2 {
        let policy=behavior_verify::governance::trusted::EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[],"migration":{"require":"none","trusted_authorities":[],"execution_policies":[]}}"#).map_err(e)?;
        crate::store::genesis_v2_for(module, policy, seed).map_err(e)
    } else {
        let mut policy = EvidencePolicy::none();
        policy.migration = Some(crate::documents::MigrationEvidence {
            require: crate::documents::Require::None,
            trusted_execution_policies: None,
        });
        Ok(genesis_for(module, policy, seed))
    }
}

pub(super) fn conflicting_retry<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = ledger()?;
    for v2 in [false, true] {
        let original = genesis(&module, seed(), v2)?;
        let mut changed = seed();
        changed[0].value["balance"] = json!("101.00");
        let other_schema = accounts()?;
        let mut attempts = vec![
            (module.clone(), genesis(&module, changed, v2)?),
            (module.clone(), other_policy(&module, seed(), v2)?),
            (
                other_schema.clone(),
                genesis(&other_schema, accounts_seed(), v2)?,
            ),
        ];
        if !v2 {
            let mut reordered = seed();
            reordered.reverse();
            attempts.push((module.clone(), genesis(&module, reordered, false)?));
        }
        for (foreign_module, foreign) in attempts {
            ensure(
                original.hash().map_err(e)? != foreign.hash().map_err(e)?,
                "conflict fixture identities coincide",
            )?;
            let mut store = Store::create(
                Probe::new(factory(), Mode::Normal),
                &module,
                original.clone(),
            )
            .map_err(e)?;
            let original_state = store.current().map_err(e)?.state;
            let b = bundle(unary(&store, &module, "touch", "a1")?)?;
            commit(&mut store, &module, &b)?;
            ensure(
                store.current().map_err(e)?.position == 1
                    && store.current().map_err(e)?.state == original_state,
                "advanced equal-content conflict control did not execute",
            )?;
            let before = material(&store)?;
            let observer = store.backend().clone();
            let error = match Store::create(observer.clone(), &foreign_module, foreign.clone()) {
                Err(error) => error,
                Ok(_) => return Err("foreign creation identity was recovered".into()),
            };
            ensure(
                error.code() == "STORE_CREATION_CONFLICT",
                "foreign Store retry did not establish conflict",
            )?;
            ensure(
                observer.creates.get() == 1,
                "foreign preflight requested Backend creation",
            )?;
            let product = Publication::of(&foreign_module, &foreign)?;
            // Equal live StateId still does not establish equal creation identity.
            if foreign.evidence_policy != original.evidence_policy
                || (!v2 && foreign.seed.iter().rev().eq(original.seed.iter()))
            {
                ensure(
                    product.head.state_ref.state == store.current().map_err(e)?.state,
                    "equal-state conflict control differs in content",
                )?;
            }
            ensure(
                product.publish(&mut observer.clone()).is_err(),
                "Backend accepted incompatible creation identity",
            )?;
            ensure(
                material(&store)? == before,
                "foreign retry overwrote or mixed canonical lineage",
            )?;
        }
    }
    Ok(())
}

pub(super) fn advanced_recovery<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = accounts()?;
    for v2 in [false, true] {
        let g = genesis(&module, accounts_seed(), v2)?;
        let mut store =
            Store::create(Probe::new(factory(), Mode::Normal), &module, g.clone()).map_err(e)?;
        let update = run_action(
            &store,
            &module,
            "deposit",
            &[("account", "a1")],
            json!({"amount":"1.00"}),
        )?;
        apply(&mut store, &module, update)?;
        let create = open_account(&store, &module, "new", "c2")?;
        apply(&mut store, &module, create)?;
        let remove = run_action(
            &store,
            &module,
            "close_account",
            &[("account", "new")],
            json!({}),
        )?;
        apply(&mut store, &module, remove)?;
        let retarget = run_action(
            &store,
            &module,
            "switch_and_remove",
            &[("account", "a1"), ("old", "c1"), ("new", "c2")],
            json!({}),
        )?;
        apply(&mut store, &module, retarget)?;
        ensure(
            store
                .backend()
                .removed_at(&akey("Account", "new"))
                .map_err(e)?
                == Some(3),
            "creation-removal control did not execute",
        )?;
        ensure(
            store
                .backend()
                .removed_at(&akey("Customer", "c1"))
                .map_err(e)?
                == Some(4),
            "original lifetime removal did not execute",
        )?;
        let store = retry_preserves(store, &module, &g)?;
        ensure(
            store
                .backend()
                .used_at(&akey("Account", "new"), 4)
                .map_err(e)?,
            "recovery erased historical identity use",
        )?;
        let ledger = ledger()?;
        let g = genesis(&ledger, seed(), v2)?;
        let mut store =
            Store::create(Probe::new(factory(), Mode::Normal), &ledger, g.clone()).map_err(e)?;
        let initial = store.current().map_err(e)?;
        let b = bundle(transfer(&store, &ledger, "a1", "a2", "1.00")?)?;
        commit(&mut store, &ledger, &b)?;
        let b = bundle(transfer(&store, &ledger, "a2", "a1", "1.00")?)?;
        commit(&mut store, &ledger, &b)?;
        ensure(
            store.current().map_err(e)?.state == initial.state
                && store.current().map_err(e)?.position == 2,
            "equal-StateId later position control did not execute",
        )?;
        retry_preserves(store, &ledger, &g)?;
    }
    Ok(())
}

pub(super) fn migrated_recovery<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let (source, target, migration) = cultures()?;
    for v2 in [false, true] {
        let g = genesis(&source, cultures_seed(false), v2)?;
        let mut store =
            Store::create(Probe::new(factory(), Mode::Normal), &source, g.clone()).map_err(e)?;
        store
            .migrate(&migration, &source, &target, "2026-10-02T10:00:00Z", None)
            .map_err(e)?;
        let recovered = retry_preserves(store, &source, &g)?;
        ensure(
            recovered
                .schema_at(&recovered.current().map_err(e)?)
                .map_err(e)?
                .hash
                == behavior_core::schema(&target).hash,
            "recovery rebound current schema to genesis",
        )?;
        let old = recovered.evaluate(
            &source,
            "set_region",
            &bind(&[("order", "o1")]),
            &json!({"region":"south"}),
            &json!({}),
            T0,
            None,
        );
        ensure(
            old.err()
                .is_some_and(|error| error.code() == "SCHEMA_MISMATCH"),
            "old Module evaluated against migrated schema",
        )?;
        let current = recovered
            .evaluate(
                &target,
                "set_region",
                &bind(&[("order", "o1")]),
                &json!({"region":"south"}),
                &json!({}),
                T0,
                None,
            )
            .map_err(e)?;
        ensure(
            current.bundle.is_some(),
            "actual migrated Module no longer evaluates",
        )?;
    }
    Ok(())
}

pub(super) fn competing_equivalent<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = accounts()?;
    for v2 in [false, true] {
        let g = genesis(&module, accounts_seed(), v2)?;
        let probe = Probe::new(factory(), Mode::Normal);
        let observer = probe.clone();
        *probe.schedule.borrow_mut() = Some((
            ScheduleAt::BeforeCreate,
            Scheduled::Publish(Box::new(Publication::of(&module, &g)?)),
        ));
        let store = Store::create(probe, &module, g.clone()).map_err(e)?;
        ensure(
            observer.landed.get() == 1,
            "same-target equivalent competing publication never landed",
        )?;
        let reference =
            Store::create(crate::InMemoryBackend::new(), &module, g.clone()).map_err(e)?;
        same_product(&store, &reference, &g)?;
        retry_preserves(store, &module, &g)?;
    }
    Ok(())
}

pub(super) fn competing_conflicting<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = accounts()?;
    for v2 in [false, true] {
        let attempted = genesis(&module, accounts_seed(), v2)?;
        for policy_only in [false, true] {
            let winner = if policy_only {
                other_policy(&module, accounts_seed(), v2)?
            } else {
                let mut changed = accounts_seed();
                changed[0].value["name"] = json!("Winner");
                genesis(&module, changed, v2)?
            };
            let probe = Probe::new(factory(), Mode::Normal);
            let observer = probe.clone();
            *probe.schedule.borrow_mut() = Some((
                ScheduleAt::BeforeCreate,
                Scheduled::Publish(Box::new(Publication::of(&module, &winner)?)),
            ));
            let error = match Store::create(probe, &module, attempted.clone()) {
                Err(error) => error,
                Ok(_) => return Err("foreign competing initialization gained success".into()),
            };
            ensure(
                error.code() == "STORE_CREATION_CONFLICT",
                "complete foreign winner was not classified as conflict",
            )?;
            ensure(
                observer.landed.get() == 1,
                "same-target foreign publication never landed",
            )?;
            let store = Store::open(observer).map_err(e)?;
            let reference =
                Store::create(crate::InMemoryBackend::new(), &module, winner.clone()).map_err(e)?;
            same_product(&store, &reference, &winner)?;
        }
    }
    Ok(())
}

pub(super) fn order_independence<B: Backend>(factory: &dyn Fn() -> B) -> Result<(), String> {
    let module = accounts()?;
    for v2 in [false, true] {
        let mut input = accounts_seed();
        input.push(SeedEntity {
            entity: "Account".into(),
            value: json!({"id":"a2","owner":"c1","balance":"0.00"}),
        });
        let mut object_reordered = input.clone();
        for seed in object_reordered
            .iter_mut()
            .filter(|seed| seed.entity == "Account")
        {
            // Same semantic product authored with reversed member order.
            let raw = format!(
                r#"{{"balance":"0.00","owner":"c1","id":"{}"}}"#,
                seed.value["id"].as_str().unwrap_or_default()
            );
            seed.value = serde_json::from_str(&raw).map_err(e)?;
        }
        if v2 {
            object_reordered.reverse();
            for seed in &mut object_reordered {
                if seed.entity == "Account" {
                    seed.value["balance"] = json!("0");
                }
            }
        }
        let g = genesis(&module, input, v2)?;
        let authored = genesis(&module, object_reordered, v2)?;
        ensure(
            g.hash().map_err(e)? == authored.hash().map_err(e)?,
            "canonical object/profile normalization changed creation identity",
        )?;
        let probe = Probe::new(ReversedKeys { inner: factory() }, Mode::Normal);
        probe.reverse_edges.set(true);
        probe.unindexed.set(true);
        let reference =
            Store::create(crate::InMemoryBackend::new(), &module, g.clone()).map_err(e)?;
        let store = Store::create(probe, &module, g.clone()).map_err(e)?;
        same_product(&store, &reference, &g)?;
        retry_preserves(store, &module, &authored)?;
        // Reads establish query/index transparency without creating an ordinary
        // transition candidate. The separately retained neutral diagnostic shows
        // the pre-existing trusted v2 query-candidate refusal; 019 does not alter
        // governance facts, historical records or their format contracts.
        let lab = behavior_core::admit(include_str!(
            "../../../../tests/fixtures/reads/modules/lab.json"
        ))
        .map_err(|r| format!("{:?}", r.errors))?;
        let input = vec![
            SeedEntity {
                entity: "Culture".into(),
                value: json!({"id":"c1","name":"Basil","stage":"GROWTH","active":true,"measurements":2,"ph_total":14}),
            },
            SeedEntity {
                entity: "Culture".into(),
                value: json!({"id":"c2","name":"Mint","stage":null,"active":false,"measurements":0,"ph_total":0}),
            },
            SeedEntity {
                entity: "Customer".into(),
                value: json!({"id":"k1","name":"Ada","credit_limit":100}),
            },
            SeedEntity {
                entity: "Order".into(),
                value: json!({"id":"o1","customer":"k1","amount":30,"status":"OPEN"}),
            },
            SeedEntity {
                entity: "Order".into(),
                value: json!({"id":"o2","customer":"k1","amount":15,"status":"OPEN"}),
            },
        ];
        let g = genesis(&lab, input, v2)?;
        let probe = Probe::new(ReversedKeys { inner: factory() }, Mode::Normal);
        probe.reverse_edges.set(true);
        probe.unindexed.set(true);
        let actual = Store::create(probe, &lab, g.clone()).map_err(e)?;
        let reference = Store::create(crate::InMemoryBackend::new(), &lab, g.clone()).map_err(e)?;
        same_product(&actual, &reference, &g)?;
        let before = material(&actual)?;
        for (name, bindings, input) in [
            ("active_count", BTreeMap::new(), json!({})),
            ("open_total", bind(&[("customer", "k1")]), json!({})),
            ("big_orders", BTreeMap::new(), json!({"threshold":10})),
        ] {
            let source = behavior_core::read::ReadSource::Declared(name.into());
            let result = actual
                .read(&lab, &source, &bindings, &input, &json!({}), None)
                .map_err(e)?
                .record
                .as_json()
                .clone();
            let expected = reference
                .read(&lab, &source, &bindings, &input, &json!({}), None)
                .map_err(e)?
                .record
                .as_json()
                .clone();
            ensure(
                result["result"] == "VALUE" && result == expected,
                "unindexed/reordered query read changes semantic record",
            )?;
            let nonempty_control = match name {
                "active_count" => result["value"] == json!(1),
                "open_total" => result["value"] == json!(45),
                "big_orders" => result["value"].as_array().is_some_and(|rows| {
                    rows.len() == 2 && rows[0]["id"] == "o1" && rows[1]["id"] == "o2"
                }),
                _ => false,
            };
            ensure(
                nonempty_control,
                "nonempty query control produced different values",
            )?;
        }
        ensure(
            material(&actual)? == before,
            "query reads mutated canonical lineage",
        )?;
        retry_preserves(actual, &lab, &g)?;
    }
    Ok(())
}

pub(super) fn publication_read_interleaving<B: Backend>(
    factory: &dyn Fn() -> B,
) -> Result<(), String> {
    let module = ledger()?;
    for v2 in [false, true] {
        let g = genesis(&module, seed(), v2)?;
        let product = Publication::of(&module, &g)?;
        let probe = Probe::new(factory(), Mode::Normal);
        let observer = probe.clone();
        *probe.schedule.borrow_mut() = Some((
            ScheduleAt::AfterAbsentGenesis,
            Scheduled::Publish(Box::new(product.clone())),
        ));
        let store = Store::create(probe, &module, g.clone()).map_err(e)?;
        ensure(
            observer.landed.get() == 1,
            "None-genesis publication schedule never executed",
        )?;
        let reference =
            Store::create(crate::InMemoryBackend::new(), &module, g.clone()).map_err(e)?;
        same_product(&store, &reference, &g)?;
        let mut committed = reference;
        let b = bundle(transfer(&committed, &module, "a1", "a2", "1.00")?)?;
        commit(&mut committed, &module, &b)?;
        let landing = Landing::of(
            product.head.last_record.clone(),
            committed
                .backend()
                .record(1)
                .map_err(e)?
                .ok_or("control event absent")?,
            committed
                .backend()
                .head()
                .map_err(e)?
                .ok_or("control head absent")?,
        );
        for at in [
            ScheduleAt::AfterGenesis,
            ScheduleAt::BeforeHead,
            ScheduleAt::AfterHead,
        ] {
            let probe = Probe::new(factory(), Mode::Normal);
            let observer = probe.clone();
            let store = Store::create(probe, &module, g.clone()).map_err(e)?;
            *observer.schedule.borrow_mut() =
                Some((at, Scheduled::Commit(Box::new(landing.clone()))));
            let recovered = Store::create(store.into_backend(), &module, g.clone()).map_err(e)?;
            ensure(
                observer.landed.get() == 1,
                "Some-genesis/first-commit schedule never executed",
            )?;
            ensure(
                material(&recovered)? == material(&committed)?,
                "capture interleaving mixed or reset history",
            )?;
        }
    }
    Ok(())
}
