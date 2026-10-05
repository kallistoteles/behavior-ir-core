#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_core::invocation::replay_invocation;
use serde_json::{Value, json};

fn setup() -> (behavior_core::semantic::module::Module, std::path::PathBuf) {
    let dir = common::fixtures().join("invocation");
    (
        behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap(),
        dir,
    )
}
#[test]
fn every_evaluated_and_refused_golden_replays_without_a_snapshot() {
    let (module, dir) = setup();
    let mut count = 0;
    for entry in std::fs::read_dir(dir.join("records")).unwrap() {
        let path = entry.unwrap().path();
        let result = replay_invocation(&module, &common::read(&path));
        assert!(result.matches, "{}: {:?}", path.display(), result.diff);
        count += 1;
    }
    assert_eq!(count, 13);
}

#[test]
fn semantic_tampering_is_found_at_the_affected_evidence_path() {
    let (module, dir) = setup();
    let original = common::json(&dir.join("records/suspend.expected.json"));
    let mut cases: Vec<(&str, Value)> = Vec::new();
    let mut changed = original.clone();
    changed["requested_bindings"]["customer"]["id"] = json!("other");
    cases.push(("requested_bindings", changed));
    let mut changed = original.clone();
    changed["binding_facts"][0]["status"] = json!("unknown");
    cases.push(("binding_facts", changed));
    let mut changed = original.clone();
    changed["data_version"] = json!("different");
    cases.push(("data_version", changed));
    let mut changed = original.clone();
    changed["outcome"]["record"]["result"] = json!("DENY");
    cases.push(("outcome.record.result", changed));
    let mut changed = original.clone();
    changed["outcome"]["record_id"] = json!("sha256:wrong");
    cases.push(("outcome.record_id", changed));
    let mut changed = original;
    changed["capability"] = json!("check_standing");
    cases.push(("capability", changed));
    let mut changed = common::json(&dir.join("records/suspend_unknown.expected.json"));
    changed["outcome"]["problems"][0]["reason"] = json!("changed");
    cases.push(("outcome.problems[0].reason", changed));
    for (path, changed) in cases {
        let result = replay_invocation(&module, &changed.to_string());
        assert!(!result.matches);
        assert!(
            result.diff.as_ref().unwrap().contains(path),
            "expected {path}: {:?}",
            result.diff
        );
    }
}

#[test]
fn rehashing_a_contradictory_envelope_does_not_make_it_valid() {
    let (module, dir) = setup();
    for field in ["data_version", "capability"] {
        let mut changed = common::json(&dir.join("records/suspend.expected.json"));
        changed[field] = json!(if field == "capability" {
            "check_standing"
        } else {
            "other"
        });
        changed.as_object_mut().unwrap().remove("record_id");
        changed["record_id"] = json!(format!(
            "invocation:{}",
            behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", &changed)
                .unwrap()
        ));
        let result = replay_invocation(&module, &changed.to_string());
        let diff = result.diff.unwrap();
        assert!(
            diff.contains("CONTRADICTORY_RECORD") && diff.contains(field),
            "{diff}"
        );
    }
}
