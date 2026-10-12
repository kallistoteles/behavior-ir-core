//! Private creation evidence. A validated candidate has no authority until the
//! complete original publication is checked against canonical storage/history.
use super::*;

pub(super) struct ValidatedInitialization {
    pub(super) genesis: Genesis,
    pub(super) head: Head,
    pub(super) versions: Vec<EntityVersion>,
    pub(super) refs: Vec<RefChange>,
    pub(super) facts: SeedFacts,
}

pub(super) struct PublishedInitialization {
    pub(super) head: Head,
}

pub(super) fn incomplete(message: impl Into<String>) -> StoreError {
    StoreError::Contract {
        code: "STORE_INCOMPLETE",
        message: message.into(),
    }
}

impl ValidatedInitialization {
    pub(super) fn validate(module: &Module, genesis: Genesis) -> R<Self> {
        let bad = |m: String| StoreError::GenesisInvalid(m);
        if ![TAG_GENESIS, crate::documents::TAG_GENESIS_V2].contains(&genesis.format.as_str()) {
            return Err(bad(format!("genesis format `{}`", genesis.format)));
        }
        genesis.evidence_policy.validate()?;
        // The genesis schema is exactly the module's store schema (feature 009, FR-005).
        let genesis_schema = genesis.schema()?;
        let module_schema = schema(module);
        if genesis_schema.hash != module_schema.hash {
            return Err(schema_mismatch(&genesis_schema, &module_schema));
        }
        let mut seen = BTreeSet::new();
        let mut versions = Vec::new();
        let mut acc = Accumulator::empty();
        for s in &genesis.seed {
            let decl = genesis
                .entity_declarations
                .get(&s.entity)
                .ok_or_else(|| bad(format!("no declaration for seed entity `{}`", s.entity)))?;
            let value = decode_entity(module, &s.entity, &s.value)
                .map_err(|p| bad(format!("seed `{}`: {}", s.entity, p.join("; "))))?;
            if genesis.format == crate::documents::TAG_GENESIS_V2 && value != s.value {
                return Err(bad("v2 seed is not the canonical typed product".into()));
            }
            let id = id_of(&value)?;
            let key = EntityKey {
                entity: s.entity.clone(),
                id: id.clone(),
            };
            if !seen.insert(key.clone()) {
                return Err(bad(format!("{key} appears twice in the seed")));
            }
            let mut v = EntityVersion {
                content_hash: String::new(),
                entity: s.entity.clone(),
                id,
                revision: 1,
                created_at: 0,
                value,
            };
            v.content_hash = v.content(decl).hash()?;
            acc.insert(&v.content_hash)?;
            versions.push(v);
        }
        // Seed references must point at seed entities; the initial index is derived from the seed.
        let mut seed_refs = Vec::new();
        for v in &versions {
            for (field, target) in references_of(module, &v.entity, &v.value) {
                if !seen.contains(&target) {
                    return Err(bad(format!(
                        "{}.{field} refers to {target}, which is not a seed entity",
                        v.key()
                    )));
                }
                seed_refs.push(RefChange {
                    target,
                    source: v.key(),
                    field,
                    op: "add".into(),
                });
            }
        }
        seed_refs.sort();
        // Complete behavior validity, with facts answered by the seed itself.
        let facts = SeedFacts::new(&versions, &seen, &seed_refs);
        let values = versions
            .iter()
            .map(|v| ((v.entity.clone(), v.id.clone()), v.value.clone()))
            .collect();
        behavior_core::eval::check_behavior_snapshot(module, &values, &facts)
            .map_err(|p| bad(p.join("; ")))?;
        let state = acc.state_id()?;
        let (n, d) = acc.normalize()?.to_hex();
        let head = Head {
            state_ref: StateRef { state, position: 0 },
            acc_num: n,
            acc_den: d,
            last_record: genesis.hash()?,
            schema: None,
        };
        Ok(Self {
            genesis,
            head,
            versions,
            refs: seed_refs,
            facts,
        })
    }

    // Module-derived exact historical data is stronger than generic open's
    // structural evidence, particularly for legacy normalization and Ref edges.
    pub(super) fn verify<B: Backend>(
        &self,
        store: &Store<B>,
        published: &PublishedInitialization,
    ) -> R<()> {
        if *store.genesis != self.genesis || store.store_id != self.genesis.hash()? {
            return Err(incomplete(
                "published original genesis differs from requested creation",
            ));
        }
        for expected in &self.versions {
            let actual = store
                .backend
                .version_at(&expected.key(), 0)
                .map_err(backend_err)?;
            if actual.as_ref() != Some(expected) {
                return Err(incomplete("published original typed version differs"));
            }
        }
        for target in &self.versions {
            let mut actual = store
                .backend
                .incoming_at(&target.key(), 0)
                .map_err(backend_err)?;
            let mut expected: Vec<_> = self
                .refs
                .iter()
                .filter(|r| r.target == target.key())
                .map(|r| RefEdge {
                    entity: r.source.entity.clone(),
                    id: r.source.id.clone(),
                    field: r.field.clone(),
                })
                .collect();
            actual.sort();
            expected.sort();
            if actual != expected {
                return Err(incomplete("published original reference relation differs"));
            }
        }
        if store.history_with_head(0, &published.head)?.state_ref() != self.head.state_ref {
            return Err(incomplete(
                "original history anchor differs from validated seed",
            ));
        }
        if published.head.state_ref.position == 0 && published.head != self.head {
            return Err(incomplete(
                "initial head differs from the canonical initialization",
            ));
        }
        Ok(())
    }
}

impl<B: Backend> Store<B> {
    // Immutable Some-genesis is the publication witness. Capture only one head;
    // later commits cannot invalidate fixed-position reads of its history.
    pub(super) fn inspect_publication(&self) -> R<PublishedInitialization> {
        let head = self
            .backend
            .head()
            .map_err(backend_err)?
            .ok_or_else(|| incomplete("published genesis has no complete head"))?;
        let mut expected_keys = BTreeSet::new();
        let mut acc = Accumulator::empty();
        for seed in &self.genesis.seed {
            let k = key(
                &seed.entity,
                &id_of(&seed.value).map_err(|_| incomplete("seed has no identity"))?,
            );
            if !expected_keys.insert(k.clone()) {
                return Err(incomplete("original seed identity is duplicated"));
            }
            let declaration = self
                .genesis
                .entity_declarations
                .get(&seed.entity)
                .ok_or_else(|| incomplete("original seed lacks a declaration"))?;
            let v = self
                .backend
                .version_at(&k, 0)
                .map_err(backend_err)?
                .ok_or_else(|| incomplete("original seed version is missing"))?;
            let by_revision = self.backend.version(&k, 1).map_err(backend_err)?;
            if v.key() != k
                || v.revision != 1
                || v.created_at != 0
                || by_revision.as_ref() != Some(&v)
                || id_of(&v.value).map_err(|_| incomplete("original version has no identity"))?
                    != k.id
                || v.content(declaration).hash()? != v.content_hash
                || (self.genesis.format == crate::documents::TAG_GENESIS_V2
                    && v.value != seed.value)
                || !self.backend.used_at(&k, 0).map_err(backend_err)?
                || self
                    .backend
                    .removed_at(&k)
                    .map_err(backend_err)?
                    .is_some_and(|p| p == 0)
            {
                return Err(incomplete(
                    "original version, content identity or lifetime is inconsistent",
                ));
            }
            acc.insert(&v.content_hash)?;
        }
        for entity in self.genesis.entity_declarations.keys() {
            let keys = self.backend.keys_at(entity, 0).map_err(backend_err)?;
            let actual: BTreeSet<_> = keys.iter().cloned().collect();
            let expected: BTreeSet<_> = expected_keys
                .iter()
                .filter(|k| k.entity == *entity)
                .cloned()
                .collect();
            if keys.len() != actual.len() || actual != expected {
                return Err(incomplete("original entity universe differs from the seed"));
            }
        }
        let original = self.history_with_head(0, &head)?;
        if original.state != acc.state_id()?
            || (head.state_ref.position == 0 && head.schema.is_some())
        {
            return Err(incomplete("original state/head anchor differs"));
        }
        let head_acc = Accumulator::from_hex(&head.acc_num, &head.acc_den)
            .map_err(|_| incomplete("head accumulator encoding is invalid"))?;
        if head_acc
            .state_id()
            .map_err(|_| incomplete("head accumulator is invalid"))?
            != head.state_ref.state
        {
            return Err(incomplete("head accumulator differs from captured StateId"));
        }
        self.history_with_head(head.state_ref.position, &head)?;
        if head.state_ref.position > 0 {
            let endpoint = self
                .backend
                .record(head.state_ref.position)
                .map_err(backend_err)?
                .ok_or_else(|| incomplete("captured history endpoint is missing"))?;
            let parent = if head.state_ref.position == 1 {
                original.state_ref()
            } else {
                self.history_with_head(head.state_ref.position - 1, &head)?
                    .state_ref()
            };
            if endpoint.committed_on != parent
                || endpoint.evaluated_against != endpoint.committed_on
            {
                return Err(incomplete(
                    "captured endpoint parent state differs from canonical history",
                ));
            }
        }
        self.inspect_creation_schema(&head)?;
        Ok(PublishedInitialization { head })
    }

    fn inspect_creation_schema(&self, head: &Head) -> R<()> {
        let mut current = self.head_schema(head)?;
        if head.schema.is_some() && current.since == 0 {
            return Err(incomplete("a migration schema cannot begin at genesis"));
        }
        if current.since > head.state_ref.position {
            return Err(incomplete("schema is beyond captured history"));
        }
        if head.state_ref.position > 0 {
            let endpoint = self
                .backend
                .record(head.state_ref.position)
                .map_err(backend_err)?
                .ok_or_else(|| incomplete("captured history endpoint is missing"))?;
            if let Some(m) = &endpoint.migration
                && (current.since != endpoint.position
                    || current.hash != m.target
                    || current.declarations != m.target_declarations)
            {
                return Err(incomplete(
                    "captured migration endpoint has a different schema",
                ));
            }
        }
        // Walk only the existing schema chain, with strictly decreasing positions.
        // This is not full-prefix semantic replay; immutable history is a Backend premise.
        while current.since > 0 {
            if StoreSchema::of(current.declarations.clone()).hash != current.hash {
                return Err(incomplete(
                    "schema declarations do not reproduce its identity",
                ));
            }
            let event = self
                .backend
                .record(current.since)
                .map_err(backend_err)?
                .ok_or_else(|| incomplete("schema introduction event is missing"))?;
            event.check_kind()?;
            let m = event
                .migration
                .as_ref()
                .filter(|_| event.is_migration())
                .ok_or_else(|| incomplete("schema introduction is not a migration"))?;
            if event.position != current.since
                || event.result_state.position != current.since
                || event.committed_on.position.checked_add(1) != Some(current.since)
                || event.hash()? != current.migration_record
                || m.target != current.hash
                || m.target_declarations != current.declarations
            {
                return Err(incomplete("schema introduction identity differs"));
            }
            let previous = self.previous_schema(&current)?;
            if previous.since >= current.since || previous.hash != m.source {
                return Err(incomplete(
                    "schema history does not lead to the original schema",
                ));
            }
            current = previous;
        }
        if current != self.genesis_schema {
            return Err(incomplete(
                "schema history root differs from original creation",
            ));
        }
        Ok(())
    }
}
