#![allow(clippy::unwrap_used,clippy::expect_used)]
//! Eligible legacy structural evidence; these fixtures make no authenticated-proof claim.
mod common;
use behavior_core::semantic::module::Module;
use behavior_store::{Backend,InMemoryBackend,Store};
use behavior_store::documents::{CommitBundle,Evidence,EvidencePolicy,SeedEntity,StoreError,data_version};
use behavior_store::store::genesis_for;
use behavior_verify::governance::{authorize,authorize_migration};
use behavior_verify::hashing::{TAG_VERIFICATION,document_hash};
use serde_json::{Value,json};
const NOW:&str="2026-10-02T10:00:00Z";
const POLICY:&str=r#"{"policy_version":"1","require":"verified"}"#;

fn observed(mut subject:Value)->Value {
    let base=json!({"attestation_version":"1","profile":{"hash":"sha256:00"},"verifier_version":behavior_verify::VERIFIER_VERSION,"result":"verified","checks":[{"kind":"preservation","cached":false}],"findings":[]});
    for (k,v) in base.as_object().unwrap(){subject[k]=v.clone();}
    let mut material=subject.clone();material["checks"][0].as_object_mut().unwrap().remove("cached");
    subject["hash"]=json!(document_hash(TAG_VERIFICATION,&material).unwrap());subject
}
fn action_case()->(Module,Store<InMemoryBackend>,CommitBundle,Evidence) {
    let m=common::ledger();let s=common::store();
    let b=s.evaluate(&m,"transfer",&common::bind(&[("from_","a1"),("to","a2")]),&json!({"amount":"1.00"}),&json!({}),NOW,None).unwrap().bundle.unwrap();
    let a=observed(json!({"behavior_version":m.behavior_version()}));
    let auth=authorize(POLICY,&m,&b.record.to_string(),Some(&a.to_string()),&[],&[],NOW).unwrap();assert_eq!(auth.decision,"allow");
    (m,s,b,Evidence{authorization:auth.value,execution_policy:Some(serde_json::from_str(POLICY).unwrap()),attestation:Some(a),waivers:vec![]})
}
fn migration_case()->(Module,Module,behavior_core::migration::Migration,Store<InMemoryBackend>,Evidence) {
    let source=behavior_core::admit(&common::read(&common::fixtures().join("migration/modules/cultures_v1.json"))).unwrap();
    let target=behavior_core::admit(&common::read(&common::fixtures().join("migration/modules/cultures_v2.json"))).unwrap();
    let m=behavior_core::migration::admit_migration(&source,&target,&common::read(&common::fixtures().join("migration/valid/cultures_v1_to_v2.json"))).unwrap();
    let seeds=vec![SeedEntity{entity:"Customer".into(),value:json!({"id":"c1","name":"Ada","email":"a@x"})},SeedEntity{entity:"Culture".into(),value:json!({"id":"k1","medium":"WPM","status":"ACTIVE","ph":7,"legacy_code":"L1","price":"1.50","fee":"0.1235"})}];
    let s=Store::create(InMemoryBackend::new(),&source,genesis_for(&source,EvidencePolicy::none(),seeds)).unwrap();
    let a=observed(json!({"subject":"migration","migration_hash":m.hash(),"source":m.source_schema(),"target":m.target_schema()}));
    let dv=data_version(&s.store_id().unwrap(),&s.current().unwrap());
    let auth=authorize_migration(POLICY,&m,&dv,Some(&a.to_string()),&[],&[],NOW).unwrap();assert_eq!(auth.decision,"allow");
    (source,target,m,s,Evidence{authorization:auth.value,execution_policy:Some(serde_json::from_str(POLICY).unwrap()),attestation:Some(a),waivers:vec![]})
}
fn poison(e:&mut Evidence,slot:usize)->&'static str {
    match slot {
        0=>{e.authorization["hash"]=json!({"items":[1.5]});"authorization"},
        1=>{e.execution_policy.as_mut().unwrap()["draft"]=json!({"items":[1.5]});"execution_policy"},
        2=>{e.attestation.as_mut().unwrap()["checks"][0]["cached"]=json!(1.5);"attestation"},
        3=>{e.waivers.push(json!({"draft":{"items":[1.5]}}));"waivers[0]"},
        _=>unreachable!(),
    }
}
fn canonical_refusal(err:StoreError,component:&str){assert!(matches!(&err,StoreError::EvidenceMismatch(_)),"{err:?}");let text=err.to_string();assert!(text.contains("floating-point"),"{text}");assert!(text.contains(component),"{text}");assert!(text.contains("$."),"{text}");}

#[test]
fn supplied_action_artifacts_are_checked_before_persistence() {
    for slot in 0..4 {
        let (m,mut s,b,mut e)=action_case();let component=poison(&mut e,slot);
        let before=format!("{:?}",s.backend());let at=s.current().unwrap();
        canonical_refusal(s.commit(&m,&at,&b.with_evidence(e)).unwrap_err(),component);
        assert_eq!(format!("{:?}",s.backend()),before);assert!(s.backend().record(at.position+1).unwrap().is_none());
    }
}
#[test]
fn supplied_migration_artifacts_are_checked_before_persistence() {
    for slot in 0..4 {
        let (source,target,m,mut s,mut e)=migration_case();let component=poison(&mut e,slot);
        let before=format!("{:?}",s.backend());let at=s.current().unwrap();
        canonical_refusal(s.migrate(&m,&source,&target,NOW,Some(e)).unwrap_err(),component);
        assert_eq!(format!("{:?}",s.backend()),before);assert!(s.backend().record(at.position+1).unwrap().is_none());
    }
}
#[test]
fn stripped_noncanonical_migration_metadata_cannot_commit() {
    let (source,target,m,mut s,mut e)=migration_case();poison(&mut e,2);
    let before=format!("{:?}",s.backend());
    let result=s.migrate(&m,&source,&target,NOW,Some(e));
    assert!(result.is_err(),"noncanonical consumed migration evidence committed: {result:?}");
    assert_eq!(format!("{:?}",s.backend()),before);
}
#[test]
fn valid_structural_evidence_keeps_commit_recovery_and_replay() {
    let (m,mut s,b,e)=action_case();let start=s.current_history().unwrap();let b=b.with_evidence(e);
    let first=s.commit(&m,&start.state_ref(),&b).unwrap();let retry=s.commit(&m,&start.state_ref(),&b).unwrap();assert!(retry.already);assert_eq!(first.record_id,retry.record_id);
    let end=s.current_history().unwrap();assert!(behavior_store::replay::replay_data(&s,&start.state_ref(),&end.state_ref()).ok);
    let (source,target,m,mut s,e)=migration_case();let start=s.current_history().unwrap();s.migrate(&m,&source,&target,NOW,Some(e)).unwrap();let end=s.current_history().unwrap();assert!(behavior_store::replay::replay_data(&s,&start.state_ref(),&end.state_ref()).ok);
}
