// Included in a temporary #[cfg(test)] child module of baseline invocation.rs.
use serde_json::Value;
use std::path::{Path,PathBuf};
fn load(root:&Path,name:&str)->Value {serde_json::from_str(&std::fs::read_to_string(root.join(name)).unwrap()).unwrap()}
fn capture(root:&Path,fixture:&Value,profile:&str) {
 if !fixture["invocation_record"].is_string() { return; }
 let module=crate::admit(&std::fs::read_to_string(root.join(fixture["module"].as_str().unwrap())).unwrap()).unwrap();
 let setup=load(root,fixture["store_setup"].as_str().unwrap());
 let requested=super::RequestedInvocation::decode(&setup["invocation"].to_string()).unwrap().0.unwrap();
 let snapshot=super::Snapshot::decode(&module,&std::fs::read_to_string(root.join(fixture["snapshot"].as_str().unwrap())).unwrap()).unwrap().0.unwrap();
 let record=match super::resolve(&module,&requested,&snapshot) {
  Ok(resolved)=>super::invoke_resolved_version(&module,resolved,snapshot.facts(),Some(profile),None).unwrap().0,
  Err(refusal)=>super::refusal_record(&module,&requested.as_json(),snapshot.data_version(),refusal).unwrap(),
 };
 let text=record.to_json_string(); assert!(super::replay_invocation(&module,&text).matches,"captured invocation did not replay");
 if let Some(original)=fixture["original_audit_invocation"].as_str() {assert_eq!(text,std::fs::read_to_string(root.join(original)).unwrap(),"true legacy invocation capture must reproduce audit bytes");}
 let output=root.join(fixture["invocation_record"].as_str().unwrap());if output.exists(){assert_eq!(text,std::fs::read_to_string(&output).unwrap(),"Store/Core same-profile invocation outputs differ");}std::fs::write(output,&text).unwrap();
 let meta_path=root.join(fixture["capture_metadata"].as_str().unwrap());let mut meta:Value=serde_json::from_str(&std::fs::read_to_string(&meta_path).unwrap()).unwrap();meta["invocation_record_id"]=record.as_json()["record_id"].clone();meta["independent_invocation_capture"]=serde_json::json!("existing invocation::invoke_resolved_version with requested inner read profile; no tag relabeling");std::fs::write(meta_path,serde_json::to_string_pretty(&meta).unwrap()+"\n").unwrap();
}
#[test]
fn capture_018_independent_profile_invocation_archives() {
 let root=PathBuf::from(std::env::var("BEHAVIOR018_FIXTURE_ROOT").unwrap());let manifest=load(&root,"matrix.json");for row in manifest["rows"].as_array().unwrap(){for key in ["canonical_fixture","error_fixture","binding_fixture"]{capture(&root,&row[key],row["profile"].as_str().unwrap());}}capture(&root,&manifest["audit_regression_fixture"],"behavior.read_record.v1");
}
