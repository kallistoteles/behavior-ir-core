#![allow(clippy::unwrap_used)]
use transition_study032::{
    fixtures::Config, maintained::predict, reference::Reference, types::*, views::Views,
};
#[test]
fn maintained_rules_actually_use_exact_cached_counts_memberships_and_used_ids() {
    let config = Config {
        limit: 1,
        ..Config::default()
    };
    let mut core = Reference::new(config.clone(), 1).unwrap();
    let state = core.snapshot().unwrap();
    let mut view = Views::initialize(&state).unwrap();
    assert_eq!(
        predict(
            &config,
            &state,
            &mut view,
            &Operation::Create {
                ids: vec!["new".into()],
                owner: None
            }
        )
        .unwrap()
        .outcome,
        SemanticOutcome::Refused
    );
    assert_eq!(
        predict(
            &config,
            &state,
            &mut view,
            &Operation::Probe {
                threshold: 2,
                max_matches: 0
            }
        )
        .unwrap()
        .outcome,
        SemanticOutcome::Refused
    );
    assert_eq!(
        predict(
            &config,
            &state,
            &mut view,
            &Operation::Add {
                id: "e0".into(),
                delta: i64::MAX
            }
        )
        .unwrap()
        .outcome,
        SemanticOutcome::EvaluationError
    );
    assert_eq!(
        predict(
            &config,
            &state,
            &mut view,
            &Operation::Lazy {
                id: "e0".into(),
                delta: i64::MAX,
                enabled: false
            }
        )
        .unwrap()
        .outcome,
        SemanticOutcome::Allow
    );
    view.count = 0;
    assert!(predict(&config, &state, &mut view, &Operation::Emit).is_err());
    let observed = core
        .execute(Operation::Remove {
            key: Key::new("E", "e0"),
        })
        .unwrap();
    let mut view = Views::initialize(&observed.after).unwrap();
    assert_eq!(
        predict(
            &config,
            &observed.after,
            &mut view,
            &Operation::Create {
                ids: vec!["e0".into()],
                owner: None
            }
        )
        .unwrap()
        .outcome,
        SemanticOutcome::Refused
    );
}
