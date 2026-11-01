//! Full raw-seed validation; no authenticated Init theorem or certificate follows.
use crate::{
    codec::{Encoder, EntityKey, EntityValue, encode_key, encode_value},
    profile::Error,
};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};

pub const MAX_USED: usize = 1_048_576;
const MAX_SEED_BYTES: u64 = 1_073_741_824;

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
pub fn validate_seed(
    input: &OriginInput,
    authority: &str,
    expected_source: &[u8; 32],
    limit: u64,
) -> Result<(), Error> {
    if input.format_version != "core033.origin.v1" {
        return Err(Error::Invalid("wrong origin version".into()));
    }
    if input.kind == OriginKind::Adoption {
        return Err(Error::Unsupported(
            "Adoption requires an actual earlier-prefix verifier".into(),
        ));
    }
    if limit > MAX_USED as u64 {
        return Err(Error::Unsupported(
            "count cap exceeds frozen G1 profile".into(),
        ));
    }
    if input.authority != authority
        || input.source_digest != *expected_source
        || source_digest(input)? != *expected_source
    {
        return Err(Error::Rejected(
            "origin authority/source digest mismatch".into(),
        ));
    }
    if input.kind == OriginKind::Empty && (!input.live.is_empty() || !input.used.is_empty()) {
        return Err(Error::Rejected("Empty origin is not empty".into()));
    }
    if input.live.len() as u64 > limit {
        return Err(Error::Rejected("initial count exceeds cap".into()));
    }
    if input.live.windows(2).any(|p| p[0].0 >= p[1].0)
        || input.used.windows(2).any(|p| p[0] >= p[1])
    {
        return Err(Error::Rejected(
            "raw live/used keys must be strictly sorted without duplicates".into(),
        ));
    }
    for key in &input.used {
        if key.entity != "E" {
            return Err(Error::Unsupported(
                "seed contains an out-of-template entity".into(),
            ));
        }
    }
    for (key, value) in &input.live {
        if value.x <= 0 {
            return Err(Error::Rejected(
                "initial x must be positive even when summaries/digests are accurate".into(),
            ));
        }
        if key.entity != "E" || input.used.binary_search(key).is_err() {
            return Err(Error::Rejected(
                "live keys must be a subset of used E keys".into(),
            ));
        }
    }
    Ok(())
}

/// Hash the actual complete typed inventory, excluding its own digest field.
/// Invalid positivity/order is still hashable and must fail validate_seed.
pub fn source_digest(input: &OriginInput) -> Result<[u8; 32], Error> {
    if input.format_version != "core033.origin.v1" || input.authority.is_empty() {
        return Err(Error::Invalid("wrong origin version/authority".into()));
    }
    let mut prefix = Encoder::new(49);
    prefix.u8(match input.kind {
        OriginKind::Empty => 0,
        OriginKind::NewSeed => 1,
        OriginKind::Adoption => 2,
    });
    prefix.blob(input.authority.as_bytes(), 128)?;
    prefix.count(input.live.len(), MAX_USED)?;
    let mut hash = Sha256::new();
    let mut count = 0u64;
    let mut feed = |bytes: &[u8]| -> Result<(), Error> {
        count = count
            .checked_add(bytes.len() as u64)
            .ok_or_else(|| Error::Invalid("seed byte count overflow".into()))?;
        if count > MAX_SEED_BYTES {
            return Err(Error::Invalid(
                "seed inventory exceeds frozen byte bound".into(),
            ));
        }
        hash.update(bytes);
        Ok(())
    };
    feed(&prefix.finish(256)?)?;
    for (key, value) in &input.live {
        let key = encode_key(key)?;
        let value = encode_value(value)?;
        if key.len() + value.len() > 1024 {
            return Err(Error::Invalid("complete seed entity exceeds 1 KiB".into()));
        }
        feed(&key)?;
        feed(&value)?;
    }
    if input.used.len() > MAX_USED {
        return Err(Error::Invalid("used-ID count exceeds frozen bound".into()));
    }
    let used = u32::try_from(input.used.len())
        .map_err(|_| Error::Invalid("used count overflow".into()))?;
    feed(&used.to_le_bytes())?;
    for key in &input.used {
        feed(&encode_key(key)?)?;
    }
    Ok(hash.finalize().into())
}
