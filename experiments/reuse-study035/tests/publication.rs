use reuse_study035::{
    error::Result,
    ground::{Ground, Status},
    reference,
};
#[test]
fn uncertainty_quarantines_instead_of_promoting() -> Result<()> {
    let mut g = Ground::supplied(reference::parent("growth-D1")?);
    g.check(super::checked()?, &super::expected()?)?;
    g.quarantine();
    assert_eq!(g.status(), Status::Quarantined);
    assert!(g.invoke(&reference::request("finish")).is_err());
    Ok(())
}

#[test]
fn lost_acknowledgement_is_actual_publication_in_simulated_backend() -> Result<()> {
    let mut g = Ground::supplied(reference::parent("growth-D1")?);
    g.check(super::checked()?, &super::expected()?)?;
    g.inject_fault(reuse_study035::ground::Fault::LostAcknowledgement);
    assert!(g.invoke(&reference::request("finish")).is_err());
    assert_eq!(
        g.history()?["position"],
        9,
        "lost ack control must actually publish before returning error"
    );
    assert_eq!(g.status(), Status::Quarantined);
    Ok(())
}
#[test]
fn failed_and_conflicting_cas_do_not_publish() -> Result<()> {
    for fault in [
        reuse_study035::ground::Fault::BeforeCommit,
        reuse_study035::ground::Fault::Conflict,
    ] {
        let mut g = Ground::supplied(reference::parent("growth-D1")?);
        g.check(super::checked()?, &super::expected()?)?;
        let h = g.history()?;
        g.inject_fault(fault);
        assert!(g.invoke(&reference::request("finish")).is_err());
        assert_eq!(h, g.history()?);
        assert_eq!(g.status(), Status::Quarantined);
    }
    Ok(())
}
#[test]
fn stale_expectation_never_executes() -> Result<()> {
    let mut g = Ground::supplied(reference::parent("growth-D1")?);
    g.check(super::checked()?, &super::expected()?)?;
    let h = g.history()?;
    let mut stale = h.clone();
    stale["position"] = serde_json::json!(7);
    assert!(
        g.invoke_expected(&stale, &reference::request("finish"))
            .is_err()
    );
    assert_eq!(h, g.history()?);
    Ok(())
}

#[test]
fn restart_and_lost_ack_recovery_require_real_reestablishment() -> Result<()> {
    let expected = super::expected()?;
    let mut g = Ground::supplied(reference::parent("growth-D1")?);
    g.check(super::checked()?, &expected)?;
    g.inject_fault(reuse_study035::ground::Fault::LostAcknowledgement);
    assert!(g.invoke(&reference::request("finish")).is_err());
    let raw = g.into_unverified();
    let mut child = expected.clone();
    child["parent"] = expected["expected"]["after_history"].clone();
    child["parent_packet"]["commits"]
        .as_array_mut()
        .ok_or(reuse_study035::error::StudyError::Prerequisite(
            "ExpectedPacket",
        ))?
        .push(expected["expected"]["commit_arguments"].clone());
    let mut g = Ground::supplied(raw);
    assert_eq!(g.status(), Status::SuppliedUnverified);
    assert!(g.invoke(&reference::request("finish")).is_err());
    g.check(super::checked()?, &child)?;
    let drain = g.invoke(&reference::request("finish"))?;
    reuse_study035::observation::compare(&drain, &expected["drain_expected"])?;
    Ok(())
}

#[test]
fn views_never_promote_a_failed_or_uncertain_child() -> Result<()> {
    for fault in [
        reuse_study035::ground::Fault::BeforeCommit,
        reuse_study035::ground::Fault::Conflict,
        reuse_study035::ground::Fault::LostAcknowledgement,
    ] {
        let expected = super::expected()?;
        let mut g = Ground::supplied(reference::parent("growth-D1")?);
        g.check(super::checked()?, &expected)?;
        g.enable_views(true)?;
        g.select_retention(true)?;
        g.inject_fault(fault);
        assert!(g.invoke(&reference::request("finish")).is_err());
        assert_eq!(g.status(), Status::Quarantined);
        assert!(!g.views_active());
        assert_eq!(
            g.history()?["position"],
            if fault == reuse_study035::ground::Fault::LostAcknowledgement {
                9
            } else {
                8
            }
        );
    }
    Ok(())
}
