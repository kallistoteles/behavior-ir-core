//! Full state validation is evidence only for the original exact history anchor.
use crate::error::{Result,StudyError};
pub fn imported_activation(_v:&serde_json::Value)->Result<()>{Err(StudyError::Prerequisite("Serialized activation is unverified; establish certificate, state and exclusive writer boundary afresh"))}
pub fn unsafe_migration_control(coordinator:&mut crate::arrangements::Coordinator<behavior_engine::store::InMemoryBackend>,source:&behavior_engine::semantic::Module)->Result<behavior_engine::semantic::Module>{
 let target=crate::fixtures::migration_target()?;let loc=serde_json::json!({"file":"assurance034-migration","line":1});
 let doc=serde_json::json!({"migration_ir":"0.1","name":"unsafe_for_original_safety","source":behavior_engine::schema(source).hash,"target":behavior_engine::schema(&target).hash,"constants":[],"requirements":[],"transforms":[{"entity":"Parent","fields":{"phase":{"op":"lit","type":{"t":"enum","name":"ParentPhase"},"value":"Gone","loc":loc},"migration_marker":{"op":"lit","type":{"t":"string"},"value":"applied","loc":loc}},"drops":[]}],"retire":[]});
 let migration=behavior_engine::migration::admit_migration(source,&target,&doc.to_string()).map_err(crate::error::library)?;
 coordinator.migrate(&migration,source,&target)?;Ok(target)
}
