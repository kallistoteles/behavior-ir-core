//! Explicit research probe; not a new Core CLI or runtime interface.
#![allow(clippy::unwrap_used)]
use behavior_core as core_api;
use behavior_store as store_api;
#[path = "../tests/support/execution_evidence_workload.rs"]
mod workload;
fn main() {
    let args: Vec<_> = std::env::args().skip(1).collect();
    if args.len() != 1 {
        eprintln!("Usage: execution_evidence_bench CASE_JSON");
        std::process::exit(2);
    }
    let case: workload::fixture::Case = serde_json::from_str(&args[0]).unwrap();
    let (result, _) = workload::run(&case);
    println!("{result}");
}
