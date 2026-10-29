#![allow(clippy::unwrap_used)]
use transition_study032::{
    checker::check,
    fixtures::Config,
    reference::Reference,
    types::*,
    witness::{ReplaySupport, TransitionWitness},
};

fn case(
    config: Config,
    n: usize,
    prefix: Vec<Operation>,
    operation: Operation,
) -> (
    transition_study032::subject::Subject,
    OperationalState,
    TransitionWitness,
) {
    let mut r = Reference::new(config.clone(), n).unwrap();
    for op in &prefix {
        r.execute(op.clone()).unwrap();
    }
    let before = r.snapshot().unwrap();
    let subject = r.subject.clone();
    let proposed = r.execute(operation).unwrap();
    let witness = TransitionWitness {
        subject: subject.clone(),
        before: before.clone(),
        proposed,
        support: ReplaySupport {
            config,
            initial_population: n,
            prefix,
        },
    };
    (subject, before, witness)
}
#[test]
fn full_witness_is_independent_of_producer_approval() {
    let op = Operation::Set {
        ids: vec!["e0".into()],
        value: 2,
    };
    let (subject, before, w) = case(Config::default(), 2, vec![], op.clone());
    assert!(check(&subject, &before, &op, &w).is_ok());
    let mut bad = w.clone();
    bad.before.live.remove(&Key::new("E", "e1"));
    assert!(check(&subject, &before, &op, &bad).is_err());
    let mut bad = w.clone();
    bad.subject.actions.remove("remove");
    assert!(check(&subject, &before, &op, &bad).is_err());
    let mut bad = w.clone();
    let EntityValue::E { x, .. } = bad
        .proposed
        .after
        .live
        .get_mut(&Key::new("E", "e0"))
        .unwrap()
    else {
        panic!("fixture")
    };
    *x = 3;
    assert!(
        check(&subject, &before, &op, &bad).is_err(),
        "wrong but positive transition accepted"
    );
    let mut bad = w.clone();
    bad.proposed.after.used.clear();
    assert!(check(&subject, &before, &op, &bad).is_err());
    let mut bad = w.clone();
    bad.proposed.core_record.as_mut().unwrap()["trace"] = serde_json::json!([]);
    assert!(
        check(&subject, &before, &op, &bad).is_err(),
        "omitted normative obligations accepted"
    );
}
#[test]
fn a_valid_refusal_or_error_is_not_an_invalid_witness() {
    for op in [
        Operation::Set {
            ids: vec!["e0".into()],
            value: 0,
        },
        Operation::Add {
            id: "missing".into(),
            delta: 1,
        },
    ] {
        let (subject, before, w) = case(Config::default(), 1, vec![], op.clone());
        assert_ne!(w.proposed.outcome, SemanticOutcome::Allow);
        assert!(check(&subject, &before, &op, &w).is_ok());
    }
}
#[test]
fn exact_history_and_context_bindings_are_independently_checked() {
    let prefix = vec![
        Operation::Create {
            ids: vec!["once".into()],
            owner: None,
        },
        Operation::Remove {
            key: Key::new("E", "once"),
        },
    ];
    let op = Operation::Create {
        ids: vec!["once".into()],
        owner: None,
    };
    let (subject, before, w) = case(Config::default(), 0, prefix, op.clone());
    assert!(check(&subject, &before, &op, &w).is_ok());
    let mut bad = w;
    bad.support.prefix.clear();
    assert!(
        check(&subject, &before, &op, &bad).is_err(),
        "same live state is not the same operational state"
    );
    let op = Operation::Probe {
        threshold: 2,
        max_matches: 0,
    };
    let (subject, before, mut w) = case(Config::default(), 1, vec![], op.clone());
    w.proposed.operation = Operation::Probe {
        threshold: 0,
        max_matches: 0,
    };
    assert!(check(&subject, &before, &op, &w).is_err());
}
#[test]
fn command_occurrences_and_missing_support_do_not_disappear() {
    let op = Operation::Emit;
    let (subject, before, w) = case(
        Config {
            commands: 2,
            ..Config::default()
        },
        0,
        vec![],
        op.clone(),
    );
    let mut bad = w.clone();
    bad.proposed.commands.pop();
    assert!(check(&subject, &before, &op, &bad).is_err());
    let mut bad = w.clone();
    bad.proposed.after.history.record =
        "sha256:0000000000000000000000000000000000000000000000000000000000000000".into();
    assert!(check(&subject, &before, &op, &bad).is_err());
    let mut bad = w;
    bad.proposed.support_available = false;
    assert!(matches!(
        check(&subject, &before, &op, &bad),
        Err(StudyError::Unavailable(_))
    ));
}
