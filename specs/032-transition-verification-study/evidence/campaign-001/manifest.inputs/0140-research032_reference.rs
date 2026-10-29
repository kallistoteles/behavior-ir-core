//! Core 032 test-only full observation support. No alternate public execution API.
#![allow(dead_code)]
use super::{core_api, store_api};
#[path = "execution_evidence_workload.rs"]
mod workload;
pub use fixture::Case;
pub use workload::fixture;
pub const NOW: &str = "2026-10-28T00:00:00Z";
pub fn observations() -> serde_json::Value {
    let case = Case {
        n: 3,
        steps: 2,
        commands: 2,
        ..Case::default()
    };
    workload::run(&case).1
}
pub fn configured_observations(case: &Case) -> serde_json::Value {
    workload::run(case).1
}
