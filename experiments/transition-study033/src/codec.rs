//! Typed codec declarations, prior to the G0 codec freeze and decoder implementation.
use crate::profile::Error;
use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, PartialEq, Eq, PartialOrd, Ord, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct EntityKey {
    pub format_version: String,
    pub entity: String,
    pub id: String,
}
impl EntityKey {
    pub fn new(entity: &str, id: &str) -> Self {
        Self {
            format_version: "core033.key.v1".into(),
            entity: entity.into(),
            id: id.into(),
        }
    }
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct EntityValue {
    pub format_version: String,
    pub x: i64,
    pub padding: String,
}
impl EntityValue {
    pub fn new(x: i64, padding: &str) -> Self {
        Self {
            format_version: "core033.value.v1".into(),
            x,
            padding: padding.into(),
        }
    }
}
pub fn encode_key(_: &EntityKey) -> Result<Vec<u8>, Error> {
    Err(Error::Unsupported("key codec is not established".into()))
}
pub fn decode_key(_: &[u8]) -> Result<EntityKey, Error> {
    Err(Error::Unsupported("key codec is not established".into()))
}
pub fn encode_value(_: &EntityValue) -> Result<Vec<u8>, Error> {
    Err(Error::Unsupported("value codec is not established".into()))
}
pub fn decode_value(_: &[u8]) -> Result<EntityValue, Error> {
    Err(Error::Unsupported("value codec is not established".into()))
}
pub fn digest_limbs(_: &[u8; 32]) -> [u64; 4] {
    [0; 4]
}
pub fn limbs_digest(_: [u64; 4]) -> [u8; 32] {
    [0; 32]
}
