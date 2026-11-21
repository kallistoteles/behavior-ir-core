#![forbid(unsafe_code)]
#[path = "../../src/error.rs"]
mod error;
#[path = "../../src/protocol.rs"]
pub mod protocol;
pub use protocol as artifacts;
#[allow(dead_code)]
#[path = "../../src/capture.rs"]
mod capture;
#[allow(dead_code)]
#[path = "../../src/fixtures.rs"]
mod fixtures;
#[allow(dead_code)]
#[path = "../../src/io.rs"]
mod io;
#[allow(dead_code)]
#[path = "../../src/native_artifacts.rs"]
mod native_artifacts;
#[allow(dead_code)]
#[path = "../../src/native_json_values.rs"]
mod native_json_values;
#[allow(dead_code)]
#[path = "../../src/raw_oracle.rs"]
mod raw_oracle;
#[path = "../../src/reference.rs"]
mod reference;
#[allow(dead_code)]
#[path = "../../src/safety_check.rs"]
mod safety_check;
#[allow(dead_code)]
#[path = "../../src/serialization.rs"]
mod serialization;
#[allow(dead_code)]
#[path = "../../src/timings.rs"]
mod timings;
fn execute() -> error::Result<()> {
    let args: Vec<String> = std::env::args().skip(1).collect();
    if args.len() == 5 && args[0] == "prepare" && args[1] == "--input" && args[3] == "--out" {
        let bytes = io::read_bytes(std::path::Path::new(&args[2]), protocol::CONTROL_BOUND_V2)?;
        let control = protocol::parse_json(&bytes, protocol::CONTROL_BOUND_V2)?;
        if control["format"] == "core036.workload.v2" {
            return raw_oracle::prepare(
                &bytes,
                &native_artifacts::InputRoots::from_controller_environment()?,
                std::path::Path::new(&args[4]),
            );
        }
        return reference::prepare(&control, std::path::Path::new(&args[4]));
    }
    if args.len() == 7
        && args[0] == "replay"
        && args[1] == "--prepared"
        && args[3] == "--expected-context"
        && args[5] == "--out"
    {
        return raw_oracle::replay(
            std::path::Path::new(&args[2]),
            &io::read_bytes(std::path::Path::new(&args[4]), protocol::CONTROL_BOUND_V2)?,
            &native_artifacts::InputRoots::from_controller_environment()?,
            std::path::Path::new(&args[6]),
        );
    }
    Err(error::StudyError::InvalidInput("Usage: prepare --input WORKLOAD --out NEW_DIRECTORY; replay --prepared PATH --expected-context PATH --out NEW_DIRECTORY".into()))
}
fn main() -> std::process::ExitCode {
    match execute() {
        Ok(()) => std::process::ExitCode::SUCCESS,
        Err(e) => {
            eprintln!("{e}");
            std::process::ExitCode::from(e.exit_code())
        }
    }
}
