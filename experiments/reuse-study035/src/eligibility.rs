//! Selector failure delegates to original Core; it never produces a refusal.
use crate::{reference::Parent,views::Views};
use behavior_engine::store::documents::HistoryRef;
use serde_json::Value;
pub(crate) fn module(parent:&Parent)->bool{
 behavior_engine::serialize::to_wire_json(&parent.module)==include_str!("../expected/ld8-module.json").trim()
 &&parent.analysis.policy_set_hash()=="sha256:dd15224cdcb1f74cf061420e0eccf15e912611503fc36b461ed231b5772ec4b5"
}
pub(crate) fn finish(parent:&Parent,views:&Views,history:&HistoryRef,request:&Value)->Option<String>{
 if !module(parent)
  ||!views.matches(history)||history.position==u64::MAX||request["format"]!="behavior.invocation.v1"
  ||request["capability"]!="finish"||request["input"]!=serde_json::json!({})||request["context"]!=serde_json::json!({}) {return None;}
 let bindings=request["bindings"].as_object()?;
 if bindings.len()!=1{return None;}
 let binding=bindings.get("c")?;if binding["entity"]!="Child"{return None;}
 let child=binding["id"].as_str()?;views.stage(child)?;Some(child.to_owned())
}
