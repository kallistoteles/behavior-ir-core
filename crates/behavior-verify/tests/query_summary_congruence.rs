#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/query_summary.rs"]
mod support;

use behavior_verify::Profile;
use sha2::{Digest, Sha256};

#[test]
fn unchanged_original_full_c19_is_verified_with_both_local_uniqueness_proofs() {
    let wire = support::frozen("original-approval.json");
    let module = support::admit(&wire);
    let identities = support::frozen("semantic-identities.json");
    assert_eq!(module.behavior_version(), identities["behavior_hash"]);
    assert_eq!(
        behavior_core::schema(&module).hash,
        identities["schema_hash"]
    );
    for (name, digest) in support::frozen("baseline.json")["artifact_sha256"]
        .as_object()
        .unwrap()
    {
        let bytes = std::fs::read(support::evidence_dir().join(name)).unwrap();
        assert_eq!(
            format!("{:x}", Sha256::digest(&bytes)),
            digest.as_str().unwrap(),
            "{name}"
        );
    }
    let profile = Profile::default();
    assert_eq!(profile.rlimit, 20_000_000);
    assert_eq!(profile.wall_clock_guard_ms, 60_000);
    let report = support::verify(&wire, &profile);
    let old = support::frozen("original-verification.json");
    assert_eq!(report.value["profile"], old["profile"]);
    assert_eq!(
        report.value["checks"].as_array().unwrap().len(),
        old["checks"].as_array().unwrap().len()
    );
    for target in support::original_targets() {
        let check = report.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .find(|check| support::obligation_id(check) == target)
            .unwrap();
        assert_eq!(check["outcome"], "proven", "{check}");
    }
    assert_eq!(
        report.result,
        "verified",
        "{}",
        report.to_json_string().unwrap()
    );
}

#[test]
fn minimal_original_any_guard_proves_zero_plus_one() {
    let report = support::verify(&support::frozen("minimal.json"), &support::post_profile());
    assert_eq!(
        report.result,
        "verified",
        "{}",
        report.to_json_string().unwrap()
    );
    assert!(
        report.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["outcome"] == "proven")
    );
}

#[test]
fn existing_count_guard_control_stays_proven() {
    let report = support::verify(
        &support::frozen("minimal-count-guard-control.json"),
        &support::post_profile(),
    );
    assert_eq!(
        report.result,
        "verified",
        "{}",
        report.to_json_string().unwrap()
    );
}

#[test]
fn equivalent_source_forms_and_typed_capture_aliases_are_proven() {
    for (name, wire) in support::positive_variants() {
        let report = support::verify(&wire, &support::post_profile());
        assert_eq!(
            report.result,
            "verified",
            "{name}: {}",
            report.to_json_string().unwrap()
        );
    }
}

#[test]
fn different_captures_filters_domains_and_child_states_keep_real_violations() {
    let baseline = support::frozen("negative-baseline.json");
    let mut checked = 0;
    for case in support::runtime_cases()
        .into_iter()
        .filter(|case| case.expected_result == "DENY")
    {
        let archived = baseline["cases"]
            .as_array()
            .unwrap()
            .iter()
            .find(|entry| entry["name"] == case.name)
            .unwrap();
        assert_eq!(archived["request"], case.request);
        assert_eq!(archived["expected_code"], "POSTCONDITION_FAILED");
        let report = support::verify(&case.wire, &support::post_profile());
        assert_ne!(report.result, "verified", "{}: false proof", case.name);
        assert!(
            support::confirm_witnesses(&support::admit(&case.wire), &report) > 0,
            "{}: {}",
            case.name,
            report.to_json_string().unwrap()
        );
        checked += 1;
    }
    assert_eq!(checked, 8);
}

#[test]
fn concrete_nonmatches_do_not_become_unconditional_delta_assumptions() {
    for case in support::runtime_cases().into_iter().filter(|case| {
        matches!(
            case.name,
            "nonmatching-create-has-zero-delta" | "remove-plus-create-has-zero-net-delta"
        )
    }) {
        // The baseline request has zero net contribution. The module does not
        // require every actor value or every removed row to have that relation.
        // A universal proof would silently add an unjustified membership premise.
        let module = support::admit(&case.wire);
        assert_eq!(
            behavior_core::evaluate(&module, &case.request.to_string()).result(),
            "ALLOW"
        );
        let report = support::verify(&case.wire, &support::post_profile());
        assert_ne!(
            report.result, "verified",
            "{}: unjustified delta assumption",
            case.name
        );
        assert!(
            support::confirm_witnesses(&module, &report) > 0,
            "{}: {}",
            case.name,
            report.to_json_string().unwrap()
        );
    }
}

#[test]
fn minimal_and_original_missing_guards_retain_all_three_confirmed_violations() {
    let baseline = support::frozen("missing-guard-baseline.json");
    for (name, wire, expected) in [
        (
            "minimal",
            support::frozen("minimal-missing-guard-control.json"),
            1,
        ),
        ("original", support::without_original_freshness(), 2),
    ] {
        let module = support::admit(&wire);
        let old = baseline["controls"]
            .as_array()
            .unwrap()
            .iter()
            .find(|entry| entry["case"] == name)
            .unwrap();
        assert_eq!(
            old["module"], wire,
            "guard mutation drifted from the pre-correction input"
        );
        let report = support::verify(&wire, &support::post_profile());
        assert_eq!(support::confirm_witnesses(&module, &report), expected);
        let mut reproduced = 0;
        for finding in old["report"]["findings"]
            .as_array()
            .unwrap()
            .iter()
            .filter(|f| f["kind"] == "postcondition")
        {
            let cx = &finding["counterexample"];
            let record =
                behavior_core::evaluate(&module, &support::request_from_witness(cx).to_string());
            assert_eq!(record.as_json(), &cx["record"]);
            assert_eq!(
                record.as_json()["reasons"][0]["code"],
                "POSTCONDITION_FAILED"
            );
            reproduced += 1;
        }
        assert_eq!(reproduced, expected);
    }
}

#[test]
fn uncertified_partial_membership_remains_nonproof_even_with_a_true_count_bound() {
    let case = support::runtime_cases()
        .into_iter()
        .find(|case| case.name == "any-short-circuit-does-not-certify-count")
        .unwrap();
    let profile = Profile {
        checks: vec![
            behavior_verify::CheckKind::EvaluationError,
            behavior_verify::CheckKind::Postcondition,
        ],
        ..Profile::default()
    };
    let report = support::verify(&case.wire, &profile);
    assert_ne!(
        report.result, "verified",
        "count >= 0 cannot establish successful partial membership"
    );
    assert!(
        report.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["kind"] == "evaluation_error" && c["outcome"] != "proven")
    );
}
