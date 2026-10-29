//! Opt-in scoped diagnostics, separate from timed production-like collection.
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::cell::RefCell;
#[derive(Debug, Clone, Default, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Counters {
    pub serialized_vec_calls: u64,
    pub serialized_vec_bytes: u64,
    pub sha256_calls: u64,
    pub sha256_input_bytes: u64,
}
thread_local! {
    static ENABLED:bool=std::env::var("CORE032_DIAGNOSTICS").as_deref()==Ok("1");
    static COUNTS:RefCell<Counters>=RefCell::new(Counters::default());
}
pub fn serialization(bytes: usize) {
    if ENABLED.with(|e| *e) {
        COUNTS.with(|c| {
            let mut c = c.borrow_mut();
            c.serialized_vec_calls += 1;
            c.serialized_vec_bytes += bytes as u64;
        });
    }
}
pub fn json<T: Serialize>(value: &T) -> crate::types::Result<Vec<u8>> {
    let raw = serde_json::to_vec(value)?;
    serialization(raw.len());
    Ok(raw)
}
pub fn hash(bytes: &[u8]) -> [u8; 32] {
    if ENABLED.with(|e| *e) {
        COUNTS.with(|c| {
            let mut c = c.borrow_mut();
            c.sha256_calls += 1;
            c.sha256_input_bytes += bytes.len() as u64;
        });
    }
    Sha256::digest(bytes).into()
}
pub fn read() -> Option<Counters> {
    if ENABLED.with(|e| *e) {
        Some(COUNTS.with(|c| c.borrow().clone()))
    } else {
        None
    }
}
pub const SCOPE: &str = "experimental compact/DAG export JSON Vec serialization and one-shot SHA sites, current thread only; Core/Nova/allocator total allocations/copies/parses unmeasured";
