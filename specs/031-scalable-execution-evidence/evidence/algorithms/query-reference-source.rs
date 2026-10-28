#![allow(clippy::unwrap_used)]
//! Neutral independent Core query oracles; no runtime fast path.
use behavior_core as core_api;
use behavior_store as store_api;
use serde_json::{Value as Json, json};
use std::collections::BTreeMap;
#[allow(dead_code)]
#[path = "support/execution_evidence_fixtures.rs"]
mod fixture;
use fixture::{field, integer, loc, op};
fn query() -> Json {
    json!({"op":"select","entity":"E","loc":loc()})
}
fn filter(body: Json) -> Json {
    json!({"op":"where","args":[query()],"param":"q","body":body,"loc":loc()})
}
fn aggregate(name: &str, body: Option<Json>, input: Json) -> Json {
    let mut v = json!({"op":name,"args":[input],"loc":loc()});
    if let Some(b) = body {
        v["param"] = json!("q");
        v["body"] = b;
    }
    v
}
fn observed(rows: &[(&str, i64, i64)], expression: Json) -> Json {
    let case = fixture::Case {
        n: 1,
        steps: 1,
        ..fixture::Case::default()
    };
    let mut w = fixture::wire(&case);
    w["constraints"] = json!([]);
    w["invariants"] = json!([]);
    w["reads"] = json!([{"name":"probe","params":[],"body":{"value":expression},"loc":loc()}]);
    let m = core_api::admit(&w.to_string()).unwrap();
    let seed = rows
        .iter()
        .map(|(id, x, y)| store_api::documents::SeedEntity {
            entity: "E".into(),
            value: json!({"id":id,"x":x,"y":y,"padding":""}),
        })
        .collect();
    let s = store_api::Store::create(
        store_api::InMemoryBackend::new(),
        &m,
        store_api::store::genesis_for(&m, store_api::documents::EvidencePolicy::none(), seed),
    )
    .unwrap();
    let record = s
        .read(
            &m,
            &core_api::read::ReadSource::Declared("probe".into()),
            &BTreeMap::new(),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record
        .as_json()
        .clone();
    retain(json!({"module":w,"rows":rows,"record":record}));
    record
}
#[test]
fn independently_specified_values_for_four_query_fragments() {
    let sets: [(&[(&str, i64, i64)], i64, bool, bool, i64); 4] = [
        (&[], 0, false, true, 0),
        (&[("a", 1, 2)], 1, true, true, 1),
        (&[("a", 0, 2), ("b", 1, 2)], 1, true, true, 1),
        (&[("a", 1, 2), ("b", 1, 2)], 2, true, false, 2),
    ];
    for (rows, count, any, unique, sum) in sets {
        let filtered = filter(op("eq", vec![field("q", "x"), integer(1)]));
        for (expr, expected) in [
            (aggregate("count", None, filtered.clone()), json!(count)),
            (
                aggregate(
                    "any",
                    Some(op("eq", vec![field("q", "x"), integer(1)])),
                    query(),
                ),
                json!(any),
            ),
            (
                aggregate("unique", Some(field("q", "x")), query()),
                json!(unique),
            ),
            (aggregate("sum", Some(field("q", "x")), query()), json!(sum)),
        ] {
            let r = observed(rows, expr);
            assert_eq!(r["result"], "VALUE", "{r}");
            assert_eq!(r["value"], expected, "{r}");
        }
    }
}
#[test]
fn mathematical_sum_cancellation_does_not_hide_core_intermediate_overflow() {
    let rows = [("a", i64::MAX, 1), ("b", 1, 1), ("c", -1, 1)];
    assert_eq!(
        rows.iter().map(|r| i128::from(r.1)).sum::<i128>(),
        i128::from(i64::MAX)
    );
    let r = observed(&rows, aggregate("sum", Some(field("q", "x")), query()));
    assert_eq!(r["result"], "EVALUATION_ERROR", "{r}");
    assert!(r.get("value").is_none());
    assert_eq!(r["reasons"][0]["code"], "EVALUATION_ERROR");
    assert!(
        r["reasons"][0]["message"]
            .as_str()
            .unwrap()
            .starts_with("numeric overflow")
    );
}
#[test]
fn partial_and_lazy_predicates_are_observably_different() {
    let partial = op(
        "gt",
        vec![
            op("div", vec![field("q", "y"), field("q", "x")]),
            integer(0),
        ],
    );
    let rows = [("a", 0, 1)];
    let error = observed(&rows, aggregate("count", None, filter(partial.clone())));
    assert_eq!(error["result"], "EVALUATION_ERROR", "{error}");
    assert_eq!(error["reasons"][0]["code"], "UNKNOWN_FACT");
    assert!(
        error["reasons"][0]["message"]
            .as_str()
            .unwrap()
            .starts_with("division by zero")
    );
    let lazy = op(
        "and",
        vec![
            json!({"op":"lit","type":{"t":"bool"},"value":false,"loc":loc()}),
            partial,
        ],
    );
    let value = observed(&rows, aggregate("count", None, filter(lazy)));
    assert_eq!(value["result"], "VALUE", "{value}");
    assert_eq!(value["value"], 0);
}
#[test]
fn same_aggregate_value_does_not_establish_complete_record_equivalence() {
    let a = observed(&[("a", 1, 2)], aggregate("count", None, query()));
    let b = observed(&[("a", 1, 3)], aggregate("count", None, query()));
    assert_eq!(a["value"], b["value"]);
    assert_ne!(
        a, b,
        "complete read subject and observations remain significant"
    );
}

fn retain(value: Json) {
    if let Some(path) = std::env::var_os("CORE031_QUERY_OBSERVATIONS") {
        use std::io::Write;
        let mut file = std::fs::OpenOptions::new()
            .create(true)
            .append(true)
            .open(path)
            .unwrap();
        writeln!(file, "{value}").unwrap();
    }
}
#[test]
fn any_body_short_circuit_differs_from_an_erroring_filter_pipeline() {
    let partial = op(
        "gt",
        vec![
            op("div", vec![field("q", "y"), field("q", "x")]),
            integer(0),
        ],
    );
    let rows = [("a", 1, 1), ("b", 0, 1)];
    let direct = observed(&rows, aggregate("any", Some(partial.clone()), query()));
    assert_eq!(direct["result"], "VALUE", "{direct}");
    assert_eq!(direct["value"], true);
    let boolean = json!({"op":"lit","type":{"t":"bool"},"value":true,"loc":loc()});
    let pipeline = observed(&rows, aggregate("any", Some(boolean), filter(partial)));
    assert_eq!(pipeline["result"], "EVALUATION_ERROR", "{pipeline}");
    assert_eq!(pipeline["reasons"][0]["code"], "UNKNOWN_FACT");
    assert!(
        pipeline["reasons"][0]["message"]
            .as_str()
            .unwrap()
            .starts_with("division by zero")
    );
}
#[test]
fn actual_creates_updates_removals_and_reactivation_cross_the_filter() {
    let case = fixture::Case {
        n: 1,
        steps: 2,
        global: "filtered".into(),
        ..fixture::Case::default()
    };
    let mut w = fixture::wire(&case);
    let q = filter(op("eq", vec![field("q", "x"), integer(1)]));
    w["reads"] = json!([{"name":"count","params":[],"body":{"value":aggregate("count",None,q)},"loc":loc()}]);
    let m = core_api::admit(&w.to_string()).unwrap();
    let mut s = store_api::Store::create(
        store_api::InMemoryBackend::new(),
        &m,
        fixture::genesis(&case, &m),
    )
    .unwrap();
    let read = |s: &store_api::Store<store_api::InMemoryBackend>| {
        s.read(
            &m,
            &core_api::read::ReadSource::Declared("count".into()),
            &BTreeMap::new(),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap()
        .record
        .as_json()
        .clone()
    };
    assert_eq!(read(&s)["value"], 1);
    for (action, bindings, input, expected) in [
        (
            "set",
            BTreeMap::from([("e0".into(), "e0".into())]),
            json!({"n":2}),
            0,
        ),
        (
            "set",
            BTreeMap::from([("e0".into(), "e0".into())]),
            json!({"n":1}),
            1,
        ),
        ("create", BTreeMap::new(), json!({"id0":"new"}), 2),
        (
            "remove",
            BTreeMap::from([("child".into(), "new".into())]),
            json!({}),
            1,
        ),
    ] {
        let e = s
            .evaluate(
                &m,
                action,
                &bindings,
                &input,
                &json!({}),
                "2026-10-28T00:00:00Z",
                None,
            )
            .unwrap();
        assert_eq!(e.record["result"], "ALLOW", "{}", e.record);
        let b = e.bundle.unwrap();
        s.commit(&m, &b.evaluated_state, &b).unwrap();
        let r = read(&s);
        assert_eq!(r["value"], expected, "{r}");
        retain(
            json!({"action":action,"input":input,"record":e.record,"read":r,"history":s.current_history().unwrap()}),
        );
    }
    let head = s.current_history().unwrap();
    let reused = s
        .evaluate(
            &m,
            "create",
            &BTreeMap::new(),
            &json!({"id0":"new"}),
            &json!({}),
            "2026-10-28T00:00:00Z",
            None,
        )
        .unwrap();
    assert_eq!(reused.record["result"], "ENTITY_ID_ALREADY_USED");
    assert!(reused.bundle.is_none());
    assert_eq!(s.current_history().unwrap(), head);
    retain(json!({"reused_identity_record":reused.record,"head":head}));
}

#[test]
fn changed_capture_changes_query_even_when_state_is_unchanged() {
    let case = fixture::Case {
        n: 1,
        steps: 1,
        ..fixture::Case::default()
    };
    let mut w = fixture::wire(&case);
    w["constraints"] = json!([]);
    w["invariants"] = json!([]);
    let predicate = op(
        "eq",
        vec![
            field("q", "x"),
            json!({"op":"param","param":"key","loc":loc()}),
        ],
    );
    w["reads"] = json!([{"name":"probe","params":[{"name":"key","role":"input","type":{"t":"int"}}],"body":{"value":aggregate("count",None,filter(predicate))},"loc":loc()}]);
    let m = core_api::admit(&w.to_string()).unwrap();
    let s = store_api::Store::create(
        store_api::InMemoryBackend::new(),
        &m,
        fixture::genesis(&case, &m),
    )
    .unwrap();
    let head = s.current_history().unwrap();
    for (key, expected) in [(1, 1), (2, 0)] {
        let r = s
            .read(
                &m,
                &core_api::read::ReadSource::Declared("probe".into()),
                &BTreeMap::new(),
                &json!({"key":key}),
                &json!({}),
                None,
            )
            .unwrap()
            .record
            .as_json()
            .clone();
        assert_eq!(r["result"], "VALUE", "{r}");
        assert_eq!(r["value"], expected);
        assert_eq!(s.current_history().unwrap(), head);
        retain(json!({"capture":key,"record":r,"head":head}));
    }
}
#[test]
fn optional_unique_keeps_none_equality_and_explicit_filtering() {
    let case = fixture::Case {
        n: 1,
        steps: 1,
        ..fixture::Case::default()
    };
    for filtered in [false, true] {
        let mut w = fixture::wire(&case);
        w["constraints"] = json!([]);
        w["invariants"] = json!([]);
        w["actions"] = json!([]);
        w["entities"][0]["fields"][0]["type"] = json!({"t":"option","of":{"t":"int"}});
        let q = if filtered {
            filter(op("is_some", vec![field("q", "x")]))
        } else {
            query()
        };
        w["reads"] = json!([{"name":"probe","params":[],"body":{"value":aggregate("unique",Some(field("q","x")),q)},"loc":loc()}]);
        let m = core_api::admit(&w.to_string()).unwrap();
        let seed = ["a", "b"]
            .iter()
            .map(|id| store_api::documents::SeedEntity {
                entity: "E".into(),
                value: json!({"id":id,"x":null,"y":2,"padding":""}),
            })
            .collect();
        let s = store_api::Store::create(
            store_api::InMemoryBackend::new(),
            &m,
            store_api::store::genesis_for(&m, store_api::documents::EvidencePolicy::none(), seed),
        )
        .unwrap();
        let r = s
            .read(
                &m,
                &core_api::read::ReadSource::Declared("probe".into()),
                &BTreeMap::new(),
                &json!({}),
                &json!({}),
                None,
            )
            .unwrap()
            .record
            .as_json()
            .clone();
        assert_eq!(r["result"], "VALUE", "{r}");
        assert_eq!(r["value"], filtered);
        retain(json!({"optional_filter":filtered,"module":w,"record":r}));
    }
}

#[cfg(feature = "validation-work")]
#[test]
fn bounded_live_rows_do_not_bound_reference_backend_identity_traversal() {
    use store_api::Backend;
    let case = fixture::Case {
        n: 1,
        steps: 1,
        global: "none".into(),
        ..fixture::Case::default()
    };
    let m = fixture::module(&case);
    let mut s = store_api::Store::create(
        store_api::InMemoryBackend::new(),
        &m,
        fixture::genesis(&case, &m),
    )
    .unwrap();
    let start = s.current().unwrap();
    for i in 0..8 {
        let id = format!("retired{i}");
        for (action, bindings, input) in [
            ("create", BTreeMap::new(), json!({"id0":id})),
            (
                "remove",
                BTreeMap::from([("child".into(), id.clone())]),
                json!({}),
            ),
        ] {
            let e = s
                .evaluate(
                    &m,
                    action,
                    &bindings,
                    &input,
                    &json!({}),
                    "2026-10-28T00:00:00Z",
                    None,
                )
                .unwrap();
            assert_eq!(e.record["result"], "ALLOW");
            let b = e.bundle.unwrap();
            s.commit(&m, &b.evaluated_state, &b).unwrap();
        }
    }
    let end = s.current().unwrap();
    assert_eq!(end.position, 16);
    assert_eq!(end.state, start.state);
    core_api::eval::work::reset();
    let keys = s.backend().keys_at("E", end.position).unwrap();
    let work = core_api::eval::work::read();
    assert_eq!(keys.len(), 1);
    assert_eq!(work.backend_enumerations, 1);
    assert_eq!(work.backend_key_candidates, 9);
    assert_eq!(work.backend_members, 1);
    assert!(store_api::replay::replay_data(&s, &start, &end).ok);
    let modules = BTreeMap::from([(m.behavior_version(), m)]);
    assert!(store_api::replay::replay_behavior(&s, &modules, &start, &end).ok);
    println!(
        "CORE031_RETENTION {}",
        json!({"live":keys.len(),"history":end.position,"historical_identity_candidates":work.backend_key_candidates,"work":work,"replay_ok":true,"scope":"reference InMemoryBackend named keys_at counter; not a production-backend or storage-capacity bound"})
    );
}
