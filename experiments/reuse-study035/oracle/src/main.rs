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
#[path = "../../src/reference.rs"]
mod reference;
#[allow(dead_code)]
#[path = "../../src/safety_check.rs"]
mod safety_check;
fn execute() -> error::Result<()> {
    let args: Vec<String> = std::env::args().skip(1).collect();
    if args.len() != 5 || args[0] != "prepare" || args[1] != "--input" || args[3] != "--out" {
        return Err(error::StudyError::InvalidInput(
            "Usage: prepare --input CONFIG --out NEW_DIRECTORY".into(),
        ));
    }
    let input = io::read(std::path::Path::new(&args[2]))?;
    reference::prepare(&input, std::path::Path::new(&args[4]))
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
