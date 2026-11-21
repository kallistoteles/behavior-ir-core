//! Concrete codec wrappers must retain actual original values and errors.
#![allow(clippy::unwrap_used)]
use serde_json::{Value, json};
use transition_study036::{error::Result, serialization};

#[test]
fn concrete_error_display_keeps_original_text_and_format_flags() {
    use transition_study036::{error::StudyError, protocol::ArtifactError};
    #[derive(Debug, thiserror::Error)]
    enum Prior {
        #[error("Invalid input: {0}")]
        InvalidInput(String),
        #[error("Prerequisite: {0}")]
        Prerequisite(&'static str),
        #[error("Library: {0}")]
        Library(String),
    }
    for text in ["", "ASCII", "å𝄞", "line\nnext", "nul\0end", "{0}:?\\"] {
        for (actual, expected) in [
            (
                StudyError::InvalidInput(text.into()),
                Prior::InvalidInput(text.into()),
            ),
            (StudyError::Prerequisite(text), Prior::Prerequisite(text)),
            (
                StudyError::Library(text.into()),
                Prior::Library(text.into()),
            ),
        ] {
            assert_eq!(
                actual.to_string().as_bytes(),
                expected.to_string().as_bytes()
            );
            assert_eq!(format!("{actual:?}"), format!("{expected:?}"));
            assert_eq!(format!("{actual:>40}"), format!("{expected:>40}"));
            assert_eq!(format!("{actual:#}"), format!("{expected:#}"));
        }
        assert_eq!(ArtifactError::Invalid(text).to_string(), text);
    }
}

#[test]
fn native_exit_codes_keep_original_prefix_and_first_match() {
    use transition_study036::error::StudyError;
    for name in [
        "",
        "A",
        "Au",
        "Aut",
        "Auth",
        "Autho",
        "Author",
        "Authore",
        "Authored",
        "AuthoredControl",
        "Authored\0",
        "Authoredå",
        "Authored𝄞",
        "Authored\n",
        "authored",
        "Åuthored",
        "Authore𝄞",
        "AuthoreD",
        " Authored",
        "xAuthored",
        "AuthoredOracleInput",
        "CompleteOriginalObservationMismatch",
        "IndependentOriginalAuditMismatch",
        "UnconfirmedExactChild",
        "OracleInput",
        "DuplicateCase",
        "Other",
    ] {
        let expected = match name {
            "CompleteOriginalObservationMismatch"
            | "IndependentOriginalAuditMismatch"
            | "UnconfirmedExactChild" => 1,
            value if value.starts_with("Authored") => 1,
            "OracleInput" | "DuplicateCase" => 2,
            _ => 3,
        };
        assert_eq!(
            StudyError::Prerequisite(name).exit_code(),
            expected,
            "{name:?}"
        );
    }
    assert_eq!(StudyError::InvalidInput("Authored".into()).exit_code(), 2);
    assert_eq!(StudyError::Library("Authored".into()).exit_code(), 3);
    assert_eq!(
        StudyError::Io(std::io::ErrorKind::AlreadyExists.into()).exit_code(),
        2
    );
    assert_eq!(
        StudyError::Io(std::io::ErrorKind::Other.into()).exit_code(),
        3
    );
}

#[test]
fn concrete_error_boundaries_preserve_original_values_and_formatting_effects() {
    use std::{cell::Cell, fmt};
    use transition_study036::error::{LibraryResult, library};
    struct Failure<'a>(&'a Cell<usize>);
    impl fmt::Debug for Failure<'_> {
        fn fmt(&self, output: &mut fmt::Formatter<'_>) -> fmt::Result {
            self.0.set(self.0.get() + 1);
            output.write_str("exact-library-error")
        }
    }
    let calls = Cell::new(0);
    let success: std::result::Result<i64, Failure<'_>> = Ok(i64::MIN);
    assert!(matches!(success.map_library(), Ok(i64::MIN)));
    assert_eq!(calls.get(), 0);
    let actual: std::result::Result<i64, _> = Err(Failure(&calls));
    let actual = match actual.map_library() {
        Err(error) => error.to_string(),
        Ok(_) => panic!("expected library error"),
    };
    assert_eq!(calls.get(), 1);
    let original: std::result::Result<i64, _> = Err(Failure(&calls));
    let original = match original.map_err(library) {
        Err(error) => error.to_string(),
        Ok(_) => panic!("expected original error"),
    };
    assert_eq!(calls.get(), 2);
    assert_eq!(actual, original);
    for message in [
        "WriteCounterOverflow",
        "OutputByteCounterOverflow",
        "BufferedWriterPanicked",
        "UnflushedOutput",
    ] {
        let original = std::io::Error::other(message);
        let actual = transition_study036::native_io::other(message);
        assert_eq!(actual.kind(), original.kind());
        assert_eq!(actual.to_string(), original.to_string());
        assert_eq!(format!("{actual:?}"), format!("{original:?}"));
    }
}

#[test]
#[cfg(unix)]
fn native_root_helpers_keep_exact_bytes_symlink_refusal_and_first_errors() -> Result<()> {
    use sha2::{Digest, Sha256};
    use std::{collections::BTreeMap, path::PathBuf};
    use transition_study036::{native_artifacts::InputRoots, protocol::ArtifactRefV2};
    fn failure<T>(result: Result<T>) -> String {
        match result {
            Err(error) => error.to_string(),
            Ok(_) => panic!("invalid reference was accepted"),
        }
    }
    struct Cleanup(PathBuf);
    impl Drop for Cleanup {
        fn drop(&mut self) {
            let _ = std::fs::remove_dir_all(&self.0);
        }
    }
    let directory = std::env::temp_dir().join(format!("core036-root-codec-{}", std::process::id()));
    std::fs::create_dir(&directory)?;
    let _cleanup = Cleanup(directory.clone());
    let payload = "{\"zero\":-0.0,\"å\":true}".as_bytes();
    std::fs::write(directory.join("input.json"), payload)?;
    let roots = InputRoots::new(BTreeMap::from([("private".into(), directory.clone())]))?;
    let mut reference = ArtifactRefV2 {
        root_id: "private".into(),
        path: "input.json".into(),
        bytes: payload.len() as u64,
        sha256: format!("{:x}", Sha256::digest(payload)),
    };
    assert_eq!(roots.read(&reference, payload.len())?, payload);
    reference.path = "../input.json".into();
    reference.sha256 = "bad".into();
    assert_eq!(
        failure(roots.read(&reference, 0)),
        "Invalid input: V2ReferencePath"
    );
    reference.path = "input.json".into();
    assert_eq!(
        failure(roots.read(&reference, 0)),
        "Invalid input: V2ReferenceDigest"
    );
    reference.sha256 = format!("{:x}", Sha256::digest(payload));
    assert_eq!(
        failure(roots.read(&reference, 0)),
        "Invalid input: InputArtifactBound"
    );
    std::os::unix::fs::symlink("input.json", directory.join("alias.json"))?;
    reference.path = "alias.json".into();
    assert_eq!(
        failure(roots.read(&reference, payload.len())),
        "Invalid input: InputArtifactSymlink"
    );
    Ok(())
}

#[test]
fn numeric_representation_unicode_and_full_value_bytes_match_original() -> Result<()> {
    for raw in [
        r#"{"zero":-0.0,"fraction":1.25,"maximum":18446744073709551615,"unicode":"å𝄞"}"#,
        r#"[null,true,{"array":[1,1.0,-1,0.0,-0.0]}]"#,
    ] {
        let value: Value = serde_json::from_str(raw)?;
        assert_eq!(
            serialization::value_bytes(&value)?,
            serde_json::to_vec(&value)?
        );
    }
    Ok(())
}
#[test]
fn packet_and_complete_captured_call_keep_every_original_field() -> Result<()> {
    let mut parent = transition_study036::reference::parent("growth-D1")?;
    let request = transition_study036::reference::request("finish");
    transition_study036::reference::step(
        &mut parent.store,
        &parent.module,
        &parent.analysis,
        &request,
    )?;
    let packet = parent.store.backend().packet()?;
    assert_eq!(
        serialization::packet_bytes(&packet)?,
        serde_json::to_vec(&packet)?
    );
    assert_eq!(
        serialization::packet_value(&packet)?,
        serde_json::to_value(&packet)?
    );
    assert_eq!(
        serialization::commit_value(parent.store.backend().last_call())?,
        serde_json::to_value(parent.store.backend().last_call())?
    );
    let last = packet.commits.last().unwrap();
    assert_eq!(
        serialization::record_bytes(&last.record)?,
        serde_json::to_vec(&last.record)?
    );
    let decoded = serialization::packet_from_value(serde_json::to_value(&packet)?)?;
    assert_eq!(serde_json::to_vec(&decoded)?, serde_json::to_vec(&packet)?);
    Ok(())
}
#[test]
fn concrete_decode_success_and_first_errors_match_original() -> Result<()> {
    for value in [
        Value::Null,
        json!([["Child", "arbitrary/native/key"]]),
        json!([["Child", 1]]),
        json!({"wrong":true}),
    ] {
        let original = serde_json::from_value::<Option<Vec<(String, String)>>>(value.clone());
        let actual = serialization::scope_from_value(value);
        assert_eq!(actual.as_ref().ok(), original.as_ref().ok());
        assert_eq!(
            actual.err().map(|e| e.to_string()),
            original.err().map(|e| e.to_string())
        );
    }
    Ok(())
}
#[test]
fn observation_constructor_preserves_all_eight_fields_and_nested_metadata() -> Result<()> {
    let invocation = json!({"context":{"number":-0.0},"sentinel":"invocation"});
    let arguments = json!({"record":{"sentinel":"record"},"duplicates":["x","x"]});
    let before = json!({"sentinel":"before"});
    let after = json!({"sentinel":"after"});
    let state = json!({"sentinel":"state"});
    let expected = json!({"invocation":invocation,"bundle":null,"commit_arguments":arguments,
        "transition_record":arguments.get("record"),"before_history":before,"after_history":after,
        "post_state":state,"original_property_outcomes":{"status":"Valid"}});
    let actual = serialization::original_observation(
        &invocation,
        None,
        arguments,
        before,
        after,
        state,
        "Valid",
    );
    assert_eq!(serde_json::to_vec(&actual)?, serde_json::to_vec(&expected)?);
    Ok(())
}
