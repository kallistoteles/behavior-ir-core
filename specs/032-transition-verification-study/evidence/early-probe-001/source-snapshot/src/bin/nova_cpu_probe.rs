//! Executes the actual pinned field backend; CPU names/flags alone are insufficient.
#![forbid(unsafe_code)]
use nova_snark::{provider::PallasEngine,traits::Engine};
fn main()->Result<(),Box<dyn std::error::Error>>{
    type F=<PallasEngine as Engine>::Scalar;
    let n=std::env::args().nth(1).ok_or("integer argument required")?.parse::<u64>()?;
    let a=F::from(n);let b=a*F::from(7);assert_eq!(b,F::from(n*7));println!("pinned Pallas scalar backend multiplication succeeded");Ok(())
}
