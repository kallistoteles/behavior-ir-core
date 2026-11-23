//! Typed rejection at the original-prefix builder; no authority from JSON shape.
use serde_json::json;
use transition_study036::recovery::expected_prefix;

#[path = "v2_raw_oracle.rs"]
mod raw_inputs;

#[test]
fn malformed_recovery_prefix_is_a_typed_error_without_panicking() {
    for initial in [
        json!([]),
        json!("wrong"),
        json!(false),
        json!(null),
        json!({}),
        json!({"parent":{},"parent_packet":{"commits":false}}),
    ] {
        let attempted = std::panic::catch_unwind(|| expected_prefix(&initial, &[], 0, &json!({})));
        assert!(
            attempted.is_ok_and(|result| result.is_err()),
            "RecoveryPrefixMustRejectMalformedJsonWithoutPanicking"
        );
    }
}

#[test]
fn recovery_prefix_requires_original_commit_shape_before_building_a_packet() {
    let initial = json!({"parent":{},"parent_packet":{"commits":[]}});
    let originals = [json!({"after_history":{},"commit_arguments":false})];
    assert!(
        expected_prefix(&initial, &originals, 1, &json!({})).is_err(),
        "RecoveryPrefixMustRequireOriginalCommitShape"
    );
    let originals = [json!({"after_history":{},"commit_arguments":null})];
    assert!(expected_prefix(&initial, &originals, 1, &json!({})).is_ok());
    assert!(expected_prefix(&initial, &originals, 2, &json!({})).is_err());
}

#[test]
fn worker_rejects_rebound_malformed_subject_without_panicking()
-> transition_study036::error::Result<()> {
    use sha2::{Digest, Sha256};
    use transition_study036::{
        raw_oracle,
        run_v2::{self, Role},
    };
    let (root, roots, workload) = raw_inputs::fixture()?;
    let prepared = root.join("malformed-subject-prepared");
    raw_oracle::prepare(&serde_json::to_vec(&workload)?, &roots, &prepared)?;
    let malformed = serde_json::to_vec(&json!([]))?;
    std::fs::write(prepared.join("subject.json"), &malformed)?;
    let mut manifest = transition_study036::io::read(&prepared.join("manifest.json"))?;
    manifest["subject"] = json!({"path":"subject.json","bytes":malformed.len(),"sha256":format!("{:x}",Sha256::digest(&malformed))});
    let manifest = serde_json::to_vec(&manifest)?;
    std::fs::write(prepared.join("manifest.json"), &manifest)?;
    let prepared_ref = json!({"root_id":"raw","path":"malformed-subject-prepared/manifest.json","bytes":manifest.len(),"sha256":format!("{:x}",Sha256::digest(&manifest))});
    let request = json!({"format":"core036.request.v2","work_id":"w001","record_id":"bad-subject-batch","specification_ref":workload["specification_ref"],"source_subject_ref":workload["source_subject_ref"],"inputs":[prepared_ref],"outcome":{"operational":"declared","acceptance":"blocked"},"reason":"typed malformed subject rejection only","blocking_ref":workload["blocking_ref"],"product_adoption":"unactivated","mode":"timing","endpoint":"legacy_full_delivery","cases":[{"case_id":workload["record_id"],"kind":"session","N":2,"H":1,"requests":workload["requests"]}]});
    let out = root.join("bad-subject-worker");
    let attempted = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
        run_v2::execute(&serde_json::to_vec(&request)?, &roots, &out, Role::Reuse)
    }));
    assert!(
        attempted.is_ok_and(|result| result.is_err()),
        "WorkerSubjectMustFailAsTypedInput"
    );
    assert!(!out.join("case-000/observation-000.json").exists());
    Ok(())
}
