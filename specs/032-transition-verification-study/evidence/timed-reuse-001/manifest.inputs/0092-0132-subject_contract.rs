#![allow(clippy::unwrap_used)]
use transition_study032::{fixtures::Config, reference::Reference, types::*};

#[test]
fn used_lifetime_and_history_are_not_just_live_content() {
    let mut r = Reference::new(Config::default(), 0).unwrap();
    r.execute(Operation::Create {
        ids: vec!["once".into()],
        owner: None,
    })
    .unwrap();
    r.execute(Operation::Remove {
        key: Key::new("E", "once"),
    })
    .unwrap();
    let before = r.snapshot().unwrap();
    assert!(before.live.is_empty());
    assert!(before.used.contains(&Key::new("E", "once")));
    let denied = r
        .execute(Operation::Create {
            ids: vec!["once".into()],
            owner: None,
        })
        .unwrap();
    assert_ne!(denied.outcome, SemanticOutcome::Allow);
    assert_eq!(r.snapshot().unwrap(), before);
    let mut fresh = Reference::new(Config::default(), 0).unwrap();
    assert_eq!(
        fresh
            .execute(Operation::Create {
                ids: vec!["once".into()],
                owner: None
            })
            .unwrap()
            .outcome,
        SemanticOutcome::Allow
    );
}

#[test]
fn exact_positive_result_is_stronger_than_positivity() {
    let mut r = Reference::new(Config::default(), 1).unwrap();
    let mut observed = r
        .execute(Operation::Set {
            ids: vec!["e0".into()],
            value: 2,
        })
        .unwrap();
    let mut wrong = observed.clone();
    let EntityValue::E { x, .. } = wrong.after.live.get_mut(&Key::new("E", "e0")).unwrap() else {
        panic!("wrong fixture")
    };
    *x = 3;
    assert!(*x > 0);
    assert!(!observed.same_claim(&wrong));
    observed.support_available = false;
    assert_eq!(observed.outcome, SemanticOutcome::Allow);
    assert!(
        observed.export().is_err(),
        "proof/execution validity does not restore missing support"
    );
}

#[test]
fn duplicate_commands_and_command_only_history_are_observable() {
    let mut r = Reference::new(
        Config {
            commands: 2,
            ..Config::default()
        },
        0,
    )
    .unwrap();
    let before = r.snapshot().unwrap();
    let out = r.execute(Operation::Emit).unwrap();
    assert_eq!(out.outcome, SemanticOutcome::Allow);
    assert_eq!(out.after.live, before.live);
    assert_eq!(out.after.history.position, before.history.position + 1);
    assert_ne!(out.after.history.record, before.history.record);
    assert_eq!(out.commands.len(), 2);
    assert_eq!(
        out.commands[0], out.commands[1],
        "identical intents remain two occurrences"
    );
}

#[test]
fn captured_context_changes_exact_query_observations() {
    let mut r = Reference::new(Config::default(), 2).unwrap();
    let a = r
        .execute(Operation::Probe {
            threshold: 0,
            max_matches: 0,
        })
        .unwrap();
    let b = r
        .execute(Operation::Probe {
            threshold: 2,
            max_matches: 0,
        })
        .unwrap();
    assert_eq!(a.outcome, SemanticOutcome::Allow);
    assert_eq!(b.outcome, SemanticOutcome::Refused);
    assert_ne!(a.core_record, b.core_record);
}
#[test]
fn serialized_lifetime_inventory_rejects_duplicate_or_unsorted_keys() {
    let r = transition_study032::reference::Reference::new(
        transition_study032::fixtures::Config::default(),
        2,
    )
    .unwrap();
    let mut value = serde_json::to_value(r.snapshot().unwrap()).unwrap();
    let first = value["used"][0].clone();
    value["used"].as_array_mut().unwrap().push(first);
    assert!(serde_json::from_value::<transition_study032::types::OperationalState>(value).is_err());
}
