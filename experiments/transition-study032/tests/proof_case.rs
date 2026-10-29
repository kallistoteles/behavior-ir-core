#![allow(clippy::unwrap_used)]
use transition_study032::{
    fixtures::Config,
    prover::{Case, prepare},
    types::*,
};
#[test]
fn proof_inputs_are_derived_from_the_exact_core_case_and_checked_at_each_step() {
    let case = Case {
        format: "core032.proof-case.v1".into(),
        config: Config {
            limit: 1,
            commands: 2,
            ..Config::default()
        },
        initial_population: 0,
        operations: vec![
            Operation::Create {
                ids: vec!["e0".into()],
                owner: None,
            },
            Operation::Emit,
            Operation::Remove {
                key: Key::new("E", "e0"),
            },
            Operation::Create {
                ids: vec!["e0".into()],
                owner: None,
            },
        ],
    };
    let p = prepare(&case).unwrap();
    assert_eq!(p.final_state.attempts, 4);
    assert_eq!(p.final_state.commits, 3);
    assert_eq!(p.final_state.command_occurrences, 6);
    assert_eq!(p.final_state.last_outcome, 2);
    assert!(p.shape.subject.iter().any(|b| *b != 7));
    let mut wrong = case.clone();
    wrong.config.references = true;
    assert!(prepare(&wrong).is_err());
    let mut wrong = case.clone();
    wrong.operations.push(Operation::Add {
        id: "e0".into(),
        delta: 1,
    });
    assert!(prepare(&wrong).is_err());
    let mut wrong = case;
    wrong.operations[0] = Operation::Create {
        ids: vec!["outside-catalog".into()],
        owner: None,
    };
    assert!(prepare(&wrong).is_err());
}
#[test]
fn every_bounded_outcome_is_compared_to_actual_core_including_first_failure() {
    for operation in [
        Operation::Set {
            ids: vec!["e0".into()],
            value: 0,
        },
        Operation::Set {
            ids: vec!["e0".into()],
            value: i64::MIN,
        },
        Operation::Set {
            ids: vec!["e0".into()],
            value: i64::MAX,
        },
        Operation::Create {
            ids: vec!["e0".into()],
            owner: None,
        },
        Operation::Create {
            ids: vec!["e1".into()],
            owner: None,
        },
        Operation::Remove {
            key: Key::new("E", "e1"),
        },
        Operation::Probe {
            threshold: i64::MIN,
            max_matches: 0,
        },
        Operation::Probe {
            threshold: 2,
            max_matches: 0,
        },
        Operation::Probe {
            threshold: i64::MAX,
            max_matches: -1,
        },
    ] {
        let case = Case {
            format: "core032.proof-case.v1".into(),
            config: Config {
                limit: 1,
                commands: 2,
                ..Config::default()
            },
            initial_population: 1,
            operations: vec![operation],
        };
        prepare(&case).unwrap();
    }
}
