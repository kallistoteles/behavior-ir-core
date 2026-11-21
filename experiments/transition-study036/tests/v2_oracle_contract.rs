use serde_json::json;
use transition_study036::fixtures::parse_raw_workload_v2;
#[path = "oracle_contract.rs"]
mod original_comparison;

#[test]
fn raw_inputs_can_be_decoded_before_any_prepared_manifest_exists() {
    let r = json!({"root_id":"repository","path":"raw.json","bytes":1,"sha256":"a".repeat(64)});
    let v = json!({"format":"core036.workload.v2","work_id":"w001","record_id":"raw-case",
        "specification_ref":r,"source_subject_ref":r,"inputs":[r],"product_adoption":"unactivated",
        "outcome":{"operational":"declared","acceptance":"blocked"},"reason":"not run","blocking_ref":r,
        "module_ref":r,"policy_ref":r,"basis_ref":r,"expected_facts_ref":r,"N":2,"H":8,
        "requests":[{"request_ref":r,"context_ref":r,"metadata_ref":r}]});
    let bytes = serde_json::to_vec(&v).unwrap_or_else(|error| panic!("{error}"));
    assert!(parse_raw_workload_v2(&bytes).is_ok());
    for field in ["prepared_manifest", "verified", "checked_ground"] {
        let mut bad = v.clone();
        bad[field] = json!(true);
        let bytes = serde_json::to_vec(&bad).unwrap_or_else(|error| panic!("{error}"));
        assert!(parse_raw_workload_v2(&bytes).is_err());
    }
}
