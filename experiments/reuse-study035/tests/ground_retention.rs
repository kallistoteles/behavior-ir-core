use reuse_study035::{ground::Ground,reference,error::Result};
#[test]fn retention_is_real_under_same_capture_backend()->Result<()>{
 let mut g=Ground::supplied(reference::parent("growth-D1")?);g.check(super::checked()?,&super::expected()?)?;
 let h=g.history()?;g.select_retention(true)?;
 assert!(g.selected_retained(),"G1 must retain genuinely checked engine facts");
 g.select_retention(false)?;assert!(!g.selected_retained());assert_eq!(h,g.history()?);
 Ok(())
}
#[test]fn wrong_expected_parent_cannot_establish()->Result<()>{
 let mut g=Ground::supplied(reference::parent("growth-D1")?);let mut wrong=super::expected()?;
 wrong["parent"]["position"]=serde_json::json!(7);
 assert!(g.check(super::checked()?,&wrong).is_err(),"wrong history cannot establish authority");Ok(())
}

#[test]fn changed_policy_and_lost_writer_are_not_reusable()->Result<()>{
 let mut g=Ground::supplied(reference::parent("growth-D1")?);let mut wrong=super::expected()?;
 wrong["policy_set_hash"]=serde_json::json!("wrong");
 assert!(g.check(super::checked()?,&wrong).is_err());
 g.check(super::checked()?,&super::expected()?)?;g.revoke_writer();
 assert!(g.invoke(&reference::request("finish")).is_err());Ok(())
}

#[test]fn actual_pass_counts_differ_but_entire_outputs_match()->Result<()>{
 let expected=super::expected()?;let mut outputs=vec![];let mut counts=vec![];
 for retain in [false,true]{
  let mut g=Ground::supplied(reference::parent("growth-D1")?);g.check(super::checked()?,&expected)?;g.set_work(true);let before=g.work_counts();
  g.select_retention(retain)?;let result=g.invoke(&reference::request("finish"))?;
  reuse_study035::observation::compare(&result,&expected["expected"])?;
  let after=g.work_counts();counts.push(after.0-before.0);outputs.push(result);
  let drain=g.invoke(&reference::request("finish"))?;reuse_study035::observation::compare(&drain,&expected["drain_expected"])?;
 }
 assert_eq!(outputs[0],outputs[1]);assert!(counts[0]>counts[1],"G must remove a real full pass: {counts:?}");Ok(())
}

#[test]fn invalid_start_cannot_be_blessed_by_matching_report()->Result<()>{
 use reuse_study035::fixtures;
 let mut p=reference::parent("growth-D1")?;
 p.store=fixtures::store_with(&p.module,vec![fixtures::parent("p0000","Gone"),fixtures::child("c0000","p0000","Active")],reuse_study035::capture::Capture::default())?;
 p.origin=p.store.current_history().map_err(reuse_study035::error::library)?;p.requests.clear();
 let mut expected=super::expected()?;expected["parent"]=p.origin.as_json();expected["parent_packet"]=serde_json::to_value(p.store.backend().packet()?)?;
 expected["claimed_valid"]=serde_json::json!(true);
 let mut g=Ground::supplied(p);assert!(g.check(super::checked()?,&expected).is_err());
 assert!(g.invoke(&reference::request("finish")).is_err());Ok(())
}

#[test]fn full_subject_and_same_content_other_history_are_rejected()->Result<()>{
 for variant in ["module_metadata","history_record","weak_policy","changed_profile"]{
  let mut p=reference::parent("growth-D1")?;let mut expected=super::expected()?;
  match variant {
   "module_metadata"=>{let mut wire:serde_json::Value=serde_json::from_str(expected["module"].as_str().ok_or(reuse_study035::error::StudyError::Prerequisite("ExpectedModule"))?)?;wire["actions"][0]["loc"]["file"]=serde_json::json!("changed.rs");expected["module"]=serde_json::Value::String(wire.to_string());},
   "history_record"=>{expected["parent"]["record"]=serde_json::json!("sha256:0000000000000000000000000000000000000000000000000000000000000000");},
   "weak_policy"=>{p.analysis=reuse_study035::fixtures::analysis(&p.module,true)?;expected["policy_set_hash"]=serde_json::json!(p.analysis.policy_set_hash());},
   "changed_profile"=>{p.module=reuse_study035::fixtures::module(true,false)?;p.analysis=reuse_study035::fixtures::analysis(&p.module,false)?;expected["module"]=serde_json::json!(behavior_engine::serialize::to_wire_json(&p.module));expected["policy_set_hash"]=serde_json::json!(p.analysis.policy_set_hash());},
   _=>unreachable!(),
  }
  let mut ground=Ground::supplied(p);assert!(ground.check(super::checked()?,&expected).is_err(),"{variant}");
  assert!(ground.invoke(&reference::request("finish")).is_err());
 }
 Ok(())
}
