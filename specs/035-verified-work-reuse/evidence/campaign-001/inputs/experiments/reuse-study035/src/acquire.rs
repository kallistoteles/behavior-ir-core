//! Actual original checks; bytes and reported success cannot mint a ground.
use crate::{
    capture::Capture,
    error::{Result, StudyError, library},
    observation,
    reference::{self, Parent},
    safety_check::CheckedProgram,
};
use behavior_engine::store::Store;
use serde_json::{Value, json};
fn require(value: bool, reason: &'static str) -> Result<()> {
    if value {
        Ok(())
    } else {
        Err(StudyError::Prerequisite(reason))
    }
}
pub fn verify(parent: &Parent, program: &CheckedProgram, expected: &Value) -> Result<Value> {
    require(
        program.matches(&parent.module, &parent.analysis),
        "ProgramSubjectMismatch",
    )?;
    require(
        expected["module"] == behavior_engine::serialize::to_wire_json(&parent.module),
        "FullAdmittedSubjectMismatch",
    )?;
    require(
        expected["policy_set_hash"] == parent.analysis.policy_set_hash(),
        "PolicySubjectMismatch",
    )?;
    let packet = parent.store.backend().packet()?;
    // This is semantic replay into another Capture, never a backend-type change
    // in the retained sample. The actual sample Store remains parent.store.
    let mut replay = Store::create(
        Capture::default(),
        &parent.module,
        packet.creation.genesis.clone(),
    )
    .map_err(library)?;
    let origin = replay.current_history().map_err(library)?;
    require(origin == parent.origin, "OriginHistoryMismatch")?;
    let initial = behavior_models::safety::snapshot::validate_store_snapshot(
        &parent.module,
        &parent.analysis,
        &replay,
        &origin,
    );
    require(initial.status() == "Valid", "InvalidOrigin")?;
    for request in &parent.requests {
        replay.research035_prefix_visit();
        let result = reference::step(&mut replay, &parent.module, &parent.analysis, request)?;
        require(
            result["original_property_outcomes"]["status"] == "Valid",
            "InvalidPrefixState",
        )?;
    }
    observation::compare(
        &serde_json::to_value(replay.backend().packet()?)?,
        &serde_json::to_value(&packet)?,
    )?;
    observation::compare(&serde_json::to_value(&packet)?, &expected["parent_packet"])?;
    let history = parent.store.current_history().map_err(library)?;
    observation::compare(&history.as_json(), &expected["parent"])?;
    let actual = behavior_models::safety::snapshot::validate_store_snapshot(
        &parent.module,
        &parent.analysis,
        &parent.store,
        &history,
    );
    require(actual.status() == "Valid", "InvalidActualParent")?;
    let state = reference::state_facts(&parent.store, &parent.module)?;
    let point_scope = expected["request"]["bindings"]["c"]["id"]
        .as_str()
        .and_then(|child| {
            state["children"][child]["owner"].as_str().map(|owner| {
                vec![
                    ("Child".to_string(), child.to_string()),
                    ("Parent".to_string(), owner.to_string()),
                ]
            })
        });
    Ok(
        json!({"format":"core035.acquired-ground.v1","point_work_scope":point_scope,"history":history.as_json(),"full_admitted_module":behavior_engine::serialize::to_wire_json(&parent.module),"policy_set_hash":parent.analysis.policy_set_hash(),"program":"fresh_public_safety_check","prefix":"actual_original_reexecution_and_entire_captured_packet_comparison","origin_and_actual_parent":"actual_original_safety_check","writer":"exclusive_owned_Capture_under_declared_host_premises","product_adoption":"unactivated"}),
    )
}
