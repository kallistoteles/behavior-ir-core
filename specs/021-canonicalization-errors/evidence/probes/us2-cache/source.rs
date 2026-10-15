#![allow(clippy::unwrap_used,clippy::expect_used)]
#[path="support/core021_red_helpers.rs"] mod support;
use support::*;
use behavior_engine::verify::{Profile,solver::Z3Process,verify};
#[test]
fn poisoned_matching_finding_cannot_issue_empty_identity() {
    let case:serde_json::Value=serde_json::from_str(&fixture("canonicalization/poisoned-cache.json")).unwrap();
    let dir=fresh_dir("baseline-producer");
    let module=behavior_engine::admit(&fixture(case["wire"].as_str().unwrap())).unwrap();
    let profile=Profile::from_json(&fixture(case["profile"].as_str().unwrap())).unwrap();
    let solver=Z3Process::from_env().unwrap();
    verify(&module,&profile,Some(&dir),&solver);
    let warm=verify(&module,&profile,Some(&dir),&solver);assert!(warm.checks.iter().all(|c|c.cached));
    let mut changed=0;
    for file in std::fs::read_dir(&dir).unwrap(){let path=file.unwrap().path();let mut v:serde_json::Value=serde_json::from_str(&std::fs::read_to_string(&path).unwrap()).unwrap();if v["finding"].is_object(){v["finding"][case["field"].as_str().unwrap()]=case["value"].clone();std::fs::write(path,v.to_string()).unwrap();changed+=1;}}
    assert!(changed>0);let bad=verify(&module,&profile,Some(&dir),&solver);
    assert!(bad.checks.iter().all(|c|c.cached));assert_eq!(bad.value["findings"][0][case["field"].as_str().unwrap()],case["value"]);
    assert!(!bad.hash.is_empty(),"matching noncanonical finding issued an attestation with an empty hash");
}
