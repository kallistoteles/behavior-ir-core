#![allow(clippy::unwrap_used)]
use super::prepared::PreparedSnapshot;
use super::*;

fn wire() -> Json {
    let mut w: Json = serde_json::from_str(include_str!(concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/../../tests/fixtures/soundness/module.json"
    )))
    .unwrap();
    let l = json!({"file":"prepared.beh","line":1});
    w["invariants"] = json!([{"name":"population","loc":l,"body":{"op":"le","loc":l,"args":[{"op":"count","loc":l,"args":[{"op":"select","entity":"E","loc":l}]},{"op":"lit","type":{"t":"int"},"value":1000,"loc":l}]}}]);
    w["actions"].as_array_mut().unwrap().push(json!({"name":"create","loc":l,
        "params":[{"name":"id","role":"input","type":{"t":"id","entity":"E"}}],
        "effects":[{"create":"E","id":{"op":"param","param":"id","loc":l},
            "fields":{"x":{"op":"lit","type":{"t":"int"},"value":1,"loc":l},"y":{"op":"lit","type":{"t":"int"},"value":2,"loc":l}},"loc":l}],
        "preconditions":[],"postconditions":[]}));
    w
}
fn module() -> Module {
    crate::admit(&wire().to_string()).unwrap()
}
fn facts() -> Facts {
    let mut f = Facts::default();
    f.universe.insert(
        "E".into(),
        (0..2)
            .map(|i| (format!("e{i}"), json!({"id":format!("e{i}"),"x":1,"y":2})))
            .collect(),
    );
    f.identities.insert(("E".into(), "new".into()), false);
    f
}
fn request() -> String {
    json!({"action":"set","data_version":"seed","state":{"e":{"id":"e0","x":1,"y":2}},"input":{},"context":{}}).to_string()
}

#[test]
fn checked_parent_evaluation_preserves_complete_record_and_observations() {
    let m = module();
    let f = facts();
    let prepared = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    let checked = prepared.evaluate(&m, &request(), &f);
    let (record, observed) = evaluate_with(&m, &request(), &f);
    assert_eq!(checked.record().as_json(), record.as_json());
    assert_eq!(checked.observed().fields, observed.fields);
    assert_eq!(checked.observed().facts, observed.facts);
    assert_eq!(record.as_json()["result"], "ALLOW");
}

#[test]
fn checked_constructor_rejects_invalid_or_incoherent_parent() {
    let m = module();
    let mut f = facts();
    f.universe.get_mut("E").unwrap().get_mut("e0").unwrap()["x"] = json!(-1);
    assert!(PreparedSnapshot::new(&m, &f).is_err());
    f = facts();
    f.universe.get_mut("E").unwrap().get_mut("e0").unwrap()["id"] = json!("wrong");
    assert!(PreparedSnapshot::new(&m, &f).is_err());
}

#[test]
fn same_behavior_hash_does_not_authorize_stale_rendered_metadata() {
    let m = module();
    let f = facts();
    let prepared = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    let mut w = wire();
    w["constraints"][0]["body"]["loc"] = json!({"file":"another-source.beh","line":99});
    let other = crate::admit(&w.to_string()).unwrap();
    assert_eq!(m.behavior_version(), other.behavior_version());
    let checked = prepared.evaluate(&other, &request(), &f);
    assert_eq!(
        checked.record().as_json(),
        evaluate_with(&other, &request(), &f).0.as_json()
    );
    assert!(checked.child().is_none());
}

#[test]
fn resulting_state_evidence_is_specific_to_one_exact_parent_epoch() {
    let m = module();
    let f = facts();
    let mut left = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    let mut right = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    let checked = left.evaluate(&m, &request(), &f);
    let child = checked.child().unwrap();
    assert!(!right.apply(child.clone()));
    assert!(left.apply(child.clone()));
    assert!(!left.apply(child));
    let create=json!({"action":"create","data_version":"after","state":{},"input":{"id":"new"},"context":{}}).to_string();
    let checked = left.evaluate(&m, &create, &f);
    assert_eq!(checked.record().as_json()["result"], "ALLOW");
    assert!(left.apply(checked.child().unwrap()));
    assert_eq!(left.facts().universe["E"].len(), 3);
}

#[test]
fn prepared_reproduction_rejects_tampering_with_reference_error() {
    let m = module();
    let f = facts();
    let p = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    let checked = p.evaluate(&m, &request(), &f);
    let reproduced = crate::record::reproduce_prepared(
        &m,
        &checked.record().to_json_string(),
        &f,
        &p,
        Some(&checked),
    )
    .unwrap();
    assert_eq!(reproduced.record().as_json(), checked.record().as_json());
    let mut bad = checked.record().as_json().clone();
    bad["trace"][0]["outcome"] = json!("forged");
    let normal = crate::record::reproduce_observed_with(&m, &bad.to_string(), &f)
        .unwrap_err()
        .to_string();
    let fast = crate::record::reproduce_prepared(&m, &bad.to_string(), &f, &p, Some(&checked));
    assert_eq!(fast.err().unwrap().to_string(), normal);
}

#[cfg(feature = "validation-work")]
#[test]
fn prepared_paths_avoid_repeating_parent_validation_including_reproduction() {
    let m = module();
    let f = facts();
    let p = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    work::reset();
    let checked = p.evaluate(&m, &request(), &f);
    assert_eq!(work::read().snapshot_rows, 0);
    work::reset();
    crate::record::reproduce_prepared(
        &m,
        &checked.record().to_json_string(),
        &f,
        &p,
        Some(&checked),
    )
    .unwrap();
    assert_eq!(work::read().snapshot_rows, 0);
    assert_eq!(work::read().predicate_evaluations, 0);
}

#[test]
fn prepared_refusals_preserve_exact_reference_phase_and_facts() {
    let mut w = wire();
    w["actions"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"alias","role":"state","type":{"t":"entity","name":"E"}}));
    let m = crate::admit(&w.to_string()).unwrap();
    let f = facts();
    let p = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    for request in [
        "{".to_string(),
        json!({"action":"missing","data_version":"seed","state":{},"input":{},"context":{}}).to_string(),
        json!({"action":"set","data_version":"seed","state":{"e":{"id":"e0","x":1,"y":2},"alias":{"id":"e0","x":1,"y":2}},"input":{},"context":{}}).to_string(),
        json!({"action":"set","data_version":"seed","state":{"e":{"id":"e0","x":2,"y":2},"alias":{"id":"e1","x":1,"y":2}},"input":{},"context":{}}).to_string(),
    ] {
        assert_eq!(p.evaluate(&m,&request,&f).record().as_json(),evaluate_with(&m,&request,&f).0.as_json());
    }
}
