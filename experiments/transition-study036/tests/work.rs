use transition_study036::{error::Result, ground::Ground, reference};
#[test]
fn work_accounts_actual_semantics_and_required_output_separately() -> Result<()> {
    let expected = super::expected()?;
    let mut g = Ground::supplied(reference::parent("growth-D1")?);
    g.check(super::checked()?, &expected)?;
    g.enable_views(true)?;
    g.select_retention(true)?;
    g.set_work(true);
    let result = g.invoke(&reference::request("finish"))?;
    transition_study036::observation::compare(&result, &expected["expected"])?;
    let work = g.diagnostics();
    assert_eq!(
        work["semantic_unrelated_rows"], 0,
        "actual inner decision cannot visit unrelated rows"
    );
    assert_eq!(
        work["old_prefix_decision_visits"], 0,
        "history work must not be hidden in the logical decision"
    );
    assert!(
        work["required_output_bytes"]
            .as_u64()
            .is_some_and(|n| n > 0),
        "complete original observation has a real output floor"
    );
    Ok(())
}
#[test]
fn timing_and_work_modes_preserve_entire_original_meaning() -> Result<()> {
    let expected = super::expected()?;
    let mut results = vec![];
    for enabled in [false, true] {
        let mut g = Ground::supplied(reference::parent("growth-D1")?);
        g.check(super::checked()?, &expected)?;
        g.enable_views(true)?;
        g.select_retention(true)?;
        g.set_work(enabled);
        results.push(g.invoke(&reference::request("finish"))?);
        assert!(g.views_active());
    }
    assert_eq!(results[0], results[1]);
    Ok(())
}

#[test]
fn actual_local_work_across_population_and_history_growth() -> Result<()> {
    use serde_json::{Value, json};
    use sha2::{Digest, Sha256};
    use std::path::PathBuf;
    let feature =
        PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../specs/035-verified-work-reuse");
    let bindings: Value = serde_json::from_slice(&std::fs::read(
        feature.join("inputs/oracle-development-case-bindings.json"),
    )?)?;
    let mut observations = vec![];
    for case in [
        "growth-D1",
        "growth-D2",
        "growth-D3",
        "growth-D4",
        "growth-D5",
    ] {
        let reference = &bindings["cases"][case];
        let path = reference["path"].as_str().ok_or(
            transition_study036::error::StudyError::Prerequisite("ReferenceCasePath"),
        )?;
        let raw = std::fs::read(feature.join("evidence/development").join(path))?;
        assert_eq!(
            format!("{:x}", Sha256::digest(&raw)),
            reference["sha256"].as_str().ok_or(
                transition_study036::error::StudyError::Prerequisite("ReferenceCaseDigest")
            )?
        );
        let expected: Value = serde_json::from_slice(&raw)?;
        let mut g = Ground::supplied(reference::parent(case)?);
        g.check(super::checked()?, &expected)?;
        g.enable_views(true)?;
        g.select_retention(true)?;
        g.set_work(true);
        let primary = g.invoke(&reference::request("finish"))?;
        transition_study036::observation::compare(&primary, &expected["expected"])?;
        let drain = g.invoke(&reference::request("finish"))?;
        transition_study036::observation::compare(&drain, &expected["drain_expected"])?;
        let diagnostics = g.diagnostics();
        assert_eq!(diagnostics["semantic_unrelated_rows"], 0, "{case}");
        assert_eq!(diagnostics["old_prefix_decision_visits"], 0, "{case}");
        assert_eq!(
            diagnostics["native"]["counts"]["provider_rows"], 0,
            "{case}: no hidden full provider materialization"
        );
        assert_eq!(
            diagnostics["native"]["counts"]["snapshot_rows"], 0,
            "{case}: no hidden complete parent validation"
        );
        assert_eq!(
            diagnostics["native"]["counts"]["copied_rows"], 0,
            "{case}: no hidden complete snapshot clone"
        );
        assert_eq!(
            diagnostics["coarse_native_clocks"]["invalid_intervals"], 0,
            "{case}: phase intervals must be valid"
        );
        let audit = g.audit_original()?;
        assert_eq!(audit["maintained_views_equal_full_reconstruction"], true);
        assert_eq!(audit["core_version_view_equal_full_reconstruction"], true);
        observations.push(
            json!({"case":case,"diagnostics_before_independent_audit":diagnostics,"audit":audit}),
        );
    }
    let out = PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("private")
        .join(format!(
            "work-growth-{}-{}.json",
            std::process::id(),
            std::time::SystemTime::now()
                .duration_since(std::time::UNIX_EPOCH)
                .map_err(transition_study036::error::library)?
                .as_nanos()
        ));
    transition_study036::io::write(
        &out,
        &json!({"format":"core035.development-work-growth.v1","observations":observations,"scope":"Actual development work checks, not final timing samples"}),
    )?;
    println!("CORE035_WORK_GROWTH {}", out.display());
    Ok(())
}
