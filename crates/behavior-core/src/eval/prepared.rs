//! Ephemeral evidence of an independently checked complete parent. No serialized
//! value, caller assertion, or record parser can construct this authority.
use super::*;
use std::sync::Arc;

/// Complete, normalized and checked state under the exact observable module.
#[derive(Debug)]
pub struct PreparedSnapshot {
    module: String,
    facts: Facts,
    epoch: Arc<()>,
}
/// Actual successful evaluation, not a producer's claim that evaluation succeeded.
#[derive(Clone, Debug)]
pub struct CheckedEvaluation {
    record: DecisionRecord,
    observed: Observed,
    request: Option<Json>,
    module: String,
    epoch: Arc<()>,
    child: Option<PreparedChild>,
}
/// A delta proved by ordinary Core execution against one private parent epoch.
#[derive(Clone, Debug)]
pub struct PreparedChild {
    parent: Arc<()>,
    next: Arc<()>,
    rows: BTreeMap<Key, Json>,
}
impl PreparedSnapshot {
    pub fn new(module: &Module, facts: &dyn EvaluationFacts) -> Result<Option<Self>, String> {
        let snapshot = validate_complete_snapshot(module, provider_snapshot(module, facts)?)?;
        Ok(Some(Self {
            module: crate::serialize::to_wire_json(module),
            facts: snapshot,
            epoch: Arc::new(()),
        }))
    }
    pub fn facts(&self) -> &Facts {
        &self.facts
    }
    pub(super) fn matches(&self, module: &Module) -> bool {
        self.module == crate::serialize::to_wire_json(module)
    }
    pub(super) fn validate_bindings(
        &self,
        module: &Module,
        params: &[Param],
        values: &Vals,
    ) -> Result<(), String> {
        // Validity of all unrelated rows is already established. Retain exactly
        // the existing bound-value consistency checks, in their original order.
        let mut bound = Facts::default();
        for entity in self.facts.universe.keys() {
            bound.universe.insert(entity.clone(), BTreeMap::new());
        }
        for p in params.iter().filter(|p| p.role() == ParamRole::State) {
            if let (Type::Entity(t), Some(Value::Entity(fields))) = (p.ty(), values.get(p.name()))
                && let Some(id) = fields.get("id").and_then(id_text)
                && let Some(raw) = self.facts.universe.get(t).and_then(|rows| rows.get(&id))
            {
                bound
                    .universe
                    .entry(t.clone())
                    .or_default()
                    .insert(id, raw.clone());
            }
        }
        check_query_snapshot_inner(module, &bound, params, values, None).map_err(|p| p.message)?;
        check_snapshot(module, &self.facts, &bound_entities(module, params, values))
            .map_err(|p| p.message)
    }
    pub fn evaluate(
        &self,
        module: &Module,
        request: &str,
        provider: &dyn EvaluationFacts,
    ) -> CheckedEvaluation {
        let parsed = if module.semantic_profile()
            == crate::semantic::types::SemanticProfile::CommandIntents
        {
            crate::canonical::decode_strict(request)
                .map_err(|e| <serde_json::Error as serde::de::Error>::custom(e.to_string()))
        } else {
            serde_json::from_str(request)
        };
        let mut child = None;
        let (record, observed) = evaluate_decoded_request(
            module,
            parsed,
            Some(provider),
            ActionExecution::Current,
            request,
            Some(self),
            Some(&mut child),
        );
        CheckedEvaluation {
            record,
            observed,
            request: serde_json::from_str(request).ok(),
            module: crate::serialize::to_wire_json(module),
            epoch: Arc::clone(&self.epoch),
            child,
        }
    }
    pub fn apply(&mut self, child: PreparedChild) -> bool {
        if !Arc::ptr_eq(&self.epoch, &child.parent) {
            return false;
        }
        for ((entity, id), value) in child.rows {
            self.facts
                .universe
                .entry(entity)
                .or_default()
                .insert(id, value);
        }
        self.epoch = child.next;
        true
    }
    pub(super) fn checked_child(&self, module: &Module, world: &World) -> Option<PreparedChild> {
        // Removal may invalidate untouched reference predicates. Its existing
        // reference path remains authoritative; no partial evidence is issued.
        if !world.removed.is_empty() {
            return None;
        }
        let mut rows = BTreeMap::new();
        for (key, param) in &world.bound {
            let value = world.s_prime.get(param)?;
            rows.insert(
                key.clone(),
                encode_param(module, &Type::Entity(key.0.clone()), value),
            );
        }
        for (key, value) in &world.created {
            rows.insert(
                key.clone(),
                encode_param(module, &Type::Entity(key.0.clone()), value),
            );
        }
        Some(PreparedChild {
            parent: Arc::clone(&self.epoch),
            next: Arc::new(()),
            rows,
        })
    }
}
impl CheckedEvaluation {
    pub fn record(&self) -> &DecisionRecord {
        &self.record
    }
    pub fn observed(&self) -> &Observed {
        &self.observed
    }
    pub fn child(&self) -> Option<PreparedChild> {
        self.child.clone()
    }
    pub(crate) fn matches(
        &self,
        module: &Module,
        request: &str,
        parent: &PreparedSnapshot,
    ) -> bool {
        Arc::ptr_eq(&self.epoch, &parent.epoch)
            && parent.matches(module)
            && self.module == parent.module
            && self
                .request
                .as_ref()
                .is_some_and(|r| serde_json::from_str::<Json>(request).ok().as_ref() == Some(r))
    }
}
