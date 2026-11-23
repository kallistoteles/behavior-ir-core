//! Actual fixed-worker session integration controls; author before dispatch support.
#![allow(clippy::unwrap_used)]
#[path = "v2_raw_oracle.rs"]
mod raw_inputs;
use raw_inputs::fixture;
use serde_json::json;
use transition_study036::{
    error::Result,
    raw_oracle,
    run_v2::{self, Role},
};

#[test]
fn fixed_workers_accept_session_cases_and_keep_their_ground_lifetimes_separate() -> Result<()> {
    let (root, roots, first) = fixture()?;
    let mut manifests = Vec::new();
    let mut cases = Vec::new();
    for index in 0..2 {
        let mut workload = first.clone();
        workload["record_id"] = json!(format!("session-worker-case-{index}"));
        let prepared = root.join(format!("session-prepared-{index}"));
        raw_oracle::prepare(&serde_json::to_vec(&workload)?, &roots, &prepared)?;
        use sha2::{Digest, Sha256};
        let bytes = std::fs::read(prepared.join("manifest.json"))?;
        let reference = json!({"root_id":"raw","path":format!("session-prepared-{index}/manifest.json"),"bytes":bytes.len(),"sha256":format!("{:x}",Sha256::digest(&bytes))});
        manifests.push(reference);
        cases.push(json!({"case_id":workload["record_id"],"kind":"session","N":2,"H":1,"requests":workload["requests"]}));
    }
    let mut request = json!({"format":"core036.request.v2","work_id":"w001","record_id":"session-worker-batch","specification_ref":first["specification_ref"],"source_subject_ref":first["source_subject_ref"],"inputs":manifests,"outcome":{"operational":"declared","acceptance":"blocked"},"reason":"session integration conformance only; no measured sample","blocking_ref":first["blocking_ref"],"product_adoption":"unactivated","mode":"timing","endpoint":"legacy_full_delivery","cases":cases});
    for mode in ["timing", "diagnostic"] {
        request["mode"] = json!(mode);
        for (name, role) in [
            ("R", Role::Reference),
            ("GV", Role::Reuse),
            ("B", Role::Buffered),
        ] {
            let out = root.join(format!("session-worker-{name}-{mode}"));
            run_v2::execute(&serde_json::to_vec(&request)?, &roots, &out, role)?;
            let summary = transition_study036::io::read(&out.join("summary.json"))?;
            assert_eq!(summary["role"], name);
            let summaries = summary["cases"].as_array().unwrap();
            assert_eq!(summaries.len(), 2);
            for (case, row) in summaries.iter().enumerate() {
                let session = &row["session"];
                if case > 0 {
                    assert!(
                        session["cold_first_session_ns"].is_null()
                            && session["cold_first_session_with_audit_ns"].is_null(),
                        "LaterSessionMustNotClaimColdFirst"
                    );
                    assert!(session["cold_first_session_reason_if_unavailable"].is_string());
                } else {
                    assert!(session["cold_first_session_reason_if_unavailable"].is_null());
                }
                assert_eq!(session["completed_operations"], 2);
                assert_eq!(row["private_authority_exported"], false);
                assert_eq!(row["views_active"], name != "R");
                let offsets = &session["offsets"];
                assert!(
                    offsets["session_start"].as_u64().unwrap()
                        <= offsets["acquisition_end"].as_u64().unwrap()
                );
                assert!(
                    offsets["acquisition_end"].as_u64().unwrap()
                        < offsets["last_output_end"].as_u64().unwrap()
                );
                assert!(
                    offsets["last_output_end"].as_u64().unwrap()
                        <= offsets["audit_end"].as_u64().unwrap()
                );
                if case == 0 {
                    assert!(
                        session["cold_first_session_with_audit_ns"]
                            .as_u64()
                            .unwrap()
                            >= session["session_with_audit_ns"].as_u64().unwrap()
                    );
                }
                for operation in 0..2 {
                    let file = format!("observation-{operation:03}.json");
                    assert_eq!(
                        std::fs::read(out.join(format!("case-{case:03}")).join(&file))?,
                        std::fs::read(root.join(format!("session-prepared-{case}")).join(&file))?
                    );
                    assert_eq!(
                        session["operations"][operation]["delivery"]["buffered"],
                        name == "B"
                    );
                }
            }
        }
    }
    Ok(())
}
