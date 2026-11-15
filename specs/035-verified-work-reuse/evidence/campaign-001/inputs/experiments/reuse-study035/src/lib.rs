#![forbid(unsafe_code)]
pub mod error;

pub mod fixtures;
pub mod observation;
pub mod protocol;
pub use protocol as artifacts;
pub mod acquire;
pub mod capture;
pub mod diagnostics;
pub mod eligibility;
pub mod ground;
pub mod io;
pub mod recovery;
pub mod reference;
pub mod run;
pub mod safety_check;
pub mod timings;
pub mod views;

pub mod group;
