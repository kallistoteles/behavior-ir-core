#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Independent finite correspondence controls, never a population bound for proof.
#[path = "support/ref_removals.rs"]
mod model;
use serde_json::{Value, json};

#[test]
fn exhaustive_small_typed_worlds_agree_with_actual_transition_prefixes() {
    let mut checked = 0;
    for version in ["0.7", "0.8"] {
        for pattern in ["guarded", "joint", "retarget"] {
            for unsafe_variant in [false, true] {
                let name = if unsafe_variant {
                    format!("{pattern}-unguarded")
                } else {
                    pattern.into()
                };
                let m = model::module(&name, version);
                let a = model::report(&m);
                if !unsafe_variant {
                    model::assert_reference_proven(&a);
                } else {
                    assert!(
                        a.value["checks"]
                            .as_array()
                            .unwrap()
                            .iter()
                            .filter(|c| c["subject"]["kind"] == "reference_world")
                            .all(|c| c["outcome"] != "proven")
                    );
                }
                for n in 0..=4 {
                    for bits in 0..(1usize << n) {
                        for swapped in [false, true] {
                            let (old_id, new_id) = if swapped {
                                ("Ω-old", "a-new")
                            } else {
                                ("a-old", "Ω-new")
                            };
                            let old = json!({"id":old_id,"value":1});
                            let new = json!({"id":new_id,"value":2});
                            let mut holders:Vec<Value>=(0..n).map(|i|json!({"id":format!("row-{i}"),"target":if bits&(1<<i)==0 {old_id} else {new_id}})).collect();
                            let bound = json!({"id":"bound","target":old_id});
                            if pattern != "guarded" {
                                holders.push(bound.clone());
                            }
                            let mut state = json!({"old":old});
                            if pattern != "guarded" {
                                state["holder"] = bound;
                            }
                            if pattern == "retarget" {
                                state["new"] = new.clone();
                            }
                            let action = if pattern == "guarded" {
                                "remove_free"
                            } else if pattern == "joint" {
                                "remove_both"
                            } else {
                                "retarget"
                            };
                            let request = json!({"action":action,"data_version":"finite-correspondence","state":state,"input":{},"context":{},"facts":{"universe":[{"entity":"Target","members":[old,new]},{"entity":"Holder","members":holders}]}});
                            // This oracle is computed from original row values and explicit operation
                            // meanings, not the verifier's summary/effect extraction or slot inventory.
                            let guards_hold =
                                holders.iter().filter(|h| h["target"] == old_id).count()
                                    == usize::from(pattern != "guarded");
                            let mut child = holders.clone();
                            if pattern == "joint" {
                                child.retain(|h| h["id"] != "bound");
                            }
                            if pattern == "retarget" {
                                for h in &mut child {
                                    if h["id"] == "bound" {
                                        h["target"] = json!(new_id);
                                    }
                                }
                            }
                            let reference_valid = child.iter().all(|h| h["target"] != old_id);
                            let r = behavior_core::evaluate(&m, &request.to_string());
                            let r = r.as_json();
                            assert_eq!(
                                r["result"],
                                if !unsafe_variant && !guards_hold || !reference_valid {
                                    "DENY"
                                } else {
                                    "ALLOW"
                                },
                                "{version}/{name}/{n}/{bits}: {r}"
                            );
                            if !unsafe_variant && !guards_hold {
                                assert_eq!(r["reasons"][0]["code"], "PRECONDITION_FAILED");
                            } else if !reference_valid {
                                assert_eq!(r["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
                                let first = r["trace"]
                                    .as_array()
                                    .unwrap()
                                    .iter()
                                    .find(|s| s["outcome"] == false)
                                    .unwrap();
                                assert_eq!(first["phase"], "constraint_post");
                                assert_eq!(first["obligation"]["source"], "synthesized_reference");
                            }
                            checked += 1;
                        }
                    }
                }
            }
        }
    }
    assert_eq!(checked, 744);
}

#[test]
fn exhaustive_optional_none_and_present_edges_match_original_reference_property() {
    for version in ["0.7", "0.8"] {
        for guarded in [false, true] {
            let mut w = model::wire(
                if guarded {
                    "guarded"
                } else {
                    "guarded-unguarded"
                },
                version,
            );
            w["entities"][1]["fields"][0]["type"] =
                json!({"t":"option","of":{"t":"ref","entity":"Target"}});
            let m = behavior_core::admit(&w.to_string()).unwrap();
            for n in 0..=3 {
                for mut encoding in 0..3usize.pow(n) {
                    let mut rows = Vec::new();
                    for i in 0..n {
                        let value = match encoding % 3 {
                            0 => Value::Null,
                            1 => json!("old"),
                            _ => json!("new"),
                        };
                        encoding /= 3;
                        rows.push(json!({"id":format!("h{i}"),"target":value}));
                    }
                    let violates = rows.iter().any(|h| h["target"] == "old");
                    let old = json!({"id":"old","value":1});
                    let new = json!({"id":"new","value":2});
                    let req = json!({"action":"remove_free","data_version":"optional","state":{"old":old},"input":{},"context":{},"facts":{"universe":[{"entity":"Target","members":[old,new]},{"entity":"Holder","members":rows}]}});
                    let r = behavior_core::evaluate(&m, &req.to_string());
                    let r = r.as_json();
                    assert_eq!(r["result"], if violates { "DENY" } else { "ALLOW" }, "{r}");
                    if violates {
                        assert_eq!(
                            r["reasons"][0]["code"],
                            if guarded {
                                "PRECONDITION_FAILED"
                            } else {
                                "CONSTRAINT_VIOLATED"
                            }
                        );
                    }
                }
            }
        }
    }
}

#[test]
fn type_field_parameter_and_declaration_renaming_preserves_actual_scope() {
    fn rename(v: &mut Value) {
        match v {
            Value::String(s) => {
                if let Some(new) = match s.as_str() {
                    "Target" => Some("Destination"),
                    "Holder" => Some("Link"),
                    "target" => Some("edge"),
                    "holder" => Some("bound"),
                    "old" => Some("removed"),
                    "new" => Some("kept"),
                    _ => None,
                } {
                    *s = new.into();
                }
            }
            Value::Array(a) => a.iter_mut().for_each(rename),
            Value::Object(o) => o.values_mut().for_each(rename),
            _ => {}
        }
    }
    for version in ["0.7", "0.8"] {
        for pattern in ["joint", "retarget"] {
            for extra in [false, true] {
                let mut w = model::wire(pattern, version);
                rename(&mut w);
                w["entities"].as_array_mut().unwrap().reverse();
                w["actions"][0]["params"].as_array_mut().unwrap().reverse();
                let m = behavior_core::admit(&w.to_string()).unwrap();
                model::assert_reference_proven(&model::report(&m));
                let old = json!({"id":"same-text","value":1});
                let new = json!({"id":"destination","value":2});
                // Equal text across source/target types is not an identity alias.
                let h = json!({"id":"same-text","edge":"same-text"});
                let mut rows = vec![h.clone()];
                if extra {
                    rows.push(json!({"id":"extra","edge":"same-text"}));
                }
                let mut state = json!({"removed":old,"bound":h});
                if pattern == "retarget" {
                    state["kept"] = new.clone();
                }
                let req = json!({"action":if pattern=="joint" {"remove_both"} else {"retarget"},"data_version":"renamed","state":state,"input":{},"context":{},"facts":{"universe":[{"entity":"Destination","members":[old,new]},{"entity":"Link","members":rows}]}});
                let r = behavior_core::evaluate(&m, &req.to_string());
                assert_eq!(
                    r.as_json()["result"],
                    if extra { "DENY" } else { "ALLOW" },
                    "{}",
                    r.as_json()
                );
            }
        }
    }
}
