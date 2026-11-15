//! Process-local single coordinator. All-writer coverage is explicit host trust.
//! A second direct backend/Store handle is outside this enforced boundary.
use crate::{error::{Result,StudyError,library},safety_check::CheckedProgram};
use behavior_engine::{semantic::Module,store::{Store,Backend,documents::HistoryRef}};
use behavior_models::safety::{UncertifiedSafetyAnalysis,snapshot::validate_store_snapshot};
pub struct Coordinator<B:Backend>{store:Store<B>,active:Option<(String,String,HistoryRef)>}
impl<B:Backend> Coordinator<B>{
 pub fn new(store:Store<B>)->Self{Self{store,active:None}}
 pub fn store(&self)->&Store<B>{&self.store}
 pub fn deactivate(&mut self){self.active=None;}
 pub fn active(&self)->bool{self.active.is_some()}
 pub fn activate(&mut self,m:&Module,a:&UncertifiedSafetyAnalysis,program:&CheckedProgram)->Result<serde_json::Value>{
  self.deactivate();
  if !program.matches(m,a){return Err(StudyError::Prerequisite("CertificateSubjectMismatch"));}
  // Exclusive &mut self covers this host's only writer; it cannot revoke a
  // hostile separately supplied backend handle. That premise is not proved.
  let at=self.store.current_history().map_err(library)?;
  let validity=validate_store_snapshot(m,a,&self.store,&at);
  if validity.status()!="Valid"||!validity.matches_anchor(m,a,&at)||self.store.current_history().map_err(library)?!=at{return Err(StudyError::Prerequisite("InvalidOrStaleBoundary"));}
  self.active=Some((m.behavior_version(),a.policy_set_hash().into(),at));
  Ok(validity.to_json())
 }
 pub fn invoke(&mut self,m:&Module,a:&UncertifiedSafetyAnalysis,action:&str,bindings:serde_json::Value,input:serde_json::Value)->Result<behavior_engine::invocation::Invocation>{
  let at=self.store.current_history().map_err(library)?;
  if self.active.as_ref().is_none_or(|(behavior,policies,head)|behavior!=&m.behavior_version()||policies!=a.policy_set_hash()||head!=&at){self.deactivate();return Err(StudyError::Prerequisite("InactiveOrStaleCoordinator"));}
  let inv=crate::fixtures::invoke(&self.store,m,action,bindings,input)?;
  if let Some(bundle)=&inv.bundle{
   let expected=self.store.current().map_err(library)?;
   if let Err(e)=self.store.commit(m,&expected,bundle){self.deactivate();return Err(library(e));}
   let after=self.store.current_history().map_err(library)?;
   self.active=Some((m.behavior_version(),a.policy_set_hash().into(),after));
  }
  Ok(inv)
 }
 pub fn migrate(&mut self,migration:&behavior_engine::migration::Migration,source:&Module,target:&Module)->Result<()>{
  self.deactivate();self.store.migrate(migration,source,target,"2026-10-18T01:00:00Z",None).map(|_|()).map_err(library)
 }
 pub fn into_restart(mut self)->Self{self.deactivate();self}
 pub fn boundary_change(&mut self){self.deactivate();}
}
