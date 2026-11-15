//! Public Builder port of pinned LD8. Distinct source locations and identities;
//! no claim that the Python reference certificate covers this admitted module.
use crate::error::{Result,StudyError,library};
use behavior_engine::{builder::{Builder,Node,ScopeSite,SemanticProfile,CommandEmissionSpec},semantic::Module,wire::{Loc,Role,WField,WLifecycle,WParam,WType},store::{InMemoryBackend,Store,documents::SeedEntity}};
use behavior_models::safety::{FieldOwnershipInput,LifecycleDependencyInput,UncertifiedSafetyAnalysis,analyze_with_dependencies};
use serde_json::{Value,json};
use std::collections::BTreeMap;
pub fn loc()->Loc{Loc{file:"assurance034-public-ld8.rs".into(),line:1}}
fn state(n:&str,e:&str)->WParam{WParam{name:n.into(),role:Some(Role::State),ty:WType::Entity(e.into())}}
fn input(n:&str,e:&str)->WParam{WParam{name:n.into(),role:Some(Role::Input),ty:WType::Id(e.into())}}
fn field(n:&str,t:WType)->WField{WField{name:n.into(),ty:t,loc:loc()}}
fn membership(b:&mut Builder,p:&str,f:&str,values:&[&str])->Result<Node>{
 let v=b.field(p,f,loc()).map_err(library)?;let test=b.in_(v,values.iter().map(|s|json!(s)).collect(),loc()).map_err(library)?;b.op("not",vec![test],loc()).map_err(library)
}
pub fn module(commands:bool,bypass:bool)->Result<Module>{build_module(commands,bypass,false)}
pub fn migration_target()->Result<Module>{build_module(false,false,true)}
fn build_module(commands:bool,bypass:bool,marker:bool)->Result<Module>{
 let mut b=Builder::with_semantic_profile(SemanticProfile::CommandIntents);
 b.declare_enum("ParentPhase",vec!["Open".into(),"Gone".into(),"Abandoned".into()],loc()).map_err(library)?;
 b.declare_enum("ChildPhase",vec!["Active".into(),"Terminal".into()],loc()).map_err(library)?;
 let mut parent_fields=vec![field("phase",WType::Enum("ParentPhase".into()))];
 if marker{parent_fields.push(field("migration_marker",WType::String));}
 b.declare_entity("Parent",parent_fields,loc()).map_err(library)?;
 b.declare_entity("Child",vec![field("phase",WType::Enum("ChildPhase".into())),field("owner",WType::Ref("Parent".into()))],loc()).map_err(library)?;
 for action in ["stop","reopen","activate","finish","create_child","create_parent","remove_child","remove_parent"]{
  let params=match action{"stop"|"reopen"|"remove_parent"=>vec![state("p","Parent")],"activate"=>vec![state("c","Child"),state("p","Parent")],"finish"|"remove_child"=>vec![state("c","Child")],"create_child"=>vec![state("p","Parent"),input("new_id","Child")],_=>vec![input("new_id","Parent")]};
  b.push_scope(ScopeSite::Action,params.clone(),loc()).map_err(library)?;
  let mut guards=vec![];let mut effects=vec![];let mut life=vec![];
  if action=="stop"&&!bypass{
   let q=b.select("Child",loc()).map_err(library)?;b.push_lambda("dependent","Child").map_err(library)?;
   let owner=b.field("dependent","owner",loc()).map_err(library)?;let id=b.field("p","id",loc()).map_err(library)?;let eq=b.op("eq",vec![owner,id],loc()).map_err(library)?;
   let active=membership(&mut b,"dependent","phase",&["Terminal"])?;let body=b.op("and",vec![eq,active],loc()).map_err(library)?;b.pop_scope();
   let any=b.lambda("any",q,"dependent",body,loc()).map_err(library)?;guards.push((b.op("not",vec![any],loc()).map_err(library)?,loc()));
  }
  if action=="activate"{
   let owner=b.field("c","owner",loc()).map_err(library)?;let id=b.field("p","id",loc()).map_err(library)?;guards.push((b.op("eq",vec![owner,id],loc()).map_err(library)?,loc()));
  }
  if action=="activate"||action=="create_child"{guards.push((membership(&mut b,"p","phase",&["Abandoned","Gone"])?,loc()));}
  match action{
   "stop"|"reopen"|"activate"|"finish"=>{
    let (p,ty,val)=match action{"stop"=>("p","ParentPhase","Gone"),"reopen"=>("p","ParentPhase","Open"),"activate"=>("c","ChildPhase","Active"),_=>("c","ChildPhase","Terminal")};
    effects.push((p.into(),"phase".into(),b.lit(WType::Enum(ty.into()),json!(val),loc()).map_err(library)?,loc()));
   },
   "create_parent"|"create_child"=>{
    let is_child=action=="create_child";let id=b.param("new_id",loc()).map_err(library)?.into_wire();
    let mut fields=vec![("phase".into(),b.lit(WType::Enum(if is_child{"ChildPhase"}else{"ParentPhase"}.into()),json!(if is_child{"Active"}else{"Open"}),loc()).map_err(library)?.into_wire())];
    if marker&&!is_child{fields.push(("migration_marker".into(),b.lit(WType::String,json!(""),loc()).map_err(library)?.into_wire()));}
    if is_child{fields.push(("owner".into(),b.field("p","id",loc()).map_err(library)?.into_wire()));}
    life.push(WLifecycle::Create{entity:if is_child{"Child"}else{"Parent"}.into(),id,fields,loc:loc()});
   },
   _=>life.push(WLifecycle::Remove{param:if action=="remove_child"{"c"}else{"p"}.into(),loc:loc()}),
  }
  b.add_action(action,params,guards,effects,life,vec![],loc()).map_err(library)?;b.pop_scope();
 }
 if commands{
  b.add_command("Notify",vec![field("message",WType::String)],loc()).map_err(library)?;b.push_scope(ScopeSite::Action,vec![],loc()).map_err(library)?;
  let msg=b.lit(WType::String,json!("tick"),loc()).map_err(library)?;
  let intent=CommandEmissionSpec{command:"Notify".into(),when:None,payload:BTreeMap::from([("message".into(),msg)]),loc:loc()};
  b.add_action_with_commands("tick",vec![],vec![],vec![],vec![],vec![intent.clone(),intent],vec![],loc()).map_err(library)?;b.pop_scope();
 }
 b.finish(None).map_err(library)
}
pub fn analysis(m:&Module,weak:bool)->Result<UncertifiedSafetyAnalysis>{
 let parents=FieldOwnershipInput::from_json(&json!({"id":"parents","entity":"Parent","writers":{"phase":["stop","reopen"]},"creators":["create_parent"],"removers":["remove_parent"]})).map_err(library)?;
 let children=FieldOwnershipInput::from_json(&json!({"id":"children","entity":"Child","writers":{"phase":["activate","finish"],"owner":[]},"creators":["create_child"],"removers":["remove_child"]})).map_err(library)?;
 let dependency=LifecycleDependencyInput::from_json(&json!({"id":"relation","parent":"Parent","child":"Child","owner_field":"owner","parent_state":"phase","child_state":"phase","prohibited":if weak{json!(["Gone"])}else{json!(["Abandoned","Gone"])},"terminal":["Terminal"],"ownership":["parents","children"]})).map_err(library)?;
 analyze_with_dependencies(m,&[parents,children],&[dependency]).map_err(library)
}
pub fn store(m:&Module,seed:Vec<SeedEntity>)->Result<Store<InMemoryBackend>>{
 let policy=behavior_engine::verify::governance::EvidencePolicyV2::from_json(r#"{"execution_policies":[],"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[]}"#).map_err(library)?;
 let genesis=behavior_engine::store::store::genesis_v2_for(m,policy,seed).map_err(library)?;Store::create(InMemoryBackend::default(),m,genesis).map_err(library)
}
pub fn parent(id:&str,phase:&str)->SeedEntity{SeedEntity{entity:"Parent".into(),value:json!({"id":id,"phase":phase})}}
pub fn child(id:&str,owner:&str,phase:&str)->SeedEntity{SeedEntity{entity:"Child".into(),value:json!({"id":id,"owner":owner,"phase":phase})}}
pub fn invoke<B:behavior_engine::store::Backend>(s:&Store<B>,m:&Module,a:&str,b:Value,i:Value)->Result<behavior_engine::invocation::Invocation>{
 let text=json!({"format":"behavior.invocation.v1","capability":a,"bindings":b,"input":i,"context":{}}).to_string();
 let (request,errors)=behavior_engine::invocation::RequestedInvocation::decode(&text).map_err(library)?;
 let request=request.ok_or_else(||StudyError::Library(format!("Invocation decode: {errors:?}")))?;
 s.invoke(m,&request,"2026-10-18T00:00:00Z",None,None).map_err(library)
}
