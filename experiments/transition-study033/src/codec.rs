//! Strict typed binary ingress for the frozen Core033 codec profile.
use crate::profile::Error;
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};

pub const MAGIC: &[u8] = b"core033.semantic.v1\0";
pub const MAX_ID_BYTES: usize = 64;
pub const MAX_PADDING_BYTES: usize = 768;
pub const MAX_ENTITY_BYTES: usize = 1024;
pub const PROFILE_BYTES: &[u8] =
    include_bytes!("../../../specs/033-core-proof-feasibility/codec-profile.json");

pub fn profile_digest() -> [u8; 32] {
    Sha256::digest(PROFILE_BYTES).into()
}

pub struct Encoder {
    bytes: Vec<u8>,
}
impl Encoder {
    pub fn new(tag: u16) -> Self {
        let mut bytes = MAGIC.to_vec();
        bytes.extend_from_slice(&tag.to_le_bytes());
        Self { bytes }
    }
    pub fn u8(&mut self, value: u8) {
        self.bytes.push(value);
    }
    pub fn u64(&mut self, value: u64) {
        self.bytes.extend_from_slice(&value.to_le_bytes());
    }
    pub fn i64(&mut self, value: i64) {
        self.bytes.extend_from_slice(&value.to_le_bytes());
    }
    pub fn fixed(&mut self, bytes: &[u8]) {
        self.bytes.extend_from_slice(bytes);
    }
    pub fn count(&mut self, value: usize, maximum: usize) -> Result<(), Error> {
        if value > maximum {
            return Err(Error::Invalid("sequence count exceeds frozen bound".into()));
        }
        let value = u32::try_from(value)
            .map_err(|_| Error::Invalid("sequence count exceeds u32".into()))?;
        self.bytes.extend_from_slice(&value.to_le_bytes());
        Ok(())
    }
    pub fn blob(&mut self, bytes: &[u8], maximum: usize) -> Result<(), Error> {
        self.count(bytes.len(), maximum)?;
        self.fixed(bytes);
        Ok(())
    }
    pub fn finish(self, maximum: usize) -> Result<Vec<u8>, Error> {
        if self.bytes.len() > maximum {
            return Err(Error::Invalid("record exceeds frozen packet bound".into()));
        }
        Ok(self.bytes)
    }
}

pub struct Decoder<'a> {
    bytes: &'a [u8],
    position: usize,
}
impl<'a> Decoder<'a> {
    pub fn boolean(&mut self) -> Result<bool, Error> {
        match self.u8()? {
            0 => Ok(false),
            1 => Ok(true),
            _ => Err(Error::Invalid("noncanonical Boolean/optional tag".into())),
        }
    }
    pub fn optional<T>(
        &mut self,
        read: impl FnOnce(&mut Self) -> Result<T, Error>,
    ) -> Result<Option<T>, Error> {
        if self.boolean()? {
            Ok(Some(read(self)?))
        } else {
            Ok(None)
        }
    }
    pub fn new(bytes: &'a [u8], tag: u16, maximum: usize) -> Result<Self, Error> {
        if bytes.len() > maximum || !bytes.starts_with(MAGIC) {
            return Err(Error::Invalid("invalid record version or length".into()));
        }
        let mut reader = Self {
            bytes,
            position: MAGIC.len(),
        };
        if u16::from_le_bytes(reader.fixed()?) != tag {
            return Err(Error::Invalid("wrong record tag".into()));
        }
        Ok(reader)
    }
    pub fn take(&mut self, length: usize) -> Result<&'a [u8], Error> {
        let end = self
            .position
            .checked_add(length)
            .ok_or_else(|| Error::Invalid("decoder offset overflow".into()))?;
        let slice = self
            .bytes
            .get(self.position..end)
            .ok_or_else(|| Error::Invalid("truncated record".into()))?;
        self.position = end;
        Ok(slice)
    }
    pub fn fixed<const N: usize>(&mut self) -> Result<[u8; N], Error> {
        let mut result = [0; N];
        result.copy_from_slice(self.take(N)?);
        Ok(result)
    }
    pub fn u8(&mut self) -> Result<u8, Error> {
        Ok(self.fixed::<1>()?[0])
    }
    pub fn u64(&mut self) -> Result<u64, Error> {
        Ok(u64::from_le_bytes(self.fixed()?))
    }
    pub fn i64(&mut self) -> Result<i64, Error> {
        Ok(i64::from_le_bytes(self.fixed()?))
    }
    pub fn count(&mut self, maximum: usize) -> Result<usize, Error> {
        let length = usize::try_from(u32::from_le_bytes(self.fixed()?))
            .map_err(|_| Error::Invalid("count does not fit parser target".into()))?;
        if length > maximum {
            return Err(Error::Invalid("sequence count exceeds frozen bound".into()));
        }
        Ok(length)
    }
    pub fn blob(&mut self, maximum: usize) -> Result<&'a [u8], Error> {
        let length = self.count(maximum)?;
        self.take(length)
    }
    pub fn text(&mut self, maximum: usize) -> Result<String, Error> {
        std::str::from_utf8(self.blob(maximum)?)
            .map(str::to_owned)
            .map_err(|_| Error::Invalid("invalid UTF-8".into()))
    }
    pub fn finish(self) -> Result<(), Error> {
        if self.position != self.bytes.len() {
            return Err(Error::Invalid("trailing record bytes".into()));
        }
        Ok(())
    }
}

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
pub fn encode_key(key: &EntityKey) -> Result<Vec<u8>, Error> {
    if key.format_version != "core033.key.v1" || key.entity.is_empty() {
        return Err(Error::Invalid("invalid key version or entity name".into()));
    }
    let mut encoder = Encoder::new(1);
    encoder.blob(key.entity.as_bytes(), MAX_ID_BYTES)?;
    encoder.blob(key.id.as_bytes(), MAX_ID_BYTES)?;
    encoder.finish(MAX_ENTITY_BYTES)
}
pub fn decode_key(bytes: &[u8]) -> Result<EntityKey, Error> {
    let mut decoder = Decoder::new(bytes, 1, MAX_ENTITY_BYTES)?;
    let entity = decoder.text(MAX_ID_BYTES)?;
    let id = decoder.text(MAX_ID_BYTES)?;
    decoder.finish()?;
    if entity.is_empty() {
        return Err(Error::Invalid("empty entity name".into()));
    }
    Ok(EntityKey::new(&entity, &id))
}
pub fn encode_value(value: &EntityValue) -> Result<Vec<u8>, Error> {
    if value.format_version != "core033.value.v1" {
        return Err(Error::Invalid("invalid entity value version".into()));
    }
    let mut encoder = Encoder::new(2);
    encoder.i64(value.x);
    encoder.blob(value.padding.as_bytes(), MAX_PADDING_BYTES)?;
    encoder.finish(MAX_ENTITY_BYTES)
}
pub fn decode_value(bytes: &[u8]) -> Result<EntityValue, Error> {
    let mut decoder = Decoder::new(bytes, 2, MAX_ENTITY_BYTES)?;
    let x = decoder.i64()?;
    let padding = decoder.text(MAX_PADDING_BYTES)?;
    decoder.finish()?;
    Ok(EntityValue::new(x, &padding))
}
pub fn digest_limbs(digest: &[u8; 32]) -> [u64; 4] {
    std::array::from_fn(|i| {
        let mut bytes = [0; 8];
        bytes.copy_from_slice(&digest[8 * i..8 * i + 8]);
        u64::from_le_bytes(bytes)
    })
}
pub fn limbs_digest(limbs: [u64; 4]) -> [u8; 32] {
    let mut digest = [0; 32];
    for (i, limb) in limbs.into_iter().enumerate() {
        digest[8 * i..8 * i + 8].copy_from_slice(&limb.to_le_bytes());
    }
    digest
}

pub fn key_from_transport(bytes: &[u8]) -> Result<EntityKey, Error> {
    let value = crate::evidence::decode(bytes)?;
    encode_key(&value)?;
    Ok(value)
}
pub fn value_from_transport(bytes: &[u8]) -> Result<EntityValue, Error> {
    let value = crate::evidence::decode(bytes)?;
    encode_value(&value)?;
    Ok(value)
}
