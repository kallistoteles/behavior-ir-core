#![allow(clippy::unwrap_used)]
use transition_study032::consumer::{ClaimBinding, check_binding};
#[test]
fn expected_subject_anchor_endpoint_and_outputs_are_independent_inputs() {
    let expected = ClaimBinding::control();
    assert!(check_binding(&expected, &expected).is_ok());
    for field in [
        "subject",
        "schema",
        "profile",
        "checker",
        "anchor",
        "endpoint",
        "outputs",
        "parameters",
    ] {
        let mut wrong = expected.clone();
        wrong.fields.insert(field.into(), "changed".into());
        assert!(
            check_binding(&expected, &wrong).is_err(),
            "accepted changed {field}"
        );
    }
    let mut wrong = expected.clone();
    wrong.steps += 1;
    assert!(check_binding(&expected, &wrong).is_err());
}
#[test]
#[ignore = "explicit real-artifact consumer controls; requires CORE032_PROOF_CONTROL directory"]
fn proof_consumer_actual_proof_controls() {
    use sha2::{Digest, Sha256};
    use transition_study032::prover::{self, Case, Proof, ProofEnvelope};
    let directory = std::path::PathBuf::from(std::env::var("CORE032_PROOF_CONTROL").unwrap());
    let case: Case =
        serde_json::from_slice(&std::fs::read(directory.join("case.json")).unwrap()).unwrap();
    let prepared = prover::prepare(&case).unwrap();
    let envelope: ProofEnvelope =
        prover::decode(&std::fs::read(directory.join("proof.bin")).unwrap()).unwrap();
    let bytes = std::fs::read(directory.join("parameters.bin")).unwrap();
    let report: serde_json::Value =
        serde_json::from_slice(&std::fs::read(directory.join("report.json")).unwrap()).unwrap();
    let pp = prover::load_parameters(
        &prepared,
        &bytes,
        &format!("{:x}", Sha256::digest(&bytes)),
        report["parameters"].as_str().unwrap(),
    )
    .unwrap();
    prover::verify(&prepared, &pp, &envelope).unwrap();
    for field in [
        "subject", "schema", "profile", "model", "checker", "anchor", "endpoint", "outputs", "case",
    ] {
        let mut bad: ProofEnvelope = prover::decode(&prover::encode(&envelope).unwrap()).unwrap();
        bad.binding.fields.insert(field.into(), "forged".into());
        // A real cryptographic proof still verifies if the claim-wrapper check
        // is deliberately omitted. The complete consumer must reject it.
        let crypto: Proof = prover::decode(&bad.proof).unwrap();
        assert!(
            crypto
                .verify(
                    &pp,
                    prepared.steps.len(),
                    &prepared.initial.to_fields(&prepared.shape).unwrap()
                )
                .is_ok()
        );
        assert!(
            prover::verify(&prepared, &pp, &bad).is_err(),
            "accepted changed {field}"
        );
    }
    let mut bad: ProofEnvelope = prover::decode(&prover::encode(&envelope).unwrap()).unwrap();
    bad.parameters = "arbitrary producer key".into();
    assert!(prover::verify(&prepared, &pp, &bad).is_err());
    let mut bad: ProofEnvelope = prover::decode(&prover::encode(&envelope).unwrap()).unwrap();
    bad.proof.truncate(17);
    assert!(prover::verify(&prepared, &pp, &bad).is_err());
    let mut wrong = prover::prepare(&case).unwrap();
    wrong.final_state.command_occurrences += 1;
    assert!(prover::verify(&wrong, &pp, &envelope).is_err());
    let mut wrong = prover::prepare(&case).unwrap();
    wrong.initial.attempt_digest[0] = 1;
    assert!(prover::verify(&wrong, &pp, &envelope).is_err());
    let mut wrong = prover::prepare(&case).unwrap();
    wrong.steps.push(wrong.steps[0].clone());
    assert!(prover::verify(&wrong, &pp, &envelope).is_err());
    let mut changed_case = case;
    changed_case.operations[1] = transition_study032::types::Operation::Probe {
        threshold: 2,
        max_matches: 0,
    };
    let changed = prover::prepare(&changed_case).unwrap();
    assert!(prover::verify(&changed, &pp, &envelope).is_err());
    let mut corrupt = bytes;
    corrupt[10] ^= 1;
    assert!(
        prover::load_parameters(
            &prepared,
            &corrupt,
            "wrong",
            report["parameters"].as_str().unwrap()
        )
        .is_err()
    );
}
