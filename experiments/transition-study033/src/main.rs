#![forbid(unsafe_code)]

use std::process::ExitCode;

fn main() -> ExitCode {
    eprintln!(
        "{}",
        serde_json::json!({
            "format_version": core_proof_feasibility033::FORMAT_VERSION,
            "status": "Unsupported",
            "reason": "Bootstrap only; no semantic or proof gate has been implemented.",
            "g1_pass": false
        })
    );
    ExitCode::from(6)
}
