#![allow(clippy::unwrap_used)]
//! Public facade history controls; no new authoritative cache or backend contract.
use behavior_engine as core_api;
use behavior_engine::store::{Backend, InMemoryBackend, Store};
use behavior_engine::store::documents::HistoryRef;
use behavior_engine::store::commands::CommandStreamRequest;
use behavior_engine::verify::governance::EvidencePolicyV2;
use serde_json::{Value as Json,json};
use std::collections::BTreeMap;
#[path="support/commands.rs"]mod model;
#[path="support/durable_backend.rs"]mod host;
const NOW:&str="2026-10-28T00:00:00Z";
fn module()->core_api::semantic::Module {
    let mut w=model::command_only_module(true);
    let e=w["actions"][0]["command_effects"][0].clone();w["actions"][0]["command_effects"]=json!([e.clone(),e.clone(),e]);
    core_api::admit(&w.to_string()).unwrap()
}
fn policy()->EvidencePolicyV2 {EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap()}
fn candidate<B:Backend>(s:&Store<B>,m:&core_api::semantic::Module,recipient:&str)->behavior_engine::store::documents::CommitBundle {
 s.evaluate(m,"receipt",&BTreeMap::new(),&json!({"recipient":recipient}),&json!({}),NOW,None).unwrap().bundle.unwrap()
}
fn request(after:&HistoryRef,through:&HistoryRef)->CommandStreamRequest {CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":after,"through":through,"max_records":1}).to_string()).unwrap()}
#[test]
fn page_limit_counts_whole_events_not_command_occurrences_and_pins_history() {
 let m=module();let mut s=Store::create(InMemoryBackend::new(),&m,behavior_engine::store::store::genesis_v2_for(&m,policy(),vec![]).unwrap()).unwrap();
 let start=s.current_history().unwrap();
 for _ in 0..3 {let b=candidate(&s,&m,"same");assert!(!s.commit(&m,&b.evaluated_state,&b).unwrap().already);}
 let end=s.current_history().unwrap();assert_eq!(start.state,end.state);assert_ne!(start.record,end.record);assert_ne!(start.position,end.position);
 let mut after=start.clone();let mut ids=std::collections::BTreeSet::new();
 for position in 1..=3 {
  let p=s.commands_since(&request(&after,&end)).unwrap();assert_eq!(p.items().len(),3);assert_eq!(p.observed_head(),&end);assert_eq!(p.next_after().position,position);assert_eq!(p.complete(),position==3);
  for (index,item) in p.items().iter().enumerate(){assert_eq!(item.history_position(),position);assert_eq!(item.multiplicity_index(),index as u32);assert!(ids.insert(item.command_occurrence_id().to_owned()));}
  after=p.next_after().clone();
 }
 assert_eq!(ids.len(),9);assert!(s.commands_since(&request(&end,&end)).unwrap().items().is_empty());
 let mut bad=end.clone();bad.record="sha256:".to_owned()+&"0".repeat(64);assert!(s.commands_since(&request(&start,&bad)).is_err());
 println!("CORE031_HISTORY {}",json!({"start":start,"through":end,"occurrences":ids,"whole_event_page_items":3,"same_state_different_history":true}));
}
#[test]
fn conflicting_candidates_and_original_event_retry_preserve_occurrences() {
 let m=module();let mut s=Store::create(InMemoryBackend::new(),&m,behavior_engine::store::store::genesis_v2_for(&m,policy(),vec![]).unwrap()).unwrap();
 let start=s.current_history().unwrap();let left=candidate(&s,&m,"left");let right=candidate(&s,&m,"right");
 s.commit(&m,&left.evaluated_state,&left).unwrap();let end=s.current_history().unwrap();let p=s.commands_since(&request(&start,&end)).unwrap();
 assert_eq!(s.commit(&m,&right.evaluated_state,&right).unwrap_err().code(),"STATE_CONFLICT");assert!(s.commit(&m,&left.evaluated_state,&left).unwrap().already);
 assert_eq!(p,s.commands_since(&request(&start,&end)).unwrap());assert_eq!(s.current_history().unwrap(),end);
}
#[test]
fn corrupt_or_missing_historical_support_never_returns_a_successful_page() {
 let m=module();
 for mode in ["missing-record","changed-record"] {
  let root=std::env::temp_dir().join(format!("core031-history-{}-{}-{mode}",std::process::id(),std::time::SystemTime::now().duration_since(std::time::UNIX_EPOCH).unwrap().as_nanos()));
  std::fs::create_dir(&root).unwrap();
  let mut s=Store::create(host::DurableBackend::open(&root).unwrap(),&m,behavior_engine::store::store::genesis_v2_for(&m,policy(),vec![]).unwrap()).unwrap();
  let start=s.current_history().unwrap();for _ in 0..2 {let b=candidate(&s,&m,"same");s.commit(&m,&b.evaluated_state,&b).unwrap();}let end=s.current_history().unwrap();
  let path=root.join("store.json");let mut data:Json=serde_json::from_slice(&std::fs::read(&path).unwrap()).unwrap();
  if mode=="missing-record" {data["records"].as_array_mut().unwrap().remove(0);}else{data["records"][0]["bundle"]["record"]["result"]=json!("DENY");}
  std::fs::write(&path,serde_json::to_vec(&data).unwrap()).unwrap();
  assert!(s.commands_since(&request(&start,&end)).is_err(),"{mode} must not become a verified empty page");drop(s);std::fs::remove_dir_all(root).unwrap();
 }
}
