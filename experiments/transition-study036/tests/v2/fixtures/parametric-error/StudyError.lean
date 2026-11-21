inductive error.StudyError where
| InvalidInput : String → error.StudyError
| Prerequisite : Str → error.StudyError
| Library : String → error.StudyError
| Json : serde_json.error.Error → error.StudyError
| Io : core.io.error.Error → error.StudyError
