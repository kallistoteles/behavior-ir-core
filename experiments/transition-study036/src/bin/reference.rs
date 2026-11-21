#![forbid(unsafe_code)]
fn main() -> std::process::ExitCode {
    if matches!(
        std::env::args().nth(1).as_deref(),
        Some("execute" | "--help")
    ) {
        return transition_study036::run_v2::entry(transition_study036::run_v2::Role::Reference);
    }
    transition_study036::run::reference_entry()
}
