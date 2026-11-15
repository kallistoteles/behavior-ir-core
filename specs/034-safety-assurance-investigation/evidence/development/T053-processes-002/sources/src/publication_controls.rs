//! Real public Core controls. Memory observations establish no physical durability.
use crate::{error::{Result,StudyError,library},fixtures,capture::{Capture,reconstruct}};
use behavior_engine::store::{Backend,InMemoryBackend};
use serde_json::{Value,json};
pub fn exercise()->Result<Value>{
 let m=fixtures::module(false,false)?;
 let refused=fixtures::store(&m,vec![fixtures::parent("p","Open"),fixtures::child("c","p","Active")])?;
 let refusal_before=refused.current_history().map_err(library)?;
 let denial=fixtures::invoke(&refused,&m,"stop",json!({"p":{"entity":"Parent","id":"p"}}),json!({}))?;
 if denial.bundle.is_some(){return Err(StudyError::Prerequisite("RefusalUnexpectedlyAllowed"));}
 let refusal_after=refused.current_history().map_err(library)?;
 if refusal_before!=refusal_after{return Err(StudyError::Prerequisite("RefusalChangedHistory"));}
 let cm=fixtures::module(true,false)?;let mut commands=fixtures::store(&cm,vec![])?;
 let before=commands.current_history().map_err(library)?;
 let tick=fixtures::invoke(&commands,&cm,"tick",json!({}),json!({}))?;
 let bundle=tick.bundle.as_ref().ok_or(StudyError::Prerequisite("CommandStepRefused"))?;
 let ack=commands.commit(&cm,&commands.current().map_err(library)?,bundle).map_err(library)?;
 // Deliberately withhold the application acknowledgement, then inspect only
 // this retained memory. This does not simulate a conformant persistent host.
 drop(ack);
 let after=commands.current_history().map_err(library)?;
 let request=behavior_engine::store::commands::CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":before.as_json(),"through":after.as_json(),"max_records":1}).to_string()).map_err(library)?;
 let page=commands.commands_since(&request).map_err(library)?;
 if page.items().len()!=2||before.state!=after.state||before==after{return Err(StudyError::Prerequisite("DuplicateCommandHistoryMismatch"));}
 let mut racing=fixtures::store(&m,vec![fixtures::parent("p","Open")])?;
 let at=racing.current().map_err(library)?;
 let bindings=json!({"p":{"entity":"Parent","id":"p"}});
 let stop=fixtures::invoke(&racing,&m,"stop",bindings.clone(),json!({}))?.bundle.ok_or(StudyError::Prerequisite("StaleCandidateNotAllowed"))?;
 let create=fixtures::invoke(&racing,&m,"create_child",bindings,json!({"new_id":"c"}))?.bundle.ok_or(StudyError::Prerequisite("CompetingCandidateNotAllowed"))?;
 racing.commit(&m,&at,&create).map_err(library)?;let raced_head=racing.current_history().map_err(library)?;
 let conflict=match racing.commit(&m,&at,&stop){Err(e)=>e,Ok(_)=>return Err(StudyError::Prerequisite("StaleCASAccepted"))};
 if conflict.code()!="STATE_CONFLICT"||racing.current_history().map_err(library)?!=raced_head{return Err(StudyError::Prerequisite("WrongCASOutcome"));}
 let mut captured=fixtures::store_with(&cm,vec![],Capture::default())?;
 let inv=fixtures::invoke(&captured,&cm,"tick",json!({}),json!({}))?;captured.commit(&cm,&captured.current().map_err(library)?,inv.bundle.as_ref().ok_or(StudyError::Prerequisite("TickNoBundle"))?).map_err(library)?;
 let packet=captured.backend().packet()?;let valid_head=reconstruct(&packet)?.current_history().map_err(library)?;
 let mut duplicated=packet.clone();duplicated.commits.extend(packet.commits.clone());
 let duplicate_error=match reconstruct(&duplicated){Err(e)=>e.to_string(),Ok(_)=>return Err(StudyError::Prerequisite("DuplicateEventAccepted"))};
 let empty=InMemoryBackend::default().genesis().map_err(library)?;
 Ok(json!({"format":"core034.memory-publication-controls.v1","refusal":{"before":refusal_before.as_json(),"after":refusal_after.as_json(),"invocation":denial.record.as_json()},"commands":{"before":before.as_json(),"after":after.as_json(),"invocation":tick.record.as_json(),"items":page.items(),"interpretation":"two canonical ordered occurrences; no physical delivery-order claim","certificate":"not established by this primitive control; separate LD8C certification role required"},"cas":{"error_code":conflict.code(),"original_error":conflict.to_string(),"after":raced_head.as_json()},"duplicate_packet":{"valid_endpoint":valid_head.as_json(),"accepted":false,"error":duplicate_error},"lost_ack":{"method":"application acknowledgement deliberately withheld after actual in-memory commit","retained_head":after.as_json(),"new_memory_backend_genesis":empty,"durable_request_idempotency":"unestablished"},"interruption":{"process_interruption":"separate bounded supervisor role required","primitive_scope":"memory-only logical controls"},"durability":"unestablished: memory only","product_adoption":"unactivated"}))
}
