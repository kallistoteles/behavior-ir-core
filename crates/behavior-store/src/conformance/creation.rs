//! Private whole-Store creation conformance. These around-call instruments test
//! observable obligations; they do not simulate host-private writes or power loss.
use super::*;
use std::cell::Cell;
use std::rc::Rc;

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

struct Probe<B> {
    inner: Rc<RefCell<B>>,
    creates: Rc<Cell<usize>>,
    mode: Mode,
    staged_genesis: Rc<RefCell<Option<Genesis>>>,
    hits: Rc<Cell<usize>>,
}
impl<B> Clone for Probe<B> {
    fn clone(&self) -> Self {
        Self {
            inner: Rc::clone(&self.inner),
            creates: Rc::clone(&self.creates),
            mode: self.mode,
            staged_genesis: Rc::clone(&self.staged_genesis),
            hits: Rc::clone(&self.hits),
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
        }
    }
    fn hit(&self) {
        self.hits.set(self.hits.get() + 1);
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
impl<B: Backend> Backend for Probe<B> {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        if self.mode == Mode::GenesisOnly {
            self.hit();
            return Ok(self.staged_genesis.borrow().clone());
        }
        self.inner.borrow().genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
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
        }
    }
    fn version_at(&self, k: &EntityKey, p: u64) -> Result<Option<EntityVersion>, BackendError> {
        let value = self.inner.borrow().version_at(k, p)?;
        Ok(self.version_view(value))
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        let value = self.inner.borrow().version(k, r)?;
        Ok(self.version_view(value))
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.inner.borrow().record(p)
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.borrow().removed_at(k)
    }
    fn incoming_at(&self, k: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        if self.mode == Mode::MissingRefs {
            self.hit();
            return Ok(vec![]);
        }
        self.inner.borrow().incoming_at(k, p)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.inner.borrow().keys_at(t, p)
    }
    fn keys_by_field_at(
        &self,
        t: &str,
        f: &str,
        v: &Json,
        p: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        self.inner.borrow().keys_by_field_at(t, f, v, p)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
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
