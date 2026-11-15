use reuse_study035::{error::{Result,StudyError},fixtures,safety_check};
use std::{path::PathBuf,sync::OnceLock};
fn checked()->Result<&'static safety_check::CheckedProgram>{
 static VALUE:OnceLock<std::result::Result<safety_check::CheckedProgram,String>>=OnceLock::new();
 let result=VALUE.get_or_init(||{
  let m=fixtures::module(false,false).map_err(|e|e.to_string())?;let a=fixtures::analysis(&m,false).map_err(|e|e.to_string())?;
  let root=PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("private").join(format!("native-program-{}-{}",std::process::id(),std::time::SystemTime::now().duration_since(std::time::UNIX_EPOCH).map_err(|e|e.to_string())?.as_nanos()));
  safety_check::certify_checked(&m,&a,&root).map_err(|e|e.to_string())
 });
 result.as_ref().map_err(|_|StudyError::Prerequisite("NativeTestProgramNotChecked"))
}
fn expected()->Result<serde_json::Value>{Ok(serde_json::from_str(include_str!("../expected/reference-case-D1.json"))?)}
#[path="ground_lifecycle.rs"]mod ground_lifecycle;
#[path="ground_retention.rs"]mod ground_retention;
#[path="publication.rs"]mod publication;

#[path="views.rs"]mod us3_views;
#[path="prepared_invocation.rs"]mod us3_prepared;
#[path="work.rs"]mod us3_work;

#[path="conformance.rs"]mod conformance;

fn checked_commands()->Result<&'static safety_check::CheckedProgram>{
 static VALUE:OnceLock<std::result::Result<safety_check::CheckedProgram,String>>=OnceLock::new();
 let result=VALUE.get_or_init(||{
  let m=fixtures::module(true,false).map_err(|e|e.to_string())?;let a=fixtures::analysis(&m,false).map_err(|e|e.to_string())?;
  let root=PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("private").join(format!("native-command-program-{}-{}",std::process::id(),std::time::SystemTime::now().duration_since(std::time::UNIX_EPOCH).map_err(|e|e.to_string())?.as_nanos()));
  safety_check::certify_checked(&m,&a,&root).map_err(|e|e.to_string())
 });
 result.as_ref().map_err(|_|StudyError::Prerequisite("NativeCommandProgramNotChecked"))
}
