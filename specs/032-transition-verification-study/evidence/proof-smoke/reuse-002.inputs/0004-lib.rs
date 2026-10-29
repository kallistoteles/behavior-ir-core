//! Isolated bounded transition study; no production runtime authority.
#![forbid(unsafe_code)]
pub mod checker;
pub mod circuit;
pub mod consumer;
pub mod core_bridge;
pub mod encoding;
pub mod execution;
pub mod fixtures;
pub mod maintained;
pub mod metrics;
pub mod proof_lifecycle;
pub mod prover;
pub mod recovery;
pub mod reference;
pub mod subject;
pub mod types;
pub mod views;
pub mod witness;
