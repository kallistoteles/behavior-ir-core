//! Reused actual original establishment helpers; no serialized program authority.
use std::{path::PathBuf, sync::OnceLock};
use transition_study036::{
    error::{Result, StudyError},
    fixtures, safety_check,
};

pub fn checked() -> Result<&'static safety_check::CheckedProgram> {
    static PROGRAM: OnceLock<std::result::Result<safety_check::CheckedProgram, String>> =
        OnceLock::new();
    let result = PROGRAM.get_or_init(|| {
        let module = fixtures::module(false, false).map_err(|e| e.to_string())?;
        let analysis = fixtures::analysis(&module, false).map_err(|e| e.to_string())?;
        let stamp = std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .map_err(|e| e.to_string())?
            .as_nanos();
        let out = PathBuf::from(env!("CARGO_MANIFEST_DIR"))
            .join("private")
            .join(format!("v2-checked-{}-{stamp}", std::process::id()));
        safety_check::certify_checked(&module, &analysis, &out).map_err(|e| e.to_string())
    });
    result
        .as_ref()
        .map_err(|message| StudyError::Library(format!("NativeV2TestProgramNotChecked: {message}")))
}
pub fn checked_commands() -> Result<&'static safety_check::CheckedProgram> {
    static PROGRAM: OnceLock<std::result::Result<safety_check::CheckedProgram, String>> =
        OnceLock::new();
    let result = PROGRAM.get_or_init(|| {
        let module = fixtures::module(true, false).map_err(|e| e.to_string())?;
        let analysis = fixtures::analysis(&module, false).map_err(|e| e.to_string())?;
        let stamp = std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .map_err(|e| e.to_string())?
            .as_nanos();
        let out = PathBuf::from(env!("CARGO_MANIFEST_DIR"))
            .join("private")
            .join(format!("v2-command-checked-{}-{stamp}", std::process::id()));
        safety_check::certify_checked(&module, &analysis, &out).map_err(|e| e.to_string())
    });
    result.as_ref().map_err(|message| {
        StudyError::Library(format!("NativeV2CommandProgramNotChecked: {message}"))
    })
}
pub fn expected() -> Result<serde_json::Value> {
    Ok(serde_json::from_str(include_str!(
        "../expected/reference-case-D1.json"
    ))?)
}
