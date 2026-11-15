//! Fixed authored growth corpus; public Core remains the sole evaluator.
use crate::{arrangements::Coordinator,capture::Capture,consumer_worker,fixtures,history_check::{Attempt,Expected},io,lifecycle,error::{Result,StudyError,library},safety_check};
use behavior_engine::{semantic::Module,store::{Store,documents::HistoryRef}};
use behavior_models::safety::{UncertifiedSafetyAnalysis,evidence::UnverifiedSafetyBundle,snapshot::validate_store_snapshot};
use serde_json::{Value,json};
use sha2::{Digest,Sha256};
use std::{path::Path,time::Instant};
fn cell(case:&str)->Result<(usize,u64)>{match case{"growth-D1"=>Ok((1,8)),"growth-D2"=>Ok((32,8)),"growth-D3"=>Ok((128,8)),"growth-D4"=>Ok((1,32)),"growth-D5"=>Ok((1,128)),"growth-D6"=>Ok((128,128)),_=>Err(StudyError::InvalidInput("UnknownGrowthCell".into()))}}
fn request(action:&str)->Value{json!({"format":"behavior.invocation.v1","capability":action,"bindings":if action=="activate"{json!({"c":{"entity":"Child","id":"c0000"},"p":{"entity":"Parent","id":"p0000"}})}else{json!({"c":{"entity":"Child","id":"c0000"}})},"input":{},"context":{}})}
struct Parent{module:Module,analysis:UncertifiedSafetyAnalysis,store:Store<Capture>,origin:HistoryRef,requests:Vec<Value>,attempts:Vec<Attempt>}
fn apply(store:&mut Store<Capture>,module:&Module,request:&Value)->Result<(Attempt,Value)>{
 let before=store.current_history().map_err(library)?;let inv=fixtures::invoke_request(store,module,request)?;let candidate=json!({"invocation":inv.record.as_json(),"bundle":inv.bundle});
 let bundle=inv.bundle.as_ref().ok_or(StudyError::Prerequisite("GrowthPreparationUnexpectedRefusal"))?;
 store.commit(module,&store.current().map_err(library)?,bundle).map_err(library)?;let after=store.current_history().map_err(library)?;
 Ok((Attempt{invocation:inv.record.as_json().clone(),before,after,committed:true},candidate))
}
fn prepare_parent(case:&str)->Result<Parent>{
 let(p,h)=cell(case)?;let module=fixtures::module(false,false)?;let analysis=fixtures::analysis(&module,false)?;
 let mut seed=vec![];for i in 0..p{let parent=format!("p{i:04}");let child=format!("c{i:04}");seed.push(fixtures::parent(&parent,"Open"));seed.push(fixtures::child(&child,&parent,"Active"));}
 let mut store=fixtures::store_with(&module,seed,Capture::default())?;let origin=store.current_history().map_err(library)?;let mut requests=vec![];let mut attempts=vec![];
 for i in 0..h{let r=request(if i%2==0{"finish"}else{"activate"});let(a,_)=apply(&mut store,&module,&r)?;requests.push(r);attempts.push(a);}
 let parent=store.current_history().map_err(library)?;
 if parent.position!=h||validate_store_snapshot(&module,&analysis,&store,&parent).status()!="Valid"{return Err(StudyError::Prerequisite("GrowthParentInvalid"));}
 Ok(Parent{module,analysis,store,origin,requests,attempts})
}
pub fn reference(case:&str)->Result<Value>{
 let(p,h)=cell(case)?;let mut base=prepare_parent(case)?;let parent=base.store.current_history().map_err(library)?;let before=lifecycle::state_facts(&base.store,&base.module)?;
 let r=request("finish");let(a,candidate)=apply(&mut base.store,&base.module,&r)?;base.requests.push(r);base.attempts.push(a);let endpoint=base.store.current_history().map_err(library)?;let after=lifecycle::state_facts(&base.store,&base.module)?;
 let run=json!({"attempts":base.attempts});let packet=consumer_worker::packet(&base.store,&base.module,&base.analysis,&run)?;
 if packet.backend.commits.last().is_none_or(|c|c.versions.len()!=1)||endpoint.position!=h+1||after["children"]["c0000"]["phase"]!="Terminal"{return Err(StudyError::Prerequisite("AuthoredGrowthChangeMismatch"));}
 Ok(json!({"format":"core034.growth-reference.v1","case_id":case,"P":p,"N":2*p,"H":h,"D":1,"origin":base.origin.as_json(),"parent":parent.as_json(),"endpoint":endpoint.as_json(),"behavior":base.module.behavior_version(),"policy_set_hash":base.analysis.policy_set_hash(),"requests":base.requests,"attempts":run["attempts"],"before_facts":before,"after_facts":after,"candidate":candidate,"packet":packet,"scope":"Distinct seeded growth subject; no pre-genesis history. Authored facts, full native records share pinned public Core oracle."}))
}
fn hash(path:&Path)->Result<String>{Ok(format!("{:x}",Sha256::digest(io::read_bytes(path,crate::artifacts::DOCUMENT_BOUND)?)))}
pub fn produce(prepared:&Path,case:&str,out:&Path)->Result<i32>{
 let(p,h)=cell(case)?;let v=io::read(prepared)?;consumer_worker::validate_prepared(&v)?;
 let module=fixtures::module(false,false)?;let analysis=fixtures::analysis(&module,false)?;
 if v["behavior"]!=module.behavior_version()||v["policy_set_hash"]!=analysis.policy_set_hash(){return Err(StudyError::Prerequisite("GrowthSubjectMismatch"));}
 let bundle=UnverifiedSafetyBundle::from_json(&consumer_worker::bound_json(&v,"bundle","bundle_sha256",crate::artifacts::DOCUMENT_BOUND)?).map_err(library)?;
 std::fs::create_dir(out)?;let start=Instant::now();let(record,program)=safety_check::recheck(&module,&analysis,&bundle,&out.join("program-check"))?;io::write(&out.join("program-check.json"),&record)?;
 let Some(program)=program else{return Ok(if safety_check::exhausted(&record){3}else{1});};let program_ns=start.elapsed().as_nanos().min(u64::MAX as u128)as u64;
 let reference_start=Instant::now();let oracle=reference(case)?;let oracle_path=out.join("reference.json");io::write(&oracle_path,&oracle)?;let oracle_hash=hash(&oracle_path)?;let reference_ns=reference_start.elapsed().as_nanos().min(u64::MAX as u128)as u64;
 let mut samples=vec![];
 for rep in 1..=3{
  let directory=out.join(format!("rep-{rep}"));std::fs::create_dir(&directory)?;
  let preparation_start=Instant::now();let base=prepare_parent(case)?;let parent=base.store.current_history().map_err(library)?;
  if parent.as_json()!=oracle["parent"]{return Err(StudyError::Prerequisite("NonidenticalPreparedParent"));}
  let mut coordinator=Coordinator::new(base.store);let validity=coordinator.activate(&base.module,&base.analysis,&program)?;
  let preparation_ns=preparation_start.elapsed().as_nanos().min(u64::MAX as u128)as u64;
  let operation_start=Instant::now();let incoming=request("finish");
  let inv=coordinator.invoke(&base.module,&base.analysis,"finish",incoming["bindings"].clone(),incoming["input"].clone())?;
  let endpoint=coordinator.store().current_history().map_err(library)?;let candidate=json!({"invocation":inv.record.as_json(),"bundle":inv.bundle});
  let response=json!({"format":"core034.A-operation.v1","parent":parent.as_json(),"endpoint":endpoint.as_json(),"candidate":candidate,"authority":"explicit_trust: exact program, valid boundary and all-writer single coordinator; native Core implementation/correspondence","certified_interval":{"from":h,"through":h+1},"Q6":"unestablished: memory only","product_adoption":"unactivated"});
  io::write(&directory.join("operation.json"),&response)?;
  let operation_ns=operation_start.elapsed().as_nanos().min(u64::MAX as u128)as u64;
  if endpoint.as_json()!=oracle["endpoint"]||candidate!=oracle["candidate"]{return Err(StudyError::Prerequisite("GrowthCompleteObservationMismatch"));}
  let mut attempts=base.attempts;attempts.push(Attempt{invocation:inv.record.as_json().clone(),before:parent.clone(),after:endpoint.clone(),committed:true});
  let packet=consumer_worker::packet(coordinator.store(),&base.module,&base.analysis,&json!({"attempts":attempts}))?;
  if serde_json::to_value(&packet)?!=oracle["packet"]{return Err(StudyError::Prerequisite("GrowthCapturedArgumentMismatch"));}
  let packet_path=directory.join("packet.json");io::write(&packet_path,&serde_json::to_value(&packet)?)?;
  let mut fresh=v.clone();fresh["consumer_role"]=json!("fresh");fresh["variant"]=json!("LD8");fresh["oracle"]=json!(oracle_path);fresh["oracle_sha256"]=json!(oracle_hash);io::write(&directory.join("fresh-prepared.json"),&fresh)?;
  let mut prefix=packet;prefix.backend.commits.pop();prefix.attempts.pop();let prefix_path=directory.join("prefix-packet.json");io::write(&prefix_path,&serde_json::to_value(&prefix)?)?;
  let expected=Expected{variant:"LD8".into(),behavior:base.module.behavior_version(),policy_set_hash:base.analysis.policy_set_hash().into(),origin:base.origin,endpoint:parent.clone(),requests:base.requests,require_safety:true};
  let mut resident=fresh;resident["consumer_role"]=json!("resident");resident["resident"]=json!({"prefix_packet":prefix_path,"prefix_packet_sha256":hash(&prefix_path)?,"expected_prefix":expected,"request":incoming,"endpoint":endpoint.as_json()});io::write(&directory.join("resident-prepared.json"),&resident)?;
  io::write(&directory.join("candidate.json"),&json!({"request":incoming,"candidate":candidate,"parent":parent.as_json(),"endpoint":endpoint.as_json()}))?;
  samples.push(json!({"repetition":rep,"P":p,"N":2*p,"H":h,"D":1,"parent":parent.as_json(),"endpoint":endpoint.as_json(),"preparation_ns":preparation_ns,"operation_ns":operation_ns,"activation":validity,"operation_scope":"embedded caller request construction through actual evaluation, memory commit, original response/assurance-sidecar creation and closed persisted research response; no physical durability","prefix_scope":"A certified segment starts at validated H; seeded origin and H ordinary preparation operations are separately charged and available for full B checking","packet_bytes":std::fs::metadata(&packet_path)?.len(),"internal_query_visits":Value::Null,"internal_query_visits_reason":"Not exposed by the pinned public interface"}));
 }
 io::write(&out.join("worker-result.json"),&json!({"format":"core034.worker-result.v1","operation":"produce","case":case,"role":"A-series","operational":"completed","assurance":"established_under_premises","program_check_ns":program_ns,"reference_preparation_ns":reference_ns,"reference":"reference.json","samples":samples,"statistics":"three raw observations; medians/ranges only, no percentile assertion","full_role_scope":"supervisor includes launch, program proof checking, reference/parent preparation, original exports, output completion and resources","Q6":"unestablished: memory only","product_adoption":"unactivated"}))?;
 println!("{}",json!({"format":"core034.summary.v1","operation":"produce","case":case,"operational":"completed","assurance":"established_under_premises","Q6":"unestablished","product_adoption":"unactivated"}));Ok(0)
}
