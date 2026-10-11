//! T002 fixture capture, executed against the unchanged T001 baseline.
//! This observes historical behavior; its assertions are not remediation RED tests.
use behavior_core::{admit, canonical, invocation::RequestedInvocation, read::ReadSource};
use behavior_store::{
    Backend, InMemoryBackend, Store,
    commands::CommandStreamRequest,
    documents::{EntityKey, EvidencePolicy, SeedEntity},
    store::{genesis_for, genesis_v2_for},
};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use serde_json::{Value, json};
use std::{
    collections::BTreeMap,
    fs,
    path::{Path, PathBuf},
};

const NOW: &str = "2026-10-10T00:00:00Z";
fn emit(path: &Path, value: &Value) {
    fs::create_dir_all(path.parent().unwrap()).unwrap();
    fs::write(
        path,
        format!("{}\n", canonical::to_canonical_string(value).unwrap()),
    )
    .unwrap();
}
fn load(path: &Path) -> Value {
    serde_json::from_slice(&fs::read(path).unwrap()).unwrap()
}
fn main() {
    let repo = PathBuf::from(std::env::args().nth(1).unwrap());
    let out = repo.join("tests/fixtures/resulting-state-validity");
    let wire = load(&out.join("audit-counterexample/module.json"));
    let module = admit(&wire.to_string()).unwrap();
    let mut outcomes = Vec::new();
    for (name, id, expected_valid) in [
        ("invalid-create", "new", false),
        ("valid-create", "unrelated", true),
    ] {
        let genesis = genesis_for(
            &module,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "E".into(),
                value: json!({"id":"e0","x":1,"y":2,"target":"new"}),
            }],
        );
        let mut store = Store::create(InMemoryBackend::new(), &module, genesis.clone()).unwrap();
        let parent = store.current().unwrap();
        let evaluated = store
            .evaluate(
                &module,
                "create",
                &BTreeMap::new(),
                &json!({"id":id}),
                &json!({}),
                NOW,
                None,
            )
            .unwrap();
        assert_eq!(evaluated.record["result"], "ALLOW");
        let bundle = evaluated.bundle.unwrap();
        let prefix = out.join("audit-counterexample");
        emit(
            &prefix.join("genesis.json"),
            &serde_json::to_value(&genesis).unwrap(),
        );
        emit(
            &prefix.join(format!("{name}.record.json")),
            &evaluated.record,
        );
        emit(
            &prefix.join(format!("{name}.bundle.json")),
            &serde_json::to_value(&bundle).unwrap(),
        );
        let mut request = json!({"action":"create","data_version":evaluated.record["data_version"],"state":{},"input":{"id":id},"context":{},"facts":evaluated.record["facts"]});
        request["facts"]["universe"] =
            json!([{"entity":"E","members":[{"id":"e0","x":1,"y":2,"target":"new"}]}]);
        let plain = behavior_core::evaluate(&module, &request.to_string());
        assert_eq!(
            plain.as_json(),
            &evaluated.record,
            "baseline plain/store record mismatch"
        );
        assert!(behavior_core::replay(&module, &plain.to_json_string()).matches);
        emit(&prefix.join(format!("{name}.request.json")), &request);
        let invocation = json!({"format":"behavior.invocation.v1","capability":"create","bindings":{},"input":{"id":id},"context":{}});
        let (requested, _) = RequestedInvocation::decode(&invocation.to_string()).unwrap();
        let invoked = store
            .invoke(&module, &requested.unwrap(), NOW, None, None)
            .unwrap();
        assert!(
            behavior_core::invocation::replay_invocation(&module, &invoked.record.to_json_string())
                .matches
        );
        emit(&prefix.join(format!("{name}.invocation.json")), &invocation);
        emit(
            &prefix.join(format!("{name}.invocation-record.json")),
            invoked.record.as_json(),
        );
        let committed = store.commit(&module, &parent, &bundle).unwrap();
        let child = store.current().unwrap();
        let row = store
            .backend()
            .version_at(
                &EntityKey {
                    entity: "E".into(),
                    id: "e0".into(),
                },
                child.position,
            )
            .unwrap()
            .unwrap();
        let target = row.value["target"].as_str().unwrap();
        let member = store
            .backend()
            .keys_at("E", child.position)
            .unwrap()
            .iter()
            .any(|k| k.id == target);
        assert_eq!(
            !member, expected_valid,
            "independent archived control predicate"
        );
        emit(
            &prefix.join(format!("{name}.transition.json")),
            &serde_json::to_value(store.backend().record(child.position).unwrap().unwrap())
                .unwrap(),
        );
        let read = store.read(
            &module,
            &ReadSource::Declared("ratio".into()),
            &BTreeMap::from([("e".into(), "e0".into())]),
            &json!({}),
            &json!({}),
            None,
        );
        outcomes.push(json!({"case":name,"baseline_result":"ALLOW","committed":true,"parent":parent,"child":child,
            "record_id":committed.record_id,"unchanged_row":row.value,"target_exists":member,
            "independent_complete_child_valid":!member,"read_succeeded":read.is_ok(),"read_error":read.err().map(|e|e.to_string())}));
    }
    emit(
        &out.join("audit-counterexample/capture-results.json"),
        &json!(outcomes),
    );
    let command_wire = load(&repo.join("tests/fixtures/commands/modules/receipt.json"));
    let command_module = admit(&command_wire.to_string()).unwrap();
    let policy = EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let genesis = genesis_v2_for(&command_module, policy, vec![]).unwrap();
    let mut commands =
        Store::create(InMemoryBackend::new(), &command_module, genesis.clone()).unwrap();
    let evaluated = commands
        .evaluate(
            &command_module,
            "receipt",
            &BTreeMap::new(),
            &json!({"recipient":"customer-1"}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap();
    let bundle = evaluated.bundle.unwrap();
    commands
        .commit(&command_module, &bundle.evaluated_state, &bundle)
        .unwrap();
    let stream_request = CommandStreamRequest::from_json(&json!({"format":"behavior.command_stream_request.v1","after":commands.history_at(0).unwrap(),"max_records":256}).to_string()).unwrap();
    let page = commands.commands_since(&stream_request).unwrap();
    assert_eq!(page.items().len(), 1);
    emit(
        &out.join("commands/genesis.json"),
        &serde_json::to_value(genesis).unwrap(),
    );
    emit(
        &out.join("commands/bundle.json"),
        &serde_json::to_value(&bundle).unwrap(),
    );
    emit(
        &out.join("commands/transition.json"),
        &serde_json::to_value(commands.backend().record(1).unwrap().unwrap()).unwrap(),
    );
    emit(
        &out.join("commands/stream-request.json"),
        &stream_request.as_json(),
    );
    emit(&out.join("commands/stream-page.json"), &page.as_json());
    println!(
        "Captured audited old ALLOW, valid control, invocation wrappers and one committed command occurrence."
    );
}
