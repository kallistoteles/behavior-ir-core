//! Conservative locality proof boundary for feature 014. No semantic evaluator here.
use behavior_core::semantic::expr::{Expr, ExprKind};
use behavior_core::semantic::module::{ActionItem, Module};

fn local_expr(expr: &Expr) -> bool {
    // Deliberate allowlist: new/unknown expressions are affected, never silently local.
    let allowed = matches!(
        expr.kind(),
        ExprKind::Lit(_)
            | ExprKind::Field { .. }
            | ExprKind::Param(_)
            | ExprKind::Cmp(..)
            | ExprKind::Arith(..)
            | ExprKind::And(_)
            | ExprKind::Or(_)
            | ExprKind::Not(_)
            | ExprKind::In(..)
            | ExprKind::IsNone(_)
            | ExprKind::IsSome(_)
            | ExprKind::ValueOr(..)
            | ExprKind::Some(_)
            | ExprKind::ToDecimal(_)
            | ExprKind::Wrap(_)
            | ExprKind::Unwrap(_)
            | ExprKind::Rescale { .. }
    );
    allowed && expr.children().into_iter().all(local_expr)
}

pub(super) fn local_update(module: &Module, action: &ActionItem) -> bool {
    module.global_invariants().is_empty()
        && module.derived_items().is_empty()
        && module
            .entities()
            .values()
            .all(|e| e.reference_fields().next().is_none())
        && module.constraints().values().all(|c| local_expr(c.body()))
        && module.invariants().values().all(|i| local_expr(i.body()))
        && !action.has_lifecycle()
        && action.command_emissions().is_empty()
        && action.effects().iter().all(|e| local_expr(e.value()))
        && action
            .preconditions()
            .iter()
            .chain(action.postconditions())
            .all(|c| local_expr(c.expr()))
}

#[cfg(test)]
mod tests {
    #![allow(clippy::unwrap_used)]
    use super::*;
    use crate::store::SeedFacts;
    use proptest::prelude::*;
    use serde_json::{Value, json};
    use std::collections::{BTreeMap, BTreeSet};

    fn wire() -> Value {
        serde_json::from_str(include_str!(
            "../../../../tests/fixtures/soundness/module.json"
        ))
        .unwrap()
    }
    fn admitted(w: &Value) -> Module {
        behavior_core::admit(&w.to_string()).unwrap()
    }
    fn qualifies(w: &Value) -> bool {
        let m = admitted(w);
        local_update(&m, m.action("set").unwrap())
    }

    #[test]
    fn locality_is_an_allowlist_and_never_follows_derived_dependencies() {
        let mut w = wire();
        assert!(qualifies(&w));
        let c = w["constraints"][0].clone();
        w["derived"] = json!([{"name":"indirect","kind":"derived","params":[{"name":"e","type":{"t":"entity","name":"E"}}],"body":c["body"],"loc":c["loc"]}]);
        assert!(!qualifies(&w));
        w = wire();
        w["actions"][0]["postconditions"] = json!([{"loc":c["loc"],"expr":{"op":"gt","loc":c["loc"],"args":[{"op":"count","loc":c["loc"],"args":[{"op":"select","entity":"E","loc":c["loc"]}]},{"op":"lit","type":{"t":"int"},"value":0,"loc":c["loc"]}]}}]);
        assert!(!qualifies(&w));
        w = wire();
        w["entities"][0]["fields"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"target","type":{"t":"id","entity":"E"},"loc":c["loc"]}));
        for op in ["exists", "referenced"] {
            w["constraints"][0]["body"] = json!({"op":op,"loc":c["loc"],"args":[{"op":"field","param":"e","field":"target","loc":c["loc"]}]});
            assert!(!qualifies(&w));
        }
    }

    proptest! {
        #![proptest_config(ProptestConfig::with_cases(256))]
        #[test]
        fn changed_obligations_equal_full_validation_on_valid_parents(
            originals in prop::collection::vec(1i64..100,1..20),
            edits in prop::collection::vec((0usize..20,-2i64..100,0u8..7),0..20)
        ) {
            let mut w = wire();
            // Two entity types and a rule with an evaluation-error path.
            let mut f = w["entities"][0].clone(); f["name"] = json!("F");
            w["entities"].as_array_mut().unwrap().push(f);
            let mut c = w["constraints"][0].clone(); c["entity"] = json!("F"); c["name"] = json!("positive_f");
            w["constraints"].as_array_mut().unwrap().push(c);
            let l = json!({"file":"local.beh","line":1});
            w["invariants"] = json!([{"name":"division","entity":"E","param":"e","loc":l,"body":{"op":"ge","loc":l,"args":[{"op":"div","loc":l,"args":[{"op":"field","param":"e","field":"x","loc":l},{"op":"field","param":"e","field":"y","loc":l}]},{"op":"lit","type":{"t":"int"},"value":0,"loc":l}]}}]);
            let m = admitted(&w);
            prop_assert!(local_update(&m,m.action("set").unwrap()));
            let mut parent = BTreeMap::new();
            for (i,x) in originals.iter().enumerate() {
                for entity in ["E","F"] {
                    let id = format!("e{i}");
                    parent.insert((entity.into(),id.clone()),json!({"id":id,"x":x,"y":2}));
                }
            }
            // Local expressions cannot consult facts; use an intentionally empty provider.
            let facts = SeedFacts { keys:BTreeSet::new(), incoming:BTreeMap::new(), values:BTreeMap::new() };
            prop_assert!(behavior_core::eval::check_behavior_snapshot(&m,&parent,&facts).is_ok());
            let mut changed = BTreeMap::new();
            for (i,x,mode) in edits {
                let entity = if i%2 == 0 { "E" } else { "F" };
                let id = format!("e{}",i%originals.len());
                let mut v = parent[&(entity.into(),id.clone())].clone();
                match mode {
                    0 => v["x"] = json!(x),
                    1 => { v["x"] = json!(x); v["y"] = json!(3); },
                    2 => v["x"] = json!("bad type"),
                    3 => v["id"] = json!("different"),
                    4 => { v.as_object_mut().unwrap().remove("y"); },
                    5 => v["y"] = json!(0),
                    _ => {}, // no-op update
                }
                changed.insert((entity.into(),id),v);
            }
            let mut child = parent;
            child.extend(changed.clone());
            prop_assert_eq!(
                behavior_core::eval::check_behavior_snapshot(&m,&changed,&facts),
                behavior_core::eval::check_behavior_snapshot(&m,&child,&facts)
            );
        }
    }
}
