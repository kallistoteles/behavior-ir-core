use serde_json::{Value, json};
use transition_study036::{
    capture::Capture,
    error::{Result, library},
    fixtures,
    ground::Ground,
    observation, reference,
};
#[path = "v2_support.rs"]
mod support;
use support::{checked, checked_commands, expected};

#[test]
fn a_semantic_payload_reader_preserves_original_finite_numbers() -> Result<()> {
    // Numeric restrictions on control-record counters must not narrow JSON
    // values in the original semantic documents or observation metadata.
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("private");
    std::fs::create_dir_all(&root)?;
    let path = root.join(format!("numeric-payload-{}.json", std::process::id()));
    let bytes = br#"{"fraction":1.25,"negative_zero":-0.0,"large":18446744073709551615}"#;
    std::fs::write(&path, bytes)?;
    let actual = transition_study036::io::read(&path)?;
    let original: Value = serde_json::from_slice(bytes)?;
    observation::compare(&original, &actual)?;
    // The backend transport also carries original JSON values. This changes
    // only a decoder fixture and grants no validity to the modified packet.
    let mut packet = reference::parent("growth-D1")?.store.backend().packet()?;
    let seed = packet.creation.seed.first_mut().ok_or(
        transition_study036::error::StudyError::Prerequisite("MissingTransportSeedFixture"),
    )?;
    seed.value["transport_fixture_metadata"] = original;
    let encoded = serde_json::to_vec(&packet)?;
    let decoded = transition_study036::capture::decode_packet(&encoded)?;
    observation::compare(
        &serde_json::to_value(&packet)?,
        &serde_json::to_value(&decoded)?,
    )?;
    let mut bad_counter = serde_json::to_value(&packet)?;
    bad_counter["creation"]["seed"][0]["revision"] = json!(1.25);
    assert!(
        transition_study036::capture::decode_packet(&serde_json::to_vec(&bad_counter)?).is_err()
    );
    Ok(())
}

#[test]
fn caller_metadata_matches_direct_core_and_survives_original_reacquisition() -> Result<()> {
    for historical_argument in [false, true] {
        let mut direct = reference::parent("growth-D1")?;
        let mut routed = reference::parent("growth-D1")?;
        let metadata = fixtures::InvocationMetadata {
            commit_time: "2026-11-16T15:41:23Z".into(),
            evidence: None,
            at: historical_argument
                .then(|| direct.store.current().map_err(library))
                .transpose()?,
        };
        let request = reference::request("finish");
        // Derive the expectation from the original public Core call, without
        // using the new metadata adapter to construct the expected result.
        let before = direct.store.current_history().map_err(library)?;
        let (decoded, _) = behavior_engine::invocation::RequestedInvocation::decode(
            &serde_json::to_string(&request)?,
        )
        .map_err(library)?;
        let decoded = decoded.ok_or(transition_study036::error::StudyError::Prerequisite(
            "MetadataFixtureDecode",
        ))?;
        let invocation = direct
            .store
            .invoke(
                &direct.module,
                &decoded,
                &metadata.commit_time,
                metadata.evidence.clone(),
                metadata.at.as_ref(),
            )
            .map_err(library)?;
        if let Some(bundle) = &invocation.bundle {
            direct
                .store
                .commit(
                    &direct.module,
                    &direct.store.current().map_err(library)?,
                    bundle,
                )
                .map_err(library)?;
        }
        let after = direct.store.current_history().map_err(library)?;
        let call = serde_json::to_value(direct.store.backend().last_call())?;
        let safety = behavior_models::safety::snapshot::validate_store_snapshot(
            &direct.module,
            &direct.analysis,
            &direct.store,
            &after,
        );
        let expected = json!({"invocation":invocation.record.as_json(),"bundle":invocation.bundle,
            "commit_arguments":call,"transition_record":call.get("record"),
            "before_history":before.as_json(),"after_history":after.as_json(),
            "post_state":reference::state_facts(&direct.store,&direct.module)?,
            "original_property_outcomes":{"status":safety.status()}});
        let reference_result = reference::step_with_metadata(
            &mut routed.store,
            &routed.module,
            &routed.analysis,
            &request,
            &metadata,
        )?;
        observation::compare(&expected, &reference_result)?;
        let mut ground = Ground::supplied(reference::parent("growth-D1")?);
        ground.check(checked()?, &support::expected()?)?;
        ground.select_retention(true)?;
        ground.enable_views(true)?;
        let result = ground.invoke_with_metadata(&request, &metadata)?;
        observation::compare(&expected, &result)?;
        let supplied = ground.into_unverified();
        let resume = json!({"module":behavior_engine::serialize::to_wire_json(&supplied.module),
            "policy_set_hash":supplied.analysis.policy_set_hash(),
            "parent":supplied.store.current_history().map_err(library)?.as_json(),
            "parent_packet":supplied.store.backend().packet()?,"request":request});
        let mut reacquired = Ground::supplied(supplied);
        reacquired.check(checked()?, &resume)?;
    }
    Ok(())
}

#[test]
fn evidence_metadata_preserves_original_error_and_confirmed_parent() -> Result<()> {
    let mut direct = reference::parent("growth-D1")?;
    let metadata = fixtures::InvocationMetadata {
        commit_time: "2026-11-16T15:41:24Z".into(),
        evidence: Some(behavior_engine::store::documents::Evidence {
            authorization: json!({"fraction":1.25,"negative_zero":-0.0}),
            execution_policy: None,
            attestation: None,
            waivers: vec![],
        }),
        at: None,
    };
    let request = reference::request("finish");
    let before = serde_json::to_value(direct.store.backend().packet()?)?;
    let original_error = (|| -> Result<()> {
        let (decoded, _) = behavior_engine::invocation::RequestedInvocation::decode(
            &serde_json::to_string(&request)?,
        )
        .map_err(library)?;
        let decoded = decoded.ok_or(transition_study036::error::StudyError::Prerequisite(
            "EvidenceFixtureDecode",
        ))?;
        let invocation = direct
            .store
            .invoke(
                &direct.module,
                &decoded,
                &metadata.commit_time,
                metadata.evidence.clone(),
                metadata.at.as_ref(),
            )
            .map_err(library)?;
        if let Some(bundle) = &invocation.bundle {
            direct
                .store
                .commit(
                    &direct.module,
                    &direct.store.current().map_err(library)?,
                    bundle,
                )
                .map_err(library)?;
        }
        Ok(())
    })()
    .err()
    .ok_or(transition_study036::error::StudyError::Prerequisite(
        "ExpectedDirectEvidenceRejection",
    ))?;
    let mut routed = reference::parent("growth-D1")?;
    let routed_error = reference::step_with_metadata(
        &mut routed.store,
        &routed.module,
        &routed.analysis,
        &request,
        &metadata,
    )
    .err()
    .ok_or(transition_study036::error::StudyError::Prerequisite(
        "ExpectedReferenceEvidenceRejection",
    ))?;
    assert_eq!(original_error.to_string(), routed_error.to_string());
    let mut ground = Ground::supplied(reference::parent("growth-D1")?);
    ground.check(checked()?, &support::expected()?)?;
    ground.select_retention(true)?;
    ground.enable_views(true)?;
    let routed_error = ground
        .invoke_with_metadata(&request, &metadata)
        .err()
        .ok_or(transition_study036::error::StudyError::Prerequisite(
            "ExpectedGroundEvidenceRejection",
        ))?;
    assert_eq!(original_error.to_string(), routed_error.to_string());
    observation::compare(
        &before,
        &serde_json::to_value(direct.store.backend().packet()?)?,
    )?;
    let supplied = ground.into_unverified();
    observation::compare(
        &before,
        &serde_json::to_value(supplied.store.backend().packet()?)?,
    )?;
    Ok(())
}
// Existing working controls are reused, rather than damaged to manufacture reds.
#[path = "conformance.rs"]
mod fallback;
#[path = "prepared_invocation.rs"]
mod prepared;
#[path = "views.rs"]
mod views;

#[test]
fn canonical_number_representation_cannot_be_hidden_by_value_equality() -> Result<()> {
    let negative = json!({"original_metadata":-0.0});
    let positive = json!({"original_metadata":0.0});
    assert_ne!(
        serde_json::to_vec(&negative)?,
        serde_json::to_vec(&positive)?
    );
    assert!(
        observation::compare(&negative, &positive).is_err(),
        "full original comparison must include canonical bytes"
    );
    Ok(())
}
fn arbitrary_parent() -> Result<reference::Parent> {
    let module = fixtures::module(false, false)?;
    let analysis = fixtures::analysis(&module, false)?;
    let store = fixtures::store_with(
        &module,
        vec![
            fixtures::parent("owner_alpha", "Open"),
            fixtures::child("record_beta", "owner_alpha", "Active"),
        ],
        Capture::default(),
    )?;
    let origin = store.current_history().map_err(library)?;
    Ok(reference::Parent {
        module,
        analysis,
        store,
        origin,
        requests: vec![],
    })
}
#[test]
fn actual_reuse_handles_native_keys_outside_benchmark_generation() -> Result<()> {
    let parent = arbitrary_parent()?;
    let request = json!({"format":"behavior.invocation.v1","capability":"finish","bindings":{"c":{"entity":"Child","id":"record_beta"}},"input":{},"context":{}});
    let expected: Value = json!({"module":behavior_engine::serialize::to_wire_json(&parent.module),"policy_set_hash":parent.analysis.policy_set_hash(),"parent":parent.origin.as_json(),"parent_packet":parent.store.backend().packet()?,"request":request});
    let mut candidate = Ground::supplied(parent);
    candidate.check(checked()?, &expected)?;
    candidate.select_retention(true)?;
    candidate.enable_views(true)?;
    candidate.set_work(true);
    let mut original = arbitrary_parent()?;
    for _ in 0..2 {
        let actual = candidate.invoke(&request)?;
        let expected = reference::step(
            &mut original.store,
            &original.module,
            &original.analysis,
            &request,
        )?;
        observation::compare(&expected, &actual)?;
        assert_eq!(serde_json::to_vec(&expected)?, serde_json::to_vec(&actual)?);
        assert_eq!(actual.as_object().map(|x| x.len()), Some(8));
        assert_eq!(
            actual["post_state"]["children"]["record_beta"]["phase"],
            "Terminal"
        );
    }
    assert!(candidate.views_active());
    Ok(())
}

#[path = "v2_artifact_roots.rs"]
mod artifact_roots;

#[path = "v2_raw_oracle.rs"]
mod raw_oracle_controls;

#[path = "v2_worker_entry.rs"]
mod worker_entry_controls;
