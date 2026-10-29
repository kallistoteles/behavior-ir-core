#![forbid(unsafe_code)]
use std::{fs,path::Path,time::Instant};
use transition_study032::{execution::{self,NativeCase,NativeRun},reference::full_scenario,types::*};
fn run()->Result<()>{
    let args=std::env::args().collect::<Vec<_>>();
    if args.len()<4{return Err(StudyError::Unsupported("native_study scenario CASE OUTPUT | run CASE OUTPUT A|producer existing|study | check CASE OUTPUT WITNESS".into()));}
    let case:NativeCase=serde_json::from_slice(&fs::read(&args[2])?)?;case.validate()?;
    let output=Path::new(&args[3]);let clock=Instant::now();
    let value=match args[1].as_str(){
        "scenario"=>{let operations=case.prefix.iter().chain(&case.operations).cloned().collect::<Vec<_>>();full_scenario(&case.config,case.initial_population,&operations)?}
        "run" if args.len()==6=>serde_json::to_value(execution::run(&case,&args[4],&args[5])?)?,
        "check" if args.len()==5=>{
            let proposed:NativeRun=serde_json::from_slice(&fs::read(&args[4])?)?;
            let checked=execution::check_produced(&case,&proposed.observations)?;
            serde_json::json!({"format":"core032.native-check.v1","outcome":"Accepted","whole_seconds":clock.elapsed().as_secs_f64(),"observations":checked})
        }
        _=>return Err(StudyError::Unsupported("native command/arity".into())),
    };
    let file=fs::OpenOptions::new().write(true).create_new(true).open(output)?;
    serde_json::to_writer(std::io::BufWriter::new(file),&value)?;Ok(())
}
fn main()->std::process::ExitCode{match run(){Ok(())=>std::process::ExitCode::SUCCESS,Err(e)=>{eprintln!("{e}");std::process::ExitCode::FAILURE}}}
