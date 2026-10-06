//! Unified capability documents and identity resolution (012).
use crate::facts::{BoundEntity, Facts, check_snapshot};
use crate::semantic::module::{Module, Param, ParamRole};
use crate::semantic::types::Type;
use serde::{Deserialize, Serialize};
use serde_json::{Value as Json, json};
use std::collections::{BTreeMap, BTreeSet};

#[derive(Debug, Clone, PartialEq, Eq, PartialOrd, Ord, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct TypedIdentity {
    pub entity: String,
    pub id: String,
}

#[derive(Debug, Clone, Serialize)]
pub struct IntentError {
    pub stage: String,
    pub code: String,
    pub path: String,
    pub message: String,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub reason: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub param: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub expected: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub requested: Option<TypedIdentity>,
}

#[derive(Debug, thiserror::Error)]
pub enum TransportError {
    #[error("invalid JSON: {0}")]
    Json(#[from] serde_json::Error),
    #[error("document is not canonicalizable: {0}")]
    Canonical(#[from] crate::canonical::CanonicalError),
}

#[derive(Debug, Clone)]
pub struct RequestedInvocation {
    capability: String,
    bindings: BTreeMap<String, TypedIdentity>,
    input: Json,
    context: Json,
}

impl RequestedInvocation {
    pub fn decode(text: &str) -> Result<(Option<Self>, Vec<IntentError>), TransportError> {
        let raw = parse(text)?;
        let (value, errors) = decode_invocation(&raw, false);
        Ok((value, errors))
    }
    pub fn as_json(&self) -> Json {
        serde_json::json!({"format":"behavior.invocation.v1", "capability":self.capability,
            "bindings":self.bindings,"input":self.input,"context":self.context})
    }
    pub fn capability(&self) -> &str {
        &self.capability
    }
    pub fn bindings(&self) -> &BTreeMap<String, TypedIdentity> {
        &self.bindings
    }
    pub fn input(&self) -> &Json {
        &self.input
    }
    pub fn context(&self) -> &Json {
        &self.context
    }
}

#[derive(Debug, Clone)]
pub struct CapabilityIntent {
    invocation: RequestedInvocation,
    metadata: Option<Json>,
}
impl CapabilityIntent {
    pub fn decode(text: &str) -> Result<(Option<Self>, Vec<IntentError>), TransportError> {
        let raw = parse(text)?;
        let (invocation, errors) = decode_invocation(&raw, true);
        Ok((
            invocation.map(|invocation| Self {
                invocation,
                metadata: raw.get("metadata").cloned(),
            }),
            errors,
        ))
    }
    pub fn into_invocation(mut self, context: Json) -> Result<RequestedInvocation, TransportError> {
        crate::canonical::to_canonical_string(&context)?;
        self.invocation.context = context;
        Ok(self.invocation)
    }
    pub fn as_json(&self) -> Json {
        let mut raw = self.invocation.as_json();
        if let Some(object) = raw.as_object_mut() {
            object.insert("format".into(), json!("behavior.capability_intent.v1"));
            object.remove("context");
            if let Some(metadata) = &self.metadata {
                object.insert("metadata".into(), metadata.clone());
            }
        }
        raw
    }
}

#[derive(Debug, Clone)]
pub struct Snapshot {
    data_version: String,
    entities: BTreeMap<TypedIdentity, Json>,
    facts: Facts,
    raw: Json,
}
impl Snapshot {
    /// Snapshot validation needs the admitted module to interpret reference types and facts.
    pub fn decode(
        module: &Module,
        text: &str,
    ) -> Result<(Option<Self>, Vec<IntentError>), TransportError> {
        let raw = parse(text)?;
        let mut errors = document_problems(
            &raw,
            "behavior.snapshot.v1",
            &["format", "data_version", "entities", "facts"],
        );
        let data_version = raw.get("data_version").and_then(Json::as_str);
        if data_version.is_none() {
            errors.push(problem(
                "INVALID_SNAPSHOT",
                "data_version",
                "expected a string",
            ));
        }
        let mut entities = BTreeMap::new();
        let mut params = Vec::new();
        let mut values = BTreeMap::new();
        let mut bound = Vec::new();
        if let Some(items) = raw.get("entities").and_then(Json::as_array) {
            for (index, item) in items.iter().enumerate() {
                let path = format!("entities[{index}]");
                if item.as_object().is_none_or(|m| {
                    m.len() != 2 || !m.contains_key("entity") || !m.contains_key("value")
                }) {
                    errors.push(problem(
                        "INVALID_SNAPSHOT",
                        &path,
                        "expected exactly entity and value",
                    ));
                    continue;
                }
                let Some(entity) = item["entity"].as_str() else {
                    errors.push(problem(
                        "INVALID_SNAPSHOT",
                        &path,
                        "entity must be a string",
                    ));
                    continue;
                };
                let Some(id) = item["value"]["id"].as_str().filter(|s| !s.is_empty()) else {
                    errors.push(problem(
                        "INVALID_IDENTITY",
                        &path,
                        "entity value needs a non-empty id",
                    ));
                    continue;
                };
                let ty = Type::Entity(entity.into());
                let param = format!("snapshot_{index}");
                let mut input_problems = Vec::new();
                let Some(value) = crate::eval::decode_param(
                    module,
                    &ty,
                    &item["value"],
                    &path,
                    &mut input_problems,
                )
                .filter(|_| input_problems.is_empty()) else {
                    errors.push(problem(
                        "INVALID_SNAPSHOT",
                        &path,
                        "entity value does not match its declared type",
                    ));
                    continue;
                };
                let canonical = crate::eval::encode_param(module, &ty, &value);
                let key = TypedIdentity {
                    entity: entity.into(),
                    id: id.into(),
                };
                if entities.insert(key, canonical.clone()).is_some() {
                    errors.push(problem(
                        "INCONSISTENT_FACTS",
                        &path,
                        "duplicate typed entity identity",
                    ));
                }
                let references = module
                    .entity(entity)
                    .map(|e| {
                        e.reference_fields()
                            .map(|(field, _)| {
                                (field.into(), canonical[field].as_str().map(str::to_owned))
                            })
                            .collect()
                    })
                    .unwrap_or_default();
                bound.push(BoundEntity {
                    entity: entity.into(),
                    id: id.into(),
                    references,
                });
                params.push(Param::new(&param, ParamRole::State, ty));
                values.insert(param, value);
            }
        } else {
            errors.push(problem("INVALID_SNAPSHOT", "entities", "expected an array"));
        }
        let facts = match Facts::from_json(raw.get("facts").unwrap_or(&json!({}))) {
            Ok(facts) => {
                if let Err(error) = check_snapshot(module, &facts, &bound).and_then(|_| {
                    crate::eval::check_query_snapshot(module, &facts, &params, &values)
                }) {
                    errors.push(problem("INCONSISTENT_FACTS", "facts", error.message));
                }
                // Consistent facts may add values beyond the explicit entity
                // table. Resolution must use that same knowledge as queries.
                for (entity, members) in &facts.universe {
                    for (id, raw) in members {
                        let ty = Type::Entity(entity.clone());
                        let mut problems = Vec::new();
                        if let Some(value) = crate::eval::decode_param(
                            module,
                            &ty,
                            raw,
                            "facts.universe",
                            &mut problems,
                        )
                        .filter(|_| problems.is_empty())
                        {
                            entities
                                .entry(TypedIdentity {
                                    entity: entity.clone(),
                                    id: id.clone(),
                                })
                                .or_insert_with(|| crate::eval::encode_param(module, &ty, &value));
                        }
                    }
                }
                facts
            }
            Err(error) => {
                errors.push(problem(error.code, "facts", error.message));
                Facts::default()
            }
        };
        sort_problems(&mut errors);
        let snapshot = if errors.is_empty() {
            data_version.map(|version| Self {
                data_version: version.into(),
                entities,
                facts,
                raw: raw.clone(),
            })
        } else {
            None
        };
        Ok((snapshot, errors))
    }
    pub fn as_json(&self) -> &Json {
        &self.raw
    }
    pub fn data_version(&self) -> &str {
        &self.data_version
    }
    pub fn entities(&self) -> &BTreeMap<TypedIdentity, Json> {
        &self.entities
    }
    pub fn facts(&self) -> &Facts {
        &self.facts
    }
}

fn parse(text: &str) -> Result<Json, TransportError> {
    // Reject ambiguity while the source still contains duplicate keys. A
    // canonicalization check after map reduction cannot recover that evidence.
    let raw = crate::canonical::decode_strict(text)?;
    crate::canonical::to_canonical_string(&raw)?;
    Ok(raw)
}

fn problem(code: &str, path: impl Into<String>, message: impl Into<String>) -> IntentError {
    IntentError {
        stage: "DECODE".into(),
        code: code.into(),
        path: path.into(),
        message: message.into(),
        reason: None,
        param: None,
        expected: None,
        requested: None,
    }
}

fn problem_rank(code: &str) -> usize {
    [
        "UNSUPPORTED_FORMAT",
        "UNEXPECTED_KEY",
        "INVALID_CAPABILITY",
        "UNKNOWN_CAPABILITY",
        "INVALID_IDENTITY",
        "STATE_NOT_ALLOWED",
        "CONTEXT_FROM_HOST",
        "LEGACY_TARGETS",
        "INCONSISTENT_FACTS",
        "INCOMPLETE_SNAPSHOT",
        "MISSING_BINDING",
        "EXTRA_BINDING",
        "NOT_A_STATE_PARAMETER",
        "INVALID_BINDING",
    ]
    .iter()
    .position(|c| *c == code)
    .unwrap_or(usize::MAX)
}
fn sort_problems(errors: &mut [IntentError]) {
    errors.sort_by(|a, b| {
        (
            if a.stage == "DECODE" { 0 } else { 1 },
            problem_rank(&a.code),
            &a.path,
        )
            .cmp(&(
                if b.stage == "DECODE" { 0 } else { 1 },
                problem_rank(&b.code),
                &b.path,
            ))
    });
}

fn document_problems(raw: &Json, tag: &str, keys: &[&str]) -> Vec<IntentError> {
    let mut errors = Vec::new();
    let Some(object) = raw.as_object() else {
        return vec![problem("INVALID_DOCUMENT", "$", "expected an object")];
    };
    if object.get("format").and_then(Json::as_str) != Some(tag) {
        errors.push(problem(
            "UNSUPPORTED_FORMAT",
            "format",
            format!("received {}; expected {tag}", raw["format"]),
        ));
    }
    for key in object.keys().filter(|k| !keys.contains(&k.as_str())) {
        let code = match key.as_str() {
            "state" => "STATE_NOT_ALLOWED",
            "context" => "CONTEXT_FROM_HOST",
            "targets" => "LEGACY_TARGETS",
            _ => "UNEXPECTED_KEY",
        };
        errors.push(problem(
            code,
            key,
            format!("unexpected document key `{key}`"),
        ));
    }
    errors
}

fn decode_invocation(raw: &Json, intent: bool) -> (Option<RequestedInvocation>, Vec<IntentError>) {
    let tag = if intent {
        "behavior.capability_intent.v1"
    } else {
        "behavior.invocation.v1"
    };
    let keys = if intent {
        ["format", "capability", "bindings", "input", "metadata"]
    } else {
        ["format", "capability", "bindings", "input", "context"]
    };
    let mut errors = document_problems(raw, tag, &keys);
    let capability = raw.get("capability").and_then(Json::as_str);
    if capability.is_none() {
        errors.push(problem(
            "INVALID_CAPABILITY",
            "capability",
            "expected a capability name",
        ));
    }
    let mut bindings = BTreeMap::new();
    if let Some(items) = raw.get("bindings").and_then(Json::as_object) {
        for (name, item) in items {
            let identity = item
                .as_object()
                .filter(|m| m.len() == 2 && m.contains_key("entity") && m.contains_key("id"));
            let entity = identity
                .and_then(|m| m.get("entity"))
                .and_then(Json::as_str)
                .filter(|s| !s.is_empty());
            let id = identity
                .and_then(|m| m.get("id"))
                .and_then(Json::as_str)
                .filter(|s| !s.is_empty());
            match (entity, id) {
                (Some(entity), Some(id)) => {
                    bindings.insert(
                        name.clone(),
                        TypedIdentity {
                            entity: entity.into(),
                            id: id.into(),
                        },
                    );
                }
                _ => errors.push(problem(
                    "INVALID_IDENTITY",
                    format!("bindings.{name}"),
                    "expected exactly entity and a non-empty id",
                )),
            }
        }
    } else {
        errors.push(problem(
            "INVALID_BINDINGS",
            "bindings",
            "expected an object",
        ));
    }
    let input = raw.get("input").cloned().unwrap_or(json!({}));
    if !input.is_object() {
        errors.push(problem("INVALID_INPUT", "input", "expected an object"));
    }
    let context = if intent {
        json!({})
    } else {
        raw.get("context").cloned().unwrap_or(json!({}))
    };
    if !context.is_object() {
        errors.push(problem("INVALID_CONTEXT", "context", "expected an object"));
    }
    if intent && raw.get("metadata").is_some_and(|v| !v.is_object()) {
        errors.push(problem(
            "INVALID_METADATA",
            "metadata",
            "expected an object",
        ));
    }
    sort_problems(&mut errors);
    let result = if errors.is_empty() {
        capability.map(|c| RequestedInvocation {
            capability: c.into(),
            bindings,
            input,
            context,
        })
    } else {
        None
    };
    (result, errors)
}

/// A Core identity key; the storage crate converts its own key at this boundary.
pub type EntityKey = TypedIdentity;

pub trait Resolver {
    fn exists(&self, key: &EntityKey) -> bool;
    fn value(&self, key: &EntityKey) -> Option<Json>;
    fn data_version(&self) -> String;
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[serde(deny_unknown_fields)]
pub struct BindingFact {
    pub param: String,
    pub expected: String,
    pub requested: TypedIdentity,
    pub status: String,
}

#[derive(Debug, Clone)]
pub struct Refusal {
    pub problems: Vec<IntentError>,
    pub binding_facts: Vec<BindingFact>,
}

#[derive(Debug, Clone)]
pub struct ResolvedInvocation<'a> {
    kind: String,
    requested: &'a RequestedInvocation,
    state: BTreeMap<String, Json>,
    data_version: String,
    binding_facts: Vec<BindingFact>,
}
impl ResolvedInvocation<'_> {
    pub fn kind(&self) -> &str {
        &self.kind
    }
    pub fn state(&self) -> &BTreeMap<String, Json> {
        &self.state
    }
    pub fn data_version(&self) -> &str {
        &self.data_version
    }
    pub fn binding_facts(&self) -> &[BindingFact] {
        &self.binding_facts
    }
    pub fn requested(&self) -> &RequestedInvocation {
        self.requested
    }
}

/// Parameter declarations are shared by both capability kinds.
pub fn capability_params<'a>(
    module: &'a Module,
    name: &str,
) -> Option<(&'static str, &'a [Param])> {
    module
        .action(name)
        .map(|a| ("action", a.params()))
        .or_else(|| module.read(name).map(|r| ("read", r.params())))
}

impl Resolver for Snapshot {
    fn exists(&self, key: &EntityKey) -> bool {
        self.entities.contains_key(key)
            || self
                .facts
                .existence
                .get(&(key.entity.clone(), key.id.clone()))
                == Some(&true)
    }
    fn value(&self, key: &EntityKey) -> Option<Json> {
        self.entities.get(key).cloned()
    }
    fn data_version(&self) -> String {
        self.data_version.clone()
    }
}

fn binding_problem(
    code: &str,
    param: &str,
    expected: Option<&str>,
    requested: Option<&TypedIdentity>,
    reason: Option<&str>,
) -> IntentError {
    let mut error = problem(
        code,
        format!("bindings.{param}"),
        match reason {
            Some(reason) => format!("binding `{param}`: {reason}"),
            None => format!("binding `{param}`: {code}"),
        },
    );
    error.stage = "BINDING".into();
    error.param = Some(param.into());
    error.expected = expected.map(str::to_owned);
    error.requested = requested.cloned();
    error.reason = reason.map(str::to_owned);
    error
}

/// Resolves identities at one explicit snapshot. Only successfully bound values
/// enter evaluation; wrong types and aliases never reach either evaluator.
pub fn resolve<'a>(
    module: &Module,
    requested: &'a RequestedInvocation,
    resolver: &dyn Resolver,
) -> Result<ResolvedInvocation<'a>, Refusal> {
    let Some((kind, params)) = capability_params(module, &requested.capability) else {
        return Err(Refusal {
            problems: vec![problem(
                "UNKNOWN_CAPABILITY",
                "capability",
                format!("unknown capability `{}`", requested.capability),
            )],
            binding_facts: Vec::new(),
        });
    };
    let mut problems = Vec::new();
    let mut binding_facts = Vec::new();
    let mut state = BTreeMap::new();
    let mut seen = BTreeSet::new();
    for param in params {
        let (ParamRole::State, Type::Entity(entity)) = (param.role(), param.ty()) else {
            continue;
        };
        let Some(identity) = requested.bindings.get(param.name()) else {
            problems.push(binding_problem(
                "MISSING_BINDING",
                param.name(),
                Some(entity),
                None,
                None,
            ));
            continue;
        };
        let status = if identity.entity != *entity {
            "wrong_type"
        } else if !resolver.exists(identity) {
            "unknown"
        } else {
            "bound"
        };
        binding_facts.push(BindingFact {
            param: param.name().into(),
            expected: entity.clone(),
            requested: identity.clone(),
            status: status.into(),
        });
        let reason = match status {
            "wrong_type" => Some("WRONG_ENTITY_TYPE"),
            "unknown" => Some("UNKNOWN_BINDING"),
            _ => None,
        };
        if let Some(reason) = reason {
            problems.push(binding_problem(
                "INVALID_BINDING",
                param.name(),
                Some(entity),
                Some(identity),
                Some(reason),
            ));
            continue;
        }
        match resolver.value(identity) {
            Some(value) if value["id"].as_str() == Some(identity.id.as_str()) => {
                state.insert(param.name().into(), value);
            }
            None => {
                problems.push(problem(
                    "INCOMPLETE_SNAPSHOT",
                    format!("bindings.{}", param.name()),
                    "identity exists but its entity value is unavailable",
                ));
            }
            Some(_) => {
                problems.push(problem(
                    "INCONSISTENT_FACTS",
                    format!("bindings.{}", param.name()),
                    "resolver value disagrees with the requested identity",
                ));
            }
        }
        if !seen.insert(identity) {
            problems.push(binding_problem(
                "INVALID_BINDING",
                param.name(),
                Some(entity),
                Some(identity),
                Some("STATE_ALIAS_NOT_ALLOWED"),
            ));
        }
    }
    for (name, identity) in &requested.bindings {
        match params.iter().find(|p| p.name() == name) {
            None => problems.push(binding_problem(
                "EXTRA_BINDING",
                name,
                None,
                Some(identity),
                None,
            )),
            Some(p) if p.role() != ParamRole::State => problems.push(binding_problem(
                "NOT_A_STATE_PARAMETER",
                name,
                None,
                Some(identity),
                None,
            )),
            _ => {}
        }
    }
    sort_problems(&mut problems);
    if problems.is_empty() {
        Ok(ResolvedInvocation {
            kind: kind.into(),
            requested,
            state,
            data_version: resolver.data_version(),
            binding_facts,
        })
    } else {
        Err(Refusal {
            problems,
            binding_facts,
        })
    }
}

#[derive(Debug, Clone)]
pub struct InvocationRecord {
    json: Json,
    record_id: String,
    diagnostics: Json,
}
impl InvocationRecord {
    /// Detached provenance; never a field of the semantic invocation record.
    pub fn diagnostics(&self) -> &Json {
        &self.diagnostics
    }
    pub fn as_json(&self) -> &Json {
        &self.json
    }
    pub fn to_json_string(&self) -> String {
        self.json.to_string()
    }
    pub fn record_id(&self) -> &str {
        &self.record_id
    }
    pub fn outcome_kind(&self) -> &str {
        self.json["outcome"]["kind"].as_str().unwrap_or("")
    }
    pub fn refusal_stage(&self) -> Option<&str> {
        self.json["outcome"].get("stage").and_then(Json::as_str)
    }
    pub fn inner_record(&self) -> Option<&Json> {
        self.json["outcome"].get("record")
    }
}

fn finish_record(mut json: Json) -> Result<InvocationRecord, TransportError> {
    if let Some(object) = json.as_object_mut() {
        object.remove("record_id");
    }
    let record_id = format!(
        "invocation:{}",
        crate::canonical::tagged_hash("behavior.invocation_record.v1", &json)?
    );
    json["record_id"] = json!(record_id);
    Ok(InvocationRecord {
        json,
        record_id,
        diagnostics: Json::Null,
    })
}

fn finish_evaluated_record(
    mut record: Json,
    inner_text: &str,
) -> Result<InvocationRecord, TransportError> {
    // The private caller obtained inner_text from the very record moved into
    // outcome.record. Reuse those exact canonical bytes rather than serialize
    // the complete inner evidence a second time. Both maps have UTF-8 key order.
    let mut text = String::with_capacity(inner_text.len().saturating_add(1024));
    text.push('{');
    if let Some(fields) = record.as_object() {
        for (index, (key, value)) in fields.iter().enumerate() {
            if index > 0 {
                text.push(',');
            }
            text.push_str(&serde_json::to_string(key)?);
            text.push(':');
            if key == "outcome" {
                text.push('{');
                if let Some(outcome) = value.as_object() {
                    for (index, (key, value)) in outcome.iter().enumerate() {
                        if index > 0 {
                            text.push(',');
                        }
                        text.push_str(&serde_json::to_string(key)?);
                        text.push(':');
                        if key == "record" {
                            text.push_str(inner_text);
                        } else {
                            text.push_str(&crate::canonical::to_canonical_string(value)?);
                        }
                    }
                }
                text.push('}');
            } else {
                text.push_str(&crate::canonical::to_canonical_string(value)?);
            }
        }
    }
    text.push('}');
    let record_id = format!(
        "invocation:{}",
        crate::canonical::tagged_hash_canonical_text("behavior.invocation_record.v1", &text)
    );
    record["record_id"] = json!(record_id);
    Ok(InvocationRecord {
        json: record,
        record_id,
        diagnostics: Json::Null,
    })
}

/// Checks document and statically decidable binding constraints. Existence is
/// checked only during invocation against an explicit snapshot or Store.
pub fn check_capability_intent(
    module: &Module,
    text: &str,
) -> Result<(Option<CapabilityIntent>, Vec<IntentError>), TransportError> {
    let raw = parse(text)?;
    let (intent, mut errors) = CapabilityIntent::decode(text)?;
    errors.extend(static_binding_problems(module, &raw));
    sort_problems(&mut errors);
    Ok((if errors.is_empty() { intent } else { None }, errors))
}

pub fn invoke_intent_with_snapshot(
    module: &Module,
    text: &str,
    context: &Json,
    snapshot: &Snapshot,
) -> Result<InvocationRecord, TransportError> {
    match prepare_intent(module, text, context, snapshot.data_version())? {
        Ok((requested, metadata)) => {
            let mut record = invoke_with_snapshot(module, &requested, snapshot)?;
            if record.json["outcome"].get("decode_evidence").is_some() {
                record.json["outcome"]["decode_evidence"] = json!({"source_kind":"documents","document":parse(text)?,"snapshot":snapshot.as_json(),"context":context});
                record = finish_record(record.json)?;
            }
            with_intent_metadata(record, metadata)
        }
        Err(record) => Ok(record),
    }
}

struct ShapeResolver;
impl Resolver for ShapeResolver {
    fn exists(&self, _key: &EntityKey) -> bool {
        true
    }
    fn value(&self, key: &EntityKey) -> Option<Json> {
        Some(json!({"id":key.id}))
    }
    fn data_version(&self) -> String {
        String::new()
    }
}

fn static_binding_problems(module: &Module, raw: &Json) -> Vec<IntentError> {
    let Some(capability) = raw["capability"].as_str() else {
        return Vec::new();
    };
    let Some(items) = raw["bindings"].as_object() else {
        return if capability_params(module, capability).is_none() {
            vec![problem(
                "UNKNOWN_CAPABILITY",
                "capability",
                format!("unknown capability `{capability}`"),
            )]
        } else {
            Vec::new()
        };
    };
    let bindings = items
        .iter()
        .filter_map(|(name, value)| {
            serde_json::from_value::<TypedIdentity>(value.clone())
                .ok()
                .filter(|i| !i.entity.is_empty() && !i.id.is_empty())
                .map(|i| (name.clone(), i))
        })
        .collect();
    let requested = RequestedInvocation {
        capability: capability.into(),
        bindings,
        input: json!({}),
        context: json!({}),
    };
    match resolve(module, &requested, &ShapeResolver) {
        Ok(_) => Vec::new(),
        Err(refusal) => refusal
            .problems
            .into_iter()
            .filter(|p| {
                // An undecodable supplied identity is not a missing binding.
                !(p.code == "MISSING_BINDING"
                    && p.param
                        .as_ref()
                        .is_some_and(|name| items.contains_key(name)))
            })
            .collect(),
    }
}

pub fn with_intent_metadata(
    mut record: InvocationRecord,
    metadata: Option<Json>,
) -> Result<InvocationRecord, TransportError> {
    if let Some(metadata) = metadata {
        record.json["intent_metadata"] = metadata;
        let diagnostics = record.diagnostics;
        let mut result = finish_record(record.json)?;
        result.diagnostics = diagnostics;
        Ok(result)
    } else {
        Ok(record)
    }
}

/// Shared transport boundary; malformed semantic documents preserve their
/// original evidence instead of implying that evaluation occurred.
pub fn prepare_intent(
    module: &Module,
    text: &str,
    context: &Json,
    data_version: &str,
) -> Result<Result<(RequestedInvocation, Option<Json>), InvocationRecord>, TransportError> {
    crate::canonical::to_canonical_string(context)?;
    let raw = parse(text)?;
    let (intent, mut errors) = CapabilityIntent::decode(text)?;
    let metadata = raw.get("metadata").filter(|m| m.is_object()).cloned();
    if !errors.is_empty() {
        errors.extend(static_binding_problems(module, &raw));
        let mut requested = if raw.is_object() {
            raw.clone()
        } else {
            json!({})
        };
        requested["context"] = context.clone();
        let mut record = refusal_record(
            module,
            &requested,
            data_version,
            Refusal {
                problems: errors,
                binding_facts: Vec::new(),
            },
        )?;
        record.json["outcome"]["decode_evidence"] = json!({"source_kind":"intent","document":raw});
        let record = finish_record(record.json)?;
        return Ok(Err(with_intent_metadata(record, metadata)?));
    }
    // Successful decoding guarantees an intent. Preserve fallibility if the
    // decoder contract is ever changed rather than synthesizing an evaluation.
    match intent {
        Some(intent) => Ok(Ok((intent.into_invocation(context.clone())?, metadata))),
        None => Err(TransportError::Canonical(
            crate::canonical::CanonicalError::Serialize(
                "decoder returned no intent or problems".into(),
            ),
        )),
    }
}

fn prepare_invocation(
    module: &Module,
    text: &str,
    data_version: &str,
) -> Result<Result<RequestedInvocation, InvocationRecord>, TransportError> {
    let raw = parse(text)?;
    let (requested, mut errors) = RequestedInvocation::decode(text)?;
    if !errors.is_empty() {
        errors.extend(static_binding_problems(module, &raw));
        let mut record = refusal_record(
            module,
            &raw,
            data_version,
            Refusal {
                problems: errors,
                binding_facts: Vec::new(),
            },
        )?;
        record.json["outcome"]["decode_evidence"] =
            json!({"source_kind":"invocation","document":raw});
        return Ok(Err(finish_record(record.json)?));
    }
    match requested {
        Some(requested) => Ok(Ok(requested)),
        None => Err(TransportError::Canonical(
            crate::canonical::CanonicalError::Serialize(
                "decoder returned no invocation or problems".into(),
            ),
        )),
    }
}

/// Complete document boundary used by the CLI. `context` selects a capability
/// intent; without it, `text` is a host requested invocation.
pub fn invoke_document(
    module: &Module,
    text: &str,
    snapshot_text: &str,
    context: Option<&Json>,
) -> Result<InvocationRecord, TransportError> {
    let raw = parse(text)?;
    let snapshot_raw = parse(snapshot_text)?;
    let (snapshot, errors) = Snapshot::decode(module, snapshot_text)?;
    let Some(snapshot) = snapshot else {
        let mut requested = if raw.is_object() {
            raw.clone()
        } else {
            json!({})
        };
        if let Some(context) = context {
            requested["context"] = context.clone();
        }
        let dv = snapshot_raw["data_version"].as_str().unwrap_or_default();
        let mut record = refusal_record(
            module,
            &requested,
            dv,
            Refusal {
                problems: errors,
                binding_facts: Vec::new(),
            },
        )?;
        record.json["data_version"] = snapshot_raw
            .get("data_version")
            .filter(|v| v.is_string())
            .cloned()
            .unwrap_or(Json::Null);
        record.json["outcome"]["decode_evidence"] = json!({"source_kind":"documents","document":raw,"snapshot":snapshot_raw,"context":context});
        if context.is_some()
            && let Some(metadata) = requested.get("metadata").filter(|v| v.is_object())
        {
            record.json["intent_metadata"] = metadata.clone();
        }
        return finish_record(record.json);
    };
    if let Some(context) = context {
        invoke_intent_with_snapshot(module, text, context, &snapshot)
    } else {
        match prepare_invocation(module, text, snapshot.data_version())? {
            Ok(requested) => invoke_with_snapshot(module, &requested, &snapshot),
            Err(record) => Ok(record),
        }
    }
}

fn envelope(
    module: &Module,
    raw: &Json,
    data_version: &str,
    binding_facts: &[BindingFact],
    outcome: Json,
) -> Json {
    let capability = raw
        .get("capability")
        .filter(|v| v.is_string())
        .cloned()
        .unwrap_or(Json::Null);
    let kind = capability
        .as_str()
        .and_then(|name| capability_params(module, name))
        .map(|(kind, _)| json!(kind))
        .unwrap_or(Json::Null);
    // Evaluated outcomes were constructed by this module's evaluator; reuse
    // its already rendered identity. Refusals have no inner evidence to reuse.
    let behavior_version = outcome
        .get("record")
        .and_then(|r| r.get("behavior_version"))
        .cloned()
        .unwrap_or_else(|| json!(module.behavior_version()));
    let mut record = json!({"format":"behavior.invocation_record.v1","capability":capability,"kind":kind,
        "behavior_version":behavior_version,"schema":crate::schema::schema_ref(module).hash,"data_version":data_version,
        "requested_bindings":raw.get("bindings").cloned().unwrap_or(Json::Null),
        "input":raw.get("input").cloned().unwrap_or(json!({})),"context":raw.get("context").cloned().unwrap_or(json!({})),
        "binding_facts":binding_facts});
    record["outcome"] = outcome;
    record
}

pub fn refusal_record(
    module: &Module,
    raw: &Json,
    data_version: &str,
    mut refusal: Refusal,
) -> Result<InvocationRecord, TransportError> {
    sort_problems(&mut refusal.problems);
    let stage = refusal
        .problems
        .first()
        .map(|p| p.stage.as_str())
        .unwrap_or("DECODE");
    finish_record(envelope(
        module,
        raw,
        data_version,
        &refusal.binding_facts,
        json!({"kind":"pre_evaluation_refusal","stage":stage,"problems":refusal.problems}),
    ))
}

/// Shared resolved evaluation. Observations are returned only for building an
/// action commit bundle; they do not add fields to the invocation envelope.
pub fn invoke_resolved(
    module: &Module,
    resolved: ResolvedInvocation<'_>,
    facts: &dyn crate::EvaluationFacts,
) -> Result<(InvocationRecord, crate::eval::Observed), TransportError> {
    invoke_resolved_version(module, resolved, facts, None)
}

fn invoke_resolved_version(
    module: &Module,
    resolved: ResolvedInvocation<'_>,
    facts: &dyn crate::EvaluationFacts,
    read_format: Option<&str>,
) -> Result<(InvocationRecord, crate::eval::Observed), TransportError> {
    let raw = resolved.requested.as_json();
    let mut request = json!({"data_version":resolved.data_version,
        "input":resolved.requested.input,"context":resolved.requested.context});
    request["state"] = Json::Object(resolved.state.into_iter().collect());
    let (inner, inner_text, identity, record_kind, observed, diagnostics) =
        if resolved.kind == "action" {
            request["action"] = json!(resolved.requested.capability);
            let (record, observed) = crate::eval::evaluate_with_value(module, request, facts);
            let inner_text = crate::canonical::to_canonical_string(record.as_json())?;
            let identity = if record.as_json().get("hash").is_some() {
                crate::canonical::tagged_hash("behavior.transition.v1", record.as_json())?
            } else {
                crate::canonical::tagged_hash_canonical_text("behavior.transition.v1", &inner_text)
            };
            let diagnostics = record.diagnostics().clone();
            (
                record.into_json(),
                inner_text,
                identity,
                "decision",
                observed,
                diagnostics,
            )
        } else {
            let source = crate::read::ReadSource::Declared(resolved.requested.capability.clone());
            let execution = if let Some(format) = read_format {
                crate::read::evaluate_read_with_version(
                    module,
                    &source,
                    &request.to_string(),
                    facts,
                    format,
                )
            } else {
                crate::read::evaluate_read_with(module, &source, &request.to_string(), facts)
            };
            (
                execution.record.as_json().clone(),
                crate::canonical::to_canonical_string(execution.record.as_json())?,
                execution.record.record_id().into(),
                "read",
                crate::eval::Observed::default(),
                execution.record.diagnostics().clone(),
            )
        };
    let mut outcome = json!({"kind":"evaluated","record_kind":record_kind,"record_id":identity});
    outcome["record"] = inner;
    let mut record = finish_evaluated_record(
        envelope(
            module,
            &raw,
            &resolved.data_version,
            &resolved.binding_facts,
            outcome,
        ),
        &inner_text,
    )?;
    record.diagnostics = diagnostics;
    Ok((record, observed))
}

/// Invoke at a validated explicit snapshot, with the same resolver for both kinds.
/// Fallible hashing never turns malformed content into empty evidence.
pub fn invoke_with_snapshot(
    module: &Module,
    requested: &RequestedInvocation,
    snapshot: &Snapshot,
) -> Result<InvocationRecord, TransportError> {
    match resolve(module, requested, snapshot) {
        Ok(resolved) => {
            invoke_resolved(module, resolved, &snapshot.facts).map(|(record, _)| record)
        }
        Err(refusal) => {
            let requires_snapshot = refusal.problems.iter().any(|p| {
                matches!(
                    p.code.as_str(),
                    "INCONSISTENT_FACTS" | "INCOMPLETE_SNAPSHOT"
                )
            });
            let mut record = refusal_record(
                module,
                &requested.as_json(),
                snapshot.data_version(),
                refusal,
            )?;
            if requires_snapshot {
                record.json["outcome"]["decode_evidence"] = json!({"source_kind":"documents","document":requested.as_json(),"snapshot":snapshot.as_json(),"context":null});
                finish_record(record.json)
            } else {
                Ok(record)
            }
        }
    }
}

struct RecordedResolver {
    values: BTreeMap<TypedIdentity, Json>,
    data_version: String,
}
impl Resolver for RecordedResolver {
    fn exists(&self, key: &EntityKey) -> bool {
        self.values.contains_key(key)
    }
    fn value(&self, key: &EntityKey) -> Option<Json> {
        self.values.get(key).cloned()
    }
    fn data_version(&self) -> String {
        self.data_version.clone()
    }
}

/// Replay uses only the document's recorded observations; it never resolves
/// identities against a current snapshot, store, clock or host callback.
pub fn replay_invocation(module: &Module, record_text: &str) -> crate::ReplayResult {
    match replay_document(module, record_text) {
        Ok(result) => result,
        Err(error) => crate::ReplayResult::mismatch(error),
    }
}

fn replay_document(module: &Module, text: &str) -> Result<crate::ReplayResult, String> {
    let stored =
        if module.semantic_profile() == crate::semantic::types::SemanticProfile::CommandIntents {
            crate::canonical::decode_strict(text).map_err(|e| e.to_string())?
        } else {
            parse(text).map_err(|e| e.to_string())?
        };
    if stored["format"] != "behavior.invocation_record.v1" {
        return Err("format: expected behavior.invocation_record.v1".into());
    }
    if stored["behavior_version"] != json!(module.behavior_version()) {
        return Err("behavior_version: different module".into());
    }
    if stored["schema"] != json!(crate::schema(module).hash) {
        return Err("schema: different schema".into());
    }
    if let Some(evidence) = stored["outcome"].get("decode_evidence") {
        let dv = stored["data_version"].as_str().unwrap_or_default();
        let expected = match evidence["source_kind"].as_str() {
            Some("intent") => prepare_intent(
                module,
                &evidence["document"].to_string(),
                &stored["context"],
                dv,
            )
            .map_err(|e| e.to_string())?
            .err(),
            Some("invocation") => prepare_invocation(module, &evidence["document"].to_string(), dv)
                .map_err(|e| e.to_string())?
                .err(),
            Some("documents") => Some(
                invoke_document(
                    module,
                    &evidence["document"].to_string(),
                    &evidence["snapshot"].to_string(),
                    evidence.get("context").filter(|v| !v.is_null()),
                )
                .map_err(|e| e.to_string())?,
            ),
            _ => return Err("outcome.decode_evidence.source_kind: unsupported".into()),
        };
        return expected
            .map(|record| crate::record::compare(&stored, record.as_json()))
            .ok_or_else(|| "outcome.decode_evidence: no decode refusal was reproduced".into());
    }
    let data_version = stored["data_version"]
        .as_str()
        .ok_or("data_version: expected a string")?;
    let raw = json!({"format":"behavior.invocation.v1","capability":stored["capability"],"bindings":stored["requested_bindings"],
        "input":stored["input"],"context":stored["context"]});
    let (requested, problems) = decode_invocation(&raw, false);
    let Some(requested) = requested else {
        let expected = refusal_record(
            module,
            &raw,
            data_version,
            Refusal {
                problems,
                binding_facts: Vec::new(),
            },
        )
        .map_err(|e| e.to_string())?;
        return Ok(crate::record::compare(&stored, expected.as_json()));
    };
    let facts: Vec<BindingFact> = serde_json::from_value(stored["binding_facts"].clone())
        .map_err(|e| format!("binding_facts: {e}"))?;
    for (index, fact) in facts.iter().enumerate() {
        if requested.bindings.get(&fact.param) != Some(&fact.requested) {
            return Err(format!(
                "CONTRADICTORY_RECORD requested_bindings.{}: differs from binding_facts[{index}].requested",
                fact.param
            ));
        }
    }
    let inner = stored["outcome"].get("record");
    let mut resolver = RecordedResolver {
        values: BTreeMap::new(),
        data_version: data_version.into(),
    };
    let evaluation_facts = if let Some(inner) = inner {
        let record_kind = stored["outcome"]["record_kind"]
            .as_str()
            .ok_or("outcome.record_kind: missing")?;
        let name = if record_kind == "decision" {
            &inner["action"]["name"]
        } else {
            &inner["read"]["name"]
        };
        for (field, left, right) in [
            ("capability", &stored["capability"], name),
            (
                "behavior_version",
                &stored["behavior_version"],
                &inner["behavior_version"],
            ),
            (
                "data_version",
                &stored["data_version"],
                &inner["data_version"],
            ),
        ] {
            if left != right {
                return Err(format!(
                    "CONTRADICTORY_RECORD {field}: envelope and outcome.record differ"
                ));
            }
        }
        for (param, identity) in &requested.bindings {
            if let Some(value) = inner["state"].get(param) {
                if value["id"] != json!(identity.id) {
                    return Err(format!(
                        "CONTRADICTORY_RECORD requested_bindings.{param}: differs from outcome.record.state"
                    ));
                }
                resolver.values.insert(identity.clone(), value.clone());
            }
        }
        // Reconstruct semantics before comparing their derived identities, so
        // a payload mismatch names the changed semantic field. The final
        // comparison also checks both inner and envelope record identities.
        Facts::from_json(inner.get("facts").unwrap_or(&json!({})))
            .map_err(|e| format!("outcome.record.facts: {}", e.message))?
    } else {
        let mut existence = BTreeMap::new();
        for (index, fact) in facts.iter().enumerate() {
            if !matches!(fact.status.as_str(), "bound" | "unknown" | "wrong_type") {
                return Err(format!("binding_facts[{index}].status: invalid"));
            }
            if fact.status == "wrong_type" {
                continue;
            }
            let exists = fact.status == "bound";
            if let Some(other) = existence.insert(fact.requested.clone(), exists)
                && other != exists
            {
                return Err(format!(
                    "CONTRADICTORY_RECORD binding_facts[{index}].status: one identity both exists and does not exist"
                ));
            }
            // A refused invocation never evaluates an entity. Its bound-ID
            // existence evidence is sufficient to reproduce resolution alone.
            if exists {
                resolver
                    .values
                    .insert(fact.requested.clone(), json!({"id":fact.requested.id}));
            }
        }
        Facts::default()
    };
    let mut expected = match resolve(module, &requested, &resolver) {
        Ok(resolved) => {
            if inner.is_none() {
                return Err("outcome: no pre-evaluation refusal was reproduced".into());
            }
            let format = if stored["outcome"]["record_kind"] == "read" {
                let format = stored["outcome"]["record"]["format"]
                    .as_str()
                    .ok_or("read format missing")?;
                if !matches!(
                    format,
                    crate::read::READ_RECORD_FORMAT | crate::read::READ_RECORD_V2
                ) || (format == crate::read::READ_RECORD_V2
                    && module.semantic_profile() == crate::semantic::types::SemanticProfile::Legacy)
                {
                    return Err("unsupported read record format/profile".into());
                }
                Some(format)
            } else {
                None
            };
            invoke_resolved_version(module, resolved, &evaluation_facts, format)
                .map_err(|e| e.to_string())?
                .0
        }
        Err(refusal) => {
            refusal_record(module, &raw, data_version, refusal).map_err(|e| e.to_string())?
        }
    };
    if let Some(metadata) = stored.get("intent_metadata") {
        if !metadata.is_object() {
            return Err("intent_metadata: expected an object".into());
        }
        expected.json["intent_metadata"] = metadata.clone();
        expected = finish_record(expected.json).map_err(|e| e.to_string())?;
    }
    Ok(crate::record::compare(&stored, expected.as_json()))
}
