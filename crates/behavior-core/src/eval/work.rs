//! Optional per-thread diagnostic counters; never a source of semantic authority.
use std::cell::{Cell, RefCell};
use std::collections::BTreeSet;

#[derive(Clone, Copy, Debug, Default, PartialEq, Eq, serde::Serialize)]
pub struct Work {
    pub document_hash_calls: usize,
    pub document_decode_calls: usize,
    pub document_decode_json_bytes: usize,
    pub record_parse_calls: usize,
    pub record_parse_bytes: usize,
    pub decoded_rows: usize,
    pub unrelated_row_checks: usize,
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

thread_local! {
    static WORK: Cell<Work> = Cell::new(Work::default());
    static ALLOWED: RefCell<Option<BTreeSet<(String,String)>>> = const { RefCell::new(None) };
}
/// Independent test expectation for the current operation, never read by semantics.
pub fn allowed_rows(rows: impl IntoIterator<Item = (String, String)>) {
    ALLOWED.with(|a| *a.borrow_mut() = Some(rows.into_iter().collect()));
}
pub fn row(entity: &str, id: &str) {
    let unrelated = ALLOWED.with(|a| {
        a.borrow()
            .as_ref()
            .is_some_and(|s| !s.contains(&(entity.into(), id.into())))
    });
    if unrelated {
        note(|w| w.unrelated_row_checks += 1);
    }
}

pub fn reset() {
    ALLOWED.with(|a| *a.borrow_mut() = None);
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

// Isolated diagnostic scopes. No semantics or serialized evidence consults them.
#[derive(Default,serde::Serialize)]
pub struct ProfileRow {calls:u64,inclusive_ns:u128,exclusive_ns:u128}
struct ProfileFrame {name:String,clock:std::time::Instant,children:u128}
thread_local! {
 static PROFILING: Cell<bool> = const { Cell::new(false) };
 static PROFILE_STACK: RefCell<Vec<ProfileFrame>> = const { RefCell::new(Vec::new()) };
 static PROFILE_TOTALS: RefCell<std::collections::BTreeMap<String,ProfileRow>> = const { RefCell::new(std::collections::BTreeMap::new()) };
}
pub struct ProfileGuard {active:bool}
pub fn profile_scope(name: impl Into<String>) -> ProfileGuard {
 let active=PROFILING.with(Cell::get);
 if active {PROFILE_STACK.with(|s|s.borrow_mut().push(ProfileFrame{name:name.into(),clock:std::time::Instant::now(),children:0}));}
 ProfileGuard{active}
}
impl Drop for ProfileGuard {fn drop(&mut self){
 if !self.active{return;}
 let frame=PROFILE_STACK.with(|s|s.borrow_mut().pop().expect("unbalanced profiling scope"));
 let ns=frame.clock.elapsed().as_nanos();
 PROFILE_STACK.with(|s|{if let Some(p)=s.borrow_mut().last_mut(){p.children+=ns;}});
 PROFILE_TOTALS.with(|t|{let mut t=t.borrow_mut();let x=t.entry(frame.name).or_default();x.calls+=1;x.inclusive_ns+=ns;x.exclusive_ns+=ns-frame.children;});
}}
pub fn profile_reset(){PROFILE_STACK.with(|s|assert!(s.borrow().is_empty()));PROFILE_TOTALS.with(|t|t.borrow_mut().clear());PROFILING.with(|p|p.set(true));}
pub fn profile_read()->serde_json::Value{PROFILING.with(|p|p.set(false));PROFILE_STACK.with(|s|assert!(s.borrow().is_empty()));PROFILE_TOTALS.with(|t|serde_json::to_value(&*t.borrow()).unwrap())}
