#![allow(clippy::unwrap_used)]
use behavior_core as core_api;
use behavior_store as store_api;
#[path = "support/execution_evidence_workload.rs"]
mod workload;
use workload::fixture::Case;

#[test]
fn prepared_history_is_outside_the_fixed_window() {
    let case = Case {
        n: 3,
        history: 4,
        steps: 2,
        ..Case::default()
    };
    let (result, observed) = workload::run(&case);
    assert_eq!(result["prepared_history_position"], 4);
    assert_eq!(result["final_position"], 6);
    assert_eq!(result["final_members"], 5);
    assert!(result["metrics"]["drain_ms"].as_f64().unwrap() > 0.);
    for family in [
        "subject", "records", "bundles", "commits", "head", "versions", "reads", "commands",
        "replay",
    ] {
        assert!(observed.get(family).is_some(), "missing {family}");
    }
}

#[test]
fn padding_changes_bytes_without_changing_the_window_or_population() {
    let small = Case {
        n: 3,
        steps: 2,
        padding: 16,
        ..Case::default()
    };
    let large = Case {
        padding: 256,
        ..small.clone()
    };
    let (a, _) = workload::run(&small);
    let (b, _) = workload::run(&large);
    assert!(b["observation_bytes"].as_u64().unwrap() > a["observation_bytes"].as_u64().unwrap());
    assert_eq!(a["final_members"], b["final_members"]);
    assert_eq!(a["final_position"], b["final_position"]);
}

#[test]
fn actual_distinct_creates_are_counted() {
    let case = Case {
        n: 3,
        steps: 2,
        batch: 2,
        rules: 4,
        ..Case::default()
    };
    let (result, _) = workload::run(&case);
    assert_eq!(result["final_members"], 7);
    assert_eq!(result["changed_identities"], 4);
}

#[test]
fn commands_filters_and_parent_references_are_real_core_inputs() {
    for case in [
        Case {
            n: 3,
            steps: 2,
            commands: 2,
            history: 2,
            ..Case::default()
        },
        Case {
            n: 3,
            steps: 2,
            filter_terms: 4,
            global: "filtered".into(),
            operation: "update".into(),
            ..Case::default()
        },
        Case {
            n: 3,
            steps: 2,
            commands: 2,
            relations: true,
            global: "filtered".into(),
            ..Case::default()
        },
    ] {
        let (result, observed) = workload::run(&case);
        assert_eq!(result["execution_outcome"], "ALLOW");
        assert!(observed["replay"]["references"]["ok"].as_bool().unwrap());
    }
}

#[test]
fn affected_count_boundary_allows_1000_and_refuses_1001() {
    use serde_json::json;
    use std::collections::BTreeMap;
    use store_api::Store;
    let case = Case {
        n: 999,
        steps: 2,
        ..Case::default()
    };
    let mut wire = workload::fixture::wire(&case);
    wire["invariants"][0]["body"]["args"][1]["value"] = json!(1000);
    let module = core_api::admit(&wire.to_string()).unwrap();
    let mut store = Store::create(
        store_api::InMemoryBackend::new(),
        &module,
        workload::fixture::genesis(&case, &module),
    )
    .unwrap();
    let first = store
        .evaluate(
            &module,
            "create",
            &BTreeMap::new(),
            &json!({"id0":"number1000"}),
            &json!({}),
            "2026-10-28T00:00:00Z",
            None,
        )
        .unwrap();
    assert_eq!(first.record["result"], "ALLOW");
    let b = first.bundle.unwrap();
    store.commit(&module, &b.evaluated_state, &b).unwrap();
    let head = store.current_history().unwrap();
    let second = store
        .evaluate(
            &module,
            "create",
            &BTreeMap::new(),
            &json!({"id0":"number1001"}),
            &json!({}),
            "2026-10-28T00:00:00Z",
            None,
        )
        .unwrap();
    assert_eq!(second.record["result"], "DENY");
    assert!(second.bundle.is_none());
    assert_eq!(head, store.current_history().unwrap());
}
