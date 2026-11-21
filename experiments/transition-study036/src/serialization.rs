//! Shared concrete original codec calls. Their native refinements remain open.
use crate::{
    capture::{BackendPacket, CommitCall},
    error::Result,
};
use behavior_engine::store::documents::{CommitBundle, HistoryRef, TransitionRecord};
use serde_json::{Value, json};

// One concrete shared call in both native workers and source extraction.
// The exact original serializer is retained; its refinement remains open.
pub fn module_wire(module: &behavior_engine::semantic::Module) -> String {
    behavior_engine::serialize::to_wire_json(module)
}

pub fn value_bytes(value: &Value) -> Result<Vec<u8>> {
    Ok(serde_json::to_vec(value)?)
}
pub fn packet_bytes(packet: &BackendPacket) -> Result<Vec<u8>> {
    Ok(serde_json::to_vec(packet)?)
}
pub fn record_bytes(record: &TransitionRecord) -> Result<Vec<u8>> {
    Ok(serde_json::to_vec(record)?)
}
pub fn packet_value(packet: &BackendPacket) -> Result<Value> {
    Ok(serde_json::to_value(packet)?)
}
pub fn commit_value(call: Option<&CommitCall>) -> Result<Value> {
    Ok(serde_json::to_value(call)?)
}
pub fn packet_from_value(value: Value) -> Result<BackendPacket> {
    Ok(serde_json::from_value(value)?)
}
pub fn scope_from_value(value: Value) -> Result<Option<Vec<(String, String)>>> {
    Ok(serde_json::from_value(value)?)
}
pub fn history_from_value(value: Value) -> serde_json::Result<HistoryRef> {
    serde_json::from_value(value)
}
// Only complete normative arguments; do not pass timing/counter fields in an
// opaque shared observation constructor, since those deliberately differ.
pub fn original_observation(
    invocation: &Value,
    bundle: Option<CommitBundle>,
    commit_arguments: Value,
    before_history: Value,
    after_history: Value,
    post_state: Value,
    property_status: &str,
) -> Value {
    json!({"invocation":invocation,"bundle":bundle,"commit_arguments":commit_arguments,
      "transition_record":commit_arguments.get("record"),"before_history":before_history,
      "after_history":after_history,"post_state":post_state,
      "original_property_outcomes":{"status":property_status}})
}

pub fn scope_value(scope: &Option<Vec<(String, String)>>) -> Value {
    json!(scope)
}
pub(crate) fn timings_value(timings: &crate::timings::Timings) -> Value {
    json!(timings)
}

// Shared native call boundaries retain the original streaming serializer and
// exact hash instantiations. Their source-bound native refinements stay open.
pub fn write_value<W: std::io::Write>(writer: &mut W, value: &Value) -> serde_json::Result<()> {
    serde_json::to_writer(writer, value)
}

// Preserve Digest::digest's original &Vec<u8> instantiation in every caller.
#[allow(clippy::ptr_arg)]
pub fn raw_sha256(bytes: &Vec<u8>) -> String {
    use sha2::{Digest, Sha256};
    format!("{:x}", Sha256::digest(bytes))
}

pub fn semantic_sha256(body: Vec<u8>) -> String {
    use sha2::{Digest, Sha256};
    let mut h = Sha256::new();
    h.update(b"core035.research.v1\0");
    h.update(body);
    format!("{:x}", h.finalize())
}
