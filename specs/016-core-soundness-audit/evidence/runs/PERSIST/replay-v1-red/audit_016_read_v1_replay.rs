#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Audit 016 counterexamples only. No runtime fix is included.
//! These assertions deliberately state the existing historical replay contract.
//! The v1 conversion matches the baseline standalone compatibility regression.
#[path = "../../behavior-core/tests/support/read_soundness.rs"]
mod model;

use behavior_core::invocation::RequestedInvocation;
use behavior_core::read::{ReadRecord, ReadSource, replay_read};
use behavior_store::documents::{EvidencePolicy, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use serde_json::json;
use std::collections::BTreeMap;

#[test]
fn historical_wire08_v1_read_must_replay_against_its_exact_store_position() {
    let module = behavior_core::admit(&model::module(Some("state"), false).to_string()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), vec![SeedEntity {
            entity: "Culture".into(), value: model::value(0),
        }]),
    ).unwrap();
    let head_before = store.backend().head().unwrap();
    let at = store.current().unwrap();
    let schema_before = store.schema_at(&at).unwrap();
    assert_eq!(at.position, 0);
    assert_eq!(schema_before.hash, behavior_core::schema(&module).hash);
    let current = store.read(
        &module, &ReadSource::Declared("inspect".into()),
        &BTreeMap::from([("c".into(), "c1".into())]), &json!({}), &json!({}), Some(&at),
    ).unwrap();
    assert_eq!(current.record.result(), "EVALUATION_ERROR");
    assert!(store.replay_read(&module, &current.record.to_json_string()).unwrap().matches);

    let mut historical = current.record.as_json().clone();
    historical["format"] = json!("behavior.read_record.v1");
    historical["reasons"] = current.record.diagnostics()["reasons"].clone();
    historical["derived"] = current.record.diagnostics()["derived"].clone();
    historical.as_object_mut().unwrap().remove("facts");
    historical["record_id"] = json!(behavior_core::read::record_id(&historical).unwrap());
    assert!(ReadRecord::from_json(&historical.to_string()).is_ok());
    let standalone = replay_read(&module, &historical.to_string());
    assert!(standalone.matches, "standalone historical replay: {:?}", standalone.diff);
    let backed = store.replay_read(&module, &historical.to_string()).unwrap();
    println!("audit016 exact-state={at:?} schema={schema_before:?} historical={} standalone={standalone:?} backed={backed:?}", historical);
    assert_eq!(store.backend().head().unwrap(), head_before);
    assert!(backed.matches, "historical read must retain its recorded profile against Store: {:?}", backed.diff);
}

#[test]
fn historical_wire08_v1_inner_read_must_replay_as_store_invocation() {
    let module = behavior_core::admit(&model::module(Some("state"), false).to_string()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(), &module,
        genesis_for(&module, EvidencePolicy::none(), vec![SeedEntity {
            entity: "Culture".into(), value: model::value(0),
        }]),
    ).unwrap();
    let head_before = store.backend().head().unwrap();
    let at = store.current().unwrap();
    let raw = json!({"format":"behavior.invocation.v1","capability":"inspect",
        "bindings":{"c":{"entity":"Culture","id":"c1"}},"input":{},"context":{}});
    let request = RequestedInvocation::decode(&raw.to_string()).unwrap().0.unwrap();
    let current = store.invoke(&module, &request, "1970-01-01T00:00:00Z", None, Some(&at)).unwrap();
    assert!(current.bundle.is_none());
    assert!(store.replay_invocation(&module, &current.record.to_json_string()).unwrap().matches);
    let mut historical = current.record.as_json().clone();
    let inner = &mut historical["outcome"]["record"];
    inner["format"] = json!("behavior.read_record.v1");
    inner["reasons"] = current.record.diagnostics()["reasons"].clone();
    inner["derived"] = current.record.diagnostics()["derived"].clone();
    inner.as_object_mut().unwrap().remove("facts");
    inner["record_id"] = json!(behavior_core::read::record_id(inner).unwrap());
    historical["outcome"]["record_id"] = historical["outcome"]["record"]["record_id"].clone();
    historical.as_object_mut().unwrap().remove("record_id");
    let hash = behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", &historical).unwrap();
    historical["record_id"] = json!(format!("invocation:{hash}"));
    let standalone = behavior_core::invocation::replay_invocation(&module, &historical.to_string());
    assert!(standalone.matches, "standalone historical invocation replay: {:?}", standalone.diff);
    let backed = store.replay_invocation(&module, &historical.to_string()).unwrap();
    println!("audit016 exact-state={at:?} historical={} standalone={standalone:?} backed={backed:?}", historical);
    assert_eq!(store.backend().head().unwrap(), head_before);
    assert!(backed.matches, "historical inner read must retain its profile against Store invocation: {:?}", backed.diff);
}
