//! Bounded Core-to-Store replay evidence. These objects describe one reproduced
//! attempt; they are neither serialized evidence nor fresh evaluation selectors.

use super::*;
use crate::facts::{QueryFact, RefEdge};
use crate::read::ReadReplayProfile;
use crate::record::ReplayResult;

#[doc(hidden)]
#[derive(Debug, Clone, PartialEq, Eq, PartialOrd, Ord)]
pub enum ReplayEvidenceRequest {
    Entity { identity: TypedIdentity },
    Existence { identity: TypedIdentity },
    IdentityUse { identity: TypedIdentity },
    Incoming { identity: TypedIdentity },
    Universe { entity: String },
}

#[doc(hidden)]
#[derive(Debug, Clone)]
pub enum ReplayEvidenceAnswer {
    Entity(Option<Json>),
    Boolean(bool),
    Incoming(Vec<RefEdge>),
    Universe(BTreeMap<String, Json>),
}

#[derive(Debug, Clone)]
struct ModuleBinding {
    behavior: crate::semantic::types::Hash,
    profile: crate::semantic::types::SemanticProfile,
    representation: String,
}

impl ModuleBinding {
    fn new(module: &Module) -> Self {
        Self {
            behavior: *module.hash(),
            profile: module.semantic_profile(),
            representation: crate::serialize::to_wire_json(module),
        }
    }

    fn check(&self, module: &Module) -> Result<(), String> {
        if self.behavior != *module.hash() || self.profile != module.semantic_profile() {
            return Err("invocation replay: different module".into());
        }
        if self.representation != crate::serialize::to_wire_json(module) {
            return Err("invocation replay: different module representation".into());
        }
        Ok(())
    }
}

#[doc(hidden)]
#[derive(Debug, Clone)]
pub struct PreparedInvocationReplay {
    stored: Json,
    original_text: String,
    module: ModuleBinding,
}

#[doc(hidden)]
pub fn prepare_invocation_replay(
    module: &Module,
    text: &str,
) -> Result<PreparedInvocationReplay, String> {
    // Header preparation shares the reference order. No archive, resolution or
    // nested profile is selected eagerly here.
    let stored = decode_replay_record(module, text)?;
    Ok(PreparedInvocationReplay {
        stored,
        original_text: text.into(),
        module: ModuleBinding::new(module),
    })
}

#[derive(Debug, Clone)]
enum Claim {
    Value {
        identity: TypedIdentity,
        value: Json,
    },
    Existence(bool),
    Used(bool),
    Incoming(Vec<RefEdge>),
    Universe {
        entity: String,
        members: BTreeMap<String, Json>,
    },
    Field {
        identity: TypedIdentity,
        field: String,
        value: Json,
    },
    Query {
        instance: String,
        fact: QueryFact,
    },
}

#[derive(Debug, Clone)]
struct ClaimDemand {
    request: ReplayEvidenceRequest,
    claim: Claim,
    path: String,
}

#[doc(hidden)]
#[derive(Debug, Clone)]
pub struct ReproducedInvocationReplay {
    stored: Json,
    module: ModuleBinding,
    requested: Option<RequestedInvocation>,
    archived_refusal: bool,
    resolution_refusal: bool,
    archived_action: bool,
    read_profile: Option<ReadReplayProfile>,
    claims: Vec<ClaimDemand>,
    requests: Vec<ReplayEvidenceRequest>,
    comparison: ReplayResult,
}

impl ReproducedInvocationReplay {
    pub fn stored(&self) -> &Json {
        &self.stored
    }
    pub fn data_version(&self) -> &str {
        self.stored["data_version"].as_str().unwrap_or_default()
    }
    pub fn requested(&self) -> Option<&RequestedInvocation> {
        self.requested.as_ref()
    }
    pub fn is_archived_refusal(&self) -> bool {
        self.archived_refusal
    }
    pub fn is_resolution_refusal(&self) -> bool {
        self.resolution_refusal
    }
    pub fn is_archived_action(&self) -> bool {
        self.archived_action
    }
    pub fn read_profile(&self) -> Option<&ReadReplayProfile> {
        self.read_profile.as_ref()
    }
    pub fn evidence_requests(&self) -> &[ReplayEvidenceRequest] {
        &self.requests
    }
    pub fn replay_result(&self) -> ReplayResult {
        self.comparison.clone()
    }
    pub fn check_module(&self, module: &Module) -> Result<(), String> {
        self.module.check(module)
    }
}

fn raw_request(stored: &Json) -> Json {
    json!({"format":"behavior.invocation.v1","capability":stored["capability"],
        "bindings":stored["requested_bindings"],"input":stored["input"],"context":stored["context"]})
}

fn binding_claims(facts: &[BindingFact], claims: &mut Vec<ClaimDemand>) {
    for (index, fact) in facts.iter().enumerate() {
        let exists = match fact.status.as_str() {
            "bound" => true,
            "unknown" => false,
            // A wrong declared type says nothing about that identity's presence.
            _ => continue,
        };
        claims.push(ClaimDemand {
            request: ReplayEvidenceRequest::Existence {
                identity: fact.requested.clone(),
            },
            claim: Claim::Existence(exists),
            path: format!("binding_facts[{index}].status"),
        });
    }
}

fn identity(entity: &str, id: &str) -> TypedIdentity {
    TypedIdentity {
        entity: entity.into(),
        id: id.into(),
    }
}

fn fact_path(raw: &Json, section: &str, matches: impl Fn(&Json) -> bool) -> String {
    let index = raw
        .get(section)
        .and_then(Json::as_array)
        .and_then(|entries| entries.iter().position(matches))
        .unwrap_or_default();
    format!("outcome.decode_evidence.snapshot.facts.{section}[{index}]")
}

fn snapshot_claims(snapshot: &Snapshot, claims: &mut Vec<ClaimDemand>) {
    let raw = snapshot.as_json();
    // Only an atomically accepted Snapshot reaches this function. Values added
    // by universes remain covered by the exhaustive universe claim below.
    if let Some(rows) = raw["entities"].as_array() {
        for (index, row) in rows.iter().enumerate() {
            let Some(entity) = row["entity"].as_str() else {
                continue;
            };
            let Some(id) = row["value"]["id"].as_str() else {
                continue;
            };
            let key = identity(entity, id);
            if let Some(value) = snapshot.entities().get(&key) {
                claims.push(ClaimDemand {
                    request: ReplayEvidenceRequest::Entity {
                        identity: key.clone(),
                    },
                    claim: Claim::Value {
                        identity: key,
                        value: value.clone(),
                    },
                    path: format!("outcome.decode_evidence.snapshot.entities[{index}].value"),
                });
            }
        }
    }
    let facts = snapshot.facts();
    let raw_facts = &raw["facts"];
    for ((entity, id), exists) in &facts.existence {
        claims.push(ClaimDemand {
            request: ReplayEvidenceRequest::Existence {
                identity: identity(entity, id),
            },
            claim: Claim::Existence(*exists),
            path: fact_path(raw_facts, "existence", |r| {
                r["entity"] == *entity && r["id"] == *id
            }),
        });
    }
    for ((entity, id), used) in &facts.identities {
        claims.push(ClaimDemand {
            request: ReplayEvidenceRequest::IdentityUse {
                identity: identity(entity, id),
            },
            claim: Claim::Used(*used),
            path: fact_path(raw_facts, "identities", |r| {
                r["entity"] == *entity && r["id"] == *id
            }),
        });
    }
    for ((entity, id), incoming) in &facts.references {
        claims.push(ClaimDemand {
            request: ReplayEvidenceRequest::Incoming {
                identity: identity(entity, id),
            },
            claim: Claim::Incoming(incoming.clone()),
            path: fact_path(raw_facts, "references", |r| {
                r["entity"] == *entity && r["id"] == *id
            }),
        });
    }
    for ((entity, id, field), value) in &facts.fields {
        let key = identity(entity, id);
        claims.push(ClaimDemand {
            request: ReplayEvidenceRequest::Entity {
                identity: key.clone(),
            },
            claim: Claim::Field {
                identity: key,
                field: field.clone(),
                value: value.clone(),
            },
            path: fact_path(raw_facts, "fields", |r| {
                r["entity"] == *entity && r["id"] == *id && r["field"] == *field
            }),
        });
    }
    for (entity, members) in &facts.universe {
        claims.push(ClaimDemand {
            request: ReplayEvidenceRequest::Universe {
                entity: entity.clone(),
            },
            claim: Claim::Universe {
                entity: entity.clone(),
                members: members.clone(),
            },
            path: fact_path(raw_facts, "universe", |r| r["entity"] == *entity),
        });
    }
    for (instance, fact) in &facts.queries {
        claims.push(ClaimDemand {
            request: ReplayEvidenceRequest::Universe {
                entity: fact.entity.clone(),
            },
            claim: Claim::Query {
                instance: instance.clone(),
                fact: fact.clone(),
            },
            path: fact_path(raw_facts, "queries", |r| r["instance"] == *instance),
        });
    }
}

/// Reproduce the reference computation and compare everything before retaining
/// any progress that could waive a later Store obligation.
#[doc(hidden)]
pub fn reproduce_invocation_replay(
    module: &Module,
    prepared: &PreparedInvocationReplay,
) -> Result<ReproducedInvocationReplay, String> {
    prepared.module.check(module)?;
    let comparison = replay_document(module, &prepared.original_text)?;
    if !comparison.matches {
        // compare constructs every mismatch with its nonempty first difference.
        return Err(comparison.diff.unwrap_or_default());
    }
    let stored = &prepared.stored;
    let mut claims = Vec::new();
    let mut requested = None;
    let mut resolution_refusal = false;
    let archived_refusal = stored["outcome"].get("decode_evidence").is_some();
    if let Some(evidence) = stored["outcome"].get("decode_evidence") {
        match evidence["source_kind"].as_str() {
            Some("intent") => {
                // This route retained no caller Snapshot, even if one had been
                // accepted before this request was rejected by its decoder.
                if let Ok((value, _)) = prepare_intent(
                    module,
                    &evidence["document"].to_string(),
                    &stored["context"],
                    prepared.stored["data_version"].as_str().unwrap_or_default(),
                )
                .map_err(|e| e.to_string())?
                {
                    requested = Some(value);
                }
            }
            Some("invocation") => {
                requested = prepare_invocation(
                    module,
                    &evidence["document"].to_string(),
                    prepared.stored["data_version"].as_str().unwrap_or_default(),
                )
                .map_err(|e| e.to_string())?
                .ok();
            }
            Some("documents") => {
                let (snapshot, _) = Snapshot::decode(module, &evidence["snapshot"].to_string())
                    .map_err(|e| e.to_string())?;
                if let Some(snapshot) = snapshot {
                    snapshot_claims(&snapshot, &mut claims);
                    requested =
                        if let Some(context) = evidence.get("context").filter(|v| !v.is_null()) {
                            prepare_intent(
                                module,
                                &evidence["document"].to_string(),
                                context,
                                snapshot.data_version(),
                            )
                            .map_err(|e| e.to_string())?
                            .ok()
                            .map(|(value, _)| value)
                        } else {
                            prepare_invocation(
                                module,
                                &evidence["document"].to_string(),
                                snapshot.data_version(),
                            )
                            .map_err(|e| e.to_string())?
                            .ok()
                        };
                    if let Some(value) = &requested
                        && let Err(refusal) = resolve(module, value, &snapshot)
                    {
                        resolution_refusal = true;
                        binding_claims(&refusal.binding_facts, &mut claims);
                    }
                }
            }
            _ => return Err("outcome.decode_evidence.source_kind: unsupported".into()),
        }
    } else {
        requested = decode_invocation(&raw_request(stored), false).0;
        if let Some(value) = &requested {
            let mut resolver = RecordedResolver {
                values: BTreeMap::new(),
                data_version: stored["data_version"].as_str().unwrap_or_default().into(),
            };
            if let Some(inner) = stored["outcome"].get("record") {
                for (param, key) in value.bindings() {
                    if let Some(captured) = inner["state"].get(param) {
                        resolver.values.insert(key.clone(), captured.clone());
                    }
                }
            } else {
                let facts: Vec<BindingFact> =
                    serde_json::from_value(stored["binding_facts"].clone())
                        .map_err(|e| format!("binding_facts: {e}"))?;
                for fact in facts {
                    if fact.status == "bound" {
                        resolver
                            .values
                            .insert(fact.requested.clone(), json!({"id":fact.requested.id}));
                    }
                }
            }
            if let Err(refusal) = resolve(module, value, &resolver) {
                resolution_refusal = true;
                binding_claims(&refusal.binding_facts, &mut claims);
            }
            // Evaluated bodies carry no eager historical demands here. Their
            // actual Store execution preserves callback FactError handling and
            // the final complete comparison discharges body evidence.
        }
    }
    let read_profile = if stored["outcome"]["record_kind"] == "read" {
        Some(
            ReadReplayProfile::from_record(module, &stored["outcome"]["record"])
                .map_err(|_| "unsupported read record format/profile".to_string())?,
        )
    } else {
        None
    };
    let archived_action = stored["outcome"]["record_kind"] == "decision"
        && matches!(
            stored["outcome"]["record"]["record_version"].as_str(),
            Some("0.4" | "0.5" | "0.6" | "0.7")
        );
    let requests = claims
        .iter()
        .map(|claim| claim.request.clone())
        .collect::<BTreeSet<_>>()
        .into_iter()
        .collect();
    Ok(ReproducedInvocationReplay {
        stored: stored.clone(),
        module: prepared.module.clone(),
        requested,
        archived_refusal,
        resolution_refusal,
        archived_action,
        read_profile,
        claims,
        requests,
        comparison,
    })
}

fn canonical_value(module: &Module, identity: &TypedIdentity, raw: &Json) -> Result<Json, String> {
    let value =
        crate::eval::decode_entity(module, &identity.entity, raw).map_err(|p| p.join("; "))?;
    if value["id"] != identity.id {
        return Err("entity identity differs from historical request".into());
    }
    Ok(value)
}

fn canonical_universe(
    module: &Module,
    entity: &str,
    members: &BTreeMap<String, Json>,
) -> Result<BTreeMap<String, Json>, String> {
    if module.entity(entity).is_none() {
        return Err(format!("unknown entity `{entity}`"));
    }
    members
        .iter()
        .map(|(id, raw)| {
            canonical_value(module, &identity(entity, id), raw).map(|value| (id.clone(), value))
        })
        .collect()
}

fn canonical_field(
    module: &Module,
    identity: &TypedIdentity,
    field: &str,
    raw: &Json,
) -> Result<Json, String> {
    let ty = module
        .entity(&identity.entity)
        .and_then(|e| e.field_type(field))
        .ok_or_else(|| format!("unknown field {}.{field}", identity.entity))?;
    let mut problems = Vec::new();
    let value = crate::eval::decode_param(module, ty, raw, field, &mut problems)
        .filter(|_| problems.is_empty())
        .ok_or_else(|| "field value does not match its declared type".to_string())?;
    Ok(crate::eval::encode_param(module, ty, &value))
}

fn compare_claim(
    module: &Module,
    demand: &ClaimDemand,
    answer: &ReplayEvidenceAnswer,
) -> Result<(), String> {
    let equal = match (&demand.claim, answer) {
        (Claim::Value { identity, value }, ReplayEvidenceAnswer::Entity(Some(actual))) => {
            canonical_value(module, identity, actual)? == *value
        }
        (Claim::Value { .. }, ReplayEvidenceAnswer::Entity(None)) => false,
        (
            Claim::Existence(expected) | Claim::Used(expected),
            ReplayEvidenceAnswer::Boolean(actual),
        ) => expected == actual,
        (Claim::Incoming(expected), ReplayEvidenceAnswer::Incoming(actual)) => {
            expected.iter().cloned().collect::<BTreeSet<_>>()
                == actual.iter().cloned().collect::<BTreeSet<_>>()
        }
        (Claim::Universe { entity, members }, ReplayEvidenceAnswer::Universe(actual)) => {
            canonical_universe(module, entity, members)?
                == canonical_universe(module, entity, actual)?
        }
        (
            Claim::Field {
                identity,
                field,
                value,
            },
            ReplayEvidenceAnswer::Entity(Some(actual)),
        ) => {
            let actual = canonical_value(module, identity, actual)?;
            let field_value = actual
                .get(field)
                .ok_or_else(|| format!("historical field `{field}` is unavailable"))?;
            canonical_field(module, identity, field, value)?
                == canonical_field(module, identity, field, field_value)?
        }
        (Claim::Field { .. }, ReplayEvidenceAnswer::Entity(None)) => false,
        (Claim::Query { instance, fact }, ReplayEvidenceAnswer::Universe(actual)) => {
            let actual = canonical_universe(module, &fact.entity, actual)?;
            crate::eval::compare_replay_query_claim(module, instance, fact, &actual)?;
            true
        }
        _ => return Err("historical answer has the wrong kind".into()),
    };
    if equal {
        Ok(())
    } else {
        Err("historical claim differs".into())
    }
}

/// Pure typed comparison of independently loaded historical answers. Missing
/// answers are unavailable evidence, never synthesized false existence.
#[doc(hidden)]
pub fn compare_invocation_replay_evidence(
    module: &Module,
    reproduced: &ReproducedInvocationReplay,
    answers: &BTreeMap<ReplayEvidenceRequest, ReplayEvidenceAnswer>,
) -> Result<(), String> {
    reproduced.check_module(module)?;
    for demand in &reproduced.claims {
        let answer = answers
            .get(&demand.request)
            .ok_or_else(|| format!("{}: historical answer is unavailable", demand.path))?;
        compare_claim(module, demand, answer).map_err(|diff| format!("{}: {diff}", demand.path))?;
    }
    Ok(())
}

/// Core alone applies existing envelope metadata and seals the complete record.
/// The supplied execution comes from the unchanged actual historical Store route.
#[doc(hidden)]
pub fn complete_invocation_replay(
    reproduced: &ReproducedInvocationReplay,
    actual: InvocationRecord,
) -> Result<ReplayResult, String> {
    let actual = with_intent_metadata(actual, reproduced.stored.get("intent_metadata").cloned())
        .map_err(|e| e.to_string())?;
    Ok(crate::record::compare(&reproduced.stored, actual.as_json()))
}
