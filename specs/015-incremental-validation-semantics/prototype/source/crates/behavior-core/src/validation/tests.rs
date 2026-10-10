#![allow(clippy::unwrap_used)]
use super::*;
use crate::delta::{DeltaOperator, Replacement};
use crate::facts::Facts;
use proptest::prelude::*;
use serde_json::json;
use std::collections::{BTreeMap, BTreeSet};
fn module() -> Module {
    let mut w: serde_json::Value = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap();
    let l = json!({"file":"delta.beh","line":1});
    let direct = w["constraints"][0]["body"].clone();
    w["derived"] = json!([{"name":"positive_derived","kind":"rule","params":[{"name":"e","type":{"t":"entity","name":"E"}}],"body":direct,"loc":l}]);
    w["constraints"][0]["body"] =
        json!({"op":"derived","name":"positive_derived","args":["e"],"loc":l});
    crate::admit(&w.to_string()).unwrap()
}
fn facts(rows: &BTreeMap<Key, serde_json::Value>) -> Facts {
    let mut f = Facts::default();
    f.universe.insert(
        "E".into(),
        rows.iter()
            .map(|((_, id), v)| (id.clone(), v.clone()))
            .collect(),
    );
    f
}
proptest! {
    #![proptest_config(ProptestConfig::with_cases(128))]
    #[test]
    fn optimized_rows_equal_reference_including_decode_and_rule_errors(
        original in prop::collection::vec(1i64..20,1..15),
        changes in prop::collection::vec((0usize..20,-2i64..20,0u8..5),0..15)
    ) {
        let m=module();let plan=ValidationPlan::new(&m);
        let parent:BTreeMap<Key,_>=original.iter().enumerate().map(|(i,x)|(("E".into(),format!("r{i}")),json!({"id":format!("r{i}"),"x":x,"y":2}))).collect();
        let mut child=parent.clone();let mut changed=BTreeSet::new();
        for (i,x,kind) in changes {
            let key=("E".into(),format!("r{i}"));changed.insert(key.clone());
            let mut row=json!({"id":key.1,"x":x,"y":2});
            match kind {0=>{child.remove(&key);continue;},1=>row["x"]=json!("bad"),2=>row["id"]=json!("wrong"),3=>{row.as_object_mut().unwrap().remove("y");},_=>{}}
            child.insert(key,row);
        }
        let old_facts=facts(&parent);let new_facts=facts(&child);
        prop_assert!(crate::eval::check_behavior_snapshot(&m,&parent,&old_facts).is_ok());
        let full=|rows:&BTreeMap<Key,serde_json::Value>|crate::eval::check_behavior_snapshot(&m,rows,&facts(rows));
        let reference=full.reference_delta(&parent,&Replacement::between(parent.clone(),child.clone())).unwrap();
        let derivative=plan.derivative_from_valid(&child,&changed,&new_facts);
        prop_assert_eq!(derivative,reference);
    }
}
#[test]
fn global_and_query_dependencies_have_reference_derivatives() {
    let mut w: serde_json::Value = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap();
    let l = json!({"file":"delta.beh","line":1});
    w["invariants"] = json!([{"name":"two","loc":l,"body":{"op":"gt","args":[{"op":"count","args":[{"op":"select","entity":"E","loc":l}],"loc":l},{"op":"lit","type":{"t":"int"},"value":1,"loc":l}],"loc":l}}]);
    let m = crate::admit(&w.to_string()).unwrap();
    let plan = ValidationPlan::new(&m);
    let child = BTreeMap::from([(("E".into(), "one".into()), json!({"id":"one","x":1,"y":2}))]);
    let delta = plan.derivative_from_valid(&child, &BTreeSet::new(), &facts(&child));
    assert_eq!(
        delta.after(),
        &crate::eval::check_behavior_snapshot(&m, &child, &facts(&child))
    );
}

#[test]
fn optimized_transitive_derived_rows_never_enumerate_unrelated_rows() {
    struct Indexed<'a>(&'a BTreeMap<Key, serde_json::Value>);
    impl RowSource for Indexed<'_> {
        fn row(&self, k: &Key) -> Option<&serde_json::Value> {
            self.0.get(k)
        }
        fn rows(&self) -> Box<dyn Iterator<Item = (Key, &serde_json::Value)> + '_> {
            panic!("row derivative enumerated the universe")
        }
    }
    let m = module();
    let rows = BTreeMap::from([(
        ("E".into(), "changed".into()),
        json!({"id":"changed","x":2,"y":2}),
    )]);
    let delta = ValidationPlan::new(&m).derivative_from_valid(
        &Indexed(&rows),
        &BTreeSet::from([("E".into(), "changed".into())]),
        &facts(&rows),
    );
    assert_eq!(delta.after(), &Ok(()));
}
#[test]
fn transitive_exists_derived_rule_rechecks_unchanged_sources() {
    let mut w: serde_json::Value = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap();
    let l = json!({"file":"delta.beh","line":1});
    w["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"target","type":{"t":"id","entity":"E"},"loc":l}));
    w["derived"] = json!([
        {"name":"external","kind":"rule","params":[{"name":"row","type":{"t":"entity","name":"E"}}],"body":{"op":"exists","args":[{"op":"field","param":"row","field":"target","loc":l}],"loc":l},"loc":l},
        {"name":"within","kind":"rule","params":[{"name":"own","type":{"t":"entity","name":"E"}}],"body":{"op":"derived","name":"external","args":["own"],"loc":l},"loc":l}
    ]);
    w["constraints"][0]["body"] = json!({"op":"derived","name":"within","args":["e"],"loc":l});
    let m = crate::admit(&w.to_string()).unwrap();
    let child = BTreeMap::from([(
        ("E".into(), "one".into()),
        json!({"id":"one","x":1,"y":2,"target":"deleted"}),
    )]);
    let delta = ValidationPlan::new(&m).derivative_from_valid(
        &child,
        &BTreeSet::from([("E".into(), "deleted".into())]),
        &facts(&child),
    );
    assert!(delta.after().is_err());
    assert_eq!(
        delta.after(),
        &crate::eval::check_behavior_snapshot(&m, &child, &facts(&child))
    );
}
