//! Original-call fixtures authored outside the session endpoint.
#![allow(dead_code)]
use serde_json::Value;
use transition_study036::{error::Result, fixtures::InvocationMetadata, reference};

#[path = "v2_support.rs"]
pub mod program;

pub type SessionFixture = (Vec<(Value, InvocationMetadata)>, Vec<Value>);

pub fn stream(length: usize, changing: bool) -> Result<SessionFixture> {
    let mut original = reference::parent("growth-D1")?;
    let mut requests = Vec::new();
    let mut expectations = Vec::new();
    for index in 0..length {
        let request = reference::request(if changing && index % 2 == 1 {
            "activate"
        } else {
            "finish"
        });
        let metadata = InvocationMetadata::legacy();
        expectations.push(reference::step_with_metadata(
            &mut original.store,
            &original.module,
            &original.analysis,
            &request,
            &metadata,
        )?);
        requests.push((request, metadata));
    }
    Ok((requests, expectations))
}

pub fn prefix_expected(originals: &[Value], completed: usize, next: &Value) -> Result<Value> {
    let mut expected = program::expected()?;
    for observation in &originals[..completed] {
        expected["parent"] = observation["after_history"].clone();
        if !observation["commit_arguments"].is_null() {
            expected["parent_packet"]["commits"]
                .as_array_mut()
                .ok_or(transition_study036::error::StudyError::Prerequisite(
                    "ExpectedPacket",
                ))?
                .push(observation["commit_arguments"].clone());
        }
    }
    expected["request"] = next.clone();
    Ok(expected)
}

pub fn directory(label: &str) -> std::path::PathBuf {
    std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("private")
        .join(format!("session-{label}-{}", std::process::id()))
}
