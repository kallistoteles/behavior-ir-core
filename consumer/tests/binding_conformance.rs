#![allow(clippy::unwrap_used, clippy::expect_used)]

#[path = "support/binding_conformance.rs"]
mod contracts;

fn root() -> std::path::PathBuf {
    std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("..")
}

#[test]
fn focused_exact_semantic_contract() {
    let record = contracts::read(
        &root().join("tests/fixtures/bindings/current/expectations/invoice.allowed.json"),
    )
    .unwrap();
    contracts::exact("invoice/allowed", &record, &record).unwrap();
    let mut changed = record.clone();
    changed["changes"][0]["new"] = serde_json::json!("pending");
    assert!(contracts::exact("invoice/allowed", &record, &changed).is_err());
}

#[test]
fn focused_authored_world_proofs() {
    contracts::authored_worlds(&root()).unwrap();
}

#[test]
fn all_current_requests_match_full_semantics() {
    contracts::evaluate_corpus(&root()).unwrap();
}

#[test]
fn invalid_worlds_and_semantic_mutations_are_distinct() {
    println!("{}", contracts::negative_controls(&root()).unwrap());
}

#[test]
#[cfg(unix)]
fn corpus_metadata_cannot_escape_root() {
    contracts::metadata_boundary(&root()).unwrap();
}
