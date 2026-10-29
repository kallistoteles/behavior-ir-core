#![allow(clippy::unwrap_used)]
use serde_json::json;
use transition_study032::{
    fixtures::{Config, module_wire},
    reference::Reference,
    subject::recognize,
    types::*,
};

#[test]
fn admission_is_not_complete_template_recognition() {
    let config = Config::default();
    let wire = module_wire(&config).unwrap();
    let good = behavior_core::admit(&wire.to_string()).unwrap();
    let subject = recognize(&good, &config).unwrap();
    assert_eq!(subject.actions.len(), good.actions().len());
    let mut extra = wire.clone();
    let mut a = extra["actions"][0].clone();
    a["name"] = json!("unaccounted_action");
    extra["actions"].as_array_mut().unwrap().push(a);
    let admitted = behavior_core::admit(&extra.to_string()).unwrap();
    assert!(recognize(&admitted, &config).is_err());
    let mut weaker = wire;
    weaker["constraints"] = json!([]);
    assert!(recognize(&behavior_core::admit(&weaker.to_string()).unwrap(), &config).is_err());
}

#[test]
fn count_boundary_has_an_independent_oracle() {
    let mut r = Reference::new(
        Config {
            limit: 1000,
            ..Config::default()
        },
        999,
    )
    .unwrap();
    assert_eq!(
        r.execute(Operation::Create {
            ids: vec!["number1000".into()],
            owner: None
        })
        .unwrap()
        .outcome,
        SemanticOutcome::Allow
    );
    let head = r.snapshot().unwrap().history;
    assert_eq!(
        r.execute(Operation::Create {
            ids: vec!["number1001".into()],
            owner: None
        })
        .unwrap()
        .outcome,
        SemanticOutcome::Refused
    );
    assert_eq!(r.snapshot().unwrap().history, head);
}

#[test]
fn reference_integrity_is_not_plain_identifier_equality() {
    let mut r = Reference::new(
        Config {
            references: true,
            ..Config::default()
        },
        1,
    )
    .unwrap();
    let parent = r
        .execute(Operation::Remove {
            key: Key::new("Parent", "p0"),
        })
        .unwrap();
    assert_ne!(parent.outcome, SemanticOutcome::Allow);
    r.execute(Operation::Remove {
        key: Key::new("E", "e0"),
    })
    .unwrap();
    assert_eq!(
        r.execute(Operation::Remove {
            key: Key::new("Parent", "p0")
        })
        .unwrap()
        .outcome,
        SemanticOutcome::Allow
    );
}

#[test]
fn all_admitted_mutations_are_inventory_bound_and_action_order_is_incidental() {
    let config = Config::default();
    let wire = module_wire(&config).unwrap();
    let mut reordered = wire.clone();
    reordered["actions"].as_array_mut().unwrap().reverse();
    assert!(
        recognize(
            &behavior_core::admit(&reordered.to_string()).unwrap(),
            &config
        )
        .is_ok()
    );
    let mut extra_effect = wire.clone();
    let set = extra_effect["actions"]
        .as_array_mut()
        .unwrap()
        .iter_mut()
        .find(|a| a["name"] == "set")
        .unwrap();
    set["effects"].as_array_mut().unwrap().push(json!({"target":{"param":"e0","field":"padding"},"value":{"op":"lit","type":{"t":"string"},"value":"unaccounted","loc":{"file":"mutation","line":1}},"loc":{"file":"mutation","line":1}}));
    let mut wrong_binding = wire.clone();
    let set = wrong_binding["actions"]
        .as_array_mut()
        .unwrap()
        .iter_mut()
        .find(|a| a["name"] == "set")
        .unwrap();
    set["params"][1]["name"] = json!("alias");
    set["effects"][0]["target"]["param"] = json!("alias");
    let mut weakened = wire.clone();
    let old = weakened["invariants"][0]["body"].clone();
    weakened["invariants"][0]["body"] = json!({"op":"or","args":[old,{"op":"lit","type":{"t":"bool"},"value":true,"loc":{"file":"mutation","line":1}}],"loc":{"file":"mutation","line":1}});
    let mut schema = wire.clone();
    schema["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"extra","type":{"t":"int"},"loc":{"file":"mutation","line":1}}));
    let create = schema["actions"]
        .as_array_mut()
        .unwrap()
        .iter_mut()
        .find(|a| a["name"] == "create")
        .unwrap();
    create["effects"][0]["fields"]["extra"] =
        json!({"op":"lit","type":{"t":"int"},"value":0,"loc":{"file":"mutation","line":1}});
    for (name, changed) in [
        ("effect", extra_effect),
        ("binding", wrong_binding),
        ("Boolean placement", weakened),
        ("schema", schema),
    ] {
        let admitted = behavior_core::admit(&changed.to_string()).unwrap();
        assert!(
            recognize(&admitted, &config).is_err(),
            "accepted {name} change"
        );
    }
}

#[test]
fn checked_overflow_and_lazy_skipping_have_distinct_reference_results() {
    let mut r = Reference::new(Config::default(), 1).unwrap();
    r.execute(Operation::Set {
        ids: vec!["e0".into()],
        value: i64::MAX,
    })
    .unwrap();
    let overflow = r
        .execute(Operation::Add {
            id: "e0".into(),
            delta: 1,
        })
        .unwrap();
    assert_eq!(overflow.outcome, SemanticOutcome::EvaluationError);
    assert_eq!(overflow.after, overflow.before);
    let skipped = r
        .execute(Operation::Lazy {
            id: "e0".into(),
            delta: 1,
            enabled: false,
        })
        .unwrap();
    assert_eq!(skipped.outcome, SemanticOutcome::Allow);
    let evaluated = r
        .execute(Operation::Lazy {
            id: "e0".into(),
            delta: 1,
            enabled: true,
        })
        .unwrap();
    assert_eq!(evaluated.outcome, SemanticOutcome::EvaluationError);
    assert_eq!(evaluated.after, evaluated.before);
    assert!(
        !evaluated.core_record.as_ref().unwrap()["reasons"]
            .as_array()
            .unwrap()
            .is_empty()
    );
}
