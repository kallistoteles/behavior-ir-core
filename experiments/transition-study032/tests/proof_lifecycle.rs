#![allow(clippy::unwrap_used)]
use transition_study032::proof_lifecycle::Progress;
#[test]
fn a_proved_prefix_never_authorizes_the_unproved_suffix() {
    let p = Progress::new(5, 3, 3).unwrap();
    assert!(!p.complete());
    assert_eq!(p.pending, 2);
    assert!(Progress::new(2, 3, 3).is_err());
    assert!(Progress::new(3, 3, 4).is_err());
    assert!(Progress::new(3, 3, 3).unwrap().complete());
}
#[test]
#[ignore = "requires real independently checked Nova artifacts in CORE032_PROOF_CONTROL"]
fn actual_checkpoint_continuation_rejects_partial_wrong_or_stale_artifacts() {
    use sha2::{Digest, Sha256};
    use transition_study032::{
        proof_lifecycle,
        prover::{self, Case, ProofEnvelope},
        types::Operation,
    };
    let root = std::path::PathBuf::from(std::env::var("CORE032_PROOF_CONTROL").unwrap());
    let case: Case =
        serde_json::from_slice(&std::fs::read(root.join("case.json")).unwrap()).unwrap();
    let proof: ProofEnvelope =
        prover::decode(&std::fs::read(root.join("proof.bin")).unwrap()).unwrap();
    let p = prover::prepare(&case).unwrap();
    let bytes = std::fs::read(root.join("parameters.bin")).unwrap();
    let report: serde_json::Value =
        serde_json::from_slice(&std::fs::read(root.join("report.json")).unwrap()).unwrap();
    let pp = prover::load_parameters(
        &p,
        &bytes,
        &format!("{:x}", Sha256::digest(&bytes)),
        report["parameters"].as_str().unwrap(),
    )
    .unwrap();
    let checkpoint = proof_lifecycle::checkpoint(&case, &pp, &proof).unwrap();
    proof_lifecycle::validate_checkpoint(&case, &pp, &checkpoint).unwrap();
    let mut bad = checkpoint.clone();
    bad.payload.pop();
    assert!(proof_lifecycle::validate_checkpoint(&case, &pp, &bad).is_err());
    let scratch = std::env::temp_dir().join(format!(
        "core032-checkpoint-{}-{}",
        std::process::id(),
        std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .unwrap()
            .as_nanos()
    ));
    std::fs::create_dir(&scratch).unwrap();
    let published = scratch.join("published");
    proof_lifecycle::publish(&published, &checkpoint, false).unwrap();
    let restored = proof_lifecycle::read_untrusted(&published).unwrap();
    proof_lifecycle::validate_checkpoint(&case, &pp, &restored).unwrap();
    assert!(proof_lifecycle::publish(&published, &checkpoint, false).is_err());
    let interrupted = scratch.join("interrupted");
    assert!(proof_lifecycle::publish(&interrupted, &checkpoint, true).is_err());
    assert!(proof_lifecycle::read_untrusted(&interrupted).is_err());
    let partial = scratch.join("partial");
    std::fs::write(&partial, [0, 1, 2]).unwrap();
    assert!(proof_lifecycle::read_untrusted(&partial).is_err());
    std::fs::remove_dir_all(scratch).unwrap();
    let mut wrong = case.clone();
    wrong.initial_population = 1;
    assert!(proof_lifecycle::validate_checkpoint(&wrong, &pp, &checkpoint).is_err());
    let mut extended = case.clone();
    extended.operations.push(Operation::Emit);
    let continued = proof_lifecycle::resume(&case, &extended, &pp, &checkpoint).unwrap();
    prover::verify(&prover::prepare(&extended).unwrap(), &pp, &continued).unwrap();
    let mut asynchronous = extended.clone();
    asynchronous.operations.push(Operation::Emit);
    let observed = proof_lifecycle::run_async(
        &case,
        &asynchronous,
        &pp,
        &checkpoint,
        std::time::Duration::from_millis(1),
    )
    .unwrap();
    assert_eq!(observed["final"]["pending"], 0);
    assert!(observed["observed_max_pending"].as_u64().unwrap() > 0);
    println!("CORE032_ASYNC {observed}");
    let mut wrong = extended;
    wrong.operations[0] = Operation::Emit;
    assert!(proof_lifecycle::resume(&case, &wrong, &pp, &checkpoint).is_err());
}
