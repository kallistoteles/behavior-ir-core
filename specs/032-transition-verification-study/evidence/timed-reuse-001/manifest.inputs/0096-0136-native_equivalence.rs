#![allow(clippy::unwrap_used)]
use proptest::prelude::*;
use transition_study032::{
    checker,
    fixtures::Config,
    maintained::Maintained,
    reference::Reference,
    types::*,
    witness::{ReplaySupport, TransitionWitness},
};
proptest! {
    #![proptest_config(ProptestConfig::with_cases(24))]
    #[test]
    fn actual_core_a_and_independent_b_preserve_complete_results(
        inputs in prop::collection::vec((0u8..7,0usize..4,-3i64..6),1..10),refs in any::<bool>(),commands in 0usize..3) {
        let config=Config{limit:4,references:refs,commands,..Config::default()};
        let mut core=Reference::new(config.clone(),2).unwrap();let mut a=Maintained::new(config.clone(),2).unwrap();let mut prefix=Vec::new();
        for(tag,id,value)in inputs{
            let id=format!("e{id}");let op=match tag{0=>Operation::Create{ids:vec![id],owner:refs.then(||"p0".into())},1=>Operation::Set{ids:vec![id],value},2=>Operation::Remove{key:Key::new("E",id)},3=>Operation::Emit,4=>Operation::Probe{threshold:value,max_matches:2},5=>Operation::Add{id,delta:value},_=>Operation::Lazy{id,delta:i64::MAX,enabled:value>0}};
            let before=core.snapshot().unwrap();let actual=core.execute(op.clone()).unwrap();let maintained=a.execute(op.clone()).unwrap();prop_assert!(actual.same_claim(&maintained));
            let witness=TransitionWitness{subject:core.subject.clone(),before:before.clone(),proposed:actual.clone(),support:ReplaySupport{config:config.clone(),initial_population:2,prefix:prefix.clone()}};
            let checked=checker::check(&core.subject,&before,&op,&witness).unwrap();prop_assert!(actual.same_claim(&checked));prop_assert!(a.view().matches(&actual.after));prefix.push(op);
        }
    }
}
#[test]
fn committed_work_survives_view_loss_without_duplicate_history() {
    let mut a = Maintained::new(
        Config {
            commands: 2,
            ..Config::default()
        },
        0,
    )
    .unwrap();
    a.execute(Operation::Emit).unwrap();
    let head = a.snapshot().unwrap();
    a.lose_views();
    assert!(a.execute(Operation::Emit).is_err());
    assert_eq!(a.snapshot().unwrap(), head);
    a.rebuild().unwrap();
    assert_eq!(a.snapshot().unwrap(), head);
    a.execute(Operation::Emit).unwrap();
    assert_eq!(a.snapshot().unwrap().history.position, 2);
}
#[test]
fn aliased_state_bindings_fail_before_assignment_in_every_native_path() {
    let config = Config {
        batch: 2,
        ..Config::default()
    };
    let mut r = Reference::new(config.clone(), 2).unwrap();
    let mut a = Maintained::new(config.clone(), 2).unwrap();
    let before = r.snapshot().unwrap();
    let operation = Operation::Set {
        ids: vec!["e0".into(), "e0".into()],
        value: 3,
    };
    let actual = r.execute(operation.clone()).unwrap();
    assert_eq!(
        actual.core_record.as_ref().unwrap()["result"],
        "INVALID_BINDING"
    );
    assert_eq!(actual.before, actual.after);
    assert!(a.execute(operation.clone()).unwrap().same_claim(&actual));
    let witness = TransitionWitness {
        subject: r.subject.clone(),
        before: before.clone(),
        proposed: actual,
        support: ReplaySupport {
            config,
            initial_population: 2,
            prefix: vec![],
        },
    };
    assert!(checker::check(&r.subject, &before, &operation, &witness).is_ok());
}
