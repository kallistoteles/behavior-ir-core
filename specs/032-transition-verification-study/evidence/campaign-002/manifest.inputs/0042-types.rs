//! Explicit operational input and result channels for the bounded study.
pub use behavior_store::documents::HistoryRef;
use serde::{Deserialize, Serialize};
use serde_json::Value as Json;
use std::collections::{BTreeMap, BTreeSet};

#[derive(Debug, thiserror::Error)]
pub enum StudyError {
    #[error("Core: {0}")]
    Core(#[from] behavior_store::StoreError),
    #[error("backend: {0}")]
    Backend(#[from] behavior_store::BackendError),
    #[error("JSON: {0}")]
    Json(#[from] serde_json::Error),
    #[error("admission: {0}")]
    Admission(String),
    #[error("Unsupported: {0}")]
    Unsupported(String),
    #[error("InvalidWitness: {0}")]
    InvalidWitness(String),
    #[error("Unavailable: {0}")]
    Unavailable(String),
    #[error("integrity: {0}")]
    Integrity(String),
    #[error("I/O: {0}")]
    Io(#[from] std::io::Error),
}
pub type Result<T> = std::result::Result<T, StudyError>;

#[derive(Debug, Clone, PartialEq, Eq, PartialOrd, Ord, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Key {
    pub entity: String,
    pub id: String,
}
impl Key {
    pub fn new(entity: impl Into<String>, id: impl Into<String>) -> Self {
        Self {
            entity: entity.into(),
            id: id.into(),
        }
    }
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(tag = "kind", deny_unknown_fields)]
pub enum EntityValue {
    E {
        x: i64,
        padding: String,
        owner: Option<String>,
    },
    Parent {
        phase: i64,
    },
}
impl EntityValue {
    pub fn to_core(&self, id: &str) -> Json {
        match self {
            Self::E { x, padding, owner } => {
                let mut v = serde_json::json!({"id":id,"x":x,"padding":padding});
                if let Some(parent) = owner {
                    v["owner"] = serde_json::json!(parent);
                }
                v
            }
            Self::Parent { phase } => serde_json::json!({"id":id,"phase":phase}),
        }
    }
    pub fn from_core(entity: &str, value: &Json) -> Result<Self> {
        let invalid = || StudyError::Integrity(format!("invalid typed {entity} value"));
        match entity {
            "E" => Ok(Self::E {
                x: value["x"].as_i64().ok_or_else(invalid)?,
                padding: value["padding"].as_str().ok_or_else(invalid)?.into(),
                owner: match value.get("owner") {
                    Some(v) => Some(v.as_str().ok_or_else(invalid)?.into()),
                    None => None,
                },
            }),
            "Parent" => Ok(Self::Parent {
                phase: value["phase"].as_i64().ok_or_else(invalid)?,
            }),
            _ => Err(StudyError::Unsupported(format!("entity {entity}"))),
        }
    }
}

mod rows {
    use super::*;
    pub fn serialize<S: serde::Serializer>(
        v: &BTreeMap<Key, EntityValue>,
        s: S,
    ) -> std::result::Result<S::Ok, S::Error> {
        v.iter().collect::<Vec<_>>().serialize(s)
    }
    pub fn deserialize<'de, D: serde::Deserializer<'de>>(
        d: D,
    ) -> std::result::Result<BTreeMap<Key, EntityValue>, D::Error> {
        let rows = Vec::<(Key, EntityValue)>::deserialize(d)?;
        if rows.windows(2).any(|w| w[0].0 >= w[1].0) {
            return Err(serde::de::Error::custom(
                "state rows must be strictly sorted unique typed keys",
            ));
        }
        Ok(rows.into_iter().collect())
    }
}
mod keys {
    use super::*;
    pub fn serialize<S: serde::Serializer>(
        v: &BTreeSet<Key>,
        s: S,
    ) -> std::result::Result<S::Ok, S::Error> {
        v.iter().collect::<Vec<_>>().serialize(s)
    }
    pub fn deserialize<'de, D: serde::Deserializer<'de>>(
        d: D,
    ) -> std::result::Result<BTreeSet<Key>, D::Error> {
        let keys = Vec::<Key>::deserialize(d)?;
        if keys.windows(2).any(|w| w[0] >= w[1]) {
            return Err(serde::de::Error::custom(
                "lifetime keys must be strictly sorted unique typed identities",
            ));
        }
        Ok(keys.into_iter().collect())
    }
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct OperationalState {
    pub behavior: String,
    pub schema: String,
    pub profile: String,
    pub history: HistoryRef,
    #[serde(with = "rows")]
    pub live: BTreeMap<Key, EntityValue>,
    #[serde(with = "keys")]
    pub used: BTreeSet<Key>,
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(tag = "action", deny_unknown_fields)]
pub enum Operation {
    Create {
        ids: Vec<String>,
        owner: Option<String>,
    },
    Set {
        ids: Vec<String>,
        value: i64,
    },
    Remove {
        key: Key,
    },
    Emit,
    Probe {
        threshold: i64,
        max_matches: i64,
    },
    Add {
        id: String,
        delta: i64,
    },
    Lazy {
        id: String,
        delta: i64,
        enabled: bool,
    },
}
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum SemanticOutcome {
    Allow,
    Refused,
    EvaluationError,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum CheckerOutcome {
    Accepted,
    InvalidWitness,
    Unsupported,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum ProofOutcome {
    Verified,
    InvalidProof,
    ResourceExhausted,
    ToolFailure,
    NotProduced,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum BridgeOutcome {
    Matched,
    Mismatch,
    Unavailable,
    NotClaimed,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum DataOutcome {
    Available,
    MissingSupport,
    CorruptSupport,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum PublicationOutcome {
    Committed,
    Conflict,
    OperationalFailure,
    AckUnknown,
    NotAttempted,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum AuthorityOutcome {
    ExternalAssumption,
    IndependentlyChecked,
    NotClaimed,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ReferenceObservation {
    pub before: OperationalState,
    pub after: OperationalState,
    pub operation: Operation,
    pub outcome: SemanticOutcome,
    pub core_record: Option<Json>,
    pub store_error: Option<Json>,
    pub commands: Vec<Json>,
    pub committed_record: Option<behavior_store::documents::TransitionRecord>,
    pub support_available: bool,
}
impl ReferenceObservation {
    pub fn same_claim(&self, other: &Self) -> bool {
        let mut a = self.clone();
        let mut b = other.clone();
        a.support_available = true;
        b.support_available = true;
        a == b
    }
    pub fn export(&self) -> Result<Vec<u8>> {
        if !self.support_available {
            return Err(StudyError::Unavailable(
                "complete audit support missing".into(),
            ));
        }
        Ok(serde_json::to_vec(self)?)
    }
    pub fn canonical_core_record(&self) -> Result<Option<Vec<u8>>> {
        self.core_record
            .as_ref()
            .map(serde_json::to_vec)
            .transpose()
            .map_err(Into::into)
    }
}
