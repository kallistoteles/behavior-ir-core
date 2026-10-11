#![allow(dead_code)]
//! Test-only host persistence. One fsynced snapshot is the atomic storage unit;
//! the OS file lock serializes writers, including writers in another process.
use behavior_engine::store::documents::{
    EntityKey, EntityVersion, Genesis, Head, RefChange, TransitionRecord,
};
use behavior_engine::store::{Backend, BackendError, CasOutcome, RefEdge};
use serde_json::json;
use std::collections::BTreeSet;
use std::fs::{File, OpenOptions};
use std::io::Write;
use std::path::{Path, PathBuf};
use std::sync::atomic::{AtomicU64, Ordering};
static NEXT: AtomicU64 = AtomicU64::new(0);
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Fault {
    None,
    AbortBeforeWrite,
    CrashAfterPersistence,
}
pub struct DurableBackend {
    root: PathBuf,
    pub fault: Fault,
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
        Ok(Database {
            genesis: serde_json::from_value(raw["genesis"].clone()).map_err(error)?,
            head: serde_json::from_value(raw["head"].clone()).map_err(error)?,
            versions: serde_json::from_value(raw["versions"].clone()).map_err(error)?,
            records: serde_json::from_value(raw["records"].clone()).map_err(error)?,
            removals: serde_json::from_value(raw["removals"].clone()).map_err(error)?,
            refs: serde_json::from_value(raw["refs"].clone()).map_err(error)?,
        })
    }
    fn write(&self, db: &Database) -> Result<(), BackendError> {
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
            file.write_all(bytes.as_bytes()).map_err(error)?;
            file.sync_all().map_err(error)?;
            std::fs::rename(&temp, self.root.join("store.json")).map_err(error)?;
            File::open(&self.root)
                .and_then(|d| d.sync_all())
                .map_err(error)?;
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
        if self.read()?.genesis.is_some() {
            return Err(error("store already exists"));
        }
        self.write(&Database {
            genesis: Some(g.clone()),
            head: Some(h.clone()),
            versions: seed.to_vec(),
            refs: refs.iter().cloned().map(|r| (0, r)).collect(),
            ..Database::default()
        })
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
        let mut db = self.read()?;
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
        self.write(&db)?;
        Ok(CasOutcome::Applied)
    }
}
