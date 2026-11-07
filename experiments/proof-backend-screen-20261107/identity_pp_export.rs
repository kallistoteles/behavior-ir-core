//! Isolated, untrusted cost diagnostic with artifact export. No Core proof API or G1 acceptance authority.
//! Returns all43 input ports unchanged. No Core/hash/matrix correspondence claim.
use nova_snark::{
    frontend::{ConstraintSystem, SynthesisError, num::AllocatedNum},
    nova::{CompressedSNARK, PublicParams, RecursiveSNARK},
    provider::{PallasEngine, VestaEngine, ipa_pc::EvaluationEngine},
    spartan::ppsnark::RelaxedR1CSSNARK,
    traits::{Engine, circuit::StepCircuit, snark::RelaxedR1CSSNARKTrait},
};
use serde::Deserialize;
use sha2::{Digest, Sha256};
use std::{error::Error, fs, time::Instant};

type Fr = <PallasEngine as Engine>::Scalar;
type Parameters = PublicParams<PallasEngine, VestaEngine, IdentityCircuit>;
type Proof = RecursiveSNARK<PallasEngine, VestaEngine, IdentityCircuit>;
type S1 = RelaxedR1CSSNARK<PallasEngine, EvaluationEngine<PallasEngine>>;
type S2 = RelaxedR1CSSNARK<VestaEngine, EvaluationEngine<VestaEngine>>;
type Compressed = CompressedSNARK<PallasEngine, VestaEngine, IdentityCircuit, S1, S2>;
type Result<T> = std::result::Result<T, Box<dyn Error>>;

#[derive(Clone, Debug)]
struct IdentityCircuit;
impl StepCircuit<Fr> for IdentityCircuit {
    fn arity(&self) -> usize { 43 }
    fn synthesize<CS:ConstraintSystem<Fr>>(&self,_:&mut CS,z:&[AllocatedNum<Fr>])
        -> std::result::Result<Vec<AllocatedNum<Fr>>,SynthesisError> {
        if z.len()!=43 {return Err(SynthesisError::Unsatisfiable("identity arity".into()));}
        Ok(z.to_vec())
    }
}
#[derive(Deserialize)]
struct Subject {initial:Vec<u32>,expected:Vec<u32>,steps:usize}
fn digest(bytes: &[u8]) -> String {
    Sha256::digest(bytes)
        .iter()
        .map(|v| format!("{v:02x}"))
        .collect()
}
fn event(name: &str, start: Instant) {
    println!(
        "{}",
        serde_json::json!({"event":name,"elapsed_ns":start.elapsed().as_nanos(),"g1_pass":false})
    );
}
fn encoded_size<T: serde::Serialize>(directory: &std::path::Path, name: &str, value: &T) -> Result<()> {
    let start = Instant::now();
    let bytes = bincode::serde::encode_to_vec(
        value,
        bincode::config::standard().with_fixed_int_encoding(),
    )?;
    let path = directory.join(format!("{name}.bin"));
    use std::io::Write;
    let mut file = fs::OpenOptions::new().create_new(true).write(true).open(path)?;
    file.write_all(&bytes)?;
    println!(
        "{}",
        serde_json::json!({"event":"artifact_encoding","artifact":name,
        "bytes":bytes.len(),"elapsed_ns":start.elapsed().as_nanos(),"sha256":digest(&bytes),"g1_pass":false})
    );
    Ok(())
}
fn run()->Result<()> {
    let args:Vec<_>=std::env::args().collect();
    if args.len()!=3 {return Err("identity_cost SUBJECT ARTIFACT_DIR".into());}
    let data:Subject=serde_json::from_slice(&fs::read(&args[1])?)?;
    if data.initial.len()!=43 || data.expected!=data.initial || data.steps!=2 {
        return Err("exact43-word identity subject required".into());
    }
    let artifacts=std::path::Path::new(&args[2]);
    fs::create_dir(artifacts)?;
    let endpoint:Vec<_>=data.initial.iter().map(|&v|Fr::from(u64::from(v))).collect();
    let circuits=[IdentityCircuit,IdentityCircuit];
    println!("{}",serde_json::json!({"event":"identity_circuit_selected","state_words":43,
        "scope":"native43-word preprocessed-Spartan/IPA identity baseline; no Core, SHA, actual matrix/refinement or universal latency lower bound","g1_pass":false}));
    let start = Instant::now();
    let pp = Parameters::setup(&circuits[0], &*S1::ck_floor(), &*S2::ck_floor())?;
    event("cold_parameter_setup", start);
    println!(
        "{}",
        serde_json::json!({"event":"augmented_shape","constraints":pp.num_constraints(),"variables":pp.num_variables(),"g1_pass":false})
    );
    let initial: Vec<_> = data
        .initial
        .iter()
        .map(|&v| Fr::from(u64::from(v)))
        .collect();
    let start = Instant::now();
    let mut proof = Proof::new(&pp, &circuits[0], &initial)?;
    event("constructor_includes_first_step", start);
    let start = Instant::now();
    proof.prove_step(&pp, &circuits[0])?;
    event("first_prove_step_counter_only", start);
    let start = Instant::now();
    proof.prove_step(&pp, &circuits[1])?;
    event("second_prove_step_actual_fold", start);
    let start = Instant::now();
    let verified = proof.verify(&pp, 2, &initial)?;
    if verified != endpoint {
        return Err("verified complete endpoint differs".into());
    }
    event("recursive_verify_full_endpoint", start);
    encoded_size(artifacts, "parameters", &pp)?;
    encoded_size(artifacts, "recursive_proof", &proof)?;
    let start = Instant::now();
    let (pk, vk) = Compressed::setup(&pp)?;
    event("compression_key_setup", start);
    encoded_size(artifacts, "compression_prover_key", &pk)?;
    encoded_size(artifacts, "compression_verifier_key", &vk)?;
    let start = Instant::now();
    let compressed = Compressed::prove(&pp, &pk, &proof)?;
    event("compress", start);
    encoded_size(artifacts, "compressed_proof", &compressed)?;
    let start = Instant::now();
    let verified_compressed = compressed.verify(&vk, 2, &initial)?;
    if verified_compressed != endpoint {
        return Err("compressed complete endpoint differs".into());
    }
    event("compressed_verify_full_endpoint_same_process", start);
    println!(
        "{}",
        serde_json::json!({"event":"diagnostic_complete","recursive_verified":true,"compressed_verified":true,"complete_endpoint_equal":true,"fresh_consumer":false,"release_relation_complete":false,"g1_pass":false})
    );
    Ok(())
}
fn main() {
    if let Err(error) = run() {
        eprintln!("numeric cost diagnostic failed: {error}");
        std::process::exit(1);
    }
}
