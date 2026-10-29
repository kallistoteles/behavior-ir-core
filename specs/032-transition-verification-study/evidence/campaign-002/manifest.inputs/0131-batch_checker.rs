#![allow(clippy::unwrap_used)]
use transition_study032::{
    checker::check_history_using, fixtures::Config, reference::Reference, types::*,
};
#[test]
fn independent_history_checks_every_step_from_one_fresh_genesis() {
    let cfg = Config {
        commands: 2,
        ..Config::default()
    };
    let mut producer = Reference::new(cfg.clone(), 1).unwrap();
    let prefix = vec![Operation::Emit];
    for op in &prefix {
        producer.execute(op.clone()).unwrap();
    }
    let operations = vec![
        Operation::Set {
            ids: vec!["e0".into()],
            value: 2,
        },
        Operation::Set {
            ids: vec!["e0".into()],
            value: -1,
        },
        Operation::Emit,
    ];
    let claims = operations
        .iter()
        .map(|op| producer.execute(op.clone()).unwrap())
        .collect::<Vec<_>>();
    let mut constructions = 0;
    let checked = check_history_using(&prefix, &operations, &claims, || {
        constructions += 1;
        Reference::new(cfg.clone(), 1)
    })
    .unwrap();
    assert_eq!(constructions, 1);
    assert_eq!(checked, claims);
    let mut wrong = claims.clone();
    wrong[1].before.used.clear();
    assert!(
        check_history_using(&prefix, &operations, &wrong, || Reference::new(
            cfg.clone(),
            1
        ))
        .is_err()
    );
    let mut wrong = claims.clone();
    wrong[2].commands.clear();
    assert!(
        check_history_using(&prefix, &operations, &wrong, || Reference::new(
            cfg.clone(),
            1
        ))
        .is_err()
    );
    let mut wrong = claims;
    wrong.pop();
    assert!(
        check_history_using(&prefix, &operations, &wrong, || Reference::new(
            cfg.clone(),
            1
        ))
        .is_err()
    );
}
