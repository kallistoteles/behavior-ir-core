//! Actual original Core fallback controls on distinct modules. No unchecked
//! Safety-program ground is minted for these variants or confused with LD8.
use reuse_study035::{capture::Capture,error::{Result,StudyError,library},fixtures,reference,observation};
use serde_json::{Value,json};
fn loc()->Value{json!({"file":"fallback-controls035.rs","line":1})}
fn integer(n:i64)->Value{json!({"op":"lit","type":{"t":"int"},"value":n,"loc":loc()})}
fn boolean(v:bool)->Value{json!({"op":"lit","type":{"t":"bool"},"value":v,"loc":loc()})}
fn op(name:&str,args:Vec<Value>)->Value{json!({"op":name,"args":args,"loc":loc()})}
fn changed_module(kind:&str)->Result<behavior_engine::semantic::Module>{
 let mut wire:Value=serde_json::from_str(include_str!("../expected/ld8-module.json"))?;
 let count=op("count",vec![json!({"op":"select","entity":"Child","loc":loc()})]);
 if kind=="count"||kind=="global"{
  wire["invariants"]=json!([{"name":"population","body":if kind=="count"{op("le",vec![count,integer(1)])}else{op("ge",vec![count,integer(0)])},"loc":loc()}]);
 }else{
  let overflow=op("eq",vec![op("sub",vec![op("add",vec![integer(i64::MAX),integer(1)]),integer(1)]),integer(i64::MAX)]);
  let divide=op("eq",vec![op("div",vec![integer(1),integer(0)]),integer(0)]);
  let guards=match kind{
   "overflow"=>vec![overflow],"two-overflow-first"=>vec![overflow,divide],"two-divide-first"=>vec![divide,overflow],
   "short-circuit"=>vec![op("and",vec![boolean(false),divide])],
   _=>return Err(StudyError::Prerequisite("UnknownFallbackControl")),
  };
  let action=wire["actions"].as_array_mut().ok_or(StudyError::Prerequisite("WireActions"))?.iter_mut().find(|v|v["name"]=="finish").ok_or(StudyError::Prerequisite("WireFinish"))?;
  action["preconditions"]=Value::Array(guards.into_iter().map(|expr|json!({"expr":expr,"loc":loc()})).collect());
 }
 behavior_engine::admit(&wire.to_string()).map_err(library)
}
fn actual_core(module:&behavior_engine::semantic::Module,prepared_requested:bool,requests:&[Value])->Result<Vec<Value>>{
 let analysis=fixtures::analysis(module,false)?;
 let mut store=fixtures::store_with(module,vec![fixtures::parent("p0000","Open"),fixtures::child("c0000","p0000","Active")],Capture::default())?;
 store.research035_set_work(true);store.research035_use_prepared(prepared_requested);
 let mut out=vec![];
 for request in requests{
  let before=store.current_history().map_err(library)?;
  let invocation=fixtures::invoke_request(&store,module,request)?;
  let inner=invocation.record.inner_record().cloned();
  let mut args=Value::Null;
  if let Some(bundle)=&invocation.bundle{store.commit(module,&store.current().map_err(library)?,bundle).map_err(library)?;args=serde_json::to_value(store.backend().last_call())?;}
  let after=store.current_history().map_err(library)?;
  let properties=behavior_models::safety::snapshot::validate_store_snapshot(module,&analysis,&store,&after);
  out.push(json!({"invocation":invocation.record.as_json(),"inner":inner,"bundle":invocation.bundle,"commit_arguments":args,
    "before_history":before.as_json(),"after_history":after.as_json(),"post_state":reference::state_facts(&store,module)?,"original_property_outcomes":{"status":properties.status()}}));
 }
 assert_eq!(store.research035_prepared_calls(),0,"different full subject must take ordinary fresh Core even if the accelerator was requested");
 Ok(out)
}
#[test]fn count_boundary_and_unknown_global_are_exact_fallback()->Result<()>{
 for kind in ["count","global"]{
  let module=changed_module(kind)?;let create=json!({"format":"behavior.invocation.v1","capability":"create_child","bindings":{"p":{"entity":"Parent","id":"p0000"}},"input":{"new_id":"c0001"},"context":{}});
  let requests=[reference::request("finish"),create];let ordinary=actual_core(&module,false,&requests)?;let requested=actual_core(&module,true,&requests)?;
  observation::compare(&json!(ordinary),&json!(requested))?;
  assert_eq!(ordinary[0]["inner"]["result"],"ALLOW");
  if kind=="count"{assert!(ordinary[1]["bundle"].is_null(),"count at one must refuse the second member");assert_eq!(ordinary[1]["after_history"],ordinary[1]["before_history"]);}else{assert!(!ordinary[1]["bundle"].is_null());}
 }Ok(())
}
#[test]fn first_error_short_circuit_and_intermediate_overflow_are_original()->Result<()>{
 for kind in ["overflow","two-overflow-first","two-divide-first","short-circuit"]{
  let module=changed_module(kind)?;let requests=[reference::request("finish")];let ordinary=actual_core(&module,false,&requests)?;let requested=actual_core(&module,true,&requests)?;
  observation::compare(&json!(ordinary),&json!(requested))?;
  let inner=&ordinary[0]["inner"];assert_eq!(inner["result"],if kind=="short-circuit"{"DENY"}else{"ERROR"});
  let reasons=inner["reasons"].to_string().to_lowercase();
  if kind=="two-divide-first"{assert!(reasons.contains("zero"),"{reasons}");}else if kind!="short-circuit"{assert!(reasons.contains("overflow"),"intermediate overflow must precede any representable final value: {reasons}");}
  assert!(ordinary[0]["bundle"].is_null());assert_eq!(ordinary[0]["after_history"],ordinary[0]["before_history"]);
 }Ok(())
}

#[test]fn changed_context_and_actual_binding_errors_have_original_refusal()->Result<()>{
 use reuse_study035::ground::Ground;
 let expected=super::expected()?;let mut candidate=Ground::supplied(reference::parent("growth-D1")?);candidate.check(super::checked()?,&expected)?;candidate.enable_views(true)?;candidate.select_retention(true)?;candidate.set_work(true);
 let mut original=reference::parent("growth-D1")?;
 let mut context=reference::request("finish");context["context"]=json!({"unexpected":1});
 let mut missing=reference::request("activate");missing["bindings"]["p"]["id"]=json!("missing-parent");
 for request in [context,missing]{
  let a=candidate.invoke(&request)?;let b=reference::step(&mut original.store,&original.module,&original.analysis,&request)?;observation::compare(&a,&b)?;
  assert!(a["bundle"].is_null());assert_eq!(a["before_history"],a["after_history"]);
 }
 assert_eq!(candidate.diagnostics()["fresh_prepared_invocations"],0);Ok(())
}
#[test]fn ld8c_requires_own_program_and_preserves_ordered_duplicate_commands()->Result<()>{
 use reuse_study035::ground::{Ground,Status};
 let module=fixtures::module(true,false)?;let analysis=fixtures::analysis(&module,false)?;
 let store=fixtures::store_with(&module,vec![fixtures::parent("p0000","Open"),fixtures::child("c0000","p0000","Active")],Capture::default())?;
 let origin=store.current_history().map_err(library)?;
 let request=json!({"format":"behavior.invocation.v1","capability":"tick","bindings":{},"input":{},"context":{}});
 let expected=json!({"module":behavior_engine::serialize::to_wire_json(&module),"policy_set_hash":analysis.policy_set_hash(),"parent":origin.as_json(),"parent_packet":store.backend().packet()?,"request":request});
 let parent=reference::Parent{module,analysis,store,origin:origin.clone(),requests:vec![]};
 let mut candidate=Ground::supplied(parent);assert!(candidate.check(super::checked()?,&expected).is_err(),"LD8 certificate cannot authorize LD8C");
 candidate.check(super::checked_commands()?,&expected)?;candidate.enable_views(true)?;candidate.select_retention(true)?;candidate.set_work(true);
 let result=candidate.invoke(&request)?;assert_eq!(candidate.status(),Status::Established);
 assert_eq!(result["before_history"]["state"],result["after_history"]["state"]);assert_ne!(result["before_history"],result["after_history"]);
 assert_eq!(candidate.diagnostics()["fresh_prepared_invocations"],0);assert_eq!(candidate.diagnostics()["fallback_invalidations"],1);
 let raw=candidate.into_unverified();let after=raw.store.current_history().map_err(library)?;
 let query=behavior_engine::store::commands::CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":origin.as_json(),"through":after.as_json(),"max_records":1}).to_string()).map_err(library)?;
 let page=raw.store.commands_since(&query).map_err(library)?;
 assert_eq!(page.items().len(),2);let a=&page.items()[0];let b=&page.items()[1];
 assert_eq!(a.intent(),b.intent());assert_eq!(a.multiplicity_index(),0);assert_eq!(b.multiplicity_index(),1);
 assert_ne!(a.command_occurrence_id(),b.command_occurrence_id());Ok(())
}
