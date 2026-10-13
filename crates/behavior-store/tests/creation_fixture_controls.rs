#![allow(clippy::unwrap_used, clippy::expect_used)]
//! T006–T008: prove creation fixture activation separately from Core correctness.
mod common;
use behavior_store as store_api;
#[path = "support/creation_backend.rs"]
mod fixture;

use behavior_store::conformance::Landing;
use behavior_store::documents::{EntityKey, EvidencePolicy, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, BackendError, InMemoryBackend, Store};
use fixture::{CreateFault, CreationBackend, CreationMutant, Initialization, PublishOn, ReadPoint};
use serde_json::json;

fn product() -> Initialization {
    Initialization::capture(common::store().backend()).unwrap()
}
fn key() -> EntityKey {
    EntityKey {
        entity: "Account".into(),
        id: "a1".into(),
    }
}

#[test]
fn legal_fixture_control_roundtrips_core_derived_product() {
    let p = product();
    let mut b = CreationBackend::new(InMemoryBackend::new());
    p.publish(&mut b).unwrap();
    assert_eq!(b.genesis().unwrap(), Some(p.genesis));
    assert_eq!(b.head().unwrap(), Some(p.head));
    assert_eq!(
        b.version_at(&key(), 0).unwrap(),
        p.seed.iter().find(|v| v.key() == key()).cloned()
    );
}

#[test]
fn handles_share_target_while_reference_backend_copies_do_not() {
    let p = product();
    let mut original = InMemoryBackend::new();
    let independent = original.clone();
    p.publish(&mut original).unwrap();
    assert!(independent.genesis().unwrap().is_none());
    let mut a = CreationBackend::new(InMemoryBackend::new());
    let b = a.clone();
    p.publish(&mut a).unwrap();
    assert_eq!(b.genesis().unwrap(), a.genesis().unwrap());
    assert_eq!(b.head().unwrap(), a.head().unwrap());
}

#[test]
fn creation_counters_observe_real_delegation() {
    let p = product();
    let mut b = CreationBackend::new(InMemoryBackend::new());
    p.publish(&mut b).unwrap();
    b.genesis().unwrap();
    let c = b.counters();
    assert_eq!(c.create_calls, 1);
    assert_eq!(c.inner_create_calls, 1);
    assert_eq!(c.reads.get(&ReadPoint::Genesis), Some(&1));
}

#[test]
fn armed_prepublication_failure_is_consumed_and_keeps_target_absent() {
    let p = product();
    let mut b = CreationBackend::new(InMemoryBackend::new());
    b.arm_create(CreateFault::BeforePublish);
    assert_eq!(
        p.publish(&mut b).unwrap_err(),
        BackendError("019 fixture before publication".into())
    );
    assert!(b.genesis().unwrap().is_none());
    assert!(b.head().unwrap().is_none());
    assert_eq!(b.counters().inner_create_calls, 0);
    p.publish(&mut b).unwrap();
    assert_eq!(b.counters().create_calls, 2);
    assert_eq!(b.counters().inner_create_calls, 1);
}

#[test]
fn lost_acknowledgment_retains_complete_same_target_after_by_value_error() {
    let p = product();
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    b.arm_create(CreateFault::AfterPublish);
    let result = Store::create(b, &common::ledger(), p.genesis.clone());
    assert!(result.is_err(), "after-publication instrument was dormant");
    assert_eq!(result.err().unwrap().code(), "BACKEND_ERROR");
    assert_eq!(observer.genesis().unwrap(), Some(p.genesis));
    assert_eq!(observer.head().unwrap(), Some(p.head));
    assert_eq!(observer.counters().inner_create_calls, 1);
    assert_eq!(observer.counters().faults_hit, 1);
}

#[test]
fn before_create_schedule_publishes_complete_competing_product_without_recursive_borrow() {
    let mine = product();
    // Derive the competing legal product with Core, rather than repairing hashes by hand.
    let m = common::ledger();
    let s = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            EvidencePolicy::none(),
            common::seed(&[("a1", true, "200.00")]),
        ),
    )
    .unwrap();
    let winner = Initialization::capture(s.backend()).unwrap();
    let mut b = CreationBackend::new(InMemoryBackend::new());
    b.schedule_publish(PublishOn::BeforeCreate, winner.clone());
    assert!(
        mine.publish(&mut b).is_err(),
        "same-target publisher was dormant"
    );
    assert_eq!(b.genesis().unwrap(), Some(winner.genesis));
    assert_eq!(b.head().unwrap(), Some(winner.head));
    assert_eq!(b.counters().schedules_landed, 1);
}

#[test]
fn absent_genesis_read_can_straddle_publication_once() {
    let p = product();
    let b = CreationBackend::new(InMemoryBackend::new());
    b.schedule_publish(PublishOn::AfterAbsentGenesis, p.clone());
    assert!(
        b.genesis().unwrap().is_none(),
        "the first read captured absence"
    );
    assert_eq!(b.genesis().unwrap(), Some(p.genesis));
    assert_eq!(b.counters().schedules_landed, 1);
}

#[test]
fn captured_head_can_straddle_legal_commit_without_recursive_borrow() {
    let mut source = common::store();
    let p = Initialization::capture(source.backend()).unwrap();
    let bundle = common::unary(&source, "touch", "a1").bundle.unwrap();
    common::commit(&mut source, &bundle);
    let landing = Landing::of(
        p.genesis.hash().unwrap(),
        source.backend().record(1).unwrap().unwrap(),
        source.backend().head().unwrap().unwrap(),
    );
    let mut b = CreationBackend::new(InMemoryBackend::new());
    p.publish(&mut b).unwrap();
    b.schedule_commit(PublishOn::AfterHead, landing);
    assert_eq!(b.head().unwrap().unwrap().state_ref.position, 0);
    assert_eq!(b.head().unwrap().unwrap().state_ref.position, 1);
    assert_eq!(b.counters().schedules_landed, 1);
}

#[test]
fn read_faults_propagate_exact_error_on_each_boundary() {
    let mut b = CreationBackend::new(InMemoryBackend::new());
    product().publish(&mut b).unwrap();
    for point in [
        ReadPoint::Genesis,
        ReadPoint::Head,
        ReadPoint::VersionAt,
        ReadPoint::Version,
        ReadPoint::Record,
        ReadPoint::Removed,
        ReadPoint::Incoming,
        ReadPoint::Keys,
        ReadPoint::Used,
        ReadPoint::FieldIndex,
    ] {
        let e = BackendError(format!("019 exact {point:?}"));
        b.arm_read(point, e.clone());
        let got = match point {
            ReadPoint::Genesis => b.genesis().map(|_| ()),
            ReadPoint::Head => b.head().map(|_| ()),
            ReadPoint::VersionAt => b.version_at(&key(), 0).map(|_| ()),
            ReadPoint::Version => b.version(&key(), 1).map(|_| ()),
            ReadPoint::Record => b.record(1).map(|_| ()),
            ReadPoint::Removed => b.removed_at(&key()).map(|_| ()),
            ReadPoint::Incoming => b.incoming_at(&key(), 0).map(|_| ()),
            ReadPoint::Keys => b.keys_at("Account", 0).map(|_| ()),
            ReadPoint::Used => b.used_at(&key(), 0).map(|_| ()),
            ReadPoint::FieldIndex => b
                .keys_by_field_at("Account", "active", &json!(true), 0)
                .map(|_| ()),
        };
        assert_eq!(
            got.unwrap_err(),
            e,
            "read-fault instrument dormant at {point:?}"
        );
        b.clear_reads();
    }
}

#[test]
fn nth_read_fault_is_one_shot_and_does_not_disable_legal_reads() {
    let b = CreationBackend::new(InMemoryBackend::new());
    b.fail_read_on(
        ReadPoint::Genesis,
        2,
        BackendError("second observation unavailable".into()),
    );
    assert!(b.genesis().unwrap().is_none());
    assert_eq!(
        b.genesis().unwrap_err(),
        BackendError("second observation unavailable".into())
    );
    assert!(b.genesis().unwrap().is_none());
    assert_eq!(b.counters().faults_hit, 1);
}

#[test]
fn incomplete_publication_mutants_are_activated_and_reversible_views() {
    for mutant in [
        CreationMutant::NoPublication,
        CreationMutant::GenesisOnly,
        CreationMutant::MissingHead,
        CreationMutant::MissingSeed,
        CreationMutant::CorruptContent,
    ] {
        let p = product();
        let mut b = CreationBackend::new(InMemoryBackend::new());
        b.set_mutant(mutant);
        p.publish(&mut b).unwrap();
        match mutant {
            CreationMutant::NoPublication => assert!(b.genesis().unwrap().is_none()),
            CreationMutant::GenesisOnly => {
                assert!(b.genesis().unwrap().is_some());
                assert!(b.head().unwrap().is_none());
            }
            CreationMutant::MissingHead => assert!(b.head().unwrap().is_none()),
            CreationMutant::MissingSeed => {
                assert!(b.version_at(&key(), 0).unwrap().is_none());
                assert!(b.keys_at("Account", 0).unwrap().is_empty());
            }
            CreationMutant::CorruptContent => assert_ne!(
                b.version_at(&key(), 0).unwrap().unwrap().content_hash,
                p.seed
                    .iter()
                    .find(|v| v.key() == key())
                    .unwrap()
                    .content_hash
            ),
            _ => unreachable!(),
        }
        assert!(
            b.counters().mutant_hits > 0,
            "{mutant:?} instrument was dormant"
        );
    }
}

#[test]
fn missing_reference_index_mutant_has_real_nonempty_positive_control() {
    let m = behavior_core::admit(&common::read(
        &common::fixtures().join("wire/valid/accounts.json"),
    ))
    .unwrap();
    let seed = vec![
        SeedEntity {
            entity: "Customer".into(),
            value: json!({"id":"c1","name":"c1"}),
        },
        SeedEntity {
            entity: "Account".into(),
            value: json!({"id":"a1","owner":"c1","balance":"0.00"}),
        },
    ];
    let source = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(&m, EvidencePolicy::none(), seed),
    )
    .unwrap();
    let p = Initialization::capture(source.backend()).unwrap();
    assert!(!p.refs.is_empty());
    let target = EntityKey {
        entity: "Customer".into(),
        id: "c1".into(),
    };
    let mut b = CreationBackend::new(InMemoryBackend::new());
    p.publish(&mut b).unwrap();
    assert!(!b.incoming_at(&target, 0).unwrap().is_empty());
    b.set_mutant(CreationMutant::MissingRefs);
    assert!(b.incoming_at(&target, 0).unwrap().is_empty());
    assert!(b.counters().mutant_hits > 0);
    b.set_mutant(CreationMutant::None);
    assert!(!b.incoming_at(&target, 0).unwrap().is_empty());
}

#[test]
fn corruption_overrides_and_order_controls_change_only_observed_views() {
    let p = product();
    let mut b = CreationBackend::new(InMemoryBackend::new());
    p.publish(&mut b).unwrap();
    let original = b.head().unwrap().unwrap();
    let mut bad = original.clone();
    bad.last_record = "sha256:invalid".into();
    b.set_head_override(Some(bad.clone()));
    assert_eq!(b.head().unwrap(), Some(bad));
    b.set_head_override(None);
    assert_eq!(b.head().unwrap(), Some(original));
    let mut g = p.genesis.clone();
    g.format = "malformed-host-genesis".into();
    b.set_genesis_override(Some(g.clone()));
    assert_eq!(b.genesis().unwrap(), Some(g));
    b.set_genesis_override(None);
    assert_eq!(b.genesis().unwrap(), Some(p.genesis));
    let mut v = b.version_at(&key(), 0).unwrap().unwrap();
    v.content_hash = "corrupt observed hash".into();
    b.set_version_override(v.clone());
    assert_eq!(b.version_at(&key(), 0).unwrap(), Some(v));
    b.clear_version_overrides();
    assert_ne!(
        b.version_at(&key(), 0).unwrap().unwrap().content_hash,
        "corrupt observed hash"
    );
    let mut expected = b.keys_at("Account", 0).unwrap();
    assert!(expected.len() > 1);
    expected.reverse();
    b.reverse_order(true);
    assert_eq!(b.keys_at("Account", 0).unwrap(), expected);
}
