mod common;

type TestResult = Result<(), Box<dyn std::error::Error>>;

#[test]
fn pair_requires_a_complete_frozen_input_inventory_before_proof_work() -> TestResult {
    let fixture = common::Fixture::new()?;
    assert!(fixture.freeze()?.status.success());
    let result = fixture.run(&[
        "check-correspondence",
        "--manifest",
        "frozen/manifest.json",
        "--out",
        "pair",
    ])?;
    assert_eq!(result.status.code(), Some(2));
    assert!(!fixture.0.join("pair").exists());
    let error: serde_json::Value = serde_json::from_slice(&result.stderr)?;
    assert_eq!(error["status"], "MalformedInput");
    assert_eq!(error["g1_pass"], false);
    Ok(())
}
