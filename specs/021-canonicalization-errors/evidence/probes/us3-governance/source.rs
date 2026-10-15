#![allow(clippy::unwrap_used,clippy::expect_used)]
#[path="support/core021_red_helpers.rs"] mod support;
use support::*;
use behavior_engine::verify::{solver::Z3Process,verify};
use behavior_engine::verify::governance::{authorize,sign_waiver};
use serde_json::{Value,json};
#[test]
fn unsupported_policy_self_hash_is_an_error() {
    let module=behavior_engine::admit(&fixture("verify/purchase_fixed.json")).unwrap();
    let report=verify(&module,&profile(),None,&Z3Process::from_env().unwrap());
    let mut policy:Value=serde_json::from_str(&fixture("governance/require_verified.json")).unwrap();policy["hash"]=json!({"items":[1.5]});
    let result=authorize(&policy.to_string(),&module,&fixture("canonicalization/baseline/record.json"),Some(&report.to_json_string()),&[],&[],"2026-09-25T12:00:00Z");
    assert!(result.is_err(),"noncanonical policy metadata was consumed without error");
}
#[test]
fn unsupported_attestation_cached_metadata_is_an_error() {
    let module=behavior_engine::admit(&fixture("verify/purchase_fixed.json")).unwrap();
    let mut report=verify(&module,&profile(),None,&Z3Process::from_env().unwrap());report.value["checks"][0]["cached"]=json!(1.5);
    let result=authorize(&fixture("governance/require_verified.json"),&module,&fixture("canonicalization/baseline/record.json"),Some(&report.value.to_string()),&[],&[],"2026-09-25T12:00:00Z");
    assert!(result.is_err(),"noncanonical attestation was accepted as verification evidence");
}
#[test]
fn unsupported_waiver_self_hash_cannot_be_signed() {
    let mut w:Value=serde_json::from_str(&fixture("canonicalization/baseline/waiver.json")).unwrap();w["hash"]=json!({"items":[1.5]});
    assert!(sign_waiver(&"42".repeat(32),&w.to_string()).is_err(),"unsupported draft acquired a signature");
}
