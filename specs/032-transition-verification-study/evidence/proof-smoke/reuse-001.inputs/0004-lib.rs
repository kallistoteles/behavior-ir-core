//! Isolated bounded transition study; no production runtime authority.
#![forbid(unsafe_code)]
pub mod fixtures;
pub mod reference;
pub mod subject;
pub mod types;
pub mod witness;
pub mod checker;
pub mod views;
pub mod encoding;
pub mod circuit;
pub mod consumer;
pub mod core_bridge;
pub mod prover;
pub mod maintained;
pub mod recovery;
pub mod execution;
pub mod proof_lifecycle;
