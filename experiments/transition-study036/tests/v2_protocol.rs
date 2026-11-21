use serde_json::{Value, json};
use transition_study036::protocol::{RequestV2, parse_request_v2};
fn input() -> Value {
    let reference = json!({"root_id":"repository","path":"input.json","bytes":1,"sha256":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"});
    json!({"format":"core036.request.v2","work_id":"w001","record_id":"request-1",
        "specification_ref":reference,"source_subject_ref":reference,"inputs":[reference],
        "outcome":{"operational":"declared","acceptance":"blocked"},"reason":"not executed",
        "blocking_ref":reference,"product_adoption":"unactivated","mode":"timing",
        "endpoint":"legacy_full_delivery","cases":[{"case_id":"case-1","kind":"operation",
        "N":2,"H":8,"requests":[{"request_ref":reference,"context_ref":reference,"metadata_ref":reference}]}]})
}
fn parses(v: &Value) -> bool {
    parse_request_v2(&serde_json::to_vec(v).unwrap_or_else(|error| panic!("{error}"))).is_ok()
}
#[test]
fn accepts_real_shape_without_creating_authority() {
    let x: RequestV2 =
        parse_request_v2(&serde_json::to_vec(&input()).unwrap_or_else(|error| panic!("{error}")))
            .unwrap_or_else(|error| panic!("{error}"));
    assert_eq!(x.cases.len(), 1);
    let mut v = input();
    v["mode"] = json!("diagnostic");
    assert!(parses(&v));
}
#[test]
fn rejects_flags_versions_unknown_modes_and_bounds() {
    for value in [
        json!({"format":"core036.request.v2","verified":true}),
        json!({"format":"core036.request.v1"}),
    ] {
        assert!(!parses(&value));
    }
    for which in ["mode", "flag", "count", "source", "path"] {
        let mut v = input();
        match which {
            "mode" => v["mode"] = json!("other"),
            "flag" => v["cases"][0]["verified"] = json!(true),
            "count" => v["cases"][0]["N"] = json!(true),
            "source" => v["source_subject_ref"] = Value::Null,
            "path" => v["inputs"][0]["path"] = json!("../escape"),
            _ => unreachable!(),
        }
        assert!(!parses(&v), "{which}");
    }
    assert!(parse_request_v2(&vec![b' '; 4 * 1024 * 1024 + 1]).is_err());
}
#[test]
fn exact_request_stream_and_utf8_id_ceilings() {
    let mut v = input();
    let operation = v["cases"][0]["requests"][0].clone();
    v["cases"][0]["requests"] = json!(vec![operation.clone(); 128]);
    assert!(parses(&v));
    v["cases"][0]["requests"] = json!(vec![operation; 129]);
    assert!(!parses(&v));
    let mut v = input();
    v["record_id"] = json!("é".repeat(128));
    assert!(parses(&v));
    v["record_id"] = json!("é".repeat(129));
    assert!(!parses(&v));
}
#[test]
fn rejects_duplicate_keys_trailing_bytes_and_deep_nesting() {
    let mut raw = serde_json::to_string(&input()).unwrap_or_else(|error| panic!("{error}"));
    raw.pop();
    raw.push_str(",\"work_id\":\"duplicate\"}");
    assert!(parse_request_v2(raw.as_bytes()).is_err());
    let mut raw = serde_json::to_vec(&input()).unwrap_or_else(|error| panic!("{error}"));
    raw.extend_from_slice(b" {}");
    assert!(parse_request_v2(&raw).is_err());
    assert!(parse_request_v2(&[255]).is_err());
    let raw = format!("{}0{}", "[".repeat(129), "]".repeat(129));
    assert!(parse_request_v2(raw.as_bytes()).is_err());
}
#[test]
fn rejects_every_nested_reference_boundary_and_forged_outcome() {
    for which in [
        "endpoint", "unknown", "digest", "bytes", "negative", "float", "path", "nul", "long",
        "zero", "history", "count", "outcome",
    ] {
        let mut v = input();
        match which {
            "endpoint" => v["endpoint"] = json!("compact_completion"),
            "unknown" => v["checked"] = json!(true),
            "digest" => {
                v["cases"][0]["requests"][0]["metadata_ref"]["sha256"] = json!("A".repeat(64))
            }
            "bytes" => v["cases"][0]["requests"][0]["metadata_ref"]["bytes"] = json!(true),
            "negative" => v["inputs"][0]["bytes"] = json!(-1),
            "float" => v["inputs"][0]["bytes"] = json!(1.5),
            "path" => v["inputs"][0]["path"] = json!("a//b"),
            "nul" => v["inputs"][0]["path"] = json!("a\0b"),
            "long" => v["inputs"][0]["path"] = json!("a".repeat(1025)),
            "zero" => v["cases"][0]["requests"] = json!([]),
            "history" => v["cases"][0]["H"] = json!(129),
            "count" => v["cases"][0]["N"] = json!(257),
            "outcome" => v["outcome"] = json!({"operational":"completed","acceptance":"met"}),
            _ => unreachable!(),
        }
        assert!(!parses(&v), "{which}");
    }
    let raw = serde_json::to_string(&input())
        .unwrap_or_else(|error| panic!("{error}"))
        .replace("\"bytes\":1", "\"bytes\":18446744073709551616");
    assert!(parse_request_v2(raw.as_bytes()).is_err());
}
#[test]
fn maximum_valid_control_refs_and_duplicate_cases() {
    let mut v = input();
    let reference = v["inputs"][0].clone();
    v["inputs"] = json!(vec![reference.clone(); 20_000]);
    assert!(parses(&v));
    v["inputs"] = json!(vec![reference; 20_001]);
    assert!(!parses(&v));
    let mut v = input();
    v["cases"][0]["N"] = json!(256);
    v["cases"][0]["H"] = json!(128);
    assert!(parses(&v));
    let case = v["cases"][0].clone();
    v["cases"] = json!([case.clone(), case]);
    assert!(!parses(&v));
}
#[test]
fn semantic_payload_numbers_stay_opaque_and_source_equality_is_separate() {
    use sha2::{Digest, Sha256};
    use transition_study036::protocol::validate_subject;
    let metadata = br#"{"native_metadata":1.25}"#;
    let mut v = input();
    let expected = v["source_subject_ref"].clone();
    v["cases"][0]["requests"][0]["metadata_ref"]["bytes"] = json!(metadata.len());
    v["cases"][0]["requests"][0]["metadata_ref"]["sha256"] =
        json!(format!("{:x}", Sha256::digest(metadata)));
    assert!(parses(&v));
    v["source_subject_ref"]["sha256"] = json!("b".repeat(64));
    assert!(parses(&v)); // Valid transport is not verified source identity.
    assert!(validate_subject(&expected, &v["source_subject_ref"]).is_err());
}

#[test]
fn first_error_order_survives_validation_helper_boundaries() {
    fn error(value: &Value) -> String {
        let bytes = serde_json::to_vec(value).unwrap_or_else(|failure| panic!("{failure}"));
        match parse_request_v2(&bytes) {
            Err(failure) => failure.to_string(),
            Ok(_) => panic!("malformed request was accepted"),
        }
    }
    let mut value = input();
    value["reason"] = json!("");
    value["specification_ref"]["path"] = json!("../bad");
    value["cases"][0]["N"] = json!(1);
    value["cases"][0]["requests"][0]["request_ref"]["path"] = json!("../bad");
    value["cases"][0]["requests"][0]["request_ref"]["sha256"] = json!("bad");
    assert_eq!(error(&value), "V2EnvelopeBound");
    value["reason"] = json!("declared");
    assert_eq!(error(&value), "V2ReferencePath");
    value["specification_ref"]["path"] = json!("input.json");
    assert_eq!(error(&value), "V2WorkloadBound");
    value["cases"][0]["N"] = json!(2);
    assert_eq!(error(&value), "V2ReferencePath");
    value["cases"][0]["requests"][0]["request_ref"]["path"] = json!("input.json");
    let second_case = value["cases"][0].clone();
    value["cases"]
        .as_array_mut()
        .unwrap_or_else(|| panic!("cases"))
        .push(second_case);
    // An earlier operation's error precedes the later duplicate-case error.
    assert_eq!(error(&value), "V2ReferenceDigest");
    value["cases"][0]["requests"][0]["request_ref"]["sha256"] = json!("a".repeat(64));
    assert_eq!(error(&value), "V2WorkloadBound");
}

#[test]
fn reference_path_language_matches_original_utf8_predicate() {
    fn check(path: &str) {
        // The exact original native predicate is the independent regression oracle.
        let expected = !path.is_empty()
            && path.len() <= 1024
            && !path.contains(['\\', '\0'])
            && !path
                .split('/')
                .any(|segment| matches!(segment, "" | "." | ".."));
        let mut value = input();
        value["specification_ref"]["path"] = json!(path);
        assert_eq!(parses(&value), expected, "path {path:?}");
    }
    let alphabet = ["/", ".", "a", "\\", "\0", "å", "𝄞", "中"];
    let mut frontier = vec![String::new()];
    for _ in 0..=4 {
        for path in &frontier {
            check(path);
        }
        frontier = frontier
            .iter()
            .flat_map(|prefix| {
                alphabet
                    .iter()
                    .map(move |suffix| format!("{prefix}{suffix}"))
            })
            .collect();
    }
    for path in [
        "a".repeat(1023),
        "a".repeat(1024),
        "a".repeat(1025),
        "å".repeat(512),
        "å".repeat(513),
    ] {
        check(&path);
    }
}
