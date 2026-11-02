//! Isolated Core033 feasibility experiment. No semantic/proof gate is implemented yet.
#![forbid(unsafe_code)]

/// Bootstrap metadata, not evidence of an accepted semantic transition.
pub const FORMAT_VERSION: &str = "core033.bootstrap.v1";

pub mod checker;
pub mod claim;
pub mod codec;
pub mod correspondence;
pub mod evidence;
pub mod identity;
pub mod origin;
pub mod profile;
pub mod proof;
pub mod reference;
pub mod telemetry;

pub mod tree;

pub mod producer;
