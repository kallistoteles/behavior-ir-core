#![allow(clippy::unwrap_used, clippy::expect_used)]
// Exercise the supported legacy entry points with their original rejection and
// read fixtures. Fresh action evaluation supplies the explicit current snapshot;
// immutable action decision records are checked separately through archive replay.
#![allow(clippy::duplicate_mod)]
//! Published legacy fixture contracts remain executable compatibility paths.
#[path = "intent.rs"]
mod action_fixtures;
mod common;
#[path = "read_intents.rs"]
mod read_fixtures;

#[test]
fn legacy_paths_keep_direct_records_without_invocation_envelopes() {
    let module = behavior_core::admit(&common::read(
        &common::fixtures().join("wire/valid/invoice.json"),
    ))
    .unwrap();
    let intent = common::json(&common::fixtures().join("intents/valid_allowed.json"));
    let mut host = common::json(&common::fixtures().join("host/invoice_1042.json"));
    let request = common::complete_request(
        &module,
        &serde_json::json!({
            "action":intent["capability"],"state":host["state"]
        }),
    );
    host["facts"] = request["facts"].clone();
    let record = behavior_core::evaluate_intent(
        &module,
        &common::read(&common::fixtures().join("intents/valid_allowed.json")),
        &host.to_string(),
    )
    .unwrap();
    assert_eq!(record.result(), "ALLOW");
    assert_eq!(record.as_json()["record_version"], "0.8");
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
