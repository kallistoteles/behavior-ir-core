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
