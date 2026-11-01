//! Real-backend test interfaces. There are no keys, proof substitutes or success paths yet.
use crate::{claim::EndpointClaim, correspondence::MatrixArtifact, profile::Error};
#[derive(Debug)]
pub struct ProofRun {
    pub format_version: String,
    pub constructor_work_steps: u64,
    pub first_prove_work_steps: u64,
    pub microsteps: u64,
    pub endpoint: EndpointClaim,
    pub semantic_event: [u8; 32],
    pub recursive: Vec<u8>,
    pub compressed: Vec<u8>,
    pub checkpoint: Vec<u8>,
    pub compression_kind: String,
}
#[derive(Debug, Clone)]
pub struct Embedding {
    pub format_version: String,
    pub effective_augmented_matrix: MatrixArtifact,
    pub semantic_input_wires: Vec<u32>,
    pub semantic_output_wires: Vec<u32>,
    pub returned_z_next: Vec<u32>,
    pub augmented_hash_inputs: Vec<u32>,
    pub digest_limb_wires: Vec<Vec<u32>>,
}
pub struct Fixture {
    _private: (),
}
impl Fixture {
    /// Eventually creates the selected real backend/checked machine under a recorded stream.
    pub fn genuine(_: [u8; 32], _: usize) -> Result<Self, Error> {
        Err(Error::Unsupported(
            "real Nova fixture is not established".into(),
        ))
    }
    pub fn run(&self) -> Result<ProofRun, Error> {
        Err(Error::Unsupported(
            "real Nova lifecycle is not established".into(),
        ))
    }
    pub fn verify(&self, _: &[u8], _: &EndpointClaim) -> Result<EndpointClaim, Error> {
        Err(Error::Unsupported(
            "real compressed verification is not established".into(),
        ))
    }
    pub fn restore(&self, _: &[u8], _: &EndpointClaim) -> Result<(), Error> {
        Err(Error::Unsupported(
            "recursive checkpoint checking is not established".into(),
        ))
    }
    pub fn embedding(&self) -> Result<Embedding, Error> {
        Err(Error::Unsupported(
            "actual Nova synthesize/augmented shape extract is not established".into(),
        ))
    }
    pub fn check_embedding(&self, _: &Embedding) -> Result<(), Error> {
        Err(Error::Unsupported(
            "actual Nova embedding correspondence is not established".into(),
        ))
    }
}
