#![allow(clippy::unwrap_used)]
use reuse_study035::protocol::*;
use serde_json::json;
use std::collections::BTreeMap;

#[test]
fn strict_json_preserves_valid_data_and_rejects_ambiguous_wire() {
    assert_eq!(
        parse_json(br#"{"a":[1,null,true]}"#, 100).unwrap(),
        json!({"a":[1,null,true]})
    );
    for raw in [
        br#"{"a":1,"a":2}"#.as_slice(),
        b"{}{}",
        b"{\"a\":1.5}",
        b"{\"a\":NaN}",
        b"\xff",
        br#"{"x":"\ud800"}"#,
        br#"{"x":18446744073709551616}"#,
        br#"{"x":-0}"#,
    ] {
        assert!(parse_json(raw, 100).is_err());
    }
    assert!(parse_json(b"{}", 1).is_err());
    let deep = format!("{}0{}", "[".repeat(129), "]".repeat(129));
    assert!(parse_json(deep.as_bytes(), 1000).is_err());
}

#[test]
fn assurance_and_operational_outcomes_do_not_collapse() {
    let record = json!({"format":"core035.observation.v1","semantic":"not_evaluated","mathematical":"not_run","operational":"not_run","cost":"not_measured","candidate":"undetermined","control_result":"not_applicable","product_adoption":"unactivated","resources":{"aggregate_peak":null,"aggregate_peak_reason":"unavailable"}});
    assert!(validate_outcomes(&record).is_ok());
    for (key, bad) in [
        ("mathematical", "passed"),
        ("operational", "ALLOW"),
        ("cost", "fast"),
        ("candidate", "adopted"),
        ("product_adoption", "activated"),
        ("format", "core035.observation.v9"),
    ] {
        let mut altered = record.clone();
        altered[key] = json!(bad);
        assert!(validate_outcomes(&altered).is_err());
    }
    let mut forged = record.clone();
    forged["verified"] = json!(true);
    assert!(validate_outcomes(&forged).is_err());
    let mut missing = record.clone();
    missing.as_object_mut().unwrap().remove("mathematical");
    assert!(validate_outcomes(&missing).is_err());
    let mut unknown = record;
    unknown["resources"]
        .as_object_mut()
        .unwrap()
        .remove("aggregate_peak_reason");
    assert!(validate_outcomes(&unknown).is_err());
}

#[test]
fn subject_binds_history_position_and_anchor_not_just_state() {
    let expected =
        json!({"module":"m","policies":"p","history":{"state":"s","position":8,"record":"r"}});
    assert!(validate_subject(&expected, &expected).is_ok());
    for key in ["position", "record"] {
        let mut altered = expected.clone();
        altered["history"][key] = json!("other");
        assert!(validate_subject(&expected, &altered).is_err());
    }
}

#[test]
fn artifact_graph_has_no_dangling_or_self_authority_cycle() {
    let valid = BTreeMap::from([
        ("source".into(), vec![]),
        ("claim".into(), vec!["source".into()]),
    ]);
    assert!(validate_graph(&valid).is_ok());
    assert!(validate_graph(&BTreeMap::from([("self".into(), vec!["self".into()])])).is_err());
    assert!(
        validate_graph(&BTreeMap::from([
            ("a".into(), vec!["b".into()]),
            ("b".into(), vec!["a".into()])
        ]))
        .is_err()
    );
    assert!(validate_graph(&BTreeMap::from([("a".into(), vec!["missing".into()])])).is_err());
}

#[test]
fn research_identity_is_canonical_and_excludes_diagnostics() {
    let a = json!({"format":"core035.claim.v1","subject":{"x":1},"diagnostics":{"elapsed_ns":1}});
    let mut b = a.clone();
    b["diagnostics"]["elapsed_ns"] = json!(999);
    assert_eq!(semantic_digest(&a).unwrap(), semantic_digest(&b).unwrap());
    b["subject"]["x"] = json!(2);
    assert_ne!(semantic_digest(&a).unwrap(), semantic_digest(&b).unwrap());
}

#[test]
fn unknown_cell_is_invalid_input_not_an_unavailable_tool() {
    assert!(matches!(
        reuse_study035::reference::dimensions("growth-D6"),
        Err(reuse_study035::error::StudyError::InvalidInput(_))
    ));
}
