#![allow(clippy::unwrap_used, clippy::expect_used)]

//! US3: the conformance suite. The reference backend passes every case; each broken backend fails
//! its designated case (SC-003).

use behavior_store as store_api;
use behavior_store::conformance::run;
use behavior_store::documents::{
    EntityKey, EntityVersion, Genesis, Head, RefChange, TransitionRecord,
};
use behavior_store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store};
mod common;
#[path = "support/creation_backend.rs"]
mod creation_fixture;

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
    RejectCreationRetry,
    ResetCreationHistory,
    OverwriteCreation,
    DuplicateSeedLifetime,
    AcceptSameLiveState,
    MixCreation,
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
    creation_hits: std::rc::Rc<std::cell::Cell<usize>>,
    duplicate_lifetime: bool,
    mixed_versions: Vec<EntityVersion>,
}

impl Mutant {
    fn new(kind: Broken) -> Self {
        Mutant {
            inner: InMemoryBackend::new(),
            kind,
            lost: Vec::new(),
            dropped: Vec::new(),
            deleted: Vec::new(),
            creation_hits: std::rc::Rc::new(std::cell::Cell::new(0)),
            duplicate_lifetime: false,
            mixed_versions: Vec::new(),
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
        if let Some(existing) = self.inner.genesis()? {
            let equivalent = existing == *g;
            let hit = || {
                self.creation_hits.set(self.creation_hits.get() + 1);
            };
            match self.kind {
                Broken::RejectCreationRetry if equivalent => {
                    hit();
                    return Err(BackendError(
                        "019 mutant rejected equivalent creation".into(),
                    ));
                }
                Broken::ResetCreationHistory
                    if equivalent
                        && self
                            .inner
                            .head()?
                            .is_some_and(|head| head.state_ref.position > 0) =>
                {
                    hit();
                    let mut replacement = InMemoryBackend::new();
                    replacement.create(g, h, seed, refs)?;
                    self.inner = replacement;
                    return Ok(());
                }
                Broken::OverwriteCreation if !equivalent => {
                    hit();
                    let mut replacement = InMemoryBackend::new();
                    replacement.create(g, h, seed, refs)?;
                    self.inner = replacement;
                    return Ok(());
                }
                Broken::DuplicateSeedLifetime if equivalent => {
                    self.inner.create(g, h, seed, refs)?;
                    hit();
                    self.duplicate_lifetime = true;
                    return Ok(());
                }
                Broken::AcceptSameLiveState
                    if !equivalent
                        && self
                            .inner
                            .head()?
                            .is_some_and(|head| head.state_ref.state == h.state_ref.state) =>
                {
                    hit();
                    return Ok(());
                }
                Broken::MixCreation if !equivalent => {
                    hit();
                    self.mixed_versions = seed.to_vec();
                    return Ok(());
                }
                _ => {}
            }
        }
        self.inner.create(g, h, seed, refs)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        if !self.mixed_versions.is_empty() && p == 0 {
            let mut keys = self.inner.keys_at(t, p)?;
            keys.extend(
                self.mixed_versions
                    .iter()
                    .filter(|version| version.entity == t)
                    .map(EntityVersion::key),
            );
            keys.sort();
            keys.dedup();
            return Ok(keys);
        }
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
        if p == 0
            && let Some(version) = self
                .mixed_versions
                .iter()
                .find(|version| version.key() == *k)
        {
            return Ok(Some(version.clone()));
        }
        if self.duplicate_lifetime {
            return Ok(self.inner.version_at(k, p)?.map(|mut version| {
                version.created_at = 1;
                version
            }));
        }
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
        if r == 1
            && let Some(version) = self
                .mixed_versions
                .iter()
                .find(|version| version.key() == *k)
        {
            return Ok(Some(version.clone()));
        }
        if self.duplicate_lifetime {
            return Ok(self.inner.version(k, r)?.map(|mut version| {
                version.created_at = 1;
                version
            }));
        }
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
    assert_eq!(
        report.cases.len(),
        45,
        "31 existing and 14 creation cases must remain registered"
    );
    assert_eq!(
        report
            .cases
            .iter()
            .filter(|c| !c.name.starts_with("creation_"))
            .count(),
        31,
        "all existing persistence cases remain registered"
    );
    assert_eq!(
        report
            .cases
            .iter()
            .map(|c| c.name)
            .collect::<std::collections::BTreeSet<_>>()
            .len(),
        report.cases.len(),
        "case identities must be unique"
    );
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
fn historical_incoming_reference_contract_detects_current_only_index_answers() {
    let reference = run(InMemoryBackend::new);
    assert!(reference.case("existence_snapshot").unwrap().ok);
    let mutant = run(|| Mutant::new(Broken::CurrentOnlyIndex));
    let case = mutant.case("existence_snapshot").unwrap();
    assert!(
        !case.ok,
        "current-only reference index passed the historical contract"
    );
    assert!(
        case.message.contains("historical incoming references"),
        "{}",
        case.message
    );
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

// Missing registration is an explicit protocol RED. Fixture activation has its
// separate observed RED/GREEN, so absence cannot masquerade as rejection evidence.
#[test]
fn creation_complete_product_case_is_registered_and_reference_passes() {
    let report = run(InMemoryBackend::new);
    let case = report
        .case("creation_complete_product")
        .expect("C019-01 creation_complete_product must be registered");
    assert!(case.ok, "{}", case.message);
}

#[test]
fn creation_invalid_seed_no_publish_case_is_registered_and_reference_passes() {
    let report = run(InMemoryBackend::new);
    let case = report
        .case("creation_invalid_seed_no_publish")
        .expect("C019-02 creation_invalid_seed_no_publish must be registered");
    assert!(case.ok, "{}", case.message);
}

#[test]
fn creation_incomplete_product_case_is_registered_and_reference_passes() {
    let report = run(InMemoryBackend::new);
    let case = report
        .case("creation_incomplete_product")
        .expect("C019-13 creation_incomplete_product must be registered");
    assert!(case.ok, "{}", case.message);
}

#[test]
fn creation_publication_mutants_fail_the_designated_complete_product_case() {
    use creation_fixture::{CreationBackend, CreationMutant};
    use std::cell::RefCell;
    for mutant in [
        CreationMutant::NoPublication,
        CreationMutant::GenesisOnly,
        CreationMutant::MissingHead,
        CreationMutant::MissingSeed,
        CreationMutant::CorruptContent,
        CreationMutant::MissingRefs,
    ] {
        let observers = RefCell::new(Vec::new());
        let report = run(|| {
            let backend = CreationBackend::new(InMemoryBackend::new());
            backend.set_mutant(mutant);
            observers.borrow_mut().push(backend.clone());
            backend
        });
        assert!(
            observers
                .borrow()
                .iter()
                .any(|backend| backend.counters().mutant_hits > 0),
            "{mutant:?}: dormant fixture cannot establish semantic rejection"
        );
        let case = report
            .case("creation_complete_product")
            .expect("C019-01 must exist before mutant rejection is claimed");
        assert!(!case.ok, "{mutant:?} passed its designated creation case");
        assert!(
            !case.message.is_empty(),
            "{mutant:?}: no violated obligation named"
        );
    }
}

macro_rules! creation_registration {
    ($test:ident,$name:literal) => {
        #[test]
        fn $test() {
            let report = run(InMemoryBackend::new);
            let case = report
                .case($name)
                .expect(concat!($name, " must be registered"));
            assert!(case.ok, "{}", case.message);
        }
    };
}
creation_registration!(
    creation_before_failure_case_registered,
    "creation_before_publication_failure"
);
creation_registration!(
    creation_lost_ack_case_registered,
    "creation_lost_ack_recovery"
);
creation_registration!(
    creation_read_failure_case_registered,
    "creation_recovery_read_failure"
);

fn creation_ledger(v2: bool) -> Store<InMemoryBackend> {
    let module = common::ledger();
    let g = if v2 {
        let p=behavior_verify::governance::trusted::EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
        behavior_store::store::genesis_v2_for(&module, p, common::default_seed()).unwrap()
    } else {
        behavior_store::store::genesis_for(
            &module,
            behavior_store::documents::EvidencePolicy::none(),
            common::default_seed(),
        )
    };
    Store::create(InMemoryBackend::new(), &module, g).unwrap()
}

fn assert_direct_retry_preserves(
    backend: &mut InMemoryBackend,
    original: &creation_fixture::Initialization,
) {
    let head = backend.head().unwrap();
    let records = (1..=head.as_ref().unwrap().state_ref.position + 1)
        .map(|p| backend.record(p).unwrap())
        .collect::<Vec<_>>();
    let current = original
        .seed
        .iter()
        .map(|v| backend.version_at(&v.key(), u64::MAX).unwrap())
        .collect::<Vec<_>>();
    original
        .publish(backend)
        .expect("legal direct Backend equivalent retry must recover the existing initialization");
    assert_eq!(backend.head().unwrap(), head);
    assert_eq!(
        (1..=head.as_ref().unwrap().state_ref.position + 1)
            .map(|p| backend.record(p).unwrap())
            .collect::<Vec<_>>(),
        records
    );
    assert_eq!(
        original
            .seed
            .iter()
            .map(|v| backend.version_at(&v.key(), u64::MAX).unwrap())
            .collect::<Vec<_>>(),
        current
    );
    for v in &original.seed {
        assert_eq!(backend.version(&v.key(), 1).unwrap(), Some(v.clone()));
        assert_eq!(backend.version_at(&v.key(), 0).unwrap(), Some(v.clone()));
        assert!(backend.used_at(&v.key(), 0).unwrap());
    }
}

#[test]
fn creation_direct_backend_equivalent_retry_at_zero_is_idempotent() {
    for v2 in [false, true] {
        let store = creation_ledger(v2);
        let original = creation_fixture::Initialization::capture(store.backend()).unwrap();
        assert_direct_retry_preserves(&mut store.into_backend(), &original);
    }
}

#[test]
fn creation_direct_backend_equivalent_retry_after_update_preserves_history() {
    for v2 in [false, true] {
        let mut store = creation_ledger(v2);
        let original = creation_fixture::Initialization::capture(store.backend()).unwrap();
        let bundle = common::transfer(&store, "a1", "a2", "1.00", common::T0)
            .bundle
            .unwrap();
        common::commit(&mut store, &bundle);
        assert_eq!(store.current().unwrap().position, 1);
        assert_direct_retry_preserves(&mut store.into_backend(), &original);
    }
}

#[test]
fn creation_direct_backend_equivalent_retry_after_migration_preserves_schema() {
    use behavior_store::conformance::{CULTURES_V1_TO_V2, CULTURES_V1_WIRE, CULTURES_V2_WIRE};
    let before = behavior_core::admit(CULTURES_V1_WIRE).unwrap();
    let after = behavior_core::admit(CULTURES_V2_WIRE).unwrap();
    let migration =
        behavior_core::migration::admit_migration(&before, &after, CULTURES_V1_TO_V2).unwrap();
    let seed = vec![behavior_store::documents::SeedEntity {
        entity: "Culture".into(),
        value: serde_json::json!({"id":"k1","medium":"WPM","status":"ACTIVE","ph":7,"legacy_code":"L1","price":"1.50","fee":"0.1235"}),
    }];
    for v2 in [false, true] {
        let g = if v2 {
            let p=behavior_verify::governance::trusted::EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
            behavior_store::store::genesis_v2_for(&before, p, seed.clone()).unwrap()
        } else {
            behavior_store::store::genesis_for(
                &before,
                behavior_store::documents::EvidencePolicy::none(),
                seed.clone(),
            )
        };
        let mut store = Store::create(InMemoryBackend::new(), &before, g).unwrap();
        let original = creation_fixture::Initialization::capture(store.backend()).unwrap();
        store
            .migrate(&migration, &before, &after, common::T0, None)
            .unwrap();
        assert!(store.backend().head().unwrap().unwrap().schema.is_some());
        assert_direct_retry_preserves(&mut store.into_backend(), &original);
    }
}

creation_registration!(
    creation_us3_equivalent_case_registered,
    "creation_equivalent_retry"
);
creation_registration!(
    creation_us3_conflicting_case_registered,
    "creation_conflicting_retry"
);
creation_registration!(
    creation_us3_advanced_case_registered,
    "creation_advanced_recovery"
);
creation_registration!(
    creation_us3_migrated_case_registered,
    "creation_migrated_recovery"
);
creation_registration!(
    creation_us3_competing_equal_case_registered,
    "creation_competing_equivalent"
);
creation_registration!(
    creation_us3_competing_foreign_case_registered,
    "creation_competing_conflicting"
);
creation_registration!(
    creation_us3_order_case_registered,
    "creation_order_independence"
);
creation_registration!(
    creation_us3_publication_read_case_registered,
    "creation_publication_read_interleaving"
);

#[test]
fn creation_us3_direct_backend_after_create_remove_preserves_lifetimes() {
    let module = common::accounts();
    for v2 in [false, true] {
        let g = if v2 {
            let p=behavior_verify::governance::trusted::EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
            behavior_store::store::genesis_v2_for(&module, p, common::accounts_seed()).unwrap()
        } else {
            behavior_store::store::genesis_for(
                &module,
                behavior_store::documents::EvidencePolicy::none(),
                common::accounts_seed(),
            )
        };
        let mut store = Store::create(InMemoryBackend::new(), &module, g).unwrap();
        let original = creation_fixture::Initialization::capture(store.backend()).unwrap();
        let created = common::act(
            &store,
            "open_account",
            &[("owner", "c2")],
            serde_json::json!({"account_id":"new","initial":"0.00"}),
        );
        common::commit_acc(&mut store, &created);
        let removed = common::act(
            &store,
            "close_account",
            &[("account", "new")],
            serde_json::json!({}),
        );
        common::commit_acc(&mut store, &removed);
        let removed_seed = common::act(
            &store,
            "close_account",
            &[("account", "a1")],
            serde_json::json!({}),
        );
        common::commit_acc(&mut store, &removed_seed);
        let new_key = common::key("Account", "new");
        let seed_key = common::key("Account", "a1");
        assert_eq!(store.backend().removed_at(&new_key).unwrap(), Some(2));
        assert_eq!(store.backend().removed_at(&seed_key).unwrap(), Some(3));
        let created_version = store.backend().version(&new_key, 1).unwrap();
        let mut backend = store.into_backend();
        assert_direct_retry_preserves(&mut backend, &original);
        assert_eq!(backend.removed_at(&new_key).unwrap(), Some(2));
        assert_eq!(backend.removed_at(&seed_key).unwrap(), Some(3));
        assert_eq!(backend.version(&new_key, 1).unwrap(), created_version);
        assert!(backend.used_at(&new_key, 3).unwrap());
        assert!(backend.used_at(&seed_key, 3).unwrap());
    }
}

#[test]
fn creation_us3_direct_backend_later_equal_state_preserves_position() {
    for v2 in [false, true] {
        let mut store = creation_ledger(v2);
        let original = creation_fixture::Initialization::capture(store.backend()).unwrap();
        let forward = common::transfer(&store, "a1", "a2", "1.00", common::T0)
            .bundle
            .unwrap();
        common::commit(&mut store, &forward);
        let backward = common::transfer(&store, "a2", "a1", "1.00", common::T0)
            .bundle
            .unwrap();
        common::commit(&mut store, &backward);
        assert_eq!(
            store.current().unwrap().state,
            original.head.state_ref.state
        );
        assert_eq!(store.current().unwrap().position, 2);
        assert_direct_retry_preserves(&mut store.into_backend(), &original);
    }
}

fn creation_mutant_setup(
    kind: Broken,
) -> (
    Mutant,
    creation_fixture::Initialization,
    creation_fixture::Initialization,
) {
    let module = common::ledger();
    let store = creation_ledger(false);
    let original = creation_fixture::Initialization::capture(store.backend()).unwrap();
    let mut foreign_seed = common::default_seed();
    foreign_seed[0].value["balance"] = serde_json::json!("101.00");
    foreign_seed.push(behavior_store::documents::SeedEntity {
        entity: "Account".into(),
        value: serde_json::json!({"id":"a4","active":true,"balance":"1.00"}),
    });
    let foreign = Store::create(
        InMemoryBackend::new(),
        &module,
        behavior_store::store::genesis_for(
            &module,
            behavior_store::documents::EvidencePolicy::none(),
            foreign_seed,
        ),
    )
    .unwrap();
    let foreign = creation_fixture::Initialization::capture(foreign.backend()).unwrap();
    let mut mutant = Mutant::new(kind);
    mutant.inner = store.into_backend();
    (mutant, original, foreign)
}

#[test]
fn creation_us3_reject_retry_mutant_must_activate() {
    let (mut mutant, original, _) = creation_mutant_setup(Broken::RejectCreationRetry);
    assert!(
        original.publish(&mut mutant).is_err(),
        "reject-equivalent selector is dormant"
    );
    assert_eq!(mutant.creation_hits.get(), 1);
}

#[test]
fn creation_us3_reset_history_mutant_must_activate() {
    let (mutant, original, _) = creation_mutant_setup(Broken::ResetCreationHistory);
    let mut store = Store::open(mutant).unwrap();
    let bundle = common::transfer(&store, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    common::commit(&mut store, &bundle);
    let mut mutant = store.into_backend();
    assert_eq!(mutant.head().unwrap().unwrap().state_ref.position, 1);
    original.publish(&mut mutant).unwrap();
    assert_eq!(
        mutant.head().unwrap().unwrap().state_ref.position,
        0,
        "reset-history selector is dormant"
    );
    assert_eq!(mutant.creation_hits.get(), 1);
}

#[test]
fn creation_us3_overwrite_mutant_must_activate() {
    let (mut mutant, _, foreign) = creation_mutant_setup(Broken::OverwriteCreation);
    assert!(
        foreign.publish(&mut mutant).is_ok(),
        "overwrite-foreign selector is dormant"
    );
    assert_eq!(mutant.genesis().unwrap(), Some(foreign.genesis));
    assert_eq!(mutant.creation_hits.get(), 1);
}

#[test]
fn creation_us3_duplicate_lifetime_mutant_must_activate() {
    let (mut mutant, original, _) = creation_mutant_setup(Broken::DuplicateSeedLifetime);
    original.publish(&mut mutant).unwrap();
    assert_eq!(
        mutant
            .version_at(&original.seed[0].key(), 0)
            .unwrap()
            .unwrap()
            .created_at,
        1,
        "duplicate-lifetime selector is dormant"
    );
    assert_eq!(mutant.creation_hits.get(), 1);
}

#[test]
fn creation_us3_equal_live_state_mutant_must_activate() {
    let (mut mutant, original, _) = creation_mutant_setup(Broken::AcceptSameLiveState);
    let mut foreign_g = original.genesis.clone();
    let behavior_store::documents::EvidencePolicyDocument::Legacy(policy) =
        &mut foreign_g.evidence_policy
    else {
        panic!("legal v1 control expected")
    };
    policy.migration = Some(behavior_store::documents::MigrationEvidence {
        require: behavior_store::documents::Require::None,
        trusted_execution_policies: None,
    });
    let foreign = Store::create(InMemoryBackend::new(), &common::ledger(), foreign_g).unwrap();
    let foreign = creation_fixture::Initialization::capture(foreign.backend()).unwrap();
    assert_eq!(original.head.state_ref.state, foreign.head.state_ref.state);
    assert_ne!(
        original.genesis.hash().unwrap(),
        foreign.genesis.hash().unwrap()
    );
    assert!(
        foreign.publish(&mut mutant).is_ok(),
        "equal-StateId alias selector is dormant"
    );
    assert_eq!(mutant.creation_hits.get(), 1);
}

#[test]
fn creation_us3_mixed_product_mutant_must_activate() {
    let (mut mutant, original, foreign) = creation_mutant_setup(Broken::MixCreation);
    assert!(
        foreign.publish(&mut mutant).is_ok(),
        "mixed-product selector is dormant"
    );
    assert_eq!(mutant.genesis().unwrap(), Some(original.genesis));
    assert!(
        mutant
            .keys_at("Account", 0)
            .unwrap()
            .contains(&common::key("Account", "a4"))
    );
    assert!(
        mutant
            .version_at(&common::key("Account", "a4"), 0)
            .unwrap()
            .is_some()
    );
    assert_eq!(mutant.creation_hits.get(), 1);
}

#[test]
fn creation_us3_retry_mutants_fail_their_designated_case() {
    use std::cell::RefCell;
    for (kind, name) in [
        (Broken::RejectCreationRetry, "creation_equivalent_retry"),
        (Broken::ResetCreationHistory, "creation_advanced_recovery"),
        (Broken::OverwriteCreation, "creation_conflicting_retry"),
        (Broken::DuplicateSeedLifetime, "creation_equivalent_retry"),
        (Broken::AcceptSameLiveState, "creation_conflicting_retry"),
        (Broken::MixCreation, "creation_conflicting_retry"),
    ] {
        let counters = RefCell::new(Vec::new());
        let report = run(|| {
            let mutant = Mutant::new(kind);
            counters
                .borrow_mut()
                .push(std::rc::Rc::clone(&mutant.creation_hits));
            mutant
        });
        assert!(
            counters.borrow().iter().any(|hits| hits.get() > 0),
            "{kind:?}: mutant never activated"
        );
        let case = report
            .case(name)
            .expect("new retry case must be registered before rejection evidence");
        assert!(!case.ok, "{kind:?} passed {name}");
        assert!(
            !case.message.is_empty(),
            "{kind:?}: missing violated obligation"
        );
    }
}
