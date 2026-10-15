#![allow(clippy::unwrap_used,clippy::expect_used)]
#[path="support/core021_red_helpers.rs"] mod support;
use support::*;
use behavior_engine::verify::{solver::Z3Process,verify};
use behavior_engine::verify::governance::authorize;
use serde_json::json;
#[test]
fn ordinary_serializer_must_not_succeed_with_empty_text() {
    let m=behavior_engine::admit(&fixture("verify/purchase_fixed.json")).unwrap();
    let mut a=verify(&m,&profile(),None,&Z3Process::from_env().unwrap());
    a.value["draft"]=json!({"items":[1.5]});
    assert!(!a.to_json_string().is_empty(),"noncanonical input became successful empty text");
}
#[test]
fn authorization_serializer_must_not_succeed_with_empty_text() {
    let m=behavior_engine::admit(&fixture("verify/purchase_fixed.json")).unwrap();
    let a=verify(&m,&profile(),None,&Z3Process::from_env().unwrap());
    let mut request:serde_json::Value=serde_json::from_str(&fixture("governance/approve_request.json")).unwrap();
    request["facts"]=json!({"universe":[{"entity":"Employee","members":[]},{"entity":"Project","members":[request["state"]["project"].clone()]},{"entity":"Purchase","members":[request["state"]["purchase"].clone()]}]});
    let record=behavior_engine::evaluate(&m,&request.to_string());
    let mut auth=authorize(&fixture("governance/require_verified.json"),&m,&record.to_json_string(),Some(&a.to_json_string()),&[],&[],"2026-09-25T12:00:00Z").unwrap();
    auth.value["draft"]=json!({"items":[1.5]});
    assert!(!auth.to_json_string().is_empty(),"noncanonical authorization became successful empty text");
}
