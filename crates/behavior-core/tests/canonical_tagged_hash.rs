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
fn legacy_decision_record_versions_share_the_same_document_hash() {
    let old = common::json(&common::fixtures().join("records/invoice_allowed.json"));
    assert_eq!(old["record_version"], "0.4");
    let accounts = behavior_core::admit(&common::read(
        &common::fixtures().join("wire/valid/accounts.json"),
    ))
    .unwrap();
    let creation = behavior_core::evaluate(
        &accounts,
        &json!({
            "action":"open_account","data_version":"1","context":{},
            "state":{"owner":{"id":"c1","name":"Ada"}},
            "input":{"account_id":"a42","initial":"100.00"},
            "facts":{"identities":[{"entity":"Account","id":"a42","used":false}]}
        })
        .to_string(),
    );
    assert_eq!(creation.as_json()["record_version"], "0.5");
    let ledger = behavior_core::admit(&common::read(
        &common::fixtures().join("invocation/modules/ledger.json"),
    ))
    .unwrap();
    let snapshot = common::json(&common::fixtures().join("invocation/snapshots/s1.json"));
    let query = behavior_core::evaluate(
        &ledger,
        &json!({"action":"register_customer","data_version":"1","state":{},
        "input":{"customer_id":"c3","name":"Cy"},"context":{},"facts":snapshot["facts"]})
        .to_string(),
    );
    assert_eq!(query.as_json()["record_version"], "0.6");
    for record in [&old, creation.as_json(), query.as_json()] {
        assert_eq!(
            tagged_hash("behavior.transition.v1", record).unwrap(),
            reference("behavior.transition.v1", record)
        );
    }
}
