use transition_study036::{error::Result, ground::Ground, observation, reference};
#[test]
fn prepared_fresh_and_drain_have_complete_original_observations() -> Result<()> {
    let expected = super::expected()?;
    for retain in [false, true] {
        let mut g = Ground::supplied(reference::parent("growth-D1")?);
        g.check(super::checked()?, &expected)?;
        g.enable_views(true)?;
        g.select_retention(retain)?;
        g.set_work(true);
        for key in ["expected", "drain_expected"] {
            let result = g.invoke(&reference::request("finish"))?;
            observation::compare(&result, &expected[key])?;
        }
        assert_eq!(
            g.diagnostics()["fresh_prepared_invocations"],
            2,
            "must actually execute fresh prepared Core, not a labelled reference route"
        );
    }
    Ok(())
}
#[test]
fn unsupported_and_missing_bindings_keep_original_phase_and_allow_reestablishment() -> Result<()> {
    let expected = super::expected()?;
    let mut g = Ground::supplied(reference::parent("growth-D1")?);
    g.check(super::checked()?, &expected)?;
    g.enable_views(true)?;
    g.select_retention(true)?;
    g.set_work(true);
    let mut original = reference::parent("growth-D1")?;
    let mut missing = reference::request("finish");
    missing["bindings"]["c"]["id"] = serde_json::json!("missing");
    for request in [
        missing,
        reference::request("activate"),
        reference::request("finish"),
    ] {
        let a = g.invoke(&request)?;
        let b = reference::step(
            &mut original.store,
            &original.module,
            &original.analysis,
            &request,
        )?;
        observation::compare(&a, &b)?;
    }
    assert!(
        g.diagnostics()["fallback_invalidations"]
            .as_u64()
            .is_some_and(|n| n >= 2)
    );
    assert_eq!(g.diagnostics()["fresh_prepared_invocations"], 1);
    Ok(())
}
