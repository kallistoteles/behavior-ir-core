//! Resulting-state overlay for feature-015 local rules only. Never enumerates parent rows.
//! Selected globals use Core-owned complete child evidence instead; these partial
//! rows must never be offered as a complete global-invariant universe.
use super::super::*;
pub(super) struct Candidate<'a> {
    pub(super) parent: &'a SeedFacts,
    pub(super) changed: BTreeMap<EntityKey, Json>,
}
impl<'a> Candidate<'a> {
    pub(super) fn new(parent: &'a SeedFacts, record: &TransitionRecord) -> Self {
        Self {
            parent,
            changed: record
                .new_versions
                .iter()
                .chain(&record.created)
                .map(|v| (v.key(), v.value.clone()))
                .collect(),
        }
    }
    fn value(&self, k: &EntityKey) -> Option<&Json> {
        self.changed.get(k).or_else(|| self.parent.values.get(k))
    }
    pub(super) fn rows(&self) -> BTreeMap<(String, String), Json> {
        self.changed
            .iter()
            .map(|(k, v)| ((k.entity.clone(), k.id.clone()), v.clone()))
            .collect()
    }
}
impl EvaluationFacts for Candidate<'_> {
    fn exists(&self, entity: &str, id: &str) -> Result<bool, FactError> {
        Ok(self.value(&key(entity, id)).is_some())
    }
    fn used(&self, _: &str, _: &str) -> Result<bool, FactError> {
        Err(FactError(
            "candidate lifetime facts require the committed history provider".into(),
        ))
    }
    fn incoming(&self, _: &str, _: &str) -> Result<Vec<RefEdge>, FactError> {
        Err(FactError(
            "nonlocal candidate dependency requires full validation".into(),
        ))
    }
    fn entity(&self, entity: &str, id: &str) -> Result<Json, FactError> {
        self.value(&key(entity, id))
            .cloned()
            .ok_or_else(|| FactError(format!("{entity}#{id} is not in the state")))
    }
    fn field(&self, entity: &str, id: &str, field: &str) -> Result<Json, FactError> {
        self.value(&key(entity, id))
            .and_then(|v| v.get(field))
            .cloned()
            .ok_or_else(|| FactError(format!("{entity}#{id}.{field} is not in the seed")))
    }
}
