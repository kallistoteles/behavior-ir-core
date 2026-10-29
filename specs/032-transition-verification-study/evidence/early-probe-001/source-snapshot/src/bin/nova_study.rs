#![forbid(unsafe_code)]
use transition_study032::{prover::{self,Case,ProofEnvelope},types::*};
use std::{fs,path::Path,time::Instant};
use serde_json::json;
fn run()->Result<()>{
    let args=std::env::args().collect::<Vec<_>>();
    if args.len()!=5 || !matches!(args[1].as_str(),"prove"|"verify"){return Err(StudyError::Unsupported("usage: nova_study prove|verify EXPECTED_CASE PROOF_FILE NEW_OUTPUT_DIRECTORY".into()));}
    let start=Instant::now();let output=Path::new(&args[4]);fs::create_dir(output)?;
    let case:Case=serde_json::from_slice(&fs::read(&args[2])?)?;
    let prep_start=Instant::now();let prepared=prover::prepare(&case)?;let bridge_seconds=prep_start.elapsed().as_secs_f64();
    eprintln!("exact Core inputs/outputs reconstructed ({bridge_seconds:.3}s)");
    let setup=Instant::now();let pp=prover::parameters(&prepared)?;let setup_seconds=setup.elapsed().as_secs_f64();
    eprintln!("independent parameters derived ({setup_seconds:.3}s), constraints {:?}",pp.num_constraints());
    let (status,phases)=if args[1]=="prove"{
        let (envelope,timings)=prover::produce(&prepared,&pp)?;
        let bytes=prover::encode(&envelope)?;
        fs::OpenOptions::new().write(true).create_new(true).open(&args[3]).and_then(|mut f|std::io::Write::write_all(&mut f,&bytes))?;
        ("Produced",json!({"fold_seconds":timings,"proof_container_bytes":bytes.len()}))
    }else{
        let envelope:ProofEnvelope=prover::decode(&fs::read(&args[3])?)?;
        let verify_start=Instant::now();prover::verify(&prepared,&pp,&envelope)?;
        ("Verified",json!({"verify_seconds":verify_start.elapsed().as_secs_f64()}))
    };
    let report=json!({"format":"core032.nova-run.v1","status":status,"mode":"first-use","setup_seconds":setup_seconds,"core_bridge_seconds":bridge_seconds,
        "whole_seconds":start.elapsed().as_secs_f64(),"attempts":prepared.final_state.attempts,"commits":prepared.final_state.commits,
        "microsteps":prepared.steps.len(),"commands":prepared.final_state.command_occurrences,"parameters":prover::parameter_identity(&pp),"constraints":pp.num_constraints(),
        "claim":prepared.binding,"phases":phases,"trust":"bounded circuit/Nova/Pasta; Core identities independently replayed; Rust correspondence remains trusted"});
    fs::write(output.join("report.json"),serde_json::to_vec_pretty(&report)?)?;println!("{report}");Ok(())
}
fn main()->std::process::ExitCode{match run(){Ok(())=>std::process::ExitCode::SUCCESS,Err(e)=>{eprintln!("{e}");std::process::ExitCode::FAILURE}}}
