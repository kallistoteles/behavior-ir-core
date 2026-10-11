// Included in a temporary #[cfg(test)] child module of baseline read.rs.
use serde_json::Value;
use std::path::{Path,PathBuf};
fn load(root:&Path,name:&str)->Value { serde_json::from_str(&std::fs::read_to_string(root.join(name)).unwrap()).unwrap() }
fn capture(root:&Path,fixture:&Value,profile:&str) {
 let module=crate::admit(&std::fs::read_to_string(root.join(fixture["module"].as_str().unwrap())).unwrap()).unwrap();
 let source=if fixture["read_source"]=="ad_hoc" { super::ReadSource::AdHoc(Box::new(super::admit_read(&module,&std::fs::read_to_string(root.join(fixture["read_definition"].as_str().unwrap())).unwrap()).unwrap())) } else {super::ReadSource::Declared(fixture["read_name"].as_str().unwrap().into())};
 let request=std::fs::read_to_string(root.join(fixture["request"].as_str().unwrap())).unwrap();
 let execution=super::run_version(&module,&source,&request,None,profile);
 let text=execution.record.to_json_string();
 assert!(super::replay_read(&module,&text).matches,"independent captured read failed reference replay");
 if let Some(original)=fixture["original_audit_read"].as_str() { assert_eq!(text,std::fs::read_to_string(root.join(original)).unwrap(),"true legacy capture must reproduce original audit bytes"); }
 let output=root.join(fixture["read_record"].as_str().unwrap());
 if output.exists() { assert_eq!(text,std::fs::read_to_string(&output).unwrap(),"Store/Core requested same-profile outputs diverged"); }
 std::fs::write(output,&text).unwrap();
 let meta_path=root.join(fixture["capture_metadata"].as_str().unwrap());let mut meta:Value=serde_json::from_str(&std::fs::read_to_string(&meta_path).unwrap()).unwrap();
 meta["read_record_id"]=serde_json::json!(execution.record.record_id());meta["independent_read_capture"]=serde_json::json!("existing read::run_version with requested profile; no tag relabeling");
 std::fs::write(meta_path,serde_json::to_string_pretty(&meta).unwrap()+"\n").unwrap();
}
#[test]
fn capture_018_independent_profile_read_archives() {
 let root=PathBuf::from(std::env::var("BEHAVIOR018_FIXTURE_ROOT").unwrap());let manifest=load(&root,"matrix.json");
 for row in manifest["rows"].as_array().unwrap() {for key in ["canonical_fixture","error_fixture","binding_fixture"] {capture(&root,&row[key],row["profile"].as_str().unwrap());}}
 capture(&root,&manifest["audit_regression_fixture"],"behavior.read_record.v1");
}
