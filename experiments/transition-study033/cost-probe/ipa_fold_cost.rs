//! Native cost screen of the pinned IPA generator folding operation.
use ff::{Field,PrimeField};
use nova_snark::{provider::{PallasEngine,VestaEngine,pedersen::{CommitmentEngine,CommitmentKeyExtTrait},traits::DlogGroupExt},
    traits::{Engine,commitment::{CommitmentEngineTrait,CommitmentTrait,Len}}};
use std::{error::Error,time::Instant};
fn probe<E:Engine<CE=CommitmentEngine<E>>>(curve:&str)->Result<(),Box<dyn Error>>
where E::GE:DlogGroupExt {
    let n=8192;
    let start=Instant::now();
    let ck=E::CE::setup(b"core033.synthetic.ipa-fold-cost",n)?;
    let setup_ns=start.elapsed().as_nanos();
    let mut repr=<E::Scalar as PrimeField>::Repr::default();
    repr.as_mut().fill(0x55);
    *repr.as_mut().last_mut().ok_or("empty scalar")?=0x25;
    let r=Option::<E::Scalar>::from(E::Scalar::from_repr(repr)).ok_or("noncanonical synthetic scalar")?;
    let inverse=Option::<E::Scalar>::from(r.invert()).ok_or("zero scalar")?;
    let start=Instant::now();
    let folded=ck.fold(&inverse,&r);
    let fold_ns=start.elapsed().as_nanos();
    if folded.length()!=n/2 {return Err("wrong generator count".into());}
    let left=E::CE::commit(&folded,&vec![E::Scalar::ONE;n/2],&E::Scalar::ZERO);
    let weights:Vec<_>=(0..n).map(|i|if i<n/2 {inverse} else {r}).collect();
    let right=E::CE::commit(&ck,&weights,&E::Scalar::ZERO);
    if left.to_coordinates()!=right.to_coordinates(){return Err("native fold linear relation differs".into());}
    println!("{}",serde_json::json!({"format_version":"core033.native-ipa-generator-fold-cost.v1",
        "outcome":"NativeFoldRelationEqual","curve":curve,"input_generators":n,"output_generators":n/2,
        "setup_ns":setup_ns,"fold_ns":fold_ns,"full_width_public_synthetic_weights":true,
        "scope":"native pinned generator-fold microbenchmark only; no attribution of complete compression time, semantic/crypto proof or G1 authority",
        "g1_pass":false}));
    Ok(())
}
fn main()->Result<(),Box<dyn Error>>{probe::<PallasEngine>("Pallas")?;probe::<VestaEngine>("Vesta")?;Ok(())}
