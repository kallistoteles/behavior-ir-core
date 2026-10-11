#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;

use behavior_core::canonical::{tagged_hash, to_canonical_string};
use serde_json::{Value, json};
use sha2::{Digest, Sha256};

fn reference(tag: &str, doc: &Value) -> String {
    let mut value = doc.clone();
    if let Some(object) = value.as_object_mut() {
        object.remove("hash");
    }
    let mut digest = Sha256::new();
    digest.update(tag.as_bytes());
    digest.update([0]);
    digest.update(to_canonical_string(&value).unwrap().as_bytes());
    format!("sha256:{:x}", digest.finalize())
}

#[test]
fn every_vector_uses_the_legacy_tagged_document_encoding() {
    let vectors = common::json(&common::fixtures().join("hash_vectors.json"));
    for vector in vectors["vectors"].as_array().unwrap() {
        for tag in [
            "behavior.transition.v1",
            "behavior.authorization.v1",
            "behavior.invocation_record.v1",
        ] {
            assert_eq!(
                tagged_hash(tag, &vector["wire"]).unwrap(),
                reference(tag, &vector["wire"])
            );
        }
    }
}

#[test]
fn hash_field_is_excluded_but_every_other_field_and_the_domain_are_bound() {
    let original = json!({"a":1,"nested":{"hash":"inside"}});
    let with_hash = json!({"a":1,"nested":{"hash":"inside"},"hash":"outside"});
    assert_eq!(
        tagged_hash("tag", &original).unwrap(),
        tagged_hash("tag", &with_hash).unwrap()
    );
    assert_ne!(
        tagged_hash("tag", &original).unwrap(),
        tagged_hash("other", &original).unwrap()
    );
    assert_ne!(
        tagged_hash("tag", &original).unwrap(),
        tagged_hash("tag", &json!({"a":2,"nested":{"hash":"inside"}})).unwrap()
    );
    assert!(tagged_hash("tag", &json!({"n":0.5})).is_err());
}

#[test]
fn archived_decision_versions_keep_their_original_tagged_hash_encoding() {
    for (family, name, module_name, version) in [
        ("root", "invoice_allowed", "invoice", "0.4"),
        ("006", "open_account_allowed", "accounts", "0.5"),
        ("007", "close_customer_open", "orders", "0.6"),
    ] {
        let text = common::archived_record(family, name);
        let record: Value = serde_json::from_str(&text).unwrap();
        let module = behavior_core::admit(&common::read(
            &common::fixtures().join(format!("wire/valid/{module_name}.json")),
        ))
        .unwrap();
        assert_eq!(record["record_version"], version);
        assert!(behavior_core::replay(&module, &text).matches);
        assert_eq!(
            tagged_hash("behavior.transition.v1", &record).unwrap(),
            reference("behavior.transition.v1", &record)
        );
    }
}

#[test]
fn current_profile_and_complete_evidence_are_bound_by_the_existing_hash_domain() {
    let module = behavior_core::admit(&common::read(
        &common::fixtures().join("wire/valid/accounts.json"),
    ))
    .unwrap();
    let raw = common::json(&common::fixtures().join("requests/006/open_account_allowed.json"));
    let request = common::complete_request(&module, &raw);
    let record = behavior_core::evaluate(&module, &request.to_string());
    assert_eq!(record.as_json()["result"], "ALLOW");
    assert_eq!(record.as_json()["record_version"], "0.8");
    assert_eq!(
        tagged_hash("behavior.transition.v1", record.as_json()).unwrap(),
        reference("behavior.transition.v1", record.as_json())
    );
    let mut altered = record.as_json().clone();
    altered["validation_profile"] = "other_profile".into();
    assert_ne!(
        tagged_hash("behavior.transition.v1", record.as_json()).unwrap(),
        tagged_hash("behavior.transition.v1", &altered).unwrap()
    );
    assert!(behavior_core::replay(&module, &record.to_json_string()).matches);
}
