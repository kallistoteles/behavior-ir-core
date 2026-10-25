//! Public-API 029 measurement probe. Default release builds contain no work counters.
#![allow(clippy::unwrap_used)]
use behavior_store as store_api;
#[path = "../tests/support/global_workload.rs"]
mod workload;
fn main() {
    let args: Vec<_> = std::env::args().skip(1).collect();
    assert!(
        (4..=6).contains(&args.len()),
        "N STEPS none|true|count|unsupported create|update|unrelated|warm [BATCH] [RULES]"
    );
    let result = if args.len() == 4 {
        workload::run(
            args[0].parse().unwrap(),
            args[1].parse().unwrap(),
            &args[2],
            &args[3],
        )
    } else {
        workload::run_scaled(
            args[0].parse().unwrap(),
            args[1].parse().unwrap(),
            &args[2],
            &args[3],
            args[4].parse().unwrap(),
            args.get(5).map_or(1, |s| s.parse().unwrap()),
        )
    };
    println!("{result}");
}
