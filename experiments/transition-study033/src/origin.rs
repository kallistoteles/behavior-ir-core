//! Unauthenticated origin input declarations; no Init theorem or certificate.
use crate::{
    codec::{EntityKey, EntityValue},
    profile::Error,
};
use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub enum OriginKind {
    Empty,
    NewSeed,
    Adoption,
}
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct OriginInput {
    pub format_version: String,
    pub kind: OriginKind,
    pub authority: String,
    pub source_digest: [u8; 32],
    pub live: Vec<(EntityKey, EntityValue)>,
    pub used: Vec<EntityKey>,
}
pub fn validate_seed(_: &OriginInput, _: &str, _: &[u8; 32], _: u64) -> Result<(), Error> {
    Err(Error::Unsupported(
        "raw origin validity is not established".into(),
    ))
}
