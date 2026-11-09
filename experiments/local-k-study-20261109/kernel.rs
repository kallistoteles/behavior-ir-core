//! Closed-profile native checker, not general Core or a proof-circuit refinement.
use crate::auth::{self, Auth, Hash, Opening, Result, Row, Summary, Tree, Work};
use serde::{Deserialize, Serialize};
use serde_json::{Value, json};
use std::collections::BTreeSet;

#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(tag = "action", deny_unknown_fields)]
pub enum Action {
    Create { id: String },
    Set { id: String, old: i64, value: i64 },
    Emit,
}
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Request {
    pub program: Hash,
    pub origin: Hash,
    pub parent: Hash,
    pub position: u64,
    pub request_id: String,
    pub context: Value,
    pub operation: Action,
}
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Outcome {
    pub result: String,
    pub reasons: Vec<Value>,
    pub changes: Vec<Value>,
    pub lifecycle: Vec<Value>,
    /// Ordered payload projection; original declaration/intent hashes and report
    /// observations are NOT implemented by this study.
    pub commands: Vec<Value>,
}
impl Outcome {
    pub fn allow() -> Self {
        Self {
            result: "ALLOW".into(),
            reasons: vec![],
            changes: vec![],
            lifecycle: vec![],
            commands: vec![json!({"kind":"process"}), json!({"kind":"process"})],
        }
    }
    pub fn refused(result: &str, reason: &str) -> Self {
        Self {
            result: result.into(),
            reasons: vec![json!({"code":reason})],
            changes: vec![],
            lifecycle: vec![],
            commands: vec![],
        }
    }
}
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Proposal {
    pub request_binding: Hash,
    pub paths: Vec<Opening>,
    pub outcome: Outcome,
    pub after_live: Summary,
    pub after_used: Summary,
}
pub fn decode_proposal(raw: &[u8]) -> Result<Proposal> {
    if raw.len() > 262_144 {
        return Err("WireBound");
    }
    serde_json::from_slice(raw).map_err(|_| "WireEncoding")
}
#[derive(Clone, Debug, Serialize)]
pub struct View {
    pub program: Hash,
    pub origin: Hash,
    pub local_head: Hash,
    pub position: u64,
    pub live: Summary,
    pub used: Summary,
}
/// Private fields and no Deserialize: bytes supplied by a producer cannot mint
/// this authority. Clone only derives authority from an already checked basis.
#[derive(Clone)]
pub struct ValidBasis {
    view: View,
}
impl ValidBasis {
    pub fn view(&self) -> &View {
        &self.view
    }
    pub fn request(&self, id: &str, operation: Action) -> Request {
        Request {
            program: self.view.program,
            origin: self.view.origin,
            parent: self.view.local_head,
            position: self.view.position,
            request_id: id.into(),
            context: json!({}),
            operation,
        }
    }
}
pub struct Checked {
    pub next: ValidBasis,
    pub outcome: Outcome,
}
pub struct Kernel {
    program: Hash,
    limit: u64,
    pub auth: Auth,
}
pub fn request_binding(request: &Request, work: &mut Work) -> Hash {
    let mut bytes = b"core-next.local-k-request.v1\0".to_vec();
    bytes.extend(serde_json::to_vec(request).expect("bounded typed request"));
    auth::hash(&bytes, work)
}
impl Kernel {
    pub fn new(limit: u64, work: &mut Work) -> Result<Self> {
        if limit > auth::MAX_COUNT {
            return Err("UnsupportedCap");
        }
        // Full fixed module wire from the sealed reference, with only the
        // declared cap parameter varied. Never read a producer's module here.
        let reference: Value = serde_json::from_str(
            include_str!("../../docs/proposals/core-next-architecture/reference-fixture.jsonl")
                .lines()
                .next()
                .ok_or("Reference")?,
        )
        .map_err(|_| "Reference")?;
        let mut module = reference["wire"].clone();
        module["invariants"][0]["body"]["args"][1]["value"] = json!(limit);
        let mut bytes = b"core033.module-descriptor.v1\0".to_vec();
        bytes.extend(serde_json::to_vec(&module).map_err(|_| "ModuleEncoding")?);
        Ok(Self {
            program: auth::hash(&bytes, work),
            limit,
            auth: Auth::new(work)?,
        })
    }
    pub fn limit(&self) -> u64 {
        self.limit
    }
    pub fn initialize(&self, live: &[Row], used: &[String], work: &mut Work) -> Result<ValidBasis> {
        if live.len() as u64 > self.limit || used.len() as u64 > auth::MAX_COUNT {
            return Err("InitialCap");
        }
        let mut live_ids = BTreeSet::new();
        let mut used_ids = BTreeSet::new();
        let mut lt = Tree::new(1);
        let mut ut = Tree::new(2);
        for id in used {
            work.inventory_rows += 1;
            if !used_ids.insert(id.clone()) {
                return Err("DuplicateUsed");
            }
            ut = ut.put(
                &self.auth,
                Row {
                    id: id.clone(),
                    x: 0,
                },
                work,
            )?;
        }
        for row in live {
            work.inventory_rows += 1;
            if row.x <= 0 {
                return Err("InitialPositive");
            }
            if !live_ids.insert(row.id.clone()) {
                return Err("DuplicateLive");
            }
            if !used_ids.contains(&row.id) {
                return Err("InitialLiveUsed");
            }
            lt = lt.put(&self.auth, row.clone(), work)?;
        }
        let live = lt.summary(&self.auth);
        let used = ut.summary(&self.auth);
        let mut bytes = b"core-next.local-k-origin.v1\0".to_vec();
        bytes.extend(self.program);
        bytes.extend(serde_json::to_vec(&(live, used)).map_err(|_| "InitialEncoding")?);
        let origin = auth::hash(&bytes, work);
        Ok(ValidBasis {
            view: View {
                program: self.program,
                origin,
                local_head: origin,
                position: 0,
                live,
                used,
            },
        })
    }
    pub fn check(
        &self,
        basis: &ValidBasis,
        request: &Request,
        proposal: &Proposal,
        work: &mut Work,
    ) -> Result<Checked> {
        let before = basis.view();
        if before.program != self.program || request.program != self.program {
            return Err("ProgramBinding");
        }
        if request.origin != before.origin {
            return Err("OriginBinding");
        }
        if request.parent != before.local_head || request.position != before.position {
            return Err("ParentBinding");
        }
        if request.context != json!({}) {
            return Err("UnsupportedContext");
        }
        if request.request_id.is_empty() || request.request_id.len() > 64 {
            return Err("RequestIdBound");
        }
        let binding = request_binding(request, work);
        if binding != proposal.request_binding {
            return Err("RequestBinding");
        }
        let mut live = before.live;
        let mut used = before.used;
        let mut outcome = Outcome::allow();
        match &request.operation {
            Action::Create { id } => {
                if proposal.paths.len() != 2 {
                    return Err("WitnessShape");
                }
                let lp = &proposal.paths[0];
                let up = &proposal.paths[1];
                self.auth.verify(before.used, up, 2, id, work)?;
                self.auth.verify(before.live, lp, 1, id, work)?;
                if up.leaf.is_some() {
                    outcome = Outcome::refused("ENTITY_ID_ALREADY_USED", "ENTITY_ID_ALREADY_USED");
                } else if lp.leaf.is_some() {
                    return Err("BrokenLiveUsedBasis");
                } else if before.live.count >= self.limit {
                    outcome = Outcome::refused("DENY", "INVARIANT_VIOLATED");
                } else {
                    live = self.auth.fold(
                        lp,
                        Some(&Row {
                            id: id.clone(),
                            x: 1,
                        }),
                        work,
                    )?;
                    used = self.auth.fold(
                        up,
                        Some(&Row {
                            id: id.clone(),
                            x: 0,
                        }),
                        work,
                    )?;
                    outcome.lifecycle.push(json!({"entity":"E","id":id,"op":"create","value":{"id":id,"padding":"","x":1}}));
                }
            }
            Action::Set { id, old, value } => {
                if proposal.paths.len() != 1 {
                    return Err("WitnessShape");
                }
                let path = &proposal.paths[0];
                self.auth.verify(before.live, path, 1, id, work)?;
                let row = path.leaf.as_ref().ok_or("UnsupportedMissingTarget")?;
                if row.x != *old {
                    return Err("StaleInputState");
                }
                if *value <= 0 {
                    outcome = Outcome::refused("DENY", "CONSTRAINT_VIOLATED");
                } else {
                    live = self.auth.fold(
                        path,
                        Some(&Row {
                            id: id.clone(),
                            x: *value,
                        }),
                        work,
                    )?;
                    outcome.changes.push(
                        json!({"entity":"E","field":"x","id":id,"old":old,"new":value,"param":"e"}),
                    );
                }
            }
            Action::Emit => {
                if !proposal.paths.is_empty() {
                    return Err("WitnessShape");
                }
            }
        }
        if !live.positive
            || !live.complete_coverage
            || live.count > self.limit
            || !used.positive
            || !used.complete_coverage
        {
            return Err("Preservation");
        }
        if live != proposal.after_live || used != proposal.after_used {
            return Err("AfterRoot");
        }
        if outcome != proposal.outcome {
            return Err("OutcomeBinding");
        }
        let mut next = basis.clone();
        if outcome.result == "ALLOW" {
            next.view.position = before.position.checked_add(1).ok_or("PositionBound")?;
            next.view.live = live;
            next.view.used = used;
            let mut bytes = b"core-next.local-k-chain.v1\0".to_vec();
            bytes.extend(before.local_head);
            bytes.extend(binding);
            bytes
                .extend(serde_json::to_vec(&(live, used, &outcome)).map_err(|_| "OutputEncoding")?);
            next.view.local_head = auth::hash(&bytes, work);
        }
        Ok(Checked { next, outcome })
    }
}
