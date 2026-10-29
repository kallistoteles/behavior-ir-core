//! Binding checks are necessary, never sufficient for proof acceptance.
use crate::types::*;
use serde::{Deserialize, Serialize};
use std::collections::BTreeMap;
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ClaimBinding {
    pub format: String,
    pub fields: BTreeMap<String, String>,
    pub steps: usize,
}
impl ClaimBinding {
    pub fn control() -> Self {
        Self {
            format: "core032.claim-binding.v1".into(),
            fields: [
                "subject",
                "schema",
                "profile",
                "checker",
                "anchor",
                "endpoint",
                "outputs",
                "parameters",
            ]
            .into_iter()
            .map(|k| (k.into(), "control-only".into()))
            .collect(),
            steps: 2,
        }
    }
}
pub fn check_binding(expected: &ClaimBinding, provided: &ClaimBinding) -> Result<()> {
    if expected.format != "core032.claim-binding.v1" || expected != provided || expected.steps == 0
    {
        return Err(StudyError::InvalidWitness(
            "expected claim/key/anchor/endpoint/output mismatch".into(),
        ));
    }
    Ok(())
}
