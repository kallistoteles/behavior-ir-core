#![allow(clippy::unwrap_used)]
use transition_study032::{
    core_bridge::check_history, fixtures::Config, reference::Reference, types::*,
};
#[test]
fn each_existing_core_event_is_independently_reconstructed() {
    let config = Config {
        commands: 2,
        ..Config::default()
    };
    let mut r = Reference::new(config.clone(), 1).unwrap();
    let ops = vec![
        Operation::Emit,
        Operation::Set {
            ids: vec!["e0".into()],
            value: 2,
        },
    ];
    let proposed = ops
        .iter()
        .map(|op| r.execute(op.clone()).unwrap())
        .collect::<Vec<_>>();
    assert!(check_history(&config, 1, &ops, &proposed).is_ok());
    let mut wrong = proposed.clone();
    wrong[0].committed_record.as_mut().unwrap().previous_record = "changed".into();
    assert!(check_history(&config, 1, &ops, &wrong).is_err());
    let mut wrong = proposed.clone();
    wrong[1].commands.clear();
    assert!(check_history(&config, 1, &ops, &wrong).is_err());
    let mut wrong = proposed.clone();
    wrong[0].core_record.as_mut().unwrap()["trace"] = serde_json::json!([]);
    assert!(check_history(&config, 1, &ops, &wrong).is_err());
    let mut wrong = proposed;
    wrong.pop();
    assert!(check_history(&config, 1, &ops, &wrong).is_err());
}
