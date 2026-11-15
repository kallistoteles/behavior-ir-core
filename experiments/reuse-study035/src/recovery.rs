//! Recovery requires independently expected history and fresh original checks.
use crate::{error::Result,ground::Ground,reference::Parent,safety_check::CheckedProgram};
use serde_json::Value;
pub fn reestablish(parent:Parent,program:&CheckedProgram,expected:&Value)->Result<Ground>{
 let mut ground=Ground::supplied(parent);ground.check(program,expected)?;Ok(ground)
}
