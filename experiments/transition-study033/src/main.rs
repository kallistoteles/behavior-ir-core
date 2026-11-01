use core_proof_feasibility033::{evidence, profile::Error};
use std::{collections::BTreeMap, path::Path, process::ExitCode};

fn run() -> Result<(), Error> {
    let mut args = std::env::args().skip(1);
    let command = args
        .next()
        .ok_or_else(|| Error::Invalid("missing command".into()))?;
    let mut flags = BTreeMap::new();
    while let Some(flag) = args.next() {
        if !flag.starts_with("--") {
            return Err(Error::Invalid("expected a named option".into()));
        }
        let value = args
            .next()
            .ok_or_else(|| Error::Invalid(format!("missing value for {flag}")))?;
        if flags.insert(flag, value).is_some() {
            return Err(Error::Invalid("duplicate option".into()));
        }
    }
    let required = |name: &str| -> Result<&Path, Error> {
        flags
            .get(name)
            .map(Path::new)
            .ok_or_else(|| Error::Invalid(format!("missing {name}")))
    };
    match command.as_str() {
        "freeze" => {
            if flags
                .keys()
                .any(|f| !["--profile", "--out"].contains(&f.as_str()))
            {
                return Err(Error::Invalid("unknown freeze option".into()));
            }
            evidence::freeze(required("--profile")?, required("--out")?)?;
            println!(
                "{}",
                serde_json::json!({"status":"InputFrozen", "g1_pass":false})
            );
        }
        "assess" => {
            if flags.keys().any(|f| {
                !["--manifest", "--failure-receipt", "--evidence", "--out"].contains(&f.as_str())
            }) {
                return Err(Error::Invalid("unknown assess option".into()));
            }
            let assessment = evidence::assess_failure(
                required("--manifest")?,
                required("--failure-receipt")?,
                required("--evidence")?,
                required("--out")?,
            )?;
            println!(
                "{}",
                serde_json::to_string(&assessment)
                    .map_err(|_| Error::Invalid("assessment encoding failed".into()))?
            );
        }
        _ => {
            return Err(Error::Unsupported(format!(
                "command {command} is not established"
            )));
        }
    }
    Ok(())
}

fn main() -> ExitCode {
    match run() {
        Ok(()) => ExitCode::SUCCESS,
        Err(error) => {
            eprintln!(
                "{}",
                serde_json::json!({"format_version":core_proof_feasibility033::FORMAT_VERSION,"status":error.status(),"reason":error.to_string(),"g1_pass":false})
            );
            ExitCode::from(error.exit_code())
        }
    }
}
