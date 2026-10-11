//! Test-only audit reproduction: contradictory duplicate keys must be rejected
//! before current read evidence is reduced to a JSON map. No production fix.
#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "../../behavior-core/tests/support/read_soundness.rs"]
mod model;

use behavior_core::read::{ReadRecord, ReadSource, replay_read};
use behavior_store::documents::{EvidencePolicy, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use serde_json::json;
use std::collections::BTreeMap;

#[test]
fn store_replay_rejects_contradictory_duplicate_current_read_result() {
    let mut wire = model::module(None, false);
    wire["reads"][0]["body"] =
        json!({"value":model::op("count",vec![model::select()])});
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(
            &module,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "Culture".into(),
                value: model::value(1),
            }],
        ),
    )
    .unwrap();
    let before = store.backend().head().unwrap();
    let record = store
        .read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::new(),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record;
    assert_eq!(record.as_json()["format"], "behavior.read_record.v2");
    assert_eq!(record.result(), "VALUE");
    assert_eq!(record.as_json()["value"], 1);
    let original = record.to_json_string();
    assert!(ReadRecord::from_json(&original).is_ok());
    assert!(replay_read(&module, &original).matches);
    let original_store = store.replay_read(&module, &original).unwrap();
    assert!(original_store.matches, "valid control failed: {:?}", original_store.diff);

    // Keep the original identity unchanged. A strict decoder must reject the
    // conflicting duplicate regardless of which occurrence a permissive map
    // parser would retain; no legitimate semantic object is being rehashed.
    assert!(original.starts_with('{'));
    let contradictory = format!(
        "{{\"result\":\"EVALUATION_ERROR\",{}",
        &original[1..]
    );
    let reduced: serde_json::Value = serde_json::from_str(&contradictory).unwrap();
    assert_eq!(reduced, *record.as_json(), "control must expose last-key reduction");
    assert!(ReadRecord::from_json(&contradictory).is_err());
    let strict = replay_read(&module, &contradictory);
    assert!(!strict.matches, "Core accepted duplicate current evidence");
    let store_replay = store.replay_read(&module, &contradictory).unwrap();
    assert_eq!(store.backend().head().unwrap(), before, "replay mutated history");
    eprintln!(
        "format={}; original_id={}; core_duplicate={strict:?}; store_duplicate={store_replay:?}",
        record.as_json()["format"], record.record_id()
    );
    assert!(
        !store_replay.matches,
        "Store replay accepted contradictory duplicate result after map reduction"
    );
}
