#![allow(clippy::unwrap_used)]
use super::*;
use serde_json::{Value, json};
fn wire() -> Value {
    super::super::tests::wire()
}
fn admit(w: &Value) -> Module {
    behavior_core::admit(&w.to_string()).unwrap()
}
fn derived_wire(nonlocal: bool) -> Value {
    let mut w = wire();
    let l = json!({"file":"closure.beh","line":1});
    w["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"target","type":{"t":"id","entity":"E"},"loc":l}));
    let mut body = w["constraints"][0]["body"].clone();
    body["args"][0]["param"] = json!("row");
    if nonlocal {
        body = json!({"op":"and","loc":l,"args":[{"op":"lit","type":{"t":"bool"},"value":false,"loc":l},{"op":"exists","loc":l,"args":[{"op":"field","param":"row","field":"target","loc":l}]}]});
    }
    w["derived"] = json!([{ "name":"leaf","kind":"rule","params":[{"name":"row","type":{"t":"entity","name":"E"}}],"loc":l,"body":body },{"name":"outer","kind":"rule","params":[{"name":"alias","type":{"t":"entity","name":"E"}}],"loc":l,"body":{"op":"derived","name":"leaf","args":["alias"],"loc":l}}]);
    w["constraints"][0]["body"] = json!({"op":"derived","name":"outer","args":["e"],"loc":l});
    w
}
#[test]
fn nested_formal_aliases_are_local_but_all_branches_are_analyzed() {
    assert!(local_module(&admit(&derived_wire(false))));
    assert!(!local_module(&admit(&derived_wire(true))));
}
#[test]
fn unused_nonlocal_definitions_are_not_obligation_roots() {
    let mut w = derived_wire(true);
    w["constraints"] = wire()["constraints"].clone();
    assert!(local_module(&admit(&w)));
}
proptest::proptest! {
 #[test]
 fn derived_aliases_match_ordinary_validation(x in -10i64..20) {
    let m=admit(&derived_wire(false));proptest::prop_assert!(local_module(&m));
    let rows=std::collections::BTreeMap::from([(("E".into(),"e".into()),json!({"id":"e","x":x,"y":2,"target":"missing"}))]);
    proptest::prop_assert_eq!(behavior_core::eval::check_behavior_snapshot(&m,&rows,&behavior_core::facts::Facts::default()).is_ok(),x>0);
 }
}

#[test]
fn both_admitted_profiles_preserve_nested_locality() {
    for version in ["0.7", "0.8"] {
        let mut w = derived_wire(false);
        w["ir_version"] = json!(version);
        if version == "0.8" {
            w["commands"] = json!([]);
            w["actions"][0]["command_effects"] = json!([]);
        }
        assert!(local_module(&admit(&w)));
    }
}
#[test]
fn profile_target_resolution_matches_ordinary_hash_then_name_contract() {
    for version in ["0.7", "0.8"] {
        let mut w = derived_wire(false);
        w["ir_version"] = json!(version);
        if version == "0.8" {
            w["commands"] = json!([]);
            w["actions"][0]["command_effects"] = json!([]);
        }
        let m = admit(&w);
        let target = *m.derived("leaf").unwrap().hash();
        let bound = BTreeSet::from(["e".to_string()]);
        assert_eq!(
            derived_local(
                &m,
                "missing",
                &target,
                &["e".into()],
                &bound,
                &mut BTreeSet::new()
            ),
            version == "0.8"
        );
        assert!(!derived_local(
            &m,
            "missing",
            &[0; 32],
            &["e".into()],
            &bound,
            &mut BTreeSet::new()
        ));
        assert!(!derived_local(
            &m,
            "leaf",
            &target,
            &["unbound".into()],
            &bound,
            &mut BTreeSet::new()
        ));
        assert!(!derived_local(
            &m,
            "leaf",
            &target,
            &[],
            &bound,
            &mut BTreeSet::new()
        ));
        assert!(!derived_local(
            &m,
            "leaf",
            &target,
            &["e".into()],
            &bound,
            &mut BTreeSet::from([target])
        ));
    }
}
