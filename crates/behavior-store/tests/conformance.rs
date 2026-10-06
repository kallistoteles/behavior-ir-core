#![allow(clippy::unwrap_used, clippy::expect_used)]

//! US3: the conformance suite. The reference backend passes every case; each broken backend fails
//! its designated case (SC-003).

use behavior_store::conformance::run;
use behavior_store::documents::{
    EntityKey, EntityVersion, Genesis, Head, RefChange, TransitionRecord,
};
use behavior_store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge};

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
enum Broken {
    IgnoresHead,
    PartialWrites,
    ReordersRecords,
    DropsVersions,
    LatestReads,
    NonAtomicHead,
    /// `used_at` forgets identities once they are removed.
    ForgetsRemovedIdentities,
    /// A removal deletes the entity's versions.
    DeletesVersionsOnRemove,
    /// The index is never updated on drops (retargets and removals keep stale edges).
    StaleIndex,
    /// `incoming_at` ignores the position (answers the current index).
    CurrentOnlyIndex,
    /// The field index is never updated after genesis.
    StaleFieldIndex,
    /// `keys_at` ignores the position (answers the current type index).
    CurrentOnlyKeys,
    /// A positive control: indexes list keys in reverse order, which is never semantic.
    ReversedKeys,
    /// The head is written without its schema (feature 009): a migrated store forgets it.
    DropsHeadSchema,
    DropsCommandArchive,
    MissingCommandRecord,
}

/// A deliberately broken backend around the reference backend.
struct Mutant {
    inner: InMemoryBackend,
    kind: Broken,
    /// NonAtomicHead: positions whose record was lost (the head moved, then a crash lost the record).
    lost: Vec<u64>,
    /// DropsVersions: versions forgotten at commit.
    dropped: Vec<(EntityKey, u64)>,
    /// DeletesVersionsOnRemove: entities whose versions were deleted.
    deleted: Vec<EntityKey>,
}

impl Mutant {
    fn new(kind: Broken) -> Self {
        Mutant {
            inner: InMemoryBackend::new(),
            kind,
            lost: Vec::new(),
            dropped: Vec::new(),
            deleted: Vec::new(),
        }
    }
}

impl Backend for Mutant {
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
        seed: &[EntityVersion],
        refs: &[RefChange],
    ) -> Result<(), BackendError> {
        self.inner.create(g, h, seed, refs)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        match self.kind {
            Broken::CurrentOnlyKeys => self.inner.keys_at(t, u64::MAX),
            Broken::ReversedKeys => {
                let mut keys = self.inner.keys_at(t, p)?;
                keys.reverse();
                Ok(keys)
            }
            _ => self.inner.keys_at(t, p),
        }
    }
    fn keys_by_field_at(
        &self,
        t: &str,
        f: &str,
        v: &serde_json::Value,
        p: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        match self.kind {
            Broken::StaleFieldIndex => self.inner.keys_by_field_at(t, f, v, 0),
            Broken::ReversedKeys => Ok(self.inner.keys_by_field_at(t, f, v, p)?.map(|mut k| {
                k.reverse();
                k
            })),
            _ => self.inner.keys_by_field_at(t, f, v, p),
        }
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(k)
    }
    fn incoming_at(&self, t: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        match self.kind {
            Broken::CurrentOnlyIndex => self.inner.incoming_at(t, u64::MAX),
            _ => self.inner.incoming_at(t, p),
        }
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        match self.kind {
            Broken::ForgetsRemovedIdentities if self.inner.removed_at(k)?.is_some() => Ok(false),
            _ => self.inner.used_at(k, p),
        }
    }
    fn version_at(&self, k: &EntityKey, p: u64) -> Result<Option<EntityVersion>, BackendError> {
        match self.kind {
            Broken::LatestReads => self.inner.version_at(k, u64::MAX),
            Broken::DeletesVersionsOnRemove if self.deleted.contains(k) => Ok(None),
            Broken::DropsVersions => Ok(self
                .inner
                .version_at(k, p)?
                .filter(|v| !self.dropped.contains(&(k.clone(), v.revision)))),
            _ => self.inner.version_at(k, p),
        }
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        if self.kind == Broken::DeletesVersionsOnRemove && self.deleted.contains(k) {
            return Ok(None);
        }
        self.inner.version(k, r)
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        if self.lost.contains(&p) {
            return Ok(None);
        }
        if matches!(
            self.kind,
            Broken::DropsCommandArchive | Broken::MissingCommandRecord
        ) {
            let mut record = self.inner.record(p)?;
            if let Some(event) = &mut record
                && let Some(bundle) = &mut event.bundle
                && bundle.record.get("commands").is_some()
            {
                if self.kind == Broken::MissingCommandRecord {
                    return Ok(None);
                }
                bundle.record["commands"] =
                    serde_json::json!({"declarations":[],"types":[],"intents":[]});
            }
            return Ok(record);
        }
        match (self.kind, p) {
            (Broken::ReordersRecords, 1) => self.inner.record(2),
            (Broken::ReordersRecords, 2) => self.inner.record(1),
            _ => self.inner.record(p),
        }
    }
    fn commit(
        &mut self,
        expected: &str,
        versions: &[EntityVersion],
        removals: &[EntityKey],
        refs: &[RefChange],
        record: &TransitionRecord,
        head: &Head,
    ) -> Result<CasOutcome, BackendError> {
        match self.kind {
            Broken::IgnoresHead => {
                let actual = self.inner.head()?.unwrap().last_record;
                self.inner
                    .commit(&actual, versions, removals, refs, record, head)
            }
            Broken::PartialWrites => {
                let out = self
                    .inner
                    .commit(expected, versions, removals, refs, record, head)?;
                if out == CasOutcome::HeadMoved {
                    // Writes the versions anyway (a torn write), without moving the head.
                    let actual = self.inner.head()?.unwrap();
                    self.inner.commit(
                        &actual.last_record.clone(),
                        versions,
                        removals,
                        refs,
                        record,
                        &actual,
                    )?;
                }
                Ok(out)
            }
            Broken::DeletesVersionsOnRemove => {
                let out = self
                    .inner
                    .commit(expected, versions, removals, refs, record, head)?;
                if out == CasOutcome::Applied {
                    self.deleted.extend(removals.iter().cloned());
                }
                Ok(out)
            }
            Broken::StaleIndex => {
                let adds: Vec<RefChange> = refs.iter().filter(|c| c.op == "add").cloned().collect();
                self.inner
                    .commit(expected, versions, removals, &adds, record, head)
            }
            Broken::DropsVersions => {
                for v in versions {
                    if v.revision > 1 {
                        self.dropped.push((v.key(), v.revision - 1));
                    }
                }
                self.inner
                    .commit(expected, versions, removals, refs, record, head)
            }
            Broken::DropsHeadSchema => {
                let mut forgetful = head.clone();
                forgetful.schema = None;
                self.inner
                    .commit(expected, versions, removals, refs, record, &forgetful)
            }
            Broken::NonAtomicHead => {
                // Moves the head (and versions) now, writes the record only later.
                // Moves the head and writes the versions, but the record is not part of the same
                // atomic unit: a crash between the two (modelled as always happening) loses it.
                let out = self
                    .inner
                    .commit(expected, versions, removals, refs, record, head)?;
                if out == CasOutcome::Applied {
                    self.lost.push(record.position);
                }
                Ok(out)
            }
            _ => self
                .inner
                .commit(expected, versions, removals, refs, record, head),
        }
    }
}

#[test]
fn the_reference_backend_passes_every_case() {
    let report = run(InMemoryBackend::new);
    assert_eq!(report.cases.len(), 31);
    let failed: Vec<_> = report.cases.iter().filter(|c| !c.ok).collect();
    assert!(failed.is_empty(), "{failed:#?}");
}

#[test]
fn each_broken_backend_fails_its_designated_case() {
    for (kind, case) in [
        (Broken::IgnoresHead, "conflict_on_outdated_parent"),
        (Broken::PartialWrites, "no_partial_application"),
        (Broken::ReordersRecords, "history_between_states"),
        (Broken::DropsVersions, "load_at_past_state"),
        (Broken::LatestReads, "snapshot_consistency"),
        (Broken::NonAtomicHead, "crash_retry"),
        (Broken::ForgetsRemovedIdentities, "identity_never_reused"),
        (Broken::DeletesVersionsOnRemove, "removed_entity_history"),
        (Broken::StaleIndex, "reference_index_consistency"),
        (Broken::CurrentOnlyIndex, "existence_snapshot"),
        (Broken::StaleFieldIndex, "query_index_consistency"),
        (Broken::CurrentOnlyKeys, "query_snapshot"),
        (Broken::DropsHeadSchema, "schema_history_consistency"),
    ] {
        let report = run(|| Mutant::new(kind));
        let c = report.case(case).unwrap();
        assert!(!c.ok, "{kind:?} must fail {case}");
        assert!(
            !c.message.is_empty(),
            "{kind:?}: the failure names the violated rule"
        );
    }
}

#[test]
fn reversed_key_order_passes_every_case() {
    let report = run(|| Mutant::new(Broken::ReversedKeys));
    let failed: Vec<_> = report.cases.iter().filter(|c| !c.ok).collect();
    assert!(failed.is_empty(), "{failed:#?}");
}

#[test]
fn reference_backend_rejects_inconsistent_atomic_arguments_before_any_write() {
    use behavior_store::documents::{EntityKey, SeedEntity};
    use behavior_store::store::genesis_v2_for;
    use behavior_store::{Backend, Store};
    use behavior_verify::governance::trusted::EvidencePolicyV2;
    let module = behavior_core::admit(
        &std::fs::read_to_string(
            std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
                .join("../../tests/fixtures/wire/valid/ledger.json"),
        )
        .unwrap(),
    )
    .unwrap();
    let ep=EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let seed = vec![SeedEntity {
        entity: "Account".into(),
        value: serde_json::json!({"id":"a1","active":true,"balance":"100.00"}),
    }];
    let mut original = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(&module, ep.clone(), seed.clone()).unwrap(),
    )
    .unwrap();
    let bundle = original
        .evaluate(
            &module,
            "freeze",
            &std::collections::BTreeMap::from([("account".into(), "a1".into())]),
            &serde_json::json!({}),
            &serde_json::json!({}),
            "2026-10-05T12:00:00Z",
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    original
        .commit(&module, &bundle.evaluated_state, &bundle)
        .unwrap();
    let record = original.backend().record(1).unwrap().unwrap();
    let final_head = original.backend().head().unwrap().unwrap();
    for fault in ["versions", "head", "record"] {
        let store = Store::create(
            InMemoryBackend::new(),
            &module,
            genesis_v2_for(&module, ep.clone(), seed.clone()).unwrap(),
        )
        .unwrap();
        let before = store.backend().head().unwrap().unwrap();
        let key = EntityKey {
            entity: "Account".into(),
            id: "a1".into(),
        };
        let old = store.backend().version_at(&key, 0).unwrap();
        let mut backend = store.into_backend();
        let mut versions = record.new_versions.clone();
        let mut head = final_head.clone();
        let mut event = record.clone();
        match fault {
            "versions" => versions.clear(),
            "head" => head.state_ref.position = 2,
            _ => event.previous_record = format!("sha256:{}", "ff".repeat(32)),
        }
        assert!(
            backend
                .commit(
                    &before.last_record,
                    &versions,
                    &[],
                    &record.ref_changes,
                    &event,
                    &head
                )
                .is_err(),
            "{fault}"
        );
        assert_eq!(backend.head().unwrap(), Some(before));
        assert_eq!(backend.version_at(&key, 0).unwrap(), old);
        assert!(backend.version(&key, 2).unwrap().is_none());
        assert!(backend.record(1).unwrap().is_none());
    }
}

#[test]
fn command_history_conformance_detects_missing_or_partial_commands_and_ignores_index_order() {
    let reference = run(InMemoryBackend::new);
    assert!(
        reference
            .case("command_history")
            .expect("command history case must exist")
            .ok
    );
    for fault in [Broken::DropsCommandArchive, Broken::MissingCommandRecord] {
        let report = run(|| Mutant::new(fault));
        let case = report.case("command_history").unwrap();
        assert!(!case.ok, "{fault:?}");
        assert!(!case.message.is_empty());
    }
    assert!(
        run(|| Mutant::new(Broken::ReversedKeys))
            .case("command_history")
            .unwrap()
            .ok
    );
}
