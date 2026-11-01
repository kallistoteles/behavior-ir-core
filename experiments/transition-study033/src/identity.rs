//! Semantic identity interface; operational derivation is excluded from the preimage.
use crate::profile::Error;

#[derive(Debug, Clone, PartialEq, Eq)]
pub struct SemanticEvent {
    pub parent: Vec<u8>,
    pub request: Vec<u8>,
    pub context: Vec<u8>,
    pub outcome: Vec<u8>,
    pub effects: Vec<u8>,
    /// (actual Core intent hash, actual Core canonical intent bytes), preserving multiplicity.
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
pub fn event_id(_: &SemanticEvent, _: &Derivation) -> Result<[u8; 32], Error> {
    Err(Error::Unsupported(
        "semantic event identity is not established".into(),
    ))
}
pub fn occurrences(_: &SemanticEvent, _: &Derivation) -> Result<Vec<OccurrenceId>, Error> {
    Err(Error::Unsupported(
        "command occurrences are not established".into(),
    ))
}
