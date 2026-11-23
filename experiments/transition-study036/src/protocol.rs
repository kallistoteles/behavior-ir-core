//! Untrusted research metadata. Successful parsing never creates a checked basis.
use serde::de::{self, Deserialize, Deserializer, MapAccess, SeqAccess, Visitor};
use serde_json::{Map, Value};
use std::{collections::BTreeMap, fmt};

pub const DOCUMENT_BOUND: usize = 16 * 1024 * 1024;
pub const PACKET_BOUND: usize = 64 * 1024 * 1024;
pub const CORE_RECORD_BOUND: usize = 8 * 1024 * 1024;
pub const DEPTH_BOUND: usize = 128;
pub const ID_BOUND: usize = 128;
pub const CASE_BOUND: usize = 4096;
pub const OBSERVATION_BOUND: usize = 16384;

#[derive(Debug, thiserror::Error)]
pub enum ArtifactError {
    #[error("{0:}")]
    Invalid(&'static str),
    #[error(transparent)]
    Json(#[from] serde_json::Error),
}
type Result<T> = std::result::Result<T, ArtifactError>;

struct Unique<const ALLOW_FLOAT: bool>(Value);
impl<'de, const ALLOW_FLOAT: bool> Deserialize<'de> for Unique<ALLOW_FLOAT> {
    fn deserialize<D: Deserializer<'de>>(d: D) -> std::result::Result<Self, D::Error> {
        struct V<const ALLOW_FLOAT: bool>;
        impl<'de, const ALLOW_FLOAT: bool> Visitor<'de> for V<ALLOW_FLOAT> {
            type Value = Unique<ALLOW_FLOAT>;
            fn expecting(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
                f.write_str("bounded integer JSON without duplicate keys")
            }
            fn visit_bool<E: de::Error>(
                self,
                v: bool,
            ) -> std::result::Result<Unique<ALLOW_FLOAT>, E> {
                Ok(Unique(Value::Bool(v)))
            }
            fn visit_i64<E: de::Error>(
                self,
                v: i64,
            ) -> std::result::Result<Unique<ALLOW_FLOAT>, E> {
                Ok(Unique(v.into()))
            }
            fn visit_u64<E: de::Error>(
                self,
                v: u64,
            ) -> std::result::Result<Unique<ALLOW_FLOAT>, E> {
                Ok(Unique(v.into()))
            }
            fn visit_f64<E: de::Error>(
                self,
                v: f64,
            ) -> std::result::Result<Unique<ALLOW_FLOAT>, E> {
                if !ALLOW_FLOAT {
                    return Err(E::custom("NonIntegerNumber"));
                }
                serde_json::Number::from_f64(v)
                    .map(|number| Unique(Value::Number(number)))
                    .ok_or_else(|| E::custom("NonFiniteNumber"))
            }
            fn visit_str<E: de::Error>(
                self,
                v: &str,
            ) -> std::result::Result<Unique<ALLOW_FLOAT>, E> {
                Ok(Unique(v.into()))
            }
            fn visit_string<E: de::Error>(
                self,
                v: String,
            ) -> std::result::Result<Unique<ALLOW_FLOAT>, E> {
                Ok(Unique(v.into()))
            }
            fn visit_unit<E: de::Error>(self) -> std::result::Result<Unique<ALLOW_FLOAT>, E> {
                Ok(Unique(Value::Null))
            }
            fn visit_none<E: de::Error>(self) -> std::result::Result<Unique<ALLOW_FLOAT>, E> {
                Ok(Unique(Value::Null))
            }
            fn visit_seq<A: SeqAccess<'de>>(
                self,
                mut a: A,
            ) -> std::result::Result<Unique<ALLOW_FLOAT>, A::Error> {
                let mut values = vec![];
                while let Some(Unique(v)) = a.next_element::<Unique<ALLOW_FLOAT>>()? {
                    values.push(v);
                }
                Ok(Unique(Value::Array(values)))
            }
            fn visit_map<A: MapAccess<'de>>(
                self,
                mut a: A,
            ) -> std::result::Result<Unique<ALLOW_FLOAT>, A::Error> {
                let mut values = Map::new();
                while let Some(k) = a.next_key::<String>()? {
                    if values.contains_key(&k) {
                        return Err(de::Error::custom("DuplicateKey"));
                    }
                    let Unique(v) = a.next_value::<Unique<ALLOW_FLOAT>>()?;
                    values.insert(k, v);
                }
                Ok(Unique(Value::Object(values)))
            }
        }
        d.deserialize_any(V::<ALLOW_FLOAT>)
    }
}

pub fn parse_json(raw: &[u8], limit: usize) -> Result<Value> {
    parse_json_numbers::<false>(raw, limit)
}

/// Preserve the original serde_json number domain in semantic payloads.
/// Counter/envelope parsing continues to use the integer-only entry above.
pub fn parse_payload_json(raw: &[u8], limit: usize) -> Result<Value> {
    parse_json_numbers::<true>(raw, limit)
}

fn parse_json_numbers<const ALLOW_FLOAT: bool>(raw: &[u8], limit: usize) -> Result<Value> {
    if raw.len() > limit {
        return Err(ArtifactError::Invalid("ByteBound"));
    }
    // Scan before recursive parsing/allocation; escaped braces do not add depth.
    let (mut depth, mut string, mut escaped) = (0usize, false, false);
    for &b in raw {
        if string {
            if escaped {
                escaped = false;
            } else if b == b'\\' {
                escaped = true;
            } else if b == b'"' {
                string = false;
            }
        } else {
            match b {
                b'"' => string = true,
                b'[' | b'{' => {
                    depth += 1;
                    if depth > DEPTH_BOUND {
                        return Err(ArtifactError::Invalid("DepthBound"));
                    }
                }
                b']' | b'}' => depth = depth.saturating_sub(1),
                _ => {}
            }
        }
    }
    let mut d = serde_json::Deserializer::from_slice(raw);
    d.disable_recursion_limit(); // The explicit preceding scan enforces depth128.
    let Unique(v) = Unique::<ALLOW_FLOAT>::deserialize(&mut d)?;
    d.end()?;
    Ok(v)
}

pub fn validate_outcomes(v: &Value) -> Result<()> {
    let m = v
        .as_object()
        .ok_or(ArtifactError::Invalid("ObjectRequired"))?;
    let allowed = [
        "format",
        "case_id",
        "sample_id",
        "attempt_id",
        "role",
        "treatment",
        "mode",
        "input_manifest",
        "prepared_manifest",
        "subject",
        "semantic",
        "mathematical",
        "operational",
        "cost",
        "candidate",
        "product_adoption",
        "resources",
        "claim_refs",
        "premise_refs",
        "artifact_refs",
        "proof_refs",
        "correspondence_refs",
        "diagnostics",
        "stop_reason",
        "control_result",
    ];
    if m.keys().any(|k| !allowed.contains(&k.as_str())) {
        return Err(ArtifactError::Invalid("UnknownField"));
    }
    if !v
        .get("format")
        .and_then(Value::as_str)
        .is_some_and(|s| ["core035.observation.v1"].contains(&s))
    {
        return Err(ArtifactError::Invalid("OutcomeEnum"));
    }
    if !v
        .get("semantic")
        .and_then(Value::as_str)
        .is_some_and(|s| ["equal", "mismatch", "not_evaluated"].contains(&s))
    {
        return Err(ArtifactError::Invalid("OutcomeEnum"));
    }
    if !v
        .get("mathematical")
        .and_then(Value::as_str)
        .is_some_and(|s| {
            [
                "checked_for_fragment",
                "refuted",
                "unsupported",
                "unestablished",
                "not_run",
            ]
            .contains(&s)
        })
    {
        return Err(ArtifactError::Invalid("OutcomeEnum"));
    }
    if !v
        .get("operational")
        .and_then(Value::as_str)
        .is_some_and(|s| {
            [
                "completed",
                "build_failed",
                "tool_failed",
                "resource_stopped",
                "interrupted",
                "invalid_archive",
                "not_run",
            ]
            .contains(&s)
        })
    {
        return Err(ArtifactError::Invalid("OutcomeEnum"));
    }
    if !v
        .get("cost")
        .and_then(Value::as_str)
        .is_some_and(|s| ["measured", "not_measured", "not_comparable", "confounded"].contains(&s))
    {
        return Err(ArtifactError::Invalid("OutcomeEnum"));
    }
    if !v.get("candidate").and_then(Value::as_str).is_some_and(|s| {
        [
            "supported_for_fragment",
            "conditional",
            "rejected",
            "undetermined",
        ]
        .contains(&s)
    }) {
        return Err(ArtifactError::Invalid("OutcomeEnum"));
    }
    if !v
        .get("product_adoption")
        .and_then(Value::as_str)
        .is_some_and(|s| ["unactivated"].contains(&s))
    {
        return Err(ArtifactError::Invalid("OutcomeEnum"));
    }

    for (key, values) in [
        ("treatment", &["R", "G", "V", "GV"][..]),
        ("mode", &["timing", "work"][..]),
        (
            "control_result",
            &[
                "targeted_rejection",
                "unexpected_acceptance",
                "unexpected_rejection",
                "operationally_unresolved",
                "not_applicable",
            ][..],
        ),
    ] {
        if v.get(key).is_some()
            && !v
                .get(key)
                .and_then(Value::as_str)
                .is_some_and(|s| values.contains(&s))
        {
            return Err(ArtifactError::Invalid("OutcomeEnum"));
        }
    }
    let resources = v
        .get("resources")
        .and_then(Value::as_object)
        .ok_or(ArtifactError::Invalid("ResourcesRequired"))?;
    for (key, value) in resources {
        if value.is_null()
            && !resources
                .get(&format!("{key}_reason"))
                .and_then(Value::as_str)
                .is_some_and(|s| !s.is_empty())
        {
            return Err(ArtifactError::Invalid("UnknownResourceReason"));
        }
    }
    for key in ["case_id", "sample_id", "attempt_id", "role"] {
        if v.get(key).is_some_and(|x| {
            !x.as_str()
                .is_some_and(|s| !s.is_empty() && s.len() <= ID_BOUND)
        }) {
            return Err(ArtifactError::Invalid("IdentifierBound"));
        }
    }
    if matches!(
        v["mathematical"].as_str(),
        Some("checked_for_fragment" | "refuted")
    ) && v["operational"] != "completed"
    {
        return Err(ArtifactError::Invalid("ProofOperationalMismatch"));
    }
    if v["mathematical"] == "checked_for_fragment" {
        for key in ["proof_refs", "premise_refs", "artifact_refs"] {
            if !v
                .get(key)
                .and_then(Value::as_array)
                .is_some_and(|a| !a.is_empty())
            {
                return Err(ArtifactError::Invalid("EvidenceRequired"));
            }
        }
    }
    for key in ["artifact_refs", "proof_refs", "claim_refs", "premise_refs"] {
        if v.get(key)
            .is_some_and(|x| !x.as_array().is_some_and(|a| a.len() <= OBSERVATION_BOUND))
        {
            return Err(ArtifactError::Invalid("ObservationBound"));
        }
    }
    Ok(()) // Parsing metadata never establishes any referenced claim.
}
pub fn validate_subject(expected: &Value, actual: &Value) -> Result<()> {
    if !expected.is_object() || expected != actual {
        return Err(ArtifactError::Invalid("ExpectedSubjectDiffers"));
    }
    Ok(())
}
pub fn validate_graph(records: &BTreeMap<String, Vec<String>>) -> Result<()> {
    let mut colors = BTreeMap::new();
    for root in records.keys() {
        let mut stack = vec![(root.as_str(), false)];
        while let Some((id, leaving)) = stack.pop() {
            if id.is_empty() || id.len() > ID_BOUND {
                return Err(ArtifactError::Invalid("IdentifierBound"));
            }
            let edges = records
                .get(id)
                .ok_or(ArtifactError::Invalid("DanglingReference"))?;
            if leaving {
                colors.insert(id, 2);
                continue;
            }
            match colors.get(id) {
                Some(1) => return Err(ArtifactError::Invalid("ReferenceCycle")),
                Some(2) => continue,
                _ => {}
            }
            colors.insert(id, 1);
            stack.push((id, true));
            for edge in edges.iter().rev() {
                stack.push((edge, false));
            }
        }
    }
    Ok(())
}
fn canonical(v: &Value) -> Result<Value> {
    Ok(match v {
        Value::Number(n) if n.is_f64() => return Err(ArtifactError::Invalid("NonIntegerNumber")),
        Value::Array(a) => Value::Array(a.iter().map(canonical).collect::<Result<_>>()?),
        Value::Object(m) => {
            let sorted: BTreeMap<_, _> = m.iter().collect();
            let mut out = Map::new();
            for (k, v) in sorted {
                out.insert(k.clone(), canonical(v)?);
            }
            Value::Object(out)
        }
        _ => v.clone(),
    })
}
pub fn semantic_digest(v: &Value) -> Result<String> {
    let mut v = v.clone();
    let m = v
        .as_object_mut()
        .ok_or(ArtifactError::Invalid("ObjectRequired"))?;
    for key in [
        "diagnostics",
        "treatment",
        "mode",
        "resources",
        "timings",
        "worker",
    ] {
        m.remove(key);
    }
    let body = serde_json::to_vec(&canonical(&v)?)?;
    Ok(crate::serialization::semantic_sha256(body))
}

// New control records are not used as legacy Core authority.
#[derive(Debug, serde::Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum Mode {
    Timing,
    Diagnostic,
}
#[derive(Debug, serde::Deserialize)]
enum RequestFormat {
    #[serde(rename = "core036.request.v1")]
    V1,
}
#[derive(Debug, serde::Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Request {
    #[serde(rename = "format")]
    _format: RequestFormat,
    pub mode: Mode,
    #[serde(deserialize_with = "bounded_id")]
    pub stream: String,
}

pub(crate) fn bounded_id<'de, D: serde::Deserializer<'de>>(
    d: D,
) -> std::result::Result<String, D::Error> {
    let value = String::deserialize(d)?;
    if value.is_empty() || value.len() > 256 {
        return Err(serde::de::Error::custom("IDByteBound"));
    }
    Ok(value)
}

// Revision-2 research requests name raw original inputs by byte reference.
// Parsing this envelope cannot establish a ground or a source correspondence.
pub const CONTROL_BOUND_V2: usize = 4 * 1024 * 1024;
pub const MANIFEST_BOUND_V2: usize = 32 * 1024 * 1024;
pub const ARTIFACT_BOUND_V2: usize = 64 * 1024 * 1024;
pub const REFERENCE_BOUND_V2: usize = 20_000;

#[derive(Debug, serde::Deserialize, serde::Serialize, PartialEq, Eq)]
#[serde(deny_unknown_fields)]
pub struct ArtifactRefV2 {
    #[serde(deserialize_with = "bounded_id")]
    pub root_id: String,
    pub path: String,
    pub bytes: u64,
    pub sha256: String,
}
impl ArtifactRefV2 {
    pub(crate) fn validate(&self) -> Result<()> {
        if self.path.is_empty() || self.path.len() > 1024 || !reference_path_valid(&self.path) {
            return Err(ArtifactError::Invalid("V2ReferencePath"));
        }
        if self.sha256.len() != 64 || !reference_digest_valid(&self.sha256) {
            return Err(ArtifactError::Invalid("V2ReferenceDigest"));
        }
        Ok(())
    }
}

fn reference_path_valid(path: &str) -> bool {
    // Slash, dot, backslash and NUL are ASCII bytes in every UTF-8 string.
    // A final synthetic slash checks the last segment in the same loop.
    let bytes = path.as_bytes();
    let (mut index, mut length, mut dots) = (0usize, 0usize, true);
    while index <= bytes.len() {
        let byte = if index == bytes.len() {
            b'/'
        } else {
            bytes[index]
        };
        index += 1;
        if byte == b'\\' || byte == 0 {
            return false;
        }
        if byte == b'/' {
            if length == 0 || (dots && length <= 2) {
                return false;
            }
            length = 0;
            dots = true;
        } else {
            length += 1;
            dots = dots && byte == b'.';
        }
    }
    true
}

fn reference_digest_valid(digest: &str) -> bool {
    for byte in digest.bytes() {
        if !(byte.is_ascii_digit() || (b'a'..=b'f').contains(&byte)) {
            return false;
        }
    }
    true
}

#[derive(Debug, serde::Deserialize)]
enum RequestFormatV2 {
    #[serde(rename = "core036.request.v2")]
    V2,
}
#[derive(Debug, serde::Deserialize)]
pub(crate) enum UnactivatedV2 {
    #[serde(rename = "unactivated")]
    Unactivated,
}
#[derive(Debug, serde::Deserialize)]
enum DeclaredV2 {
    #[serde(rename = "declared")]
    Declared,
}
#[derive(Debug, serde::Deserialize)]
enum BlockedV2 {
    #[serde(rename = "blocked")]
    Blocked,
}
#[derive(Debug, serde::Deserialize)]
#[serde(deny_unknown_fields)]
pub(crate) struct RequestOutcomeV2 {
    #[serde(rename = "operational")]
    _operational: DeclaredV2,
    #[serde(rename = "acceptance")]
    _acceptance: BlockedV2,
}

#[derive(Debug, serde::Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum EndpointV2 {
    LegacyFullDelivery,
}
#[derive(Debug, serde::Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum CaseKindV2 {
    Operation,
    Session,
}
#[derive(Debug, serde::Deserialize, PartialEq, Eq)]
#[serde(deny_unknown_fields)]
pub struct RawRequestV2 {
    pub request_ref: ArtifactRefV2,
    pub context_ref: ArtifactRefV2,
    pub metadata_ref: ArtifactRefV2,
}
#[derive(Debug, serde::Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CaseV2 {
    #[serde(deserialize_with = "bounded_id")]
    pub case_id: String,
    pub kind: CaseKindV2,
    #[serde(rename = "N")]
    pub population: u64,
    #[serde(rename = "H")]
    pub history: u64,
    pub requests: Vec<RawRequestV2>,
    #[serde(default)]
    pub invalidation_before: Option<u64>,
}
#[derive(Debug, serde::Deserialize)]
#[serde(deny_unknown_fields)]
pub struct RequestV2 {
    #[serde(rename = "format")]
    _format: RequestFormatV2,
    #[serde(deserialize_with = "bounded_id")]
    pub work_id: String,
    #[serde(deserialize_with = "bounded_id")]
    pub record_id: String,
    pub specification_ref: ArtifactRefV2,
    pub source_subject_ref: ArtifactRefV2,
    pub inputs: Vec<ArtifactRefV2>,
    #[serde(rename = "outcome")]
    _outcome: RequestOutcomeV2,
    pub reason: String,
    pub blocking_ref: ArtifactRefV2,
    #[serde(rename = "product_adoption")]
    _product_adoption: UnactivatedV2,
    pub mode: Mode,
    pub endpoint: EndpointV2,
    pub cases: Vec<CaseV2>,
}

// Tail-position unit validators keep the original first-error order while
// making each loop's return boundary explicit to the pinned extractor.
fn validate_v2_request_references(request: &RequestV2) -> Result<()> {
    request.specification_ref.validate()?;
    request.source_subject_ref.validate()?;
    request.blocking_ref.validate()?;
    validate_v2_references(&request.inputs)
}

pub(crate) fn validate_v2_references(references: &[ArtifactRefV2]) -> Result<()> {
    for reference in references {
        reference.validate()?;
    }
    Ok(())
}

pub(crate) fn validate_v2_operation_references(operation: &RawRequestV2) -> Result<()> {
    operation.request_ref.validate()?;
    operation.context_ref.validate()?;
    operation.metadata_ref.validate()
}

fn validate_v2_case_requests(case: &CaseV2) -> Result<()> {
    for operation in &case.requests {
        validate_v2_operation_references(operation)?;
    }
    Ok(())
}

fn validate_v2_cases(request: &RequestV2) -> Result<()> {
    let mut cases = std::collections::BTreeSet::new();
    for case in &request.cases {
        if !(2..=256).contains(&case.population)
            || case.history > 128
            || case.requests.is_empty()
            || case.requests.len() > 128
            || !cases.insert(case.case_id.as_str())
            || case.invalidation_before.is_some_and(|before| {
                !matches!(case.kind, CaseKindV2::Session)
                    || before != case.requests.len() as u64 / 2 + 1
            })
        {
            return Err(ArtifactError::Invalid("V2WorkloadBound"));
        }
        validate_v2_case_requests(case)?;
    }
    Ok(())
}

pub fn parse_request_v2(raw: &[u8]) -> Result<RequestV2> {
    // Only control refs are parsed here. Original semantic JSON is read by the
    // original input path, preserving its original schema/numeric domain.
    let value = parse_json(raw, CONTROL_BOUND_V2)?;
    let request: RequestV2 = serde_json::from_value(value)?;
    if request.inputs.len() > REFERENCE_BOUND_V2
        || request.reason.trim().is_empty()
        || request.cases.is_empty()
    {
        return Err(ArtifactError::Invalid("V2EnvelopeBound"));
    }
    validate_v2_request_references(&request)?;
    validate_v2_cases(&request)?;
    Ok(request)
}
