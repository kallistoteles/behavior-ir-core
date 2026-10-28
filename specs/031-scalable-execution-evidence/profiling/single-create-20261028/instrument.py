from pathlib import Path
import re,sys
root=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else Path('/home/kalle/repos/behavior-ir-core-031-profile')
work=root/'crates/behavior-core/src/eval/work.rs'
work.write_text(work.read_text()+r'''
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
''')
def scope(path,name,label,prefix='crate::eval::work'):
 p=root/path;s=p.read_text();pat=r'\bfn '+re.escape(name)+r'(?:<[^\n]*>)?\('
 matches=list(re.finditer(pat,s));assert matches,(path,name)
 for match in reversed(matches):
  i=s.index('{',match.end())+1
  s=s[:i]+f'\n        #[cfg(feature="validation-work")]\n        let _profile_guard={prefix}::profile_scope("{label}");\n'+s[i:]
 p.write_text(s)
for name in ['decode_strict','to_canonical_string','check_canonical_value','tagged_hash_canonical_text']:
 scope('crates/behavior-core/src/canonical.rs',name,'core::'+name)
scope('crates/behavior-core/src/canonical.rs','tagged_hash','core::tagged_hash')
p=root/'crates/behavior-core/src/canonical.rs';s=p.read_text().replace('profile_scope("core::tagged_hash")','profile_scope(format!("core::tagged_hash[{tag}]"))');p.write_text(s)
for name in ['from_json','with_profile','with_current_profile','reproduce_record','replay_profile','validate_record08','validate_record07','compare']:
 scope('crates/behavior-core/src/record.rs',name,'core::record::'+name)
for name in ['evaluate_decoded_request','run_transition','run_complete_child_rules','snapshot_universe_json']:
 scope('crates/behavior-core/src/eval.rs',name,'core::eval::'+name)
for name in ['evaluate','run_child_rules','checked_child']:
 scope('crates/behavior-core/src/eval/prepared.rs',name,'core::prepared::'+name)
scope('crates/behavior-core/src/facts.rs','to_json','core::facts::to_json')
for name in ['hash_of','decode']:
 scope('crates/behavior-store/src/documents.rs',name,'store::documents::'+name,'behavior_core::eval::work')
p=root/'crates/behavior-store/src/documents.rs';s=p.read_text().replace('profile_scope("store::documents::hash_of")','profile_scope(format!("store::documents::hash_of[{tag}]"))')
s=s.replace('let v = serde_json::to_value(doc).map_err(|e| StoreError::BundleInvalid(e.to_string()))?;', '{PLACEHOLDER}',1)
s=s.replace('{PLACEHOLDER}','let v = {\n #[cfg(feature="validation-work")] let _g=behavior_core::eval::work::profile_scope("store::hash_to_value");\n serde_json::to_value(doc).map_err(|e| StoreError::BundleInvalid(e.to_string()))?\n};',1)
s=s.replace('w.hash_document_json_bytes += v.to_string().len();','let _g=behavior_core::eval::work::profile_scope("diagnostic::document_byte_counter");\n w.hash_document_json_bytes += v.to_string().len();');p.write_text(s)
for name in ['evaluate','bundle_from_evaluation','commit_impl','head','validate_snapshot','validate_snapshot_full','snapshot_identity','rederive_for','transition_hash']:
 scope('crates/behavior-store/src/store.rs',name,'store::'+name,'behavior_core::eval::work')
for name in ['validate_incremental_child_at','carry_incremental_child']:
 scope('crates/behavior-store/src/store/incremental/mod.rs',name,'store::incremental::'+name,'behavior_core::eval::work')
scope('crates/behavior-store/src/memory.rs','commit','backend::commit','behavior_core::eval::work')
def wrap(path,old,expr,label):
 p=root/path;s=p.read_text();assert old in s,(path,old);s=s.replace(old,'{ #[cfg(feature="validation-work")] let _g=behavior_core::eval::work::profile_scope("'+label+'"); '+expr+' }');p.write_text(s)
wrap('crates/behavior-store/src/store.rs','let mut archived_bundle = bundle.clone();','let mut archived_bundle = bundle.clone();','invalid') if False else None
p=root/'crates/behavior-store/src/store.rs';s=p.read_text();s=s.replace('let mut archived_bundle = bundle.clone();','let mut archived_bundle = { #[cfg(feature="validation-work")] let _g=behavior_core::eval::work::profile_scope("store::archive_bundle_clone");bundle.clone() };');s=s.replace('bundle: Some(archived_bundle.clone()),','bundle: Some({ #[cfg(feature="validation-work")] let _g=behavior_core::eval::work::profile_scope("store::event_bundle_clone"); archived_bundle.clone() }),');s=s.replace('record: bundle.record.clone(),','record: { #[cfg(feature="validation-work")] let _g=behavior_core::eval::work::profile_scope("store::return_record_clone"); bundle.record.clone() },');s=s.replace('&record.to_string(),','&{ #[cfg(feature="validation-work")] let _g=behavior_core::eval::work::profile_scope("store::record_to_string"); record.to_string() },');p.write_text(s)
print('Scoped timing instruments installed in isolated worktree.')
