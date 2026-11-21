use thiserror::Error;
#[derive(Debug, Error)]
pub enum StudyError {
    #[error("Invalid input: {0:}")]
    InvalidInput(String),
    #[error("Prerequisite: {0:}")]
    Prerequisite(&'static str),
    #[error("Library: {0:}")]
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

/// The same library-error conversion without a function-item callback type.
pub trait LibraryResult<T> {
    fn map_library(self) -> Result<T>;
}

impl<T, E: std::fmt::Debug> LibraryResult<T> for std::result::Result<T, E> {
    fn map_library(self) -> Result<T> {
        match self {
            Ok(value) => Ok(value),
            Err(error) => Err(library(error)),
        }
    }
}

impl StudyError {
    pub fn exit_code(self) -> u8 {
        match self {
            Self::InvalidInput(_) | Self::Json(_) => 2,
            Self::Io(error) => {
                if error.kind() == std::io::ErrorKind::AlreadyExists {
                    2
                } else {
                    3
                }
            }
            Self::Prerequisite(name) => prerequisite_exit_code(name),
            Self::Library(_) => 3,
        }
    }
}

fn prerequisite_exit_code(name: &str) -> u8 {
    if name == "CompleteOriginalObservationMismatch"
        || name == "IndependentOriginalAuditMismatch"
        || name == "UnconfirmedExactChild"
        || name.as_bytes().starts_with(b"Authored")
    {
        1
    } else if name == "OracleInput" || name == "DuplicateCase" {
        2
    } else {
        3
    }
}

impl From<crate::protocol::ArtifactError> for StudyError {
    fn from(error: crate::protocol::ArtifactError) -> Self {
        Self::InvalidInput(error.to_string())
    }
}
