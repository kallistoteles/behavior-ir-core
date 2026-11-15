//! Coarse exclusive accounting within the same actual operation. Nested raw
//! clocks remain visible; unavailable/invalid partitions never become zero.
use crate::error::{Result, StudyError};
use serde::Serialize;
use serde_json::Value;
use std::time::Instant;
pub(crate) fn elapsed(start: Instant) -> u64 {
    start.elapsed().as_nanos().min(u64::MAX as u128) as u64
}
pub(crate) fn delta(after: &Value, before: &Value, key: &str) -> Result<u64> {
    after[key]
        .as_u64()
        .and_then(|a| before[key].as_u64().and_then(|b| a.checked_sub(b)))
        .ok_or(StudyError::Prerequisite("InvalidCoarsePhaseInterval"))
}
#[derive(Default, Clone, Serialize)]
pub(crate) struct Timings {
    pub reestablish_ns: u64,
    pub frame_ns: u64,
    pub native_semantic_ns: u64,
    pub canonical_output_identity_ns: u64,
    pub commit_other_ns: u64,
    pub property_ns: u64,
    pub affected_maintenance_ns: u64,
    pub reconstruction_ns: u64,
    pub raw_invoke_ns: u64,
    pub raw_commit_ns: u64,
}
impl Timings {
    pub fn add(&mut self, other: &Self) {
        self.reestablish_ns += other.reestablish_ns;
        self.frame_ns += other.frame_ns;
        self.native_semantic_ns += other.native_semantic_ns;
        self.canonical_output_identity_ns += other.canonical_output_identity_ns;
        self.commit_other_ns += other.commit_other_ns;
        self.property_ns += other.property_ns;
        self.affected_maintenance_ns += other.affected_maintenance_ns;
        self.reconstruction_ns += other.reconstruction_ns;
        self.raw_invoke_ns += other.raw_invoke_ns;
        self.raw_commit_ns += other.raw_commit_ns;
    }

    pub fn semantic_ns(&self) -> u64 {
        self.reestablish_ns
            + self.frame_ns
            + self.native_semantic_ns
            + self.property_ns
            + self.affected_maintenance_ns
    }
    pub fn accounted_ns(&self) -> u64 {
        self.semantic_ns()
            + self.canonical_output_identity_ns
            + self.commit_other_ns
            + self.reconstruction_ns
    }
}
