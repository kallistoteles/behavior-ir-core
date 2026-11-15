//! Fixed named research controls; no supplied source/program is executed.
use crate::{arrangements::Coordinator,artifacts::{DOCUMENT_BOUND,PACKET_BOUND},consumer_worker::{bound_json,expected},error::{Result,StudyError,library},fixtures,history_check::{self,HistoryPacket},io,safety_check};
use behavior_models::safety::{evidence::UnverifiedSafetyBundle,snapshot::{validate_store_snapshot,inspect_snapshot}};
use behavior_engine::store::Store;
use serde_json::{Value,json};
use std::{path::Path,time::Instant};
fn baseline(v:&Value)->Result<(HistoryPacket,history_check::Expected)>{
 let packet:HistoryPacket=serde_json::from_value(bound_json(v,"packet","packet_sha256",PACKET_BOUND)?)?;let expected=expected(v)?;
 history_check::check(&packet,&expected)?;Ok((packet,expected))
}
fn rejected(p:&HistoryPacket,e:&history_check::Expected)->Result<String>{match history_check::check(p,e){Err(error)=>Ok(error.to_string()),Ok(_)=>Err(StudyError::Prerequisite("UnexpectedAcceptance"))}}
pub fn run(prepared:&Path,id:&str,out:&Path)->Result<i32>{
 let start=Instant::now();let v=io::read(prepared)?;crate::consumer_worker::validate_prepared(&v)?;
 if v["format"]!="core034.prepared-worker.v1"||!matches!(id,"E01"|"E02"|"E03"|"E04"|"E05"|"E06"|"E07"|"E08"|"E09"|"E10"|"E11"|"E12"|"E13"|"E14"|"E15"){return Err(StudyError::Prerequisite("UnsupportedControlOrPreparedVersion"));}
 std::fs::create_dir(out)?;
 let mut result_kind="targeted_rejection";
 let details=match id{
 "E01"=>{
  let m=fixtures::module(false,false)?;let a=fixtures::analysis(&m,false)?;
  let good=fixtures::store(&m,vec![fixtures::parent("p","Open"),fixtures::child("c","p","Active")])?;
  let bad=fixtures::store(&m,vec![fixtures::parent("p","Gone"),fixtures::child("c","p","Active")])?;
  let valid=validate_store_snapshot(&m,&a,&good,&good.current_history().map_err(library)?);let invalid=validate_store_snapshot(&m,&a,&bad,&bad.current_history().map_err(library)?);
  if valid.status()!="Valid"||invalid.status()!="Invalid"{return Err(StudyError::Prerequisite("UnexpectedStartValidation"));}
  json!({"valid_control":valid.to_json(),"mutant":invalid.to_json(),"reason":"Actual original relation fails at incoming boundary"})
 },
 "E02"=>{
  let(p,e)=baseline(&v)?;let store=crate::capture::reconstruct(&p.backend)?;let m=fixtures::module(false,false)?;let a=fixtures::analysis(&m,false)?;
  let export=store.export_seed_at(&m,&e.endpoint).map_err(library)?;let detached=inspect_snapshot(&m,&a,&export);let imported=fixtures::store(&m,export.seed)?;let adopted=imported.current_history().map_err(library)?;
  if detached.status()!="Unestablished"||adopted==e.endpoint{return Err(StudyError::Prerequisite("SnapshotInheritedUncheckedPrefix"));}
  json!({"valid_control":"Actual original prefix independently checked from accepted origin","original_endpoint":e.endpoint.as_json(),"detached":detached.to_json(),"adopted_genesis":adopted.as_json(),"reason":"A new genesis/state validation does not establish original position eight; equal deterministic genesis IDs do not transfer a prefix"})
 },
 "E03"=>{
  let(p,e)=baseline(&v)?;let mut omitted=p.clone();let fields=omitted.policies.as_mut().and_then(Value::as_array_mut).ok_or(StudyError::Prerequisite("MissingPolicyControl"))?;fields.pop();let policy_error=rejected(&omitted,&e)?;
  let mut action=p.clone();let mut transport:Value=serde_json::from_str(&action.module)?;
  // Transport mutation only; public Core re-admission owns interpretation.
  let actions=transport["actions"].as_array_mut().ok_or(StudyError::Prerequisite("ActionTransportControlUnsupported"))?;actions.pop();action.module=transport.to_string();let action_error=rejected(&action,&e)?;
  json!({"valid_control":"Full exact module/policies/requests and original prefix actually rechecked","omitted_policy":policy_error,"omitted_action":action_error,"reason":"No omitted inventory item can inherit complete expected-subject authority"})
 },
 "E04"|"E15"=>{
  let m=fixtures::module(false,false)?;let a=fixtures::analysis(&m,false)?;
  let source=bound_json(&v,"bundle","bundle_sha256",DOCUMENT_BOUND)?;let bundle=UnverifiedSafetyBundle::from_json(&source).map_err(library)?;
  let(record,program)=safety_check::recheck(&m,&a,&bundle,&out.join("valid-program-check"))?;
  let Some(program)=program else{io::write(&out.join("valid-program-check.json"),&record)?;return Ok(if safety_check::exhausted(&record){3}else{1});};
  if id=="E04"{
   let cm=fixtures::module(true,false)?;let ca=fixtures::analysis(&cm,false)?;let weak=fixtures::analysis(&m,true)?;
   if program.matches(&cm,&ca)||program.matches(&m,&weak){return Err(StudyError::Prerequisite("OtherSubjectInheritedCertificate"));}
   let(wrong,capability)=safety_check::recheck(&cm,&ca,&bundle,&out.join("wrong-program-check"))?;
   if capability.is_some()||wrong["outcome"]!="Failed"{return Err(StudyError::Prerequisite("WrongCertificateNotTargetedRejection"));}
   json!({"valid_control":record,"wrong_subject_assessment":wrong,"changed_module":"private capability mismatch","changed_policy":"private capability mismatch","reason":"Same schema or same Core state cannot transfer exact module/complete policy certificate"})
  }else{
   let mut old=source;old["evidence"]["checker_version"]=json!(0);
   let rejection=match UnverifiedSafetyBundle::from_json(&old){Err(e)=>json!({"boundary":"unverified bundle parse","code":e.code(),"detail":e.to_string()}),Ok(old_bundle)=>{let(r,c)=safety_check::recheck(&m,&a,&old_bundle,&out.join("untrusted-old-checker"))?;if c.is_some(){return Err(StudyError::Prerequisite("UntrustedOldEvidenceAccepted"));}r}};
   json!({"valid_control":record,"rejection":rejection,"scope":"Current checker refuses unsupported/untrusted substituted checker evidence; no new claim that a particular old checker has been proved unsound","remaining_gap":"No matching historical unsoundness reproducer is supplied; historical bytes remain unchanged"})
  }
 },
 "E05"=>{
  let m=fixtures::module(true,false)?;let a=fixtures::analysis(&m,false)?;
  let bundle=UnverifiedSafetyBundle::from_json(&bound_json(&v,"commands_bundle","commands_bundle_sha256",DOCUMENT_BOUND)?).map_err(library)?;
  let(record,program)=safety_check::recheck(&m,&a,&bundle,&out.join("fresh-command-program-check"))?;let Some(program)=program else{io::write(&out.join("program-check.json"),&record)?;return Ok(if safety_check::exhausted(&record){3}else{1});};
  let mut coordinator=Coordinator::new(fixtures::store(&m,vec![])?);let valid=coordinator.activate(&m,&a,&program)?;let before=coordinator.store().current_history().map_err(library)?;
  let old=validate_store_snapshot(&m,&a,coordinator.store(),&before);coordinator.invoke(&m,&a,"tick",json!({}),json!({}))?;let after=coordinator.store().current_history().map_err(library)?;
  if before.state!=after.state||before==after||old.matches_anchor(&m,&a,&after){return Err(StudyError::Prerequisite("StateOnlyAnchorAccepted"));}
  json!({"valid_control":valid,"fresh_complete_program":record,"before":before.as_json(),"after":after.as_json(),"old_validation":old.to_json(),"original_commands":crate::publication_controls::exercise()?["commands"],"reason":"Content state equality does not preserve the full activated history anchor"})
 },
 "E06"=>{
  let m=fixtures::module(false,false)?;let bad=fixtures::module(false,true)?;let a=fixtures::analysis(&m,false)?;
  let mut s=fixtures::store(&m,vec![fixtures::parent("p","Open"),fixtures::child("c","p","Active")])?;let before=s.current_history().map_err(library)?;let valid=validate_store_snapshot(&m,&a,&s,&before);
  let inv=fixtures::invoke(&s,&bad,"stop",json!({"p":{"entity":"Parent","id":"p"}}),json!({}))?;
  s.commit(&bad,&s.current().map_err(library)?,inv.bundle.as_ref().ok_or(StudyError::Prerequisite("BypassWasNotCoreAllowed"))?).map_err(library)?;
  let after=s.current_history().map_err(library)?;let invalid=validate_store_snapshot(&m,&a,&s,&after);
  if valid.status()!="Valid"||invalid.status()!="Invalid"||valid.matches_anchor(&m,&a,&after){return Err(StudyError::Prerequisite("BypassPremiseControlFailed"));}
  json!({"valid_control":valid.to_json(),"actual_bypass_invocation":inv.record.as_json(),"resulting_invalid_state":invalid.to_json(),"authority_premise":"This external direct Store handle is outside the single coordinator; the certificate does not prevent it","coordinated_race":crate::publication_controls::exercise()?["cas"],"reason":"All-writer coverage is a real host assumption, and a changed full anchor invalidates old validation"})
 },
 "E07"=>{
  let m=fixtures::module(false,false)?;let a=fixtures::analysis(&m,false)?;let mut c=Coordinator::new(fixtures::store(&m,vec![fixtures::parent("p","Open"),fixtures::child("c","p","Active")])?);
  let before=validate_store_snapshot(&m,&a,c.store(),&c.store().current_history().map_err(library)?);let target=crate::boundaries::unsafe_migration_control(&mut c,&m)?;let next_a=fixtures::analysis(&target,false)?;let after=validate_store_snapshot(&target,&next_a,c.store(),&c.store().current_history().map_err(library)?);
  if before.status()!="Valid"||after.status()!="Invalid"||c.active(){return Err(StudyError::Prerequisite("UnsafeMigrationControlFailed"));}
  json!({"valid_control":before.to_json(),"core_valid_target":after.to_json(),"active_after":c.active(),"scope":"This primitive starts inactive; the primary A integration separately checks active-to-inactive migration","reason":"Core target validity is weaker than the incoming original Safety relation"})
 },
 "E08"|"E12"=>{
  let(p,e)=baseline(&v)?;
  if id=="E08"{
   let m=fixtures::module(false,false)?;let store=crate::capture::reconstruct(&p.backend)?;
   let wanted_request=json!({"format":"behavior.invocation.v1","capability":"create_parent","bindings":{},"input":{"new_id":"wanted-safe-parent"},"context":{}});
   let unrelated_request=json!({"format":"behavior.invocation.v1","capability":"create_parent","bindings":{},"input":{"new_id":"unrelated-safe-parent"},"context":{}});
   let wanted=fixtures::invoke_request(&store,&m,&wanted_request)?;let unrelated=fixtures::invoke_request(&store,&m,&unrelated_request)?;
   let wanted_candidate=json!({"invocation":wanted.record.as_json(),"bundle":wanted.bundle});let unrelated_candidate=json!({"invocation":unrelated.record.as_json(),"bundle":unrelated.bundle});
   let mut wanted_store=Store::open(store.backend().clone()).map_err(library)?;wanted_store.commit(&m,&wanted_store.current().map_err(library)?,wanted.bundle.as_ref().ok_or(StudyError::Prerequisite("WantedControlNotAllowed"))?).map_err(library)?;let wanted_end=wanted_store.current_history().map_err(library)?;
   let mut unrelated_store=Store::open(store.backend().clone()).map_err(library)?;unrelated_store.commit(&m,&unrelated_store.current().map_err(library)?,unrelated.bundle.as_ref().ok_or(StudyError::Prerequisite("UnrelatedControlNotAllowed"))?).map_err(library)?;
   let unrelated_analysis=fixtures::analysis(&m,false)?;let unrelated_validity=validate_store_snapshot(&m,&unrelated_analysis,&unrelated_store,&unrelated_store.current_history().map_err(library)?);if unrelated_validity.status()!="Valid"{return Err(StudyError::Prerequisite("UnrelatedOutputWasNotSafe"));}
   let valid_extension=history_check::check(&p,&e)?.extend(&wanted_request,&wanted_candidate,&e.endpoint,&wanted_end)?;
   let wrong_safe=match history_check::check(&p,&e)?.extend(&wanted_request,&unrelated_candidate,&e.endpoint,&wanted_end){Err(error)=>error.to_string(),Ok(_)=>return Err(StudyError::Prerequisite("UnrelatedSafeOutputAccepted"))};
   let error_request=json!({"format":"behavior.invocation.v1","capability":"stop","bindings":{"p":{"entity":"Parent","id":"missing-control-parent"}},"input":{},"context":{}});
   let other_error_request=json!({"format":"behavior.invocation.v1","capability":"unknown_control_capability","bindings":{},"input":{},"context":{}});
   let correct_error=fixtures::invoke_request(&store,&m,&error_request)?;let other_error=fixtures::invoke_request(&store,&m,&other_error_request)?;
   if correct_error.bundle.is_some()||other_error.bundle.is_some(){return Err(StudyError::Prerequisite("RefusalControlUnexpectedlyAllowed"));}
   let correct_error_candidate=json!({"invocation":correct_error.record.as_json(),"bundle":correct_error.bundle});let wrong_error_candidate=json!({"invocation":other_error.record.as_json(),"bundle":other_error.bundle});
   history_check::check(&p,&e)?.extend(&error_request,&correct_error_candidate,&e.endpoint,&e.endpoint)?;
   let wrong_error=match history_check::check(&p,&e)?.extend(&error_request,&wrong_error_candidate,&e.endpoint,&e.endpoint){Err(error)=>error.to_string(),Ok(_)=>return Err(StudyError::Prerequisite("WrongSelectedErrorAccepted"))};
   json!({"valid_control":valid_extension.report(),"correct_requested_output":wanted_candidate,"unrelated_state_validity":unrelated_validity.to_json(),"internally_valid_unrelated_safe_output":unrelated_candidate,"wrong_safe_result_rejection":wrong_safe,"correct_original_error":correct_error_candidate,"different_original_error":wrong_error_candidate,"wrong_error_rejection":wrong_error,"reason":"Complete actual Core output/error comparison is required, even when the supplied different computation is valid or harmless"})
  }else{let mut other=e.clone();other.endpoint.record=format!("sha256:{}","0".repeat(64));let error=rejected(&p,&other)?;
   json!({"valid_control":"Original prefix independently checked","different_expected_endpoint":error,"scope":"Exact full endpoint mutation; native tests also reject a separately generated internally valid safe branch","reason":"Internal validity or content-state equality cannot choose the expected/latest branch"})}
 },
 "E09"|"E10"=>{
  let(p,e)=baseline(&v)?;let mut s=crate::recovery::Session::default();s.supply(&json!({"verified":true,"endpoint":e.endpoint.as_json()}))?;
  if s.state()!="supplied_unverified"||crate::recovery::import_descriptor(&json!({"verified":true})).is_ok(){return Err(StudyError::Prerequisite("FlagMintedAuthority"));}
  s.check_packet(&p,&e)?;let established=s.state().to_owned();let trace=s.transitions().to_vec();let mut lost=s.restart();
  if lost.state()!="absent"||lost.extend(&json!({}),&json!({}),&e.endpoint,&e.endpoint).is_ok(){return Err(StudyError::Prerequisite("LostBasisContinued"));}
  json!({"valid_control":established,"lifecycle":trace,"restart":lost.state(),"continuation_without_basis":"refused","reason":"Transferred flags are unverified; restart/loss discards the private established capability"})
 },
 "E11"=>{
  let(mut p,mut e)=baseline(&v)?;p.policies=None;let missing=rejected(&p,&e)?;e.require_safety=false;let checked=history_check::check(&p,&e)?;
  json!({"valid_control":"Original complete-policy prefix checked","missing_historical_safety":missing,"core_only_replay":checked.report(),"reason":"Ordinary state/behavior replay remains possible without minting a historical Safety claim from missing material"})
 },
 "E13"=>{
  if v["control_variant"]=="interrupt_after_commit"{
   let m=fixtures::module(true,false)?;let mut s=fixtures::store(&m,vec![])?;let inv=fixtures::invoke(&s,&m,"tick",json!({}),json!({}))?;s.commit(&m,&s.current().map_err(library)?,inv.bundle.as_ref().ok_or(StudyError::Prerequisite("NoInterruptCandidate"))?).map_err(library)?;
   io::write(&out.join("committed-memory-marker.json"),&json!({"stage":"memory_commit_before_application_ack","history":s.current_history().map_err(library)?.as_json(),"durability":"unestablished: memory only"}))?;
   println!("{}",json!({"stage":"memory_commit_before_application_ack","application_ack":false}));std::thread::sleep(std::time::Duration::from_secs(30));return Err(StudyError::Prerequisite("ExpectedControlledInterruptionNotApplied"));
  }
  crate::publication_controls::exercise()?
 },
 "E14"=>{
  if v["control_variant"]=="bounded_wait"{std::thread::sleep(std::time::Duration::from_secs(30));return Err(StudyError::Prerequisite("ExpectedResourceStopNotApplied"));}
  result_kind="operationally_unresolved";
  json!({"valid_control":"Native primary integration and proof checks have separate actual receipts","scope":"Exhaustion is observed in separately bounded wait/interruption role; it does not imply a business denial or a mathematical counterexample","assurance_from_exit_zero":false})
 },
 _=>return Err(StudyError::Prerequisite("UnsupportedControl"))};
 io::write(&out.join("control.json"),&json!({"format":"core034.control.v1","control_id":id,"operational":"completed","control_result":result_kind,"details":details,"global_product_assurance":"unestablished","scope":"specific bounded control under declared native implementation/host premises","work_ns_before_summary":start.elapsed().as_nanos().min(u64::MAX as u128)as u64,"product_adoption":"unactivated"}))?;
 println!("{}",json!({"format":"core034.summary.v1","operation":"control","control_id":id,"operational":"completed","assurance":"unestablished","control_result":result_kind,"product_adoption":"unactivated"}));Ok(0)
}
