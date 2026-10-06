#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Release-mode 012 wrapper budget: median of alternating 1,000-run trials.
mod common;
use behavior_core::invocation::RequestedInvocation;
use behavior_store::documents::{EvidencePolicy, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{InMemoryBackend, Store};
use serde_json::json;
use std::collections::BTreeMap;
use std::hint::black_box;
use std::time::{Duration, Instant};

#[test]
#[ignore = "release-mode invocation wrapper performance (012 T037)"]
fn three_binding_invocation_adds_at_most_ten_percent_over_legacy_evaluation() {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let snapshot = common::json(&dir.join("snapshots/s1.json"));
    let seed = snapshot["entities"]
        .as_array()
        .unwrap()
        .iter()
        .map(|e| SeedEntity {
            entity: e["entity"].as_str().unwrap().into(),
            value: e["value"].clone(),
        })
        .collect();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), seed),
    )
    .unwrap();
    let requested =
        RequestedInvocation::decode(&common::read(&dir.join("invocations/settle3.json")))
            .unwrap()
            .0
            .unwrap();
    let bindings: BTreeMap<_, _> = requested
        .bindings()
        .iter()
        .map(|(name, id)| (name.clone(), id.id.clone()))
        .collect();
    let empty = json!({});
    let legacy = || {
        let result = store
            .evaluate(
                &module,
                "settle",
                &bindings,
                &empty,
                &empty,
                common::T0,
                None,
            )
            .unwrap();
        assert!(result.bundle.is_some());
        black_box(result);
    };
    let unified = || {
        let result = store
            .invoke(&module, &requested, common::T0, None, None)
            .unwrap();
        assert!(result.bundle.is_some());
        black_box(result);
    };
    for _ in 0..25 {
        legacy();
        unified();
    }
    let measure = |f: &dyn Fn()| -> Duration {
        let start = Instant::now();
        for _ in 0..1000 {
            f();
        }
        start.elapsed()
    };
    let (mut old, mut new) = (Vec::new(), Vec::new());
    for round in 0..3 {
        if round % 2 == 0 {
            old.push(measure(&legacy));
            new.push(measure(&unified));
        } else {
            new.push(measure(&unified));
            old.push(measure(&legacy));
        }
    }
    old.sort();
    new.sort();
    let ratio = new[1].as_secs_f64() / old[1].as_secs_f64();
    eprintln!(
        "three bindings, 1000 evaluations: legacy {:?}, invocation {:?}, ratio {ratio:.3}",
        old[1], new[1]
    );
    assert!(ratio <= 1.1, "unified invocation exceeded 1.1×: {ratio:.3}");
}
