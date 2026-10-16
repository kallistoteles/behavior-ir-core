#![allow(clippy::unwrap_used, clippy::expect_used)]
//! One-pass workflows through behavior-engine only, independent of hidden expression types.
use behavior_engine::builder::{Builder, SemanticProfile};
use behavior_engine::read::{ReadSource, evaluate_read, replay_read};
use behavior_engine::wire::{Loc, WField, WItem, WType};
use serde_json::{Value, json};
fn loc(file: &str, line: u64) -> Loc {
    Loc {
        file: file.into(),
        line,
    }
}
fn request(facts: Value) -> String {
    json!({"data_version":"source:1","state":{},"input":{},"context":{},"facts":facts}).to_string()
}
#[test]
fn public_one_pass_scalar_module_and_ad_hoc_read() {
    for p in [SemanticProfile::Legacy, SemanticProfile::CommandIntents] {
        for prefix in ["/tree-a", "/tree-b"] {
            let file = format!("{prefix}/pkg/model.py");
            let mut b = Builder::with_semantic_profile(p);
            let n = b.lit(WType::Int, json!(42), loc("<string>", 17)).unwrap();
            b.add_read(Builder::read_value("probe", vec![], n, loc(&file, 11)))
                .unwrap();
            let m = b.finish(None).unwrap();
            assert_eq!(m.read("probe").unwrap().loc().file, "model.py");
            let wire: Value =
                serde_json::from_str(&behavior_engine::serialize::to_wire_json(&m)).unwrap();
            assert_eq!(
                wire["reads"][0]["body"]["value"]["loc"],
                json!({"file":"<string>","line":17})
            );
            let mut a = Builder::for_module(&m);
            let n = a.lit(WType::Int, json!(42), loc("<string>", 17)).unwrap();
            let item = a
                .admit_read(&Builder::read_value("probe", vec![], n, loc(&file, 11)))
                .unwrap();
            assert_eq!(item.loc().file, "model.py");
            for source in [
                ReadSource::Declared("probe".into()),
                ReadSource::AdHoc(Box::new(item)),
            ] {
                let r = evaluate_read(&m, &source, &request(json!({"universe":[]}))).record;
                assert_eq!(r.result(), "VALUE");
                assert_eq!(r.as_json()["value"], 42);
                assert!(r.as_json()["observed"].as_array().unwrap().is_empty());
                assert!(replay_read(&m, &r.to_json_string()).matches);
            }
        }
    }
}
#[test]
fn public_one_pass_projection_uses_an_explicit_complete_world() {
    for p in [SemanticProfile::Legacy, SemanticProfile::CommandIntents] {
        let mut b = Builder::with_semantic_profile(p);
        b.declare_entity(
            "Doc",
            vec![WField {
                name: "title".into(),
                ty: WType::String,
                loc: loc("<unknown>", 5),
            }],
            loc("<unknown>", 3),
        )
        .unwrap();
        let query = b.select("Doc", loc("/tree-a/pkg/query.py", 17)).unwrap();
        b.add_read(Builder::read_projection(
            "docs",
            vec![],
            Ok(query),
            "d",
            vec![WItem::Field("title".into())],
            loc("<stdin>", 11),
        ))
        .unwrap();
        let m = b.finish(None).unwrap();
        let wire: Value =
            serde_json::from_str(&behavior_engine::serialize::to_wire_json(&m)).unwrap();
        assert_eq!(
            wire["reads"][0]["body"]["project"]["over"]["loc"],
            json!({"file":"query.py","line":17})
        );
        let mut a = Builder::for_module(&m);
        let query = a.select("Doc", loc("/tree-b/pkg/query.py", 17)).unwrap();
        let raw = Builder::read_projection(
            "docs",
            vec![],
            Ok(query),
            "d",
            vec![WItem::Field("title".into())],
            loc("<stdin>", 11),
        );
        let item = a.admit_read(&raw).unwrap();
        assert_eq!(item.loc().file, "<stdin>");
        let facts = json!({"universe":[{"entity":"Doc","members":[{"id":"d1","title":"Hello"}]}]});
        for source in [
            ReadSource::Declared("docs".into()),
            ReadSource::AdHoc(Box::new(item)),
        ] {
            let r = evaluate_read(&m, &source, &request(facts.clone())).record;
            assert_eq!(r.result(), "VALUE", "{}", r.to_json_string());
            assert_eq!(r.as_json()["value"], json!([{"id":"d1","title":"Hello"}]));
            assert!(
                !r.as_json()["facts"]["queries"]
                    .as_array()
                    .unwrap()
                    .is_empty()
            );
            assert!(replay_read(&m, &r.to_json_string()).matches);
        }
    }
}
#[test]
fn public_runtime_diagnostic_retains_real_file_and_marker() {
    for p in [SemanticProfile::Legacy, SemanticProfile::CommandIntents] {
        for file in ["/tree-a/pkg/model.py", "<string>"] {
            let mut b = Builder::with_semantic_profile(p);
            let one = b.lit(WType::Int, json!(1), loc("<stdin>", 11)).unwrap();
            let zero = b.lit(WType::Int, json!(0), loc("<stdin>", 11)).unwrap();
            let n = b.op("div", vec![one, zero], loc(file, 17)).unwrap();
            b.add_read(Builder::read_value("fail", vec![], n, loc("<stdin>", 11)))
                .unwrap();
            let m = b.finish(None).unwrap();
            let r = evaluate_read(
                &m,
                &ReadSource::Declared("fail".into()),
                &request(json!({"universe":[]})),
            )
            .record;
            assert_eq!(r.result(), "EVALUATION_ERROR");
            let text = if p == SemanticProfile::CommandIntents {
                r.diagnostics()["reasons"].clone()
            } else {
                r.as_json()["reasons"].clone()
            };
            assert_eq!(
                text[0]["loc"],
                json!({"file":if file.starts_with('/') {"model.py"} else {file},"line":17})
            );
            assert_eq!(r.as_json()["reasons"][0]["code"], "EVALUATION_ERROR");
            if p == SemanticProfile::CommandIntents {
                assert_eq!(
                    r.as_json()["reasons"][0]["details"]["code"],
                    "DIVISION_BY_ZERO"
                );
            }
        }
    }
}
#[test]
fn fresh_own_profile_core_and_store_replay_preserve_exact_world_and_history() {
    use behavior_engine::store::documents::{EvidencePolicy, SeedEntity};
    use behavior_engine::store::store::{genesis_for, genesis_v2_for};
    use behavior_engine::store::{InMemoryBackend, Store};
    use behavior_engine::verify::governance::EvidencePolicyV2;
    use std::collections::BTreeMap;
    for p in [SemanticProfile::Legacy, SemanticProfile::CommandIntents] {
        let mut b = Builder::with_semantic_profile(p);
        b.declare_entity(
            "Doc",
            vec![WField {
                name: "title".into(),
                ty: WType::String,
                loc: loc("<unknown>", 5),
            }],
            loc("<unknown>", 3),
        )
        .unwrap();
        let query = b.select("Doc", loc("/tree-a/pkg/query.py", 17)).unwrap();
        b.add_read(Builder::read_projection(
            "docs",
            vec![],
            Ok(query),
            "d",
            vec![WItem::Field("title".into())],
            loc("<stdin>", 11),
        ))
        .unwrap();
        let n = b.lit(WType::Int, json!(42), loc("<string>", 17)).unwrap();
        b.add_read(Builder::read_value(
            "probe",
            vec![],
            n,
            loc("/tree-a/pkg/model.py", 11),
        ))
        .unwrap();
        let m = b.finish(None).unwrap();
        assert_eq!(m.read("probe").unwrap().loc().file, "model.py");
        let seed = vec![SeedEntity {
            entity: "Doc".into(),
            value: json!({"id":"d1","title":"Hello"}),
        }];
        let genesis = if p == SemanticProfile::Legacy {
            genesis_for(&m, EvidencePolicy::none(), seed)
        } else {
            let policy=EvidencePolicyV2::from_json(&json!({"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}).to_string()).unwrap();
            genesis_v2_for(&m, policy, seed).unwrap()
        };
        let store = Store::create(InMemoryBackend::new(), &m, genesis).unwrap();
        let before = store.current().unwrap();
        let history = store.current_history().unwrap();
        assert_eq!(before.position, 0);
        let mut a = Builder::for_module(&m);
        let n = a.lit(WType::Int, json!(42), loc("<string>", 17)).unwrap();
        let scalar = a
            .admit_read(&Builder::read_value(
                "probe",
                vec![],
                n,
                loc("/tree-b/pkg/model.py", 11),
            ))
            .unwrap();
        assert_eq!(scalar.loc().file, "model.py");
        let query = a.select("Doc", loc("/tree-b/pkg/query.py", 17)).unwrap();
        let projected = a
            .admit_read(&Builder::read_projection(
                "docs",
                vec![],
                Ok(query),
                "d",
                vec![WItem::Field("title".into())],
                loc("<stdin>", 11),
            ))
            .unwrap();
        for (source, expected) in [
            (ReadSource::Declared("probe".into()), json!(42)),
            (ReadSource::AdHoc(Box::new(scalar)), json!(42)),
            (
                ReadSource::Declared("docs".into()),
                json!([{"id":"d1","title":"Hello"}]),
            ),
            (
                ReadSource::AdHoc(Box::new(projected)),
                json!([{"id":"d1","title":"Hello"}]),
            ),
        ] {
            let execution = store
                .read(
                    &m,
                    &source,
                    &BTreeMap::new(),
                    &json!({}),
                    &json!({}),
                    Some(&before),
                )
                .unwrap();
            let record = execution.record;
            assert_eq!(record.result(), "VALUE");
            assert_eq!(record.as_json()["value"], expected);
            let encoded = record.to_json_string();
            assert_eq!(
                serde_json::from_str::<Value>(&encoded).unwrap(),
                record.as_json().clone()
            );
            assert!(replay_read(&m, &encoded).matches);
            assert!(store.replay_read(&m, &encoded).unwrap().matches);
            assert_eq!(record.to_json_string(), encoded);
            assert_eq!(store.current().unwrap(), before);
            assert_eq!(
                store.current_history().unwrap().as_json(),
                history.as_json()
            );
        }
    }
}
