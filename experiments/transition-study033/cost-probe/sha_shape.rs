//! Native diagnostic of the pinned stock SHA gadget, not a Core correspondence proof.
use nova_snark::{frontend::{AllocatedBit, Boolean, ConstraintSystem, sha256,
    test_cs::TestConstraintSystem}, provider::PallasEngine, traits::Engine};
use sha2::{Digest, Sha256};
use std::{error::Error,time::Instant};
type Fr = <PallasEngine as Engine>::Scalar;
fn main() -> Result<(),Box<dyn Error>> {
    let bytes: Vec<u8> = (0..115).map(|i| (i*17+3) as u8).collect();
    let expected = Sha256::digest(&bytes);
    let start = Instant::now();
    let mut cs = TestConstraintSystem::<Fr>::new();
    let mut bits = Vec::new();
    for (i,&byte) in bytes.iter().enumerate() {
        for bit in (0..8).rev() {
            bits.push(Boolean::from(AllocatedBit::alloc(cs.namespace(|| format!("byte_{i}_bit_{bit}")),Some((byte>>bit)&1==1))?));
        }
    }
    let output = sha256(cs.namespace(|| "stock_sha256"),&bits)?;
    if output.len()!=256 || !cs.is_satisfied() { return Err("stock SHA constraint/witness failure".into()); }
    for (index,bit) in output.iter().enumerate() {
        if bit.get_value()!=Some((expected[index/8]>>(7-index%8))&1==1) { return Err("full native SHA digest mismatch".into()); }
    }
    println!("{}",serde_json::json!({"format_version":"core033.stock-sha-shape-diagnostic.v1",
        "outcome":"NativeGadgetSatisfied","input_bytes":bytes.len(),"allocated_input_bits":bits.len(),
        "constraints":cs.num_constraints(),"synthesis_and_native_check_ns":start.elapsed().as_nanos(),
        "full_256_bit_digest_equal":true,"sha_blocks":2,
        "scope":"pinned stock SHA gadget only; all 920 input bits allocated as witnesses; no Core routing, codec/controller admission, formal correspondence, proof production or G1 authority",
        "g1_pass":false}));
    Ok(())
}
