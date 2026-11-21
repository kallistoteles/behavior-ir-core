//! Actual Cargo/compiler identity baked by the declared private build.
//! These provenance facts cannot establish a semantic correspondence proof.
use crate::error::Result;

#[derive(Debug, serde::Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CorePackageIdentity {
    pub name: String,
    pub source_revision: String,
    pub manifest_path: String,
    pub source_export_sha256: String,
}
#[derive(Debug, serde::Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CompiledDependencyIdentity {
    pub core_packages: Vec<CorePackageIdentity>,
    pub compiler_release: String,
    pub target: String,
    pub features: Vec<String>,
    pub source_subject_sha256: String,
    pub native_proof_status: String,
}

pub fn compiled_dependency_identity() -> Result<CompiledDependencyIdentity> {
    Ok(serde_json::from_str(include_str!(
        "../build-identity.json"
    ))?)
}
