#![allow(clippy::unwrap_used)]
use transition_study032::{
    fixtures::Config, recovery::recover, reference::Reference, types::*, witness::ReplaySupport,
};
#[test]
fn cold_rebuild_requires_the_complete_authoritative_lifetime_prefix() {
    let config = Config::default();
    let mut r = Reference::new(config.clone(), 0).unwrap();
    let ops = vec![
        Operation::Create {
            ids: vec!["retired".into()],
            owner: None,
        },
        Operation::Remove {
            key: Key::new("E", "retired"),
        },
    ];
    for op in &ops {
        r.execute(op.clone()).unwrap();
    }
    let anchor = r.snapshot().unwrap();
    let support = ReplaySupport {
        config,
        initial_population: 0,
        prefix: ops,
    };
    let (_, views) = recover(Some(&support), &anchor).unwrap();
    assert!(views.matches(&anchor));
    assert!(views.used.contains(&Key::new("E", "retired")));
    assert!(matches!(
        recover(None, &anchor),
        Err(StudyError::Unavailable(_))
    ));
    let mut incomplete = support;
    incomplete.prefix.clear();
    assert!(recover(Some(&incomplete), &anchor).is_err());
    let mut wrong = anchor;
    wrong.history.position += 1;
    assert!(recover(Some(&incomplete), &wrong).is_err());
}
