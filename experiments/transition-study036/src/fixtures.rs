// Function items are unsupported by the pinned extractor; keep explicit closures.
#![allow(clippy::redundant_closure)]
//! Public Builder port of pinned LD8. Distinct source locations and identities;
//! no claim that the Python reference certificate covers this admitted module.
use crate::error::{Result, StudyError, library};
use behavior_engine::{
    builder::{Builder, CommandEmissionSpec, Node, ScopeSite, SemanticProfile},
    semantic::Module,
    store::{InMemoryBackend, Store, documents::SeedEntity},
    wire::{Loc, Role, WField, WLifecycle, WParam, WType},
};
use behavior_models::safety::{
    FieldOwnershipInput, LifecycleDependencyInput, UncertifiedSafetyAnalysis,
    analyze_with_dependencies,
};
use serde_json::{Value, json};
use std::collections::BTreeMap;
pub fn loc() -> Loc {
    Loc {
        file: "assurance034-public-ld8.rs".into(),
        line: 1,
    }
}
fn state(n: &str, e: &str) -> WParam {
    WParam {
        name: n.into(),
        role: Some(Role::State),
        ty: WType::Entity(e.into()),
    }
}
fn input(n: &str, e: &str) -> WParam {
    WParam {
        name: n.into(),
        role: Some(Role::Input),
        ty: WType::Id(e.into()),
    }
}
fn field(n: &str, t: WType) -> WField {
    WField {
        name: n.into(),
        ty: t,
        loc: loc(),
    }
}
fn membership(b: &mut Builder, p: &str, f: &str, values: &[&str]) -> Result<Node> {
    let v = b.field(p, f, loc()).map_err(|failure| library(failure))?;
    let test = b
        .in_(v, values.iter().map(|s| json!(s)).collect(), loc())
        .map_err(|failure| library(failure))?;
    b.op("not", vec![test], loc())
        .map_err(|failure| library(failure))
}
pub fn module(commands: bool, bypass: bool) -> Result<Module> {
    build_module(commands, bypass, false)
}
pub fn migration_target() -> Result<Module> {
    build_module(false, false, true)
}
fn build_module(commands: bool, bypass: bool, marker: bool) -> Result<Module> {
    let mut b = Builder::with_semantic_profile(SemanticProfile::CommandIntents);
    b.declare_enum(
        "ParentPhase",
        vec!["Open".into(), "Gone".into(), "Abandoned".into()],
        loc(),
    )
    .map_err(|failure| library(failure))?;
    b.declare_enum(
        "ChildPhase",
        vec!["Active".into(), "Terminal".into()],
        loc(),
    )
    .map_err(|failure| library(failure))?;
    let mut parent_fields = vec![field("phase", WType::Enum("ParentPhase".into()))];
    if marker {
        parent_fields.push(field("migration_marker", WType::String));
    }
    b.declare_entity("Parent", parent_fields, loc())
        .map_err(|failure| library(failure))?;
    b.declare_entity(
        "Child",
        vec![
            field("phase", WType::Enum("ChildPhase".into())),
            field("owner", WType::Ref("Parent".into())),
        ],
        loc(),
    )
    .map_err(|failure| library(failure))?;
    for action in [
        "stop",
        "reopen",
        "activate",
        "finish",
        "create_child",
        "create_parent",
        "remove_child",
        "remove_parent",
    ] {
        let params = match action {
            "stop" | "reopen" | "remove_parent" => vec![state("p", "Parent")],
            "activate" => vec![state("c", "Child"), state("p", "Parent")],
            "finish" | "remove_child" => vec![state("c", "Child")],
            "create_child" => vec![state("p", "Parent"), input("new_id", "Child")],
            _ => vec![input("new_id", "Parent")],
        };
        b.push_scope(ScopeSite::Action, params.clone(), loc())
            .map_err(|failure| library(failure))?;
        let mut guards = vec![];
        let mut effects = vec![];
        let mut life = vec![];
        if action == "stop" && !bypass {
            let q = b
                .select("Child", loc())
                .map_err(|failure| library(failure))?;
            b.push_lambda("dependent", "Child")
                .map_err(|failure| library(failure))?;
            let owner = b
                .field("dependent", "owner", loc())
                .map_err(|failure| library(failure))?;
            let id = b
                .field("p", "id", loc())
                .map_err(|failure| library(failure))?;
            let eq = b
                .op("eq", vec![owner, id], loc())
                .map_err(|failure| library(failure))?;
            let active = membership(&mut b, "dependent", "phase", &["Terminal"])?;
            let body = b
                .op("and", vec![eq, active], loc())
                .map_err(|failure| library(failure))?;
            b.pop_scope();
            let any = b
                .lambda("any", q, "dependent", body, loc())
                .map_err(|failure| library(failure))?;
            guards.push((
                b.op("not", vec![any], loc())
                    .map_err(|failure| library(failure))?,
                loc(),
            ));
        }
        if action == "activate" {
            let owner = b
                .field("c", "owner", loc())
                .map_err(|failure| library(failure))?;
            let id = b
                .field("p", "id", loc())
                .map_err(|failure| library(failure))?;
            guards.push((
                b.op("eq", vec![owner, id], loc())
                    .map_err(|failure| library(failure))?,
                loc(),
            ));
        }
        if action == "activate" || action == "create_child" {
            guards.push((
                membership(&mut b, "p", "phase", &["Abandoned", "Gone"])?,
                loc(),
            ));
        }
        match action {
            "stop" | "reopen" | "activate" | "finish" => {
                let (p, ty, val) = match action {
                    "stop" => ("p", "ParentPhase", "Gone"),
                    "reopen" => ("p", "ParentPhase", "Open"),
                    "activate" => ("c", "ChildPhase", "Active"),
                    _ => ("c", "ChildPhase", "Terminal"),
                };
                effects.push((
                    p.into(),
                    "phase".into(),
                    b.lit(WType::Enum(ty.into()), json!(val), loc())
                        .map_err(|failure| library(failure))?,
                    loc(),
                ));
            }
            "create_parent" | "create_child" => {
                let is_child = action == "create_child";
                let id = b
                    .param("new_id", loc())
                    .map_err(|failure| library(failure))?
                    .into_wire();
                let mut fields = vec![(
                    "phase".into(),
                    b.lit(
                        WType::Enum(
                            if is_child {
                                "ChildPhase"
                            } else {
                                "ParentPhase"
                            }
                            .into(),
                        ),
                        json!(if is_child { "Active" } else { "Open" }),
                        loc(),
                    )
                    .map_err(|failure| library(failure))?
                    .into_wire(),
                )];
                if marker && !is_child {
                    fields.push((
                        "migration_marker".into(),
                        b.lit(WType::String, json!(""), loc())
                            .map_err(|failure| library(failure))?
                            .into_wire(),
                    ));
                }
                if is_child {
                    fields.push((
                        "owner".into(),
                        b.field("p", "id", loc())
                            .map_err(|failure| library(failure))?
                            .into_wire(),
                    ));
                }
                life.push(WLifecycle::Create {
                    entity: if is_child { "Child" } else { "Parent" }.into(),
                    id,
                    fields,
                    loc: loc(),
                });
            }
            _ => life.push(WLifecycle::Remove {
                param: if action == "remove_child" { "c" } else { "p" }.into(),
                loc: loc(),
            }),
        }
        b.add_action(action, params, guards, effects, life, vec![], loc())
            .map_err(|failure| library(failure))?;
        b.pop_scope();
    }
    if commands {
        b.add_command("Notify", vec![field("message", WType::String)], loc())
            .map_err(|failure| library(failure))?;
        b.push_scope(ScopeSite::Action, vec![], loc())
            .map_err(|failure| library(failure))?;
        let msg = b
            .lit(WType::String, json!("tick"), loc())
            .map_err(|failure| library(failure))?;
        let intent = CommandEmissionSpec {
            command: "Notify".into(),
            when: None,
            payload: BTreeMap::from([("message".into(), msg)]),
            loc: loc(),
        };
        b.add_action_with_commands(
            "tick",
            vec![],
            vec![],
            vec![],
            vec![],
            vec![intent.clone(), intent],
            vec![],
            loc(),
        )
        .map_err(|failure| library(failure))?;
        b.pop_scope();
    }
    b.finish(None).map_err(|failure| library(failure))
}
pub fn analysis(m: &Module, weak: bool) -> Result<UncertifiedSafetyAnalysis> {
    let parents=FieldOwnershipInput::from_json(&json!({"id":"parents","entity":"Parent","writers":{"phase":["stop","reopen"]},"creators":["create_parent"],"removers":["remove_parent"]})).map_err(|failure| library(failure))?;
    let children=FieldOwnershipInput::from_json(&json!({"id":"children","entity":"Child","writers":{"phase":["activate","finish"],"owner":[]},"creators":["create_child"],"removers":["remove_child"]})).map_err(|failure| library(failure))?;
    let dependency=LifecycleDependencyInput::from_json(&json!({"id":"relation","parent":"Parent","child":"Child","owner_field":"owner","parent_state":"phase","child_state":"phase","prohibited":if weak{json!(["Gone"])}else{json!(["Abandoned","Gone"])},"terminal":["Terminal"],"ownership":["parents","children"]})).map_err(|failure| library(failure))?;
    analyze_with_dependencies(m, &[parents, children], &[dependency])
        .map_err(|failure| library(failure))
}
pub fn store(m: &Module, seed: Vec<SeedEntity>) -> Result<Store<InMemoryBackend>> {
    store_with(m, seed, InMemoryBackend::default())
}
pub fn store_with<B: behavior_engine::store::Backend>(
    m: &Module,
    seed: Vec<SeedEntity>,
    backend: B,
) -> Result<Store<B>> {
    let policy=behavior_engine::verify::governance::EvidencePolicyV2::from_json(r#"{"execution_policies":[],"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[]}"#).map_err(|failure| library(failure))?;
    let genesis = behavior_engine::store::store::genesis_v2_for(m, policy, seed)
        .map_err(|failure| library(failure))?;
    Store::create(backend, m, genesis).map_err(|failure| library(failure))
}
pub fn parent(id: &str, phase: &str) -> SeedEntity {
    SeedEntity {
        entity: "Parent".into(),
        value: json!({"id":id,"phase":phase}),
    }
}
pub fn child(id: &str, owner: &str, phase: &str) -> SeedEntity {
    SeedEntity {
        entity: "Child".into(),
        value: json!({"id":id,"owner":owner,"phase":phase}),
    }
}
pub fn invoke<B: behavior_engine::store::Backend>(
    s: &Store<B>,
    m: &Module,
    a: &str,
    b: Value,
    i: Value,
) -> Result<behavior_engine::invocation::Invocation> {
    let text=json!({"format":"behavior.invocation.v1","capability":a,"bindings":b,"input":i,"context":{}}).to_string();
    let (request, errors) = behavior_engine::invocation::RequestedInvocation::decode(&text)
        .map_err(|failure| library(failure))?;
    let request =
        request.ok_or_else(|| StudyError::Library(format!("Invocation decode: {errors:?}")))?;
    s.invoke(m, &request, "2026-10-18T00:00:00Z", None, None)
        .map_err(|failure| library(failure))
}

/// Complete original public invocation arguments, kept separate from authority.
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize)]
#[serde(deny_unknown_fields)]
pub struct InvocationMetadata {
    pub commit_time: String,
    pub evidence: Option<behavior_engine::store::documents::Evidence>,
    pub at: Option<behavior_engine::store::documents::StateRef>,
}
impl InvocationMetadata {
    pub fn legacy() -> Self {
        Self {
            commit_time: "2026-10-18T00:00:00Z".into(),
            evidence: None,
            at: None,
        }
    }
}

pub fn invoke_request<B: behavior_engine::store::Backend>(
    s: &Store<B>,
    m: &Module,
    document: &Value,
) -> Result<behavior_engine::invocation::Invocation> {
    invoke_request_with_metadata(s, m, document, &InvocationMetadata::legacy())
}

pub fn invoke_request_with_metadata<B: behavior_engine::store::Backend>(
    s: &Store<B>,
    m: &Module,
    document: &Value,
    metadata: &InvocationMetadata,
) -> Result<behavior_engine::invocation::Invocation> {
    let (request, errors) =
        behavior_engine::invocation::RequestedInvocation::decode(&document.to_string())
            .map_err(|failure| library(failure))?;
    let request =
        request.ok_or_else(|| StudyError::Library(format!("Invocation decode: {errors:?}")))?;
    s.invoke(
        m,
        &request,
        &metadata.commit_time,
        metadata.evidence.clone(),
        metadata.at.as_ref(),
    )
    .map_err(|failure| library(failure))
}

// Raw input transport is decoded before the independent oracle has produced
// any prepared artifact. It confers no authority over the referenced payloads.
#[derive(Debug, serde::Deserialize)]
enum RawWorkloadFormatV2 {
    #[serde(rename = "core036.workload.v2")]
    V2,
}
#[derive(Debug, serde::Deserialize)]
#[serde(deny_unknown_fields)]
pub struct RawWorkloadV2 {
    #[serde(rename = "format")]
    _format: RawWorkloadFormatV2,
    #[serde(deserialize_with = "crate::protocol::bounded_id")]
    pub work_id: String,
    #[serde(deserialize_with = "crate::protocol::bounded_id")]
    pub record_id: String,
    pub specification_ref: crate::protocol::ArtifactRefV2,
    pub source_subject_ref: crate::protocol::ArtifactRefV2,
    pub inputs: Vec<crate::protocol::ArtifactRefV2>,
    #[serde(rename = "product_adoption")]
    _product_adoption: crate::protocol::UnactivatedV2,
    #[serde(rename = "outcome")]
    _outcome: crate::protocol::RequestOutcomeV2,
    pub reason: String,
    pub blocking_ref: crate::protocol::ArtifactRefV2,
    pub module_ref: crate::protocol::ArtifactRefV2,
    pub policy_ref: crate::protocol::ArtifactRefV2,
    pub basis_ref: crate::protocol::ArtifactRefV2,
    pub expected_facts_ref: crate::protocol::ArtifactRefV2,
    #[serde(rename = "N")]
    pub population: u64,
    #[serde(rename = "H")]
    pub history: u64,
    pub requests: Vec<crate::protocol::RawRequestV2>,
}

fn validate_raw_workload_references_v2(result: &RawWorkloadV2) -> Result<()> {
    result.specification_ref.validate()?;
    result.source_subject_ref.validate()?;
    result.blocking_ref.validate()?;
    result.module_ref.validate()?;
    result.policy_ref.validate()?;
    result.basis_ref.validate()?;
    result.expected_facts_ref.validate()?;
    crate::protocol::validate_v2_references(&result.inputs)?;
    Ok(())
}

fn validate_raw_workload_requests_v2(result: &RawWorkloadV2) -> Result<()> {
    for request in &result.requests {
        crate::protocol::validate_v2_operation_references(request)?;
    }
    Ok(())
}

pub fn parse_raw_workload_v2(bytes: &[u8]) -> Result<RawWorkloadV2> {
    let value = crate::protocol::parse_json(bytes, crate::protocol::CONTROL_BOUND_V2)?;
    let result: RawWorkloadV2 = serde_json::from_value(value)?;
    if !(2..=256).contains(&result.population)
        || result.history > 128
        || result.requests.is_empty()
        || result.requests.len() > 128
        || result.inputs.len() > crate::protocol::REFERENCE_BOUND_V2
        || result.reason.trim().is_empty()
    {
        return Err(StudyError::InvalidInput("RawWorkloadV2Bound".into()));
    }
    validate_raw_workload_references_v2(&result)?;
    validate_raw_workload_requests_v2(&result)?;
    Ok(result)
}
