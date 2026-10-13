#![allow(dead_code)]
//! Test-only cooperating Linux/local-filesystem host. One complete snapshot is
//! published by rename and acknowledged after file/directory sync. Every normal
//! reader and writer shares one stable lock inode; unacknowledged publication
//! is recovered by completing the same durability barrier without rewriting it.
//! The root is preexisting and durably established (or its parent entries must
//! be synced separately). Process-exit tests do not prove power-loss/device honesty.
use behavior_engine::store::documents::{
    EntityKey, EntityVersion, Genesis, Head, RefChange, TransitionRecord,
};
use behavior_engine::store::{Backend, BackendError, CasOutcome, RefEdge};
use serde_json::json;
use std::collections::{BTreeMap, BTreeSet};
use std::fs::{File, OpenOptions};
use std::io::Write;
use std::path::{Path, PathBuf};
use std::sync::atomic::{AtomicU64, Ordering};
static NEXT: AtomicU64 = AtomicU64::new(0);
enum Publication {
    Creation,
    Commit,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Fault {
    None,
    AbortBeforeWrite,
    CrashAfterPersistence,
}
/// Creation-only fault boundaries, activated after observed dormant-selector
/// assertion failures. Existing commit fault modes remain separate.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum CreationFault {
    None,
    BeforeStagingError,
    AfterTempCreate,
    AfterPartialWrite,
    AfterCompleteWrite,
    AfterFileSync,
    RenameError,
    AfterRename,
    DirectorySyncError,
    AfterDirectorySync,
    RecoveryReadError,
    RecoverySyncError,
}
impl CreationFault {
    pub fn from_name(name: &str) -> Option<Self> {
        Some(match name {
            "none" => Self::None,
            "before-staging-error" => Self::BeforeStagingError,
            "after-temp-create" => Self::AfterTempCreate,
            "after-partial-write" => Self::AfterPartialWrite,
            "after-complete-write" => Self::AfterCompleteWrite,
            "after-file-sync" => Self::AfterFileSync,
            "rename-error" => Self::RenameError,
            "after-rename" => Self::AfterRename,
            "directory-sync-error" => Self::DirectorySyncError,
            "after-directory-sync" => Self::AfterDirectorySync,
            "recovery-read-error" => Self::RecoveryReadError,
            "recovery-sync-error" => Self::RecoverySyncError,
            _ => return None,
        })
    }
}
pub struct DurableBackend {
    root: PathBuf,
    pub fault: Fault,
    pub creation_fault: CreationFault,
}
#[derive(Default)]
struct Database {
    genesis: Option<Genesis>,
    head: Option<Head>,
    versions: Vec<EntityVersion>,
    records: Vec<TransitionRecord>,
    removals: Vec<(EntityKey, u64)>,
    refs: Vec<(u64, RefChange)>,
}
fn error(e: impl std::fmt::Display) -> BackendError {
    BackendError(e.to_string())
}
impl DurableBackend {
    pub fn open(root: &Path) -> Result<Self, BackendError> {
        std::fs::create_dir_all(root).map_err(error)?;
        Ok(Self {
            root: root.into(),
            fault: Fault::None,
            creation_fault: CreationFault::None,
        })
    }
    fn lock(&self) -> Result<File, BackendError> {
        let file = OpenOptions::new()
            .read(true)
            .write(true)
            .create(true)
            .truncate(false)
            .open(self.root.join("writer.lock"))
            .map_err(error)?;
        file.lock().map_err(error)?;
        Ok(file)
    }
    fn read(&self) -> Result<Database, BackendError> {
        let _lock = self.lock()?;
        self.creation_boundary(CreationFault::RecoveryReadError, "recovery-read-error")?;
        let db = self.read_locked()?;
        if db.genesis.is_some() {
            self.recovery_barrier()?;
        }
        Ok(db)
    }
    // Call only while holding writer.lock. These helpers never acquire it
    // recursively; Unix flock on separate descriptors could otherwise deadlock.
    fn read_locked(&self) -> Result<Database, BackendError> {
        let text = match std::fs::read_to_string(self.root.join("store.json")) {
            Ok(text) => text,
            Err(e) if e.kind() == std::io::ErrorKind::NotFound => return Ok(Database::default()),
            Err(e) => return Err(error(e)),
        };
        let raw = behavior_engine::canonical::decode_strict(&text).map_err(error)?;
        let object = raw
            .as_object()
            .ok_or_else(|| error("host snapshot is not an object"))?;
        let fields = ["genesis", "head", "versions", "records", "removals", "refs"];
        if object.len() != fields.len() || fields.iter().any(|f| !object.contains_key(*f)) {
            return Err(error("unknown or missing host snapshot field"));
        }
        // Absence is represented solely by a missing authoritative file. An
        // existing nullable/partial snapshot is corruption, never an empty
        // target that creation may overwrite.
        if raw["genesis"].is_null() || raw["head"].is_null() {
            return Err(error("incomplete authoritative host snapshot"));
        }
        Ok(Database {
            genesis: serde_json::from_value(raw["genesis"].clone()).map_err(error)?,
            head: serde_json::from_value(raw["head"].clone()).map_err(error)?,
            versions: serde_json::from_value(raw["versions"].clone()).map_err(error)?,
            records: serde_json::from_value(raw["records"].clone()).map_err(error)?,
            removals: serde_json::from_value(raw["removals"].clone()).map_err(error)?,
            refs: serde_json::from_value(raw["refs"].clone()).map_err(error)?,
        })
    }
    fn recovery_barrier(&self) -> Result<(), BackendError> {
        self.creation_boundary(CreationFault::RecoverySyncError, "recovery-sync-error")?;
        File::open(self.root.join("store.json"))
            .and_then(|f| f.sync_all())
            .map_err(error)?;
        File::open(&self.root)
            .and_then(|d| d.sync_all())
            .map_err(error)
    }
    fn creation_boundary(&self, selected: CreationFault, name: &str) -> Result<(), BackendError> {
        if self.creation_fault != selected {
            return Ok(());
        }
        eprintln!("CREATION_BOUNDARY019={name}");
        match selected {
            CreationFault::AfterTempCreate
            | CreationFault::AfterPartialWrite
            | CreationFault::AfterCompleteWrite
            | CreationFault::AfterFileSync
            | CreationFault::AfterRename
            | CreationFault::AfterDirectorySync => std::process::exit(86),
            _ => Err(error(format!("injected creation failure at {name}"))),
        }
    }
    fn write(&self, db: &Database, publication: Publication) -> Result<(), BackendError> {
        let creation = matches!(publication, Publication::Creation);
        if self.fault == Fault::AbortBeforeWrite {
            return Err(error("injected failure before persistence"));
        }
        let raw = json!({"genesis":db.genesis,"head":db.head,"versions":db.versions,"records":db.records,"removals":db.removals,"refs":db.refs});
        let bytes = behavior_engine::canonical::to_canonical_string(&raw).map_err(error)?;
        let temp = self.root.join(format!(
            "snapshot-{}-{}.tmp",
            std::process::id(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        let save = || -> Result<(), BackendError> {
            let mut file = OpenOptions::new()
                .write(true)
                .create_new(true)
                .open(&temp)
                .map_err(error)?;
            if creation {
                self.creation_boundary(CreationFault::AfterTempCreate, "after-temp-create")?;
                let split = bytes.len() / 2;
                file.write_all(&bytes.as_bytes()[..split]).map_err(error)?;
                self.creation_boundary(CreationFault::AfterPartialWrite, "after-partial-write")?;
                file.write_all(&bytes.as_bytes()[split..]).map_err(error)?;
                self.creation_boundary(CreationFault::AfterCompleteWrite, "after-complete-write")?;
            } else {
                file.write_all(bytes.as_bytes()).map_err(error)?;
            }
            file.sync_all().map_err(error)?;
            if creation {
                self.creation_boundary(CreationFault::AfterFileSync, "after-file-sync")?;
                self.creation_boundary(CreationFault::RenameError, "rename-error")?;
            }
            std::fs::rename(&temp, self.root.join("store.json")).map_err(error)?;
            if creation {
                self.creation_boundary(CreationFault::AfterRename, "after-rename")?;
                self.creation_boundary(CreationFault::DirectorySyncError, "directory-sync-error")?;
            }
            File::open(&self.root)
                .and_then(|d| d.sync_all())
                .map_err(error)?;
            if creation {
                self.creation_boundary(CreationFault::AfterDirectorySync, "after-directory-sync")?;
            }
            Ok(())
        };
        let result = save();
        if result.is_err() {
            let _ = std::fs::remove_file(&temp);
        }
        result?;
        if self.fault == Fault::CrashAfterPersistence {
            std::process::exit(86);
        }
        Ok(())
    }
}
impl Database {
    /// Compare immutable original material supplied by the legal Core create
    /// product. This is physical identity preservation, not another validator.
    fn recognizes(
        &self,
        g: &Genesis,
        h: &Head,
        seed: &[EntityVersion],
        refs: &[RefChange],
    ) -> Result<(), BackendError> {
        let existing = self
            .genesis
            .as_ref()
            .ok_or_else(|| error("missing published genesis"))?;
        existing.hash().map_err(error)?;
        if existing != g {
            return Err(error("conflicting original Store creation"));
        }
        let originals: Vec<_> = self.versions.iter().filter(|v| v.created_at == 0).collect();
        let actual: BTreeMap<_, _> = originals.iter().map(|v| (v.key(), *v)).collect();
        let expected: BTreeMap<_, _> = seed.iter().map(|v| (v.key(), v)).collect();
        if originals.len() != actual.len()
            || actual != expected
            || self.removals.iter().any(|(_, position)| *position == 0)
        {
            return Err(error(
                "incomplete or altered original Store versions/lifetimes",
            ));
        }
        let actual_refs: BTreeSet<_> = self
            .refs
            .iter()
            .filter(|(p, _)| *p == 0)
            .map(|(_, r)| r)
            .collect();
        let expected_refs: BTreeSet<_> = refs.iter().collect();
        if actual_refs != expected_refs {
            return Err(error("altered original Store references"));
        }
        let current = self
            .head
            .as_ref()
            .ok_or_else(|| error("missing published head"))?;
        if current.state_ref.position == 0 {
            if current != h || !self.records.is_empty() || !self.removals.is_empty() {
                return Err(error("incomplete or altered initial Store head"));
            }
        } else {
            let endpoint: Vec<_> = self
                .records
                .iter()
                .filter(|r| r.position == current.state_ref.position)
                .collect();
            if endpoint.len() != 1
                || endpoint[0].hash().map_err(error)? != current.last_record
                || endpoint[0].result_state != current.state_ref
            {
                return Err(error("incomplete current Store history endpoint"));
            }
        }
        Ok(())
    }
    fn exists(&self, key: &EntityKey, position: u64) -> bool {
        self.versions
            .iter()
            .any(|v| v.key() == *key && v.created_at <= position)
            && !self
                .removals
                .iter()
                .any(|(k, p)| k == key && *p <= position)
    }
}
impl Backend for DurableBackend {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        Ok(self.read()?.genesis)
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        Ok(self.read()?.head)
    }
    fn create(
        &mut self,
        g: &Genesis,
        h: &Head,
        seed: &[EntityVersion],
        refs: &[RefChange],
    ) -> Result<(), BackendError> {
        let _lock = self.lock()?;
        self.creation_boundary(CreationFault::BeforeStagingError, "before-staging-error")?;
        let existing = self.read_locked()?;
        if existing.genesis.is_some() {
            existing.recognizes(g, h, seed, refs)?;
            return self.recovery_barrier();
        }
        self.write(
            &Database {
                genesis: Some(g.clone()),
                head: Some(h.clone()),
                versions: seed.to_vec(),
                refs: refs.iter().cloned().map(|r| (0, r)).collect(),
                ..Database::default()
            },
            Publication::Creation,
        )
    }
    fn version_at(
        &self,
        key: &EntityKey,
        position: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        Ok(self
            .read()?
            .versions
            .into_iter()
            .filter(|v| v.key() == *key && v.created_at <= position)
            .max_by_key(|v| v.created_at))
    }
    fn version(
        &self,
        key: &EntityKey,
        revision: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        Ok(self
            .read()?
            .versions
            .into_iter()
            .find(|v| v.key() == *key && v.revision == revision))
    }
    fn record(&self, position: u64) -> Result<Option<TransitionRecord>, BackendError> {
        Ok(self
            .read()?
            .records
            .into_iter()
            .find(|r| r.position == position))
    }
    fn removed_at(&self, key: &EntityKey) -> Result<Option<u64>, BackendError> {
        Ok(self
            .read()?
            .removals
            .into_iter()
            .find(|(k, _)| k == key)
            .map(|(_, p)| p))
    }
    fn incoming_at(&self, key: &EntityKey, position: u64) -> Result<Vec<RefEdge>, BackendError> {
        let db = self.read()?;
        let mut edges = BTreeSet::new();
        for (p, r) in &db.refs {
            if *p <= position && r.target == *key {
                let edge = RefEdge {
                    entity: r.source.entity.clone(),
                    id: r.source.id.clone(),
                    field: r.field.clone(),
                };
                if r.op == "add" {
                    edges.insert(edge);
                } else {
                    edges.remove(&edge);
                }
            }
        }
        Ok(edges.into_iter().collect())
    }
    fn keys_at(&self, entity: &str, position: u64) -> Result<Vec<EntityKey>, BackendError> {
        let db = self.read()?;
        Ok(db
            .versions
            .iter()
            .map(EntityVersion::key)
            .filter(|k| k.entity == entity && db.exists(k, position))
            .collect::<BTreeSet<_>>()
            .into_iter()
            .collect())
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
        let _lock = self.lock()?;
        let mut db = self.read_locked()?;
        let Some(old) = db.head.as_ref() else {
            return Err(error("store has no head"));
        };
        if old.last_record != expected {
            return Ok(CasOutcome::HeadMoved);
        }
        if old.state_ref.position.checked_add(1) != Some(record.position)
            || record.position != head.state_ref.position
            || head.last_record != record.hash().map_err(error)?
        {
            return Err(error("invalid host commit event/head"));
        }
        db.versions.extend_from_slice(versions);
        db.removals
            .extend(removals.iter().cloned().map(|k| (k, record.position)));
        db.refs
            .extend(refs.iter().cloned().map(|r| (record.position, r)));
        db.records.push(record.clone());
        db.head = Some(head.clone());
        self.write(&db, Publication::Commit)?;
        Ok(CasOutcome::Applied)
    }
}
