#![allow(clippy::unwrap_used, clippy::expect_used)]
// Deliberately execute the original unmodified fixture suites in the frozen
// compatibility contract; their test-local helper modules remain unchanged.
#![allow(clippy::duplicate_mod)]
//! Published legacy fixture contracts remain executable compatibility paths.
#[path = "intent.rs"]
mod action_fixtures;
mod common;
#[path = "read_intents.rs"]
mod read_fixtures;

#[test]
fn legacy_paths_return_their_original_records_without_invocation_envelopes() {
    let module = behavior_core::admit(&common::read(
        &common::fixtures().join("wire/valid/invoice.json"),
    ))
    .unwrap();
    let record = behavior_core::evaluate_intent(
        &module,
        &common::read(&common::fixtures().join("intents/valid_allowed.json")),
        &common::read(&common::fixtures().join("host/invoice_1042.json")),
    )
    .unwrap();
    assert_ne!(record.as_json()["format"], "behavior.invocation_record.v1");
    let module = behavior_core::admit(&common::read(
        &common::fixtures().join("reads/modules/lab.json"),
    ))
    .unwrap();
    let read = behavior_core::read::evaluate_read_intent(
        &module,
        &common::read(&common::fixtures().join("read_intents/valid_value.json")),
        &common::read(&common::fixtures().join("read_intents/host.json")),
    )
    .unwrap();
    assert_eq!(read.record.as_json()["format"], "behavior.read_record.v1");
    assert_ne!(
        read.record.as_json()["format"],
        "behavior.invocation_record.v1"
    );
}
