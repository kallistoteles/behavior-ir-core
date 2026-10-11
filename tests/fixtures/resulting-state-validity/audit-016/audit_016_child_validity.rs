//! Test-only audit overlay: a legal ordinary creation must preserve every row's
//! declared constraint, including an unchanged row with a nonlocal dependency.
//! No production correction is included. The assertion is expected to fail at
//! baseline v0.12.1 and is evidence of G3, not a new baseline quality gate.
use behavior_core::{admit, read::ReadSource};
use behavior_store::{Backend, InMemoryBackend, Store, documents::*, store::genesis_for};
use serde_json::json;
use std::collections::BTreeMap;

#[test]
fn ordinary_commit_preserves_unchanged_nonlocal_constraint() {
    let mut wire: serde_json::Value = serde_json::from_str(include_str!(
        "../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap();
    let loc = json!({"file":"audit016.beh","line":1});
    wire["entities"][0]["fields"].as_array_mut().unwrap().push(
        json!({"name":"target","type":{"t":"id","entity":"E"},"loc":loc}),
    );
    wire["constraints"][0]["body"] = json!({"op":"not","loc":loc,"args":[
        {"op":"exists","loc":loc,"args":[{"op":"field","param":"e","field":"target","loc":loc}]}
    ]});
    wire["actions"].as_array_mut().unwrap().push(json!({
        "name":"create","loc":loc,
        "params":[{"name":"id","role":"input","type":{"t":"id","entity":"E"}}],
        "preconditions":[],"postconditions":[],
        "effects":[{"create":"E","id":{"op":"param","param":"id","loc":loc},"loc":loc,
            "fields":{
                "x":{"op":"lit","type":{"t":"int"},"value":1,"loc":loc},
                "y":{"op":"lit","type":{"t":"int"},"value":2,"loc":loc},
                "target":{"op":"lit","type":{"t":"id","entity":"E"},"value":"absent","loc":loc}
            }}]
    }));
    let module = admit(&wire.to_string()).unwrap();
    let mut store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), vec![SeedEntity {
            entity: "E".into(),
            value: json!({"id":"e0","x":1,"y":2,"target":"new"}),
        }]),
    ).unwrap();
    let parent = store.current().unwrap();
    let proposed = store.evaluate(
        &module, "create", &BTreeMap::new(), &json!({"id":"new"}),
        &json!({}), "2026-10-10T00:00:00Z", None,
    ).unwrap();
    let bundle = proposed.bundle.unwrap();
    let committed = store.commit(&module, &parent, &bundle);
    if committed.is_err() {
        assert_eq!(store.current().unwrap(), parent, "refusal mutated state");
        return;
    }
    let child = store.current().unwrap();
    let source = store.backend().version_at(
        &EntityKey { entity:"E".into(), id:"e0".into() }, child.position,
    ).unwrap().unwrap();
    assert_eq!(source.value["target"], "new", "the old row unexpectedly changed");
    let target_exists = store.backend().keys_at("E", child.position).unwrap()
        .iter().any(|key| key.id == "new");
    let full_child = store.read(
        &module, &ReadSource::Declared("ratio".into()),
        &BTreeMap::from([("e".into(),"e0".into())]), &json!({}), &json!({}), None,
    );
    eprintln!("parent={parent:?}; child={child:?}; unchanged_target={}; target_exists={target_exists}; full_child={full_child:?}", source.value["target"]);
    // Direct contract assertion: valid(e0,S') implies !exists_S'(e0.target).
    // The membership assertion does not depend on the full-validator result.
    assert!(!target_exists, "G3 violated: committed child invalidates unchanged e0's not exists(target) constraint");
}
