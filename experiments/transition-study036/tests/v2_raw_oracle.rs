use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::{collections::BTreeMap, path::PathBuf};
use transition_study036::{error::Result, fixtures, native_artifacts::InputRoots, raw_oracle};

pub(crate) fn put(root: &std::path::Path, name: &str, value: &Value) -> Result<Value> {
    let bytes = serde_json::to_vec(value)?;
    std::fs::write(root.join(name), &bytes)?;
    Ok(
        json!({"root_id":"raw","path":name,"bytes":bytes.len(),"sha256":format!("{:x}",Sha256::digest(&bytes))}),
    )
}
pub(crate) fn fixture() -> Result<(PathBuf, InputRoots, Value)> {
    static NEXT: std::sync::atomic::AtomicUsize = std::sync::atomic::AtomicUsize::new(0);
    let serial = NEXT.fetch_add(1, std::sync::atomic::Ordering::Relaxed);
    let root = PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("private")
        .join(format!("raw-oracle-{}-{serial}", std::process::id()));
    std::fs::create_dir_all(&root)?;
    let module: Value = serde_json::from_str(include_str!("../expected/ld8-module.json"))?;
    let admitted =
        behavior_engine::admit(&module.to_string()).map_err(transition_study036::error::library)?;
    let store = fixtures::store(
        &admitted,
        vec![
            fixtures::parent("p0000", "Open"),
            fixtures::child("c0000", "p0000", "Active"),
        ],
    )?;
    let genesis = serde_json::to_value(
        store
            .genesis()
            .map_err(transition_study036::error::library)?,
    )?;
    let context = put(&root, "context.json", &json!({}))?;
    let metadata = put(
        &root,
        "metadata.json",
        &json!({"commit_time":"2026-11-16T20:00:00Z","evidence":null,"at":null}),
    )?;
    let finish = put(
        &root,
        "finish.json",
        &json!({"format":"behavior.invocation.v1","capability":"finish","bindings":{"c":{"entity":"Child","id":"c0000"}},"input":{},"context":{}}),
    )?;
    let activate = put(
        &root,
        "activate.json",
        &json!({"format":"behavior.invocation.v1","capability":"activate","bindings":{"c":{"entity":"Child","id":"c0000"},"p":{"entity":"Parent","id":"p0000"}},"input":{},"context":{}}),
    )?;
    let op = |r: Value| json!({"request_ref":r,"context_ref":context,"metadata_ref":metadata});
    let active =
        json!({"parents":{"p0000":"Open"},"children":{"c0000":{"owner":"p0000","phase":"Active"}}});
    let terminal = json!({"parents":{"p0000":"Open"},"children":{"c0000":{"owner":"p0000","phase":"Terminal"}}});
    let fact = |phase: Value, position: u64| json!({"allowed":true,"position":position,"post_state":phase});
    let facts = put(
        &root,
        "facts.json",
        &json!({"initial":active,"prefix":[fact(terminal.clone(),1)],"steps":[fact(active,2),fact(terminal,3)]}),
    )?;
    let basis = put(
        &root,
        "basis.json",
        &json!({"genesis":genesis,"prefix":[op(finish.clone())]}),
    )?;
    let policy = put(
        &root,
        "policy.json",
        &json!({"ownership":[
        {"id":"parents","entity":"Parent","writers":{"phase":["stop","reopen"]},"creators":["create_parent"],"removers":["remove_parent"]},
        {"id":"children","entity":"Child","writers":{"phase":["activate","finish"],"owner":[]},"creators":["create_child"],"removers":["remove_child"]}],
        "dependencies":[{"id":"relation","parent":"Parent","child":"Child","owner_field":"owner","parent_state":"phase","child_state":"phase","prohibited":["Abandoned","Gone"],"terminal":["Terminal"],"ownership":["parents","children"]}]}),
    )?;
    let module = put(&root, "module.json", &module)?;
    let marker = put(
        &root,
        "controller-context.json",
        &json!({"scope":"test only; no proof or execution authority"}),
    )?;
    let source: Value = serde_json::from_str(
        &std::env::var("CORE036_NATIVE_SUBJECT_REF_JSON").map_err(|_| {
            transition_study036::error::StudyError::Prerequisite("ControllerSubjectRequired")
        })?,
    )?;
    let workload = json!({"format":"core036.workload.v2","work_id":"w001","record_id":"raw-oracle-case","specification_ref":marker,"source_subject_ref":source,"inputs":[marker],"product_adoption":"unactivated","outcome":{"operational":"declared","acceptance":"blocked"},"reason":"actual raw replay test","blocking_ref":marker,"module_ref":module,"policy_ref":policy,"basis_ref":basis,"expected_facts_ref":facts,"N":2,"H":1,"requests":[op(activate),op(finish)]});
    let mut root_paths: BTreeMap<String, PathBuf> = serde_json::from_str(
        &std::env::var("CORE036_NATIVE_INPUT_ROOTS_JSON").map_err(|_| {
            transition_study036::error::StudyError::Prerequisite("ControllerInputRootsRequired")
        })?,
    )?;
    if root_paths.insert("raw".into(), root.clone()).is_some() {
        return Err(transition_study036::error::StudyError::InvalidInput(
            "FixtureRootAlreadyRegistered".into(),
        ));
    }
    let roots = InputRoots::new(root_paths)?;
    Ok((root, roots, workload))
}
#[test]
fn raw_workload_replays_exact_requests_and_rejects_wrong_facts_or_context() -> Result<()> {
    let (root, roots, workload) = fixture()?;
    let mut raw = raw_oracle::load(&serde_json::to_vec(&workload)?, &roots)?;
    let observations = raw_oracle::observations(&mut raw, &roots)?;
    assert_eq!(observations.len(), 2);
    assert_eq!(
        observations[0]["bundle"]["commit_time"],
        "2026-11-16T20:00:00Z"
    );
    assert_eq!(observations[1]["after_history"]["position"], 3);
    let mut wrong = workload.clone();
    wrong["expected_facts_ref"] = put(
        &root,
        "bad-facts.json",
        &json!({"initial":{},"prefix":[],"steps":[]}),
    )?;
    assert!(raw_oracle::load(&serde_json::to_vec(&wrong)?, &roots).is_err());
    let mut wrong = workload.clone();
    wrong["H"] = json!(2);
    assert!(raw_oracle::load(&serde_json::to_vec(&wrong)?, &roots).is_err());
    let mut wrong = workload.clone();
    wrong["requests"][0]["context_ref"] = put(&root, "bad-context.json", &json!({"changed":true}))?;
    let mut raw = raw_oracle::load(&serde_json::to_vec(&wrong)?, &roots)?;
    assert!(raw_oracle::observations(&mut raw, &roots).is_err());
    Ok(())
}

#[test]
fn raw_preparation_and_independent_replay_stream_exact_original_outputs() -> Result<()> {
    let (root, roots, workload) = fixture()?;
    let raw = serde_json::to_vec(&workload)?;
    let prepared = root.join("prepared");
    raw_oracle::prepare(&raw, &roots, &prepared)?;
    assert!(prepared.join("manifest.json").is_file());
    assert!(!prepared.join("observations.json").exists());
    let workload_ref = put(&root, "workload.json", &workload)?;
    let expected_context = serde_json::to_vec(
        &json!({"format":"core036.oracle-context.v2","workload_ref":workload_ref}),
    )?;
    let replayed = root.join("replayed");
    raw_oracle::replay(&prepared, &expected_context, &roots, &replayed)?;
    for index in 0..2 {
        let file = format!("observation-{index:03}.json");
        assert_eq!(
            std::fs::read(prepared.join(&file))?,
            std::fs::read(replayed.join(&file))?
        );
    }
    let manifest_path = prepared.join("manifest.json");
    let original_manifest = std::fs::read(&manifest_path)?;
    let mut manifest: Value = serde_json::from_slice(&original_manifest)?;
    manifest["native_proof"] = json!("verified");
    std::fs::write(&manifest_path, serde_json::to_vec(&manifest)?)?;
    assert!(
        raw_oracle::replay(
            &prepared,
            &expected_context,
            &roots,
            &root.join("forged-proof-replay")
        )
        .is_err()
    );
    std::fs::write(&manifest_path, &original_manifest)?;
    // A safe, well-formed but wrong observation must fail actual re-execution.
    let path = prepared.join("observation-000.json");
    let mut wrong = transition_study036::io::read(&path)?;
    wrong["before_history"]["position"] = json!(99);
    std::fs::write(&path, serde_json::to_vec(&wrong)?)?;
    // Rebind the transport digest to the changed observation: integrity alone
    // cannot reject this candidate; the independent original replay must do so.
    let changed = std::fs::read(&path)?;
    let mut manifest: Value = serde_json::from_slice(&original_manifest)?;
    manifest["observations"][0] = json!({"path":"observation-000.json","bytes":changed.len(),"sha256":format!("{:x}",Sha256::digest(&changed))});
    std::fs::write(&manifest_path, serde_json::to_vec(&manifest)?)?;
    let error = raw_oracle::replay(
        &prepared,
        &expected_context,
        &roots,
        &root.join("tampered-replay"),
    );
    assert!(matches!(
        error,
        Err(transition_study036::error::StudyError::Prerequisite(
            "IndependentOriginalAuditMismatch"
        ))
    ));
    Ok(())
}

#[test]
fn raw_context_reference_preserves_signed_zero_and_exact_original_arguments() -> Result<()> {
    let (root, roots, _) = fixture()?;
    let document = json!({"format":"behavior.invocation.v1","capability":"finish","bindings":{"c":{"entity":"Child","id":"c0000"}},"input":{},"context":{"signed":-0.0,"fraction":1.25}});
    let mut descriptor = json!({"request_ref":put(&root,"numeric-request.json",&document)?,"context_ref":put(&root,"numeric-context.json",&document["context"])?,"metadata_ref":put(&root,"numeric-metadata.json",&json!({"commit_time":"2026-11-16T20:00:00Z","evidence":null,"at":null}))?});
    let request = serde_json::from_value(descriptor.clone())?;
    let (actual, _) = raw_oracle::invocation(&roots, &request)?;
    assert_eq!(serde_json::to_vec(&actual)?, serde_json::to_vec(&document)?);
    descriptor["context_ref"] = put(
        &root,
        "wrong-signed-context.json",
        &json!({"signed":0.0,"fraction":1.25}),
    )?;
    let wrong = serde_json::from_value(descriptor)?;
    assert!(raw_oracle::invocation(&roots, &wrong).is_err());
    Ok(())
}
