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
pub fn library(e: impl std::fmt::Debug) -> StudyError {
    StudyError::Library(format!("{e:?}"))
}

impl StudyError {
    pub fn exit_code(&self) -> u8 {
        match self {
            Self::InvalidInput(_) | Self::Json(_) => 2,
            Self::Io(e) if e.kind() == std::io::ErrorKind::AlreadyExists => 2,
            Self::Prerequisite(
                "CompleteOriginalObservationMismatch"
                | "IndependentOriginalAuditMismatch"
                | "UnconfirmedExactChild",
            ) => 1,
            Self::Prerequisite(name) if name.starts_with("Authored") => 1,
            Self::Prerequisite("OracleInput" | "DuplicateCase") => 2,
            _ => 3,
        }
    }
}
