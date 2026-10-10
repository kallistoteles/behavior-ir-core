#![allow(clippy::unwrap_used)]
use super::*;
use serde_json::json;

#[test]
fn candidate_overlay_preserves_reference_fact_error_diagnostics() {
    let k = key("E", "one");
    let value = json!({"id":"one","x":1}); // missing y exercises an active provider failure
    let parent = SeedFacts {
        keys: BTreeSet::from([k.clone()]),
        incoming: BTreeMap::new(),
        values: BTreeMap::from([(k.clone(), value)]),
    };
    let candidate = CandidateSnapshot {
        parent: &parent,
        changed: BTreeMap::new(),
        removed: BTreeSet::new(),
        references: &[],
    };
    assert_eq!(
        candidate.field("E", "one", "y"),
        parent.field("E", "one", "y")
    );
    let mut w: Json = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap();
    let l = json!({"file":"delta.beh","line":1});
    w["invariants"] = json!([{"name":"check_y","loc":l,"body":{"op":"all","args":[{"op":"select","entity":"E","loc":l}],"param":"e","body":{"op":"gt","args":[{"op":"field","param":"e","field":"y","loc":l},{"op":"lit","type":{"t":"int"},"value":0,"loc":l}],"loc":l},"loc":l}}]);
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let values = parent
        .values
        .iter()
        .map(|(k, v)| ((k.entity.clone(), k.id.clone()), v.clone()))
        .collect();
    let derivative = behavior_core::validation::ValidationPlan::new(&m).derivative_from_valid(
        &candidate,
        &BTreeSet::from([("E".into(), "one".into())]),
        &candidate,
    );
    assert_eq!(
        derivative.after(),
        &behavior_core::eval::check_behavior_snapshot(&m, &values, &parent)
    );
}
