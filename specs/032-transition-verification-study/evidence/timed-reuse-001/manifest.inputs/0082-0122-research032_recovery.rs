#![allow(clippy::unwrap_used)]
//! Independent consumer: the existing behavior-engine facade is its only Core dependency.
#[path = "support/research032_recovery.rs"]
mod recovery;
#[test]
fn research032_recovery_worker() {
    if let Some(root) = std::env::var_os("CORE032_RECOVERY_ROOT") {
        recovery::worker(std::path::Path::new(&root));
    }
}
#[test]
fn research032_exact_public_recovery_replay_and_pending_prefix() {
    for repetition in 0..3 {
        let result = recovery::trial(repetition);
        assert_eq!(result["recovered_position"], 1);
        assert_eq!(result["retry_already"], true);
        assert_eq!(result["command_occurrences"], 2);
        assert_eq!(result["replay_ok"], true);
        assert_eq!(result["native_head_certified"], false);
        assert_eq!(result["missing_support_rejected"], true);
        println!("CORE032_RECOVERY {result}");
    }
}
