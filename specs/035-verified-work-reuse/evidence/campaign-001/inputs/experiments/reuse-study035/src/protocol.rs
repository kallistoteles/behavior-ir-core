//! Untrusted research metadata. Successful parsing never creates a checked basis.
use serde::de::{self, Deserialize, Deserializer, MapAccess, SeqAccess, Visitor};
use serde_json::{Map, Value};
use sha2::{Digest, Sha256};
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
    #[error("{0}")]
    Invalid(&'static str),
    #[error(transparent)]
    Json(#[from] serde_json::Error),
}
type Result<T> = std::result::Result<T, ArtifactError>;

struct Unique(Value);
impl<'de> Deserialize<'de> for Unique {
    fn deserialize<D: Deserializer<'de>>(d: D) -> std::result::Result<Self, D::Error> {
        struct V;
        impl<'de> Visitor<'de> for V {
            type Value = Unique;
            fn expecting(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
                f.write_str("bounded integer JSON without duplicate keys")
            }
            fn visit_bool<E: de::Error>(self, v: bool) -> std::result::Result<Unique, E> {
                Ok(Unique(Value::Bool(v)))
            }
            fn visit_i64<E: de::Error>(self, v: i64) -> std::result::Result<Unique, E> {
                Ok(Unique(v.into()))
            }
            fn visit_u64<E: de::Error>(self, v: u64) -> std::result::Result<Unique, E> {
                Ok(Unique(v.into()))
            }
            fn visit_f64<E: de::Error>(self, _: f64) -> std::result::Result<Unique, E> {
                Err(E::custom("NonIntegerNumber"))
            }
            fn visit_str<E: de::Error>(self, v: &str) -> std::result::Result<Unique, E> {
                Ok(Unique(v.into()))
            }
            fn visit_string<E: de::Error>(self, v: String) -> std::result::Result<Unique, E> {
                Ok(Unique(v.into()))
            }
            fn visit_unit<E: de::Error>(self) -> std::result::Result<Unique, E> {
                Ok(Unique(Value::Null))
            }
            fn visit_none<E: de::Error>(self) -> std::result::Result<Unique, E> {
                Ok(Unique(Value::Null))
            }
            fn visit_seq<A: SeqAccess<'de>>(
                self,
                mut a: A,
            ) -> std::result::Result<Unique, A::Error> {
                let mut values = vec![];
                while let Some(Unique(v)) = a.next_element()? {
                    values.push(v);
                }
                Ok(Unique(Value::Array(values)))
            }
            fn visit_map<A: MapAccess<'de>>(
                self,
                mut a: A,
            ) -> std::result::Result<Unique, A::Error> {
                let mut values = Map::new();
                while let Some(k) = a.next_key::<String>()? {
                    if values.contains_key(&k) {
                        return Err(de::Error::custom("DuplicateKey"));
                    }
                    let Unique(v) = a.next_value()?;
                    values.insert(k, v);
                }
                Ok(Unique(Value::Object(values)))
            }
        }
        d.deserialize_any(V)
    }
}

pub fn parse_json(raw: &[u8], limit: usize) -> Result<Value> {
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
    let Unique(v) = Unique::deserialize(&mut d)?;
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
    let mut h = Sha256::new();
    h.update(b"core035.research.v1\0");
    h.update(body);
    Ok(format!("{:x}", h.finalize()))
}
