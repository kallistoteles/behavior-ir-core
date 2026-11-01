//! Semantic identity interface; operational derivation is excluded from the preimage.
use crate::codec::EntityKey;
use crate::codec::{Encoder, encode_key};
use crate::profile::Error;
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct SemanticParent {
    pub format_version: String,
    pub lineage: [u8; 32],
    pub semantic_anchor: [u8; 32],
    pub position: u64,
    pub previous_event_id: Option<[u8; 32]>,
    pub content_root: [u8; 32],
    pub used_root: [u8; 32],
    pub active_semantic_subject: [u8; 32],
}
impl SemanticParent {
    pub fn encode(&self) -> Result<Vec<u8>, Error> {
        if self.format_version != "core033.parent.v1" {
            return Err(Error::Invalid("wrong semantic parent version".into()));
        }
        let mut e = Encoder::new(16);
        e.fixed(&self.lineage);
        e.fixed(&self.semantic_anchor);
        e.u64(self.position);
        match self.previous_event_id {
            None => e.u8(0),
            Some(id) => {
                e.u8(1);
                e.fixed(&id);
            }
        }
        e.fixed(&self.content_root);
        e.fixed(&self.used_root);
        e.fixed(&self.active_semantic_subject);
        e.finish(1024)
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub enum Operation {
    Create(EntityKey),
    Set(EntityKey, i64),
    Emit,
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ExecutionRequest {
    pub format_version: String,
    pub operation: Operation,
    pub context_digest: [u8; 32],
}
impl ExecutionRequest {
    pub fn encode(&self) -> Result<Vec<u8>, Error> {
        if self.format_version != "core033.request.v1" {
            return Err(Error::Invalid("wrong execution request version".into()));
        }
        let mut e = Encoder::new(17);
        match &self.operation {
            Operation::Create(key) => {
                e.u8(1);
                e.fixed(&encode_key(key)?);
            }
            Operation::Set(key, x) => {
                e.u8(2);
                e.fixed(&encode_key(key)?);
                e.i64(*x);
            }
            Operation::Emit => e.u8(3),
        }
        e.fixed(&self.context_digest);
        e.finish(1024)
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CapturedContext {
    pub format_version: String,
    pub context: Vec<u8>,
    pub metadata: Vec<u8>,
}
impl CapturedContext {
    pub fn encode(&self) -> Result<Vec<u8>, Error> {
        if self.format_version != "core033.context.v1" {
            return Err(Error::Invalid("wrong context version".into()));
        }
        // The recognized G1 actions declare no context parameters. Human JSON
        // {} becomes the empty typed product before this boundary.
        if !self.context.is_empty() {
            return Err(Error::Unsupported(
                "closed G1 context must be the empty typed product".into(),
            ));
        }
        let mut e = Encoder::new(18);
        e.blob(&self.context, 1024)?;
        e.blob(&self.metadata, 1024)?;
        e.finish(4096)
    }
    pub fn digest(&self) -> Result<[u8; 32], Error> {
        Ok(Sha256::digest(self.encode()?).into())
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ObservationRecipe {
    pub format_version: String,
    pub evaluator: String,
    pub module_descriptor: [u8; 32],
    pub semantic_profile: [u8; 32],
    pub parent: SemanticParent,
    pub request: ExecutionRequest,
    pub context: CapturedContext,
}
impl ObservationRecipe {
    pub fn encode(&self) -> Result<Vec<u8>, Error> {
        if self.format_version != "core033.recipe.v1" || self.evaluator.is_empty() {
            return Err(Error::Invalid(
                "wrong observation recipe version/evaluator".into(),
            ));
        }
        if self.request.context_digest != self.context.digest()? {
            return Err(Error::Rejected(
                "recipe request binds another captured context".into(),
            ));
        }
        let mut e = Encoder::new(22);
        e.blob(self.evaluator.as_bytes(), 64)?;
        e.fixed(&self.module_descriptor);
        e.fixed(&self.semantic_profile);
        e.fixed(&self.parent.encode()?);
        e.fixed(&self.request.encode()?);
        e.fixed(&self.context.encode()?);
        e.finish(8192)
    }
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub struct SemanticEvent {
    pub parent: Vec<u8>,
    pub request: Vec<u8>,
    pub context: Vec<u8>,
    pub outcome: Vec<u8>,
    pub effects: Vec<u8>,
    /// Actual Core intent hash and its canonical typed content, preserving multiplicity.
    pub commands: Vec<([u8; 32], Vec<u8>)>,
    pub observation_recipe: Vec<u8>,
}
#[derive(Debug, Clone)]
pub struct Derivation {
    pub helper_root: [u8; 32],
    pub proof_randomness: [u8; 32],
    pub strategy: String,
}
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct OccurrenceId {
    pub format_version: String,
    pub event_id: [u8; 32],
    pub canonical_ordinal: u64,
}
/// Encoding/hashing is not a semantic acceptance judgment. K must establish that
/// these exact fragments are the result of the recognized Core request.
pub fn event_preimage(event: &SemanticEvent) -> Result<Vec<u8>, Error> {
    if event.commands.len() > 2 {
        return Err(Error::Invalid("command count exceeds frozen bound".into()));
    }
    if event
        .commands
        .iter()
        .any(|(_, content)| content.len() > 1024)
    {
        return Err(Error::Invalid(
            "command content exceeds frozen byte bound".into(),
        ));
    }
    let mut commands = event.commands.clone();
    commands.sort();
    if commands
        .windows(2)
        .any(|pair| pair[0].0 == pair[1].0 && pair[0].1 != pair[1].1)
    {
        return Err(Error::Rejected("HASH_CONTENT_CONFLICT".into()));
    }
    let mut e = Encoder::new(23);
    e.blob(&event.parent, 1024)?;
    e.blob(&event.request, 1024)?;
    e.blob(&event.context, 4096)?;
    e.blob(&event.outcome, 1024)?;
    e.blob(&event.effects, 2048)?;
    e.count(commands.len(), 2)?;
    for (hash, content) in commands {
        let mut command = Encoder::new(21);
        command.fixed(&hash);
        command.blob(&content, 1024)?;
        e.fixed(&command.finish(1024)?);
    }
    e.blob(&event.observation_recipe, 8192)?;
    e.finish(32768)
}
pub fn event_id(event: &SemanticEvent, _: &Derivation) -> Result<[u8; 32], Error> {
    Ok(Sha256::digest(event_preimage(event)?).into())
}
pub fn occurrences(
    event: &SemanticEvent,
    derivation: &Derivation,
) -> Result<Vec<OccurrenceId>, Error> {
    let id = event_id(event, derivation)?;
    (0..event.commands.len())
        .map(|index| {
            Ok(OccurrenceId {
                format_version: "core033.occurrence.v1".into(),
                event_id: id,
                canonical_ordinal: u64::try_from(index)
                    .map_err(|_| Error::Invalid("command ordinal overflow".into()))?,
            })
        })
        .collect()
}
pub fn encode_occurrence(occurrence: &OccurrenceId) -> Result<Vec<u8>, Error> {
    if occurrence.format_version != "core033.occurrence.v1" {
        return Err(Error::Invalid("wrong occurrence version".into()));
    }
    let mut e = Encoder::new(24);
    e.fixed(&occurrence.event_id);
    e.u64(occurrence.canonical_ordinal);
    e.finish(128)
}
