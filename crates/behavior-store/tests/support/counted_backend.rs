//! Existing counted reference backend shared by historical replay/recovery tests.
use std::cell::Cell;
use behavior_store::documents::{EntityKey,EntityVersion,Genesis,Head,RefChange,TransitionRecord};
use behavior_store::{Backend,BackendError,CasOutcome,InMemoryBackend,RefEdge};

#[derive(Default, Debug)]
pub struct Counted {
    pub inner: InMemoryBackend,
    pub creates: Cell<usize>,
    pub commits: Cell<usize>,
    pub keys: Cell<usize>,
}
impl Counted {
    pub fn reset(&self) {
        self.creates.set(0);
        self.commits.set(0);
        self.keys.set(0);
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
        v: &[EntityVersion],
        r: &[RefChange],
    ) -> Result<(), BackendError> {
        self.creates.set(self.creates.get() + 1);
        self.inner.create(g, h, v, r)
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
        self.keys.set(self.keys.get() + 1);
        self.inner.keys_at(t, p)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        self.inner.used_at(k, p)
    }
    fn commit(
        &mut self,
        expected: &str,
        versions: &[EntityVersion],
        removed: &[EntityKey],
        refs: &[RefChange],
        event: &TransitionRecord,
        head: &Head,
    ) -> Result<CasOutcome, BackendError> {
        self.commits.set(self.commits.get() + 1);
        self.inner
            .commit(expected, versions, removed, refs, event, head)
    }
}

