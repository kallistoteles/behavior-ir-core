//! Private proof-guided validation optimization. Full Core evaluation defines semantics.
use super::*;
mod candidate;
pub(super) mod dependency;
#[cfg(test)]
mod global_fixtures;
#[cfg(test)]
mod global_tests;
#[cfg(test)]
mod tests;

/// Stack-local evidence, bound to the exact parent and prospective committed child.
pub(super) struct Pending {
    parent: SnapshotIdentity,
    child: SnapshotIdentity,
    prepared: Option<behavior_core::eval::prepared::PreparedChild>,
}
impl<B: Backend> Store<B> {
    #[cfg(test)]
    pub(super) fn validate_incremental_child(
        &self,
        module: &Module,
        parent: &StateRef,
        schema: &SchemaRef,
        record: &TransitionRecord,
    ) -> R<Option<Pending>> {
        self.validate_incremental_child_at(module, parent, schema, record, None)
    }

    pub(super) fn validate_incremental_child_at(
        &self,
        module: &Module,
        parent: &StateRef,
        schema: &SchemaRef,
        record: &TransitionRecord,
        // Supplied only by commit after independent reproduction and its
        // required record hash. These are native results, never bundle claims.
        known_hashes: Option<(&str, &str)>,
    ) -> R<Option<Pending>> {
        // Unsupported modules receive no carry evidence. Preserve the original
        // early reference fallback before parsing/hashing or rereading a parent
        // whose validity cannot be promoted. The union retains 015 locality.
        if !dependency::local_module(module) && !dependency::supported_module(module) {
            return Ok(None);
        }
        // An archived or malformed marker cannot authorize a current-profile
        // cache entry. The immutable candidate was rederived at commit; retain
        // its exact record/language profile at this separate promotion boundary.
        let Some(bundle) = record.bundle.as_ref() else {
            return Ok(None);
        };
        let raw = &bundle.record;
        if raw["record_version"] != "0.8"
            || raw["validation_profile"] != CURRENT_VALIDATION_PROFILE
            || raw["behavior_version"] != module.behavior_version()
        {
            return Ok(None);
        }
        let command_module = module.semantic_profile()
            == behavior_core::semantic::types::SemanticProfile::CommandIntents;
        if command_module != raw.get("semantic_profile").is_some() {
            return Ok(None);
        }
        // Removals and migrations retain their ordinary reference boundaries.
        if !record.removed.is_empty() || record.migration.is_some() {
            return Ok(None);
        }
        if record.committed_on != *parent
            || record.evaluated_against != *parent
            || parent.position.checked_add(1) != Some(record.result_state.position)
        {
            return Err(invalid(
                "incremental candidate does not belong to the exact parent transition",
            ));
        }
        if let Some((parent_record, child_record)) = known_hashes {
            let cache = self.validation_cache()?;
            if let Some(cached) = cache.as_ref().filter(|cached| {
                let identity = &cached.identity;
                identity.history.format == "behavior.history_ref.v1"
                    && identity.history.store == self.store_id
                    && identity.history.position == parent.position
                    && identity.history.state == parent.state
                    && identity.history.record == parent_record
                    && identity.schema == *schema
                    && identity.validation_profile == CURRENT_VALIDATION_PROFILE
                    && identity.behavior == behavior_core::serialize::to_wire_json(module)
            }) && let Some(prepared) = cached
                .checked
                .as_ref()
                .filter(|checked| checked.record().as_json() == raw)
                .and_then(|checked| checked.child())
            {
                // Reproduction already parsed/checked this exact record at
                // this exact established parent. Repeating that complete parse,
                // parent-frame hashing and child-record hashing adds no premise.
                let mut child = cached.identity.clone();
                child.history.state = record.result_state.state.clone();
                child.history.position = record.result_state.position;
                child.history.record = child_record.to_string();
                return Ok(Some(Pending {
                    parent: cached.identity.clone(),
                    child,
                    prepared: Some(prepared),
                }));
            }
        }
        if behavior_core::record::DecisionRecord::from_json(&raw.to_string()).is_err() {
            return Ok(None);
        }
        let identity = self.snapshot_identity(module, parent, schema)?;
        let cache = self.validation_cache()?;
        let Some(cached) = cache.as_ref().filter(|c| c.identity == identity) else {
            return Ok(None);
        };
        let prepared = cached
            .checked
            .as_ref()
            .filter(|c| c.record().as_json() == raw)
            .and_then(|c| c.child());
        if let Some(prepared) = prepared {
            let mut child = identity.clone();
            child.history.state = record.result_state.state.clone();
            child.history.position = record.result_state.position;
            child.history.record = record.hash()?;
            return Ok(Some(Pending {
                parent: identity,
                child,
                prepared: Some(prepared),
            }));
        }
        if !dependency::local_module(module) {
            return Ok(None);
        }
        let candidate = candidate::Candidate::new(&cached.facts, record);
        #[cfg(test)]
        let outcome = if reference_enabled() {
            let changes: Vec<_> = candidate
                .changed
                .iter()
                .map(|(k, v)| (k.clone(), v.clone()))
                .collect();
            let (rows, facts) =
                tests::full_child(&self.backend, module, parent.position, &changes, &[]);
            note_full_child(rows.len(), candidate.changed.len());
            behavior_core::eval::check_behavior_snapshot(module, &rows, &facts)
        } else {
            note_candidate(candidate.changed.len());
            behavior_core::eval::check_behavior_snapshot(module, &candidate.rows(), &candidate)
        };
        #[cfg(not(test))]
        let outcome =
            behavior_core::eval::check_behavior_snapshot(module, &candidate.rows(), &candidate);
        outcome.map_err(|p| invalid(format!("STATE_INVALID: {}", p.join("; "))))?;
        let mut child = identity.clone();
        child.history.state = record.result_state.state.clone();
        child.history.position = record.result_state.position;
        child.history.record = record.hash()?;
        Ok(Some(Pending {
            parent: identity,
            child,
            prepared: None,
        }))
    }
    pub(super) fn carry_incremental_child(
        &mut self,
        pending: Option<Pending>,
        head: &Head,
        versions: &[EntityVersion],
        removals: &[EntityKey],
        references: &[RefChange],
    ) {
        let cache = self.validated.get_mut().unwrap_or_else(|p| p.into_inner());
        let Some(p) = pending else { return };
        if !removals.is_empty()
            || p.child.history.state != head.state_ref.state
            || p.child.history.position != head.state_ref.position
            || p.child.history.record != head.last_record
            || head.schema.as_ref().unwrap_or(&self.genesis_schema) != &p.child.schema
        {
            *cache = None;
            return;
        }
        let Some(cached) = cache.as_mut().filter(|c| c.identity == p.parent) else {
            *cache = None;
            return;
        };
        // Uncertain ownership discards optimization; do not clone the O(N) universe.
        let Some(facts) = Arc::get_mut(&mut cached.facts) else {
            *cache = None;
            return;
        };
        if let Some(pending) = p.prepared {
            let Some(prepared) = cached.prepared.as_mut().and_then(Arc::get_mut) else {
                *cache = None;
                return;
            };
            if !prepared.apply(pending) {
                *cache = None;
                return;
            }
        } else {
            cached.prepared = None;
        }
        cached.checked = None;
        for v in versions {
            facts.keys.insert(v.key());
            facts.values.insert(v.key(), v.value.clone());
        }
        for r in references {
            let edges = facts.incoming.entry(r.target.clone()).or_default();
            let edge = RefEdge {
                entity: r.source.entity.clone(),
                id: r.source.id.clone(),
                field: r.field.clone(),
            };
            if r.op == "add" {
                edges.push(edge);
                edges.sort();
                edges.dedup();
            } else {
                edges.retain(|e| e != &edge);
            }
            if edges.is_empty() {
                facts.incoming.remove(&r.target);
            }
        }
        cached.identity = p.child;
    }
}

#[cfg(test)]
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
struct Work {
    universe: usize,
    rows: usize,
    unchanged_rows: usize,
    full_parent: usize,
    full_child: usize,
}
#[cfg(test)]
thread_local! { static WORK: std::cell::Cell<Work> = const { std::cell::Cell::new(Work{universe:0,rows:0,unchanged_rows:0,full_parent:0,full_child:0}) }; }
#[cfg(test)]
fn work() -> Work {
    WORK.with(std::cell::Cell::get)
}
#[cfg(test)]
fn reset_work() {
    WORK.with(|c| c.set(Work::default()));
}
#[cfg(test)]
pub(super) fn note_full_parent(n: usize) {
    WORK.with(|c| {
        let mut w = c.get();
        w.universe += 1;
        w.rows += n;
        w.unchanged_rows += n;
        w.full_parent += 1;
        c.set(w);
    });
}
#[cfg(test)]
fn note_candidate(n: usize) {
    WORK.with(|c| {
        let mut w = c.get();
        w.rows += n;
        c.set(w);
    });
}

#[cfg(test)]
mod workload_tests;

#[cfg(test)]
thread_local! { static REFERENCE:std::cell::Cell<bool>=const {std::cell::Cell::new(false)}; }
#[cfg(test)]
pub(super) fn reference_enabled() -> bool {
    REFERENCE.with(std::cell::Cell::get)
}
#[cfg(test)]
fn with_reference<T>(enabled: bool, f: impl FnOnce() -> T) -> T {
    struct Restore(bool);
    impl Drop for Restore {
        fn drop(&mut self) {
            REFERENCE.with(|c| c.set(self.0));
        }
    }
    let _restore = Restore(REFERENCE.with(|c| c.replace(enabled)));
    f()
}
#[cfg(test)]
fn note_full_child(n: usize, changed: usize) {
    WORK.with(|c| {
        let mut w = c.get();
        w.universe += 1;
        w.rows += n;
        w.unchanged_rows += n.saturating_sub(changed);
        w.full_child += 1;
        c.set(w);
    });
}
