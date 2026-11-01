mod common;
use core_proof_feasibility033::{
    correspondence::{Primitive, check_source},
    profile::Error,
};
use sha2::{Digest, Sha256};
use std::fs;

type TestResult = Result<(), Box<dyn std::error::Error>>;
const GENUINE: &[u8] = b"pub fn checker_step(x: i64) -> bool {\n    x < 0_i64\n}\n";

#[test]
fn genuine_signed_comparison_binds_the_actual_compiled_file() -> TestResult {
    let f = common::Fixture::new()?;
    let source = f.0.join("checker_step.rs");
    fs::write(&source, GENUINE)?;
    let receipt = check_source(&source, Primitive::SignedNegative64, &f.0.join("proof"))?;
    let expected: [u8; 32] = Sha256::digest(GENUINE).into();
    assert_eq!(receipt.source_sha256, expected);
    assert_eq!(receipt.compiled_input_sha256, expected);
    assert_ne!(receipt.executable_sha256, [0; 32]);
    assert!(receipt.proof_receipt.is_file());
    assert!(!receipt.g1_pass);
    Ok(())
}

#[test]
fn changed_comparison_constant_or_signed_interpretation_is_rejected() -> TestResult {
    let f = common::Fixture::new()?;
    for (name, body) in [
        ("le", "pub fn checker_step(x: i64) -> bool { x <= 0_i64 }"),
        (
            "constant",
            "pub fn checker_step(x: i64) -> bool { x < 1_i64 }",
        ),
        (
            "unsigned",
            "pub fn checker_step(x: u64) -> bool { x < 0_u64 }",
        ),
        (
            "cast",
            "pub fn checker_step(x: i64) -> bool { (x as u64) < 0_u64 }",
        ),
    ] {
        let path = f.0.join(format!("{name}.rs"));
        fs::write(&path, body)?;
        assert!(
            matches!(
                check_source(&path, Primitive::SignedNegative64, &f.0.join(name)),
                Err(Error::Rejected(ref reason)) if reason.contains("Tactic `decide` proved that the proposition")
                    && reason.contains("is false")
            ),
            "{name} must be rejected by actual correspondence validation"
        );
    }
    Ok(())
}

#[test]
fn forbidden_extra_source_paths_and_hidden_acceptance_are_rejected() -> TestResult {
    let f = common::Fixture::new()?;
    for (name, extra) in [
        ("cfg", "#[cfg(any())]\n"),
        ("attribute", "#[inline(always)]\n"),
        ("macro", "macro_rules! hidden { () => { true } }\n"),
        ("unsafe", "pub unsafe fn hidden() {}\n"),
        ("ffi", "unsafe extern \"C\" { fn hidden(); }\n"),
        ("heap", "pub fn hidden() { let _ = Vec::<u8>::new(); }\n"),
        ("panic", "pub fn hidden() { panic!(\"hidden\"); }\n"),
        ("alternate", "pub fn accepted() -> bool { true }\n"),
    ] {
        let source = f.0.join(format!("{name}.rs"));
        let bytes = [extra.as_bytes(), GENUINE].concat();
        fs::write(&source, bytes)?;
        assert!(
            matches!(
                check_source(&source, Primitive::SignedNegative64, &f.0.join(name)),
                Err(Error::Rejected(ref reason)) if reason.contains("Tactic `decide` proved that the proposition")
                    && reason.contains("is false")
            ),
            "{name} must fail actual whole-file parsing"
        );
    }
    Ok(())
}
