#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/command_history.rs"]
mod h;
use behavior_store::documents::hash_of;
use behavior_store::{Backend, Store};
use serde_json::json;
#[test]
fn duplicate_intents_keep_multiplicity_and_have_independent_golden_occurrence_formula() {
    let m = h::module(true, true);
    let mut s = h::store(&m);
    let b = h::candidate(&m, &s, "same");
    assert!(h::all(&s).items().is_empty());
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    let page = h::all(&s);
    assert_eq!(page.items().len(), 3);
    let mut indices = std::collections::BTreeMap::new();
    for c in page.items() {
        let hash = c.intent()["intent_hash"].as_str().unwrap();
        let index = indices.entry(hash).or_insert(0);
        assert_eq!(c.multiplicity_index(), *index);
        *index += 1;
        assert_eq!(c.command_occurrence_id(),hash_of("behavior.command_occurrence.v1",&json!({"store":s.store_id().unwrap(),"commit_record_hash":s.current_history().unwrap().record,"intent_hash":hash,"multiplicity_index":c.multiplicity_index()})).unwrap());
        assert_eq!(c.history_position(), 1);
        assert_eq!(
            c.commit_record_hash(),
            s.backend().record(1).unwrap().unwrap().hash().unwrap()
        );
    }
    assert_eq!(indices.values().sum::<u32>(), 3);
    assert!(indices.values().any(|n| *n == 2));
    assert_eq!(page, h::all(&s));
    assert!(!b.record.to_string().contains("command_occurrence_id"));
    assert!(s.backend().record(1).unwrap().unwrap().hash().is_ok());
}
#[test]
fn copied_history_agrees_while_equal_state_equal_position_forks_differ() {
    let m = h::module(true, false);
    let mut a = h::store(&m);
    let mut b = h::store(&m);
    assert_eq!(a.store_id().unwrap(), b.store_id().unwrap());
    h::commit(&m, &mut a, "left");
    h::commit(&m, &mut b, "right");
    assert_eq!(a.current().unwrap(), b.current().unwrap());
    assert_ne!(
        h::all(&a).items()[0].command_occurrence_id(),
        h::all(&b).items()[0].command_occurrence_id()
    );
    let copied = Store::open(a.backend().clone()).unwrap();
    assert_eq!(h::all(&a), h::all(&copied));
}
#[test]
fn intentional_repeat_has_new_occurrence_and_late_recovery_has_original_occurrence() {
    let m = h::module(true, false);
    let mut s = h::store(&m);
    let first = h::commit(&m, &mut s, "same");
    let original = h::all(&s).items()[0].clone();
    h::commit(&m, &mut s, "same");
    let second = h::all(&s).items()[1].clone();
    assert_eq!(original.intent(), second.intent());
    assert_ne!(
        original.command_occurrence_id(),
        second.command_occurrence_id()
    );
    let before = h::counts(&s);
    let result = s.commit(&m, &first.evaluated_state, &first).unwrap();
    assert!(result.already);
    assert_eq!(h::counts(&s), before);
    assert_eq!(h::all(&s).items()[0], original);
}
#[test]
fn emission_permutation_preserves_commit_and_occurrence_multiset_but_count_changes_it() {
    let mut w = h::model::command_only_module(true);
    let a = w["actions"][0]["command_effects"][0].clone();
    let mut b = a.clone();
    b["payload"]["recipient"] = h::model::string("other");
    w["actions"][0]["command_effects"] = json!([a.clone(), a.clone(), b.clone()]);
    let m1 = behavior_core::admit(&w.to_string()).unwrap();
    w["actions"][0]["command_effects"] = json!([b.clone(), a.clone(), a.clone()]);
    let m2 = behavior_core::admit(&w.to_string()).unwrap();
    let mut s1 = h::store(&m1);
    let mut s2 = h::store(&m2);
    h::commit(&m1, &mut s1, "same");
    h::commit(&m2, &mut s2, "same");
    assert_eq!(h::all(&s1), h::all(&s2));
    w["actions"][0]["command_effects"] = json!([b, a]);
    let m3 = behavior_core::admit(&w.to_string()).unwrap();
    let mut s3 = h::store(&m3);
    h::commit(&m3, &mut s3, "same");
    assert_eq!(h::all(&s3).items().len(), 2);
    assert_ne!(
        s1.current_history().unwrap().record,
        s3.current_history().unwrap().record
    );
}
