//! Store supplies immutable historical truth; Core interprets replay evidence.

use super::*;
use behavior_core::invocation::{ReplayEvidenceAnswer, ReplayEvidenceRequest};

impl<B: Backend> Store<B> {
    /// Run after schema binding and any existing branch-specific prevalidation.
    /// Equal state content alone cannot establish the canonical history position.
    pub(super) fn verify_replay_history(&self, at: &StateRef) -> R<()> {
        let history = self.history_at(at.position)?;
        if history.state_ref() != *at {
            return Err(invalid("replay history does not match state reference"));
        }
        Ok(())
    }

    // Typed decoding and content identity are necessary for a captured value;
    // entity constraints/full-state validity belong to reached evaluation paths.
    fn replay_entity_value(
        &self,
        module: &Module,
        schema: &SchemaRef,
        at: &StateRef,
        key: &EntityKey,
    ) -> R<Option<Json>> {
        let Some(version) = self
            .backend
            .version_at(key, at.position)
            .map_err(backend_err)?
        else {
            return Ok(None);
        };
        if self
            .backend
            .removed_at(key)
            .map_err(backend_err)?
            .is_some_and(|position| position <= at.position)
        {
            return Ok(None);
        }
        let declaration = schema
            .declarations
            .get(&key.entity)
            .ok_or_else(|| invalid("replay entity has no historical declaration"))?;
        let canonical = decode_entity(module, &key.entity, &version.value)
            .map_err(|problems| invalid(problems.join("; ")))?;
        if version.key() != *key
            || id_of(&canonical)? != key.id
            || canonical != version.value
            || version.revision == 0
            || version.created_at > at.position
        {
            return Err(invalid(
                "replay entity value/identity/revision is inconsistent",
            ));
        }
        if version.content(declaration).hash()? != version.content_hash {
            return Err(invalid("replay entity content hash differs"));
        }
        Ok(Some(canonical))
    }

    fn replay_entity_universe(
        &self,
        module: &Module,
        schema: &SchemaRef,
        at: &StateRef,
        entity: &str,
    ) -> R<BTreeMap<String, Json>> {
        if !schema.declarations.contains_key(entity) {
            return Err(invalid("replay universe has no historical declaration"));
        }
        let keys: BTreeSet<_> = self
            .backend
            .keys_at(entity, at.position)
            .map_err(backend_err)?
            .into_iter()
            .collect();
        let mut values = BTreeMap::new();
        for key in keys {
            if key.entity != entity {
                return Err(invalid("replay universe has a differently typed key"));
            }
            let value = self
                .replay_entity_value(module, schema, at, &key)?
                .ok_or_else(|| invalid("replay universe member has no surviving version"))?;
            values.insert(key.id, value);
        }
        Ok(values)
    }

    /// Answer Core-selected claims at an already anchored history coordinate.
    /// These per-call materializations neither complete the original Snapshot
    /// nor populate a validity cache. Evaluated body facts keep their callbacks.
    pub(super) fn replay_evidence_answers(
        &self,
        module: &Module,
        schema: &SchemaRef,
        at: &StateRef,
        requests: &[ReplayEvidenceRequest],
    ) -> R<BTreeMap<ReplayEvidenceRequest, ReplayEvidenceAnswer>> {
        let mut answers = BTreeMap::new();
        let mut universes = BTreeMap::<String, BTreeMap<String, Json>>::new();
        let mut incoming = None::<BTreeMap<EntityKey, BTreeSet<RefEdge>>>;
        for request in requests {
            let answer = match request {
                ReplayEvidenceRequest::Entity { identity } => {
                    ReplayEvidenceAnswer::Entity(self.replay_entity_value(
                        module,
                        schema,
                        at,
                        &key(&identity.entity, &identity.id),
                    )?)
                }
                ReplayEvidenceRequest::Existence { identity } => ReplayEvidenceAnswer::Boolean(
                    exists_at(
                        &self.backend,
                        &key(&identity.entity, &identity.id),
                        at.position,
                    )
                    .map_err(backend_err)?,
                ),
                ReplayEvidenceRequest::IdentityUse { identity } => ReplayEvidenceAnswer::Boolean(
                    self.backend
                        .used_at(&key(&identity.entity, &identity.id), at.position)
                        .map_err(backend_err)?,
                ),
                ReplayEvidenceRequest::Universe { entity } => {
                    if !universes.contains_key(entity) {
                        universes.insert(
                            entity.clone(),
                            self.replay_entity_universe(module, schema, at, entity)?,
                        );
                    }
                    ReplayEvidenceAnswer::Universe(universes[entity].clone())
                }
                ReplayEvidenceRequest::Incoming { identity } => {
                    if incoming.is_none() {
                        let mut edges = BTreeMap::<EntityKey, BTreeSet<RefEdge>>::new();
                        for entity in schema.declarations.keys() {
                            if !universes.contains_key(entity) {
                                universes.insert(
                                    entity.clone(),
                                    self.replay_entity_universe(module, schema, at, entity)?,
                                );
                            }
                            for (id, value) in &universes[entity] {
                                for (field, target) in references_of(module, entity, value) {
                                    edges.entry(target).or_default().insert(RefEdge {
                                        entity: entity.clone(),
                                        id: id.clone(),
                                        field,
                                    });
                                }
                            }
                        }
                        incoming = Some(edges);
                    }
                    ReplayEvidenceAnswer::Incoming(
                        incoming
                            .as_ref()
                            .and_then(|edges| edges.get(&key(&identity.entity, &identity.id)))
                            .map(|edges| edges.iter().cloned().collect())
                            .unwrap_or_default(),
                    )
                }
            };
            answers.insert(request.clone(), answer);
        }
        Ok(answers)
    }
}
