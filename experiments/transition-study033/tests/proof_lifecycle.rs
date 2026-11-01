use core_proof_feasibility033::proof::Fixture;
type TestResult = Result<(), Box<dyn std::error::Error>>;
#[test]
fn actual_constructor_compression_and_returned_endpoint_are_checked() -> TestResult {
    let fixture = Fixture::genuine([33; 32], 1)?;
    let run = fixture.run()?;
    assert_eq!(run.constructor_work_steps, 1);
    assert_eq!(run.first_prove_work_steps, 0);
    assert!(run.microsteps >= 1);
    assert_eq!(run.endpoint.microsteps, run.microsteps);
    assert_eq!(
        run.compression_kind,
        "Nova/standard-Spartan/Pallas-Vesta/Pedersen-IPA"
    );
    assert!(!run.compressed.is_empty());
    assert_ne!(run.compressed, run.recursive);
    assert_eq!(
        fixture.verify(&run.compressed, &run.endpoint)?,
        run.endpoint
    );
    assert!(fixture.verify(&run.recursive, &run.endpoint).is_err());
    let mut wrong = run.endpoint.clone();
    wrong.event_position += 1;
    assert!(fixture.verify(&run.compressed, &wrong).is_err());
    Ok(())
}
#[test]
fn actual_checkpoint_restore_checks_consistency_and_exact_subject() -> TestResult {
    let fixture = Fixture::genuine([34; 32], 1)?;
    let run = fixture.run()?;
    assert!(!run.checkpoint.is_empty());
    fixture.restore(&run.checkpoint, &run.endpoint)?;
    let mut stale = run.endpoint.clone();
    stale.microsteps += 1;
    assert!(fixture.restore(&run.checkpoint, &stale).is_err());
    let mut corrupt = run.checkpoint.clone();
    corrupt[0] ^= 1;
    assert!(fixture.restore(&corrupt, &run.endpoint).is_err());
    assert!(fixture.restore(&[], &run.endpoint).is_err());
    Ok(())
}
#[test]
fn recorded_entropy_replays_real_proof_and_checkpoint_bytes_across_threads() -> TestResult {
    let first = Fixture::genuine([35; 32], 1)?.run()?;
    let repeated = Fixture::genuine([35; 32], 1)?.run()?;
    let cross_thread = Fixture::genuine([35; 32], 2)?.run()?;
    assert_eq!(first.compressed, repeated.compressed);
    assert_eq!(first.checkpoint, repeated.checkpoint);
    assert_eq!(first.compressed, cross_thread.compressed);
    assert_eq!(first.checkpoint, cross_thread.checkpoint);
    let changed = Fixture::genuine([36; 32], 1)?.run()?;
    assert_eq!(first.semantic_event, changed.semantic_event);
    assert_eq!(first.endpoint, changed.endpoint);
    assert_ne!(first.compressed, changed.compressed);
    Ok(())
}
