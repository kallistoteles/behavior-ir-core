#![forbid(unsafe_code)]
use std::io::Write;
use std::{fs, path::Path, time::Instant};
use transition_study032::{
    execution::{self, NativeCase},
    reference::full_scenario,
    types::*,
};
fn run() -> Result<()> {
    let args = std::env::args().collect::<Vec<_>>();
    if args.len() < 4 {
        return Err(StudyError::Unsupported("native_study scenario CASE OUTPUT | run CASE OUTPUT A|producer existing|study | check CASE OUTPUT WITNESS".into()));
    }
    let case: NativeCase = serde_json::from_slice(&fs::read(&args[2])?)?;
    case.validate()?;
    let output = Path::new(&args[3]);
    let clock = Instant::now();
    let value = match args[1].as_str() {
        "scenario" => {
            let operations = case
                .prefix
                .iter()
                .chain(&case.operations)
                .cloned()
                .collect::<Vec<_>>();
            let mut scenario = full_scenario(&case.config, case.initial_population, &operations)?;
            scenario["measure_after"] = serde_json::json!(case.prefix.len());
            scenario
        }
        "run" if args.len() == 6 => {
            execution::to_wire(&execution::run(&case, &args[4], &args[5])?)?
        }
        "check" if args.len() == 6 => {
            let proposed = execution::from_wire(
                &case,
                &args[5],
                serde_json::from_slice(&fs::read(&args[4])?)?,
            )?;
            let checked = execution::check_produced(&case, &proposed.observations)?;
            serde_json::json!({"format":"core032.native-check.v1","outcome":"Accepted","whole_seconds":clock.elapsed().as_secs_f64(),"observations":checked})
        }
        "format" if args.len() == 6 => {
            let observations = serde_json::from_slice(&fs::read(&args[4])?)?;
            execution::to_wire(&execution::format_observations(
                &case,
                &args[5],
                observations,
            )?)?
        }
        "export" if args.len() == 6 => {
            let expanded = execution::from_wire(
                &case,
                &args[5],
                serde_json::from_slice(&fs::read(&args[4])?)?,
            )?;
            serde_json::json!({"format":"core032.expanded-output.v1","observations":expanded.observations,"whole_seconds":clock.elapsed().as_secs_f64()})
        }
        "recover" if args.len() == 6 => {
            let input = execution::from_wire(
                &case,
                &args[5],
                serde_json::from_slice(&fs::read(&args[4])?)?,
            )?;
            let expected = &input
                .observations
                .last()
                .ok_or_else(|| StudyError::Unavailable("recovery anchor absent".into()))?
                .after;
            let support = transition_study032::witness::ReplaySupport {
                config: case.config.clone(),
                initial_population: case.initial_population,
                prefix: case
                    .prefix
                    .iter()
                    .chain(&case.operations)
                    .cloned()
                    .collect(),
            };
            let (reference, views) =
                transition_study032::recovery::recover(Some(&support), expected)?;
            let state = reference.snapshot()?;
            if !views.matches(&state) {
                return Err(StudyError::Integrity("cold reconstructed J differs".into()));
            }
            serde_json::json!({"format":"core032.cold-view-recovery.v1","head":state.history,"live":state.live.len(),"used":state.used.len(),"view_count":views.count,"whole_seconds":clock.elapsed().as_secs_f64(),"complete_history_checked":true})
        }
        _ => return Err(StudyError::Unsupported("native command/arity".into())),
    };
    let file = fs::OpenOptions::new()
        .write(true)
        .create_new(true)
        .open(output)?;
    let mut writer = std::io::BufWriter::new(file);
    serde_json::to_writer(&mut writer, &value)?;
    writer.flush()?;
    Ok(())
}
fn main() -> std::process::ExitCode {
    match run() {
        Ok(()) => std::process::ExitCode::SUCCESS,
        Err(e) => {
            eprintln!("{e}");
            let (checker, data) = match &e {
                StudyError::Unsupported(_) => (Some("Unsupported"), None),
                StudyError::Unavailable(_) => (None, Some("MissingSupport")),
                StudyError::InvalidWitness(_) | StudyError::Json(_) | StudyError::Integrity(_) => {
                    (Some("InvalidWitness"), Some("CorruptSupport"))
                }
                StudyError::Io(error) if error.kind() == std::io::ErrorKind::NotFound => {
                    (None, Some("MissingSupport"))
                }
                _ => (None, None),
            };
            eprintln!(
                "CORE032_FAILURE {}",
                serde_json::json!({"format":"core032.failure.v1","checker":checker,"data":data,"semantic":null,"error":e.to_string(),"scope":"tool/check/data failure; no semantic denial inferred"})
            );
            std::process::ExitCode::FAILURE
        }
    }
}
