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

#[test]
fn complete_three_level_closure_includes_suppressed_cross_entity_dependencies() {
    for version in ["0.7", "0.8"] {
        for dependency in ["local", "exists", "referenced", "suppressed_exists"] {
            let mut w = derived_wire(false);
            let l = json!({"file":"deep-closure.beh","line":1});
            let field = json!({"op":"field","param":"row","field":"target","loc":l});
            let nonlocal = match dependency {
                "exists" | "suppressed_exists" => json!({"op":"exists","args":[field],"loc":l}),
                "referenced" => json!({"op":"referenced","args":[field],"loc":l}),
                _ => w["derived"][0]["body"].clone(),
            };
            w["derived"][0]["body"] = if dependency == "suppressed_exists" {
                json!({"op":"and","args":[{"op":"lit","type":{"t":"bool"},"value":false,"loc":l},nonlocal],"loc":l})
            } else {
                nonlocal
            };
            w["derived"][1]["body"]["name"] = json!("middle");
            w["derived"].as_array_mut().unwrap().push(
                json!({"name":"middle","kind":"rule","loc":l,
                "params":[{"name":"middle_row","type":{"t":"entity","name":"E"}}],
                "body":{"op":"derived","name":"leaf","args":["middle_row"],"loc":l}}),
            );
            w["ir_version"] = json!(version);
            if version == "0.8" {
                w["commands"] = json!([]);
                w["actions"][0]["command_effects"] = json!([]);
            }
            assert_eq!(
                local_module(&admit(&w)),
                dependency == "local",
                "complete closure must classify {version}/{dependency}"
            );
        }
    }
}

#[test]
fn global_query_nodes_and_unknown_local_bindings_are_affected() {
    let local = admit(&derived_wire(false));
    let leaf = local.derived("leaf").unwrap();
    assert!(row_local(
        &local,
        leaf.body(),
        &BTreeSet::from(["row".into()]),
        &mut BTreeSet::new()
    ));
    assert!(!row_local(
        &local,
        leaf.body(),
        &BTreeSet::from(["unknown".into()]),
        &mut BTreeSet::new()
    ));
    let mut w = wire();
    let l = json!({"file":"global-query-closure.beh","line":1});
    w["invariants"] = json!([{"name":"population","loc":l,"body":{"op":"gt","loc":l,
        "args":[{"op":"count","args":[{"op":"select","entity":"E","loc":l}],"loc":l},
            {"op":"lit","type":{"t":"int"},"value":0,"loc":l}]}}]);
    let query = admit(&w);
    let body = query.global_invariants().values().next().unwrap().body();
    assert!(!row_local(
        &query,
        body,
        &BTreeSet::new(),
        &mut BTreeSet::new()
    ));
    assert!(!local_module(&query));
}

#[test]
fn selected_global_language_classifies_every_actual_obligation() {
    use super::super::global_fixtures::{Global, wire as global_wire};
    for (global, supported) in [
        (Global::None, true),
        (Global::True, true),
        (Global::AtMost(1000), true),
        (Global::Unsupported, false),
    ] {
        let m = admit(&global_wire(global));
        assert_eq!(supported_module(&m), supported);
    }
    let mut w = global_wire(Global::AtMost(1000));
    w["invariants"][0]["body"]["args"][0]["args"][0] = json!({"op":"where","args":[{"op":"select","entity":"E","loc":{"file":"unknown.beh","line":1}}],"param":"r","body":{"op":"lit","type":{"t":"bool"},"value":true,"loc":{"file":"unknown.beh","line":1}},"loc":{"file":"unknown.beh","line":1}});
    assert!(!supported_module(&admit(&w)));
}

#[test]
fn selected_coverage_resolves_suppressed_derived_and_mixed_roots() {
    assert!(supported_module(&admit(&derived_wire(false))));
    assert!(!supported_module(&admit(&derived_wire(true))));
    let mut w = derived_wire(true);
    w["constraints"] = wire()["constraints"].clone();
    assert!(
        supported_module(&admit(&w)),
        "unused definitions are not roots"
    );
    use super::super::global_fixtures::{Global, wire as global_wire};
    let mut w = global_wire(Global::AtMost(1000));
    let mut unsupported = global_wire(Global::Unsupported)["invariants"][0].clone();
    unsupported["name"] = json!("second_root");
    w["invariants"].as_array_mut().unwrap().push(unsupported);
    for reverse in [false, true] {
        if reverse {
            w["actions"].as_array_mut().unwrap().reverse();
            w["invariants"].as_array_mut().unwrap().reverse();
        }
        assert!(
            !supported_module(&admit(&w)),
            "one supported root cannot hide another"
        );
    }
}
