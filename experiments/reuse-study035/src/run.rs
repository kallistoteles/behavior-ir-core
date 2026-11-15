//! Ordinary native reference entry. A raw reference result is not a checked program capability.
use crate::{error::{Result,StudyError},reference,io};
use std::path::Path;
fn reference_command()->Result<()> {
 let args:Vec<String>=std::env::args().skip(1).collect();
 if args.len()!=5||args[0]!="native-reference"||args[1]!="--case"||args[3]!="--out"{return Err(StudyError::InvalidInput("Usage: native-reference --case CASE --out NEW_FILE".into()));}
 let out=Path::new(&args[4]);if out.exists(){return Err(StudyError::InvalidInput("OutputExists".into()));}
 let result=reference::case(&args[2])?;io::write(out,&result)
}
pub fn reference_entry()->std::process::ExitCode {
 if std::env::args().nth(1).as_deref()==Some("run-once"){return strategy_entry(false,false);}
 match reference_command(){Ok(())=>std::process::ExitCode::SUCCESS,Err(e)=>{eprintln!("{e}");std::process::ExitCode::from(match e{StudyError::InvalidInput(_)|StudyError::Json(_)=>2,_=>3})}}
}

/// Fixed mechanism entry points; treatment is compiled into each bin target.
pub fn ground_entry()->std::process::ExitCode { strategy_entry(true,false) }
pub fn strategy_entry(retain:bool,views:bool)->std::process::ExitCode {
 match strategy_command(retain,views){Ok(())=>std::process::ExitCode::SUCCESS,Err(e)=>{eprintln!("{e}");std::process::ExitCode::from(match e{StudyError::InvalidInput(_)|StudyError::Json(_)=>2,StudyError::Prerequisite("CompleteOriginalObservationMismatch")=>1,_=>3})}}
}
fn strategy_command(retain:bool,views:bool)->Result<()> {
 use crate::{error::library,fixtures,ground::Ground,safety_check,observation};
 use behavior_models::safety::evidence::UnverifiedSafetyBundle;
 use serde_json::json;
 use std::time::Instant;
 let args:Vec<String>=std::env::args().skip(1).collect();
 if args.len()!=7||args[0]!="run-once"||args[1]!="--expected"||args[3]!="--bundle"||args[5]!="--out" {
  return Err(StudyError::InvalidInput("Usage: run-once --expected CASE_JSON --bundle ORIGINAL_BUNDLE_JSON --out NEW_DIRECTORY".into()));
 }
 let out=Path::new(&args[6]);if out.exists(){return Err(StudyError::InvalidInput("OutputExists".into()));}
 let expected=io::read(Path::new(&args[2]))?;
 if expected["format"]!="core035.reference-case.v1"{return Err(StudyError::InvalidInput("ReferenceCaseFormat".into()));}
 let case=io::text(&expected,"case_id")?;reference::dimensions(case)?;
 let bundle=UnverifiedSafetyBundle::from_json(&io::read(Path::new(&args[4]))?).map_err(library)?;
 std::fs::create_dir(out)?;
 let m=fixtures::module(false,false)?;let a=fixtures::analysis(&m,false)?;
 let program_started=Instant::now();let(record,program)=safety_check::recheck(&m,&a,&bundle,&out.join("program-check"))?;
 let program_ns=program_started.elapsed().as_nanos();io::write(&out.join("program-assessment.json"),&record)?;
 let program=program.ok_or(StudyError::Prerequisite("ProgramNotRechecked"))?;
 let acquisition=Instant::now();let mut ground=Ground::supplied(reference::parent(case)?);ground.check(&program,&expected)?;ground.enable_views(views)?;
 let acquisition_ns=acquisition.elapsed().as_nanos();let provenance=ground.provenance().cloned();ground.set_work(true);
 let mut samples=vec![];
 for(slot,field)in [("observation.json","expected"),("drain.json","drain_expected")] {
  let before=ground.work_counts();let started=Instant::now();ground.select_retention(retain)?;
  let original=ground.invoke(&expected["request"])?;observation::compare(&original,&expected[field])?;
  io::write(&out.join(slot),&original)?;
  let complete_ns=started.elapsed().as_nanos();let after=ground.work_counts();
  samples.push(json!({"slot":slot,"complete_ns":complete_ns,"full_snapshot_passes":after.0-before.0,"snapshot_cache_hits":after.1-before.1,"validity_provenance":ground.provenance(),"diagnostics":ground.diagnostics(),"scope":"work-mode development: reset through full original output fsync; not a final timing sample"}));
 }
 io::write(&out.join("summary.json"),&json!({"format":"core035.ground-development.v1","treatment":match(retain,views){(false,false)=>"R",(true,false)=>"G",(false,true)=>"V",(true,true)=>"GV"},"backend":"Store<Capture>","program_check_ns":program_ns,"acquisition_ns":acquisition_ns,"provenance":provenance,"samples":samples,"product_adoption":"unactivated"}))
}
