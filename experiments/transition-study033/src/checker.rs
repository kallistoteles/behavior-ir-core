//! Test-first native K interfaces. Dense rows belong to fixture/oracle support;
//! check_proposal receives only the parent subject and supplied witness.
use crate::{
    codec::{EntityKey, EntityValue},
    identity::ExecutionRequest,
    origin::OriginInput,
    profile::Error,
    reference::TemplateConfig,
};

#[derive(Debug, Clone, PartialEq, Eq)]
pub struct ParentSubject {
    pub format_version: String,
    pub content_root: [u8; 32],
    pub used_root: [u8; 32],
    pub origin: [u8; 32],
    pub active_subject: [u8; 32],
    pub position: u64,
    pub head: Option<[u8; 32]>,
}
#[derive(Debug, Clone)]
pub struct Fixture {
    pub parent: ParentSubject,
    pub live: Vec<(EntityKey, EntityValue)>,
    pub used: Vec<EntityKey>,
}
#[derive(Debug, Clone)]
pub struct Proposal {
    pub format_version: String,
    pub count_root: [u8; 32],
    pub claimed_count: u64,
    pub obligations: Vec<u8>,
    pub effect_value: i64,
    pub witness: Vec<u8>,
}
#[derive(Debug)]
pub struct CheckedAttempt {
    pub format_version: String,
    pub after: ParentSubject,
    pub result_code: String,
    pub reason_code: String,
    pub phase: String,
    pub commands: Vec<Vec<u8>>,
    _checker_source: [u8; 32],
}
impl Fixture {
    pub fn initialize(_: &OriginInput, _: &TemplateConfig) -> Result<Self, Error> {
        Err(Error::Unsupported(
            "actual native Init K is not established".into(),
        ))
    }
    pub fn execute(&self, _: &ExecutionRequest) -> Result<(Self, CheckedAttempt), Error> {
        Err(Error::Unsupported(
            "actual native transition K is not established".into(),
        ))
    }
    pub fn propose(&self, _: &ExecutionRequest) -> Result<Proposal, Error> {
        Err(Error::Unsupported(
            "actual untrusted producer is not established".into(),
        ))
    }
}
pub fn check_proposal(
    _: &ParentSubject,
    _: &ExecutionRequest,
    _: &Proposal,
) -> Result<CheckedAttempt, Error> {
    Err(Error::Unsupported(
        "actual checked native relation is not established".into(),
    ))
}
