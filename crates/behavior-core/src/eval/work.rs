//! Optional per-thread diagnostic counters; never a source of semantic authority.
use std::cell::Cell;

#[derive(Clone, Copy, Debug, Default, PartialEq, Eq, serde::Serialize)]
pub struct Work {
    pub decoded_rows: usize,
    pub snapshot_rows: usize,
    pub child_rows: usize,
    pub predicate_evaluations: usize,
    pub query_rows: usize,
    pub provider_rows: usize,
    pub copied_rows: usize,
    pub store_value_rows: usize,
    pub hash_document_json_bytes: usize,
    pub backend_enumerations: usize,
    pub backend_members: usize,
    pub backend_key_candidates: usize,
    pub backend_versions: usize,
    pub backend_record_reads: usize,
    pub backend_commits: usize,
}

thread_local! { static WORK: Cell<Work> = Cell::new(Work::default()); }

pub fn reset() {
    WORK.with(|cell| cell.set(Work::default()));
}
pub fn read() -> Work {
    WORK.with(Cell::get)
}
pub fn note(f: impl FnOnce(&mut Work)) {
    WORK.with(|cell| {
        let mut work = cell.get();
        f(&mut work);
        cell.set(work);
    });
}
