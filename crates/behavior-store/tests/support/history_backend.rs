#![allow(dead_code)]
//! Deliberate host faults. Only the fixture backend exposes mutation controls.
use behavior_store::documents::*;
use behavior_store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge};
use std::collections::{BTreeMap, BTreeSet};
#[derive(Clone, Default)]
pub struct FaultBackend {
    pub inner: InMemoryBackend,
    pub head_override: Option<Head>,
    pub genesis_override: Option<Genesis>,
    pub omitted: BTreeSet<u64>,
    pub records: BTreeMap<u64, TransitionRecord>,
    pub versions: BTreeMap<EntityKey, EntityVersion>,
    pub commit_calls: usize,
}
impl Backend for FaultBackend {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        Ok(self.genesis_override.clone().or(self.inner.genesis()?))
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        Ok(self.head_override.clone().or(self.inner.head()?))
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
        Ok(self
            .versions
            .get(k)
            .cloned()
            .or(self.inner.version_at(k, p)?))
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        if let Some(v) = self.versions.get(k)
            && v.revision == r
        {
            Ok(Some(v.clone()))
        } else {
            self.inner.version(k, r)
        }
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        if self.omitted.contains(&p) {
            Ok(None)
        } else {
            Ok(self.records.get(&p).cloned().or(self.inner.record(p)?))
        }
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
    fn keys_by_field_at(
        &self,
        t: &str,
        f: &str,
        v: &serde_json::Value,
        p: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        self.inner.keys_by_field_at(t, f, v, p)
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
        self.commit_calls += 1;
        self.inner.commit(e, v, r, c, t, h)
    }
}
