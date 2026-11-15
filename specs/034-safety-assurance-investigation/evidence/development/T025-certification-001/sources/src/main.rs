#![forbid(unsafe_code)]
use assurance_study034::{error::{Result,StudyError,library},fixtures,io,safety_check};
use behavior_models::safety::evidence::UnverifiedSafetyBundle;
use serde_json::json;
use std::{collections::BTreeMap,path::{Path,PathBuf},time::Instant};
fn args()->Result<(String,BTreeMap<String,PathBuf>)>{
 let mut iter=std::env::args().skip(1);let op=iter.next().ok_or(StudyError::Prerequisite("MissingOperation"))?;let mut options=BTreeMap::new();
 while let Some(k)=iter.next(){if !["--input","--prepared","--out","--case","--packet","--control"].contains(&k.as_str())||options.contains_key(&k){return Err(StudyError::Prerequisite("UnknownOrRepeatedArgument"));}let v=iter.next().ok_or(StudyError::Prerequisite("MissingArgument"))?;options.insert(k,PathBuf::from(v));}
 Ok((op,options))
}
fn required<'a>(a:&'a BTreeMap<String,PathBuf>,key:&str)->Result<&'a Path>{a.get(key).map(PathBuf::as_path).ok_or(StudyError::Prerequisite("MissingArgument"))}
fn prepare(input:&Path,out:&Path)->Result<i32>{
 let v=io::read(input)?;if v["format"]!="core034.worker-input.v1"{return Err(StudyError::Prerequisite("InputVersion"));}
 let commands=v["commands"].as_bool().ok_or(StudyError::Prerequisite("MissingCommandsFlag"))?;
 let m=fixtures::module(commands,false)?;let a=fixtures::analysis(&m,false)?;
 std::fs::create_dir(out)?;io::write(&out.join("subject.json"),&json!({"behavior":m.behavior_version(),"policy_set_hash":a.policy_set_hash(),"inventory":a.inventory().to_json(),"analysis":a.to_json(),"module":behavior_engine::serialize::to_wire_json(&m),"fixture":if commands{"LD8C-public-port-distinct"}else{"LD8-public-port-distinct"}}))?;
 let start=Instant::now();let role=io::text(&v,"role")?;
 let assessment=if role=="certify"{
  let (result,bundle)=safety_check::certify(&m,&a,&out.join("safety"))?;
  if let Some(b)=bundle{io::write(&out.join("bundle.json"),&b.to_json())?;}
  result.to_json()
 }else if role=="verify"{
  let bundle=UnverifiedSafetyBundle::from_json(&io::read(Path::new(io::text(&v,"bundle")?))?).map_err(library)?;
  let (record,_checked)=safety_check::recheck(&m,&a,&bundle,&out.join("safety"))?;record
 }else{return Err(StudyError::Prerequisite("UnknownPreparationRole"));};
 io::write(&out.join("assessment.json"),&assessment)?;
 let established=assessment["outcome"]=="Certified under assumptions";
 io::write(&out.join("worker-result.json"),&json!({"format":"core034.worker-result.v1","operation":"prepare","role":role,"assurance":if established{"established_under_premises"}else{"unestablished"},"operational":if established{"completed"}else{"tool_failed"},"elapsed_ns":start.elapsed().as_nanos().min(u64::MAX as u128) as u64,"assessment":"assessment.json","product_adoption":"unactivated","durability":"memory-pilot-no-durable-publication"}))?;
 println!("{}",json!({"format":"core034.summary.v1","operation":"prepare","assurance":if established{"established_under_premises"}else{"unestablished"},"product_adoption":"unactivated","assessment":out.join("assessment.json")}));
 Ok(if established{0}else{1})
}
fn execute()->Result<i32>{let(op,a)=args()?;match op.as_str(){"prepare"=>prepare(required(&a,"--input")?,required(&a,"--out")?),_=>Err(StudyError::Prerequisite("UnsupportedWorkerOperation"))}}
fn main(){let code=match execute(){Ok(code)=>code,Err(e)=>{eprintln!("{}",json!({"format":"core034.summary.v1","operational":"tool_failed","error":e.to_string(),"assurance":"unestablished","product_adoption":"unactivated"}));2}};std::process::exit(code);}
