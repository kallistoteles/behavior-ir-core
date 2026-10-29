//! Exact disposable views. Valid means anchored maintained meaning, not authorization.
use crate::types::*;
use serde::{Deserialize, Serialize};
use std::collections::{BTreeMap, BTreeSet};
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Views {
    pub behavior: String,
    pub schema: String,
    pub profile: String,
    pub anchor: HistoryRef,
    pub count: usize,
    pub members: BTreeSet<Key>,
    pub used: BTreeSet<Key>,
    pub incoming: BTreeMap<String, BTreeSet<Key>>,
    pub queries: BTreeMap<i64, BTreeSet<Key>>,
    pub valid: bool,
}
impl Views {
    pub fn initialize(state: &OperationalState) -> Result<Self> {
        state.history.validate()?;
        let mut members = BTreeSet::new();
        let mut incoming = BTreeMap::<String, BTreeSet<Key>>::new();
        for (key, value) in &state.live {
            if !state.used.contains(key) {
                return Err(StudyError::Integrity(
                    "live identity missing from lifetime inventory".into(),
                ));
            }
            match value {
                EntityValue::E { x, owner, .. } => {
                    if key.entity != "E" || *x <= 0 {
                        return Err(StudyError::Integrity(
                            "invalid typed positive source row".into(),
                        ));
                    }
                    members.insert(key.clone());
                    if let Some(parent) = owner {
                        if !matches!(
                            state.live.get(&Key::new("Parent", parent)),
                            Some(EntityValue::Parent { .. })
                        ) {
                            return Err(StudyError::Integrity(
                                "incomplete reference target".into(),
                            ));
                        }
                        incoming
                            .entry(parent.clone())
                            .or_default()
                            .insert(key.clone());
                    }
                }
                EntityValue::Parent { .. } => {
                    if key.entity != "Parent" {
                        return Err(StudyError::Integrity("wrong typed parent key".into()));
                    }
                }
            }
        }
        Ok(Self {
            behavior: state.behavior.clone(),
            schema: state.schema.clone(),
            profile: state.profile.clone(),
            anchor: state.history.clone(),
            count: members.len(),
            members,
            used: state.used.clone(),
            incoming,
            queries: BTreeMap::new(),
            valid: true,
        })
    }
    fn anchored(&self, state: &OperationalState) -> bool {
        self.valid
            && self.behavior == state.behavior
            && self.schema == state.schema
            && self.profile == state.profile
            && self.anchor == state.history
    }
    pub fn matches(&self, state: &OperationalState) -> bool {
        let Ok(mut expected) = Self::initialize(state) else {
            return false;
        };
        for threshold in self.queries.keys() {
            let Ok(members) = expected.query(state, *threshold) else {
                return false;
            };
            expected
                .queries
                .insert(*threshold, members.into_iter().collect());
        }
        self == &expected
    }
    pub fn query(&mut self, state: &OperationalState, threshold: i64) -> Result<Vec<Key>> {
        if !self.anchored(state) {
            return Err(StudyError::Integrity(
                "view is not valid at this exact subject/history/context".into(),
            ));
        }
        let members = self.queries.entry(threshold).or_insert_with(|| {
            state
                .live
                .iter()
                .filter_map(|(key, value)| match value {
                    EntityValue::E { x, .. } if *x < threshold => Some(key.clone()),
                    _ => None,
                })
                .collect()
        });
        Ok(members.iter().cloned().collect())
    }
    /// Conservative research acceptance path: check J against complete captured
    /// states before and after maintenance. This adds O(N) work and is measured;
    /// it is not represented as a production incremental-validation speedup.
    pub fn advance(&mut self, observed: &ReferenceObservation) -> Result<()> {
        if !self.matches(&observed.before) {
            self.valid = false;
            return Err(StudyError::Integrity(
                "reuse premise J is incomplete or corrupt".into(),
            ));
        }
        let mut proposed = self.clone();
        self.valid = false;
        proposed.advance_delta(observed)?;
        if !proposed.matches(&observed.after) {
            return Err(StudyError::Integrity(
                "delta did not preserve complete maintained meaning J".into(),
            ));
        }
        *self = proposed;
        Ok(())
    }
    fn advance_delta(&mut self, observed: &ReferenceObservation) -> Result<()> {
        if !self.anchored(&observed.before) {
            self.valid = false;
            return Err(StudyError::Integrity(
                "maintenance source anchor differs".into(),
            ));
        }
        if observed.outcome != SemanticOutcome::Allow {
            if observed.before != observed.after {
                self.valid = false;
                return Err(StudyError::InvalidWitness(
                    "refused/error attempt changed operational state".into(),
                ));
            }
            return Ok(());
        }
        let event = observed.committed_record.as_ref().ok_or_else(|| {
            StudyError::Integrity("allowed view update lacks committed delta".into())
        })?;
        let changed: BTreeSet<_> = event
            .new_versions
            .iter()
            .chain(&event.created)
            .map(|v| Key::new(&v.entity, &v.id))
            .chain(event.removed.iter().map(|v| Key::new(&v.entity, &v.id)))
            .collect();
        for key in changed {
            let old = observed.before.live.get(&key);
            let next = observed.after.live.get(&key);
            if let Some(EntityValue::E {
                owner: Some(parent),
                ..
            }) = old
                && let Some(edges) = self.incoming.get_mut(parent)
            {
                edges.remove(&key);
                if edges.is_empty() {
                    self.incoming.remove(parent);
                }
            }
            self.members.remove(&key);
            if let Some(EntityValue::E { owner, .. }) = next {
                self.members.insert(key.clone());
                if let Some(parent) = owner {
                    self.incoming
                        .entry(parent.clone())
                        .or_default()
                        .insert(key.clone());
                }
            }
            for (threshold, members) in &mut self.queries {
                members.remove(&key);
                if matches!(next,Some(EntityValue::E{x,..}) if x<threshold) {
                    members.insert(key.clone());
                }
            }
        }
        for row in &event.created {
            self.used.insert(Key::new(&row.entity, &row.id));
        }
        self.count = self.members.len();
        self.anchor = observed.after.history.clone();
        if observed.before.behavior != observed.after.behavior
            || observed.before.schema != observed.after.schema
            || observed.before.profile != observed.after.profile
        {
            self.valid = false;
            return Err(StudyError::Unsupported(
                "module/schema/profile switch requires a new checked anchor".into(),
            ));
        }
        Ok(())
    }
}
