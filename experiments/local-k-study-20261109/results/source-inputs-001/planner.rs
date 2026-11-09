//! Untrusted proposal construction; never called by Kernel::check.
use crate::auth::{Result, Row, Tree, Work};
use crate::kernel::{Action, Kernel, Outcome, Proposal, Request, request_binding};
use serde_json::json;

#[derive(Clone)]
pub struct Planner {
    pub live: Tree,
    pub used: Tree,
}
impl Planner {
    pub fn new(kernel: &Kernel, rows: &[Row], used: &[String], work: &mut Work) -> Result<Self> {
        let mut result = Self {
            live: Tree::new(1),
            used: Tree::new(2),
        };
        for row in rows {
            result.live = result.live.put(&kernel.auth, row.clone(), work)?;
        }
        for id in used {
            result.used = result.used.put(
                &kernel.auth,
                Row {
                    id: id.clone(),
                    x: 0,
                },
                work,
            )?;
        }
        Ok(result)
    }
    pub fn propose(
        &self,
        kernel: &Kernel,
        request: &Request,
        work: &mut Work,
    ) -> Result<(Proposal, Self)> {
        let mut next = self.clone();
        let mut paths = vec![];
        let mut outcome = Outcome::allow();
        match &request.operation {
            Action::Create { id } => {
                let lp = self.live.opening(&kernel.auth, id, work)?;
                let up = self.used.opening(&kernel.auth, id, work)?;
                if up.leaf.is_some() {
                    outcome = Outcome::refused("ENTITY_ID_ALREADY_USED", "ENTITY_ID_ALREADY_USED");
                } else if self.live.summary(&kernel.auth).count + 1 > kernel.limit() {
                    outcome = Outcome::refused("DENY", "INVARIANT_VIOLATED");
                } else {
                    next.live = self.live.put(
                        &kernel.auth,
                        Row {
                            id: id.clone(),
                            x: 1,
                        },
                        work,
                    )?;
                    next.used = self.used.put(
                        &kernel.auth,
                        Row {
                            id: id.clone(),
                            x: 0,
                        },
                        work,
                    )?;
                    outcome.lifecycle.push(json!({"entity":"E","id":id,"op":"create","value":{"id":id,"padding":"","x":1}}));
                }
                paths.extend([lp, up]);
            }
            Action::Set { id, value, .. } => {
                let path = self.live.opening(&kernel.auth, id, work)?;
                let old = path.leaf.as_ref().ok_or("PlannerMissingTarget")?.x;
                if *value <= 0 {
                    outcome = Outcome::refused("DENY", "CONSTRAINT_VIOLATED");
                } else {
                    next.live = self.live.put(
                        &kernel.auth,
                        Row {
                            id: id.clone(),
                            x: *value,
                        },
                        work,
                    )?;
                    outcome.changes.push(
                        json!({"entity":"E","field":"x","id":id,"old":old,"new":value,"param":"e"}),
                    );
                }
                paths.push(path);
            }
            Action::Emit => {}
        }
        Ok((
            Proposal {
                request_binding: request_binding(request, work),
                paths,
                outcome,
                after_live: next.live.summary(&kernel.auth),
                after_used: next.used.summary(&kernel.auth),
            },
            next,
        ))
    }
}
