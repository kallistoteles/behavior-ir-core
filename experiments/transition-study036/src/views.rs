//! Owned exact views seeded from original checked versions. No deserialization
//! or public checked-flag constructor. Stage clones one row, never the maps.
use crate::{
    capture::CommitCall,
    error::{Result, StudyError, library},
    reference::Parent,
};
use behavior_engine::store::documents::{EntityKey, EntityVersion, HistoryRef};
use serde_json::{Map, Value};
use std::collections::{BTreeMap, BTreeSet};
#[derive(Clone, Debug, PartialEq, Eq)]
struct ChildRow {
    owner: String,
    phase: String,
}
pub(crate) struct Views {
    history: HistoryRef,
    versions: BTreeMap<EntityKey, EntityVersion>,
    parents: BTreeMap<String, String>,
    children: BTreeMap<String, ChildRow>,
    active: BTreeMap<String, BTreeSet<String>>,
    trusted: bool,
}
pub(crate) struct FinishDelta {
    history: HistoryRef,
    child: String,
    old: ChildRow,
}
#[derive(Clone, Copy)]
enum SeedFailure {
    Field,
    Identity,
    ParentPhase,
    ChildPhase,
    UnknownEntity,
    MissingOwner,
    Lifecycle,
}
type SeedResult<T> = std::result::Result<T, SeedFailure>;
impl SeedFailure {
    fn into_study(self) -> StudyError {
        let message = match self {
            Self::Field => "TypedViewField",
            Self::Identity => "ViewIdentity",
            Self::ParentPhase => "ViewParentPhase",
            Self::ChildPhase => "ViewChildPhase",
            Self::UnknownEntity => "UnknownViewEntity",
            Self::MissingOwner => "ViewMissingOwner",
            Self::Lifecycle => "ViewLifecycleViolation",
        };
        StudyError::Prerequisite(message)
    }
}
fn text(v: &Value, key: &str) -> SeedResult<String> {
    match v[key].as_str() {
        Some(value) => Ok(value.to_owned()),
        None => Err(SeedFailure::Field),
    }
}
fn seed_row(
    key: &EntityKey,
    version: &EntityVersion,
    parents: &mut BTreeMap<String, String>,
    children: &mut BTreeMap<String, ChildRow>,
    active: &mut BTreeMap<String, BTreeSet<String>>,
) -> SeedResult<()> {
    if key.id != text(&version.value, "id")? || key.entity != version.entity {
        return Err(SeedFailure::Identity);
    }
    match key.entity.as_str() {
        "Parent" => {
            let phase = text(&version.value, "phase")?;
            if !["Open", "Gone", "Abandoned"].contains(&phase.as_str()) {
                return Err(SeedFailure::ParentPhase);
            }
            parents.insert(key.id.clone(), phase);
            // Called in EntityKey order from initially empty maps; Parent keys
            // are unique and child rows do not populate active buckets.
            active.insert(key.id.clone(), BTreeSet::new());
        }
        "Child" => {
            let row = ChildRow {
                owner: text(&version.value, "owner")?,
                phase: text(&version.value, "phase")?,
            };
            if !["Active", "Terminal"].contains(&row.phase.as_str()) {
                return Err(SeedFailure::ChildPhase);
            }
            children.insert(key.id.clone(), row);
        }
        _ => return Err(SeedFailure::UnknownEntity),
    }
    Ok(())
}
fn seed_rows(
    versions: &BTreeMap<EntityKey, EntityVersion>,
    parents: &mut BTreeMap<String, String>,
    children: &mut BTreeMap<String, ChildRow>,
    active: &mut BTreeMap<String, BTreeSet<String>>,
) -> SeedResult<()> {
    for (key, version) in versions.clone() {
        seed_row(&key, &version, parents, children, active)?;
    }
    Ok(())
}
fn seed_relation(
    id: &str,
    row: &ChildRow,
    parents: &BTreeMap<String, String>,
    active: &mut BTreeMap<String, BTreeSet<String>>,
) -> SeedResult<()> {
    let phase = parents.get(&row.owner).ok_or(SeedFailure::MissingOwner)?;
    if row.phase == "Active" {
        if phase != "Open" {
            return Err(SeedFailure::Lifecycle);
        }
        if let Some(bucket) = active.get_mut(&row.owner) {
            bucket.insert(id.to_owned());
        } else {
            let mut bucket = BTreeSet::new();
            bucket.insert(id.to_owned());
            active.insert(row.owner.clone(), bucket);
        }
    }
    Ok(())
}
fn seed_relations(
    parents: &BTreeMap<String, String>,
    children: &BTreeMap<String, ChildRow>,
    active: &mut BTreeMap<String, BTreeSet<String>>,
) -> SeedResult<()> {
    for (id, row) in children.clone() {
        seed_relation(&id, &row, parents, active)?;
    }
    Ok(())
}

fn child_entity_value(id: &str, owner: &str, phase: &str) -> Value {
    let mut fields = Map::new();
    fields.insert("id".to_owned(), Value::String(id.to_owned()));
    fields.insert("owner".to_owned(), Value::String(owner.to_owned()));
    fields.insert("phase".to_owned(), Value::String(phase.to_owned()));
    Value::Object(fields)
}

impl Views {
    pub(crate) fn seed(parent: &Parent) -> Result<Self> {
        let history = match parent.store.current_history() {
            Ok(value) => value,
            Err(failure) => return Err(library(failure)),
        };
        let versions = match parent.store.research035_versions(&parent.module, &history) {
            Ok(value) => value,
            Err(failure) => return Err(library(failure)),
        };
        let mut view = Self {
            history,
            versions,
            parents: BTreeMap::new(),
            children: BTreeMap::new(),
            active: BTreeMap::new(),
            trusted: false,
        };
        if let Err(error) = seed_rows(
            &view.versions,
            &mut view.parents,
            &mut view.children,
            &mut view.active,
        ) {
            return Err(error.into_study());
        }
        if let Err(error) = seed_relations(&view.parents, &view.children, &mut view.active) {
            return Err(error.into_study());
        }
        view.trusted = true;
        Ok(view)
    }
    pub(crate) fn matches(&self, history: &HistoryRef) -> bool {
        self.trusted && self.history == *history
    }
    pub(crate) fn invalidate(&mut self) {
        self.trusted = false;
    }
    pub(crate) fn active_children(&self, parent: &str) -> Option<Value> {
        let ids = self.active.get(parent)?;
        let mut values = Vec::new();
        for id in ids {
            values.push(Value::String(id.clone()));
        }
        Some(Value::Array(values))
    }
    pub(crate) fn versions_equal(&self, canonical: &BTreeMap<EntityKey, EntityVersion>) -> bool {
        self.trusted && self.versions == *canonical
    }
    pub(crate) fn owner(&self, child: &str) -> Option<&str> {
        match self.children.get(child) {
            Some(row) => Some(row.owner.as_str()),
            None => None,
        }
    }
    pub(crate) fn len(&self) -> usize {
        self.versions.len()
    }
    pub(crate) fn materialize(&self) -> Value {
        let mut parents = Map::new();
        for (id, phase) in &self.parents {
            parents.insert(id.clone(), Value::String(phase.clone()));
        }
        let mut children = Map::new();
        for (id, row) in &self.children {
            let mut fields = Map::new();
            fields.insert("phase".to_owned(), Value::String(row.phase.clone()));
            fields.insert("owner".to_owned(), Value::String(row.owner.clone()));
            children.insert(id.clone(), Value::Object(fields));
        }
        let mut state = Map::new();
        state.insert("parents".to_owned(), Value::Object(parents));
        state.insert("children".to_owned(), Value::Object(children));
        Value::Object(state)
    }
    pub(crate) fn stage(&self, child: &str) -> Option<FinishDelta> {
        if !self.trusted || self.history.position == u64::MAX {
            return None;
        }
        let old = self.children.get(child)?.clone();
        let parent = self.parents.get(&old.owner)?;
        if old.phase == "Active" && parent != "Open" {
            return None;
        }
        let indexed = self.active.get(&old.owner)?.contains(child);
        if indexed != (old.phase == "Active") {
            return None;
        }
        Some(FinishDelta {
            history: self.history.clone(),
            child: child.to_owned(),
            old,
        })
    }
    /// Called only after actual Core Applied, with the actual captured arguments.
    /// A false result invalidates optimization, never changes that Core outcome.
    pub(crate) fn apply(
        &mut self,
        delta: FinishDelta,
        call: &CommitCall,
        after: &HistoryRef,
    ) -> bool {
        let key = EntityKey {
            entity: "Child".into(),
            id: delta.child.clone(),
        };
        let old_version = match self.versions.get(&key) {
            Some(v) => v,
            None => return false,
        };
        if !self.matches(&delta.history)
            || after.position != delta.history.position.checked_add(1).unwrap_or(0)
            || after.store != delta.history.store
            || call.expected_last_record != delta.history.record
            || call.new_head.last_record != after.record
            || call.new_head.state_ref.position != after.position
            || call.new_head.state_ref.state != after.state
            || !call.removals.is_empty()
            || !call.ref_changes.is_empty()
            || !call.record.created.is_empty()
            || !call.record.removed.is_empty()
        {
            return false;
        }
        if delta.old.phase == "Terminal" {
            if !call.versions.is_empty() {
                return false;
            }
        } else {
            if call.versions.len() != 1 {
                return false;
            }
            let version = &call.versions[0];
            if version.key() != key
                || version.value != child_entity_value(&delta.child, &delta.old.owner, "Terminal")
                || Some(version.revision) != old_version.revision.checked_add(1)
                || version.created_at != after.position
            {
                return false;
            }
            self.versions.insert(key, version.clone());
        }
        let Some(row) = self.children.get_mut(&delta.child) else {
            return false;
        };
        if *row != delta.old {
            return false;
        }
        row.phase = "Terminal".into();
        if let Some(bucket) = self.active.get_mut(&row.owner) {
            bucket.remove(&delta.child);
        } else {
            return false;
        }
        self.history = after.clone();
        true
    }
}

#[cfg(test)]
mod extraction_refinement_tests {
    use super::*;
    use crate::{error::LibraryResult, observation, reference};
    use serde_json::json;

    #[test]
    fn views_match_original_seed_changed_and_unchanged_finish() -> Result<()> {
        let mut parent = reference::parent("growth-D1")?;
        let mut views = Views::seed(&parent)?;
        observation::compare(
            &views.materialize(),
            &reference::state_facts(&parent.store, &parent.module)?,
        )?;
        for _ in 0..2 {
            let delta = views
                .stage("c0000")
                .ok_or(StudyError::Prerequisite("MissingTestDelta"))?;
            let expected = reference::step(
                &mut parent.store,
                &parent.module,
                &parent.analysis,
                &reference::request("finish"),
            )?;
            let after = parent.store.current_history().map_library()?;
            let call = parent
                .store
                .backend()
                .last_call()
                .ok_or(StudyError::Prerequisite("MissingTestCommit"))?;
            assert!(views.apply(delta, call, &after));
            observation::compare(&views.materialize(), &expected["post_state"])?;
            assert!(
                views.versions_equal(
                    &parent
                        .store
                        .research035_versions(&parent.module, &after)
                        .map_library()?
                )
            );
            assert_eq!(views.active_children("p0000"), Some(json!([])));
        }
        Ok(())
    }
}
