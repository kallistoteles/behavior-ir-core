//! Fresh-process preprocessed-Spartan/IPA diagnostic; no Core authority.
//! The caller supplies its frozen expected subject and expected verifier-key hash.
use ff::PrimeField;
use nova_snark::{
    frontend::{ConstraintSystem, SynthesisError, num::AllocatedNum},
    nova::{CompressedSNARK, VerifierKey},
    provider::{Bn256EngineKZG, GrumpkinEngine, hyperkzg, ipa_pc},
    spartan::{ppsnark::RelaxedR1CSSNARK as PrimarySnark, snark::RelaxedR1CSSNARK as SecondarySnark},
    traits::{Engine, circuit::StepCircuit},
};
use serde::Deserialize;
use sha2::{Digest,Sha256};
use std::{error::Error,fs,time::Instant};
type Fr = <Bn256EngineKZG as Engine>::Scalar;
// Deserialization/verification uses the frozen shape carried by Vk, never this
// synthesis method. No producer-chosen replacement circuit is activated here.
#[derive(Clone,Debug)]
struct CircuitMarker;
impl StepCircuit<Fr> for CircuitMarker {
    fn arity(&self) -> usize { 43 }
    fn synthesize<CS:ConstraintSystem<Fr>>(&self,_:&mut CS,_:&[AllocatedNum<Fr>])
        -> Result<Vec<AllocatedNum<Fr>>,SynthesisError> {
        Err(SynthesisError::Unsatisfiable("verification-only marker".into()))
    }
}
type S1=PrimarySnark<Bn256EngineKZG,hyperkzg::EvaluationEngine<Bn256EngineKZG>>;
type S2=SecondarySnark<GrumpkinEngine,ipa_pc::EvaluationEngine<GrumpkinEngine>>;
type Vk=VerifierKey<Bn256EngineKZG,GrumpkinEngine,CircuitMarker,S1,S2>;
type Proof=CompressedSNARK<Bn256EngineKZG,GrumpkinEngine,CircuitMarker,S1,S2>;
#[derive(Deserialize)]
struct Subject { initial:Vec<u32>, expected:Vec<u32>, steps:usize }
fn read<T:serde::de::DeserializeOwned>(bytes:&[u8])->Result<T,Box<dyn Error>> {
    let (value,n)=bincode::serde::decode_from_slice(bytes,
        bincode::config::standard().with_fixed_int_encoding().with_limit::<134217728>())?;
    if n!=bytes.len() { return Err("trailing serialized artifact bytes".into()); }
    Ok(value)
}
fn main()->Result<(),Box<dyn Error>> {
    let start=Instant::now();
    let args:Vec<_>=std::env::args().collect();
    if args.len()!=5 { return Err("identity_pp_consumer VK PROOF EXPECTED_SUBJECT EXPECTED_VK_SHA256".into()); }
    let subject:Subject=serde_json::from_slice(&fs::read(&args[3])?)?;
    if subject.initial.len()!=43 || subject.expected.len()!=43 || subject.steps!=2 { return Err("expected identity subject shape".into()); }
    for path in [&args[1],&args[2]] { if fs::metadata(path)?.len()>134217728 { return Err("artifact byte bound".into()); } }
    let key_bytes=fs::read(&args[1])?;
    let key_hash:String=Sha256::digest(&key_bytes).iter().map(|b|format!("{b:02x}")).collect();
    if key_hash!=args[4] { return Err("expected verifier key identity differs".into()); }
    let proof_bytes=fs::read(&args[2])?;
    let key:Vk=read(&key_bytes)?;
    let proof:Proof=read(&proof_bytes)?;
    println!("{}",serde_json::json!({"event":"fresh_material_loaded","elapsed_ns":start.elapsed().as_nanos(),
        "verifier_key_bytes":key_bytes.len(),"proof_bytes":proof_bytes.len(),"g1_pass":false}));
    let verify_start=Instant::now();
    let initial:Vec<_>=subject.initial.iter().map(|&v|Fr::from(u64::from(v))).collect();
    let actual=proof.verify(&key,subject.steps,&initial)?;
    let expected:Vec<_>=subject.expected.iter().map(|&v|Fr::from(u64::from(v))).collect();
    if actual!=expected { return Err("complete expected identity endpoint differs".into()); }
    println!("{}",serde_json::json!({"event":"fresh_identity_diagnostic_verified","verify_ns":verify_start.elapsed().as_nanos(),
        "total_inside_process_ns":start.elapsed().as_nanos(),"full_endpoint_words":actual.len(),
        "field":Fr::MODULUS,"scope":"fresh process with caller-frozen expected subject/key identity; uncertified identity embedding, no Core genesis/history/durability or G1 authority",
        "g1_pass":false}));
    Ok(())
}
