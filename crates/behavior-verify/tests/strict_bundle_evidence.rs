#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Crafted local v2 boundary controls. These are not historical producer captures.
#[path = "support/trusted.rs"]
mod oracle;

use behavior_verify::governance::trusted::GovernanceCandidate;
use serde_json::{Value, json};

fn query(instance: &str, ids: &[&str]) -> Value {
    let members = Value::Array(ids.iter().map(|id| json!({"id": id})).collect());
    json!({
        "instance": instance,
        "definition": "query-definition",
        "entity": "Order",
        "captures": [],
        "result_hash": oracle::hash("behavior.query_result.v1", &members),
        "members": members
    })
}

fn candidate_with(facts: Value) -> Value {
    let mut candidate = oracle::candidate(&oracle::module());
    candidate["content"]["read_facts"] = facts;
    candidate["transition_hash"] = json!(oracle::hash(
        "behavior.candidate_transition.v2",
        &candidate["content"]
    ));
    candidate
}

fn accept(facts: Value) -> (GovernanceCandidate, Value) {
    let claim = candidate_with(facts);
    let checked = GovernanceCandidate::from_json(&claim.to_string())
        .unwrap_or_else(|error| panic!("valid local bundle evidence rejected: {error}"));
    (checked, claim)
}

fn refuse(facts: Value, path: &str, cause: &str) {
    let claim = candidate_with(facts);
    let raw = claim.to_string();
    let first = GovernanceCandidate::from_json(&raw).unwrap_err();
    let repeated = GovernanceCandidate::from_json(&raw).unwrap_err();
    assert_eq!(first, repeated, "local diagnostics must be deterministic");
    assert_eq!(first.code, "INVALID_CANDIDATE");
    assert!(
        first.message.contains(path),
        "missing local evidence path {path:?} in {first:?}"
    );
    assert!(
        first.message.contains(cause),
        "missing local cause {cause:?} in {first:?}"
    );
}

#[test]
fn empty_candidate_observations_are_accepted() {
    accept(json!({}));
}

#[test]
fn single_empty_query_has_required_empty_membership_hash() {
    accept(json!({"queries": [query("q-a", &[])]}));
}

#[test]
fn single_nonempty_query_evidence_is_accepted() {
    accept(json!({"queries": [query("q-a", &["a", "b"])]}));
}

#[test]
fn multiple_query_instances_are_accepted_in_canonical_order() {
    accept(json!({"queries": [query("q-a", &[]), query("q-b", &["b"])]}));
}

#[test]
fn all_five_observed_sections_are_accepted_together() {
    accept(json!({
        "existence": [{"entity":"Customer", "id":"c-a", "exists":true}],
        "identities": [{"entity":"Customer", "id":"c-a", "used":true}],
        "references": [{"entity":"Customer", "id":"c-a", "incoming":[
            {"entity":"Order", "id":"a", "field":"customer"}
        ]}],
        "queries": [query("q-a", &["a", "b"])],
        "fields": [{"entity":"Order", "id":"a", "field":"amount", "value":"20.00"}]
    }));
}

#[test]
fn explicit_null_capture_and_field_values_are_preserved() {
    let mut q = query("q-a", &[]);
    q["captures"] = json!([{"read":"input.optional", "value":null}]);
    let (checked, original) = accept(json!({
        "queries": [q],
        "fields": [{"entity":"Order", "id":"a", "field":"note", "value":null}]
    }));
    assert_eq!(checked.as_json(), original);
    assert!(
        checked.as_json()["content"]["read_facts"]["queries"][0]["captures"][0]["value"].is_null()
    );
    assert!(checked.as_json()["content"]["read_facts"]["fields"][0]["value"].is_null());
}

#[test]
fn observed_projection_does_not_rewrite_original_claim_or_identity() {
    let (checked, original) = accept(json!({"queries": [query("q-a", &["a", "b"])]}));
    assert_eq!(checked.as_json(), original);
    assert_eq!(
        checked.hash(),
        original["transition_hash"].as_str().unwrap()
    );
    assert_eq!(
        checked.hash(),
        oracle::hash("behavior.candidate_transition.v2", &original["content"])
    );
    assert_eq!(
        checked.as_json()["content"]["read_facts"]["queries"][0]["result_hash"],
        original["content"]["read_facts"]["queries"][0]["result_hash"]
    );
}

#[test]
fn explicit_empty_observed_sections_remain_accepted() {
    accept(json!({"existence":[], "identities":[], "references":[], "queries":[], "fields":[]}));
}

#[test]
fn unknown_observed_root_field_has_local_diagnostic() {
    refuse(json!({"unknown": true}), "read_facts", "unknown");
}

#[test]
fn unknown_query_integrity_field_has_local_diagnostic() {
    let mut q = query("q-a", &[]);
    q["signature"] = json!("not-part-of-query-evidence");
    refuse(json!({"queries": [q]}), "read_facts.queries[0]", "unknown");
}

#[test]
fn wrong_query_result_hash_has_local_diagnostic() {
    let mut q = query("q-a", &["a", "b"]);
    q["result_hash"] = json!(oracle::hash("behavior.query_result.v1", &json!([])));
    refuse(
        json!({"queries": [q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

#[test]
fn missing_required_query_result_hash_has_local_diagnostic() {
    let mut q = query("q-a", &[]);
    q.as_object_mut().unwrap().remove("result_hash");
    refuse(
        json!({"queries": [q]}),
        "read_facts.queries[0].result_hash",
        "required",
    );
}

#[test]
fn wrong_typed_existence_has_local_diagnostic() {
    refuse(
        json!({"existence":[{"entity":"Customer", "id":"c-a", "exists":"true"}]}),
        "read_facts.existence[0].exists",
        "boolean",
    );
}

#[test]
fn missing_capture_value_is_not_defaulted_to_null() {
    let mut q = query("q-a", &[]);
    q["captures"] = json!([{"read":"input.optional"}]);
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].captures[0].value",
        "required",
    );
}

#[test]
fn unsorted_existence_evidence_is_not_repaired() {
    refuse(
        json!({"existence":[
            {"entity":"Customer", "id":"c-b", "exists":true},
            {"entity":"Customer", "id":"c-a", "exists":true}
        ]}),
        "read_facts.existence",
        "canonical",
    );
}

#[test]
fn unsorted_members_with_matching_hash_are_not_repaired() {
    refuse(
        json!({"queries":[query("q-a", &["b", "a"])]}),
        "read_facts.queries[0].members",
        "canonical",
    );
}

// Every macro invocation below expands to an independently collected test.
// The input products follow the feature's closed grammar; no private codec API
// or implementation-defined repair path supplies these adversarial documents.
fn all_sections() -> Value {
    let mut q = query("q-a", &["a", "b"]);
    q["captures"] = json!([{"read":"input.customer", "value":"c-a"}]);
    json!({
        "existence":[{"entity":"Customer", "id":"c-a", "exists":true}],
        "identities":[{"entity":"Customer", "id":"c-a", "used":true}],
        "references":[{"entity":"Customer", "id":"c-a", "incoming":[
            {"entity":"Order", "id":"a", "field":"customer"}
        ]}],
        "queries":[q],
        "fields":[{"entity":"Order", "id":"a", "field":"amount", "value":"20.00"}]
    })
}

#[test]
fn canonical_all_sections_fixture_is_independent_positive_control() {
    let facts = all_sections();
    let (checked, original) = accept(facts.clone());
    assert_eq!(checked.as_json(), original);
    assert_eq!(checked.as_json()["content"]["read_facts"], facts);
}

fn replace(facts: &mut Value, pointer: &str, value: Value) {
    *facts.pointer_mut(pointer).unwrap() = value;
}

fn remove(facts: &mut Value, pointer: &str) {
    let (parent, key) = pointer.rsplit_once('/').unwrap();
    assert!(
        facts
            .pointer_mut(parent)
            .unwrap()
            .as_object_mut()
            .unwrap()
            .remove(key)
            .is_some(),
        "test setup must remove an actually present required field"
    );
}

macro_rules! shape_case {
    ($name:ident, $pointer:literal, $value:expr, $path:literal, $cause:literal) => {
        #[test]
        fn $name() {
            let mut facts = all_sections();
            replace(&mut facts, $pointer, $value);
            refuse(facts, $path, $cause);
        }
    };
}

macro_rules! missing_case {
    ($name:ident, $pointer:literal, $path:literal) => {
        #[test]
        fn $name() {
            let mut facts = all_sections();
            remove(&mut facts, $pointer);
            refuse(facts, $path, "required");
        }
    };
}

macro_rules! unknown_case {
    ($name:ident, $pointer:literal, $path:literal) => {
        #[test]
        fn $name() {
            let mut facts = all_sections();
            facts
                .pointer_mut($pointer)
                .unwrap()
                .as_object_mut()
                .unwrap()
                .insert("unknown".into(), json!(true));
            refuse(facts, $path, "unknown");
        }
    };
}

#[test]
fn changed_members_do_not_reuse_previous_result_hash() {
    let mut q = query("q-a", &["a", "b"]);
    q["members"] = json!([{"id":"a"}, {"id":"c"}]);
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

#[test]
fn wrong_digest_with_correct_members_is_refused() {
    let mut q = query("q-a", &["a", "b"]);
    q["result_hash"] = json!(format!("sha256:{}", "00".repeat(32)));
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

#[test]
fn different_hash_domain_cannot_attest_query_membership() {
    let mut q = query("q-a", &["a", "b"]);
    q["result_hash"] = json!(oracle::hash("behavior.query_instance.v1", &q["members"]));
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

#[test]
fn bare_id_array_hash_cannot_attest_member_objects() {
    let mut q = query("q-a", &["a", "b"]);
    q["result_hash"] = json!(oracle::hash("behavior.query_result.v1", &json!(["a", "b"])));
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

#[test]
fn uppercase_digest_is_not_canonical_result_hash() {
    let mut q = query("q-a", &["a", "b"]);
    let hash = q["result_hash"].as_str().unwrap();
    q["result_hash"] = json!(format!(
        "sha256:{}",
        hash.strip_prefix("sha256:").unwrap().to_uppercase()
    ));
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

#[test]
fn short_digest_is_not_defaulted_or_padded() {
    let mut q = query("q-a", &[]);
    q["result_hash"] = json!("sha256:21115d");
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

#[test]
fn nonhex_digest_is_not_accepted() {
    let mut q = query("q-a", &[]);
    q["result_hash"] = json!(format!("sha256:{}", "gg".repeat(32)));
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

#[test]
fn uppercase_hash_prefix_is_not_accepted() {
    let mut q = query("q-a", &[]);
    q["result_hash"] = json!(
        q["result_hash"]
            .as_str()
            .unwrap()
            .replacen("sha256:", "SHA256:", 1)
    );
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

#[test]
fn overlong_digest_is_not_truncated() {
    let mut q = query("q-a", &[]);
    q["result_hash"] = json!(format!("{}00", q["result_hash"].as_str().unwrap()));
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].result_hash",
        "hash",
    );
}

shape_case!(
    numeric_result_hash_is_not_coerced,
    "/queries/0/result_hash",
    json!(7),
    "read_facts.queries[0].result_hash",
    "string"
);
shape_case!(
    null_result_hash_is_not_missing_or_defaulted,
    "/queries/0/result_hash",
    Value::Null,
    "read_facts.queries[0].result_hash",
    "string"
);

#[test]
fn distinct_query_instances_with_identical_membership_share_result_hash() {
    let first = query("q-a", &["a", "b"]);
    let mut second = query("q-b", &["a", "b"]);
    second["definition"] = json!("another-definition");
    second["captures"] = json!([{"read":"input.other", "value":"different"}]);
    assert_eq!(first["result_hash"], second["result_hash"]);
    let (checked, original) = accept(json!({"queries":[first,second]}));
    assert_eq!(checked.as_json(), original);
}

#[test]
fn allowed_canonical_values_preserve_nested_data_and_integer_bounds() {
    let mut facts = all_sections();
    let value = json!({
        "a": [null, true, "é", i64::MIN],
        "z": {"max_unsigned": u64::MAX}
    });
    facts["queries"][0]["captures"][0]["value"] = value.clone();
    facts["fields"][0]["value"] = value;
    let (checked, original) = accept(facts);
    assert_eq!(checked.as_json(), original);
}

#[test]
fn empty_semantic_strings_do_not_gain_new_length_restrictions() {
    let mut facts = all_sections();
    for pointer in [
        "/existence/0/entity",
        "/existence/0/id",
        "/identities/0/entity",
        "/identities/0/id",
        "/references/0/entity",
        "/references/0/id",
        "/references/0/incoming/0/entity",
        "/references/0/incoming/0/id",
        "/references/0/incoming/0/field",
        "/queries/0/instance",
        "/queries/0/definition",
        "/queries/0/entity",
        "/queries/0/captures/0/read",
        "/fields/0/entity",
        "/fields/0/id",
        "/fields/0/field",
    ] {
        replace(&mut facts, pointer, json!(""));
    }
    accept(facts);
}

shape_case!(
    observed_root_null_is_refused,
    "",
    Value::Null,
    "read_facts",
    "object"
);
shape_case!(
    observed_root_array_is_refused,
    "",
    json!([]),
    "read_facts",
    "object"
);
shape_case!(
    existence_section_null_is_refused,
    "/existence",
    Value::Null,
    "read_facts.existence",
    "array"
);
shape_case!(
    identities_section_null_is_refused,
    "/identities",
    Value::Null,
    "read_facts.identities",
    "array"
);
shape_case!(
    references_section_null_is_refused,
    "/references",
    Value::Null,
    "read_facts.references",
    "array"
);
shape_case!(
    queries_section_null_is_refused,
    "/queries",
    Value::Null,
    "read_facts.queries",
    "array"
);
shape_case!(
    fields_section_null_is_refused,
    "/fields",
    Value::Null,
    "read_facts.fields",
    "array"
);
shape_case!(
    existence_section_object_is_refused,
    "/existence",
    json!({}),
    "read_facts.existence",
    "array"
);
shape_case!(
    identities_section_object_is_refused,
    "/identities",
    json!({}),
    "read_facts.identities",
    "array"
);
shape_case!(
    references_section_object_is_refused,
    "/references",
    json!({}),
    "read_facts.references",
    "array"
);
shape_case!(
    queries_section_object_is_refused,
    "/queries",
    json!({}),
    "read_facts.queries",
    "array"
);
shape_case!(
    fields_section_object_is_refused,
    "/fields",
    json!({}),
    "read_facts.fields",
    "array"
);

#[test]
fn universe_is_not_a_candidate_observed_section() {
    let mut facts = all_sections();
    facts["universe"] = json!([]);
    refuse(facts, "read_facts.universe", "unknown");
}

unknown_case!(
    existence_unknown_field_is_refused,
    "/existence/0",
    "read_facts.existence[0].unknown"
);
unknown_case!(
    identity_unknown_field_is_refused,
    "/identities/0",
    "read_facts.identities[0].unknown"
);
unknown_case!(
    reference_target_unknown_field_is_refused,
    "/references/0",
    "read_facts.references[0].unknown"
);
unknown_case!(
    incoming_edge_unknown_field_is_refused,
    "/references/0/incoming/0",
    "read_facts.references[0].incoming[0].unknown"
);
unknown_case!(
    capture_unknown_field_is_refused,
    "/queries/0/captures/0",
    "read_facts.queries[0].captures[0].unknown"
);
unknown_case!(
    query_member_unknown_field_is_refused,
    "/queries/0/members/0",
    "read_facts.queries[0].members[0].unknown"
);
unknown_case!(
    field_observation_unknown_field_is_refused,
    "/fields/0",
    "read_facts.fields[0].unknown"
);

shape_case!(
    existence_item_null_is_refused,
    "/existence/0",
    Value::Null,
    "read_facts.existence[0]",
    "object"
);
shape_case!(
    identity_item_null_is_refused,
    "/identities/0",
    Value::Null,
    "read_facts.identities[0]",
    "object"
);
shape_case!(
    reference_target_null_is_refused,
    "/references/0",
    Value::Null,
    "read_facts.references[0]",
    "object"
);
shape_case!(
    incoming_edge_null_is_refused,
    "/references/0/incoming/0",
    Value::Null,
    "read_facts.references[0].incoming[0]",
    "object"
);
shape_case!(
    query_item_null_is_refused,
    "/queries/0",
    Value::Null,
    "read_facts.queries[0]",
    "object"
);
shape_case!(
    capture_item_null_is_refused,
    "/queries/0/captures/0",
    Value::Null,
    "read_facts.queries[0].captures[0]",
    "object"
);
shape_case!(
    member_item_null_is_refused,
    "/queries/0/members/0",
    Value::Null,
    "read_facts.queries[0].members[0]",
    "object"
);
shape_case!(
    field_item_null_is_refused,
    "/fields/0",
    Value::Null,
    "read_facts.fields[0]",
    "object"
);

missing_case!(
    existence_entity_is_required,
    "/existence/0/entity",
    "read_facts.existence[0].entity"
);
missing_case!(
    existence_id_is_required,
    "/existence/0/id",
    "read_facts.existence[0].id"
);
missing_case!(
    existence_boolean_is_required,
    "/existence/0/exists",
    "read_facts.existence[0].exists"
);
missing_case!(
    identity_entity_is_required,
    "/identities/0/entity",
    "read_facts.identities[0].entity"
);
missing_case!(
    identity_id_is_required,
    "/identities/0/id",
    "read_facts.identities[0].id"
);
missing_case!(
    identity_used_is_required,
    "/identities/0/used",
    "read_facts.identities[0].used"
);
missing_case!(
    reference_target_entity_is_required,
    "/references/0/entity",
    "read_facts.references[0].entity"
);
missing_case!(
    reference_target_id_is_required,
    "/references/0/id",
    "read_facts.references[0].id"
);
missing_case!(
    reference_incoming_is_required,
    "/references/0/incoming",
    "read_facts.references[0].incoming"
);
missing_case!(
    edge_entity_is_required,
    "/references/0/incoming/0/entity",
    "read_facts.references[0].incoming[0].entity"
);
missing_case!(
    edge_id_is_required,
    "/references/0/incoming/0/id",
    "read_facts.references[0].incoming[0].id"
);
missing_case!(
    edge_field_is_required,
    "/references/0/incoming/0/field",
    "read_facts.references[0].incoming[0].field"
);
missing_case!(
    query_instance_is_required,
    "/queries/0/instance",
    "read_facts.queries[0].instance"
);
missing_case!(
    query_definition_is_required,
    "/queries/0/definition",
    "read_facts.queries[0].definition"
);
missing_case!(
    query_entity_is_required,
    "/queries/0/entity",
    "read_facts.queries[0].entity"
);
missing_case!(
    query_captures_is_required,
    "/queries/0/captures",
    "read_facts.queries[0].captures"
);
missing_case!(
    query_members_is_required,
    "/queries/0/members",
    "read_facts.queries[0].members"
);
missing_case!(
    capture_read_is_required,
    "/queries/0/captures/0/read",
    "read_facts.queries[0].captures[0].read"
);
missing_case!(
    member_id_is_required,
    "/queries/0/members/0/id",
    "read_facts.queries[0].members[0].id"
);
missing_case!(
    field_entity_is_required,
    "/fields/0/entity",
    "read_facts.fields[0].entity"
);
missing_case!(
    field_id_is_required,
    "/fields/0/id",
    "read_facts.fields[0].id"
);
missing_case!(
    field_name_is_required,
    "/fields/0/field",
    "read_facts.fields[0].field"
);
missing_case!(
    field_value_is_not_defaulted_to_null,
    "/fields/0/value",
    "read_facts.fields[0].value"
);

shape_case!(
    existence_entity_requires_string,
    "/existence/0/entity",
    json!(false),
    "read_facts.existence[0].entity",
    "string"
);
shape_case!(
    existence_id_requires_string,
    "/existence/0/id",
    json!(1),
    "read_facts.existence[0].id",
    "string"
);
shape_case!(
    existence_boolean_does_not_accept_null,
    "/existence/0/exists",
    Value::Null,
    "read_facts.existence[0].exists",
    "boolean"
);
shape_case!(
    identity_entity_requires_string,
    "/identities/0/entity",
    json!(1),
    "read_facts.identities[0].entity",
    "string"
);
shape_case!(
    identity_id_requires_string,
    "/identities/0/id",
    json!(false),
    "read_facts.identities[0].id",
    "string"
);
shape_case!(
    identity_used_requires_boolean,
    "/identities/0/used",
    json!("true"),
    "read_facts.identities[0].used",
    "boolean"
);
shape_case!(
    reference_entity_requires_string,
    "/references/0/entity",
    json!(1),
    "read_facts.references[0].entity",
    "string"
);
shape_case!(
    reference_id_requires_string,
    "/references/0/id",
    json!(false),
    "read_facts.references[0].id",
    "string"
);
shape_case!(
    reference_incoming_requires_array,
    "/references/0/incoming",
    Value::Null,
    "read_facts.references[0].incoming",
    "array"
);
shape_case!(
    edge_entity_requires_string,
    "/references/0/incoming/0/entity",
    json!(false),
    "read_facts.references[0].incoming[0].entity",
    "string"
);
shape_case!(
    edge_id_requires_string,
    "/references/0/incoming/0/id",
    json!(1),
    "read_facts.references[0].incoming[0].id",
    "string"
);
shape_case!(
    edge_field_requires_string,
    "/references/0/incoming/0/field",
    Value::Null,
    "read_facts.references[0].incoming[0].field",
    "string"
);
shape_case!(
    query_instance_requires_string,
    "/queries/0/instance",
    json!(1),
    "read_facts.queries[0].instance",
    "string"
);
shape_case!(
    query_definition_requires_string,
    "/queries/0/definition",
    json!(false),
    "read_facts.queries[0].definition",
    "string"
);
shape_case!(
    query_entity_requires_string,
    "/queries/0/entity",
    Value::Null,
    "read_facts.queries[0].entity",
    "string"
);
shape_case!(
    query_captures_requires_array,
    "/queries/0/captures",
    json!({}),
    "read_facts.queries[0].captures",
    "array"
);
shape_case!(
    query_members_requires_array,
    "/queries/0/members",
    Value::Null,
    "read_facts.queries[0].members",
    "array"
);
shape_case!(
    capture_read_requires_string,
    "/queries/0/captures/0/read",
    json!(1),
    "read_facts.queries[0].captures[0].read",
    "string"
);
shape_case!(
    member_id_requires_string,
    "/queries/0/members/0/id",
    Value::Null,
    "read_facts.queries[0].members[0].id",
    "string"
);
shape_case!(
    field_entity_requires_string,
    "/fields/0/entity",
    json!(1),
    "read_facts.fields[0].entity",
    "string"
);
shape_case!(
    field_id_requires_string,
    "/fields/0/id",
    json!(false),
    "read_facts.fields[0].id",
    "string"
);
shape_case!(
    field_name_requires_string,
    "/fields/0/field",
    Value::Null,
    "read_facts.fields[0].field",
    "string"
);

fn raw_facts_candidate(raw_facts: &str) -> String {
    // Deliberately splice raw text. Parsing through serde_json::Value here would
    // destroy the duplicate-key or lexical-number input before the boundary.
    let raw = candidate_with(json!({})).to_string();
    assert_eq!(raw.matches("\"read_facts\":{}").count(), 1);
    raw.replacen(
        "\"read_facts\":{}",
        &format!("\"read_facts\":{raw_facts}"),
        1,
    )
}

fn refuse_raw(raw: &str, cause: &str) {
    let first = GovernanceCandidate::from_json(raw).unwrap_err();
    let repeated = GovernanceCandidate::from_json(raw).unwrap_err();
    assert_eq!(first, repeated);
    assert_eq!(first.code, "INVALID_GOVERNANCE_DOCUMENT");
    assert!(
        first.message.contains(cause),
        "wrong raw failure: {first:?}"
    );
}

macro_rules! raw_case {
    ($name:ident, $raw:expr, $cause:literal) => {
        #[test]
        fn $name() {
            refuse_raw(&raw_facts_candidate($raw), $cause);
        }
    };
}

#[test]
fn duplicate_whole_candidate_key_is_rejected_before_reduction() {
    let raw = candidate_with(json!({})).to_string();
    let duplicate = format!(
        "{{\"format\":\"behavior.governance_candidate.v2\",{}",
        &raw[1..]
    );
    refuse_raw(&duplicate, "duplicate object key `format`");
}

raw_case!(
    duplicate_observed_root_section_is_not_last_wins,
    r#"{"queries":[],"queries":[]}"#,
    "duplicate object key `queries`"
);
raw_case!(
    duplicate_query_member_field_is_not_last_wins,
    r#"{"queries":[{"instance":"q-a","definition":"query-definition","entity":"Order","captures":[],"members":[{"id":"a","id":"b"}],"result_hash":"sha256:21115dbec5bf6bcf7568f7211fb662ea684c79c6f932d4d50922ffdf1cc4e907"}]}"#,
    "duplicate object key `id`"
);
raw_case!(
    equal_value_duplicate_capture_key_is_ambiguous,
    r#"{"queries":[{"instance":"q-a","definition":"query-definition","entity":"Order","captures":[{"read":"input.a","read":"input.a","value":null}],"members":[],"result_hash":"sha256:21115dbec5bf6bcf7568f7211fb662ea684c79c6f932d4d50922ffdf1cc4e907"}]}"#,
    "duplicate object key `read`"
);
raw_case!(
    escaped_duplicate_key_is_not_distinct_identity,
    r#"{"existence":[{"entity":"Customer","id":"c-a","\u0069d":"c-a","exists":true}]}"#,
    "duplicate object key `id`"
);
raw_case!(
    duplicate_nested_capture_value_key_is_rejected,
    r#"{"queries":[{"instance":"q-a","definition":"query-definition","entity":"Order","captures":[{"read":"input.a","value":{"a":true,"a":true}}],"members":[],"result_hash":"sha256:21115dbec5bf6bcf7568f7211fb662ea684c79c6f932d4d50922ffdf1cc4e907"}]}"#,
    "duplicate object key `a`"
);
raw_case!(
    duplicate_nested_field_value_key_is_rejected,
    r#"{"fields":[{"entity":"Order","id":"a","field":"note","value":{"a":1,"a":2}}]}"#,
    "duplicate object key `a`"
);
raw_case!(
    duplicate_incoming_edge_field_is_rejected,
    r#"{"references":[{"entity":"Customer","id":"c-a","incoming":[{"entity":"Order","id":"a","field":"customer","field":"customer"}]}]}"#,
    "duplicate object key `field`"
);
raw_case!(
    duplicate_query_hash_field_is_rejected_before_local_hash_check,
    r#"{"queries":[{"instance":"q-a","definition":"query-definition","entity":"Order","captures":[],"members":[],"result_hash":"invalid","result_hash":"sha256:21115dbec5bf6bcf7568f7211fb662ea684c79c6f932d4d50922ffdf1cc4e907"}]}"#,
    "duplicate object key `result_hash`"
);
raw_case!(
    duplicate_unknown_key_still_reaches_raw_ambiguity_boundary,
    r#"{"unknown":false,"unknown":true}"#,
    "duplicate object key `unknown`"
);

raw_case!(
    floating_field_value_is_noncanonical,
    r#"{"fields":[{"entity":"Order","id":"a","field":"amount","value":1.5}]}"#,
    "noncanonical numeric"
);
raw_case!(
    integral_decimal_spelling_is_noncanonical,
    r#"{"fields":[{"entity":"Order","id":"a","field":"amount","value":1.0}]}"#,
    "noncanonical numeric"
);
raw_case!(
    exponent_capture_spelling_is_noncanonical,
    r#"{"queries":[{"instance":"q-a","definition":"query-definition","entity":"Order","captures":[{"read":"input.a","value":1e0}],"members":[],"result_hash":"sha256:21115dbec5bf6bcf7568f7211fb662ea684c79c6f932d4d50922ffdf1cc4e907"}]}"#,
    "noncanonical numeric"
);
raw_case!(
    negative_zero_spelling_is_noncanonical,
    r#"{"fields":[{"entity":"Order","id":"a","field":"amount","value":-0}]}"#,
    "noncanonical numeric"
);
raw_case!(
    integer_above_unsigned_domain_is_noncanonical,
    r#"{"fields":[{"entity":"Order","id":"a","field":"amount","value":18446744073709551616}]}"#,
    "noncanonical numeric"
);
raw_case!(
    integer_below_signed_domain_is_noncanonical,
    r#"{"fields":[{"entity":"Order","id":"a","field":"amount","value":-9223372036854775809}]}"#,
    "noncanonical numeric"
);

macro_rules! ordered_case {
    ($name:ident, $section:literal, $items:expr, $path:literal) => {
        #[test]
        fn $name() {
            let mut facts = all_sections();
            facts[$section] = $items;
            refuse(facts, $path, "canonical");
        }
    };
}

ordered_case!(
    different_existence_values_with_same_key_are_not_merged,
    "existence",
    json!([
        {"entity":"Customer","id":"c-a","exists":true},
        {"entity":"Customer","id":"c-a","exists":false}
    ]),
    "read_facts.existence"
);
ordered_case!(
    different_identity_values_with_same_key_are_not_merged,
    "identities",
    json!([
        {"entity":"Customer","id":"c-a","used":true},
        {"entity":"Customer","id":"c-a","used":false}
    ]),
    "read_facts.identities"
);
ordered_case!(
    different_reference_values_with_same_target_key_are_not_merged,
    "references",
    json!([
        {"entity":"Customer","id":"c-a","incoming":[]},
        {"entity":"Customer","id":"c-a","incoming":[{"entity":"Order","id":"a","field":"customer"}]}
    ]),
    "read_facts.references"
);
ordered_case!(
    different_field_values_with_same_key_are_not_merged,
    "fields",
    json!([
        {"entity":"Order","id":"a","field":"amount","value":"10.00"},
        {"entity":"Order","id":"a","field":"amount","value":"20.00"}
    ]),
    "read_facts.fields"
);

#[test]
fn distinct_query_objects_with_same_instance_are_not_merged() {
    let q = query("q-a", &["a", "b"]);
    let mut conflicting = q.clone();
    conflicting["definition"] = json!("different-definition");
    refuse(
        json!({"queries":[q, conflicting]}),
        "read_facts.queries",
        "canonical",
    );
}

#[test]
fn duplicate_incoming_edges_are_not_deduplicated() {
    let mut facts = all_sections();
    let edge = facts["references"][0]["incoming"][0].clone();
    facts["references"][0]["incoming"] = json!([edge.clone(), edge]);
    refuse(facts, "read_facts.references[0].incoming", "canonical");
}

#[test]
fn different_capture_values_with_same_read_are_not_merged() {
    let mut q = query("q-a", &[]);
    q["captures"] = json!([
        {"read":"input.customer", "value":"c-a"},
        {"read":"input.customer", "value":"c-b"}
    ]);
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].captures",
        "canonical",
    );
}

#[test]
fn duplicate_members_with_matching_hash_are_not_deduplicated() {
    refuse(
        json!({"queries":[query("q-a", &["a", "a"])]}),
        "read_facts.queries[0].members",
        "canonical",
    );
}

ordered_case!(
    noncanonical_identity_order_is_not_sorted,
    "identities",
    json!([
        {"entity":"Customer","id":"c-b","used":true},
        {"entity":"Customer","id":"c-a","used":true}
    ]),
    "read_facts.identities"
);
ordered_case!(
    noncanonical_reference_target_order_is_not_sorted,
    "references",
    json!([
        {"entity":"Customer","id":"c-b","incoming":[]},
        {"entity":"Customer","id":"c-a","incoming":[]}
    ]),
    "read_facts.references"
);
ordered_case!(
    noncanonical_field_order_is_not_sorted,
    "fields",
    json!([
        {"entity":"Order","id":"a","field":"z","value":1},
        {"entity":"Order","id":"a","field":"a","value":2}
    ]),
    "read_facts.fields"
);
ordered_case!(
    noncanonical_query_instance_order_is_not_sorted,
    "queries",
    json!([query("q-b", &["a"]), query("q-a", &["a"])]),
    "read_facts.queries"
);

#[test]
fn noncanonical_incoming_edge_order_is_not_sorted() {
    let mut facts = all_sections();
    facts["references"][0]["incoming"] = json!([
        {"entity":"Order", "id":"a", "field":"z"},
        {"entity":"Order", "id":"a", "field":"a"}
    ]);
    refuse(facts, "read_facts.references[0].incoming", "canonical");
}

#[test]
fn noncanonical_capture_order_is_not_sorted() {
    let mut q = query("q-a", &[]);
    q["captures"] = json!([{"read":"z", "value":null}, {"read":"a", "value":null}]);
    refuse(
        json!({"queries":[q]}),
        "read_facts.queries[0].captures",
        "canonical",
    );
}

ordered_case!(
    entity_precedes_id_in_existence_order,
    "existence",
    json!([
        {"entity":"Z","id":"a","exists":true},
        {"entity":"A","id":"z","exists":true}
    ]),
    "read_facts.existence"
);
ordered_case!(
    entity_precedes_id_in_identity_order,
    "identities",
    json!([
        {"entity":"Z","id":"a","used":true},
        {"entity":"A","id":"z","used":true}
    ]),
    "read_facts.identities"
);
ordered_case!(
    entity_precedes_id_in_reference_target_order,
    "references",
    json!([
        {"entity":"Z","id":"a","incoming":[]},
        {"entity":"A","id":"z","incoming":[]}
    ]),
    "read_facts.references"
);
ordered_case!(
    entity_precedes_id_in_field_order,
    "fields",
    json!([
        {"entity":"Z","id":"a","field":"a","value":1},
        {"entity":"A","id":"z","field":"z","value":2}
    ]),
    "read_facts.fields"
);
ordered_case!(
    id_precedes_field_in_field_order,
    "fields",
    json!([
        {"entity":"Order","id":"z","field":"a","value":1},
        {"entity":"Order","id":"a","field":"z","value":2}
    ]),
    "read_facts.fields"
);

#[test]
fn incoming_edges_use_entity_then_id_then_field_order() {
    let mut facts = all_sections();
    facts["references"][0]["incoming"] = json!([
        {"entity":"Z", "id":"a", "field":"a"},
        {"entity":"A", "id":"z", "field":"z"}
    ]);
    refuse(facts, "read_facts.references[0].incoming", "canonical");
}

#[test]
fn incoming_edge_id_precedes_field_order() {
    let mut facts = all_sections();
    facts["references"][0]["incoming"] = json!([
        {"entity":"Order", "id":"z", "field":"a"},
        {"entity":"Order", "id":"a", "field":"z"}
    ]);
    refuse(facts, "read_facts.references[0].incoming", "canonical");
}

#[test]
fn valid_lexicographic_tuples_are_not_ordered_by_id_alone() {
    let mut facts = all_sections();
    facts["existence"] = json!([
        {"entity":"A", "id":"z", "exists":true},
        {"entity":"Z", "id":"a", "exists":true}
    ]);
    facts["identities"] = json!([
        {"entity":"A", "id":"z", "used":true},
        {"entity":"Z", "id":"a", "used":true}
    ]);
    facts["references"][0]["incoming"] = json!([
        {"entity":"A", "id":"z", "field":"z"},
        {"entity":"Z", "id":"a", "field":"a"}
    ]);
    facts["fields"] = json!([
        {"entity":"A", "id":"z", "field":"z", "value":null},
        {"entity":"Z", "id":"a", "field":"a", "value":null}
    ]);
    accept(facts);
}

fn crafted_migration(facts: Value) -> Value {
    let mut claim = candidate_with(facts);
    let content = claim["content"].as_object_mut().unwrap();
    content.remove("record");
    content.remove("behavior_version");
    content.insert("kind".into(), json!("migration"));
    let hash = format!("sha256:{}", "ef".repeat(32));
    for name in [
        "migration_hash",
        "source_behavior",
        "target_behavior",
        "source_schema",
        "target_schema",
    ] {
        content.insert(name.into(), json!(hash));
    }
    content.insert("requirements".into(), json!([]));
    content.insert(
        "validations".into(),
        json!({"source_validated":true,"target_validated":true}),
    );
    content.insert(
        "transformation".into(),
        json!({
            "migration_hash":hash,"entities":[],"report":{"migration":hash,"types":{},"retired":[]}
        }),
    );
    claim["transition_hash"] = json!(oracle::hash(
        "behavior.candidate_transition.v2",
        &claim["content"]
    ));
    claim
}

#[test]
fn migration_empty_facts_keep_existing_local_candidate_contract() {
    let claim = crafted_migration(json!({}));
    let checked = GovernanceCandidate::from_json(&claim.to_string()).unwrap();
    assert_eq!(checked.as_json(), claim);
}

#[test]
fn migration_explicit_empty_section_is_not_empty_facts_object() {
    let claim = crafted_migration(json!({"queries":[]}));
    let error = GovernanceCandidate::from_json(&claim.to_string()).unwrap_err();
    assert_eq!(error.code, "INVALID_CANDIDATE");
    assert_eq!(
        error.message,
        "migration has no invocation facts or lifecycle effects"
    );
}

#[test]
fn migration_query_evidence_does_not_gain_new_support() {
    let claim = crafted_migration(json!({"queries":[query("q-a", &[])]}));
    let error = GovernanceCandidate::from_json(&claim.to_string()).unwrap_err();
    assert_eq!(error.code, "INVALID_CANDIDATE");
    // The new action-only codec must not move migration's historical Facts
    // refusal boundary. Bundle-only integrity fields remain invalid there.
    assert_eq!(error.message, "invalid observed facts");
}
