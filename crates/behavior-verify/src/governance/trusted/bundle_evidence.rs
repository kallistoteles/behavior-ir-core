//! Private observed-evidence boundary. Integrity is checked before ordinary
//! Facts construction can normalize arrays into maps or sets. This proves no
//! historical truth, authority, or permission to publish a transition.

use super::{R, TrustedError};
use crate::hashing::{TAG_QUERY_RESULT, document_hash};
use behavior_core::facts::Facts;
use serde::{Deserialize, Serialize};
use serde_json::{Map, Value as Json};
use std::cmp::Ordering;

#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct BundleEvidence {
    #[serde(skip_serializing_if = "Option::is_none")]
    existence: Option<Vec<Existence>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    identities: Option<Vec<Identity>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    references: Option<Vec<Reference>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    queries: Option<Vec<Query>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    fields: Option<Vec<Field>>,
}

#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Existence {
    entity: String,
    id: String,
    exists: bool,
}
#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Identity {
    entity: String,
    id: String,
    used: bool,
}
#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Reference {
    entity: String,
    id: String,
    incoming: Vec<Edge>,
}
#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Edge {
    entity: String,
    id: String,
    field: String,
}
#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Query {
    instance: String,
    definition: String,
    entity: String,
    captures: Vec<Capture>,
    members: Vec<Member>,
    result_hash: String,
}
#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Capture {
    read: String,
    value: Json,
}
#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Member {
    id: String,
}
#[derive(Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Field {
    entity: String,
    id: String,
    field: String,
    value: Json,
}

/// Only checked construction can obtain this owned value. It cannot certify a
/// later mutation of the public bundle or rewrite the candidate's original claim.
pub(super) struct ValidatedBundleEvidence {
    evidence: BundleEvidence,
}

fn problem(path: &str, cause: impl std::fmt::Display) -> TrustedError {
    TrustedError {
        code: "INVALID_CANDIDATE",
        message: format!("{path}: {cause}"),
    }
}

#[derive(Clone, Copy)]
enum Shape {
    String,
    Boolean,
    Array,
    Value,
}

fn product<'a>(
    value: &'a Json,
    path: &str,
    fields: &[(&str, Shape)],
    required: bool,
) -> R<&'a Map<String, Json>> {
    let object = value
        .as_object()
        .ok_or_else(|| problem(path, "expected an object"))?;
    for name in object.keys() {
        if !fields.iter().any(|(field, _)| field == name) {
            return Err(problem(&format!("{path}.{name}"), "unknown field"));
        }
    }
    for (name, shape) in fields {
        let field_path = format!("{path}.{name}");
        match object.get(*name) {
            None if required => return Err(problem(&field_path, "required field is missing")),
            None => {}
            Some(value) => {
                let (valid, expected) = match shape {
                    Shape::String => (value.is_string(), "string"),
                    Shape::Boolean => (value.is_boolean(), "boolean"),
                    Shape::Array => (value.is_array(), "array"),
                    Shape::Value => (true, "canonical value"),
                };
                if !valid {
                    return Err(problem(&field_path, format!("expected a {expected}")));
                }
            }
        }
    }
    Ok(object)
}

fn shape(value: &Json) -> R<()> {
    use Shape::{Array, Boolean, String, Value};
    let root = product(
        value,
        "read_facts",
        &[
            ("existence", Array),
            ("identities", Array),
            ("references", Array),
            ("queries", Array),
            ("fields", Array),
        ],
        false,
    )?;
    // Product presence checks precede serde: a missing Json-valued field must
    // never become an explicit null, and present optional sections must be arrays.
    for (section, fields) in [
        (
            "existence",
            &[("entity", String), ("id", String), ("exists", Boolean)][..],
        ),
        (
            "identities",
            &[("entity", String), ("id", String), ("used", Boolean)][..],
        ),
        (
            "references",
            &[("entity", String), ("id", String), ("incoming", Array)][..],
        ),
        (
            "queries",
            &[
                ("instance", String),
                ("definition", String),
                ("entity", String),
                ("captures", Array),
                ("members", Array),
                ("result_hash", String),
            ][..],
        ),
        (
            "fields",
            &[
                ("entity", String),
                ("id", String),
                ("field", String),
                ("value", Value),
            ][..],
        ),
    ] {
        if let Some(items) = root.get(section).and_then(Json::as_array) {
            for (index, item) in items.iter().enumerate() {
                let path = format!("read_facts.{section}[{index}]");
                let object = product(item, &path, fields, true)?;
                for (child, child_fields) in [
                    (
                        "incoming",
                        &[("entity", String), ("id", String), ("field", String)][..],
                    ),
                    ("captures", &[("read", String), ("value", Value)][..]),
                    ("members", &[("id", String)][..]),
                ] {
                    if let Some(items) = object.get(child).and_then(Json::as_array) {
                        for (index, item) in items.iter().enumerate() {
                            product(
                                item,
                                &format!("{path}.{child}[{index}]"),
                                child_fields,
                                true,
                            )?;
                        }
                    }
                }
            }
        }
    }
    Ok(())
}

fn ordered<T>(items: &[T], path: &str, compare: impl Fn(&T, &T) -> Ordering) -> R<()> {
    if let Some(index) = items
        .windows(2)
        .position(|pair| compare(&pair[0], &pair[1]) != Ordering::Less)
    {
        return Err(problem(
            &format!("{path}[{}]", index + 1),
            "collections must be canonical and unique",
        ));
    }
    Ok(())
}

impl ValidatedBundleEvidence {
    pub(super) fn from_json(value: &Json) -> R<Self> {
        shape(value)?;
        // The caller already ran strict raw decoding. Retain the canonical value
        // invariant for this private constructor too; raw duplicate detection
        // remains exclusively the whole-document decoder's obligation.
        behavior_core::canonical::to_canonical_string(value)
            .map_err(|e| problem("read_facts", e))?;
        let evidence: BundleEvidence =
            serde_json::from_value(value.clone()).map_err(|e| problem("read_facts", e))?;
        ordered(
            evidence.existence.as_deref().unwrap_or(&[]),
            "read_facts.existence",
            |a, b| (&a.entity, &a.id).cmp(&(&b.entity, &b.id)),
        )?;
        ordered(
            evidence.identities.as_deref().unwrap_or(&[]),
            "read_facts.identities",
            |a, b| (&a.entity, &a.id).cmp(&(&b.entity, &b.id)),
        )?;
        ordered(
            evidence.references.as_deref().unwrap_or(&[]),
            "read_facts.references",
            |a, b| (&a.entity, &a.id).cmp(&(&b.entity, &b.id)),
        )?;
        for (index, reference) in evidence.references.iter().flatten().enumerate() {
            ordered(
                &reference.incoming,
                &format!("read_facts.references[{index}].incoming"),
                |a, b| (&a.entity, &a.id, &a.field).cmp(&(&b.entity, &b.id, &b.field)),
            )?;
        }
        ordered(
            evidence.fields.as_deref().unwrap_or(&[]),
            "read_facts.fields",
            |a, b| (&a.entity, &a.id, &a.field).cmp(&(&b.entity, &b.id, &b.field)),
        )?;
        ordered(
            evidence.queries.as_deref().unwrap_or(&[]),
            "read_facts.queries",
            |a, b| a.instance.cmp(&b.instance),
        )?;
        for (index, query) in evidence.queries.iter().flatten().enumerate() {
            let path = format!("read_facts.queries[{index}]");
            ordered(&query.captures, &format!("{path}.captures"), |a, b| {
                a.read.cmp(&b.read)
            })?;
            ordered(&query.members, &format!("{path}.members"), |a, b| {
                a.id.cmp(&b.id)
            })?;
            let hash_path = format!("{path}.result_hash");
            if !query
                .result_hash
                .strip_prefix("sha256:")
                .is_some_and(|hex| {
                    hex.len() == 64
                        && hex
                            .bytes()
                            .all(|b| b.is_ascii_digit() || (b'a'..=b'f').contains(&b))
                })
            {
                return Err(problem(&hash_path, "malformed result hash"));
            }
            let members =
                serde_json::to_value(&query.members).map_err(|e| problem(&hash_path, e))?;
            let expected =
                document_hash(TAG_QUERY_RESULT, &members).map_err(|e| problem(&hash_path, e))?;
            if query.result_hash != expected {
                return Err(problem(
                    &hash_path,
                    "result hash differs from canonical members",
                ));
            }
        }
        Ok(Self { evidence })
    }

    pub(super) fn into_facts(self) -> R<Facts> {
        let mut projected =
            serde_json::to_value(self.evidence).map_err(|e| problem("read_facts", e))?;
        if let Some(queries) = projected.get_mut("queries").and_then(Json::as_array_mut) {
            for query in queries {
                // Serialization of the closed typed Query establishes this
                // object shape; report a typed invariant failure if it diverges.
                let object = query
                    .as_object_mut()
                    .ok_or_else(|| problem("read_facts.queries", "internal projection shape"))?;
                object.remove("result_hash");
            }
        }
        Facts::from_json(&projected).map_err(|e| problem("read_facts", e.message))
    }
}

#[cfg(test)]
#[allow(clippy::unwrap_used, clippy::expect_used)]
mod tests {
    use super::super::GovernanceCandidate;
    use super::*;
    use serde_json::json;
    use sha2::{Digest, Sha256};
    use std::collections::BTreeSet;
    use std::path::Path;

    fn package() -> (Vec<u8>, Json) {
        let dir = Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../../tests/fixtures/strict-bundle-evidence");
        let bytes = std::fs::read(dir.join("projection-cases.json"))
            .expect("reviewed producer package must exist");
        let manifest = std::fs::read_to_string(dir.join("projection-manifest.json"))
            .expect("reviewed custody manifest must exist");
        (
            bytes,
            behavior_core::canonical::decode_strict(&manifest).unwrap(),
        )
    }

    fn checked_cases(bytes: &[u8], manifest: &Json) -> Result<Vec<Json>, String> {
        let digest = format!("sha256:{:x}", Sha256::digest(bytes));
        if manifest["format"] != "behavior.test.projection_manifest.v1"
            || manifest["package_digest"] != digest
        {
            return Err("missing or mismatched package custody".into());
        }
        let document = behavior_core::canonical::decode_strict(
            std::str::from_utf8(bytes).map_err(|e| e.to_string())?,
        )
        .map_err(|e| e.to_string())?;
        if document["format"] != "behavior.test.projection_cases.v1" {
            return Err("unsupported producer package".into());
        }
        let cases = document["cases"].as_array().ok_or("missing cases")?;
        let profiles = manifest["profiles"].as_array().ok_or("missing profiles")?;
        if cases.is_empty()
            || manifest["case_count"].as_u64() != Some(cases.len() as u64)
            || cases.len() != profiles.len()
        {
            return Err("case/profile coverage mismatch".into());
        }
        let mut ids = BTreeSet::new();
        for (case, profile) in cases.iter().zip(profiles) {
            let id = case["id"].as_str().ok_or("missing case identity")?;
            if !ids.insert(id) {
                return Err("duplicate case identity".into());
            }
            for field in [
                "id",
                "producer",
                "support_cell",
                "wire_version",
                "record_version",
                "semantic_profile",
            ] {
                if case.get(field).is_none() || case[field] != profile[field] {
                    return Err(format!("{id}: mismatched {field} custody"));
                }
            }
            let record = &case["original_inner_record"];
            if record["result"] != "ALLOW"
                || record["record_version"] != case["record_version"]
                || record["semantic_profile"] != case["semantic_profile"]
                || case["candidate"]["content"]["record"] != *record
                || case["checked_bundle"]["record"] != *record
            {
                return Err(format!("{id}: stale record/profile binding"));
            }
        }
        for key in [
            "capture_revision",
            "capture_command",
            "external_run",
            "oracle",
        ] {
            if !manifest[key].as_str().is_some_and(|s| !s.is_empty()) {
                return Err(format!("missing capture custody {key}"));
            }
        }
        if !manifest["toolchain"].is_object() || !manifest["working_source_digests"].is_object() {
            return Err("missing source/toolchain custody".into());
        }
        Ok(cases.clone())
    }

    #[test]
    fn producer_fixture_projection_is_exact() {
        let (bytes, manifest) = package();
        let cases = checked_cases(&bytes, &manifest).unwrap();
        for case in cases {
            let id = case["id"].as_str().unwrap();
            // The expected oracle is independently upstream of bundle integrity:
            // actual record observations, without its separate parent universe.
            let mut record_facts = case["original_inner_record"]
                .get("facts")
                .cloned()
                .unwrap_or_else(|| json!({}));
            record_facts.as_object_mut().unwrap().remove("universe");
            let expected = Facts::from_json(&record_facts).unwrap().to_json();
            assert_eq!(
                expected, case["expected_facts"],
                "{id}: independent record oracle"
            );
            let observed = &case["candidate"]["content"]["read_facts"];
            assert_eq!(
                *observed,
                if case["bundle_read_facts"].is_null() {
                    json!({})
                } else {
                    case["bundle_read_facts"].clone()
                },
                "{id}: adapter observation source"
            );
            let projected = ValidatedBundleEvidence::from_json(observed)
                .unwrap()
                .into_facts()
                .unwrap()
                .to_json();
            assert_eq!(projected, expected, "{id}: complete exact projection");
            let original = case["candidate"].clone();
            let checked = GovernanceCandidate::from_json(&original.to_string()).unwrap();
            assert_eq!(
                checked.as_json(),
                original,
                "{id}: original claim survives projection"
            );
            assert_eq!(
                checked.hash(),
                original["transition_hash"].as_str().unwrap(),
                "{id}"
            );
        }
    }

    #[test]
    fn validated_evidence_owns_actual_producer_data_after_caller_mutation() {
        let (bytes, manifest) = package();
        for case in checked_cases(&bytes, &manifest).unwrap() {
            let mut attempted = case["candidate"]["content"]["read_facts"].clone();
            let owned = ValidatedBundleEvidence::from_json(&attempted).unwrap();
            attempted
                .as_object_mut()
                .unwrap()
                .insert("universe".into(), json!([]));
            assert!(ValidatedBundleEvidence::from_json(&attempted).is_err());
            assert_eq!(
                owned.into_facts().unwrap().to_json(),
                case["expected_facts"],
                "{}",
                case["id"]
            );
        }
    }

    #[test]
    fn actual_projection_package_covers_all_sections_routes_versions_and_nullable_values() {
        let (bytes, manifest) = package();
        let cases = checked_cases(&bytes, &manifest).unwrap();
        let mut sections = BTreeSet::new();
        let mut routes = BTreeSet::new();
        let mut versions = BTreeSet::new();
        let mut kinds = BTreeSet::new();
        let mut empty_members = false;
        let mut nonempty_members = false;
        for case in &cases {
            routes.insert(case["producer"].as_str().unwrap());
            versions.insert(case["wire_version"].as_str().unwrap());
            let facts = &case["expected_facts"];
            for key in facts.as_object().unwrap().keys() {
                sections.insert(key.as_str());
            }
            let mut values = Vec::new();
            if let Some(fields) = facts["fields"].as_array() {
                values.extend(fields.iter().map(|f| &f["value"]));
            }
            if let Some(queries) = facts["queries"].as_array() {
                for query in queries {
                    let members = query["members"].as_array().unwrap();
                    empty_members |= members.is_empty();
                    nonempty_members |= !members.is_empty();
                    values.extend(
                        query["captures"]
                            .as_array()
                            .unwrap()
                            .iter()
                            .map(|c| &c["value"]),
                    );
                }
            }
            for value in values {
                kinds.insert(match value {
                    Json::Null => "null",
                    Json::Bool(_) => "boolean",
                    Json::Number(_) => "integer",
                    Json::String(_) => "string",
                    _ => "structured",
                });
            }
        }
        assert_eq!(
            sections,
            BTreeSet::from(["existence", "identities", "references", "queries", "fields"])
        );
        assert_eq!(
            routes,
            BTreeSet::from(["Store::evaluate", "Store::invoke", "Store::invoke_intent"])
        );
        assert_eq!(
            versions,
            BTreeSet::from(["0.4", "0.5", "0.6", "0.7", "0.8"])
        );
        assert!(BTreeSet::from(["null", "boolean", "integer", "string"]).is_subset(&kinds));
        assert!(empty_members && nonempty_members);
    }

    #[test]
    fn mismatched_projection_package_digest_is_refused() {
        let (bytes, mut manifest) = package();
        manifest["package_digest"] = json!(format!("sha256:{}", "00".repeat(32)));
        assert_eq!(
            checked_cases(&bytes, &manifest).unwrap_err(),
            "missing or mismatched package custody"
        );
    }
    #[test]
    fn missing_projection_profile_custody_is_refused() {
        let (bytes, mut manifest) = package();
        manifest["profiles"].as_array_mut().unwrap().pop();
        assert_eq!(
            checked_cases(&bytes, &manifest).unwrap_err(),
            "case/profile coverage mismatch"
        );
    }
    #[test]
    fn stale_projection_record_profile_is_refused() {
        let (bytes, mut manifest) = package();
        manifest["profiles"][0]["record_version"] = json!("0.7");
        assert!(
            checked_cases(&bytes, &manifest)
                .unwrap_err()
                .contains("record_version")
        );
    }
}
