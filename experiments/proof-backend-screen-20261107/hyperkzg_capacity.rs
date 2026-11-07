//! Readiness only: synthesize the real BN256 augmented shape and ask production
//! setup for its required SRS capacity. No SRS, fake setup or proof is produced.
use nova_snark::{
    frontend::{num::AllocatedNum, ConstraintSystem, SynthesisError},
    nova::PublicParams,
    provider::{Bn256EngineKZG, GrumpkinEngine, hyperkzg, ipa_pc},
    spartan::{ppsnark, snark},
    traits::{Engine, circuit::StepCircuit, snark::RelaxedR1CSSNARKTrait},
};
use std::{error::Error, path::Path, time::Instant};
type Fr = <Bn256EngineKZG as Engine>::Scalar;
type S1 = ppsnark::RelaxedR1CSSNARK<Bn256EngineKZG, hyperkzg::EvaluationEngine<Bn256EngineKZG>>;
type S2 = snark::RelaxedR1CSSNARK<GrumpkinEngine, ipa_pc::EvaluationEngine<GrumpkinEngine>>;
#[derive(Clone, Debug)]
struct Identity43;
impl StepCircuit<Fr> for Identity43 {
    fn arity(&self) -> usize { 43 }
    fn synthesize<CS: ConstraintSystem<Fr>>(&self, _: &mut CS, z: &[AllocatedNum<Fr>])
        -> Result<Vec<AllocatedNum<Fr>>, SynthesisError> {
        if z.len() != 43 { return Err(SynthesisError::Unsatisfiable("arity".into())); }
        Ok(z.to_vec())
    }
}
fn main() -> Result<(), Box<dyn Error>> {
    let args: Vec<_> = std::env::args().collect();
    if args.len() != 2 { return Err("hyperkzg_capacity EMPTY_DIRECTORY".into()); }
    let directory = Path::new(&args[1]);
    if !directory.is_dir() || directory.read_dir()?.next().is_some() {
        return Err("capacity discovery requires an empty directory".into());
    }
    let start = Instant::now();
    match PublicParams::<Bn256EngineKZG, GrumpkinEngine, Identity43>::setup_with_ptau_dir(
        &Identity43, &*S1::ck_floor(), &*S2::ck_floor(), directory,
    ) {
        Err(error) => {
            let message = error.to_string();
            if !message.contains("No suitable ptau file found") {
                return Err(error.into());
            }
            println!("{}", serde_json::json!({
                "event":"production_srs_capacity_required", "message":message,
                "elapsed_ns":start.elapsed().as_nanos(), "state_words":43,
                "primary":"BN256 preprocessing HyperKZG", "secondary":"Grumpkin standard IPA",
                "srs_loaded":false,"proof_produced":false,"g1_pass":false
            }));
            Ok(())
        }
        Ok(_) => Err("unexpected setup success without SRS".into()),
    }
}
