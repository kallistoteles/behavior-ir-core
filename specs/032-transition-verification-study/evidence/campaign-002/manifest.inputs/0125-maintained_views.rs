#![allow(clippy::unwrap_used)]
use transition_study032::{fixtures::Config, reference::Reference, types::*, views::Views};
#[test]
fn initialization_counts_and_complete_memberships_have_meaning() {
    let r = Reference::new(Config::default(), 2).unwrap();
    let state = r.snapshot().unwrap();
    let mut view = Views::initialize(&state).unwrap();
    assert!(view.matches(&state));
    view.count = 1;
    assert!(!view.matches(&state));
    view = Views::initialize(&state).unwrap();
    view.members.remove(&Key::new("E", "e0"));
    assert!(!view.matches(&state));
    view = Views::initialize(&state).unwrap();
    view.used.clear();
    assert!(!view.matches(&state));
    let mut stale = state.clone();
    stale.history.position += 1;
    assert!(!view.matches(&stale));
}
#[test]
fn delta_maintenance_changes_real_counts_and_context_queries() {
    let mut r = Reference::new(
        Config {
            references: true,
            ..Config::default()
        },
        1,
    )
    .unwrap();
    let before = r.snapshot().unwrap();
    let mut view = Views::initialize(&before).unwrap();
    assert_eq!(view.query(&before, 2).unwrap().len(), 1);
    let out = r
        .execute(Operation::Create {
            ids: vec!["new".into()],
            owner: Some("p0".into()),
        })
        .unwrap();
    view.advance(&out).unwrap();
    assert!(view.matches(&out.after));
    assert_eq!(view.count, 2);
    assert_eq!(view.query(&out.after, 2).unwrap().len(), 2);
    let out = r
        .execute(Operation::Set {
            ids: vec!["e0".into()],
            value: 5,
        })
        .unwrap();
    view.advance(&out).unwrap();
    assert_eq!(view.query(&out.after, 2).unwrap().len(), 1);
    let mut bad = view.clone();
    bad.incoming.clear();
    assert!(!bad.matches(&out.after));
    let out = r
        .execute(Operation::Remove {
            key: Key::new("E", "e0"),
        })
        .unwrap();
    view.advance(&out).unwrap();
    assert_eq!(view.count, 1);
}
#[test]
fn refusal_preserves_views_and_lost_views_require_authoritative_rebuild() {
    let mut r = Reference::new(
        Config {
            limit: 1,
            ..Config::default()
        },
        1,
    )
    .unwrap();
    let state = r.snapshot().unwrap();
    let mut view = Views::initialize(&state).unwrap();
    let out = r
        .execute(Operation::Create {
            ids: vec!["excess".into()],
            owner: None,
        })
        .unwrap();
    view.advance(&out).unwrap();
    assert!(view.matches(&state));
    view.valid = false;
    assert!(view.query(&state, 2).is_err());
    let rebuilt = Views::initialize(&r.snapshot().unwrap()).unwrap();
    assert!(rebuilt.matches(&state));
}
#[test]
fn actual_reuse_rejects_incomplete_or_corrupt_views_and_deltas() {
    let mut r = Reference::new(
        Config {
            references: true,
            ..Config::default()
        },
        2,
    )
    .unwrap();
    let before = r.snapshot().unwrap();
    let mut good = Views::initialize(&before).unwrap();
    good.query(&before, 2).unwrap();
    let out = r
        .execute(Operation::Set {
            ids: vec!["e0".into()],
            value: 4,
        })
        .unwrap();
    for mutation in 0..6 {
        let mut bad = good.clone();
        match mutation {
            0 => bad.count = 1,
            1 => {
                bad.members.remove(&Key::new("E", "e0"));
            }
            2 => {
                bad.members.insert(Key::new("E", "invented"));
            }
            3 => bad.incoming.clear(),
            4 => bad.queries.clear(),
            _ => bad.valid = false,
        }
        // An absent query cache is legitimate; it must be rebuilt on demand.
        if mutation == 4 {
            bad.advance(&out).unwrap();
            assert_eq!(bad.query(&out.after, 2).unwrap().len(), 1);
        } else {
            assert!(bad.advance(&out).is_err(), "corrupt view {mutation} reused");
            assert!(!bad.valid);
        }
    }
    let mut omitted = out.clone();
    omitted
        .committed_record
        .as_mut()
        .unwrap()
        .new_versions
        .clear();
    let mut bad = good.clone();
    assert!(bad.advance(&omitted).is_err());
    assert!(!bad.valid);
    let mut invented = out;
    invented.committed_record.as_mut().unwrap().created.clear();
    let mut bad = good;
    bad.anchor.position += 1;
    assert!(bad.advance(&invented).is_err());
    assert!(!bad.valid);
}
