//! Whole actual pairs, output and semantic equality in timing/diagnostic modes.
#![allow(clippy::unwrap_used)]
#[allow(dead_code)]
#[path = "v2_support.rs"]
mod support;
use transition_study036::{
    error::Result, fixtures::InvocationMetadata, ground::Ground, operation, reference, run_v2::Role,
};

#[test]
fn complete_pairs_preserve_full_original_bytes_and_enclose_both_operations() -> Result<()> {
    let expected = support::expected()?;
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("private")
        .join(format!("actual-pairs-{}", std::process::id()));
    std::fs::create_dir_all(&root)?;
    let operations = [
        (reference::request("finish"), InvocationMetadata::legacy()),
        (reference::request("finish"), InvocationMetadata::legacy()),
    ];
    let original = [
        expected["expected"].clone(),
        expected["drain_expected"].clone(),
    ];
    for (role_name, role) in [
        ("R", Role::Reference),
        ("GV", Role::Reuse),
        ("B", Role::Buffered),
    ] {
        for diagnostic in [false, true] {
            let label = format!("{role_name}-{diagnostic}");
            let out = root.join(&label);
            let mut ground = Ground::supplied(reference::parent("growth-D1")?);
            ground.check(support::checked()?, &expected)?;
            ground.enable_views(!matches!(role, Role::Reference))?;
            let report = operation::run_pair(
                &mut ground,
                &operations,
                &original,
                operation::PairContext {
                    role,
                    diagnostic,
                    out: &out,
                    execution_scope: &label,
                },
            )?;
            assert_eq!(report.operations.len(), 2);
            let sum: u64 = report.operations.iter().map(|op| op.complete_ns).sum();
            assert!(report.cycle_ns >= sum);
            for (index, operation) in report.operations.iter().enumerate() {
                let mut bytes = serde_json::to_vec(&original[index])?;
                bytes.push(b'\n');
                assert_eq!(
                    std::fs::read(out.join(format!("observation-{index:03}.json")))?,
                    bytes
                );
                assert_eq!(operation.reconciled.complete_ns, operation.complete_ns);
                assert_eq!(
                    operation.reconciled.classified_ns + operation.reconciled.remainder_ns,
                    operation.complete_ns
                );
                assert_eq!(operation.delivery.buffered, role_name == "B");
                assert_eq!(
                    operation.delivery.underlying_write_calls.is_some(),
                    diagnostic
                );
                let quantities = serde_json::to_value(&operation.quantities)?;
                for field in ["rows_visited", "materialized_rows"] {
                    assert_eq!(quantities[field]["value"].is_u64(), diagnostic);
                    assert_eq!(quantities[field]["value"].is_null(), !diagnostic);
                }
                // The available JSON-size counter does not cover SHA input.
                assert!(quantities["hashed_bytes"]["value"].is_null());
                if diagnostic {
                    assert!(operation.delivery.underlying_write_calls.unwrap() > 0);
                }
            }
        }
    }
    Ok(())
}

#[test]
fn existing_output_is_rejected_without_an_operation_being_started() -> Result<()> {
    let expected = support::expected()?;
    let mut ground = Ground::supplied(reference::parent("growth-D1")?);
    ground.check(support::checked()?, &expected)?;
    let before = ground.history()?;
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("private")
        .join(format!("pair-collision-{}", std::process::id()));
    std::fs::create_dir_all(&root)?;
    let operations = [
        (reference::request("finish"), InvocationMetadata::legacy()),
        (reference::request("finish"), InvocationMetadata::legacy()),
    ];
    let original = [
        expected["expected"].clone(),
        expected["drain_expected"].clone(),
    ];
    assert!(
        operation::run_pair(
            &mut ground,
            &operations,
            &original,
            operation::PairContext {
                role: Role::Reuse,
                diagnostic: false,
                out: &root,
                execution_scope: "collision"
            }
        )
        .is_err()
    );
    assert_eq!(ground.history()?, before);
    Ok(())
}

#[test]
fn operation_quantities_exclude_existing_resident_counter_work() -> Result<()> {
    let expected = support::expected()?;
    let requests = [
        (reference::request("finish"), InvocationMetadata::legacy()),
        (reference::request("finish"), InvocationMetadata::legacy()),
    ];
    let original = [
        expected["expected"].clone(),
        expected["drain_expected"].clone(),
    ];
    let mut ground = Ground::supplied(reference::parent("growth-D1")?);
    ground.check(support::checked()?, &expected)?;
    ground.enable_views(true)?;
    ground.set_work(true);
    let audit = ground.audit_original()?;
    assert_eq!(audit["original_property_outcomes"]["status"], "Valid");
    let baseline = ground.diagnostics();
    assert!(
        baseline["versions"]["canonical_walk_rows"]
            .as_u64()
            .unwrap()
            > 0,
        "CounterFixtureNeedsRealPriorRowWork"
    );
    assert!(
        baseline["native"]["counts"]["hash_document_json_bytes"]
            .as_u64()
            .unwrap()
            > 0,
        "CounterFixtureNeedsRealPriorDocumentSerialization"
    );
    let out = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("private")
        .join(format!("operation-counter-deltas-{}", std::process::id()));
    std::fs::create_dir(&out)?;
    let context = operation::PairContext {
        role: Role::Reuse,
        diagnostic: true,
        out: &out,
        execution_scope: "operation-counter-deltas",
    };
    let first = operation::run_one(&mut ground, &requests[0], &original[0], context, 0)?;
    let second = operation::run_one(&mut ground, &requests[1], &original[1], context, 1)?;
    for (index, report, before) in [(0, &first, &baseline), (1, &second, &first.native_work)] {
        let quantities = serde_json::to_value(&report.quantities)?;
        for (field, counter, method) in [
            ("rows_visited", "canonical_walk_rows", "native_visit_hook"),
            (
                "materialized_rows",
                "materialized_clone_rows",
                "native_materialization_hook",
            ),
        ] {
            let prior = before["versions"][counter].as_u64().unwrap();
            let after = report.native_work["versions"][counter].as_u64().unwrap();
            assert!(after >= prior);
            assert_eq!(quantities[field]["value"], after - prior);
            assert_eq!(quantities[field]["method"], method);
        }
        assert!(
            quantities["hashed_bytes"]["value"].is_null(),
            "PrecanonicalJsonLengthCannotStandInForShaInputBytes"
        );
        assert!(
            !quantities["hashed_bytes"]["reason_if_unavailable"]
                .as_str()
                .unwrap()
                .is_empty()
        );
        assert!(quantities["allocated_bytes"]["value"].is_null());
        assert!(quantities["copied_bytes"]["value"].is_null());
        let mut bytes = transition_study036::serialization::value_bytes(&original[index])?;
        bytes.push(b'\n');
        assert_eq!(
            std::fs::read(out.join(format!("observation-{index:03}.json")))?,
            bytes
        );
    }
    Ok(())
}
