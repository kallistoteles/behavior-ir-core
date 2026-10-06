#![allow(clippy::unwrap_used, clippy::expect_used)]
//! 013 G1/G2: document integrity must precede identity or evaluation claims.
mod common;

use behavior_core::canonical::decode_strict;
use behavior_core::read::ReadRecord;
use serde_json::{Value, json};
use sha2::{Digest, Sha256};

fn golden() -> Value {
    common::json(&common::fixtures().join("reads/records/value.expected.json"))
}

// Independent oracle for the frozen v1 read identity: length-prefixed text.
// A malformed float was historically hashed as empty text; never allow that
// assertion to turn a malformed document into accepted evidence.
fn read_hash(text: &str) -> String {
    let mut h = Sha256::new();
    h.update(b"behavior.read_record.v1\0");
    h.update(u32::try_from(text.len()).unwrap().to_be_bytes());
    h.update(text.as_bytes());
    format!("read:sha256:{:x}", h.finalize())
}

fn rehash(mut record: Value) -> Value {
    record.as_object_mut().unwrap().remove("record_id");
    record["record_id"] = json!(read_hash(&record.to_string()));
    record
}

#[test]
fn strict_decode_refuses_duplicate_keys_including_escaped_and_nested_keys() {
    for text in [
        r#"{"format":"behavior.authorization.v2","format":"behavior.authorization.v1"}"#,
        r#"{"a":1,"\u0061":2}"#,
        r#"{"content":{"decision":"refuse","decision":"allow"}}"#,
        r#"{"items":[{"issuer":"trusted","issuer":"attacker"}]}"#,
    ] {
        assert!(decode_strict(text).is_err(), "duplicate accepted: {text}");
    }
}

#[test]
fn strict_decode_refuses_floats_and_noncanonical_integer_spellings() {
    for text in [
        r#"{"value":1.5}"#,
        r#"{"value":1.0}"#,
        r#"{"value":1e0}"#,
        r#"{"value":-0}"#,
        r#"{"value":18446744073709551616}"#,
    ] {
        assert!(decode_strict(text).is_err(), "number accepted: {text}");
    }
}

#[test]
fn strict_roundtrip_preserves_values_key_order_and_integer_domains() {
    let a =
        decode_strict(r#" {"z":18446744073709551615,"a":[true,null,-9223372036854775808,"å"]} "#)
            .unwrap();
    let b = decode_strict(r#"{"a":[true,null,-9223372036854775808,"å"],"z":18446744073709551615}"#)
        .unwrap();
    assert_eq!(a, b);
    let bytes = behavior_core::canonical::to_canonical_string(&a).unwrap();
    assert_eq!(decode_strict(&bytes).unwrap(), a);
}

#[test]
fn malformed_float_records_cannot_share_the_empty_fallback_identity() {
    for value in [json!(1.5), json!(999.5), json!({"nested":[2.5]})] {
        let mut record = golden();
        record["value"] = value;
        record["record_id"] = json!(read_hash(""));
        assert!(ReadRecord::from_json(&record.to_string()).is_err());
    }
}

#[test]
fn read_evidence_refuses_unknown_security_fields_even_with_consistent_hash() {
    let mut record = golden();
    record["authorization"] = json!({"decision":"allow"});
    assert!(ReadRecord::from_json(&rehash(record).to_string()).is_err());
}

#[test]
fn read_evidence_refuses_duplicate_format_and_identity_assertions() {
    let record = golden();
    let text = record.to_string();
    for extra in [
        r#""format":"behavior.read_record.v2","#,
        r#""record_id":"read:sha256:incorrect","#,
    ] {
        let duplicate = format!("{{{extra}{}", &text[1..]);
        assert!(ReadRecord::from_json(&duplicate).is_err());
    }
}

#[test]
fn an_ambiguous_wire_version_cannot_select_a_weaker_parser() {
    let original = common::read(&common::fixtures().join("invocation/modules/ledger.json"));
    assert!(behavior_core::admit(&original).is_ok());
    let ambiguous = format!("{{\"ir_version\":\"0.8\",{}", &original[1..]);
    assert!(behavior_core::admit(&ambiguous).is_err());
}

#[test]
fn read_evidence_cannot_claim_a_value_without_one_or_in_a_refusal() {
    let mut missing = golden();
    missing.as_object_mut().unwrap().remove("value");
    assert!(ReadRecord::from_json(&rehash(missing).to_string()).is_err());
    let mut refusal = golden();
    refusal["result"] = json!("INVALID_BINDING");
    refusal["reasons"] = json!([{"code":"UNKNOWN_READ","message":"unknown"}]);
    assert!(ReadRecord::from_json(&rehash(refusal).to_string()).is_err());
    let mut unsupported = golden();
    unsupported["result"] = json!("AUTHORIZED");
    assert!(ReadRecord::from_json(&rehash(unsupported).to_string()).is_err());
}

#[test]
fn published_valid_read_records_keep_exact_bytes_and_identities() {
    let mut paths: Vec<_> = std::fs::read_dir(common::fixtures().join("reads/records"))
        .unwrap()
        .map(|entry| entry.unwrap().path())
        .filter(|path| {
            path.extension()
                .is_some_and(|extension| extension == "json")
        })
        .collect();
    paths.sort();
    assert_eq!(
        paths.len(),
        8,
        "the frozen records must actually be collected"
    );
    for path in paths {
        let text = common::read(&path);
        let record = ReadRecord::from_json(&text).unwrap();
        assert_eq!(record.to_json_string(), text, "{}", path.display());
        let mut body = record.as_json().clone();
        body.as_object_mut().unwrap().remove("record_id");
        assert_eq!(read_hash(&body.to_string()), record.record_id());
    }
}

#[test]
fn arbitrary_value_identity_is_fallible_instead_of_sealing_an_empty_fallback() {
    for v in [json!({"value":1.5}), json!({"value":999.5})] {
        assert!(behavior_core::read::record_id(&v).is_err());
    }
}

#[test]
fn replay_does_not_reduce_duplicate_read_claims_to_the_last_one() {
    let read_module = behavior_core::admit(&common::read(
        &common::fixtures().join("reads/modules/lab.json"),
    ))
    .unwrap();
    let read = golden().to_string();
    assert!(behavior_core::read::replay_read(&read_module, &read).matches);
    let duplicate = format!("{{\"result\":\"INVALID_BINDING\",{}", &read[1..]);
    assert!(!behavior_core::read::replay_read(&read_module, &duplicate).matches);
}

#[test]
fn replay_does_not_reduce_duplicate_decision_claims_to_the_last_one() {
    let m = behavior_core::admit(&common::read(
        &common::fixtures().join("wire/valid/invoice.json"),
    ))
    .unwrap();
    let req = common::read(&common::fixtures().join("requests/invoice_allowed.json"));
    let decision = behavior_core::evaluate(&m, &req).to_json_string();
    assert!(behavior_core::replay(&m, &decision).matches);
    let duplicate = format!("{{\"result\":\"DENY\",{}", &decision[1..]);
    assert!(!behavior_core::replay(&m, &duplicate).matches);
}
