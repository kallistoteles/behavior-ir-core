use super::raw_oracle_controls::{fixture, put};
use serde_json::json;
use transition_study036::{
    error::Result,
    raw_oracle,
    run_v2::{self, Role},
};

#[test]
fn fixed_roles_match_oracle_and_each_batch_case_acquires_a_fresh_ground() -> Result<()> {
    let (root, roots, first) = fixture()?;
    let mut manifests = Vec::new();
    let mut cases = Vec::new();
    for index in 0..2 {
        let mut workload = first.clone();
        workload["record_id"] = json!(format!("fresh-case-{index}"));
        let prepared = root.join(format!("prepared-{index}"));
        raw_oracle::prepare(&serde_json::to_vec(&workload)?, &roots, &prepared)?;
        let bytes = std::fs::read(prepared.join("manifest.json"))?;
        use sha2::{Digest, Sha256};
        manifests.push(json!({"root_id":"raw","path":format!("prepared-{index}/manifest.json"),"bytes":bytes.len(),"sha256":format!("{:x}",Sha256::digest(&bytes))}));
        cases.push(json!({"case_id":workload["record_id"],"kind":"operation","N":2,"H":1,"requests":workload["requests"]}));
    }
    let mut request = json!({"format":"core036.request.v2","work_id":"w001","record_id":"fixed-role-batch","specification_ref":first["specification_ref"],"source_subject_ref":first["source_subject_ref"],"inputs":manifests,"outcome":{"operational":"declared","acceptance":"blocked"},"reason":"finite conformance; no native proof or timing claim","blocking_ref":first["blocking_ref"],"product_adoption":"unactivated","mode":"timing","endpoint":"legacy_full_delivery","cases":cases});
    for mode in ["timing", "diagnostic"] {
        request["mode"] = json!(mode);
        put(&root, "valid-batch-request.json", &request)?;
        for (name, role) in [
            ("R", Role::Reference),
            ("GV", Role::Reuse),
            ("B", Role::Buffered),
        ] {
            let out = root.join(format!("{name}-{mode}"));
            run_v2::execute(&serde_json::to_vec(&request)?, &roots, &out, role)?;
            for case in 0..2 {
                for operation in 0..2 {
                    let file = format!("observation-{operation:03}.json");
                    assert_eq!(
                        std::fs::read(out.join(format!("case-{case:03}")).join(&file))?,
                        std::fs::read(root.join(format!("prepared-{case}")).join(&file))?
                    );
                }
            }
            let summary = transition_study036::io::read(&out.join("summary.json"))?;
            assert_eq!(summary["role"], name);
            assert_eq!(summary["cases"].as_array().map(Vec::len), Some(2));
            for case in summary["cases"].as_array().into_iter().flatten() {
                assert_eq!(case["views_active"], name != "R");
                let pair = &case["operation_pair"];
                let operations = pair["operations"].as_array().ok_or(
                    transition_study036::error::StudyError::Prerequisite(
                        "MissingActualOperationPair",
                    ),
                )?;
                assert_eq!(operations.len(), 2);
                let mut total = 0u64;
                for operation in operations {
                    let ns = operation["complete_ns"].as_u64().ok_or(
                        transition_study036::error::StudyError::Prerequisite(
                            "MissingActualOperationClock",
                        ),
                    )?;
                    total += ns;
                    assert_eq!(operation["delivery"]["buffered"], name == "B");
                    assert_eq!(
                        operation["delivery"]["underlying_write_calls"].is_u64(),
                        mode == "diagnostic"
                    );
                    assert!(operation["quantities"]["allocated_bytes"]["value"].is_null());
                    assert!(
                        operation["quantities"]["shared_adjusted_peak_bytes"]["value"].is_null()
                    );
                }
                assert!(
                    pair["cycle_ns"]
                        .as_u64()
                        .is_some_and(|cycle| cycle >= total)
                );
            }
            assert!(run_v2::execute(&serde_json::to_vec(&request)?, &roots, &out, role).is_err());
        }
    }
    let mut supplied_counter = request.clone();
    supplied_counter["underlying_write_calls"] = json!(1);
    assert!(
        run_v2::execute(
            &serde_json::to_vec(&supplied_counter)?,
            &roots,
            &root.join("supplied-counter"),
            Role::Buffered
        )
        .is_err()
    );
    let mut disabled = request.clone();
    disabled["buffered"] = json!(false);
    assert!(
        run_v2::execute(
            &serde_json::to_vec(&disabled)?,
            &roots,
            &root.join("disabled-buffer"),
            Role::Buffered
        )
        .is_err()
    );
    let mut bad = request.clone();
    bad["cases"][0]["H"] = json!(2);
    assert!(
        run_v2::execute(
            &serde_json::to_vec(&bad)?,
            &roots,
            &root.join("wrong-parent"),
            Role::Reuse
        )
        .is_err()
    );
    let mut wrong_source = request.clone();
    wrong_source["source_subject_ref"]["sha256"] = json!("0".repeat(64));
    assert!(
        matches!(run_v2::execute(&serde_json::to_vec(&wrong_source)?,&roots,&root.join("wrong-compiled-source"),Role::Reuse), Err(transition_study036::error::StudyError::InvalidInput(message)) if message=="WorkerCompiledSubjectDiffers")
    );
    let mut bad = request;
    bad["verified"] = json!(true);
    assert!(
        run_v2::execute(
            &serde_json::to_vec(&bad)?,
            &roots,
            &root.join("forged-authority"),
            Role::Reuse
        )
        .is_err()
    );
    // Keep one complete raw request ref as an independently byte-bound fixture.
    put(&root, "batch-request.json", &bad)?;
    Ok(())
}
