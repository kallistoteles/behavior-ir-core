//! Decision records and replay (research R14; contracts/engine-api.md).
//!
//! A record is self-contained: it holds the request as evaluated, so it can be replayed and
//! audited without the source. It never contains timestamps or host data.

/// Closed semantic command decision format.
pub const RECORD_VERSION_COMMANDS: &str = "0.7";
use serde::Serialize;
use serde_json::{Value as Json, json};

use crate::eval::evaluate;
use crate::semantic::module::Module;

#[derive(Debug, Clone)]
pub struct DecisionRecord {
    json: Json,
    diagnostics: Json,
    commands: crate::commands::CommandIntentBag,
}

impl DecisionRecord {
    /// Decode the closed new-profile record form; this validates claims, not
    /// whether a live store actually performed the claimed evaluation.
    pub fn from_json(text: &str) -> Result<Self, RecordError> {
        let json =
            crate::canonical::decode_strict(text).map_err(|e| record_error(e.to_string()))?;
        let commands = validate_record07(&json)?;
        Ok(Self {
            json,
            commands,
            diagnostics: Json::Null,
        })
    }
    pub(crate) fn new(json: Json) -> Self {
        DecisionRecord {
            json,
            diagnostics: Json::Null,
            commands: crate::commands::CommandIntentBag::default(),
        }
    }

    pub(crate) fn with_profile(
        module: &Module,
        mut json: Json,
        mut commands: crate::commands::CommandIntentBag,
    ) -> Self {
        if module.semantic_profile() == crate::semantic::types::SemanticProfile::Legacy {
            return Self::new(json);
        }
        let diagnostics =
            json!({"trace":json["trace"],"reasons":json["reasons"],"derived":json["derived"]});
        let archive = match crate::commands::archive(module, &commands) {
            Ok(archive) => archive,
            Err(error) => {
                json["result"] = json!("ERROR");
                json["changes"] = json!([]);
                json.as_object_mut().map(|o| o.remove("lifecycle"));
                json["reasons"] = json!([{"code":error.code}]);
                commands = crate::commands::CommandIntentBag::default();
                json!({"declarations":[],"types":[],"intents":[]})
            }
        };
        json["record_version"] = json!(RECORD_VERSION_COMMANDS);
        json["semantic_profile"] = json!("0.8");
        json["commands"] = archive;
        let mut read_keys = std::collections::BTreeMap::new();
        for d in module.derived_items().values() {
            collect_read_keys(d.body(), &mut read_keys);
        }
        for (name, d) in module.derived_items() {
            read_keys.insert(
                name.clone(),
                format!("derived:{}", crate::semantic::types::hash_display(d.hash())),
            );
        }
        if let Some(action) = json["action"]["name"]
            .as_str()
            .and_then(|n| module.action(n))
        {
            for c in action.preconditions().iter().chain(action.postconditions()) {
                collect_read_keys(c.expr(), &mut read_keys);
            }
            for e in action.effects() {
                collect_read_keys(e.value(), &mut read_keys);
            }
            for c in action.command_emissions() {
                collect_read_keys(c.guard(), &mut read_keys);
                for (_, v) in c.payload() {
                    collect_read_keys(v, &mut read_keys);
                }
            }
            for c in action.creates() {
                collect_read_keys(c.id(), &mut read_keys);
                for (_, e) in c.fields() {
                    collect_read_keys(e, &mut read_keys);
                }
            }
        }
        for r in module.invariants().values() {
            collect_read_keys(r.body(), &mut read_keys);
        }
        for r in module.global_invariants().values() {
            collect_read_keys(r.body(), &mut read_keys);
        }
        for r in module.constraints().values() {
            collect_read_keys(r.body(), &mut read_keys);
        }
        let failure = json["reasons"]
            .as_array()
            .and_then(|a| a.iter().find_map(|r| r.get("details")))
            .cloned();
        for section in ["reasons", "trace", "derived"] {
            if let Some(entries) = json[section].as_array_mut() {
                for entry in entries {
                    semantic_evidence(entry, &read_keys, failure.as_ref());
                    if let Some(o) = entry.as_object_mut() {
                        o.remove("name");
                    }
                }
            }
        }
        if let Some(entries) = json["derived"].as_array_mut() {
            entries.sort_by_key(Json::to_string);
        }
        Self {
            json,
            diagnostics,
            commands,
        }
    }

    pub fn diagnostics(&self) -> &Json {
        &self.diagnostics
    }
    pub fn command_intents(&self) -> &crate::commands::CommandIntentBag {
        &self.commands
    }

    /// `ALLOW`, `DENY`, `ERROR`, `INVALID_INPUT`, or `INVALID_STATE`.
    pub fn result(&self) -> &str {
        self.json["result"].as_str().unwrap_or("ERROR")
    }

    pub fn as_json(&self) -> &Json {
        &self.json
    }

    pub(crate) fn into_json(self) -> Json {
        self.json
    }

    /// Canonical JSON. Records hold no floats (invalid input is sanitized), so this cannot fail.
    pub fn to_json_string(&self) -> String {
        self.json.to_string()
    }
}

#[derive(Debug, Clone, PartialEq, Eq, thiserror::Error)]
#[error("{code}: {message}")]
pub struct RecordError {
    pub code: &'static str,
    pub message: String,
}

#[derive(Debug, Clone, Serialize)]
pub struct ReplayResult {
    pub matches: bool,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub diff: Option<String>,
}

impl ReplayResult {
    /// A replay that did not reproduce the record, with the first difference.
    pub fn mismatch(diff: String) -> Self {
        ReplayResult {
            matches: false,
            diff: Some(diff),
        }
    }

    pub fn to_json_string(&self) -> String {
        let mut fields = serde_json::Map::new();
        fields.insert("matches".into(), Json::Bool(self.matches));
        if let Some(diff) = &self.diff {
            fields.insert("diff".into(), Json::String(diff.clone()));
        }
        Json::Object(fields).to_string()
    }
}

/// Compares a stored record with its replay (feature 010 shares this with read records).
pub fn compare(stored: &Json, replayed: &Json) -> ReplayResult {
    match first_difference("", stored, replayed) {
        None => ReplayResult {
            matches: true,
            diff: None,
        },
        Some(d) => ReplayResult::mismatch(d),
    }
}

/// First differing JSON path between the stored record and the replayed one.
fn first_difference(path: &str, stored: &Json, replayed: &Json) -> Option<String> {
    match (stored, replayed) {
        (Json::Object(a), Json::Object(b)) => {
            let mut keys: Vec<&String> = a.keys().chain(b.keys()).collect();
            keys.sort();
            keys.dedup();
            keys.into_iter().find_map(|k| {
                let p = if path.is_empty() {
                    k.clone()
                } else {
                    format!("{path}.{k}")
                };
                match (a.get(k), b.get(k)) {
                    (Some(x), Some(y)) => first_difference(&p, x, y),
                    (x, y) => Some(format!(
                        "{p}: record has {}, replay has {}",
                        x.map_or("nothing".into(), Json::to_string),
                        y.map_or("nothing".into(), Json::to_string)
                    )),
                }
            })
        }
        (Json::Array(a), Json::Array(b)) => {
            for i in 0..a.len().max(b.len()) {
                let p = format!("{path}[{i}]");
                match (a.get(i), b.get(i)) {
                    (Some(x), Some(y)) => {
                        if let Some(d) = first_difference(&p, x, y) {
                            return Some(d);
                        }
                    }
                    (x, y) => {
                        return Some(format!(
                            "{p}: record has {}, replay has {}",
                            x.map_or("nothing".into(), Json::to_string),
                            y.map_or("nothing".into(), Json::to_string)
                        ));
                    }
                }
            }
            None
        }
        (a, b) if a == b => None,
        (a, b) => Some(format!("{path}: record has {a}, replay has {b}")),
    }
}

/// Re-evaluates the request stored in `record` and compares the outcome byte for byte.
pub fn replay(module: &Module, record: &str) -> ReplayResult {
    let stored: Json = match crate::canonical::decode_strict(record) {
        Ok(v) => v,
        Err(e) => return ReplayResult::mismatch(format!("record is not valid JSON: {e}")),
    };
    if module.semantic_profile() == crate::semantic::types::SemanticProfile::CommandIntents
        && let Err(error) = validate_record07(&stored)
    {
        return ReplayResult::mismatch(error.to_string());
    }
    let version = module.behavior_version();
    if stored["behavior_version"] != json!(version) {
        return ReplayResult::mismatch(format!(
            "behavior_version: record has {}, module is \"{version}\"",
            stored["behavior_version"]
        ));
    }
    let mut request = json!({
        "action": stored["action"]["name"],
        "data_version": stored["data_version"],
        "state": stored["state"],
        "input": stored["input"],
        "context": stored["context"],
    });
    if let (Some(g), Json::Object(m)) = (stored.get("git_revision"), &mut request) {
        m.insert("git_revision".into(), g.clone());
    }
    // Recorded facts (feature 006) are the replay's facts: the observed facts of the evaluation,
    // or the refused facts section of an invalid request.
    if let (Some(f), Json::Object(m)) = (stored.get("facts"), &mut request) {
        m.insert("facts".into(), f.clone());
    }
    let replayed = evaluate(module, &request.to_string());
    match first_difference("", &stored, replayed.as_json()) {
        None => ReplayResult {
            matches: true,
            diff: None,
        },
        Some(d) => ReplayResult::mismatch(d),
    }
}

fn collect_read_keys(
    expression: &crate::semantic::expr::Expr,
    keys: &mut std::collections::BTreeMap<String, String>,
) {
    use crate::semantic::expr::ExprKind;
    match expression.kind() {
        ExprKind::Count(_)
        | ExprKind::Fold { .. }
        | ExprKind::Exists(_)
        | ExprKind::Referenced(_) => {
            keys.insert(
                crate::pretty::text(expression),
                format!(
                    "node:{}",
                    crate::semantic::types::hash_display(expression.hash())
                ),
            );
        }
        _ => {}
    }
    for child in expression.children() {
        collect_read_keys(child, keys);
    }
}
fn semantic_evidence(
    value: &mut Json,
    read_keys: &std::collections::BTreeMap<String, String>,
    failure: Option<&Json>,
) {
    match value {
        Json::Object(object) => {
            for key in ["loc", "expr_text", "message", "rescale"] {
                object.remove(key);
            }
            if let Some(Json::Object(reads)) = object.get_mut("reads") {
                *reads = std::mem::take(reads)
                    .into_iter()
                    .map(|(key, value)| (read_keys.get(&key).cloned().unwrap_or(key), value))
                    .collect();
            }
            if let Some(Json::String(_)) = object.get("error") {
                object.insert(
                    "error".into(),
                    failure
                        .cloned()
                        .unwrap_or_else(|| json!({"code":"EVALUATION_ERROR"})),
                );
            }
            // Values and operand products are domain data, even when a field
            // happens to be named "loc" or "message". Only evidence metadata
            // is detached.
            if let Some(Json::Object(outcome)) = object.get_mut("outcome")
                && matches!(outcome.get("error"), Some(Json::String(_)))
            {
                outcome.insert(
                    "error".into(),
                    failure
                        .cloned()
                        .unwrap_or_else(|| json!({"code":"EVALUATION_ERROR"})),
                );
            }
            if let Some(Json::Array(rescales)) = object.get_mut("rescales") {
                for entry in rescales {
                    if let Some(o) = entry.as_object_mut() {
                        o.remove("rescale");
                    }
                }
            }
        }
        Json::Array(array) => array
            .iter_mut()
            .for_each(|v| semantic_evidence(v, read_keys, failure)),
        _ => {}
    }
}

// Closed semantic record bodies. Domain values remain JSON because historical
// entity schemas are a store concern; command products carry their own types.
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct Record07 {
    record_version: String,
    semantic_profile: String,
    behavior_version: String,
    data_version: String,
    #[serde(default)]
    git_revision: Option<String>,
    action: RecordAction,
    state: serde_json::Map<String, Json>,
    input: serde_json::Map<String, Json>,
    context: serde_json::Map<String, Json>,
    #[serde(default)]
    facts: Option<Json>,
    result: String,
    reasons: Vec<SemanticReason>,
    trace: Vec<SemanticTrace>,
    derived: Vec<SemanticDerived>,
    changes: Vec<SemanticChange>,
    #[serde(default)]
    lifecycle: Vec<SemanticLifecycle>,
    commands: Json,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct RecordAction {
    name: String,
    #[serde(default)]
    hash: Option<String>,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticReason {
    code: String,
    #[serde(default)]
    path: Option<String>,
    #[serde(default)]
    details: Option<SemanticFailure>,
    #[serde(default)]
    references: Vec<SemanticReference>,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticReference {
    entity: String,
    id: String,
    field: String,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticFailure {
    code: String,
    node: String,
    operands: Vec<SemanticOperand>,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticOperand {
    node: String,
    value: Json,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticTrace {
    phase: String,
    hash: String,
    reads: serde_json::Map<String, Json>,
    outcome: Json,
    #[serde(default)]
    param: Option<String>,
    #[serde(default)]
    role: Option<String>,
    #[serde(default)]
    rescales: Vec<SemanticRescale>,
    #[serde(default)]
    emission: Option<String>,
    #[serde(default)]
    canonical_index: Option<u32>,
    #[serde(default)]
    field: Option<String>,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticRescale {
    exact: String,
    rounding: String,
    scale: u8,
    result: String,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticDerived {
    hash: String,
    phase_state: String,
    value: Json,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticChange {
    entity: String,
    id: String,
    param: String,
    field: String,
    old: Json,
    new: Json,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticLifecycle {
    op: String,
    entity: String,
    id: String,
    value: Json,
}
fn record_error(message: impl Into<String>) -> RecordError {
    RecordError {
        code: "INVALID_DECISION_RECORD",
        message: message.into(),
    }
}
fn record_hash(value: &str) -> Result<(), RecordError> {
    crate::commands::parse_hash(value)
        .map(|_| ())
        .map_err(|e| record_error(e.to_string()))
}
fn record_failure(failure: &SemanticFailure) -> Result<(), RecordError> {
    if failure.code.is_empty() {
        return Err(record_error("empty error code"));
    }
    record_hash(&failure.node)?;
    for operand in &failure.operands {
        record_hash(&operand.node)?;
        crate::canonical::to_canonical_string(&operand.value)
            .map_err(|e| record_error(e.to_string()))?;
    }
    Ok(())
}
fn trace_outcome(step: &SemanticTrace) -> Result<(), RecordError> {
    let command = matches!(step.phase.as_str(), "command_guard" | "command_payload");
    if command != (step.emission.is_some() && step.canonical_index.is_some())
        || (!command && (step.emission.is_some() || step.canonical_index.is_some()))
        || (step.phase == "command_payload") != step.field.is_some()
    {
        return Err(record_error("invalid command trace site"));
    }
    if step.outcome.get("error").is_some() {
        let object = step
            .outcome
            .as_object()
            .ok_or_else(|| record_error("invalid trace outcome"))?;
        if object.len() != 1 {
            return Err(record_error("unknown trace error field"));
        }
        let failure: SemanticFailure = serde_json::from_value(object["error"].clone())
            .map_err(|e| record_error(e.to_string()))?;
        return record_failure(&failure);
    }
    let key = match step.phase.as_str() {
        "effect" => Some("assigned"),
        "create" => Some("created"),
        "remove" => Some("removed"),
        "command_payload" => Some("value"),
        _ => None,
    };
    if let Some(key) = key {
        let object = step
            .outcome
            .as_object()
            .ok_or_else(|| record_error("invalid trace value outcome"))?;
        if object.len() != 1 || !object.contains_key(key) {
            return Err(record_error("unknown trace value field"));
        }
        if matches!(key, "created" | "removed") {
            let value = object[key]
                .as_object()
                .ok_or_else(|| record_error("invalid lifecycle trace identity"))?;
            if value.len() != 2
                || value
                    .get("entity")
                    .and_then(Json::as_str)
                    .is_none_or(str::is_empty)
                || value.get("id").and_then(Json::as_str).is_none()
            {
                return Err(record_error("invalid lifecycle trace identity"));
            }
        }
    } else if !step.outcome.is_boolean()
        && !(step.phase != "command_guard" && step.outcome == json!("skipped"))
    {
        return Err(record_error("invalid predicate outcome"));
    }
    Ok(())
}
fn validate_record07(raw: &Json) -> Result<crate::commands::CommandIntentBag, RecordError> {
    let record: Record07 =
        serde_json::from_value(raw.clone()).map_err(|e| record_error(e.to_string()))?;
    if record.record_version != RECORD_VERSION_COMMANDS || record.semantic_profile != "0.8" {
        return Err(record_error("unsupported record/profile pair"));
    }
    record_hash(&record.behavior_version)?;
    if let Some(hash) = &record.action.hash {
        record_hash(hash)?;
    }
    if record.result == "ALLOW" && record.action.hash.is_none() {
        return Err(record_error("allowed record has no action identity"));
    }
    if ![
        "ALLOW",
        "DENY",
        "ERROR",
        "INVALID_INPUT",
        "INVALID_STATE",
        "INVALID_CONTEXT",
        "INVALID_BINDING",
        "ENTITY_ID_ALREADY_USED",
        "LIFECYCLE_CONFLICT",
    ]
    .contains(&record.result.as_str())
    {
        return Err(record_error("unknown result"));
    }
    let bag = crate::commands::decode_archive(&record.commands)
        .map_err(|e| record_error(e.to_string()))?;
    if record.result != "ALLOW"
        && (!bag.is_empty() || !record.changes.is_empty() || !record.lifecycle.is_empty())
    {
        return Err(record_error("a refused record exposes partial effects"));
    }
    if let Some(facts) = record.facts
        && record.result != "INVALID_INPUT"
    {
        crate::facts::Facts::from_json(&facts).map_err(|e| record_error(e.message))?;
    }
    for reason in record.reasons {
        if reason.code.is_empty() {
            return Err(record_error("empty reason code"));
        }
        if let Some(detail) = reason.details {
            record_failure(&detail)?;
        }
        for edge in reason.references {
            if edge.entity.is_empty() || edge.field.is_empty() {
                return Err(record_error("invalid reference edge"));
            }
            let _ = edge.id;
        }
        let _ = reason.path;
    }
    for step in record.trace {
        trace_outcome(&step)?;
        record_hash(&step.hash)?;
        if ![
            "constraint",
            "invariant_pre",
            "precondition",
            "effect",
            "create",
            "remove",
            "command_guard",
            "command_payload",
            "postcondition",
            "invariant_post",
            "constraint_post",
            "invariant_global",
        ]
        .contains(&step.phase.as_str())
        {
            return Err(record_error("unknown trace phase"));
        }
        if let Some(hash) = step.emission {
            record_hash(&hash)?;
        }
        if let Some(role) = step.role
            && !["state", "input", "context"].contains(&role.as_str())
        {
            return Err(record_error("invalid trace role"));
        }
        for rescale in step.rescales {
            if rescale.scale > 28
                || crate::exact::Rounding::parse(&rescale.rounding).is_none()
                || crate::exact::Exact::parse(&rescale.exact).is_err()
                || crate::decimal::Dec::parse_str(&rescale.result).is_err()
            {
                return Err(record_error("invalid rescale evidence"));
            }
        }
        let _ = (step.reads, step.param, step.canonical_index, step.field);
    }
    for derived in record.derived {
        record_hash(&derived.hash)?;
        if !["S", "S'"].contains(&derived.phase_state.as_str()) {
            return Err(record_error("invalid derived phase"));
        }
        let _ = derived.value;
    }
    for change in record.changes {
        if change.entity.is_empty() || change.param.is_empty() || change.field.is_empty() {
            return Err(record_error("invalid changed cell"));
        }
        let _ = (change.id, change.old, change.new);
    }
    for change in record.lifecycle {
        if !["create", "remove"].contains(&change.op.as_str()) || change.entity.is_empty() {
            return Err(record_error("invalid lifecycle event"));
        }
        let _ = (change.id, change.value);
    }
    let _ = (
        record.data_version,
        record.git_revision,
        record.action.name,
        record.state,
        record.input,
        record.context,
    );
    Ok(bag)
}
