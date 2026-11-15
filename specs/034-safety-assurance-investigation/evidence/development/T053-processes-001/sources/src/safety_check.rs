//! Only fresh public Safety checking constructs a checked program capability.
use crate::error::{Result, StudyError, library};
use behavior_engine::semantic::Module;
use behavior_models::safety::{
    UncertifiedSafetyAnalysis,
    certify::{self, ProofLimits, ProofToolchain},
    evidence::{SafetyAssessment, UnverifiedSafetyBundle},
};
use std::path::Path;
pub struct CheckedProgram {
    assessment: SafetyAssessment,
    behavior: String,
    policies: String,
}
impl CheckedProgram {
    fn checked(
        m: &Module,
        a: &UncertifiedSafetyAnalysis,
        result: SafetyAssessment,
    ) -> Result<Self> {
        if result.certificate().is_none() {
            return Err(StudyError::Prerequisite(
                "Required fresh Safety proof did not establish a certificate",
            ));
        }
        Ok(Self {
            assessment: result,
            behavior: m.behavior_version(),
            policies: a.policy_set_hash().into(),
        })
    }
    pub fn matches(&self, m: &Module, a: &UncertifiedSafetyAnalysis) -> bool {
        self.behavior == m.behavior_version()
            && self.policies == a.policy_set_hash()
            && self.assessment.certificate().is_some()
    }
    pub fn record(&self) -> serde_json::Value {
        self.assessment.to_json()
    }
}
pub fn certify(
    m: &Module,
    a: &UncertifiedSafetyAnalysis,
    out: &Path,
) -> Result<(SafetyAssessment, Option<UnverifiedSafetyBundle>)> {
    let tools = ProofToolchain::locked().map_err(library)?;
    let result = certify::certify(m, a, out, &tools, &ProofLimits::default());
    if result.certificate().is_none() {
        return Ok((result, None));
    }
    let bundle = certify::bundle(&behavior_engine::serialize::to_wire_json(m), a, &result)
        .map_err(library)?;
    Ok((result, Some(bundle)))
}
pub fn recheck(
    m: &Module,
    a: &UncertifiedSafetyAnalysis,
    bundle: &UnverifiedSafetyBundle,
    out: &Path,
) -> Result<(serde_json::Value, Option<CheckedProgram>)> {
    let tools = ProofToolchain::locked().map_err(library)?;
    let result =
        certify::verify_safety_evidence(m, a, bundle, out, &tools, &ProofLimits::default());
    let record = result.to_json();
    if result.certificate().is_none() {
        return Ok((record, None));
    }
    Ok((record, Some(CheckedProgram::checked(m, a, result)?)))
}
pub fn certify_checked(
    m: &Module,
    a: &UncertifiedSafetyAnalysis,
    out: &Path,
) -> Result<CheckedProgram> {
    let tools = ProofToolchain::locked().map_err(library)?;
    CheckedProgram::checked(
        m,
        a,
        certify::certify(m, a, out, &tools, &ProofLimits::default()),
    )
}
