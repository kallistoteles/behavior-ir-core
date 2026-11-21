// Function items are unsupported by the pinned extractor; keep explicit closures.
#![allow(clippy::redundant_closure)]
//! Opaque process-local ownership. No Deserialize/Clone or checked-flag constructor.
pub use crate::capture::Fault;
use crate::timings::{self, Timings};
use crate::{
    acquire,
    diagnostics::Diagnostics,
    eligibility,
    error::{Result, StudyError, library},
    observation,
    reference::{self, Parent},
    safety_check::CheckedProgram,
    views::Views,
};
use serde_json::Value;
use std::time::Instant;
// Keep the loop's read-only loans local to the predicate boundary.
fn scope_has_child(rows: &[(String, String)], child: &str) -> bool {
    let mut found = false;
    let mut index = 0;
    while index < rows.len() {
        let (entity, id) = &rows[index];
        // Explicit str equality avoids the generic &&String/&&str operator.
        if <str as PartialEq<str>>::eq(entity.as_str(), "Child")
            && <str as PartialEq<str>>::eq(id.as_str(), child)
        {
            found = true;
            break;
        }
        index += 1;
    }
    found
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Status {
    SuppliedUnverified,
    Checking,
    Established,
    Pending,
    Quarantined,
}
pub struct Ground {
    parent: Parent,
    status: Status,
    exact_history: Option<Value>,
    provenance: Option<Value>,
    retain: bool,
    use_views: bool,
    views: Option<Views>,
    work: Diagnostics,
    point_scope: Option<Vec<(String, String)>>,
    timings: Timings,
}
impl Ground {
    pub fn supplied(parent: Parent) -> Self {
        Self {
            parent,
            status: Status::SuppliedUnverified,
            exact_history: None,
            provenance: None,
            retain: false,
            use_views: false,
            views: None,
            work: Diagnostics::default(),
            point_scope: None,
            timings: Timings::default(),
        }
    }
    pub fn status(&self) -> Status {
        self.status
    }
    pub fn check(&mut self, program: &CheckedProgram, expected: &Value) -> Result<()> {
        self.status = Status::Checking;
        self.exact_history = None;
        self.provenance = None;
        self.views = None;
        match acquire::verify(&self.parent, program, expected) {
            Ok(provenance) => {
                self.point_scope =
                    crate::serialization::scope_from_value(provenance["point_work_scope"].clone())?;
                self.exact_history = Some(self.history()?);
                self.provenance = Some(provenance);
                self.status = Status::Established;
                Ok(())
            }
            Err(failure) => {
                self.quarantine();
                Err(failure)
            }
        }
    }
    pub fn history(&self) -> Result<Value> {
        Ok(self
            .parent
            .store
            .current_history()
            .map_err(|failure| library(failure))?
            .as_json())
    }
    pub fn selected_retained(&self) -> bool {
        self.status == Status::Established && self.parent.store.research035_has_selected()
    }
    pub fn select_retention(&mut self, retain: bool) -> Result<()> {
        if self.status != Status::Established {
            return Err(StudyError::Prerequisite("UnestablishedGround"));
        }
        self.retain = retain;
        if !retain {
            self.parent.store.research035_drop_selected();
        }
        Ok(())
    }
    pub fn invoke(&mut self, request: &Value) -> Result<Value> {
        self.invoke_with_metadata(request, &crate::fixtures::InvocationMetadata::legacy())
    }
    pub fn invoke_with_metadata(
        &mut self,
        request: &Value,
        metadata: &crate::fixtures::InvocationMetadata,
    ) -> Result<Value> {
        // No external writer can reach the privately owned Capture. This exact
        // confirmed receipt is common acquired knowledge; Core still checks its head.
        let expected = self
            .exact_history
            .clone()
            .ok_or(StudyError::Prerequisite("UnestablishedGround"))?;
        self.invoke_expected_with_metadata(&expected, request, metadata)
    }
    pub fn invoke_expected(&mut self, expected: &Value, request: &Value) -> Result<Value> {
        self.invoke_expected_with_metadata(
            expected,
            request,
            &crate::fixtures::InvocationMetadata::legacy(),
        )
    }
    pub fn invoke_expected_with_metadata(
        &mut self,
        expected: &Value,
        request: &Value,
        metadata: &crate::fixtures::InvocationMetadata,
    ) -> Result<Value> {
        if self.status != Status::Established {
            return Err(StudyError::Prerequisite("UnestablishedGround"));
        }
        if self.exact_history.as_ref() != Some(expected) {
            self.quarantine();
            return Err(StudyError::Prerequisite("StaleGround"));
        }
        self.timings = Timings::default();
        if !self.retain {
            let t = Instant::now();
            self.parent.store.research035_drop_selected();
            self.timings.reestablish_ns += timings::elapsed(t);
        }
        if self.work.enabled {
            let mut rows = self.point_scope.clone().unwrap_or_default();
            if let Some(child) = request["bindings"]["c"]["id"].as_str() {
                let child_in_scope = scope_has_child(&rows, child);
                if !child_in_scope {
                    rows.clear();
                    rows.push(("Child".to_string(), child.to_string()));
                }
                let owner = match &self.views {
                    Some(view) => view.owner(child).map(|owner| owner.to_string()),
                    None => None,
                };
                if let Some(owner) = owner {
                    rows.retain(|(entity, _)| entity != "Parent");
                    rows.push(("Parent".to_string(), owner));
                }
            }
            self.parent.store.research035_allowed_rows(rows);
        }
        self.status = Status::Pending;
        let result = if self.use_views {
            self.view_step(request, metadata)
        } else {
            self.parent.store.research035_use_prepared(false);
            self.original_step_marked(request, metadata)
        };
        match result {
            Ok((result, method)) => {
                let history = &result["after_history"];
                let expected_position = expected["position"].as_u64().and_then(|p| {
                    if result["bundle"].is_null() {
                        Some(p)
                    } else {
                        p.checked_add(1)
                    }
                });
                if expected_position != history["position"].as_u64() {
                    self.quarantine();
                    return Err(StudyError::Prerequisite("UnconfirmedExactChild"));
                }
                if !result["bundle"].is_null() {
                    self.parent.requests.push(request.clone());
                }
                if self.work.enabled {
                    self.work.output_bytes +=
                        crate::serialization::value_bytes(&result)?.len() as u64 + 1;
                }
                if result["original_property_outcomes"]["status"] != "Valid" {
                    // Preserve the actual original Core outcome, even when subsequent ground
                    // maintenance cannot establish authority. Never turn Applied into DENY.
                    self.quarantine();
                    return Ok(result);
                }
                self.exact_history = Some(history.clone());
                self.status = Status::Established;
                self.provenance = Some(crate::native_object! {
                 "format" => crate::native_text!("core035.transition-ground.v1"),
                 "history" => history.clone(), "parent" => expected.clone(),
                 "origin" => self.parent.origin.as_json(), "validity_method" => crate::native_text!(method),
                 "policy_set_hash" => crate::native_text!(self.parent.analysis.policy_set_hash()),
                 "native_correspondence" => crate::native_text!("conditional under named projection/encoder/host premises"),
                 "direct_safety_record" => crate::native_text!("not_synthesized"),
                 "product_adoption" => crate::native_text!("unactivated")
                });
                Ok(result)
            }
            Err(failure) => {
                if self.parent.store.backend().commit_count() == self.parent.requests.len() + 1 {
                    self.parent.requests.push(request.clone());
                }
                self.quarantine();
                Err(failure)
            }
        }
    }
    fn ordinary_step(
        &mut self,
        request: &Value,
        metadata: &crate::fixtures::InvocationMetadata,
    ) -> Result<Value> {
        let step = observation::execute_original_with_metadata(
            &mut self.parent.store,
            &self.parent.module,
            request,
            metadata,
        )?;
        self.timings.add(&step.timings);
        let t = Instant::now();
        let status = behavior_models::safety::snapshot::validate_store_snapshot(
            &self.parent.module,
            &self.parent.analysis,
            &self.parent.store,
            &step.after,
        );
        self.timings.property_ns += timings::elapsed(t);
        let t = Instant::now();
        let state = reference::state_facts(&self.parent.store, &self.parent.module)?;
        self.timings.canonical_output_identity_ns += timings::elapsed(t);
        let t = Instant::now();
        let result = observation::complete_original(step, state, status.status());
        self.timings.reconstruction_ns += timings::elapsed(t);
        Ok(result)
    }
    fn rebuild_views(&mut self) -> Result<()> {
        let seeded_views = Views::seed(&self.parent)?;
        if self.work.enabled {
            self.work.seed_rows += seeded_views.len() as u64;
        }
        self.views = Some(seeded_views);
        Ok(())
    }
    fn original_step_marked(
        &mut self,
        request: &Value,
        metadata: &crate::fixtures::InvocationMetadata,
    ) -> Result<(Value, &'static str)> {
        match self.ordinary_step(request, metadata) {
            Ok(value) => Ok((value, "actual_original_post_check")),
            Err(failure) => Err(failure),
        }
    }
    fn view_step(
        &mut self,
        request: &Value,
        metadata: &crate::fixtures::InvocationMetadata,
    ) -> Result<(Value, &'static str)> {
        if metadata.evidence.is_some()
            || metadata.at.is_some()
            || !eligibility::module(&self.parent)
        {
            self.parent.store.research035_use_prepared(false);
            if self.work.enabled {
                self.work.fallbacks += 1;
            }
            return self.original_step_marked(request, metadata);
        }
        let t = Instant::now();
        let history = self
            .parent
            .store
            .current_history()
            .map_err(|failure| library(failure))?;
        self.timings.canonical_output_identity_ns += timings::elapsed(t);
        if !self.retain {
            let reestablish = Instant::now();
            // Resident V data has no reusable authorization in G0. Reestablish the
            // actual parent and complete view relation inside the operation boundary.
            let status = behavior_models::safety::snapshot::validate_store_snapshot(
                &self.parent.module,
                &self.parent.analysis,
                &self.parent.store,
                &history,
            );
            if status.status() != "Valid" {
                return Err(StudyError::Prerequisite("ViewParentReestablishmentFailed"));
            }
            self.rebuild_views()?;
            self.timings.reestablish_ns += timings::elapsed(reestablish);
        } else if !self.views.as_ref().is_some_and(|v| v.matches(&history)) {
            let t = Instant::now();
            self.rebuild_views()?;
            self.timings.reestablish_ns += timings::elapsed(t);
        }
        let frame = Instant::now();
        let selected = match &self.views {
            Some(view) => eligibility::finish(&self.parent, view, &history, request),
            None => None,
        };
        let Some(child) = selected else {
            self.parent.store.research035_use_prepared(false);
            if self.work.enabled {
                self.work.fallbacks += 1;
            }
            if let Some(view) = self.views.as_mut() {
                view.invalidate();
            }
            self.timings.frame_ns += timings::elapsed(frame);
            let result = self.ordinary_step(request, metadata)?;
            if result["original_property_outcomes"]["status"] == "Valid" {
                let t = Instant::now();
                self.rebuild_views()?;
                self.timings.reestablish_ns += timings::elapsed(t);
            }
            return Ok((result, "actual_original_post_check"));
        };
        let delta = self
            .views
            .as_ref()
            .and_then(|v| v.stage(&child))
            .ok_or(StudyError::Prerequisite("MissingCheckedViewDelta"))?;
        self.timings.frame_ns += timings::elapsed(frame);
        self.parent.store.research035_use_prepared(true);
        let step = observation::execute_original_with_metadata(
            &mut self.parent.store,
            &self.parent.module,
            request,
            metadata,
        )?;
        self.timings.add(&step.timings);
        let point = Instant::now();
        // Keep the same short-circuit/confirmation order while exposing
        // mutable ownership directly rather than through FnOnce callbacks.
        let promoted = if step.invocation.bundle.is_some() {
            match self.parent.store.backend().last_call() {
                Some(call) => match self.views.as_mut() {
                    Some(candidate_view) => candidate_view.apply(delta, call, &step.after),
                    None => false,
                },
                None => false,
            }
        } else {
            false
        };
        self.timings.affected_maintenance_ns += timings::elapsed(point);
        if promoted {
            if self.work.enabled {
                self.work.points += 1;
            }
            let t = Instant::now();
            let state = self
                .views
                .as_ref()
                .ok_or(StudyError::Prerequisite("MissingPromotedView"))?
                .materialize();
            let result = observation::complete_original(step, state, "Valid");
            self.timings.reconstruction_ns += timings::elapsed(t);
            return Ok((result, "restricted_finish_preservation"));
        }
        // An unsupported/promotional result does not undo the Core operation.
        if let Some(view) = self.views.as_mut() {
            view.invalidate();
        }
        let t = Instant::now();
        let status = behavior_models::safety::snapshot::validate_store_snapshot(
            &self.parent.module,
            &self.parent.analysis,
            &self.parent.store,
            &step.after,
        );
        self.timings.property_ns += timings::elapsed(t);
        let t = Instant::now();
        let state = reference::state_facts(&self.parent.store, &self.parent.module)?;
        let result = observation::complete_original(step, state, status.status());
        self.timings.reconstruction_ns += timings::elapsed(t);
        if status.status() == "Valid" {
            let t = Instant::now();
            self.rebuild_views()?;
            self.timings.reestablish_ns += timings::elapsed(t);
        }
        Ok((result, "actual_original_post_check_after_view_invalidation"))
    }
    pub fn into_unverified(mut self) -> Parent {
        self.quarantine();
        self.parent
    }
    pub fn quarantine(&mut self) {
        self.status = Status::Quarantined;
        self.exact_history = None;
        self.provenance = None;
        if let Some(view) = self.views.as_mut() {
            view.invalidate();
        }
        self.parent.store.research035_use_prepared(false);
        self.parent.store.research035_drop_selected();
    }
    pub fn revoke_writer(&mut self) {
        self.quarantine();
    }
    pub fn inject_fault(&mut self, fault: Fault) {
        self.parent.store.backend_mut().inject_fault(fault);
        if let Some(view) = self.views.as_mut() {
            view.invalidate();
        }
    }
    pub fn set_work(&mut self, enabled: bool) {
        self.parent.store.research035_set_work(enabled);
        self.work = Diagnostics {
            enabled,
            prepared_start: self.parent.store.research035_prepared_calls(),
            ..Diagnostics::default()
        };
    }
    pub fn work_counts(&self) -> (u64, u64) {
        self.parent.store.research035_work_counts()
    }
    pub fn enable_views(&mut self, enabled: bool) -> Result<()> {
        if self.status != Status::Established {
            return Err(StudyError::Prerequisite("UnestablishedViewSeed"));
        }
        self.use_views = enabled;
        self.parent
            .store
            .research035_version_views(enabled && eligibility::module(&self.parent));
        if enabled && eligibility::module(&self.parent) {
            self.rebuild_views()?;
        } else {
            self.views = None;
            self.parent.store.research035_use_prepared(false);
        }
        Ok(())
    }
    pub fn views_active(&self) -> bool {
        self.use_views
            && self.status == Status::Established
            && self.views.as_ref().is_some_and(|v| {
                self.exact_history
                    .as_ref()
                    .and_then(|h| crate::serialization::history_from_value(h.clone()).ok())
                    .is_some_and(|h| v.matches(&h))
            })
    }
    pub fn view_active_children(&self, parent: &str) -> Option<Value> {
        self.views.as_ref().and_then(|v| v.active_children(parent))
    }
    pub fn view_state(&self) -> Option<Value> {
        self.views.as_ref().map(|view| view.materialize())
    }
    pub fn corrupt_views_for_control(&mut self) {
        if let Some(view) = self.views.as_mut() {
            view.invalidate();
        }
    }
    pub fn supply_views(&mut self, _raw: &Value) -> Result<()> {
        self.corrupt_views_for_control();
        Ok(())
    }
    pub fn operation_timings(&self) -> Value {
        crate::native_object! {
         "invalid_intervals" => self.parent.store.research035_clocks()["invalid_intervals"].clone(),
         "semantic_ns" => Value::from(self.timings.semantic_ns()),
         "reestablish_ns" => Value::from(self.timings.reestablish_ns),
         "accounted_ns" => Value::from(self.timings.accounted_ns()),
         "exclusive" => crate::serialization::timings_value(&self.timings),
         "scope" => crate::native_text!("Exclusive duration buckets from the same operation, with nested raw invoke/commit totals separately named; required full checking remains included")
        }
    }
    pub fn diagnostics(&self) -> Value {
        let mut result = self
            .work
            .snapshot(self.parent.store.research035_prepared_calls());
        if self.work.enabled {
            let native = self.parent.store.research035_native_work();
            if native["available"] == true {
                let counts = &native["counts"];
                if native["allowed_rows"]
                    .as_array()
                    .is_some_and(|a| !a.is_empty())
                {
                    result["semantic_unrelated_rows"] = counts["unrelated_row_checks"].clone();
                    if let Some(o) = result.as_object_mut() {
                        o.remove("semantic_unrelated_rows_reason");
                    }
                }
                result["old_prefix_decision_visits"] = counts["prefix_decision_visits"].clone();
                if let Some(o) = result.as_object_mut() {
                    o.remove("old_prefix_decision_visits_reason");
                }
            }
            result["native"] = native;
            let (walk, clone, update) = self.parent.store.research035_version_counts();
            result["versions"] = crate::native_object! {
             "canonical_walk_rows" => Value::from(walk), "materialized_clone_rows" => Value::from(clone),
             "confirmed_point_updates" => Value::from(update)
            };
        }
        result["coarse_native_clocks"] = self.parent.store.research035_clocks();
        result
    }
    /// Independent original check after candidate intervals. It explicitly
    /// disables the research version shortcut before acquiring canonical data.
    pub fn audit_original(&mut self) -> Result<Value> {
        self.parent.store.research035_version_views(false);
        let history = self
            .parent
            .store
            .current_history()
            .map_err(|failure| library(failure))?;
        let canonical = self
            .parent
            .store
            .research035_versions(&self.parent.module, &history);
        let status = behavior_models::safety::snapshot::validate_store_snapshot(
            &self.parent.module,
            &self.parent.analysis,
            &self.parent.store,
            &history,
        );
        let state = reference::state_facts(&self.parent.store, &self.parent.module);
        let reuse_versions = self.use_views && eligibility::module(&self.parent);
        self.parent.store.research035_version_views(reuse_versions);
        let canonical = canonical.map_err(|failure| library(failure))?;
        let state = state?;
        let versions_before = self.parent.store.research035_version_counts();
        let cached = self
            .parent
            .store
            .research035_versions(&self.parent.module, &history)
            .map_err(|failure| library(failure))?;
        let versions_after = self.parent.store.research035_version_counts();
        let views_equal = self
            .views
            .as_ref()
            .map(|v| v.versions_equal(&canonical) && v.materialize() == state);
        Ok(crate::native_object! {
         "format" => crate::native_text!("core035.independent-state-audit.v1"),
         "history" => history.as_json(), "state" => state,
         "original_safety_record" => status.to_json(),
         "original_property_outcomes" => crate::native_object! {"status" => crate::native_text!(status.status())},
         "maintained_views_equal_full_reconstruction" => views_equal.map(|value| Value::Bool(value)).unwrap_or(Value::Null),
         "core_version_view_equal_full_reconstruction" => Value::Bool(cached == canonical),
         "version_cache_reused_without_canonical_row_walk" => Value::Bool(self.use_views && versions_before.0 == versions_after.0),
         "scope" => crate::native_text!("Actual original validation/export; performed after candidate intervals, not a candidate direct-report claim")
        })
    }
    pub fn provenance(&self) -> Option<&Value> {
        self.provenance.as_ref()
    }
}
