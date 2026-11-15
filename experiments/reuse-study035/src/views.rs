//! Owned exact views seeded from original checked versions. No deserialization
//! or public checked-flag constructor. Stage clones one row, never the maps.
use crate::{error::{Result,StudyError,library},reference::Parent,capture::CommitCall};
use behavior_engine::store::documents::{HistoryRef,EntityKey,EntityVersion};
use std::collections::{BTreeMap,BTreeSet};
use serde_json::{Value,json};
#[derive(Clone,Debug,PartialEq,Eq)]
struct ChildRow {owner:String,phase:String}
pub(crate) struct Views {
 history:HistoryRef,
 versions:BTreeMap<EntityKey,EntityVersion>,
 parents:BTreeMap<String,String>,
 children:BTreeMap<String,ChildRow>,
 active:BTreeMap<String,BTreeSet<String>>,
 trusted:bool,
}
pub(crate) struct FinishDelta {history:HistoryRef,child:String,old:ChildRow}
fn text(v:&Value,key:&str)->Result<String>{v[key].as_str().map(str::to_owned).ok_or(StudyError::Prerequisite("TypedViewField"))}
impl Views {
 pub(crate) fn seed(parent:&Parent)->Result<Self>{
  let history=parent.store.current_history().map_err(library)?;
  let versions=parent.store.research035_versions(&parent.module,&history).map_err(library)?;
  let mut view=Self{history,versions,parents:BTreeMap::new(),children:BTreeMap::new(),active:BTreeMap::new(),trusted:false};
  for (key,version)in &view.versions{
   if key.id!=text(&version.value,"id")?||key.entity!=version.entity{return Err(StudyError::Prerequisite("ViewIdentity"));}
   match key.entity.as_str(){
    "Parent"=>{let phase=text(&version.value,"phase")?;if !["Open","Gone","Abandoned"].contains(&phase.as_str()){return Err(StudyError::Prerequisite("ViewParentPhase"));}view.parents.insert(key.id.clone(),phase);view.active.entry(key.id.clone()).or_default();},
    "Child"=>{let row=ChildRow{owner:text(&version.value,"owner")?,phase:text(&version.value,"phase")?};if !["Active","Terminal"].contains(&row.phase.as_str()){return Err(StudyError::Prerequisite("ViewChildPhase"));}view.children.insert(key.id.clone(),row);},
    _=>return Err(StudyError::Prerequisite("UnknownViewEntity")),
   }
  }
  // Exact R/P projection. Program FieldOwnership is established separately by
  // the original CheckedProgram, and finish changes only c.phase.
  for(id,row)in &view.children{
   let phase=view.parents.get(&row.owner).ok_or(StudyError::Prerequisite("ViewMissingOwner"))?;
   if row.phase=="Active"{
    if phase!="Open"{return Err(StudyError::Prerequisite("ViewLifecycleViolation"));}
    view.active.entry(row.owner.clone()).or_default().insert(id.clone());
   }
  }
  view.trusted=true;Ok(view)
 }
 pub(crate) fn matches(&self,history:&HistoryRef)->bool{self.trusted&&self.history==*history}
 pub(crate) fn invalidate(&mut self){self.trusted=false;}
 pub(crate) fn active_children(&self,parent:&str)->Option<Value>{self.active.get(parent).map(|ids|json!(ids))}
 pub(crate) fn versions_equal(&self,canonical:&BTreeMap<EntityKey,EntityVersion>)->bool{self.trusted&&self.versions==*canonical}
 pub(crate) fn owner(&self,child:&str)->Option<&str>{self.children.get(child).map(|r|r.owner.as_str())}
 pub(crate) fn len(&self)->usize{self.versions.len()}
 pub(crate) fn materialize(&self)->Value{
  let parents:BTreeMap<_,_>=self.parents.iter().map(|(k,v)|(k.clone(),json!(v))).collect();
  let children:BTreeMap<_,_>=self.children.iter().map(|(k,row)|(k.clone(),json!({"phase":row.phase,"owner":row.owner}))).collect();
  json!({"parents":parents,"children":children})
 }
 pub(crate) fn stage(&self,child:&str)->Option<FinishDelta>{
  if !self.trusted||self.history.position==u64::MAX{return None;}
  let old=self.children.get(child)?.clone();
  let parent=self.parents.get(&old.owner)?;
  if old.phase=="Active"&&parent!="Open"{return None;}
  let indexed=self.active.get(&old.owner)?.contains(child);
  if indexed!=(old.phase=="Active"){return None;}
  Some(FinishDelta{history:self.history.clone(),child:child.to_owned(),old})
 }
 /// Called only after actual Core Applied, with the actual captured arguments.
 /// A false result invalidates optimization, never changes that Core outcome.
 pub(crate) fn apply(&mut self,delta:FinishDelta,call:&CommitCall,after:&HistoryRef)->bool{
  let key=EntityKey{entity:"Child".into(),id:delta.child.clone()};
  let old_version=match self.versions.get(&key){Some(v)=>v,None=>return false};
  if !self.matches(&delta.history)||after.position!=delta.history.position.checked_add(1).unwrap_or(0)
   ||after.store!=delta.history.store||call.expected_last_record!=delta.history.record
   ||call.new_head.last_record!=after.record||call.new_head.state_ref.position!=after.position
   ||call.new_head.state_ref.state!=after.state||!call.removals.is_empty()||!call.ref_changes.is_empty()
   ||!call.record.created.is_empty()||!call.record.removed.is_empty(){return false;}
  if delta.old.phase=="Terminal"{
   if !call.versions.is_empty(){return false;}
  }else{
   let [version]=call.versions.as_slice()else{return false};
   if version.key()!=key||version.value!=json!({"id":delta.child,"owner":delta.old.owner,"phase":"Terminal"})
    ||Some(version.revision)!=old_version.revision.checked_add(1)||version.created_at!=after.position{return false;}
   self.versions.insert(key,version.clone());
  }
  let Some(row)=self.children.get_mut(&delta.child)else{return false};
  if *row!=delta.old{return false;}
  row.phase="Terminal".into();
  if let Some(bucket)=self.active.get_mut(&row.owner){bucket.remove(&delta.child);}else{return false;}
  self.history=after.clone();true
 }
}
