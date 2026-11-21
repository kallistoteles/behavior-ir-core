//! Actual acquisition, history, writer, corrupted-view and publication controls.
#[path = "v2_support.rs"]
mod support;
use support::{checked, expected};
#[path = "ground_lifecycle.rs"]
mod lifetime;
#[path = "publication.rs"]
mod publication;
#[path = "ground_retention.rs"]
mod retention;

#[test]
fn a_different_program_certificate_cannot_establish_this_ground()
-> transition_study036::error::Result<()> {
    use transition_study036::{
        ground::{Ground, Status},
        reference,
    };
    let mut ground = Ground::supplied(reference::parent("growth-D1")?);
    assert!(
        ground
            .check(support::checked_commands()?, &expected()?)
            .is_err()
    );
    assert_eq!(ground.status(), Status::Quarantined);
    assert!(ground.invoke(&reference::request("finish")).is_err());
    Ok(())
}
