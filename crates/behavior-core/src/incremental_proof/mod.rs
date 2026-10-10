#![allow(clippy::unwrap_used)]
use self::delta::*;
use self::operator_inventory::*;
mod delta;
mod operator_inventory;
use proptest::prelude::*;

#[test]
fn reference_covers_all_result_transitions_and_rejects_wrong_parent() {
    let full = |x: &i64| {
        if *x == 0 {
            Err("zero")
        } else if *x < 0 {
            Err("negative")
        } else {
            Ok(12 / x)
        }
    };
    for (old, new) in [(1, 2), (1, 0), (0, 1), (0, -1), (0, 0)] {
        let d = full
            .reference_delta(&old, &Replacement::between(old, new))
            .unwrap();
        assert_eq!(d.before(), &full(&old));
        assert_eq!(d.apply(&full(&old)).unwrap(), full(&new));
    }
    assert_eq!(
        full.reference_delta(&9, &Replacement::between(1, 2)),
        Err(DeltaError::WrongParent)
    );
}

proptest! {
    #[test]
    fn composition_and_identity_include_errors(a in -20i64..20,b in -20i64..20) {
        let f = |x:&i64| if *x == 0 { Err("zero") } else { Ok(120 / x) };
        let g = |r:&Result<i64,&str>| r.map(|x| x.checked_mul(2)).map_err(|e| e.to_string());
        let df = f.reference_delta(&a,&Replacement::between(a,b)).unwrap();
        let dg = g.reference_delta(df.before(),&df).unwrap();
        prop_assert_eq!(dg.apply(&g(&f(&a))).unwrap(), g(&f(&b)));
        let identity=f.reference_delta(&a,&Replacement::between(a,a)).unwrap();
        prop_assert_eq!(identity.before(), identity.after());
    }
}

use crate::semantic::expr::{CANDIDATE, Expr, ExprKind as K, FoldOp, QueryKind, QueryNode, SetOp};
use crate::semantic::types::{ArithOp, CmpOp, EnumInfo, NominalInfo, Prim, Type, Unit};
use crate::semantic::value::Value;
use crate::{facts::Facts, wire::Loc};
use serde_json::json;
use std::collections::{BTreeMap, BTreeSet};
use std::sync::Arc;

fn expr(k: K, t: Type) -> Expr {
    Expr::new(
        k,
        t,
        Loc {
            file: "delta.beh".into(),
            line: 1,
        },
    )
}
fn int(n: i64) -> Expr {
    expr(K::Lit(Value::Int(n)), Type::Int)
}
fn field(param: &str, name: &str) -> Expr {
    expr(
        K::Field {
            param: param.into(),
            field: name.into(),
        },
        Type::Int,
    )
}
fn select() -> QueryNode {
    QueryNode::new(
        QueryKind::Select,
        "E".into(),
        Loc {
            file: "delta.beh".into(),
            line: 1,
        },
    )
}
fn operators(m: &crate::semantic::module::Module) -> Vec<Expr> {
    let x = field("e", "x");
    let opt = expr(K::Param("opt".into()), Type::Option(Box::new(Type::Int)));
    let mut out = vec![
        int(2),
        x.clone(),
        expr(K::Param("n".into()), Type::Int),
        expr(
            K::DerivedRef {
                name: "twice".into(),
                target: *m.derived("twice").unwrap().hash(),
                args: vec!["e".into()],
            },
            Type::Int,
        ),
    ];
    for op in [
        CmpOp::Eq,
        CmpOp::Ne,
        CmpOp::Lt,
        CmpOp::Le,
        CmpOp::Gt,
        CmpOp::Ge,
    ] {
        out.push(expr(
            K::Cmp(op, Box::new(x.clone()), Box::new(int(0))),
            Type::Bool,
        ));
    }
    for op in [ArithOp::Add, ArithOp::Sub, ArithOp::Mul, ArithOp::Div] {
        out.push(expr(
            K::Arith(op, Box::new(int(12)), Box::new(x.clone())),
            Type::Int,
        ));
    }
    let error = expr(
        K::Cmp(
            CmpOp::Gt,
            Box::new(expr(
                K::Arith(ArithOp::Div, Box::new(int(1)), Box::new(x.clone())),
                Type::Int,
            )),
            Box::new(int(0)),
        ),
        Type::Bool,
    );
    let b = expr(K::Lit(Value::Bool(false)), Type::Bool);
    out.extend([
        expr(K::And(vec![b.clone(), error.clone()]), Type::Bool),
        expr(
            K::Or(vec![expr(K::Not(Box::new(b.clone())), Type::Bool), error]),
            Type::Bool,
        ),
        expr(K::Not(Box::new(b)), Type::Bool),
        expr(
            K::In(Box::new(x.clone()), vec![Value::Int(0), Value::Int(2)]),
            Type::Bool,
        ),
        expr(K::IsNone(Box::new(opt.clone())), Type::Bool),
        expr(K::IsSome(Box::new(opt.clone())), Type::Bool),
        expr(
            K::ValueOr(
                Box::new(opt.clone()),
                Box::new(expr(
                    K::Arith(ArithOp::Div, Box::new(int(1)), Box::new(x.clone())),
                    Type::Int,
                )),
            ),
            Type::Int,
        ),
        expr(
            K::Some(Box::new(x.clone())),
            Type::Option(Box::new(Type::Int)),
        ),
        expr(K::ToDecimal(Box::new(x.clone())), Type::Decimal),
        expr(K::StrictUnwrap(Box::new(opt)), Type::Int),
    ]);
    let nominal = Type::Nominal(Arc::new(NominalInfo {
        name: "Number".into(),
        underlying: Prim::Int,
        ops: 0,
        scale: None,
        hash: [0; 32],
    }));
    let wrap = expr(K::Wrap(Box::new(x)), nominal);
    out.push(wrap.clone());
    out.push(expr(K::Unwrap(Box::new(wrap)), Type::Int));
    let amount = Arc::new(NominalInfo {
        name: "Amount".into(),
        underlying: Prim::Decimal,
        ops: 0,
        scale: Some(2),
        hash: [0; 32],
    });
    for rounding in crate::exact::Rounding::ALL {
        out.push(expr(
            K::Rescale {
                arg: Box::new(expr(
                    K::Param("exact".into()),
                    Type::Exact(Unit::Nominal(Arc::clone(&amount))),
                )),
                rounding,
            },
            Type::Nominal(Arc::clone(&amount)),
        ));
    }
    let target = expr(K::Param("target".into()), Type::Id("E".into()));
    out.push(expr(K::Exists(Box::new(target.clone())), Type::Bool));
    out.push(expr(K::Referenced(Box::new(target)), Type::Bool));
    let en = Type::Enum(Arc::new(EnumInfo {
        name: "Target".into(),
        values: vec!["yes".into()],
        hash: [0; 32],
    }));
    for strict in [false, true] {
        out.push(expr(
            K::EnumMap {
                arg: Box::new(expr(
                    K::Param("enum".into()),
                    Type::Enum(Arc::new(EnumInfo {
                        name: "Source".into(),
                        values: vec!["a".into(), "b".into()],
                        hash: [0; 32],
                    })),
                )),
                mapping: if strict {
                    vec![("a".into(), "yes".into())]
                } else {
                    vec![("a".into(), "yes".into()), ("b".into(), "yes".into())]
                },
                strict,
            },
            en.clone(),
        ));
    }
    let mut queries = vec![select()];
    let where_q = QueryNode::new(
        QueryKind::Where {
            base: Box::new(select()),
            param: "c".into(),
            body: Box::new(expr(
                K::Cmp(
                    CmpOp::Ge,
                    Box::new(field(CANDIDATE, "x")),
                    Box::new(expr(K::Param("n".into()), Type::Int)),
                ),
                Type::Bool,
            )),
        },
        "E".into(),
        Loc {
            file: "delta.beh".into(),
            line: 1,
        },
    );
    queries.push(where_q.clone());
    for op in [SetOp::Union, SetOp::Intersection, SetOp::Difference] {
        queries.push(QueryNode::new(
            QueryKind::Set {
                op,
                a: Box::new(select()),
                b: Box::new(where_q.clone()),
            },
            "E".into(),
            Loc {
                file: "delta.beh".into(),
                line: 1,
            },
        ));
    }
    for q in queries {
        out.push(expr(K::Count(Box::new(q.clone())), Type::Int));
        for op in [
            FoldOp::Any,
            FoldOp::All,
            FoldOp::Sum,
            FoldOp::Min,
            FoldOp::Max,
            FoldOp::Unique,
        ] {
            let body = if matches!(op, FoldOp::Any | FoldOp::All) {
                expr(
                    K::Cmp(CmpOp::Gt, Box::new(field(CANDIDATE, "x")), Box::new(int(0))),
                    Type::Bool,
                )
            } else {
                expr(
                    K::Arith(
                        ArithOp::Div,
                        Box::new(int(12)),
                        Box::new(field(CANDIDATE, "x")),
                    ),
                    Type::Int,
                )
            };
            let ty = match op {
                FoldOp::Sum => Type::Int,
                FoldOp::Min | FoldOp::Max => Type::Option(Box::new(Type::Int)),
                _ => Type::Bool,
            };
            out.push(expr(
                K::Fold {
                    op,
                    query: Box::new(q.clone()),
                    param: "c".into(),
                    body: Box::new(body),
                },
                ty,
            ));
        }
    }
    out
}
fn module() -> crate::semantic::module::Module {
    let mut w: serde_json::Value = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap();
    let l = json!({"file":"delta.beh","line":1});
    w["derived"] = json!([{"name":"twice","kind":"derived","params":[{"name":"row","type":{"t":"entity","name":"E"}}],"body":{"op":"mul","args":[{"op":"field","param":"row","field":"x","loc":l},{"op":"lit","type":{"t":"int"},"value":2,"loc":l}],"loc":l},"loc":l}]);
    crate::admit(&w.to_string()).unwrap()
}
fn input(x: i64, rows: Vec<i64>) -> (crate::eval::Vals, Facts) {
    let row = Value::Entity(BTreeMap::from([
        ("id".into(), Value::Str("root".into())),
        ("x".into(), Value::Int(x)),
        ("y".into(), Value::Int(2)),
    ]));
    let vals = BTreeMap::from([
        ("e".into(), row),
        (
            "exact".into(),
            Value::Exact(crate::exact::Exact::parse(&format!("{x}/3")).unwrap()),
        ),
        ("n".into(), Value::Int(x)),
        (
            "opt".into(),
            if x % 2 == 0 {
                Value::None
            } else {
                Value::Int(x)
            },
        ),
        (
            "enum".into(),
            Value::Str(if x % 2 == 0 { "a" } else { "b" }.into()),
        ),
        ("target".into(), Value::Str("r0".into())),
    ]);
    let mut facts = Facts::default();
    facts.universe.insert(
        "E".into(),
        rows.into_iter()
            .enumerate()
            .map(|(i, v)| (format!("r{i}"), json!({"id":format!("r{i}"),"x":v,"y":2})))
            .collect(),
    );
    facts.references.insert(
        ("E".into(), "r0".into()),
        if x > 0 {
            vec![crate::RefEdge {
                entity: "E".into(),
                id: "root".into(),
                field: "target".into(),
            }]
        } else {
            vec![]
        },
    );
    (vals, facts)
}
proptest! {
    #![proptest_config(ProptestConfig::with_cases(96))]
    #[test]
    fn every_operator_reference_delta_agrees_with_ordinary_evaluation(
        a in -3i64..4,b in -3i64..4,
        old in prop::collection::vec(-3i64..4,0..6),new in prop::collection::vec(-3i64..4,0..6)
    ) {
        let m=module();let before=input(a,old);let after=input(b,new);
        let mut covered=BTreeSet::new();
        for e in operators(&m) {
            covered.insert(operator_name(&e));
            if let K::Count(q) | K::Fold {query:q,..} = e.kind() { covered.insert(query_name(q)); }
            let full=|i:&(crate::eval::Vals,Facts)| crate::eval::eval_in(&m,&e,&i.0,&i.1);
            let d=full.reference_delta(&before,&Replacement::between(before.clone(),after.clone())).unwrap();
            prop_assert_eq!(d.apply(&full(&before)).unwrap(),full(&after),"{}",operator_name(&e));
        }
        prop_assert_eq!(covered,OPERATOR_NAMES.iter().copied().collect());
    }
}

#[test]
fn reference_sum_preserves_checked_prefix_overflow() {
    let m = module();
    let e = expr(
        K::Fold {
            op: FoldOp::Sum,
            query: Box::new(select()),
            param: "c".into(),
            body: Box::new(field(CANDIDATE, "x")),
        },
        Type::Int,
    );
    let old = input(1, vec![1, 0, 0]);
    let new = input(1, vec![i64::MAX, 1, -i64::MAX]);
    let full = |i: &(crate::eval::Vals, Facts)| crate::eval::eval_in(&m, &e, &i.0, &i.1);
    assert_eq!(full(&old), Ok(Value::Int(1)));
    let d = full
        .reference_delta(&old, &Replacement::between(old.clone(), new))
        .unwrap();
    assert!(
        d.after().is_err(),
        "a representable final sum concealed prefix overflow"
    );
    // The complete-result carrier itself also supports recovery from this error.
    assert_eq!(
        Replacement::between(d.after().clone(), Ok(Value::Int(1)))
            .apply(d.after())
            .unwrap(),
        Ok(Value::Int(1))
    );
}
