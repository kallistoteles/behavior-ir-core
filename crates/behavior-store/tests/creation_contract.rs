#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Whole-Store publication is atomic; attempted or partial products carry no authority.

mod common;
use behavior_store as store_api;
#[path = "support/creation_backend.rs"]
mod fixture;

use behavior_store::documents::{EntityKey, EvidencePolicy, Genesis, SeedEntity, StoreError};
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{Backend, BackendError, InMemoryBackend, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use fixture::{CreateFault, CreationBackend, CreationMutant, Initialization, PublishOn, ReadPoint};
use serde_json::json;

fn key(entity: &str, id: &str) -> EntityKey {
    EntityKey {
        entity: entity.into(),
        id: id.into(),
    }
}
fn v2_policy() -> EvidencePolicyV2 {
    EvidencePolicyV2::from_json(include_str!(
        "../../../tests/fixtures/governance-v2/evidence-policy-none.json"
    ))
    .unwrap()
}
fn invalid_creation(g: Genesis, expected_code: &str) {
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    let result = Store::create(b, &common::ledger(), g);
    let error = result.err().expect("invalid seed unexpectedly published");
    assert_eq!(error.code(), expected_code, "{error}");
    assert_eq!(
        observer.counters().create_calls,
        0,
        "invalid request reached durable initialization"
    );
    assert!(observer.genesis().unwrap().is_none());
}

#[test]
fn empty_and_nonempty_initial_products_roundtrip_existing_genesis_profiles() {
    let m = common::ledger();
    for seed in [vec![], common::default_seed()] {
        for trusted in [false, true] {
            let g = if trusted {
                genesis_v2_for(&m, v2_policy(), seed.clone()).unwrap()
            } else {
                genesis_for(&m, EvidencePolicy::none(), seed.clone())
            };
            let s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
            let h = s.backend().head().unwrap().unwrap();
            assert_eq!(s.genesis().unwrap(), g);
            assert_eq!(s.store_id().unwrap(), g.hash().unwrap());
            assert_eq!(h.state_ref.position, 0);
            assert_eq!(h.last_record, g.hash().unwrap());
            assert!(h.schema.is_none());
            assert!(s.backend().record(0).unwrap().is_none());
            let mut keys = s.backend().keys_at("Account", 0).unwrap();
            keys.sort();
            assert_eq!(keys.len(), seed.len());
            for k in keys {
                let v = s.backend().version_at(&k, 0).unwrap().unwrap();
                assert_eq!(s.backend().version(&k, 1).unwrap(), Some(v.clone()));
                assert_eq!(v.created_at, 0);
                assert_eq!(v.revision, 1);
                assert_eq!(
                    v.content_hash,
                    v.content(&g.entity_declarations[&k.entity]).hash().unwrap()
                );
                assert!(s.backend().used_at(&k, 0).unwrap());
                assert!(s.backend().removed_at(&k).unwrap().is_none());
            }
            let reopened = Store::open(s.into_backend()).unwrap();
            assert_eq!(reopened.current().unwrap(), h.state_ref);
            assert_eq!(reopened.genesis().unwrap(), g);
        }
    }
}

#[test]
fn original_reference_views_are_complete_and_ordinary_open_is_coherent() {
    let m = common::accounts();
    let g = genesis_for(&m, EvidencePolicy::none(), common::accounts_seed());
    let s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let mut incoming = s.backend().incoming_at(&key("Customer", "c1"), 0).unwrap();
    incoming.sort();
    assert_eq!(incoming.len(), 1);
    assert!(
        incoming
            .iter()
            .any(|e| e.entity == "Account" && e.id == "a1" && e.field == "owner")
    );
    assert!(
        !incoming.iter().any(|e| e.entity == "AuditNote"),
        "plain Id fields are not Ref obligations"
    );
    let reopened = Store::open(s.into_backend()).unwrap();
    assert_eq!(reopened.genesis().unwrap(), g);
    assert_eq!(
        reopened
            .backend()
            .incoming_at(&key("Customer", "c1"), 0)
            .unwrap()
            .len(),
        1
    );
}

#[test]
fn seed_type_grid_constraint_identity_and_unknown_entity_errors_never_publish() {
    let m = common::ledger();
    for bad in [
        json!({"id":"a1","active":"wrong type","balance":"1.00"}),
        json!({"id":"a1","active":true,"balance":"1.001"}),
        json!({"id":"a1","active":true,"balance":"-1.00"}),
        json!({"id":"a1","active":true,"balance":"1.00","extra":true}),
        json!({"active":true,"balance":"1.00"}),
    ] {
        invalid_creation(
            genesis_for(
                &m,
                EvidencePolicy::none(),
                vec![SeedEntity {
                    entity: "Account".into(),
                    value: bad,
                }],
            ),
            "GENESIS_INVALID",
        );
    }
    let duplicate = common::seed(&[("a1", true, "1.00"), ("a1", false, "2.00")]);
    invalid_creation(
        genesis_for(&m, EvidencePolicy::none(), duplicate),
        "GENESIS_INVALID",
    );
    invalid_creation(
        genesis_for(
            &m,
            EvidencePolicy::none(),
            vec![SeedEntity {
                entity: "Unknown".into(),
                value: json!({"id":"x"}),
            }],
        ),
        "GENESIS_INVALID",
    );
}

#[test]
fn mismatched_schema_and_policy_are_refused_before_backend_creation() {
    let m = common::ledger();
    let mut g = genesis_for(&m, EvidencePolicy::none(), common::default_seed());
    g.entity_declarations.clear();
    invalid_creation(g, "SCHEMA_MISMATCH");
    let mut g = genesis_for(&m, EvidencePolicy::none(), common::default_seed());
    g.format = "unsupported.genesis".into();
    invalid_creation(g, "GENESIS_INVALID");
}

#[test]
fn missing_required_seed_target_and_false_global_invariant_never_publish() {
    let m = common::accounts();
    let mut seed = common::accounts_seed();
    seed.iter_mut()
        .find(|s| s.entity == "Account")
        .unwrap()
        .value["owner"] = json!("missing");
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    let result = Store::create(b, &m, genesis_for(&m, EvidencePolicy::none(), seed));
    assert_eq!(result.err().unwrap().code(), "GENESIS_INVALID");
    assert_eq!(observer.counters().create_calls, 0);
    let mut w = common::json(&common::fixtures().join("soundness/module.json"));
    let l = json!({"file":"creation.beh","line":1});
    w["invariants"] = json!([{"name":"always_false","loc":l,"body":{"op":"lit","type":{"t":"bool"},"value":false,"loc":l}}]);
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    let result = Store::create(b, &m, genesis_for(&m, EvidencePolicy::none(), vec![]));
    assert_eq!(result.err().unwrap().code(), "GENESIS_INVALID");
    assert_eq!(observer.counters().create_calls, 0);
}

#[test]
fn out_of_range_integer_seed_is_refused_before_initialization() {
    let m = behavior_core::admit(include_str!(
        "../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap();
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    let g = genesis_for(
        &m,
        EvidencePolicy::none(),
        vec![SeedEntity {
            entity: "E".into(),
            value: json!({"id":"e0","x":u64::MAX,"y":2}),
        }],
    );
    let error = Store::create(b, &m, g)
        .err()
        .expect("integer outside declared i64 domain was accepted");
    assert_eq!(error.code(), "GENESIS_INVALID");
    assert_eq!(observer.counters().create_calls, 0);
    assert!(observer.genesis().unwrap().is_none());
}

#[test]
fn legacy_raw_decimal_seed_normalizes_without_rewriting_genesis() {
    let m = common::ledger();
    let g = genesis_for(
        &m,
        EvidencePolicy::none(),
        common::seed(&[("a1", true, "1.0")]),
    );
    let s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    assert_eq!(
        s.backend()
            .version(&key("Account", "a1"), 1)
            .unwrap()
            .unwrap()
            .value["balance"],
        json!("1.00")
    );
    let reopened = Store::open(s.into_backend()).unwrap();
    assert_eq!(reopened.genesis().unwrap(), g);
    assert_eq!(reopened.store_id().unwrap(), g.hash().unwrap());
}

#[test]
fn noncanonical_v2_seed_is_refused_before_publication_instead_of_quiet_normalization() {
    let m = common::ledger();
    let mut g = genesis_v2_for(&m, v2_policy(), common::seed(&[("a1", true, "1.00")])).unwrap();
    g.seed[0].value["balance"] = json!("1.0");
    assert!(
        g.hash().is_ok(),
        "this adversarial scalar shape reaches typed create validation"
    );
    invalid_creation(g, "GENESIS_INVALID");
}

#[test]
fn successful_backend_acknowledgment_cannot_authorize_unpublished_or_partial_store() {
    let m = common::ledger();
    for mutant in [
        CreationMutant::NoPublication,
        CreationMutant::GenesisOnly,
        CreationMutant::MissingHead,
        CreationMutant::MissingSeed,
        CreationMutant::CorruptContent,
    ] {
        let b = CreationBackend::new(InMemoryBackend::new());
        let observer = b.clone();
        observer.set_mutant(mutant);
        let result = Store::create(
            b,
            &m,
            genesis_for(&m, EvidencePolicy::none(), common::default_seed()),
        );
        assert!(
            result.is_err(),
            "{mutant:?}: backend success bypassed complete-publication checks"
        );
        assert_eq!(
            result.err().unwrap().code(),
            "STORE_INCOMPLETE",
            "{mutant:?}"
        );
        assert!(
            observer.counters().mutant_hits > 0,
            "{mutant:?}: dormant fixture"
        );
    }
}

#[test]
fn ordinary_open_rejects_partial_original_material_before_returning_store() {
    for mutant in [
        CreationMutant::MissingHead,
        CreationMutant::MissingSeed,
        CreationMutant::CorruptContent,
    ] {
        let s = common::store();
        let b = CreationBackend::new(s.into_backend());
        let observer = b.clone();
        observer.set_mutant(mutant);
        let result = Store::open(b);
        assert!(
            result.is_err(),
            "{mutant:?}: ordinary open accepted partial original material"
        );
        assert_eq!(
            result.err().unwrap().code(),
            "STORE_INCOMPLETE",
            "{mutant:?}"
        );
        assert!(observer.counters().mutant_hits > 0);
    }
}

#[test]
fn ordinary_open_read_failures_remain_operational() {
    for point in [
        ReadPoint::Genesis,
        ReadPoint::Head,
        ReadPoint::VersionAt,
        ReadPoint::Version,
        ReadPoint::Removed,
        ReadPoint::Keys,
        ReadPoint::Used,
    ] {
        let b = CreationBackend::new(common::store().into_backend());
        b.arm_read(
            point,
            BackendError(format!("019 open unavailable {point:?}")),
        );
        let error = Store::open(b)
            .err()
            .expect("required failed read was omitted");
        assert_eq!(
            error,
            StoreError::Backend(format!("019 open unavailable {point:?}"))
        );
    }
}

#[test]
fn affirmative_absent_open_retains_existing_error_contract() {
    let error = Store::open(InMemoryBackend::new()).err().unwrap();
    assert_eq!(error.code(), "BACKEND_ERROR");
    assert!(error.to_string().contains("has not been created"));
}

#[test]
fn original_prepublication_error_survives_unavailable_secondary_classification() {
    let m = common::ledger();
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    observer.arm_create(CreateFault::BeforePublish);
    observer.fail_read_on(
        ReadPoint::Genesis,
        2,
        BackendError("secondary classification unavailable".into()),
    );
    let error = Store::create(
        b,
        &m,
        genesis_for(&m, EvidencePolicy::none(), common::default_seed()),
    )
    .err()
    .unwrap();
    assert_eq!(
        error,
        StoreError::Backend("019 fixture before publication".into())
    );
    assert_eq!(observer.counters().create_calls, 1);
    assert_eq!(observer.counters().inner_create_calls, 0);
    assert_eq!(
        observer
            .counters()
            .reads
            .get(&ReadPoint::Genesis)
            .copied()
            .unwrap_or(0),
        2,
        "classification was not bounded to the single required follow-up observation"
    );
    observer.clear_reads();
    assert!(observer.genesis().unwrap().is_none());
}

#[test]
fn lost_acknowledgment_is_operational_then_explicit_retry_recovers_same_creation() {
    let m = common::ledger();
    let g = genesis_for(&m, EvidencePolicy::none(), common::default_seed());
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    observer.arm_create(CreateFault::AfterPublish);
    let error = Store::create(b, &m, g.clone()).err().unwrap();
    assert_eq!(
        error,
        StoreError::Backend("019 fixture after publication".into())
    );
    let complete_head = observer.head().unwrap().unwrap();
    assert_eq!(observer.genesis().unwrap(), Some(g.clone()));
    let result = Store::create(observer.clone(), &m, g.clone());
    assert!(
        result.is_ok(),
        "explicit equivalent retry failed after acknowledged loss: {:?}",
        result.err()
    );
    let recovered = result.unwrap();
    assert_eq!(recovered.store_id().unwrap(), g.hash().unwrap());
    assert_eq!(recovered.backend().head().unwrap().unwrap(), complete_head);
    assert_eq!(
        observer.counters().create_calls,
        1,
        "explicit retry attempted a second initialization"
    );
    assert_eq!(observer.counters().inner_create_calls, 1);
}

#[test]
fn foreign_publication_between_preflight_and_create_is_classified_from_complete_evidence() {
    let m = common::ledger();
    let mine = genesis_for(&m, EvidencePolicy::none(), common::default_seed());
    let winner = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            EvidencePolicy::none(),
            common::seed(&[("a1", true, "200.00")]),
        ),
    )
    .unwrap();
    let product = Initialization::capture(winner.backend()).unwrap();
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    observer.schedule_publish(PublishOn::BeforeCreate, product.clone());
    let error = Store::create(b, &m, mine).err().unwrap();
    assert_eq!(error.code(), "STORE_CREATION_CONFLICT", "{error}");
    assert_eq!(observer.genesis().unwrap(), Some(product.genesis));
    assert_eq!(observer.head().unwrap(), Some(product.head));
    assert_eq!(observer.counters().schedules_landed, 1);
    assert_eq!(observer.counters().create_calls, 1);
}

#[test]
fn existing_foreign_creation_has_stable_conflict_and_is_never_overwritten() {
    let m = common::ledger();
    let original = genesis_for(&m, EvidencePolicy::none(), common::default_seed());
    let mut different = original.clone();
    different.seed.reverse();
    assert_ne!(
        original.hash().unwrap(),
        different.hash().unwrap(),
        "legacy seed sequence is identity-significant"
    );
    let s = Store::create(InMemoryBackend::new(), &m, original.clone()).unwrap();
    let head = s.backend().head().unwrap().unwrap();
    let b = CreationBackend::new(s.into_backend());
    let observer = b.clone();
    let error = Store::create(b, &m, different).err().unwrap();
    assert_eq!(error.code(), "STORE_CREATION_CONFLICT");
    assert_eq!(observer.genesis().unwrap(), Some(original));
    assert_eq!(observer.head().unwrap(), Some(head));
    assert_eq!(observer.counters().create_calls, 0);
}

#[test]
fn equivalent_or_incomplete_posterror_evidence_does_not_erase_primary_failure() {
    let m = common::ledger();
    for mutant in [
        CreationMutant::None,
        CreationMutant::MissingHead,
        CreationMutant::MissingSeed,
        CreationMutant::CorruptContent,
    ] {
        let b = CreationBackend::new(InMemoryBackend::new());
        let observer = b.clone();
        observer.set_mutant(mutant);
        observer.arm_create(CreateFault::AfterPublish);
        let error = Store::create(
            b,
            &m,
            genesis_for(&m, EvidencePolicy::none(), common::default_seed()),
        )
        .err()
        .unwrap();
        assert_eq!(
            error,
            StoreError::Backend("019 fixture after publication".into()),
            "{mutant:?}"
        );
        assert_eq!(observer.counters().create_calls, 1);
    }
}

#[test]
fn absent_genesis_observation_can_straddle_equivalent_publication_without_false_corruption() {
    let m = common::ledger();
    let original = common::store();
    let product = Initialization::capture(original.backend()).unwrap();
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    observer.schedule_publish(PublishOn::AfterAbsentGenesis, product.clone());
    let result = Store::create(b, &m, product.genesis.clone());
    assert!(
        result.is_ok(),
        "legal publication straddling absence was not recovered: {:?}",
        result.err()
    );
    let recovered = result.unwrap();
    assert_eq!(recovered.backend().head().unwrap(), Some(product.head));
    assert_eq!(observer.counters().schedules_landed, 1);
}

#[test]
fn foreign_classification_read_failures_preserve_the_exact_primary_error() {
    let m = common::ledger();
    let mine = genesis_for(&m, EvidencePolicy::none(), common::default_seed());
    let winner = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_for(
            &m,
            EvidencePolicy::none(),
            common::seed(&[("winner", true, "2.00")]),
        ),
    )
    .unwrap();
    let product = Initialization::capture(winner.backend()).unwrap();
    for point in [
        ReadPoint::Genesis,
        ReadPoint::Head,
        ReadPoint::VersionAt,
        ReadPoint::Version,
        ReadPoint::Removed,
        ReadPoint::Keys,
        ReadPoint::Used,
    ] {
        let b = CreationBackend::new(InMemoryBackend::new());
        let observer = b.clone();
        observer.schedule_publish(PublishOn::BeforeCreate, product.clone());
        observer.arm_create(CreateFault::BeforePublish);
        observer.fail_read_on(
            point,
            if point == ReadPoint::Genesis { 2 } else { 1 },
            BackendError(format!("secondary {point:?} unavailable")),
        );
        let error = Store::create(b, &m, mine.clone()).err().unwrap();
        assert_eq!(
            error,
            StoreError::Backend("019 fixture before publication".into()),
            "secondary {point:?} erased primary error or invented conflict"
        );
        observer.clear_reads();
        assert_eq!(observer.genesis().unwrap(), Some(product.genesis.clone()));
        assert_eq!(observer.head().unwrap(), Some(product.head.clone()));
        assert_eq!(observer.counters().create_calls, 1);
        assert_eq!(observer.counters().schedules_landed, 1);
    }
}

#[test]
fn acknowledged_creation_then_required_read_failure_never_reports_rollback_or_success() {
    let m = common::accounts();
    let g = genesis_for(&m, EvidencePolicy::none(), common::accounts_seed());
    for point in [
        ReadPoint::Genesis,
        ReadPoint::Head,
        ReadPoint::VersionAt,
        ReadPoint::Version,
        ReadPoint::Removed,
        ReadPoint::Incoming,
        ReadPoint::Keys,
        ReadPoint::Used,
    ] {
        let b = CreationBackend::new(InMemoryBackend::new());
        let observer = b.clone();
        let expected = format!("published verification {point:?} unavailable");
        observer.fail_read_on(
            point,
            if point == ReadPoint::Genesis { 2 } else { 1 },
            BackendError(expected.clone()),
        );
        let result = Store::create(b, &m, g.clone());
        assert!(
            result.is_err(),
            "required published {point:?} evidence was unavailable but success returned"
        );
        assert_eq!(result.err().unwrap(), StoreError::Backend(expected));
        observer.clear_reads();
        assert_eq!(
            observer.genesis().unwrap(),
            Some(g.clone()),
            "failed verification erased published Store"
        );
        assert_eq!(observer.head().unwrap().unwrap().state_ref.position, 0);
        assert_eq!(observer.counters().inner_create_calls, 1);
    }
}

#[test]
fn initial_reference_corruption_is_checked_even_when_ordinary_open_can_only_be_structural() {
    let m = common::accounts();
    let g = genesis_for(&m, EvidencePolicy::none(), common::accounts_seed());
    let b = CreationBackend::new(InMemoryBackend::new());
    let observer = b.clone();
    observer.set_mutant(CreationMutant::MissingRefs);
    let error = Store::create(b, &m, g)
        .err()
        .expect("creation accepted missing required original Ref edges");
    assert_eq!(error.code(), "STORE_INCOMPLETE");
    assert!(observer.counters().mutant_hits > 0);
}
