#[derive(Debug, thiserror::Error)]
pub enum StudyError {
    #[error("Core or Safety operation: {0}")]
    Library(String),
    #[error("Research prerequisite: {0}")]
    Prerequisite(&'static str),
    #[error("I/O: {0}")]
    Io(#[from] std::io::Error),
    #[error("JSON: {0}")]
    Json(#[from] serde_json::Error),
}
pub type Result<T> = std::result::Result<T, StudyError>;
pub fn library(error: impl std::fmt::Debug) -> StudyError {
    StudyError::Library(format!("{error:?}"))
}
