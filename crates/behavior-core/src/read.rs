//! First-class reads (feature 010): a read observes one exact state and changes nothing. It
//! returns a value with a content-addressed read record as evidence; a read response carries only
//! the declared result and the record's identity (research R6, R7).

use std::collections::BTreeMap;

use serde::Serialize;
use serde_json::{Map, Value as Json};

use crate::admit::hash::{self, TAG_READ_RECORD};
use crate::admit::resolve::Decls;
use crate::admit::{AdmissionError, AdmissionResult, decode_failure, typecheck};
use crate::canonical;
use crate::eval::InputProblem;
use crate::eval::{evaluate_read_inner, unknown_read_fields};
use crate::facts::EvaluationFacts;
use crate::intent::{IntentError, IntentRejection, check_params, problem, sections};
use crate::record::{ReplayResult, compare};
use crate::semantic::module::{Module, ParamRole, ReadItem};
use crate::semantic::types::hash_display;
use crate::serialize;
use crate::wire;

pub(crate) const READ_RECORD_V2: &str = "behavior.read_record.v2";

fn current(module: &Module) -> bool {
    module.semantic_profile() == crate::semantic::types::SemanticProfile::CommandIntents
}

fn decode_request(module: &Module, text: &str) -> Result<Json, serde_json::Error> {
    if current(module) {
        canonical::decode_strict(text)
            .map_err(|e| <serde_json::Error as serde::de::Error>::custom(e.to_string()))
    } else {
        serde_json::from_str(text)
    }
}

/// The read to evaluate: a module's declared read by name, or an ad-hoc read admitted against the
/// module (trusted hosts only).
#[derive(Debug, Clone)]
pub enum ReadSource {
    Declared(String),
    AdHoc(Box<ReadItem>),
}

/// Evaluates a read in plain mode: the request supplies the state's facts.
/// `request` is `{data_version, state, input, context, facts}`.
pub fn evaluate_read(module: &Module, source: &ReadSource, request: &str) -> ReadExecution {
    run(module, source, request, None)
}

/// Evaluates a read whose facts come from `facts` (a store as of one position); the request must
/// not have a `facts` section.
pub fn evaluate_read_with(
    module: &Module,
    source: &ReadSource,
    request: &str,
    facts: &dyn EvaluationFacts,
) -> ReadExecution {
    run(module, source, request, Some(facts))
}

pub(crate) fn evaluate_read_with_version(
    module: &Module,
    source: &ReadSource,
    request: &str,
    facts: &dyn EvaluationFacts,
    format: &str,
) -> ReadExecution {
    run_version(module, source, request, Some(facts), format)
}

/// Evaluates a plain read request in the `behavior read` format: the request's `read` is a
/// declared read's name or `{"definition": <read document>}` (an ad-hoc read admitted against the
/// module); the rest is `{data_version, state, input, context, facts}`.
pub fn evaluate_read_request(
    module: &Module,
    request: &str,
) -> Result<ReadExecution, AdmissionResult> {
    let refuse = |message: String| {
        AdmissionResult::failed(vec![AdmissionError::new("DECODE_ERROR", message, None)])
    };
    let mut req =
        decode_request(module, request).map_err(|e| refuse(format!("invalid JSON: {e}")))?;
    let Some(obj) = req.as_object_mut() else {
        return Err(refuse("a read request is an object".into()));
    };
    let source = match obj.remove("read") {
        Some(Json::String(name)) => ReadSource::Declared(name),
        Some(Json::Object(mut o)) if o.len() == 1 && o.contains_key("definition") => {
            let doc = o.remove("definition").unwrap_or_default();
            ReadSource::AdHoc(Box::new(admit_read(module, &doc.to_string())?))
        }
        Some(_) => {
            return Err(refuse(
                "at read: expected a declared read's name or {\"definition\": <read document>}"
                    .into(),
            ));
        }
        None => return Err(refuse("missing key `read`".into())),
    };
    Ok(evaluate_read(module, &source, &req.to_string()))
}

/// The read a record names: a declared read of the module by name, or the ad-hoc read in its
/// `definition`, admitted again against the module.
pub fn record_source(module: &Module, record: &Json) -> Result<ReadSource, String> {
    let read = &record["read"];
    let name = read["name"].as_str().ok_or("read.name: missing")?;
    if read["declared"] == Json::Bool(true) {
        return Ok(ReadSource::Declared(name.to_string()));
    }
    let definition = read
        .get("definition")
        .ok_or("read.definition: missing for an ad-hoc read")?;
    admit_read(module, &definition.to_string())
        .map(|r| ReadSource::AdHoc(Box::new(r)))
        .map_err(|e| {
            let codes: Vec<&str> = e.errors.iter().map(|x| x.code.as_str()).collect();
            format!("read.definition: not admitted ({})", codes.join(", "))
        })
}

/// The decoded argument echo and recorded facts. A transport refusal also keeps
/// its original text in `refused_request`; replay uses that text before decoding.
pub fn record_request(record: &Json) -> Json {
    let mut req = Map::new();
    for key in ["data_version", "state", "input", "context", "facts"] {
        if let Some(v) = record.get(key) {
            req.insert(key.into(), v.clone());
        }
    }
    Json::Object(req)
}

/// Replays a read record from its own facts (FR-011): the read is evaluated again with the
/// recorded state, parameters and facts, and the result is compared byte for byte, `record_id`
/// included. Any difference is reported at its first path.
pub fn replay_read(module: &Module, record: &str) -> ReplayResult {
    let stored: Json = match canonical::decode_strict(record) {
        Ok(v) => v,
        Err(e) => return ReplayResult::mismatch(format!("record is not valid JSON: {e}")),
    };
    let format = stored["format"].as_str().unwrap_or_default();
    if !matches!(format, READ_RECORD_FORMAT | READ_RECORD_V2)
        || (format == READ_RECORD_V2 && !current(module))
    {
        return ReplayResult::mismatch(format!(
            "format: record has {}, unsupported by this module's read profile",
            stored["format"]
        ));
    }
    let version = module.behavior_version();
    if stored["behavior_version"] != Json::String(version.clone()) {
        return ReplayResult::mismatch(format!(
            "behavior_version: record has {}, module is \"{version}\"",
            stored["behavior_version"]
        ));
    }
    let source = match record_source(module, &stored) {
        Ok(s) => s,
        Err(diff) => return ReplayResult::mismatch(diff),
    };
    let request = match stored.get("refused_request") {
        Some(raw) if format == READ_RECORD_V2 => match raw.as_str() {
            Some(raw) => raw.to_string(),
            None => return ReplayResult::mismatch("refused_request: expected a string".into()),
        },
        Some(_) => return ReplayResult::mismatch("refused_request: unsupported in v1".into()),
        None => record_request(&stored).to_string(),
    };
    // A historical v1 record keeps its original runtime even for a Wire 0.8
    // module. Newly evaluated Wire 0.8 reads always produce v2.
    let replayed = run_version(module, &source, &request, None, format);
    compare(&stored, replayed.record.as_json())
}

/// A validated read intent (feature 010): the declared read an untrusted caller names, with the
/// identities of its bound entities and its input.
#[derive(Debug, Clone)]
pub struct ReadIntent {
    pub capability: String,
    pub targets: BTreeMap<String, String>,
    pub input: Json,
}

fn intent_error(code: &str, path: &str, message: String) -> IntentError {
    IntentError {
        code: code.to_string(),
        message,
        path: path.to_string(),
    }
}

/// Parses and validates a read intent `{capability, targets, input}` against the module's
/// declared reads, the capability boundary for untrusted callers (FR-016): only a declared read
/// can be named, nothing but `capability`, `targets` and `input` may be supplied, and every
/// problem is listed. `host_state` is the trusted host's bound entities, when it supplies them.
/// Returns the parsed intent whenever it names a declared read (so a store can add its own
/// problems), and every problem found.
pub fn check_read_intent(
    module: &Module,
    intent: &str,
    host_state: Option<&Map<String, Json>>,
) -> (Option<ReadIntent>, Vec<IntentError>) {
    let to_errors = |ps: Vec<InputProblem>| -> Vec<IntentError> {
        ps.into_iter()
            .map(|p| intent_error(p.code, &p.path, p.message))
            .collect()
    };
    let intent = match decode_request(module, intent) {
        Ok(v) => v,
        Err(e) => {
            return (
                None,
                vec![intent_error(
                    "DECODE_ERROR",
                    "$",
                    format!("invalid JSON: {e}"),
                )],
            );
        }
    };
    let Some(obj) = intent.as_object() else {
        return (
            None,
            vec![intent_error(
                "DECODE_ERROR",
                "$",
                "expected an object".into(),
            )],
        );
    };
    let mut problems = Vec::new();
    for key in obj.keys() {
        if !matches!(key.as_str(), "capability" | "targets" | "input") {
            problems.push(problem(
                "EXTRA_ARGUMENT",
                key.clone(),
                format!(
                    "a read intent may not supply `{key}`; it names a declared read, and context \
                     comes from the host"
                ),
            ));
        }
    }
    let capability = match obj.get("capability") {
        Some(Json::String(s)) => s.clone(),
        Some(_) => {
            problems.push(problem("WRONG_TYPE", "capability", "expected a string"));
            return (None, to_errors(problems));
        }
        None => {
            problems.push(problem(
                "MISSING_ARGUMENT",
                "capability",
                "missing `capability`",
            ));
            return (None, to_errors(problems));
        }
    };
    let Some(read) = module.read(&capability) else {
        problems.push(problem(
            "UNKNOWN_CAPABILITY",
            "capability",
            format!("unknown read capability `{capability}`"),
        ));
        return (None, to_errors(problems));
    };
    let empty = Map::new();
    let (targets, input) = sections(obj, &empty, &mut problems);
    problems.extend(check_params(
        module,
        read.params(),
        &capability,
        targets,
        input,
        host_state,
    ));
    let parsed = ReadIntent {
        capability,
        targets: targets
            .iter()
            .filter_map(|(k, v)| v.as_str().map(|id| (k.clone(), id.to_string())))
            .collect(),
        input: Json::Object(input.clone()),
    };
    (Some(parsed), to_errors(problems))
}

/// Evaluates a read intent with the trusted host's side (plain mode): `host` is
/// `{data_version, state, context, facts}`. Every problem is reported before evaluation; the
/// execution's `response` is what the caller may see.
/// Superseded by the unified capability intent (feature 012); frozen.
pub fn evaluate_read_intent(
    module: &Module,
    intent: &str,
    host: &str,
) -> Result<ReadExecution, IntentRejection> {
    let host = decode_request(module, host).map_err(|e| {
        IntentRejection::of(vec![intent_error(
            "DECODE_ERROR",
            "host",
            format!("invalid JSON: {e}"),
        )])
    })?;
    let Some(host) = host.as_object() else {
        return Err(IntentRejection::of(vec![intent_error(
            "DECODE_ERROR",
            "host",
            "expected an object".into(),
        )]));
    };
    let mut errors: Vec<IntentError> = host
        .keys()
        .filter(|k| !matches!(k.as_str(), "data_version" | "state" | "context" | "facts"))
        .map(|k| {
            intent_error(
                "DECODE_ERROR",
                &format!("host.{k}"),
                "unexpected host key".into(),
            )
        })
        .collect();
    let empty = Map::new();
    let host_state = host
        .get("state")
        .and_then(Json::as_object)
        .unwrap_or(&empty);
    let (parsed, problems) = check_read_intent(module, intent, Some(host_state));
    errors.extend(problems);
    let intent = match parsed {
        Some(i) if errors.is_empty() => i,
        _ => return Err(IntentRejection::of(errors)),
    };
    let mut request = Map::new();
    request.insert(
        "data_version".into(),
        host.get("data_version").cloned().unwrap_or(Json::Null),
    );
    // The host may supply its entities for every capability; the read takes those its `state`
    // parameters bind (an input or context of the same name is not an entity).
    let bound: Map<String, Json> = module
        .read(&intent.capability)
        .map(|r| {
            r.params()
                .iter()
                .filter(|p| p.role() == ParamRole::State)
                .filter_map(|p| {
                    host_state
                        .get(p.name())
                        .map(|v| (p.name().to_string(), v.clone()))
                })
                .collect()
        })
        .unwrap_or_default();
    request.insert("state".into(), Json::Object(bound));
    request.insert("input".into(), intent.input);
    request.insert(
        "context".into(),
        host.get("context")
            .cloned()
            .unwrap_or_else(|| Json::Object(Map::new())),
    );
    if let Some(f) = host.get("facts") {
        request.insert("facts".into(), f.clone());
    }
    Ok(evaluate_read(
        module,
        &ReadSource::Declared(intent.capability),
        &Json::Object(request).to_string(),
    ))
}

/// The read a source names, if the module has it.
pub fn resolve<'a>(module: &'a Module, source: &'a ReadSource) -> Option<&'a ReadItem> {
    match source {
        ReadSource::Declared(name) => module.read(name),
        ReadSource::AdHoc(r) => Some(r),
    }
}

/// The record's `read` section: name, hash and kind; an ad-hoc read carries its definition, so
/// the record replays without the host that issued it.
fn read_identity(r: &ReadItem) -> Json {
    let mut o = Map::new();
    o.insert("name".into(), Json::String(r.name().to_string()));
    o.insert("hash".into(), Json::String(hash_display(r.hash())));
    o.insert("declared".into(), Json::Bool(r.declared()));
    if !r.declared() {
        o.insert("definition".into(), serialize::read_document(r));
    }
    Json::Object(o)
}

fn run(
    module: &Module,
    source: &ReadSource,
    request: &str,
    provider: Option<&dyn EvaluationFacts>,
) -> ReadExecution {
    run_version(
        module,
        source,
        request,
        provider,
        if current(module) {
            READ_RECORD_V2
        } else {
            READ_RECORD_FORMAT
        },
    )
}

fn run_version(
    module: &Module,
    source: &ReadSource,
    request: &str,
    provider: Option<&dyn EvaluationFacts>,
    format: &str,
) -> ReadExecution {
    let current = format == READ_RECORD_V2;
    let (identity, fields) = match resolve(module, source) {
        Some(r) => (
            read_identity(r),
            evaluate_read_inner(module, r, request, provider, current),
        ),
        None => {
            let name = match source {
                ReadSource::Declared(n) => n.as_str(),
                ReadSource::AdHoc(r) => r.name(),
            };
            (
                serde_json::json!({"name": name, "declared": true}),
                unknown_read_fields(request, name, current),
            )
        }
    };
    let mut record = Map::new();
    record.insert("format".into(), Json::String(format.into()));
    record.insert(
        "behavior_version".into(),
        Json::String(module.behavior_version()),
    );
    record.insert("read".into(), identity);
    record.extend(fields);
    let diagnostics = if current {
        let diagnostics =
            serde_json::json!({"reasons":record.get("reasons"),"derived":record.get("derived")});
        if let Some(Json::Array(reasons)) = record.get_mut("reasons") {
            for reason in reasons {
                if let Some(o) = reason.as_object_mut() {
                    o.remove("loc");
                    o.remove("message");
                }
            }
        }
        if let Some(Json::Array(derived)) = record.get_mut("derived") {
            for entry in derived.iter_mut() {
                if let Some(o) = entry.as_object_mut() {
                    o.remove("name");
                }
            }
            derived.sort_by_key(Json::to_string);
        }
        if let Some(definition) = record.get_mut("read").and_then(|r| r.get_mut("definition")) {
            canonical_definition_locations(definition);
        }
        diagnostics
    } else {
        Json::Null
    };
    let mut record = ReadRecord::seal(record);
    record.diagnostics = diagnostics;
    ReadExecution::of(record)
}

/// Only wire provenance is normalized. Literal values remain domain data.
fn canonical_definition_locations(value: &mut Json) {
    match value {
        Json::Object(o) => {
            if o.contains_key("loc") {
                o.insert("loc".into(), serde_json::json!({"file":"","line":1}));
            }
            let literal = o.get("op").and_then(Json::as_str) == Some("lit");
            for (key, value) in o {
                if !literal || key != "value" {
                    canonical_definition_locations(value);
                }
            }
        }
        Json::Array(a) => a.iter_mut().for_each(canonical_definition_locations),
        _ => {}
    }
}

/// Admits a read document (an ad-hoc read) against `module`, with the same rules as a declared
/// read. The read never enters the module.
pub fn admit_read(module: &Module, doc: &str) -> Result<ReadItem, AdmissionResult> {
    let w = wire::decode_read_document(doc).map_err(decode_failure)?;
    let decls = Decls {
        commands: BTreeMap::new(),
        enums: module.enums.clone(),
        nominals: module.nominals.clone(),
        entities: module.entities.clone(),
        reads: module.reads.keys().cloned().collect(),
    };
    let mut errors: Vec<AdmissionError> = Vec::new();
    match typecheck::read_item(&decls, &module.derived, &w, false, &mut errors) {
        Some(r) if errors.is_empty() => Ok(r),
        _ => Err(AdmissionResult::failed(errors)),
    }
}

/// The frozen v1 read-record tag. New Wire 0.8 reads emit v2; inspect `format`
/// in the record when selecting an archive codec.
pub const READ_RECORD_FORMAT: &str = TAG_READ_RECORD;

/// The identity of a read record: `read:` and the hash of its canonical JSON without
/// `record_id`. It binds the read, the behavior version, the exact state, the parameters, the
/// observations and the result (FR-009).
pub fn record_id(record: &Json) -> Result<String, canonical::CanonicalError> {
    let mut r = record.clone();
    if let Json::Object(m) = &mut r {
        m.remove("record_id");
    }
    // Public arbitrary JSON is untrusted: a malformed value has no identity.
    let text = canonical::to_canonical_string(&r)?;
    let digest = if record["format"] == READ_RECORD_V2 {
        hash::read_record_v2(&text)
    } else {
        hash::read_record(&text)
    };
    Ok(format!("read:{}", hash_display(&digest)))
}

/// The evidence of one read (research R6): canonical, content-addressed, self-contained. A store
/// never keeps it; a trusted host may.
#[derive(Debug, Clone)]
pub struct ReadRecord {
    json: Json,
    diagnostics: Json,
}

impl PartialEq for ReadRecord {
    fn eq(&self, other: &Self) -> bool {
        self.json == other.json
    }
}

impl Eq for ReadRecord {}

impl ReadRecord {
    /// Seals a record built by the engine: adds its identity.
    pub(crate) fn seal(mut fields: Map<String, Json>) -> ReadRecord {
        fields.remove("record_id");
        let semantic = Json::Object(fields.clone());
        let text = semantic.to_string();
        let digest = if semantic["format"] == READ_RECORD_V2 {
            hash::read_record_v2(&text)
        } else {
            hash::read_record(&text)
        };
        let id = format!("read:{}", hash_display(&digest));
        fields.insert("record_id".into(), Json::String(id));
        ReadRecord {
            json: Json::Object(fields),
            diagnostics: Json::Null,
        }
    }

    /// Parses a read record and checks its format and identity.
    pub fn from_json(text: &str) -> Result<ReadRecord, String> {
        let json = canonical::decode_strict(text).map_err(|e| format!("not valid JSON: {e}"))?;
        validate_record(&json)?;
        if !matches!(
            json.get("format").and_then(Json::as_str),
            Some(READ_RECORD_FORMAT | READ_RECORD_V2)
        ) {
            return Err(format!(
                "format: expected \"{READ_RECORD_FORMAT}\" or \"{READ_RECORD_V2}\""
            ));
        }
        let stored = json
            .get("record_id")
            .and_then(Json::as_str)
            .ok_or("record_id: missing")?;
        let computed = record_id(&json).map_err(|e| e.to_string())?;
        if stored != computed {
            return Err(format!(
                "record_id: the record has {stored}, its content gives {computed}"
            ));
        }
        Ok(ReadRecord {
            json,
            diagnostics: Json::Null,
        })
    }

    /// Display provenance is outside the v2 semantic record and its identity.
    pub fn diagnostics(&self) -> &Json {
        &self.diagnostics
    }

    pub fn record_id(&self) -> &str {
        self.json["record_id"].as_str().unwrap_or_default()
    }

    /// `VALUE`, `EVALUATION_ERROR`, `INVALID_INPUT`, `INVALID_BINDING`, or the
    /// current-profile argument/state refusals `INVALID_STATE`/`INVALID_CONTEXT`.
    pub fn result(&self) -> &str {
        self.json["result"].as_str().unwrap_or_default()
    }

    pub fn as_json(&self) -> &Json {
        &self.json
    }

    /// Canonical JSON.
    pub fn to_json_string(&self) -> String {
        // Private engine-generated or strictly validated canonical-value JSON.
        self.json.to_string()
    }

    /// What a capability caller may see of this read: the declared result and the record's
    /// identity, never the trace, observations or failure operands (FR-016a).
    pub fn response(&self) -> ReadResponse {
        let mut reasons = self.json.get("reasons").cloned();
        if let Some(Json::Array(items)) = &mut reasons {
            for reason in items {
                if let Some(fields) = reason.as_object_mut() {
                    fields.remove("details");
                }
            }
        }
        ReadResponse {
            result: self.result().to_string(),
            value: self.json.get("value").cloned(),
            reasons,
            record_id: self.record_id().to_string(),
        }
    }
}

/// The capability response of a read (research R7): a distinct type from the record, with no
/// evidence fields. Only the engine builds it.
#[derive(Debug, Clone, PartialEq, Eq, Serialize)]
pub struct ReadResponse {
    result: String,
    #[serde(skip_serializing_if = "Option::is_none")]
    value: Option<Json>,
    #[serde(skip_serializing_if = "Option::is_none")]
    reasons: Option<Json>,
    record_id: String,
}

impl ReadResponse {
    pub fn result(&self) -> &str {
        &self.result
    }
    pub fn value(&self) -> Option<&Json> {
        self.value.as_ref()
    }
    pub fn reasons(&self) -> Option<&Json> {
        self.reasons.as_ref()
    }
    pub fn record_id(&self) -> &str {
        &self.record_id
    }
    /// Canonical JSON.
    pub fn to_json_string(&self) -> String {
        let mut fields = Map::new();
        fields.insert("result".into(), Json::String(self.result.clone()));
        fields.insert("record_id".into(), Json::String(self.record_id.clone()));
        if let Some(value) = &self.value {
            fields.insert("value".into(), value.clone());
        }
        if let Some(reasons) = &self.reasons {
            fields.insert("reasons".into(), reasons.clone());
        }
        Json::Object(fields).to_string()
    }
}

fn closed<'a>(
    v: &'a Json,
    required: &[&str],
    optional: &[&str],
) -> Result<&'a Map<String, Json>, String> {
    let o = v.as_object().ok_or("expected an object")?;
    for key in required {
        if !o.contains_key(*key) {
            return Err(format!("missing `{key}`"));
        }
    }
    for key in o.keys() {
        if !required.contains(&key.as_str()) && !optional.contains(&key.as_str()) {
            return Err(format!("unknown `{key}`"));
        }
    }
    Ok(o)
}
fn digest(v: &Json, prefix: &str) -> Result<(), String> {
    let s = v
        .as_str()
        .and_then(|s| s.strip_prefix(prefix))
        .ok_or("invalid digest")?;
    if s.len() != 64
        || !s
            .bytes()
            .all(|b| b.is_ascii_digit() || (b'a'..=b'f').contains(&b))
    {
        return Err("invalid digest".into());
    }
    Ok(())
}
fn validate_record(v: &Json) -> Result<(), String> {
    let current = v["format"] == READ_RECORD_V2;
    let o = closed(
        v,
        &[
            "format",
            "behavior_version",
            "read",
            "record_id",
            "data_version",
            "state",
            "input",
            "context",
            "result",
            "derived",
            "observed",
        ],
        &["value", "reasons", "facts", "refused_request"],
    )?;
    digest(&o["behavior_version"], "sha256:")?;
    digest(&o["record_id"], "read:sha256:")?;
    if !o["data_version"].is_string() {
        return Err("data_version: expected a string".into());
    }
    for field in ["state", "input", "context"] {
        if !o[field].is_object() {
            return Err(format!("{field}: expected an object"));
        }
    }
    let result = o["result"].as_str().ok_or("result: expected a string")?;
    if !current && matches!(result, "INVALID_STATE" | "INVALID_CONTEXT") {
        return Err("result: unsupported in legacy read records".into());
    }
    let read = closed(&o["read"], &["name", "declared"], &["hash", "definition"])?;
    if !read["name"].is_string() || !read["declared"].is_boolean() {
        return Err("read: invalid identity".into());
    }
    if let Some(h) = read.get("hash") {
        digest(h, "sha256:")?;
    } else if result != "INVALID_INPUT"
        || !o
            .get("reasons")
            .and_then(Json::as_array)
            .is_some_and(|a| a.iter().any(|r| r["code"] == "UNKNOWN_READ"))
    {
        return Err("read.hash: missing".into());
    }
    if read["declared"] == Json::Bool(false) {
        let def = read.get("definition").ok_or("read.definition: missing")?;
        wire::decode_read_document(&def.to_string())
            .map_err(|e| format!("read.definition: {e:?}"))?;
    } else if read.contains_key("definition") {
        return Err("declared read carries a definition".into());
    }
    match result {
        "VALUE" if o.contains_key("value") && !o.contains_key("reasons") => {}
        "EVALUATION_ERROR" | "INVALID_INPUT" | "INVALID_BINDING" | "INVALID_STATE"
        | "INVALID_CONTEXT"
            if !o.contains_key("value") =>
        {
            let reasons = o
                .get("reasons")
                .and_then(Json::as_array)
                .ok_or("reasons: missing")?;
            if reasons.is_empty() {
                return Err("refusal has no reasons".into());
            }
            for reason in reasons {
                let reason = if current {
                    closed(reason, &["code"], &["details", "path"])?
                } else {
                    closed(reason, &["code", "message"], &["loc", "details"])?
                };
                if !reason["code"].is_string() || (!current && !reason["message"].is_string()) {
                    return Err("invalid reason".into());
                }
                if let Some(details) = reason.get("details") {
                    crate::record::validate_semantic_failure(details)?;
                }
                if reason.get("path").is_some_and(|p| !p.is_string()) {
                    return Err("invalid reason path".into());
                }
                if let Some(loc) = reason.get("loc") {
                    let loc = closed(loc, &["file", "line"], &[])?;
                    if !loc["file"].is_string() || loc["line"].as_u64().is_none() {
                        return Err("invalid location".into());
                    }
                }
            }
        }
        _ => return Err("result/value/reasons are contradictory or unsupported".into()),
    }
    for d in o["derived"]
        .as_array()
        .ok_or("derived: expected an array")?
    {
        let d = if current {
            closed(d, &["hash", "phase_state", "value"], &[])?
        } else {
            closed(d, &["name", "hash", "phase_state", "value"], &[])?
        };
        digest(&d["hash"], "sha256:")?;
        if (!current && !d["name"].is_string()) || d["phase_state"] != "S" {
            return Err("invalid derived evidence".into());
        }
    }
    for path in o["observed"]
        .as_array()
        .ok_or("observed: expected an array")?
    {
        if !path
            .as_array()
            .is_some_and(|a| a.len() == 2 && a.iter().all(Json::is_string))
        {
            return Err("invalid observed read path".into());
        }
    }
    // Invalid input records intentionally retain the refused facts as audit data.
    if !matches!(
        result,
        "INVALID_INPUT" | "INVALID_STATE" | "INVALID_CONTEXT"
    ) && let Some(facts) = o.get("facts")
    {
        crate::facts::Facts::from_json(facts).map_err(|e| e.message)?;
    }
    if current && matches!(result, "VALUE" | "EVALUATION_ERROR") && !o.contains_key("facts") {
        return Err("facts: current reads require their complete replay snapshot".into());
    }
    if let Some(raw) = o.get("refused_request") {
        let raw = raw.as_str().ok_or("refused_request: expected a string")?;
        if !current
            || result != "INVALID_INPUT"
            || !crate::eval::is_refused_read_request(raw)
            || o["derived"] != serde_json::json!([])
            || o["observed"] != serde_json::json!([])
        {
            return Err("refused_request: not an unevaluated current transport refusal".into());
        }
    }
    Ok(())
}

/// What every read returns to the trusted host: the capability response, and the full record.
#[derive(Debug, Clone)]
pub struct ReadExecution {
    pub response: ReadResponse,
    pub record: ReadRecord,
}

impl ReadExecution {
    pub(crate) fn of(record: ReadRecord) -> ReadExecution {
        ReadExecution {
            response: record.response(),
            record,
        }
    }
}
