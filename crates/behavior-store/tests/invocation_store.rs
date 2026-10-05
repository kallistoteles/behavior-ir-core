#![allow(clippy::unwrap_used, clippy::expect_used)]
mod common;
use behavior_core::invocation::{RequestedInvocation, Snapshot, invoke_with_snapshot};
use behavior_store::documents::{EvidencePolicy, SeedEntity, data_version};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use serde_json::{Value, json};

fn setup() -> (
    behavior_core::semantic::module::Module,
    Store<InMemoryBackend>,
    Value,
) {
    let dir = common::fixtures().join("invocation");
    let module = behavior_core::admit(&common::read(&dir.join("modules/ledger.json"))).unwrap();
    let snapshot = common::json(&dir.join("snapshots/s1.json"));
    let seed = snapshot["entities"]
        .as_array()
        .unwrap()
        .iter()
        .map(|v| SeedEntity {
            entity: v["entity"].as_str().unwrap().into(),
            value: v["value"].clone(),
        })
        .collect();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), seed),
    )
    .unwrap();
    (module, store, snapshot)
}
fn request(value: Value) -> RequestedInvocation {
    RequestedInvocation::decode(&value.to_string())
        .unwrap()
        .0
        .unwrap()
}

fn rehash(record: &mut Value) {
    record.as_object_mut().unwrap().remove("record_id");
    let hash =
        behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", record).unwrap();
    record["record_id"] = json!(format!("invocation:{hash}"));
}

#[test]
fn store_replay_checks_historical_existence_in_addition_to_record_consistency() {
    let (module, store, _) = setup();
    let dir = common::fixtures().join("invocation/invocations");
    for path in common::files(&dir, ".json") {
        let result = store
            .invoke(
                &module,
                &request(common::json(&path)),
                common::T0,
                None,
                None,
            )
            .unwrap();
        let replay = store
            .replay_invocation(&module, &result.record.to_json_string())
            .unwrap();
        assert!(replay.matches, "{}: {:?}", path.display(), replay.diff);
    }
    let result = store
        .invoke(
            &module,
            &request(common::json(&dir.join("suspend_unknown.json"))),
            common::T0,
            None,
            None,
        )
        .unwrap();
    let mut foreign = result.record.as_json().clone();
    foreign["data_version"] = json!("foreign:1");
    rehash(&mut foreign);
    assert!(behavior_core::invocation::replay_invocation(&module, &foreign.to_string()).matches);
    let replay = store
        .replay_invocation(&module, &foreign.to_string())
        .unwrap();
    assert!(!replay.matches);
    assert!(replay.diff.unwrap().contains("data_version"));

    let mut false_absence = result.record.as_json().clone();
    false_absence["requested_bindings"]["customer"]["id"] = json!("c1");
    false_absence["binding_facts"][0]["requested"]["id"] = json!("c1");
    false_absence["outcome"]["problems"][0]["requested"]["id"] = json!("c1");
    rehash(&mut false_absence);
    assert!(
        behavior_core::invocation::replay_invocation(&module, &false_absence.to_string()).matches,
        "self-consistency alone cannot disprove recorded absence"
    );
    let replay = store
        .replay_invocation(&module, &false_absence.to_string())
        .unwrap();
    assert!(!replay.matches, "c1 exists at the recorded position");
    assert!(replay.diff.unwrap().contains("binding_facts"));
}

#[test]
fn store_intents_match_plain_records_and_refusals_never_get_candidates() {
    let (module, store, mut snapshot) = setup();
    snapshot["data_version"] = json!(data_version(
        &store.store_id().unwrap(),
        &store.current().unwrap()
    ));
    let snapshot = Snapshot::decode(&module, &snapshot.to_string())
        .unwrap()
        .0
        .unwrap();
    let dir = common::fixtures().join("invocation/intents");
    for path in common::files(&dir, ".json") {
        let text = common::read(&path);
        let result = store
            .invoke_intent(&module, &text, &json!({}), common::T0, None)
            .unwrap();
        let plain = behavior_core::invocation::invoke_intent_with_snapshot(
            &module,
            &text,
            &json!({}),
            &snapshot,
        )
        .unwrap();
        assert_eq!(
            result.record.to_json_string(),
            plain.to_json_string(),
            "{}",
            path.display()
        );
        let allowed = plain.inner_record().is_some_and(|r| r["result"] == "ALLOW");
        assert_eq!(result.bundle.is_some(), allowed, "{}", path.display());
        let replay = store
            .replay_invocation(&module, &result.record.to_json_string())
            .unwrap();
        assert!(replay.matches, "{}: {:?}", path.display(), replay.diff);
    }
    assert!(
        store
            .invoke_intent(&module, "bad JSON", &json!({}), common::T0, None)
            .is_err()
    );
    assert_eq!(store.current().unwrap().position, 0);
}

#[test]
fn store_and_plain_paths_agree_and_only_head_allowed_actions_get_candidates() {
    let (module, mut store, mut snapshot) = setup();
    snapshot["data_version"] = json!(data_version(
        &store.store_id().unwrap(),
        &store.current().unwrap()
    ));
    let snapshot = Snapshot::decode(&module, &snapshot.to_string())
        .unwrap()
        .0
        .unwrap();
    let dir = common::fixtures().join("invocation/invocations");
    for path in common::files(&dir, ".json") {
        let requested = request(common::json(&path));
        let result = store
            .invoke(&module, &requested, common::T0, None, None)
            .unwrap();
        let plain = invoke_with_snapshot(&module, &requested, &snapshot).unwrap();
        assert_eq!(
            result.record.to_json_string(),
            plain.to_json_string(),
            "{}",
            path.display()
        );
        if let Some(bundle) = result.bundle {
            assert_eq!(
                result.record.as_json()["outcome"]["record_id"],
                bundle.transition_hash
            );
            assert!(bundle.record.get("hash").is_none());
            let bindings = requested
                .bindings()
                .iter()
                .map(|(name, identity)| (name.clone(), identity.id.clone()))
                .collect();
            let legacy = store
                .evaluate(
                    &module,
                    requested.capability(),
                    &bindings,
                    requested.input(),
                    requested.context(),
                    common::T0,
                    None,
                )
                .unwrap();
            assert_eq!(
                serde_json::to_value(&bundle).unwrap(),
                serde_json::to_value(legacy.bundle.unwrap()).unwrap()
            );
            let mut changed = bundle.record.clone();
            changed["data_version"] = json!("different");
            assert_ne!(
                behavior_store::store::transition_hash(&changed).unwrap(),
                bundle.transition_hash
            );
        } else {
            assert!(
                result.record.as_json()["kind"] == "read"
                    || result.record.outcome_kind() == "pre_evaluation_refusal"
            );
        }
    }
    let before = store.current().unwrap();
    let requested = request(common::json(&dir.join("suspend_unknown.json")));
    for _ in 0..10 {
        let result = store
            .invoke(&module, &requested, common::T0, None, None)
            .unwrap();
        assert_eq!(result.record.refusal_stage(), Some("BINDING"));
        assert!(result.bundle.is_none());
    }
    assert_eq!(store.current().unwrap(), before);
    assert!(store.backend().record(1).unwrap().is_none());
    let requested = request(common::json(&dir.join("suspend.json")));
    let evaluated = store
        .invoke(&module, &requested, common::T0, None, None)
        .unwrap();
    let bundle = evaluated.bundle.unwrap();
    store
        .commit(&module, &bundle.evaluated_state, &bundle)
        .unwrap();
    assert!(
        store
            .invoke(&module, &requested, common::T0, None, Some(&before))
            .unwrap()
            .bundle
            .is_none()
    );
}
