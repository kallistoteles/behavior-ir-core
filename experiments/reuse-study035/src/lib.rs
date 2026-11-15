#![forbid(unsafe_code)]
pub mod error;
pub fn not_implemented(treatment: &str) -> std::process::ExitCode {
    eprintln!("core035: {treatment}: UnimplementedResearchWorker; no semantic result or authority established");
    std::process::ExitCode::from(3)
}
pub mod protocol;
pub mod observation;
pub mod fixtures;
pub use protocol as artifacts;
pub mod capture;
pub mod io;
pub mod safety_check;
pub mod reference;
pub mod run;
pub mod ground;
pub mod acquire;
pub mod recovery;
