#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017 Store boundaries: typed observations, exact rederivation and refusal.
mod common;
use behavior_core::invocation::RequestedInvocation;
use behavior_core::semantic::module::Module;
use behavior_core::semantic::types::SemanticProfile;
use behavior_store::documents::{
    CommitBundle, EntityKey, EvidencePolicy, SeedEntity, StateRef, TAG_COMMIT_BUNDLE_V2,
};
use behavior_store::store::{genesis_for, genesis_v2_for, transition_hash};
use behavior_store::{Backend, InMemoryBackend, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use serde_json::{Value, json};

fn loc() -> Value {
    json!({"file":"017-boundaries.beh","line":1})
}
fn wire(version: &str) -> Value {
    let mut w = common::json(
        &common::fixtures().join("resulting-state-validity/audit-counterexample/module.json"),
    );
    w["ir_version"] = json!(version);
    w["derived"] = json!([
        {"name":"inner_total","kind":"derived","params":[{"name":"inner","type":{"t":"entity","name":"E"}}],
         "body":{"op":"add","args":[{"op":"field","param":"inner","field":"x","loc":loc()},{"op":"field","param":"inner","field":"y","loc":loc()}],"loc":loc()},"loc":loc()},
        {"name":"outer_total","kind":"derived","params":[{"name":"outer","type":{"t":"entity","name":"E"}}],
         "body":{"op":"derived","name":"inner_total","args":["outer"],"loc":loc()},"loc":loc()}
    ]);
    w["constraints"].as_array_mut().unwrap().push(json!({"name":"z_positive_total","entity":"E","param":"row",
        "body":{"op":"gt","args":[{"op":"derived","name":"outer_total","args":["row"],"loc":loc()},{"op":"lit","type":{"t":"int"},"value":0,"loc":loc()}],"loc":loc()},"loc":loc()}));
    for a in w["actions"].as_array_mut().unwrap() {
        if a["name"] == "set" {
            a["effects"][0]["value"]["value"] = json!(4);
        }
    }
    if version == "0.8" {
        w["commands"] = json!([{"name":"Receipt","fields":[{"name":"message","type":{"t":"string"},"loc":loc()}],"loc":loc()}]);
        let emission = json!({"command":"Receipt","payload":{"message":{"op":"lit","type":{"t":"string"},"value":"receipt","loc":loc()}},"loc":loc()});
        for a in w["actions"].as_array_mut().unwrap() {
            // A bag with two equal intents establishes multiplicity agreement.
            a["command_effects"] = json!([emission.clone(), emission.clone()]);
        }
    }
    w
}
fn module(version: &str) -> Module {
    behavior_core::admit(&wire(version).to_string()).unwrap()
}
fn seeded(m: &Module) -> Store<InMemoryBackend> {
    let seed = vec![
        SeedEntity {
            entity: "E".into(),
            value: json!({"id":"e0","x":1,"y":2,"target":"new"}),
        },
        SeedEntity {
            entity: "E".into(),
            value: json!({"id":"e1","x":3,"y":4,"target":"never"}),
        },
    ];
    let genesis = if m.semantic_profile() == SemanticProfile::CommandIntents {
        let policy = EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
        genesis_v2_for(m, policy, seed).unwrap()
    } else {
        genesis_for(m, EvidencePolicy::none(), seed)
    };
    Store::create(InMemoryBackend::new(), m, genesis).unwrap()
}
fn key(id: &str) -> EntityKey {
    EntityKey {
        entity: "E".into(),
        id: id.into(),
    }
}
fn authority(s: &Store<InMemoryBackend>) -> Value {
    let at = s.current().unwrap();
    let keys = s.backend().keys_at("E", at.position).unwrap();
    let values: Vec<_> = keys
        .iter()
        .map(|k| s.backend().version_at(k, at.position).unwrap().unwrap())
        .collect();
    let identities: Vec<_> = ["e0", "e1", "new", "unrelated"]
        .into_iter()
        .map(|id| {
            let incoming: Vec<_> = s
                .backend()
                .incoming_at(&key(id), at.position)
                .unwrap()
                .into_iter()
                .map(|e| json!({"entity":e.entity,"id":e.id,"field":e.field}))
                .collect();
            json!({"id":id,"used":s.backend().used_at(&key(id),at.position).unwrap(),
            "removed":s.backend().removed_at(&key(id)).unwrap(),"incoming":incoming})
        })
        .collect();
    json!({"head":s.backend().head().unwrap(),"genesis":s.backend().genesis().unwrap(),
        "record1":s.backend().record(1).unwrap(),"record2":s.backend().record(2).unwrap(),
        "keys":keys,"values":values,"identities":identities})
}
fn independently_valid(s: &Store<InMemoryBackend>) -> bool {
    let at = s.current().unwrap();
    let keys = s.backend().keys_at("E", at.position).unwrap();
    keys.iter().all(|k| {
        let row = s
            .backend()
            .version_at(k, at.position)
            .unwrap()
            .unwrap()
            .value;
        !keys
            .iter()
            .any(|k| Some(k.id.as_str()) == row["target"].as_str())
            && row["x"].as_i64().unwrap() + row["y"].as_i64().unwrap() > 0
    })
}
fn evaluated(s: &Store<InMemoryBackend>, m: &Module, id: &str) -> behavior_store::Evaluation {
    s.evaluate(
        m,
        "set",
        &common::bind(&[("e", id)]),
        &json!({}),
        &json!({}),
        common::T0,
        None,
    )
    .unwrap()
}
fn requested(action: &str, id: Option<&str>) -> RequestedInvocation {
    let bindings = if action == "set" {
        json!({"e":{"entity":"E","id":id.unwrap()}})
    } else {
        json!({})
    };
    let input = if action == "create" {
        json!({"id":id.unwrap()})
    } else {
        json!({})
    };
    let (request, errors) = RequestedInvocation::decode(
        &json!({"format":"behavior.invocation.v1","capability":action,
        "bindings":bindings,"input":input,"context":{}})
        .to_string(),
    )
    .unwrap();
    assert!(errors.is_empty());
    request.unwrap()
}
fn child_step<'a>(record: &'a Value, id: &str) -> &'a Value {
    record["trace"]
        .as_array()
        .unwrap()
        .iter()
        .find(|step| {
            step["phase"] == "constraint_post"
                && step["subject"] == json!({"entity":"E","id":id})
                && step["obligation"]["name"] == "z_positive_total"
        })
        .expect("reached typed derived-constraint witness")
}
fn has_fact(facts: &Value, id: &str, field: &str, value: Value) -> bool {
    facts["fields"].as_array().is_some_and(|rows| {
        rows.iter()
            .any(|row| row == &json!({"entity":"E","id":id,"field":field,"value":value}))
    })
}
fn reseal_hash(bundle: &mut CommitBundle) {
    bundle.transition_hash = if bundle.format == TAG_COMMIT_BUNDLE_V2 {
        bundle.governance_candidate().unwrap().hash().to_string()
    } else {
        transition_hash(&bundle.record).unwrap()
    };
}

fn preserves_parent_observations(version: &str) {
    let m = module(version);
    let mut s = seeded(&m);
    let before = authority(&s);
    assert!(independently_valid(&s));
    let evaluation = evaluated(&s, &m, "e0");
    let invocation = s
        .invoke(&m, &requested("set", Some("e0")), common::T0, None, None)
        .unwrap();
    assert_eq!(evaluation.record["result"], "ALLOW");
    assert_eq!(
        invocation.record.inner_record().unwrap(),
        &evaluation.record
    );
    let bundle = evaluation.bundle.unwrap();
    assert_eq!(invocation.bundle.as_ref().unwrap(), &bundle);
    assert_eq!(authority(&s), before, "evaluation/invocation are read-only");
    let unchanged = child_step(&bundle.record, "e1");
    assert_eq!(unchanged["outcome"], true);
    assert_eq!(
        unchanged["observations"],
        json!([
            {"field":"x","phase_state":"S'","value":3},
            {"field":"y","phase_state":"S'","value":4}
        ])
    );
    // Required typed observations survive the action's empty outer mapping.
    // The expected values are parent data, never copied from the trace.
    assert!(
        has_fact(&bundle.read_facts, "e1", "x", json!(3)),
        "unchanged E#e1.x missing from typed parent read_facts: {}",
        bundle.read_facts
    );
    assert!(has_fact(&bundle.read_facts, "e1", "y", json!(4)));
    assert!(has_fact(&bundle.read_facts, "e1", "target", json!("never")));
    assert!(has_fact(&bundle.read_facts, "e0", "x", json!(1)));
    assert!(
        !has_fact(&bundle.read_facts, "e0", "x", json!(4)),
        "child value leaked into parent facts"
    );
    let changed = child_step(&bundle.record, "e0");
    assert!(
        changed["observations"]
            .as_array()
            .unwrap()
            .contains(&json!({"field":"x","phase_state":"S'","value":4}))
    );
    let committed = s.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
    assert!(independently_valid(&s));
    let archived = s
        .backend()
        .record(committed.result_state.position)
        .unwrap()
        .unwrap();
    assert_eq!(
        archived.bundle.as_ref().unwrap().record,
        bundle.record,
        "commit rederivation changed semantic evidence"
    );
    assert_eq!(archived.bundle.unwrap().read_facts, bundle.read_facts);
}
#[test]
fn unbound_parent_observations_survive_evaluation_invocation_and_commit_legacy() {
    preserves_parent_observations("0.7");
}
#[test]
fn unbound_parent_observations_survive_evaluation_invocation_and_commit_commands() {
    preserves_parent_observations("0.8");
}

#[test]
fn child_values_of_new_entities_are_not_parent_field_facts() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let s = seeded(&m);
        let before = authority(&s);
        let evaluation = s
            .evaluate(
                &m,
                "create",
                &Default::default(),
                &json!({"id":"unrelated"}),
                &json!({}),
                common::T0,
                None,
            )
            .unwrap();
        assert_eq!(evaluation.record["result"], "ALLOW");
        let bundle = evaluation.bundle.unwrap();
        let created = child_step(&bundle.record, "unrelated");
        assert!(
            created["observations"]
                .as_array()
                .unwrap()
                .contains(&json!({"field":"x","phase_state":"S'","value":1}))
        );
        assert!(
            !bundle.read_facts["fields"]
                .as_array()
                .is_some_and(|fs| fs.iter().any(|f| f["id"] == "unrelated")),
            "new row cannot be observed in the parent"
        );
        assert_eq!(authority(&s), before);
    }
}

#[test]
fn genuine_candidates_rederive_and_commit_with_the_same_changes_and_command_bag() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m);
        let evaluated = evaluated(&s, &m, "e0");
        let invoked = s
            .invoke(&m, &requested("set", Some("e0")), common::T0, None, None)
            .unwrap();
        let bundle = evaluated.bundle.unwrap();
        assert_eq!(invoked.record.inner_record().unwrap(), &bundle.record);
        assert_eq!(invoked.bundle.as_ref().unwrap(), &bundle);
        assert!(bundle.write_set.iter().any(|w| w.entity == "E"
            && w.id == "e0"
            && w.field == "x"
            && w.old == 1
            && w.new == 4));
        if version == "0.8" {
            let intents = bundle.record["commands"]["intents"].as_array().unwrap();
            assert_eq!(intents.len(), 2);
            assert_eq!(intents[0], intents[1]);
        } else {
            assert!(bundle.record.get("commands").is_none());
        }
        let c = s.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
        assert!(!c.already);
        assert!(independently_valid(&s));
        let durable = s.backend().record(1).unwrap().unwrap().bundle.unwrap();
        assert_eq!(durable.record, bundle.record);
        assert_eq!(durable.write_set, bundle.write_set);
        assert_eq!(durable.read_facts, bundle.read_facts);
    }
}

#[test]
fn actual_invalid_child_refuses_both_boundaries_without_authority_changes() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let s = seeded(&m);
        let before = authority(&s);
        assert!(independently_valid(&s));
        // Direct child oracle: new is live, while unchanged e0.target==new.
        let child_ids = ["e0", "e1", "new"];
        assert!(child_ids.contains(&"new"));
        assert_eq!(
            s.load(&key("e0"), &s.current().unwrap()).unwrap().value["target"],
            "new"
        );
        let e = s
            .evaluate(
                &m,
                "create",
                &Default::default(),
                &json!({"id":"new"}),
                &json!({}),
                common::T0,
                None,
            )
            .unwrap();
        let i = s
            .invoke(
                &m,
                &requested("create", Some("new")),
                common::T0,
                None,
                None,
            )
            .unwrap();
        assert_eq!(e.record["result"], "DENY");
        assert_eq!(e.record["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
        assert_eq!(i.record.inner_record().unwrap(), &e.record);
        assert!(e.bundle.is_none() && i.bundle.is_none());
        let witness = e.record["trace"]
            .as_array()
            .unwrap()
            .iter()
            .find(|step| step["outcome"] == false)
            .unwrap();
        assert_eq!(witness["subject"], json!({"entity":"E","id":"e0"}));
        assert_eq!(authority(&s), before);
    }
}

fn refused_unchanged(
    s: &mut Store<InMemoryBackend>,
    m: &Module,
    parent: &StateRef,
    b: &CommitBundle,
    code: &str,
) {
    let before = authority(s);
    let e = s.commit(m, parent, b).unwrap_err();
    assert_eq!(e.code(), code, "{e}");
    assert_eq!(
        authority(s),
        before,
        "failed check changed canonical authority"
    );
}
#[test]
fn rehashed_forged_witness_and_parent_facts_cannot_be_committed() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m);
        let good = evaluated(&s, &m, "e0").bundle.unwrap();
        let mut forged = good.clone();
        let step = forged.record["trace"]
            .as_array_mut()
            .unwrap()
            .iter_mut()
            .find(|step| step["subject"] == json!({"entity":"E","id":"e1"}))
            .unwrap();
        step["subject"]["id"] = json!("forged");
        reseal_hash(&mut forged);
        refused_unchanged(
            &mut s,
            &m,
            &forged.evaluated_state,
            &forged,
            "BUNDLE_INVALID",
        );
        let mut forged = good.clone();
        forged.read_facts["fields"] = json!([{"entity":"E","id":"e1","field":"x","value":900}]);
        reseal_hash(&mut forged);
        refused_unchanged(
            &mut s,
            &m,
            &forged.evaluated_state,
            &forged,
            "BUNDLE_INVALID",
        );
        s.commit(&m, &good.evaluated_state, &good).unwrap();
        assert!(independently_valid(&s));
    }
}
fn replace_text(v: &mut Value, from: &str, to: &str) {
    match v {
        Value::String(s) if s == from => *s = to.into(),
        Value::Object(fields) => fields.values_mut().for_each(|v| replace_text(v, from, to)),
        Value::Array(values) => values.iter_mut().for_each(|v| replace_text(v, from, to)),
        _ => {}
    }
}
#[test]
fn rehashed_allow_for_an_independently_invalid_child_is_refused() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m);
        let good = s
            .evaluate(
                &m,
                "create",
                &Default::default(),
                &json!({"id":"unrelated"}),
                &json!({}),
                common::T0,
                None,
            )
            .unwrap()
            .bundle
            .unwrap();
        let mut forged = good.clone();
        replace_text(&mut forged.record, "unrelated", "new");
        replace_text(&mut forged.read_facts, "unrelated", "new");
        let mut lifecycle = serde_json::to_value(&forged.write_lifecycle).unwrap();
        replace_text(&mut lifecycle, "unrelated", "new");
        forged.write_lifecycle = serde_json::from_value(lifecycle).unwrap();
        assert_eq!(forged.record["result"], "ALLOW");
        assert_eq!(forged.record["input"]["id"], "new");
        assert_eq!(
            forged.record["facts"]["universe"][0]["members"][0]["target"],
            "new"
        );
        assert_eq!(forged.record["lifecycle"][0]["id"], "new");
        // Recomputed content identities do not establish the false child proof.
        reseal_hash(&mut forged);
        refused_unchanged(
            &mut s,
            &m,
            &forged.evaluated_state,
            &forged,
            "BUNDLE_INVALID",
        );
        assert!(independently_valid(&s));
        s.commit(&m, &good.evaluated_state, &good).unwrap();
        assert!(independently_valid(&s));
    }
}

#[test]
fn exact_parent_schema_and_behavior_substitution_refuse_without_mutation() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m);
        let good = evaluated(&s, &m, "e0").bundle.unwrap();
        let mut wrong = good.evaluated_state.clone();
        wrong.position += 1;
        refused_unchanged(&mut s, &m, &wrong, &good, "BUNDLE_INVALID");
        let mut w = wire(version);
        w["entities"][0]["fields"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"extra","type":{"t":"int"},"loc":loc()}));
        for action in w["actions"].as_array_mut().unwrap() {
            for effect in action["effects"].as_array_mut().unwrap() {
                if effect["create"] == "E" {
                    effect["fields"]["extra"] =
                        json!({"op":"lit","type":{"t":"int"},"value":0,"loc":loc()});
                }
            }
        }
        let different_schema = behavior_core::admit(&w.to_string()).unwrap();
        refused_unchanged(
            &mut s,
            &different_schema,
            &good.evaluated_state,
            &good,
            "SCHEMA_MISMATCH",
        );
        let mut w = wire(version);
        w["constraints"][1]["body"]["op"] = json!("ge");
        let different_behavior = behavior_core::admit(&w.to_string()).unwrap();
        assert_eq!(
            behavior_core::schema(&m).hash,
            behavior_core::schema(&different_behavior).hash
        );
        refused_unchanged(
            &mut s,
            &different_behavior,
            &good.evaluated_state,
            &good,
            "BUNDLE_INVALID",
        );
        s.commit(&m, &good.evaluated_state, &good).unwrap();
    }
}
#[test]
fn exact_history_substitution_cannot_be_hidden_by_rehashing_current_candidate() {
    let m = module("0.8");
    let mut s = seeded(&m);
    let first = evaluated(&s, &m, "e0").bundle.unwrap();
    s.commit(&m, &first.evaluated_state, &first).unwrap();
    let good = evaluated(&s, &m, "e0").bundle.unwrap();
    let mut forged = good.clone();
    assert_eq!(forged.evaluated_history.as_ref().unwrap().position, 1);
    forged.evaluated_history.as_mut().unwrap().record = format!("sha256:{}", "f".repeat(64));
    reseal_hash(&mut forged);
    refused_unchanged(
        &mut s,
        &m,
        &forged.evaluated_state,
        &forged,
        "HISTORY_CONFLICT",
    );
    s.commit(&m, &good.evaluated_state, &good).unwrap();
}
#[test]
fn disjoint_intervening_commit_still_refuses_stale_whole_state_candidate() {
    for version in ["0.7", "0.8"] {
        let m = module(version);
        let mut s = seeded(&m);
        let pending = evaluated(&s, &m, "e0").bundle.unwrap();
        let concurrent = evaluated(&s, &m, "e1").bundle.unwrap();
        s.commit(&m, &concurrent.evaluated_state, &concurrent)
            .unwrap();
        assert_eq!(
            s.load(&key("e0"), &s.current().unwrap()).unwrap().value["x"],
            1
        );
        refused_unchanged(
            &mut s,
            &m,
            &pending.evaluated_state,
            &pending,
            "STATE_CONFLICT",
        );
        assert!(independently_valid(&s));
    }
}
