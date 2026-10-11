//! Replay must reproduce evidence without constructing fresh commit authority.
#![allow(clippy::unwrap_used, clippy::expect_used)]

use super::*;
use std::cell::Cell;

thread_local! {
    static BUNDLES: Cell<usize> = const { Cell::new(0) };
}

pub(super) fn note_bundle() {
    BUNDLES.with(|count| count.set(count.get() + 1));
}

fn action_store() -> (
    Module,
    Store<crate::InMemoryBackend>,
    behavior_core::invocation::RequestedInvocation,
) {
    let mut wire: Json = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/replay/018/rows/M08-C-D/module.json"
    ))
    .unwrap();
    wire["actions"] = json!([{
        "name":"noop", "loc":{"file":"018-unit.beh","line":1},
        "params":[{"name":"c","role":"state","type":{"t":"entity","name":"Culture"}}],
        "preconditions":[], "postconditions":[],
        "effects":[{"target":{"param":"c","field":"measurements"},
            "value":{"op":"field","param":"c","field":"measurements","loc":{"file":"018-unit.beh","line":1}},
            "loc":{"file":"018-unit.beh","line":1}}], "command_effects":[]
    }]);
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let policy = behavior_verify::governance::trusted::EvidencePolicyV2::from_json(
        r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#
    ).unwrap();
    let genesis = genesis_v2_for(
        &module,
        policy,
        vec![crate::documents::SeedEntity {
            entity: "Culture".into(),
            value: json!({"id":"c1","measurements":7}),
        }],
    )
    .unwrap();
    let store = Store::create(crate::InMemoryBackend::new(), &module, genesis).unwrap();
    let requested = behavior_core::invocation::RequestedInvocation::decode(
        r#"{"format":"behavior.invocation.v1","capability":"noop","bindings":{"c":{"entity":"Culture","id":"c1"}},"input":{},"context":{}}"#
    ).unwrap().0.unwrap();
    (module, store, requested)
}

#[test]
fn current_action_replay_does_not_construct_commit_bundle() {
    let (module, store, requested) = action_store();
    BUNDLES.with(|count| count.set(0));
    let fresh = store
        .invoke(&module, &requested, "1970-01-01T00:00:00Z", None, None)
        .unwrap();
    assert_eq!(fresh.record.inner_record().unwrap()["result"], "ALLOW");
    assert!(
        fresh.bundle.is_some(),
        "fresh invocation must retain commit capability"
    );
    assert_eq!(
        BUNDLES.with(Cell::get),
        1,
        "construction probe must observe actual bundle"
    );
    let before = serde_json::to_value(store.backend().head().unwrap()).unwrap();
    BUNDLES.with(|count| count.set(0));
    let replay = store
        .replay_invocation(&module, &fresh.record.to_json_string())
        .unwrap();
    assert!(replay.matches, "{:?}", replay.diff);
    assert_eq!(
        serde_json::to_value(store.backend().head().unwrap()).unwrap(),
        before
    );
    assert_eq!(
        BUNDLES.with(Cell::get),
        0,
        "replay constructed fresh commit authority"
    );
}

#[test]
fn decoded_document_refusal_replay_does_not_construct_commit_bundle() {
    let (module, store, requested) = action_store();
    let mut intent = requested.as_json();
    intent["format"] = json!("behavior.capability_intent.v1");
    intent.as_object_mut().unwrap().remove("context");
    let context = json!({});

    // This is a genuine action intent which can produce an ALLOW bundle from
    // the actual Store. Its refusal below comes solely from the archived
    // standalone snapshot document, not an invented invalid action or binding.
    BUNDLES.with(|count| count.set(0));
    let fresh = store
        .invoke_intent(
            &module,
            &intent.to_string(),
            &context,
            "1970-01-01T00:00:00Z",
            None,
        )
        .unwrap();
    assert_eq!(fresh.record.inner_record().unwrap()["result"], "ALLOW");
    assert!(fresh.bundle.is_some());
    assert_eq!(
        BUNDLES.with(Cell::get),
        1,
        "positive control must construct a real bundle"
    );

    let malformed_snapshot = json!({
        "format":"behavior.snapshot.v1",
        "data_version":fresh.record.as_json()["data_version"],
        "entities":{}, "facts":{}
    });
    let refused = behavior_core::invocation::invoke_document(
        &module,
        &intent.to_string(),
        &malformed_snapshot.to_string(),
        Some(&context),
    )
    .unwrap();
    assert_eq!(refused.outcome_kind(), "pre_evaluation_refusal");
    assert_eq!(
        refused.as_json()["outcome"]["decode_evidence"]["source_kind"],
        "documents"
    );
    assert_eq!(
        refused.as_json()["data_version"],
        fresh.record.as_json()["data_version"]
    );
    let standalone =
        behavior_core::invocation::replay_invocation(&module, &refused.to_json_string());
    assert!(
        standalone.matches,
        "legitimate decoded refusal must reproduce: {:?}",
        standalone.diff
    );

    let before = serde_json::to_value(store.backend().head().unwrap()).unwrap();
    BUNDLES.with(|count| count.set(0));
    let replay = store
        .replay_invocation(&module, &refused.to_json_string())
        .unwrap();
    assert!(
        !replay.matches,
        "actual Store inputs must not reproduce the malformed snapshot refusal"
    );
    assert_eq!(
        serde_json::to_value(store.backend().head().unwrap()).unwrap(),
        before
    );
    assert_eq!(
        BUNDLES.with(Cell::get),
        0,
        "decode-evidence replay constructed fresh commit authority"
    );
}
