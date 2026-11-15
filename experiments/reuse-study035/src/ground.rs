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
use serde_json::{Value, json};
use std::time::Instant;
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
                self.point_scope = serde_json::from_value(provenance["point_work_scope"].clone())?;
                self.exact_history = Some(self.history()?);
                self.provenance = Some(provenance);
                self.status = Status::Established;
                Ok(())
            }
            Err(error) => {
                self.quarantine();
                Err(error)
            }
        }
    }
    pub fn history(&self) -> Result<Value> {
        Ok(self
            .parent
            .store
            .current_history()
            .map_err(library)?
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
        // No external writer can reach the privately owned Capture. This exact
        // confirmed receipt is common acquired knowledge; Core still checks its head.
        let expected = self
            .exact_history
            .clone()
            .ok_or(StudyError::Prerequisite("UnestablishedGround"))?;
        self.invoke_expected(&expected, request)
    }
    pub fn invoke_expected(&mut self, expected: &Value, request: &Value) -> Result<Value> {
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
                if !rows
                    .iter()
                    .any(|(entity, id)| entity == "Child" && id == child)
                {
                    rows.clear();
                    rows.push(("Child".to_string(), child.to_string()));
                }
                if let Some(owner) = self.views.as_ref().and_then(|v| v.owner(child)) {
                    rows.retain(|(entity, _)| entity != "Parent");
                    rows.push(("Parent".to_string(), owner.to_string()));
                }
            }
            self.parent.store.research035_allowed_rows(rows);
        }
        self.status = Status::Pending;
        let result = if self.use_views {
            self.view_step(request)
        } else {
            self.parent.store.research035_use_prepared(false);
            self.ordinary_step(request)
                .map(|v| (v, "actual_original_post_check"))
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
                    self.work.output_bytes += serde_json::to_vec(&result)?.len() as u64 + 1;
                }
                if result["original_property_outcomes"]["status"] != "Valid" {
                    // Preserve the actual original Core outcome, even when subsequent ground
                    // maintenance cannot establish authority. Never turn Applied into DENY.
                    self.quarantine();
                    return Ok(result);
                }
                self.exact_history = Some(history.clone());
                self.status = Status::Established;
                self.provenance = Some(
                    json!({"format":"core035.transition-ground.v1","history":history,"parent":expected,
     "origin":self.parent.origin.as_json(),"validity_method":method,"policy_set_hash":self.parent.analysis.policy_set_hash(),
     "native_correspondence":"conditional under named projection/encoder/host premises","direct_safety_record":"not_synthesized","product_adoption":"unactivated"}),
                );
                Ok(result)
            }
            Err(error) => {
                if self.parent.store.backend().commit_count() == self.parent.requests.len() + 1 {
                    self.parent.requests.push(request.clone());
                }
                self.quarantine();
                Err(error)
            }
        }
    }
    fn ordinary_step(&mut self, request: &Value) -> Result<Value> {
        let step =
            observation::execute_original(&mut self.parent.store, &self.parent.module, request)?;
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
        let views = Views::seed(&self.parent)?;
        if self.work.enabled {
            self.work.seed_rows += views.len() as u64;
        }
        self.views = Some(views);
        Ok(())
    }
    fn view_step(&mut self, request: &Value) -> Result<(Value, &'static str)> {
        if !eligibility::module(&self.parent) {
            self.parent.store.research035_use_prepared(false);
            if self.work.enabled {
                self.work.fallbacks += 1;
            }
            return self
                .ordinary_step(request)
                .map(|v| (v, "actual_original_post_check"));
        }
        let t = Instant::now();
        let history = self.parent.store.current_history().map_err(library)?;
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
        let selected = self
            .views
            .as_ref()
            .and_then(|v| eligibility::finish(&self.parent, v, &history, request));
        let Some(child) = selected else {
            self.parent.store.research035_use_prepared(false);
            if self.work.enabled {
                self.work.fallbacks += 1;
            }
            if let Some(view) = self.views.as_mut() {
                view.invalidate();
            }
            self.timings.frame_ns += timings::elapsed(frame);
            let result = self.ordinary_step(request)?;
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
        let step =
            observation::execute_original(&mut self.parent.store, &self.parent.module, request)?;
        self.timings.add(&step.timings);
        let point = Instant::now();
        let promoted = step.invocation.bundle.is_some()
            && self.parent.store.backend().last_call().is_some_and(|call| {
                self.views
                    .as_mut()
                    .is_some_and(|views| views.apply(delta, call, &step.after))
            });
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
                    .and_then(|h| serde_json::from_value(h.clone()).ok())
                    .is_some_and(|h| v.matches(&h))
            })
    }
    pub fn view_active_children(&self, parent: &str) -> Option<Value> {
        self.views.as_ref().and_then(|v| v.active_children(parent))
    }
    pub fn view_state(&self) -> Option<Value> {
        self.views.as_ref().map(Views::materialize)
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
        json!({"invalid_intervals":self.parent.store.research035_clocks()["invalid_intervals"],"semantic_ns":self.timings.semantic_ns(),"reestablish_ns":self.timings.reestablish_ns,"accounted_ns":self.timings.accounted_ns(),"exclusive":self.timings,"scope":"Exclusive duration buckets from the same operation, with nested raw invoke/commit totals separately named; required full checking remains included"})
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
            result["versions"] = json!({"canonical_walk_rows":walk,"materialized_clone_rows":clone,"confirmed_point_updates":update});
        }
        result["coarse_native_clocks"] = self.parent.store.research035_clocks();
        result
    }
    /// Independent original check after candidate intervals. It explicitly
    /// disables the research version shortcut before acquiring canonical data.
    pub fn audit_original(&mut self) -> Result<Value> {
        self.parent.store.research035_version_views(false);
        let history = self.parent.store.current_history().map_err(library)?;
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
        self.parent
            .store
            .research035_version_views(self.use_views && eligibility::module(&self.parent));
        let canonical = canonical.map_err(library)?;
        let state = state?;
        let versions_before = self.parent.store.research035_version_counts();
        let cached = self
            .parent
            .store
            .research035_versions(&self.parent.module, &history)
            .map_err(library)?;
        let versions_after = self.parent.store.research035_version_counts();
        let views_equal = self
            .views
            .as_ref()
            .map(|v| v.versions_equal(&canonical) && v.materialize() == state);
        Ok(
            json!({"format":"core035.independent-state-audit.v1","history":history.as_json(),"state":state,
   "original_safety_record":status.to_json(),"original_property_outcomes":{"status":status.status()},
   "maintained_views_equal_full_reconstruction":views_equal,"core_version_view_equal_full_reconstruction":cached==canonical,
   "version_cache_reused_without_canonical_row_walk":self.use_views&&versions_before.0==versions_after.0,
   "scope":"Actual original validation/export; performed after candidate intervals, not a candidate direct-report claim"}),
        )
    }
    pub fn provenance(&self) -> Option<&Value> {
        self.provenance.as_ref()
    }
}
