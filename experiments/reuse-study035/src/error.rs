use thiserror::Error;
#[derive(Debug, Error)]
pub enum StudyError {
    #[error("Invalid input: {0}")]
    InvalidInput(String),
    #[error("Prerequisite: {0}")]
    Prerequisite(&'static str),
    #[error("Library: {0}")]
    Library(String),
    #[error(transparent)]
    Json(#[from] serde_json::Error),
    #[error(transparent)]
    Io(#[from] std::io::Error),
}
pub type Result<T> = std::result::Result<T, StudyError>;
pub fn library(e: impl std::fmt::Debug) -> StudyError { StudyError::Library(format!("{e:?}")) }
