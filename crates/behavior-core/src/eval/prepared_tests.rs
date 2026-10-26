#![allow(clippy::unwrap_used, clippy::expect_used)]
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
    // A different allocation with the same complete content is compatible:
    // a borrow token only binds an already established content comparison.
    let equivalent = module();
    let checked = prepared.evaluate(&equivalent, &request(), &f);
    assert_eq!(checked.record().as_json()["result"], "ALLOW");
    assert!(checked.child().is_some());
    assert_eq!(
        checked.record().as_json(),
        evaluate_with(&equivalent, &request(), &f).0.as_json()
    );
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

#[cfg(feature = "validation-work")]
#[test]
fn unchanged_rows_do_not_repeat_typing_or_rule_evaluation() {
    let m = module();
    let mut f = facts();
    for i in 2..64 {
        f.universe
            .get_mut("E")
            .unwrap()
            .insert(format!("e{i}"), json!({"id":format!("e{i}"),"x":1,"y":2}));
    }
    let p = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    work::reset();
    let checked = p.evaluate(&m, &request(), &f);
    let work = work::read();
    assert_eq!(
        checked.record().as_json(),
        evaluate_with(&m, &request(), &f).0.as_json()
    );
    assert!(
        work.decoded_rows <= 4,
        "unchanged typed rows were decoded again: {work:?}"
    );
    assert!(
        work.predicate_evaluations <= 8,
        "unchanged rules were evaluated again: {work:?}"
    );
}

#[test]
fn checked_child_rule_order_skipping_and_arithmetic_errors_match_reference() {
    let mut w = wire();
    let l = json!({"file":"failures.beh","line":1});
    w["actions"][0]["params"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"n","role":"input","type":{"t":"int"}}));
    w["actions"][0]["effects"][0]["value"] = json!({"op":"add","args":[{"op":"param","param":"n","loc":l},{"op":"lit","type":{"t":"int"},"value":1,"loc":l}],"loc":l});
    let mut second = w["constraints"][0].clone();
    second["name"] = json!("upper_bound");
    second["body"] = json!({"op":"le","args":[{"op":"field","param":"e","field":"x","loc":l},{"op":"lit","type":{"t":"int"},"value":10,"loc":l}],"loc":l});
    w["constraints"].as_array_mut().unwrap().push(second);
    let m = crate::admit(&w.to_string()).unwrap();
    let f = facts();
    let p = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    for (n, expected) in [
        (-2, "DENY"),
        (0, "ALLOW"),
        (11, "DENY"),
        (i64::MAX, "ERROR"),
    ] {
        let mut r: Json = serde_json::from_str(&request()).unwrap();
        r["input"] = json!({"n":n});
        let r = r.to_string();
        let actual = p.evaluate(&m, &r, &f);
        let (record, observed) = evaluate_with(&m, &r, &f);
        assert_eq!(actual.record().as_json()["result"], expected);
        assert_eq!(actual.record().as_json(), record.as_json());
        assert_eq!(actual.observed().fields, observed.fields);
        assert_eq!(actual.observed().facts, observed.facts);
        assert_eq!(actual.child().is_some(), expected == "ALLOW");
    }
}
#[test]
fn unchanged_reference_and_optional_fields_preserve_actual_bound_target_observations() {
    let mut w = wire();
    let l = json!({"file":"references.beh","line":1});
    w["actions"].as_array_mut().unwrap().truncate(1);
    w["entities"][0]["fields"].as_array_mut().unwrap().extend([
        json!({"name":"owner","type":{"t":"ref","entity":"E"},"loc":l}),
        json!({"name":"optional","type":{"t":"option","of":{"t":"int"}},"loc":l}),
    ]);
    let m = crate::admit(&w.to_string()).unwrap();
    let mut f = facts();
    for (id, row) in f.universe.get_mut("E").unwrap() {
        row["owner"] = json!(if id == "e0" { "e1" } else { "e0" });
        row["optional"] = Json::Null;
    }
    let p = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    let r=json!({"action":"set","data_version":"seed","state":{"e":f.universe["E"]["e0"]},"input":{},"context":{}}).to_string();
    let actual = p.evaluate(&m, &r, &f);
    let (record, observed) = evaluate_with(&m, &r, &f);
    assert_eq!(record.as_json()["result"], "ALLOW");
    assert_eq!(actual.record().as_json(), record.as_json());
    assert_eq!(actual.observed().facts, observed.facts);
    assert_eq!(actual.observed().fields, observed.fields);
}

#[path = "../../tests/support/commands.rs"]
mod command_model;
#[test]
fn prepared_command_payload_activation_and_errors_match_reference() {
    for (wire, mut request) in [
        (command_model::module(), command_model::request(2, true)),
        (
            command_model::ratio_module(command_model::boolean(false)),
            command_model::request(0, true),
        ),
        (
            command_model::ratio_module(command_model::boolean(true)),
            command_model::request(0, true),
        ),
        (
            command_model::command_only_module(true),
            command_model::command_only_request("same"),
        ),
    ] {
        let m = crate::admit(&wire.to_string()).unwrap();
        let f = Facts::from_json(&request["facts"]).unwrap();
        request.as_object_mut().unwrap().remove("facts");
        let prepared = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
        let checked = prepared.evaluate(&m, &request.to_string(), &f);
        let (ordinary, observed) = evaluate_with(&m, &request.to_string(), &f);
        assert_eq!(checked.record().as_json(), ordinary.as_json());
        assert_eq!(checked.observed().facts, observed.facts);
        assert_eq!(checked.observed().fields, observed.fields);
        assert!(
            crate::record::reproduce_prepared(
                &m,
                &checked.record().to_json_string(),
                &f,
                &prepared,
                Some(&checked)
            )
            .is_ok()
        );
    }
}

#[test]
fn sharing_checked_execution_does_not_clone_complete_record_or_observations() {
    let m = module();
    let f = facts();
    let p = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
    let checked = p.evaluate(&m, &request(), &f);
    let shared = checked.clone();
    assert!(
        std::ptr::eq(checked.record(), shared.record()),
        "sharing a proof copied its full record"
    );
    assert!(
        std::ptr::eq(checked.observed(), shared.observed()),
        "sharing a proof copied all observations"
    );
}

#[test]
fn checked_evaluation_encodes_the_exact_module_identity_once() {
    let module = module();
    let facts = facts();
    let parent = PreparedSnapshot::new(&module, &facts).unwrap().unwrap();
    super::prepared::MODULE_ENCODINGS.with(|count| count.set(0));
    let checked = parent.evaluate(&module, &request(), &facts);
    assert_eq!(checked.record().as_json()["result"], "ALLOW");
    super::prepared::MODULE_ENCODINGS.with(|count| assert_eq!(count.get(), 1));
    assert_eq!(
        checked.record().as_json(),
        evaluate_with(&module, &request(), &facts).0.as_json()
    );
}

#[test]
fn prepared_nested_derived_memo_observations_match_reference() {
    for version in ["0.7", "0.8"] {
        let mut w = wire();
        let l = json!({"file":"prepared-derived.beh","line":1});
        let call =
            |name: &str, param: &str| json!({"op":"derived","name":name,"args":[param],"loc":l});
        w["ir_version"] = json!(version);
        w["derived"] = json!([
            {"name":"leaf_total","kind":"derived",
             "params":[{"name":"leaf","type":{"t":"entity","name":"E"}}],
             "body":{"op":"add","args":[
                 {"op":"field","param":"leaf","field":"x","loc":l},
                 {"op":"field","param":"leaf","field":"y","loc":l}],"loc":l},"loc":l},
            {"name":"outer_total","kind":"derived",
             "params":[{"name":"outer","type":{"t":"entity","name":"E"}}],
             "body":call("leaf_total", "outer"),"loc":l}
        ]);
        let positive = json!({"op":"gt","args":[call("outer_total", "e"),
            {"op":"lit","type":{"t":"int"},"value":0,"loc":l}],"loc":l});
        // The second call hits the memo. Both the nested miss and the hit must
        // attribute reads through leaf -> outer -> the actual row/action binding.
        let repeated = json!({"op":"and","args":[positive,positive],"loc":l});
        w["constraints"][0]["body"] = repeated.clone();
        // This separate rule starts a fresh read frame and hits outer_total's
        // memo through a different formal binding for the same subject.
        w["constraints"].as_array_mut().unwrap().push(json!({
            "name":"second_total","entity":"E","param":"subject","loc":l,
            "body":{"op":"gt","args":[call("outer_total", "subject"),
                {"op":"lit","type":{"t":"int"},"value":0,"loc":l}],"loc":l}
        }));
        w["actions"][0]["preconditions"] = json!([{"expr":repeated,"loc":l}]);
        w["actions"][0]["params"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"n","role":"input","type":{"t":"int"}}));
        w["actions"][0]["effects"][0]["value"] = json!({"op":"param","param":"n","loc":l});
        if version == "0.8" {
            w["commands"] = json!([]);
            for action in w["actions"].as_array_mut().unwrap() {
                action["command_effects"] = json!([]);
            }
        }
        let m = crate::admit(&w.to_string()).unwrap();
        let mut f = facts();
        f.universe.get_mut("E").unwrap().get_mut("e1").unwrap()["x"] = json!(5);
        let p = PreparedSnapshot::new(&m, &f).unwrap().unwrap();
        // Local derived rules are supported, but their memo-bearing observations
        // deliberately use ordinary row evaluation rather than row templates.
        for (n, expected) in [(4, "ALLOW"), (-3, "DENY"), (i64::MAX, "ERROR")] {
            let mut r: Json = serde_json::from_str(&request()).unwrap();
            r["input"] = json!({"n":n});
            let r = r.to_string();
            let checked = p.evaluate(&m, &r, &f);
            let (reference, observed) = evaluate_with(&m, &r, &f);
            assert_eq!(checked.record().result(), expected);
            assert_eq!(checked.child().is_some(), expected == "ALLOW");
            assert_eq!(
                checked.record().to_json_string(),
                reference.to_json_string()
            );
            assert_eq!(checked.record().diagnostics(), reference.diagnostics());
            assert_eq!(checked.observed().fields, observed.fields);
            assert_eq!(checked.observed().facts, observed.facts);
            assert_eq!(
                checked.observed().fields,
                BTreeSet::from([("e".into(), "x".into()), ("e".into(), "y".into())])
            );
            if expected == "ALLOW" {
                for (id, x) in [("e0", 4), ("e1", 5)] {
                    let steps: Vec<_> = checked.record().as_json()["trace"]
                        .as_array()
                        .unwrap()
                        .iter()
                        .filter(|step| {
                            step["phase"] == "constraint_post"
                                && step["subject"] == json!({"entity":"E","id":id})
                        })
                        .collect();
                    assert_eq!(steps.len(), 2);
                    for step in steps {
                        assert_eq!(step["outcome"], true);
                        assert_eq!(
                            step["observations"],
                            json!([
                                {"field":"x","phase_state":"S'","value":x},
                                {"field":"y","phase_state":"S'","value":2}
                            ])
                        );
                    }
                }
            }
            let entries = checked.record().as_json()["derived"].as_array().unwrap();
            // Repeated parent calls produce one entry per definition, not one
            // per call. These values are independent of the reference evaluator.
            for name in ["leaf_total", "outer_total"] {
                let hash = hash_display(m.derived(name).unwrap().hash());
                let values = |phase: &str| -> Vec<Json> {
                    entries
                        .iter()
                        .filter(|e| e["hash"] == hash && e["phase_state"] == phase)
                        .map(|e| e["value"].clone())
                        .collect()
                };
                assert_eq!(values("S"), vec![json!(3)]);
                if expected == "ALLOW" {
                    // Changed e0: 4+2; unchanged e1: 5+2. Neither may reuse
                    // the parent's memo value or the other subject's value.
                    assert_eq!(values("S'"), vec![json!(6), json!(7)]);
                } else if expected == "DENY" {
                    assert_eq!(values("S'"), vec![json!(-1)]);
                } else {
                    assert!(values("S'").is_empty());
                }
            }
            // Exercise independent prepared recomputation AND checked-hint reuse.
            for hint in [None, Some(&checked)] {
                let reproduced = crate::record::reproduce_prepared(
                    &m,
                    &checked.record().to_json_string(),
                    &f,
                    &p,
                    hint,
                )
                .unwrap();
                assert_eq!(
                    reproduced.record().to_json_string(),
                    reference.to_json_string()
                );
                assert_eq!(reproduced.record().diagnostics(), reference.diagnostics());
                assert_eq!(reproduced.observed().fields, observed.fields);
                assert_eq!(reproduced.observed().facts, observed.facts);
            }
        }
    }
}
