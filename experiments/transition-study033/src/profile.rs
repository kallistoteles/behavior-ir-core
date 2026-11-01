//! Typed developer evidence metadata; these types confer no semantic authority.
use serde::{Deserialize, Serialize};
use std::collections::{BTreeMap, BTreeSet};
use std::path::{Component, Path, PathBuf};

pub const PROFILE_VERSION: &str = "core033.profile.v1";
pub const INPUT_VERSION: &str = "core033.input.v1";
pub const FAILURE_VERSION: &str = "core033.failure.v1";
pub const MAX_METADATA_BYTES: u64 = 8 * 1024 * 1024;
pub const MAX_ENTRIES: usize = 4096;

#[derive(Debug, thiserror::Error)]
pub enum Error {
    #[error("invalid input: {0}")]
    Invalid(String),
    #[error("evidence rejected: {0}")]
    Rejected(String),
    #[error("unavailable: {0}")]
    Io(#[from] std::io::Error),
    #[error("unsupported: {0}")]
    Unsupported(String),
}

impl Error {
    pub fn exit_code(&self) -> u8 {
        match self {
            Self::Invalid(_) => 2,
            Self::Rejected(_) => 3,
            Self::Io(_) => 5,
            Self::Unsupported(_) => 6,
        }
    }

    pub fn status(&self) -> &'static str {
        match self {
            Self::Invalid(_) => "MalformedInput",
            Self::Rejected(_) => "RejectedEvidence",
            Self::Io(_) => "Unavailable",
            Self::Unsupported(_) => "Unsupported",
        }
    }
}

#[derive(Debug, Clone, Copy, Serialize, Deserialize, PartialEq, Eq)]
pub enum SemanticOutcome {
    Allowed,
    Refused,
    EvaluationError,
}

#[derive(Debug, Clone, Copy, Serialize, Deserialize, PartialEq, Eq)]
pub enum ReceiptStatus {
    Committed,
    CertifiedRefusal,
    CertifiedEvaluationError,
    Conflict,
    InitializationConflict,
    Unavailable,
    Corrupt,
    ResourceFailure,
    Unsupported,
    IdReuse,
    UnknownCommitStatus,
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[serde(deny_unknown_fields)]
pub struct Profile {
    pub format_version: String,
    pub name: String,
    pub inputs: BTreeMap<String, PathBuf>,
    pub output_slots: BTreeMap<String, PathBuf>,
}

pub fn valid_name(value: &str) -> bool {
    !value.is_empty()
        && value.len() <= 128
        && value != "."
        && value != ".."
        && value
            .bytes()
            .all(|b| b.is_ascii_alphanumeric() || b"_.-".contains(&b))
}

pub fn valid_digest(value: &str) -> bool {
    value.len() == 64
        && value
            .bytes()
            .all(|b| b.is_ascii_digit() || (b'a'..=b'f').contains(&b))
}

pub fn valid_relative_slot(path: &Path) -> bool {
    !path.as_os_str().is_empty()
        && path.to_str().is_some_and(|s| {
            s.len() <= 4096 && !s.split('/').any(|p| p.is_empty() || p == "." || p == "..")
        })
        && path
            .components()
            .all(|part| matches!(part, Component::Normal(_)))
}

impl Profile {
    pub fn validate(&self) -> Result<(), Error> {
        if self.format_version != PROFILE_VERSION || !valid_name(&self.name) {
            return Err(Error::Invalid("unsupported profile version or name".into()));
        }
        if self.inputs.is_empty()
            || self.inputs.len() > MAX_ENTRIES
            || self.output_slots.len() > MAX_ENTRIES
        {
            return Err(Error::Invalid(
                "input/output inventory outside metadata bounds".into(),
            ));
        }
        if self
            .inputs
            .keys()
            .chain(self.output_slots.keys())
            .any(|name| !valid_name(name))
        {
            return Err(Error::Invalid("invalid artifact name".into()));
        }
        if self
            .inputs
            .keys()
            .any(|name| self.output_slots.contains_key(name))
        {
            return Err(Error::Invalid(
                "input depends on a future output slot".into(),
            ));
        }
        let mut paths = BTreeSet::new();
        for path in self.output_slots.values() {
            if !valid_relative_slot(path) || !paths.insert(path) {
                return Err(Error::Invalid("escaping or ambiguous output slot".into()));
            }
        }
        Ok(())
    }
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[serde(deny_unknown_fields)]
pub struct InputArtifact {
    pub path: PathBuf,
    pub bytes: u64,
    pub sha256: String,
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[serde(deny_unknown_fields)]
pub struct InputManifest {
    pub format_version: String,
    pub name: String,
    pub profile_sha256: String,
    pub inputs: BTreeMap<String, InputArtifact>,
    pub output_slots: BTreeMap<String, PathBuf>,
}

impl InputManifest {
    pub fn validate(&self) -> Result<(), Error> {
        if self.format_version != INPUT_VERSION || !valid_digest(&self.profile_sha256) {
            return Err(Error::Invalid(
                "unsupported input manifest version/digest".into(),
            ));
        }
        Profile {
            format_version: PROFILE_VERSION.into(),
            name: self.name.clone(),
            inputs: self
                .inputs
                .iter()
                .map(|(k, v)| (k.clone(), v.path.clone()))
                .collect(),
            output_slots: self.output_slots.clone(),
        }
        .validate()?;
        if self
            .inputs
            .values()
            .any(|artifact| !valid_digest(&artifact.sha256))
        {
            return Err(Error::Invalid("noncanonical input digest".into()));
        }
        Ok(())
    }
}

#[derive(Debug, Clone, Copy, Serialize, Deserialize, PartialEq, Eq)]
#[serde(rename_all = "snake_case")]
pub enum FailureStatus {
    Failed,
    NotEstablished,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct FailureReceipt {
    pub format_version: String,
    pub input_manifest_sha256: String,
    pub stage: String,
    pub status: FailureStatus,
    pub reason: String,
    pub blocking_artifacts: Vec<String>,
}

impl FailureReceipt {
    pub fn validate(&self, expected_input: &str) -> Result<(), Error> {
        if self.format_version != FAILURE_VERSION
            || !valid_name(&self.stage)
            || self.reason.is_empty()
            || self.reason.len() > 4096
            || self.blocking_artifacts.is_empty()
            || self.blocking_artifacts.len() > MAX_ENTRIES
            || self
                .blocking_artifacts
                .iter()
                .any(|s| s.is_empty() || s.len() > 4096)
            || !valid_digest(&self.input_manifest_sha256)
        {
            return Err(Error::Invalid("invalid failure receipt".into()));
        }
        if self.input_manifest_sha256 != expected_input {
            return Err(Error::Rejected(
                "failure is bound to another input manifest".into(),
            ));
        }
        Ok(())
    }
}
