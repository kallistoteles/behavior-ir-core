#![allow(clippy::unwrap_used, clippy::expect_used)]
use super::*;
use serde_json::json;
fn module(row: &str) -> Module {
    let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures/replay/018/rows")
        .join(row)
        .join("module.json");
    crate::admit(&std::fs::read_to_string(path).unwrap()).unwrap()
}
fn record(row: &str) -> String {
    let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures/replay/018/records")
        .join(format!("{row}.read.json"));
    std::fs::read_to_string(path).unwrap()
}
#[test]
fn supported_record_profiles_have_no_unknown_or_fresh_default() {
    let current = module("M08-H-D");
    let legacy = module("M07-D");
    assert_eq!(
        ReadReplayProfile::from_record(&current, &json!({"format":READ_RECORD_FORMAT}))
            .unwrap()
            .format(),
        READ_RECORD_FORMAT
    );
    assert_eq!(
        ReadReplayProfile::from_record(&current, &json!({"format":READ_RECORD_V2}))
            .unwrap()
            .format(),
        READ_RECORD_V2
    );
    assert!(ReadReplayProfile::from_record(&legacy, &json!({"format":READ_RECORD_V2})).is_err());
    for value in [
        json!({}),
        json!({"format":"future"}),
        json!({"format":null}),
    ] {
        assert!(ReadReplayProfile::from_record(&current, &value).is_err());
    }
}
#[test]
fn replay_preparation_preserves_strict_decode_and_profile_before_behavior_order() {
    let m = module("M08-H-D");
    let err = prepare_read_replay(&m, "{\"format\":\"x\",\"format\":\"y\"}").unwrap_err();
    assert!(err.contains("duplicate"), "{err}");
    let err = prepare_read_replay(&m, "{\"format\":\"future\",\"behavior_version\":\"wrong\"}")
        .unwrap_err();
    assert!(err.starts_with("format:"), "{err}");
    let err = prepare_read_replay(
        &m,
        "{\"format\":\"behavior.read_record.v1\",\"behavior_version\":\"wrong\"}",
    )
    .unwrap_err();
    assert!(err.starts_with("behavior_version:"), "{err}");
}
#[test]
fn checked_profile_cannot_authorize_a_different_module() {
    let m = module("M08-H-D");
    let other = module("M07-D");
    let prepared = prepare_read_replay(&m, &record("M08-H-D")).unwrap();
    assert!(
        execute_read_replay_with(
            &other,
            prepared.source(),
            "{}",
            &crate::facts::Facts::default(),
            prepared.profile()
        )
        .is_err()
    );
}
#[test]
fn original_historical_preparation_preserves_raw_evidence_and_requested_profile() {
    let m = module("M08-H-D");
    let text = record("M08-H-D");
    let prepared = prepare_read_replay(&m, &text).unwrap();
    assert_eq!(prepared.stored(), &canonical::decode_strict(&text).unwrap());
    assert_eq!(prepared.profile().format(), READ_RECORD_FORMAT);
    assert!(matches!(prepared.source(), ReadSource::Declared(name) if name == "inspect"));
    assert_eq!(
        prepared.request,
        record_request(prepared.stored()).to_string()
    );
}
#[test]
fn checked_profile_retains_semantic_profile_even_with_the_same_hash() {
    let m = module("M08-H-D");
    let prepared = prepare_read_replay(&m, &record("M08-H-D")).unwrap();
    // This unit-only mutation probes the wrapper invariant. It is not an
    // admitted historical module or a new compatibility row.
    let mut other = m.clone();
    other.profile = crate::semantic::types::SemanticProfile::Legacy;
    assert_eq!(other.hash(), m.hash());
    assert!(
        execute_read_replay_with(
            &other,
            prepared.source(),
            "{}",
            &crate::facts::Facts::default(),
            prepared.profile()
        )
        .is_err()
    );
}
#[test]
fn checked_profile_refuses_a_different_hash_with_the_same_semantic_profile() {
    let m = module("M08-H-D");
    let mut other = m.clone();
    other.hash = [0; 32];
    assert_eq!(other.semantic_profile(), m.semantic_profile());
    let prepared = prepare_read_replay(&m, &record("M08-H-D")).unwrap();
    assert!(
        execute_read_replay_with(
            &other,
            prepared.source(),
            "{}",
            &crate::facts::Facts::default(),
            prepared.profile()
        )
        .is_err()
    );
}
#[test]
fn source_validation_precedes_refused_transport_selection() {
    let m = module("M08-H-D");
    let mut evidence = canonical::decode_strict(&record("M08-H-D")).unwrap();
    evidence["read"]["declared"] = json!(false);
    evidence["refused_request"] = json!(42);
    let error = prepare_read_replay(&m, &evidence.to_string()).unwrap_err();
    assert!(error.starts_with("read.definition:"), "{error}");
}
#[test]
fn refused_request_contents_remain_raw_transport_evidence() {
    let m = module("M08-C-D");
    let mut evidence = canonical::decode_strict(&record("M08-C-D")).unwrap();
    let raw = "{\"input\":{},\"input\":{}}";
    evidence["refused_request"] = json!(raw);
    let prepared = prepare_read_replay(&m, &evidence.to_string()).unwrap();
    assert_eq!(prepared.request, raw);
}
#[test]
fn archived_read_selector_cannot_evaluate_a_resolved_action() {
    let root =
        std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures/replay/018");
    let mut wire: Json = serde_json::from_str(
        &std::fs::read_to_string(root.join("rows/M08-H-D/module.json")).unwrap(),
    )
    .unwrap();
    wire["actions"] = json!([{"name":"mutate", "loc":{"file":"unit.beh","line":1}, "params":wire["reads"][0]["params"],
        "preconditions":[], "postconditions":[], "command_effects":[],
        "effects":[{"loc":{"file":"unit.beh","line":1},"target":{"param":"c","field":"measurements"},
                    "value":{"op":"lit","type":{"t":"int"},"value":7,"loc":{"file":"unit.beh","line":1}}}]}]);
    let m = crate::admit(&wire.to_string()).unwrap();
    let snapshot = crate::invocation::Snapshot::decode(
        &m,
        &std::fs::read_to_string(root.join("rows/M08-H-D/snapshot.json")).unwrap(),
    )
    .unwrap()
    .0
    .unwrap();
    let requested = crate::invocation::RequestedInvocation::decode(
        &json!({"format":"behavior.invocation.v1","capability":"mutate",
        "bindings":{"c":{"entity":"Culture","id":"c1"}},"input":{},"context":{}})
        .to_string(),
    )
    .unwrap()
    .0
    .unwrap();
    let resolved = crate::invocation::resolve(&m, &requested, &snapshot).unwrap();
    let profile =
        ReadReplayProfile::from_record(&m, &json!({"format":READ_RECORD_FORMAT})).unwrap();
    assert!(
        crate::invocation::invoke_resolved_read_replay(&m, resolved, snapshot.facts(), &profile)
            .is_err()
    );
}
