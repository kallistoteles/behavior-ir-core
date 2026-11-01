//! Expected endpoint interface. No cryptographic verification is implemented here.
use crate::profile::Error;
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
#[repr(u8)]
pub enum Phase {
    Boot = 0,
    Initialize = 1,
    InitDone = 2,
    Evaluate = 3,
    Maintain = 4,
    Finalize = 5,
    Done = 6,
    FinalizeAttempt = 7,
    AttemptDone = 8,
}
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct EndpointClaim {
    pub format_version: String,
    pub origin: [u8; 32],
    pub release: [u8; 32],
    pub program: [u8; 32],
    pub profile: [u8; 32],
    pub content_root: [u8; 32],
    pub used_root: [u8; 32],
    pub head: Option<[u8; 32]>,
    pub event_position: u64,
    pub helper_subject: [u8; 32],
    pub output: [u8; 32],
    pub request: [u8; 32],
    pub context: [u8; 32],
    pub frontier: [u8; 32],
    pub phase: Phase,
    pub microsteps: u64,
    pub attempt: Option<[u8; 32]>,
}
pub fn bind_endpoint(_: &[[u8; 32]], _: &EndpointClaim) -> Result<EndpointClaim, Error> {
    Err(Error::Unsupported(
        "actual returned-endpoint decoding/binding is not established".into(),
    ))
}
