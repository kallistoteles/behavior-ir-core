//! Authored before fixed-worker invalidation dispatch. No measured sample.
#![allow(clippy::unwrap_used)]
#[path = "v2_raw_oracle.rs"]
mod raw_inputs;
use serde_json::json;
use sha2::{Digest, Sha256};
use transition_study036::{
    error::Result,
    raw_oracle,
    run_v2::{self, Role},
};

#[test]
fn fixed_workers_reacquire_before_operation_one_without_importing_authority() -> Result<()> {
    let (root, roots, mut workload) = raw_inputs::fixture()?;
    workload["requests"].as_array_mut().unwrap().truncate(1);
    let mut facts = roots.semantic_json(&serde_json::from_value(
        workload["expected_facts_ref"].clone(),
    )?)?;
    facts["steps"].as_array_mut().unwrap().truncate(1);
    workload["expected_facts_ref"] = raw_inputs::put(&root, "one-step-facts.json", &facts)?;
    let prepared = root.join("recovery-prepared");
    raw_oracle::prepare(&serde_json::to_vec(&workload)?, &roots, &prepared)?;
    let manifest = std::fs::read(prepared.join("manifest.json"))?;
    let manifest_ref = json!({"root_id":"raw","path":"recovery-prepared/manifest.json","bytes":manifest.len(),"sha256":format!("{:x}",Sha256::digest(&manifest))});
    let request = json!({"format":"core036.request.v2","work_id":"w001","record_id":"recovery-worker-batch","specification_ref":workload["specification_ref"],"source_subject_ref":workload["source_subject_ref"],"inputs":[manifest_ref],"outcome":{"operational":"declared","acceptance":"blocked"},"reason":"real recovery worker control only","blocking_ref":workload["blocking_ref"],"product_adoption":"unactivated","mode":"timing","endpoint":"legacy_full_delivery","cases":[{"case_id":workload["record_id"],"kind":"session","N":2,"H":1,"requests":workload["requests"],"invalidation_before":1}]});
    for (name, role) in [("R", Role::Reference), ("GV", Role::Reuse)] {
        let out = root.join(format!("recovery-worker-{name}"));
        run_v2::execute(&serde_json::to_vec(&request)?, &roots, &out, role)?;
        let summary = transition_study036::io::read(&out.join("summary.json"))?;
        let row = &summary["cases"][0];
        assert_eq!(row["private_authority_exported"], false);
        assert_eq!(row["session"]["invalidation_before"], 1);
        assert!(row["session"]["reacquisition_ns"].as_u64().unwrap() > 0);
        assert_eq!(row["session"]["completed_operations"], 1);
        assert_eq!(
            std::fs::read(out.join("case-000/observation-000.json"))?,
            std::fs::read(prepared.join("observation-000.json"))?
        );
    }
    Ok(())
}
