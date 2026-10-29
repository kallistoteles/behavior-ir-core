#![forbid(unsafe_code)]
use serde_json::json;
use sha2::Digest;
use std::{fs, path::Path, time::Instant};
use transition_study032::{
    prover::{self, Case, ProofEnvelope},
    types::*,
};
fn run() -> Result<()> {
    let args = std::env::args().collect::<Vec<_>>();
    if !matches!(args.len(), 5 | 8) || !matches!(args[1].as_str(), "prove" | "verify") {
        return Err(StudyError::Unsupported("usage: nova_study prove|verify EXPECTED_CASE PROOF_FILE NEW_OUTPUT_DIRECTORY [TRUSTED_PARAMETERS EXPECTED_SHA EXPECTED_ID]".into()));
    }
    let start = Instant::now();
    let output = Path::new(&args[4]);
    fs::create_dir(output)?;
    let case: Case = serde_json::from_slice(&fs::read(&args[2])?)?;
    let prep_start = Instant::now();
    let prepared = prover::prepare(&case)?;
    let bridge_seconds = prep_start.elapsed().as_secs_f64();
    eprintln!("exact Core inputs/outputs reconstructed ({bridge_seconds:.3}s)");
    let mode = if args.len() == 8 {
        "reuse"
    } else {
        "first-use"
    };
    let setup = Instant::now();
    let pp = if mode == "reuse" {
        prover::load_parameters(&prepared, &fs::read(&args[5])?, &args[6], &args[7])?
    } else {
        prover::parameters(&prepared)?
    };
    let setup_seconds = setup.elapsed().as_secs_f64();
    eprintln!(
        "parameters {mode} ({setup_seconds:.3}s), constraints {:?}",
        pp.num_constraints()
    );
    let (status, phases) = if args[1] == "prove" {
        let (envelope, timings) = prover::produce(&prepared, &pp)?;
        let bytes = prover::encode(&envelope)?;
        fs::OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(&args[3])
            .and_then(|mut f| std::io::Write::write_all(&mut f, &bytes))?;
        (
            "Produced",
            json!({"fold_seconds":timings.fold_seconds,"initialization_seconds":timings.initialization_seconds,"serialization_seconds":timings.serialization_seconds,"proof_container_bytes":bytes.len()}),
        )
    } else {
        let envelope: ProofEnvelope = prover::decode(&fs::read(&args[3])?)?;
        let verify_start = Instant::now();
        prover::verify(&prepared, &pp, &envelope)?;
        (
            "Verified",
            json!({"verify_seconds":verify_start.elapsed().as_secs_f64()}),
        )
    };
    let parameter_export = Instant::now();
    let parameters = if args[1] == "verify" && mode == "first-use" {
        let bytes = prover::export_parameters(&prepared, &pp)?;
        fs::write(output.join("parameters.bin"), &bytes)?;
        Some(
            json!({"sha256":format!("{:x}",sha2::Sha256::digest(&bytes)),"bytes":bytes.len(),"identity":prover::parameter_identity(&pp)}),
        )
    } else {
        None
    };
    let report = json!({"format":"core032.nova-run.v1","status":status,"mode":mode,"setup_seconds":setup_seconds,"core_bridge_seconds":bridge_seconds,
        "whole_seconds":start.elapsed().as_secs_f64(),"attempts":prepared.final_state.attempts,"commits":prepared.final_state.commits,
        "microsteps":prepared.steps.len(),"commands":prepared.final_state.command_occurrences,"parameters":prover::parameter_identity(&pp),"constraints":pp.num_constraints(),
        "claim":prepared.binding,"phases":phases,"parameter_export":parameters,"parameter_export_seconds":parameter_export.elapsed().as_secs_f64(),"parameter_recipe":prover::parameter_recipe(&prepared)?,"trust":"bounded circuit/Nova/Pasta; Core identities independently replayed; Rust correspondence remains trusted"});
    fs::write(
        output.join("report.json"),
        serde_json::to_vec_pretty(&report)?,
    )?;
    println!("{report}");
    Ok(())
}
fn main() -> std::process::ExitCode {
    match run() {
        Ok(()) => std::process::ExitCode::SUCCESS,
        Err(e) => {
            eprintln!("{e}");
            std::process::ExitCode::FAILURE
        }
    }
}
