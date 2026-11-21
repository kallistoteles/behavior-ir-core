// Function items are unsupported by the pinned extractor; keep explicit closures.
#![allow(clippy::redundant_closure)]
//! Actual original checks; bytes and reported success cannot mint a ground.
use crate::{
    capture::Capture,
    error::{Result, StudyError, library},
    observation,
    reference::{self, Parent},
    safety_check::CheckedProgram,
};
use behavior_engine::store::Store;
use serde_json::Value;
fn require(value: bool, reason: &'static str) -> Result<()> {
    if value {
        Ok(())
    } else {
        Err(StudyError::Prerequisite(reason))
    }
}
fn replay_prefix_step(
    replay: &mut Store<Capture>,
    module: &behavior_engine::semantic::Module,
    analysis: &behavior_models::safety::UncertifiedSafetyAnalysis,
    request: &Value,
    commits: &[crate::capture::CommitCall],
    index: usize,
) -> Result<()> {
    // The fallible borrowed lookup ends inside this step, not at the loop join.
    let call = commits
        .get(index)
        .ok_or(StudyError::Prerequisite("MissingOriginalPrefixInvocation"))?;
    let bundle = call
        .record
        .bundle
        .as_ref()
        .ok_or(StudyError::Prerequisite("MissingOriginalPrefixInvocation"))?;
    let evidence = match &bundle.evidence {
        None => None,
        Some(behavior_engine::store::documents::CommitEvidence::Legacy(evidence)) => {
            Some(evidence.clone())
        }
        Some(behavior_engine::store::documents::CommitEvidence::Trusted(_)) => {
            return Err(StudyError::Prerequisite(
                "UnsupportedOriginalPrefixEvidence",
            ));
        }
    };
    let metadata = crate::fixtures::InvocationMetadata {
        commit_time: bundle.commit_time.clone(),
        evidence,
        at: Some(bundle.evaluated_state.clone()),
    };
    let result = reference::step_with_metadata(replay, module, analysis, request, &metadata)?;
    require(
        result["original_property_outcomes"]["status"] == "Valid",
        "InvalidPrefixState",
    )?;
    Ok(())
}
fn replay_prefix(
    replay: &mut Store<Capture>,
    module: &behavior_engine::semantic::Module,
    analysis: &behavior_models::safety::UncertifiedSafetyAnalysis,
    requests: &[Value],
    commits: &[crate::capture::CommitCall],
) -> Result<()> {
    let mut prefix_failure = None;
    let mut index = 0;
    while index < requests.len() {
        let request = &requests[index];
        replay.research035_prefix_visit();
        if let Err(failure) = replay_prefix_step(replay, module, analysis, request, commits, index)
        {
            prefix_failure = Some(failure);
            break;
        }
        index += 1;
    }
    if let Some(failure) = prefix_failure {
        return Err(failure);
    }
    Ok(())
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
    .map_err(|failure| library(failure))?;
    let origin = replay
        .current_history()
        .map_err(|failure| library(failure))?;
    require(origin == parent.origin, "OriginHistoryMismatch")?;
    let initial = behavior_models::safety::snapshot::validate_store_snapshot(
        &parent.module,
        &parent.analysis,
        &replay,
        &origin,
    );
    require(initial.status() == "Valid", "InvalidOrigin")?;
    replay_prefix(
        &mut replay,
        &parent.module,
        &parent.analysis,
        &parent.requests,
        &packet.commits,
    )?;
    observation::compare(
        &crate::serialization::packet_value(&replay.backend().packet()?)?,
        &crate::serialization::packet_value(&packet)?,
    )?;
    observation::compare(
        &crate::serialization::packet_value(&packet)?,
        &expected["parent_packet"],
    )?;
    let history = parent
        .store
        .current_history()
        .map_err(|failure| library(failure))?;
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
    Ok(crate::native_object! {
     "format" => crate::native_text!("core035.acquired-ground.v1"),
     "point_work_scope" => crate::serialization::scope_value(&point_scope),
     "history" => history.as_json(),
     "full_admitted_module" => Value::String(behavior_engine::serialize::to_wire_json(&parent.module)),
     "policy_set_hash" => crate::native_text!(parent.analysis.policy_set_hash()),
     "program" => crate::native_text!("fresh_public_safety_check"),
     "prefix" => crate::native_text!("actual_original_reexecution_and_entire_captured_packet_comparison"),
     "origin_and_actual_parent" => crate::native_text!("actual_original_safety_check"),
     "writer" => crate::native_text!("exclusive_owned_Capture_under_declared_host_premises"),
     "product_adoption" => crate::native_text!("unactivated")
    })
}
