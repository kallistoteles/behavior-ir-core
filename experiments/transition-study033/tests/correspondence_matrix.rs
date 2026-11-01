mod common;
use core_proof_feasibility033::{
    correspondence::{Primitive, check_matrix, encode_matrix},
    profile::Error,
};
use std::fs;
type TestResult = Result<(), Box<dyn std::error::Error>>;

#[test]
fn genuine_actual_matrix_has_full_word_range_and_the_checked_output_port() -> TestResult {
    let f = common::Fixture::new()?;
    let matrix = common::matrix::signed_negative();
    let bytes = common::matrix::bytes(&matrix);
    assert_eq!(encode_matrix(&matrix)?, bytes);
    let path = f.0.join("matrix.bin");
    fs::write(&path, &bytes)?;
    let receipt = check_matrix(&path, Primitive::SignedNegative64, &f.0.join("proof"))?;
    assert_eq!(receipt.output_ports, vec![2]);
    assert!(receipt.proof_receipt.is_file());
    assert!(!receipt.g1_pass);
    Ok(())
}

#[test]
fn actual_matrix_mutations_do_not_retain_the_old_ir_meaning() -> TestResult {
    let f = common::Fixture::new()?;
    let genuine = common::matrix::signed_negative();
    let mut missing = genuine.clone();
    missing.rows.remove(0);
    let mut modulus = genuine.clone();
    modulus.modulus[0] ^= 2;
    let mut coefficient = genuine.clone();
    coefficient.rows[64].a[0].coefficient[0] = 2;
    let mut output = genuine.clone();
    output.outputs[0] = 1;
    let mut sign = genuine.clone();
    sign.rows[65].a[1].variable = 65;
    for (name, matrix) in [
        ("missing-boolean", missing),
        ("modulus", modulus),
        ("coefficient", coefficient),
        ("output-alias", output),
        ("wrong-sign-bit", sign),
    ] {
        let path = f.0.join(format!("{name}.bin"));
        fs::write(&path, common::matrix::bytes(&matrix))?;
        assert!(
            matches!(
                check_matrix(&path, Primitive::SignedNegative64, &f.0.join(name)),
                Err(Error::Rejected(_))
            ),
            "actual mutation {name} must fail its certified relation/port check"
        );
    }
    Ok(())
}

// This named later group runs red again before T044, using the real synthesized
// circuit. T034's early-group command explicitly excludes it; it never passes
// on a standalone semantic submatrix or a synthetic Nova shape.
#[test]
fn later_actual_nova_digest_return_and_augmented_connections_are_required() -> TestResult {
    let fixture = core_proof_feasibility033::proof::Fixture::genuine([44; 32], 1)?;
    let actual = fixture.embedding()?;
    fixture.check_embedding(&actual)?;
    assert!(!actual.digest_limb_wires.is_empty());
    assert!(
        actual
            .digest_limb_wires
            .iter()
            .all(|limbs| limbs.len() == 4)
    );
    let mut truncated = actual.clone();
    truncated.digest_limb_wires[0].pop();
    let mut unused = actual.clone();
    unused.returned_z_next = unused.semantic_input_wires.clone();
    let mut wrong_port = actual.clone();
    wrong_port.semantic_output_wires = wrong_port.semantic_input_wires.clone();
    let mut wrong_hash = actual.clone();
    wrong_hash.augmented_hash_inputs.clear();
    for altered in [truncated, unused, wrong_port, wrong_hash] {
        assert!(fixture.check_embedding(&altered).is_err());
    }
    Ok(())
}
