//! Fixed-role group execution. Metadata never imports a checked capability.
use crate::{
    error::{Result, StudyError, library},
    fixtures,
    ground::Ground,
    io, observation, reference, safety_check, timings,
};
use behavior_models::safety::evidence::UnverifiedSafetyBundle;
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::{
    path::{Component, Path},
    time::Instant,
};
fn referenced(root: &Path, r: &Value) -> Result<Value> {
    let name = io::text(r, "path")?;
    let rel = Path::new(name);
    if rel.components().any(|c| !matches!(c, Component::Normal(_))) {
        return Err(StudyError::InvalidInput("PreparedPathEscape".into()));
    }
    let path = root.join(rel);
    if !path.canonicalize()?.starts_with(root.canonicalize()?) {
        return Err(StudyError::InvalidInput("PreparedPathEscape".into()));
    }
    let bytes = io::read_bytes(&path, crate::protocol::DOCUMENT_BOUND)?;
    if r["bytes"].as_u64() != Some(bytes.len() as u64)
        || r["sha256"] != format!("{:x}", Sha256::digest(&bytes))
    {
        return Err(StudyError::InvalidInput("PreparedBytesDiffer".into()));
    }
    crate::protocol::parse_json(&bytes, crate::protocol::DOCUMENT_BOUND)
        .map_err(|e| StudyError::InvalidInput(e.to_string()))
}
pub fn execute(retain: bool, views: bool, args: &[String]) -> Result<()> {
    if args.len() != 7
        || args[0] != "run-group"
        || args[1] != "--prepared"
        || args[3] != "--case"
        || args[5] != "--out"
    {
        return Err(StudyError::InvalidInput(
            "Usage: run-group --prepared PATH --case ID --out NEW_DIRECTORY".into(),
        ));
    }
    let prepared_path = Path::new(&args[2]);
    let prepared = io::read(prepared_path)?;
    if prepared["format"] != "core035.prepared.v1"
        || prepared.as_object().is_none_or(|o| {
            o.len() != 6
                || [
                    "format",
                    "source_context",
                    "input_manifest",
                    "workers",
                    "cases",
                    "bundle",
                ]
                .iter()
                .any(|k| !o.contains_key(*k))
        })
    {
        return Err(StudyError::InvalidInput("PreparedFields".into()));
    }
    let case = &args[4];
    let (population, history_length) = reference::dimensions(case)?;
    let root = prepared_path
        .parent()
        .ok_or(StudyError::InvalidInput("PreparedParent".into()))?;
    let expected = referenced(root, &prepared["cases"][case])?;
    if expected["case_id"] != *case || expected["format"] != "core035.reference-case.v1" {
        return Err(StudyError::InvalidInput("PreparedCase".into()));
    }
    if expected["N"].as_u64() != Some(population as u64)
        || expected["H"].as_u64() != Some(history_length)
        || expected["D"] != 1
    {
        return Err(StudyError::InvalidInput("PreparedDimensions".into()));
    }
    let context = io::text(&prepared, "source_context")?;
    if context.is_empty() || context.len() > crate::protocol::ID_BOUND {
        return Err(StudyError::InvalidInput("PreparedContextBound".into()));
    }
    let raw_bundle = referenced(root, &prepared["bundle"])?;
    let out = Path::new(&args[6]);
    std::fs::create_dir(out)?;
    let treatment = match (retain, views) {
        (false, false) => "R",
        (true, false) => "G",
        (false, true) => "V",
        (true, true) => "GV",
    };
    let m = fixtures::module(false, false)?;
    let a = fixtures::analysis(&m, false)?;
    let started = Instant::now();
    let bundle = UnverifiedSafetyBundle::from_json(&raw_bundle).map_err(library)?;
    let (record, program) = safety_check::recheck(&m, &a, &bundle, &out.join("program-check"))?;
    let program_ns = timings::elapsed(started);
    io::write(&out.join("program-assessment.json"), &record)?;
    let program = program.ok_or(StudyError::Prerequisite("ProgramNotRechecked"))?;
    let mut observations = vec![];
    for (slot, mode) in [
        ("t1", "timing"),
        ("t2", "timing"),
        ("t3", "timing"),
        ("w1", "work"),
    ] {
        let acquisition = Instant::now();
        let sample = out.join(slot);
        std::fs::create_dir(&sample)?;
        behavior_engine::store::Store::<crate::capture::Capture>::research035_diagnostics_enabled(
            mode == "work",
        );
        let mut ground = Ground::supplied(reference::parent(case)?);
        ground.check(&program, &expected)?;
        ground.enable_views(views)?;
        ground.set_work(mode == "work");
        let acquisition_ns = timings::elapsed(acquisition);
        let baseline = ground.work_counts();
        let cycle = Instant::now();
        let primary = Instant::now();
        let discard = Instant::now();
        ground.select_retention(retain)?;
        let discard_ns = timings::elapsed(discard);
        let execution = Instant::now();
        let actual = ground.invoke(&expected["request"])?;
        if actual["after_history"] != expected["expected"]["after_history"] {
            return Err(StudyError::Prerequisite("UnconfirmedExactChild"));
        }
        let execution_ns = timings::elapsed(execution);
        io::write(&sample.join("primary.json"), &actual)?;
        let complete_ns = timings::elapsed(primary);
        let primary_phases = charge_outer_maintenance(ground.operation_timings(), execution_ns)?;
        let primary_counts = if mode == "work" {
            let mut d = ground.diagnostics();
            d["selected_full_snapshot_passes"] = json!(ground.work_counts().0 - baseline.0);
            d
        } else {
            Value::Null
        };
        let drain = Instant::now();
        let drain_discard = Instant::now();
        ground.select_retention(retain)?;
        let drain_discard_ns = timings::elapsed(drain_discard);
        let drain_execution = Instant::now();
        let continuation = ground.invoke(&expected["request"])?;
        if continuation["after_history"] != expected["drain_expected"]["after_history"] {
            return Err(StudyError::Prerequisite("UnconfirmedExactChild"));
        }
        let drain_execution_ns = timings::elapsed(drain_execution);
        io::write(&sample.join("drain.json"), &continuation)?;
        let drain_ns = timings::elapsed(drain);
        let cycle_ns = timings::elapsed(cycle);
        let drain_phases =
            charge_outer_maintenance(ground.operation_timings(), drain_execution_ns)?;
        let semantic_ns = primary_phases["semantic_ns"]
            .as_u64()
            .ok_or(StudyError::Prerequisite("MissingSemanticClock"))?
            + discard_ns;
        let reestablish_ns = primary_phases["reestablish_ns"]
            .as_u64()
            .ok_or(StudyError::Prerequisite("MissingReestablishmentClock"))?
            + discard_ns;
        if primary_phases["accounted_ns"]
            .as_u64()
            .is_none_or(|n| n + discard_ns > complete_ns)
        {
            return Err(StudyError::Prerequisite("OverlappingPhaseAccounting"));
        }
        let timing = json!({"complete_ns":complete_ns,"semantic_ns":semantic_ns,"reestablish_ns":reestablish_ns,"drain_ns":drain_ns,"cycle_ns":cycle_ns,"primary_phases":primary_phases,"drain_phases":drain_phases,"initial_discard_ns":discard_ns,"drain_discard_ns":drain_discard_ns,"execution_ns":execution_ns,"drain_execution_ns":drain_execution_ns});
        io::write(&sample.join("timings.json"), &timing)?;
        let checking = Instant::now();
        observation::compare(&actual, &expected["expected"])?;
        observation::compare(&continuation, &expected["drain_expected"])?;
        let final_counts = if mode == "work" {
            let mut d = ground.diagnostics();
            d["selected_full_snapshot_passes"] = json!(ground.work_counts().0 - baseline.0);
            d
        } else {
            Value::Null
        };
        let audit = ground.audit_original()?;
        if audit["original_property_outcomes"]["status"] != "Valid"
            || audit["core_version_view_equal_full_reconstruction"] != true
            || (views && audit["maintained_views_equal_full_reconstruction"] != true)
        {
            return Err(StudyError::Prerequisite("IndependentOriginalAuditMismatch"));
        }
        io::write(&sample.join("audit.json"), &audit)?;
        let audit_ns = timings::elapsed(checking);
        let mut row = json!({"format":"core035.observation.v1","sample_id":slot,"case_id":case,"mode":mode,"treatment":treatment,"parent":expected["parent"].to_string(),"source_context":prepared["source_context"],"operational":"completed","semantic":"equal","mathematical":"unestablished","native_correspondence":"conditional","cost":"measured","required_output_complete":true,"product_adoption":"unactivated","acquisition_ns":acquisition_ns,"independent_audit_ns":audit_ns,"work_primary":primary_counts,"work_cycle":final_counts,"resources":null,"resources_reason":"Actual process resources are recorded by the enclosing closed supervisor receipt; no per-operation attribution","artifacts":{"primary":"primary.json","drain":"drain.json","audit":"audit.json","timings":"timings.json"}});
        for (k, v) in timing
            .as_object()
            .ok_or(StudyError::Prerequisite("TimingRecord"))?
        {
            row[k] = v.clone();
        }
        io::write(&sample.join("observation.json"), &row)?;
        observations.push(row);
    }
    io::write(
        &out.join("complete.json"),
        &json!({"format":"core035.group.v1","case_id":case,"treatment":treatment,"backend":"Store<Capture>","source_context":prepared["source_context"],"program_check_ns":program_ns,"operational":"completed","semantic":"equal","observations":observations,"product_adoption":"unactivated"}),
    )
}

// Charge every otherwise-unclassified necessary check, authority update and
// history append to semantic maintenance. This is subtraction of nested
// intervals in the same actual call, never an estimated or median offset.
fn charge_outer_maintenance(mut phases: Value, total: u64) -> Result<Value> {
    if phases["invalid_intervals"] != 0 {
        return Err(StudyError::Prerequisite("InvalidCoarsePhaseInterval"));
    }
    let accounted = phases["accounted_ns"]
        .as_u64()
        .ok_or(StudyError::Prerequisite("MissingSemanticClock"))?;
    let outer = total
        .checked_sub(accounted)
        .ok_or(StudyError::Prerequisite("OverlappingPhaseAccounting"))?;
    let semantic = phases["semantic_ns"]
        .as_u64()
        .ok_or(StudyError::Prerequisite("MissingSemanticClock"))?;
    phases["semantic_ns"] = json!(semantic + outer);
    phases["accounted_ns"] = json!(total);
    phases["exclusive"]["outer_mandatory_maintenance_ns"] = json!(outer);
    Ok(phases)
}
