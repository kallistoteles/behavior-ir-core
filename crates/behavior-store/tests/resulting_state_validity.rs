#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: ordinary commit must preserve unchanged rows, with a direct oracle.
mod common;
use behavior_core::invocation::RequestedInvocation;
use behavior_store::documents::{EntityKey, EvidencePolicy, SeedEntity};
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{Backend, InMemoryBackend, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use serde_json::{Value, json};
use std::collections::BTreeMap;

fn wire(version: &str) -> Value {
    let mut w = common::json(
        &common::fixtures().join("resulting-state-validity/audit-counterexample/module.json"),
    );
    w["ir_version"] = json!(version);
    if version == "0.8" {
        w["commands"] = json!([]);
        for a in w["actions"].as_array_mut().unwrap() {
            a["command_effects"] = json!([]);
        }
    }
    w
}
fn module(version: &str) -> behavior_core::semantic::module::Module {
    behavior_core::admit(&wire(version).to_string()).unwrap()
}

fn key(id: &str) -> EntityKey {
    EntityKey {
        entity: "E".into(),
        id: id.into(),
    }
}

fn seeded(m: &behavior_core::semantic::module::Module) -> Store<InMemoryBackend> {
    let seed = vec![SeedEntity {
        entity: "E".into(),
        value: json!({"id":"e0","x":1,"y":2,"target":"new"}),
    }];
    let genesis = if m.semantic_profile()
        == behavior_core::semantic::types::SemanticProfile::CommandIntents
    {
        let policy = EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
        genesis_v2_for(m, policy, seed).unwrap()
    } else {
        genesis_for(m, EvidencePolicy::none(), seed)
    };
    Store::create(InMemoryBackend::new(), m, genesis).unwrap()
}

fn independently_valid(s: &Store<InMemoryBackend>) -> bool {
    let at = s.current().unwrap();
    let keys = s.backend().keys_at("E", at.position).unwrap();
    keys.iter().all(|k| {
        let row = s.backend().version_at(k, at.position).unwrap().unwrap();
        let target = row.value["target"].as_str().unwrap();
        !keys.iter().any(|candidate| candidate.id == target)
    })
}

fn authority(s: &Store<InMemoryBackend>) -> Value {
    let at = s.current().unwrap();
    let incoming: Vec<_> = s
        .backend()
        .incoming_at(&key("new"), at.position)
        .unwrap()
        .into_iter()
        .map(|edge| json!({"entity":edge.entity,"id":edge.id,"field":edge.field}))
        .collect();
    json!({"head":s.backend().head().unwrap(),"genesis":s.backend().genesis().unwrap(),
        "record1":s.backend().record(1).unwrap(),"keys":s.backend().keys_at("E",at.position).unwrap(),
        "e0":s.backend().version_at(&key("e0"),at.position).unwrap(),
        "new":s.backend().version_at(&key("new"),at.position).unwrap(),
        "used_new":s.backend().used_at(&key("new"),at.position).unwrap(),
        "incoming_new":incoming})
}

fn audit_creation_cannot_publish_invalid_child(version: &str) {
    let m = module(version);
    let mut s = seeded(&m);
    assert!(independently_valid(&s), "positive valid-parent control");
    let before = authority(&s);
    let at = s.current().unwrap();
    let proposed = s
        .evaluate(
            &m,
            "create",
            &BTreeMap::new(),
            &json!({"id":"new"}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap();
    assert_eq!(
        authority(&s),
        before,
        "evaluation must not mutate canonical authority"
    );
    if let Some(bundle) = &proposed.bundle
        && s.commit(&m, &at, bundle).is_ok()
    {
        assert_eq!(
            s.load(&key("e0"), &s.current().unwrap()).unwrap().value["target"],
            "new",
            "the witness row remains unchanged"
        );
        // Actual canonical membership supplies the independent audit oracle.
        // On baseline this assertion fails after a successful invalid commit.
        assert!(
            independently_valid(&s),
            "G3: ordinary commit invalidated unchanged e0's not exists(target) constraint; {version}"
        );
    }
    assert_eq!(proposed.record["result"], "DENY", "{version}: {proposed:?}");
    assert_eq!(proposed.record["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
    assert!(
        proposed.bundle.is_none(),
        "invalid candidate became a bundle"
    );
    assert_eq!(authority(&s), before, "refusal changed canonical authority");
    assert_eq!(s.current().unwrap(), at);
    assert!(independently_valid(&s));
}

#[test]
fn audit_creation_cannot_publish_invalid_child_legacy() {
    audit_creation_cannot_publish_invalid_child("0.7");
}

#[test]
fn audit_creation_cannot_publish_invalid_child_command_profile() {
    audit_creation_cannot_publish_invalid_child("0.8");
}

#[test]
fn valid_creation_commits_valid_child() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m);
        let original = s.load(&key("e0"), &s.current().unwrap()).unwrap().value;
        let proposed = s
            .evaluate(
                &m,
                "create",
                &BTreeMap::new(),
                &json!({"id":"unrelated"}),
                &json!({}),
                common::T0,
                None,
            )
            .unwrap();
        assert_eq!(
            proposed.record["result"], "ALLOW",
            "{version}: {proposed:?}"
        );
        let bundle = proposed.bundle.unwrap();
        s.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
        assert!(
            independently_valid(&s),
            "the entire committed child must be valid"
        );
        assert_eq!(s.current().unwrap().position, 1);
        assert_eq!(
            s.load(&key("e0"), &s.current().unwrap()).unwrap().value,
            original
        );
        assert_eq!(
            s.load(&key("unrelated"), &s.current().unwrap())
                .unwrap()
                .value["target"],
            "absent"
        );
    }
}

fn invocation(id: &str) -> RequestedInvocation {
    let request = json!({"format":"behavior.invocation.v1","capability":"create",
        "bindings":{},"input":{"id":id},"context":{}});
    let (decoded, errors) = RequestedInvocation::decode(&request.to_string()).unwrap();
    assert!(errors.is_empty());
    decoded.unwrap()
}

fn invocation_refusal_does_not_publish_candidate(version: &str) {
    let m = module(version);
    let s = seeded(&m);
    assert!(independently_valid(&s));
    let before = authority(&s);
    let requested = invocation("new");
    let original_request = requested.as_json();
    let result = s.invoke(&m, &requested, common::T0, None, None).unwrap();
    assert_eq!(requested.as_json(), original_request);
    assert_eq!(
        authority(&s),
        before,
        "invocation evaluation mutated authority"
    );
    let inner = result
        .record
        .inner_record()
        .expect("successfully bound action was evaluated");
    assert_eq!(
        inner["result"],
        "DENY",
        "{version}: {}",
        result.record.to_json_string()
    );
    assert_eq!(inner["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
    assert!(
        result.bundle.is_none(),
        "invalid invocation published a candidate"
    );
    assert_eq!(s.current().unwrap().position, 0);
    assert!(independently_valid(&s));
}

#[test]
fn invalid_child_invocation_has_no_candidate_or_authority_change_legacy() {
    invocation_refusal_does_not_publish_candidate("0.7");
}

#[test]
fn invalid_child_invocation_has_no_candidate_or_authority_change_command_profile() {
    invocation_refusal_does_not_publish_candidate("0.8");
}

#[test]
fn valid_creation_invocation_produces_candidate_without_mutating_authority() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m);
        let before = authority(&s);
        let result = s
            .invoke(&m, &invocation("unrelated"), common::T0, None, None)
            .unwrap();
        assert_eq!(authority(&s), before);
        assert_eq!(
            result.record.inner_record().unwrap()["result"],
            "ALLOW",
            "{version}: {}",
            result.record.to_json_string()
        );
        let b = result.bundle.unwrap();
        s.commit(&m, &b.evaluated_state, &b).unwrap();
        assert!(independently_valid(&s));
        assert_eq!(s.current().unwrap().position, 1);
    }
}

#[test]
fn invalid_child_invocation_cannot_publish_command_intents() {
    let mut w = wire("0.8");
    let l = json!({"file":"017-command-validity.beh","line":1});
    w["commands"] = json!([{"name":"Receipt","fields":[{"name":"message","type":{"t":"string"},"loc":l}],"loc":l}]);
    for a in w["actions"].as_array_mut().unwrap() {
        if a["name"] == "create" {
            a["command_effects"] = json!([{"command":"Receipt","payload":{"message":{"op":"lit","type":{"t":"string"},"value":"committed only","loc":l}},"loc":l}]);
        }
    }
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let s = seeded(&m);
    let before = authority(&s);
    // A valid control establishes that this is a genuinely command-producing
    // action; the invalid child must fail before emitting these intents.
    let control = s
        .invoke(&m, &invocation("unrelated"), common::T0, None, None)
        .unwrap();
    assert_eq!(control.record.inner_record().unwrap()["result"], "ALLOW");
    assert_eq!(
        control.record.inner_record().unwrap()["commands"]["intents"]
            .as_array()
            .unwrap()
            .len(),
        1
    );
    assert!(control.bundle.is_some());
    assert_eq!(authority(&s), before);
    let refused = s
        .invoke(&m, &invocation("new"), common::T0, None, None)
        .unwrap();
    assert_eq!(authority(&s), before);
    let inner = refused.record.inner_record().unwrap();
    assert_eq!(
        inner["result"],
        "DENY",
        "{}",
        refused.record.to_json_string()
    );
    assert!(inner["commands"]["intents"].as_array().unwrap().is_empty());
    assert!(refused.bundle.is_none());
    assert!(s.backend().record(1).unwrap().is_none());
}
