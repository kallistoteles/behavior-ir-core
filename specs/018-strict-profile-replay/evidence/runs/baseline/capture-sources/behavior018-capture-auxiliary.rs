// Temporary test-only child of baseline read.rs; captures true original v1 query limits.
use std::path::PathBuf;
use serde_json::{Value,json};
#[test]
fn capture_018_independent_legacy_query_limits() {
 let root=PathBuf::from(std::env::var("BEHAVIOR018_FIXTURE_ROOT").unwrap());
 let manifest:Value=serde_json::from_str(&std::fs::read_to_string(root.join("matrix.json")).unwrap()).unwrap();
 for fixture in manifest["auxiliary_fixtures"].as_array().unwrap() {
  let module=crate::admit(&std::fs::read_to_string(root.join(fixture["module"].as_str().unwrap())).unwrap()).unwrap();
  let request_path=root.join(fixture["request"].as_str().unwrap());
  let mut request:Value=serde_json::from_str(&std::fs::read_to_string(&request_path).unwrap()).unwrap();
  if fixture["kind"]=="query_registry" {
   let crate::semantic::module::ReadBody::Value(expr)=module.read("inspect").unwrap().body() else {panic!("count read expected")};
   let crate::semantic::expr::ExprKind::Count(query)=expr.kind() else {panic!("count(select) expected")};
   // Independently encode a semantically consistent select membership fact.
   // No v2 record or profile is used to fabricate historical evidence.
   let definition=crate::semantic::types::hash_display(query.hash());
   let instance=crate::semantic::types::hash_display(&crate::admit::hash::query_instance(query.hash(),"[]"));
   request["facts"]["queries"]=json!([{"definition":definition,"instance":instance,"entity":"Culture","captures":[],"members":[{"id":"c1"}]}]);
  }
  std::fs::write(&request_path,serde_json::to_string_pretty(&request).unwrap()+"\n").unwrap();
  let source=super::ReadSource::Declared("inspect".into());
  let execution=super::run_version(&module,&source,&request.to_string(),None,super::READ_RECORD_FORMAT);
  assert_eq!(execution.record.result(),fixture["expected_result"].as_str().unwrap(),"{}",execution.record.to_json_string());
  let replay=super::replay_read(&module,&execution.record.to_json_string());
  assert_eq!(replay.matches,fixture["expected_replay_matches"].as_bool().unwrap(),"{:?}: {}",replay.diff,execution.record.to_json_string());
  std::fs::write(root.join(fixture["read_record"].as_str().unwrap()),execution.record.to_json_string()).unwrap();
  std::fs::write(root.join(fixture["capture_metadata"].as_str().unwrap()),serde_json::to_string_pretty(&json!({"source_revision":std::env::var("BEHAVIOR018_CAPTURE_BASE_SHA").unwrap(),"capture_method":"unchanged read::run_version with original v1 profile; no relabeling/deletion","module_behavior":module.behavior_version(),"read_record_id":execution.record.record_id(),"result":execution.record.result(),"replay_matches":replay.matches,"replay_diff":replay.diff,"scope":fixture["scope"],"query_fact_input":"Canonical select definition/instance hashes and known complete membership; no v2 output."})).unwrap()+"\n").unwrap();
 }
}
