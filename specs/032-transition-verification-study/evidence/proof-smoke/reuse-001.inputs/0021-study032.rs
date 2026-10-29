#![forbid(unsafe_code)]
use transition_study032::{fixtures::Config, reference::full_scenario, types::Operation};
fn main() -> std::process::ExitCode {
    if std::env::args().nth(1).as_deref()==Some("reference-control-scenario") {
        let operations=vec![Operation::Create{ids:vec!["once".into()],owner:None},Operation::Remove{key:transition_study032::types::Key::new("E","once")},Operation::Create{ids:vec!["once".into()],owner:None},Operation::Emit];
        return match full_scenario(&Config{commands:2,..Config::default()},0,&operations) {
            Ok(value)=>{println!("{value}");std::process::ExitCode::SUCCESS}
            Err(e)=>{eprintln!("{e}");std::process::ExitCode::FAILURE}
        };
    }
    eprintln!("study032: command not implemented");
    std::process::ExitCode::FAILURE
}
