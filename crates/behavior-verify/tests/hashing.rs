#![allow(clippy::unwrap_used, clippy::expect_used)]

use behavior_verify::hashing::{check_key, document_hash, finding_hash};
use serde_json::json;

fn h(c: char) -> String {
    format!("sha256:{}", c.to_string().repeat(64))
}

#[test]
fn finding_hash_depends_only_on_kind_and_cites() {
    let a = finding_hash("preservation", &[("action", h('a')), ("invariant", h('b'))]);
    let same = finding_hash("preservation", &[("action", h('a')), ("invariant", h('b'))]);
    let other_kind = finding_hash(
        "postcondition",
        &[("action", h('a')), ("invariant", h('b'))],
    );
    let other_cite = finding_hash("preservation", &[("action", h('a')), ("invariant", h('c'))]);
    assert_eq!(a, same);
    assert_ne!(a, other_kind);
    assert_ne!(a, other_cite);
    assert!(a.starts_with("sha256:") && a.len() == 71);
}

#[test]
fn check_key_changes_with_every_input() {
    let base = check_key(
        "preservation",
        &[h('a'), h('b')],
        &h('p'),
        "0.2.0",
        "z3 4.16.0",
    );
    assert_ne!(
        base,
        check_key(
            "preservation",
            &[h('a'), h('c')],
            &h('p'),
            "0.2.0",
            "z3 4.16.0"
        )
    );
    assert_ne!(
        base,
        check_key(
            "preservation",
            &[h('a'), h('b')],
            &h('q'),
            "0.2.0",
            "z3 4.16.0"
        )
    );
    assert_ne!(
        base,
        check_key(
            "preservation",
            &[h('a'), h('b')],
            &h('p'),
            "0.2.1",
            "z3 4.16.0"
        )
    );
    assert_ne!(
        base,
        check_key(
            "preservation",
            &[h('a'), h('b')],
            &h('p'),
            "0.2.0",
            "z3 4.17.0"
        )
    );
    assert_ne!(
        base,
        check_key(
            "postcondition",
            &[h('a'), h('b')],
            &h('p'),
            "0.2.0",
            "z3 4.16.0"
        )
    );
}

#[test]
fn query_congruence_version_bump_separates_identical_old_and_current_check_contexts() {
    let dependencies = vec![h('a'), h('b')];
    let profile = h('c');
    let old = check_key(
        "postcondition",
        &dependencies,
        &profile,
        "0.9.0",
        "z3 4.16.0",
    );
    let current = check_key(
        "postcondition",
        &dependencies,
        &profile,
        behavior_verify::VERIFIER_VERSION,
        "z3 4.16.0",
    );
    assert_eq!(behavior_verify::VERIFIER_VERSION, "0.10.0");
    assert_ne!(old, current);
}

#[test]
fn document_hash_ignores_hash_field_and_uses_tag() {
    let doc = json!({"a": 1, "b": "x"});
    let with_hash = json!({"a": 1, "b": "x", "hash": "sha256:whatever"});
    assert_eq!(
        document_hash("behavior.waiver.v1", &doc).unwrap(),
        document_hash("behavior.waiver.v1", &with_hash).unwrap()
    );
    assert_ne!(
        document_hash("behavior.waiver.v1", &doc).unwrap(),
        document_hash("behavior.policy.v1", &doc).unwrap()
    );
}

#[test]
fn document_hash_delegates_to_the_core_for_every_frozen_wire_vector() {
    let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures/hash_vectors.json");
    let vectors: serde_json::Value =
        serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap();
    for vector in vectors["vectors"].as_array().unwrap() {
        for tag in [
            "behavior.transition.v1",
            "behavior.waiver.v1",
            "behavior.authorization.v1",
        ] {
            assert_eq!(
                document_hash(tag, &vector["wire"]).unwrap(),
                behavior_core::canonical::tagged_hash(tag, &vector["wire"]).unwrap()
            );
        }
    }
}

#[test]
fn query_result_empty_members_fixed_vector() {
    assert_eq!(
        document_hash("behavior.query_result.v1", &json!([])).unwrap(),
        "sha256:21115dbec5bf6bcf7568f7211fb662ea684c79c6f932d4d50922ffdf1cc4e907"
    );
}

#[test]
fn query_result_member_objects_fixed_vector() {
    let members = json!([{"id":"a"},{"id":"b"}]);
    assert_eq!(
        document_hash("behavior.query_result.v1", &members).unwrap(),
        "sha256:f8267fe64300deaaa901f76ee3c60e396c630280602d22b1f5725c38beae4164"
    );
    assert_ne!(
        document_hash("behavior.query_result.v1", &members).unwrap(),
        document_hash("behavior.query_result.v2", &members).unwrap()
    );
    assert_ne!(
        document_hash("behavior.query_result.v1", &members).unwrap(),
        document_hash("behavior.query_result.v1", &json!(["a", "b"])).unwrap()
    );
}
