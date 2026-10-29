//! The in-memory reference backend: deterministic `BTreeMap` storage with an all-or-nothing
//! commit and private-candidate creation. For tests and as an executable definition
//! of the backend contract, not for production or physical crash durability.

use std::collections::BTreeMap;

use crate::documents::{EntityKey, EntityVersion, Genesis, Head, RefChange, TransitionRecord};
use crate::{Backend, BackendError, CasOutcome, RefEdge};

/// One edge event of the derived reverse-reference index (feature 006): `dropped_at` is set at
/// most once, by the commit that drops the edge.
#[derive(Debug, Clone, PartialEq, Eq)]
struct IndexEdge {
    source: EntityKey,
    field: String,
    added_at: u64,
    dropped_at: Option<u64>,
}

#[derive(Debug, Clone, Default)]
pub struct InMemoryBackend {
    genesis: Option<Genesis>,
    head: Option<Head>,
    /// Versions per entity, in revision order.
    versions: BTreeMap<EntityKey, Vec<EntityVersion>>,
    /// Records by position (index = position - 1).
    records: Vec<TransitionRecord>,
    /// Removal positions (feature 006).
    removed: BTreeMap<EntityKey, u64>,
    /// Index edge events per target (feature 006).
    edges: BTreeMap<EntityKey, Vec<IndexEdge>>,
    /// Field index events (feature 007): `(entity type, field, canonical value)` → keys with the
    /// positions from which and until which they held that value.
    field_index: BTreeMap<(String, String, String), Vec<FieldEdge>>,
    /// The open field-index edge of each entity field: its value and its place in
    /// `field_index`, so a change finds it directly (a migration rewrites many entities that
    /// share a value in one commit, feature 009).
    open_fields: BTreeMap<(EntityKey, String), (String, usize)>,
}

/// One event of the field index: `key` held the value from `added_at` until `dropped_at`.
#[derive(Debug, Clone, PartialEq, Eq)]
struct FieldEdge {
    key: EntityKey,
    added_at: u64,
    dropped_at: Option<u64>,
}

fn value_key(v: &serde_json::Value) -> Option<String> {
    match v {
        serde_json::Value::Object(_) | serde_json::Value::Array(_) => None,
        other => Some(other.to_string()),
    }
}

impl InMemoryBackend {
    pub fn new() -> Self {
        InMemoryBackend::default()
    }

    /// Updates the field index for a new version of an entity (its previous version, if any, is
    /// dropped from the values that changed).
    fn index_version(&mut self, v: &EntityVersion, position: u64) {
        let key = v.key();
        let previous = self
            .versions
            .get(&key)
            .and_then(|vs| vs.last())
            .map(|p| p.value.clone());
        let Some(fields) = v.value.as_object() else {
            return;
        };
        // A field the new version no longer has (a migration removed it, feature 009) leaves
        // the index.
        if let Some(serde_json::Value::Object(old)) = &previous {
            for (field, value) in old {
                if !fields.contains_key(field)
                    && let Some(old) = value_key(value)
                {
                    self.drop_field(&key, field, &old, position);
                }
            }
        }
        for (field, value) in fields {
            let old = previous.as_ref().and_then(|p| p.get(field)).cloned();
            if old.as_ref() == Some(value) {
                continue;
            }
            if let Some(old) = old.as_ref().and_then(value_key) {
                self.drop_field(&key, field, &old, position);
            }
            if let Some(new) = value_key(value) {
                let edges = self
                    .field_index
                    .entry((key.entity.clone(), field.clone(), new.clone()))
                    .or_default();
                edges.push(FieldEdge {
                    key: key.clone(),
                    added_at: position,
                    dropped_at: None,
                });
                self.open_fields
                    .insert((key.clone(), field.clone()), (new, edges.len() - 1));
            }
        }
    }

    fn drop_field(&mut self, key: &EntityKey, field: &str, value: &str, position: u64) {
        let slot = (key.clone(), field.to_string());
        let Some((open, i)) = self.open_fields.get(&slot).cloned() else {
            return;
        };
        if open != value {
            return;
        }
        if let Some(e) = self
            .field_index
            .get_mut(&(key.entity.clone(), field.to_string(), open))
            .and_then(|edges| edges.get_mut(i))
        {
            e.dropped_at = Some(position);
        }
        self.open_fields.remove(&slot);
    }

    fn index_removal(&mut self, key: &EntityKey, position: u64) {
        let last = self
            .versions
            .get(key)
            .and_then(|vs| vs.last())
            .map(|v| v.value.clone());
        if let Some(serde_json::Value::Object(fields)) = last {
            for (field, value) in fields {
                if let Some(v) = value_key(&value) {
                    self.drop_field(key, &field, &v, position);
                }
            }
        }
    }

    fn exists_at(&self, key: &EntityKey, position: u64) -> bool {
        self.versions
            .get(key)
            .is_some_and(|vs| vs.iter().any(|v| v.created_at <= position))
            && self.removed.get(key).is_none_or(|r| *r > position)
    }

    fn apply_refs(&mut self, changes: &[RefChange], position: u64) {
        for c in changes {
            let edges = self.edges.entry(c.target.clone()).or_default();
            if c.op == "add" {
                edges.push(IndexEdge {
                    source: c.source.clone(),
                    field: c.field.clone(),
                    added_at: position,
                    dropped_at: None,
                });
            } else if let Some(e) = edges
                .iter_mut()
                .find(|e| e.source == c.source && e.field == c.field && e.dropped_at.is_none())
            {
                e.dropped_at = Some(position);
            }
        }
    }
}

impl Backend for InMemoryBackend {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        Ok(self.genesis.clone())
    }

    fn head(&self) -> Result<Option<Head>, BackendError> {
        Ok(self.head.clone())
    }

    fn create(
        &mut self,
        genesis: &Genesis,
        head: &Head,
        seed: &[EntityVersion],
        seed_refs: &[RefChange],
    ) -> Result<(), BackendError> {
        // Build privately: fallible structural checks cannot expose a partially
        // initialized target. Semantic seed validation remains Core's obligation.
        let mut candidate = Self::new();
        candidate.genesis = Some(genesis.clone());
        candidate.head = Some(head.clone());
        for v in seed {
            candidate.index_version(v, 0);
            candidate
                .versions
                .entry(v.key())
                .or_default()
                .push(v.clone());
        }
        candidate.apply_refs(seed_refs, 0);
        // Generic opening supplies structural evidence only, never a validity
        // certificate. Reuse its authoritative history/content checks rather
        // than introducing a Backend implementation of Behavior validation.
        let candidate = crate::Store::open(candidate)
            .map_err(|e| BackendError(e.to_string()))?
            .into_backend();

        if let Some(original) = &self.genesis {
            if original != genesis {
                return Err(BackendError("conflicting Store creation identity".into()));
            }
            let existing =
                crate::Store::open(self.clone()).map_err(|e| BackendError(e.to_string()))?;
            // Compare the original mapping and reference relation, independently
            // of the current head/schema or whether seed identities were removed.
            for entity in genesis.entity_declarations.keys() {
                if self.keys_at(entity, 0)? != candidate.keys_at(entity, 0)? {
                    return Err(BackendError("original creation universe differs".into()));
                }
            }
            for version in seed {
                let key = version.key();
                if self.version_at(&key, 0)?.as_ref() != Some(version)
                    || self.version(&key, 1)?.as_ref() != Some(version)
                    || self.incoming_at(&key, 0)? != candidate.incoming_at(&key, 0)?
                {
                    return Err(BackendError("original creation product differs".into()));
                }
            }
            if existing
                .history_at(0)
                .map_err(|e| BackendError(e.to_string()))?
                .state_ref()
                != head.state_ref
            {
                return Err(BackendError(
                    "original creation state anchor differs".into(),
                ));
            }
            // No assignment on equivalent retry: all later revisions, removals,
            // migrations, indexes, head and history remain byte-for-byte intact.
            return Ok(());
        }
        // Exclusive access makes this the single logical publication point.
        // Candidate construction/clone cost is a reference-host implementation
        // choice and does not establish any physical durability property.
        *self = candidate;
        Ok(())
    }

    fn version_at(
        &self,
        key: &EntityKey,
        position: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        #[cfg(feature = "validation-work")]
        behavior_core::eval::work::note(|w| w.backend_versions += 1);
        Ok(self
            .versions
            .get(key)
            .and_then(|vs| vs.iter().rev().find(|v| v.created_at <= position))
            .cloned())
    }

    fn version(
        &self,
        key: &EntityKey,
        revision: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        Ok(self
            .versions
            .get(key)
            .and_then(|vs| vs.iter().find(|v| v.revision == revision))
            .cloned())
    }

    fn record(&self, position: u64) -> Result<Option<TransitionRecord>, BackendError> {
        #[cfg(feature = "validation-work")]
        behavior_core::eval::work::note(|w| w.backend_record_reads += 1);
        let Some(i) = position.checked_sub(1) else {
            return Ok(None);
        };
        Ok(usize::try_from(i)
            .ok()
            .and_then(|i| self.records.get(i))
            .cloned())
    }

    fn keys_at(&self, entity_type: &str, position: u64) -> Result<Vec<EntityKey>, BackendError> {
        #[cfg(feature = "validation-work")]
        behavior_core::eval::work::note(|w| {
            w.backend_enumerations += 1;
            w.backend_key_candidates += self.versions.len();
        });
        let keys: Vec<_> = self
            .versions
            .keys()
            .filter(|k| k.entity == entity_type && self.exists_at(k, position))
            .cloned()
            .collect();
        #[cfg(feature = "validation-work")]
        behavior_core::eval::work::note(|w| w.backend_members += keys.len());
        Ok(keys)
    }

    fn keys_by_field_at(
        &self,
        entity_type: &str,
        field: &str,
        value: &serde_json::Value,
        position: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        let Some(v) = value_key(value) else {
            return Ok(None);
        };
        let mut out: Vec<EntityKey> = self
            .field_index
            .get(&(entity_type.to_string(), field.to_string(), v))
            .into_iter()
            .flatten()
            .filter(|e| e.added_at <= position && e.dropped_at.is_none_or(|d| d > position))
            .map(|e| e.key.clone())
            .filter(|k| self.exists_at(k, position))
            .collect();
        out.sort();
        out.dedup();
        Ok(Some(out))
    }

    fn removed_at(&self, key: &EntityKey) -> Result<Option<u64>, BackendError> {
        Ok(self.removed.get(key).copied())
    }

    fn incoming_at(&self, target: &EntityKey, position: u64) -> Result<Vec<RefEdge>, BackendError> {
        let mut out: Vec<RefEdge> = self
            .edges
            .get(target)
            .into_iter()
            .flatten()
            .filter(|e| e.added_at <= position && e.dropped_at.is_none_or(|d| d > position))
            .map(|e| RefEdge {
                entity: e.source.entity.clone(),
                id: e.source.id.clone(),
                field: e.field.clone(),
            })
            .collect();
        out.sort();
        Ok(out)
    }

    fn commit(
        &mut self,
        expected_last_record: &str,
        versions: &[EntityVersion],
        removals: &[EntityKey],
        ref_changes: &[RefChange],
        record: &TransitionRecord,
        new_head: &Head,
    ) -> Result<CasOutcome, BackendError> {
        #[cfg(feature="validation-work")]
        let _profile_guard=behavior_core::eval::work::profile_scope("backend::commit");

        #[cfg(feature = "validation-work")]
        behavior_core::eval::work::note(|w| w.backend_commits += 1);
        let Some(head) = &self.head else {
            return Err(BackendError("store not created".into()));
        };
        if head.last_record != expected_last_record {
            return Ok(CasOutcome::HeadMoved);
        }
        // Validate the complete atomic argument product before any mutation.
        // The backend need not interpret Behavior; these are structural event,
        // chain and accumulator relations common to every semantic transition.
        let mut expected_versions = record.new_versions.clone();
        expected_versions.extend(record.created.clone());
        let expected_removals = record
            .removed
            .iter()
            .map(|r| EntityKey {
                entity: r.entity.clone(),
                id: r.id.clone(),
            })
            .collect::<Vec<_>>();
        let hash = record.hash().map_err(|e| BackendError(e.to_string()))?;
        let state = crate::muhash::Accumulator::from_hex(&new_head.acc_num, &new_head.acc_den)
            .and_then(|a| a.state_id())
            .map_err(|e| BackendError(e.to_string()))?;
        if head.state_ref.position.checked_add(1) != Some(record.position)
            || record.previous_record != expected_last_record
            || record.committed_on != head.state_ref
            || record.evaluated_against != record.committed_on
            || new_head.state_ref != record.result_state
            || new_head.last_record != hash
            || new_head.state_ref.state != state
            || versions != expected_versions
            || removals != expected_removals
            || ref_changes != record.ref_changes
        {
            return Err(BackendError(
                "atomic arguments differ from the canonical committed event/head".into(),
            ));
        }
        let expected_schema = if let Some(m) = record.migration.as_ref() {
            Some(crate::documents::SchemaRef {
                hash: m.target.clone(),
                declarations: m.target_declarations.clone(),
                since: record.position,
                migration_record: hash,
            })
        } else {
            head.schema.clone()
        };
        if new_head.schema != expected_schema {
            return Err(BackendError(
                "atomic schema head differs from committed event".into(),
            ));
        }
        // All-or-nothing: nothing below can fail.
        let position = new_head.state_ref.position;
        for v in versions {
            self.index_version(v, position);
            self.versions.entry(v.key()).or_default().push(v.clone());
        }
        for k in removals {
            self.index_removal(k, position);
            self.removed.entry(k.clone()).or_insert(position);
        }
        self.apply_refs(ref_changes, position);
        self.records.push(record.clone());
        self.head = Some(new_head.clone());
        Ok(CasOutcome::Applied)
    }
}
