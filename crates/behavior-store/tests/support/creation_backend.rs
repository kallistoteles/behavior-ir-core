#![allow(dead_code)]
//! Test-only creation boundary instruments. Clones share one target; they are
//! not independent copies of the reference backend. No semantic validator lives here.

use std::cell::RefCell;
use std::collections::BTreeMap;
use std::rc::Rc;

use super::store_api::conformance::Landing;
use super::store_api::documents::{
    EntityKey, EntityVersion, Genesis, Head, RefChange, TransitionRecord,
};
use super::store_api::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge};

#[derive(Clone, Debug)]
pub struct Initialization {
    pub genesis: Genesis,
    pub head: Head,
    pub seed: Vec<EntityVersion>,
    pub refs: Vec<RefChange>,
}

impl Initialization {
    /// Capture a legal product already derived/published by Core. This is a
    /// fixture transport, not a host implementation of seed validation.
    pub fn capture<B: Backend>(backend: &B) -> Result<Self, BackendError> {
        let genesis = backend
            .genesis()?
            .ok_or_else(|| BackendError("fixture has no genesis".into()))?;
        let head = backend
            .head()?
            .ok_or_else(|| BackendError("fixture has no head".into()))?;
        if head.state_ref.position != 0 {
            return Err(BackendError(
                "capture requires a freshly created fixture".into(),
            ));
        }
        let mut seed = Vec::new();
        for entity in genesis.entity_declarations.keys() {
            let mut keys = backend.keys_at(entity, 0)?;
            keys.sort();
            for key in keys {
                seed.push(
                    backend
                        .version_at(&key, 0)?
                        .ok_or_else(|| BackendError("fixture omitted seed version".into()))?,
                );
            }
        }
        let mut refs = Vec::new();
        for target in &seed {
            for edge in backend.incoming_at(&target.key(), 0)? {
                refs.push(RefChange {
                    target: target.key(),
                    source: EntityKey {
                        entity: edge.entity,
                        id: edge.id,
                    },
                    field: edge.field,
                    op: "add".into(),
                });
            }
        }
        refs.sort();
        Ok(Self {
            genesis,
            head,
            seed,
            refs,
        })
    }
    pub fn publish<B: Backend>(&self, backend: &mut B) -> Result<(), BackendError> {
        backend.create(&self.genesis, &self.head, &self.seed, &self.refs)
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CreateFault {
    BeforePublish,
    AfterPublish,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum ReadPoint {
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

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CreationMutant {
    None,
    NoPublication,
    GenesisOnly,
    MissingHead,
    MissingSeed,
    CorruptContent,
    MissingRefs,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum PublishOn {
    BeforeCreate,
    AfterAbsentGenesis,
    AfterGenesis,
    BeforeHead,
    AfterHead,
}

#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct Counters {
    pub create_calls: usize,
    pub inner_create_calls: usize,
    pub commit_calls: usize,
    pub faults_hit: usize,
    pub mutant_hits: usize,
    pub schedules_landed: usize,
    pub reads: BTreeMap<ReadPoint, usize>,
}

#[derive(Clone)]
enum Scheduled {
    Publish(Initialization),
    Commit(Landing),
}
struct ReadFailure {
    skip: usize,
    error: BackendError,
    once: bool,
}
struct Controls {
    create_fault: Option<CreateFault>,
    reads: BTreeMap<ReadPoint, ReadFailure>,
    mutant: CreationMutant,
    private_genesis: Option<Genesis>,
    schedule: Option<(PublishOn, Scheduled)>,
    counters: Counters,
    head_override: Option<Head>,
    genesis_override: Option<Genesis>,
    version_overrides: BTreeMap<EntityKey, EntityVersion>,
    reversed: bool,
}
impl Default for Controls {
    fn default() -> Self {
        Self {
            create_fault: None,
            reads: BTreeMap::new(),
            mutant: CreationMutant::None,
            private_genesis: None,
            schedule: None,
            counters: Counters::default(),
            head_override: None,
            genesis_override: None,
            version_overrides: BTreeMap::new(),
            reversed: false,
        }
    }
}

pub struct CreationBackend<B = InMemoryBackend> {
    inner: Rc<RefCell<B>>,
    controls: Rc<RefCell<Controls>>,
}
impl<B> Clone for CreationBackend<B> {
    fn clone(&self) -> Self {
        Self {
            inner: Rc::clone(&self.inner),
            controls: Rc::clone(&self.controls),
        }
    }
}
impl<B> CreationBackend<B> {
    pub fn new(inner: B) -> Self {
        Self {
            inner: Rc::new(RefCell::new(inner)),
            controls: Rc::new(RefCell::new(Controls::default())),
        }
    }
    pub fn arm_create(&self, fault: CreateFault) {
        self.controls.borrow_mut().create_fault = Some(fault);
    }
    pub fn arm_read(&self, point: ReadPoint, error: BackendError) {
        self.controls.borrow_mut().reads.insert(
            point,
            ReadFailure {
                skip: 0,
                error,
                once: false,
            },
        );
    }
    pub fn fail_read_on(&self, point: ReadPoint, nth: usize, error: BackendError) {
        assert!(nth > 0, "read failure index is one-based");
        self.controls.borrow_mut().reads.insert(
            point,
            ReadFailure {
                skip: nth - 1,
                error,
                once: true,
            },
        );
    }
    pub fn clear_reads(&self) {
        self.controls.borrow_mut().reads.clear();
    }
    pub fn set_mutant(&self, mutant: CreationMutant) {
        self.controls.borrow_mut().mutant = mutant;
    }
    pub fn schedule_publish(&self, on: PublishOn, product: Initialization) {
        self.controls.borrow_mut().schedule = Some((on, Scheduled::Publish(product)));
    }
    pub fn schedule_commit(&self, on: PublishOn, landing: Landing) {
        self.controls.borrow_mut().schedule = Some((on, Scheduled::Commit(landing)));
    }
    pub fn counters(&self) -> Counters {
        self.controls.borrow().counters.clone()
    }
    pub fn reset_counters(&self) {
        self.controls.borrow_mut().counters = Counters::default();
    }
    pub fn set_head_override(&self, head: Option<Head>) {
        self.controls.borrow_mut().head_override = head;
    }
    pub fn set_genesis_override(&self, genesis: Option<Genesis>) {
        self.controls.borrow_mut().genesis_override = genesis;
    }
    pub fn set_version_override(&self, version: EntityVersion) {
        self.controls
            .borrow_mut()
            .version_overrides
            .insert(version.key(), version);
    }
    pub fn clear_version_overrides(&self) {
        self.controls.borrow_mut().version_overrides.clear();
    }
    pub fn reverse_order(&self, reversed: bool) {
        self.controls.borrow_mut().reversed = reversed;
    }
}

impl<B: Backend> CreationBackend<B> {
    fn check(&self, point: ReadPoint) -> Result<(), BackendError> {
        let mut controls = self.controls.borrow_mut();
        *controls.counters.reads.entry(point).or_default() += 1;
        let Some(failure) = controls.reads.get_mut(&point) else {
            return Ok(());
        };
        if failure.skip > 0 {
            failure.skip -= 1;
            return Ok(());
        }
        let error = failure.error.clone();
        let once = failure.once;
        if once {
            controls.reads.remove(&point);
        }
        controls.counters.faults_hit += 1;
        Err(error)
    }
    fn mutant(&self) -> CreationMutant {
        self.controls.borrow().mutant
    }
    fn hit_mutant(&self) {
        self.controls.borrow_mut().counters.mutant_hits += 1;
    }
    /// Take the schedule before entering the target's mutable borrow. Calling
    /// back into this wrapper while holding RefMut would invalidate the fixture.
    fn land(&self, on: PublishOn) -> Result<(), BackendError> {
        let scheduled = {
            let mut controls = self.controls.borrow_mut();
            if controls.schedule.as_ref().is_some_and(|(at, _)| *at == on) {
                controls.schedule.take().map(|(_, scheduled)| scheduled)
            } else {
                None
            }
        };
        let Some(scheduled) = scheduled else {
            return Ok(());
        };
        match scheduled {
            Scheduled::Publish(product) => {
                self.controls.borrow_mut().counters.inner_create_calls += 1;
                product.publish(&mut *self.inner.borrow_mut())?;
            }
            Scheduled::Commit(landing) => {
                self.controls.borrow_mut().counters.commit_calls += 1;
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
                        "019 scheduled commit did not apply to its legal parent".into(),
                    ));
                }
            }
        }
        self.controls.borrow_mut().counters.schedules_landed += 1;
        Ok(())
    }
    fn observed_version(
        &self,
        key: &EntityKey,
        value: Option<EntityVersion>,
    ) -> Option<EntityVersion> {
        if self.mutant() == CreationMutant::MissingSeed {
            self.hit_mutant();
            return None;
        }
        let mut value = self
            .controls
            .borrow()
            .version_overrides
            .get(key)
            .cloned()
            .or(value);
        if self.mutant() == CreationMutant::CorruptContent
            && let Some(version) = &mut value
        {
            self.hit_mutant();
            version.content_hash = format!("sha256:{}", "f".repeat(64));
        }
        value
    }
}

impl<B: Backend> Backend for CreationBackend<B> {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.check(ReadPoint::Genesis)?;
        let original = self.inner.borrow().genesis()?;
        let mut value = self.controls.borrow().genesis_override.clone().or(original);
        if self.mutant() == CreationMutant::GenesisOnly {
            self.hit_mutant();
            value = self.controls.borrow().private_genesis.clone();
        }
        self.land(if value.is_none() {
            PublishOn::AfterAbsentGenesis
        } else {
            PublishOn::AfterGenesis
        })?;
        Ok(value)
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        self.land(PublishOn::BeforeHead)?;
        self.check(ReadPoint::Head)?;
        let original = self.inner.borrow().head()?;
        let value = if self.mutant() == CreationMutant::MissingHead {
            self.hit_mutant();
            None
        } else {
            self.controls.borrow().head_override.clone().or(original)
        };
        self.land(PublishOn::AfterHead)?;
        Ok(value)
    }
    fn create(
        &mut self,
        g: &Genesis,
        h: &Head,
        s: &[EntityVersion],
        r: &[RefChange],
    ) -> Result<(), BackendError> {
        self.controls.borrow_mut().counters.create_calls += 1;
        self.land(PublishOn::BeforeCreate)?;
        let fault = self.controls.borrow_mut().create_fault.take();
        if fault == Some(CreateFault::BeforePublish) {
            self.controls.borrow_mut().counters.faults_hit += 1;
            return Err(BackendError("019 fixture before publication".into()));
        }
        match self.mutant() {
            CreationMutant::NoPublication => {
                self.hit_mutant();
                return Ok(());
            }
            CreationMutant::GenesisOnly => {
                self.hit_mutant();
                self.controls.borrow_mut().private_genesis = Some(g.clone());
                return Ok(());
            }
            _ => {}
        }
        self.controls.borrow_mut().counters.inner_create_calls += 1;
        self.inner.borrow_mut().create(g, h, s, r)?;
        if fault == Some(CreateFault::AfterPublish) {
            self.controls.borrow_mut().counters.faults_hit += 1;
            return Err(BackendError("019 fixture after publication".into()));
        }
        Ok(())
    }
    fn version_at(&self, k: &EntityKey, p: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.check(ReadPoint::VersionAt)?;
        let value = self.inner.borrow().version_at(k, p)?;
        Ok(self.observed_version(k, value))
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.check(ReadPoint::Version)?;
        let value = self.inner.borrow().version(k, r)?;
        Ok(self.observed_version(k, value))
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.check(ReadPoint::Record)?;
        self.inner.borrow().record(p)
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.check(ReadPoint::Removed)?;
        self.inner.borrow().removed_at(k)
    }
    fn incoming_at(&self, k: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.check(ReadPoint::Incoming)?;
        if self.mutant() == CreationMutant::MissingRefs {
            self.hit_mutant();
            return Ok(vec![]);
        }
        let mut edges = self.inner.borrow().incoming_at(k, p)?;
        if self.controls.borrow().reversed {
            edges.reverse();
        }
        Ok(edges)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.check(ReadPoint::Keys)?;
        if self.mutant() == CreationMutant::MissingSeed {
            self.hit_mutant();
            return Ok(vec![]);
        }
        let mut keys = self.inner.borrow().keys_at(t, p)?;
        if self.controls.borrow().reversed {
            keys.reverse();
        }
        Ok(keys)
    }
    fn keys_by_field_at(
        &self,
        t: &str,
        f: &str,
        v: &serde_json::Value,
        p: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        self.check(ReadPoint::FieldIndex)?;
        let mut keys = self.inner.borrow().keys_by_field_at(t, f, v, p)?;
        if self.controls.borrow().reversed
            && let Some(keys) = &mut keys
        {
            keys.reverse();
        }
        Ok(keys)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        self.check(ReadPoint::Used)?;
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
        self.controls.borrow_mut().counters.commit_calls += 1;
        self.inner.borrow_mut().commit(e, v, r, c, t, h)
    }
}
