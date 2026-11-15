//! Opaque process-local ownership. No Deserialize/Clone or checked-flag constructor.
use crate::{acquire,error::{Result,StudyError,library},reference::{self,Parent},safety_check::CheckedProgram};
use serde_json::Value;
pub use crate::capture::Fault;
#[derive(Debug,Clone,Copy,PartialEq,Eq)]
pub enum Status { SuppliedUnverified, Checking, Established, Pending, Quarantined }
pub struct Ground {
 parent:Parent,
 status:Status,
 exact_history:Option<Value>,
 provenance:Option<Value>,
 retain:bool,
}
impl Ground {
 pub fn supplied(parent:Parent)->Self {Self{parent,status:Status::SuppliedUnverified,exact_history:None,provenance:None,retain:false}}
 pub fn status(&self)->Status {self.status}
 pub fn check(&mut self,program:&CheckedProgram,expected:&Value)->Result<()> {
  self.status=Status::Checking;self.exact_history=None;self.provenance=None;
  match acquire::verify(&self.parent,program,expected){
   Ok(provenance)=>{self.exact_history=Some(self.history()?);self.provenance=Some(provenance);self.status=Status::Established;Ok(())},
   Err(error)=>{self.quarantine();Err(error)}
  }
 }
 pub fn history(&self)->Result<Value>{Ok(self.parent.store.current_history().map_err(library)?.as_json())}
 pub fn selected_retained(&self)->bool{self.status==Status::Established&&self.parent.store.research035_has_selected()}
 pub fn select_retention(&mut self,retain:bool)->Result<()> {
  if self.status!=Status::Established{return Err(StudyError::Prerequisite("UnestablishedGround"));}
  self.retain=retain;if !retain{self.parent.store.research035_drop_selected();}Ok(())
 }
 pub fn invoke(&mut self,request:&Value)->Result<Value>{let expected=self.history()?;self.invoke_expected(&expected,request)}
 pub fn invoke_expected(&mut self,expected:&Value,request:&Value)->Result<Value>{
  if self.status!=Status::Established{return Err(StudyError::Prerequisite("UnestablishedGround"));}
  if self.exact_history.as_ref()!=Some(expected)||self.history()?!=*expected{
   self.quarantine();return Err(StudyError::Prerequisite("StaleGround"));
  }
  if !self.retain{self.parent.store.research035_drop_selected();}
  self.status=Status::Pending;
  match reference::step(&mut self.parent.store,&self.parent.module,&self.parent.analysis,request){
   Ok(result)=>{
    let history=match self.history(){Ok(h)=>h,Err(e)=>{self.quarantine();return Err(e)}};
    let valid=result["original_property_outcomes"]["status"]=="Valid";
    let expected_position=expected["position"].as_u64().and_then(|p|if result["bundle"].is_null(){Some(p)}else{p.checked_add(1)});
    if !valid||expected_position!=history["position"].as_u64()||history!=result["after_history"]{
     self.quarantine();return Err(StudyError::Prerequisite("UnconfirmedExactChild"));
    }
    // A full original post-check really ran in this US2 route. No derived
    // preservation provenance or direct validation record is fabricated.
    if !result["bundle"].is_null(){self.parent.requests.push(request.clone());}
    self.exact_history=Some(history);self.status=Status::Established;Ok(result)
   },
   Err(error)=>{
    // Preserve an attempted request as UNVERIFIED replay material only when
    // the backend actually contains one new captured event. Fresh acquisition
    // must still reexecute and compare the entire chain before authority.
    if self.parent.store.backend().commit_count()==self.parent.requests.len()+1{self.parent.requests.push(request.clone());}
    self.quarantine();Err(error)
   }
  }
 }
 pub fn into_unverified(mut self)->Parent{self.quarantine();self.parent}
 pub fn quarantine(&mut self){self.status=Status::Quarantined;self.exact_history=None;self.provenance=None;self.parent.store.research035_drop_selected();}
 pub fn revoke_writer(&mut self){self.quarantine();}
 /// Simulated host faults; LostAcknowledgement actually publishes in memory.
 pub fn inject_fault(&mut self,fault:Fault){self.parent.store.backend_mut().inject_fault(fault);}
 pub fn set_work(&self,enabled:bool){self.parent.store.research035_set_work(enabled);}
 pub fn work_counts(&self)->(u64,u64){self.parent.store.research035_work_counts()}
 pub fn provenance(&self)->Option<&Value>{self.provenance.as_ref()}
}
