#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Original creation evidence survives advancement; recovery never restores genesis.

mod common;
use behavior_store as store_api;
#[path = "support/creation_backend.rs"]
mod fixture;

use behavior_core::migration::admit_migration;
use behavior_core::semantic::module::Module;
use behavior_store::documents::{EntityKey, EvidencePolicy, Genesis, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, BackendError, InMemoryBackend, Store};
use fixture::{CreationBackend, ReadPoint};
use serde_json::json;

fn key(entity: &str, id: &str) -> EntityKey {
    EntityKey {
        entity: entity.into(),
        id: id.into(),
    }
}
fn updated() -> (Module, Genesis, Store<InMemoryBackend>) {
    let m = common::ledger();
    let g = genesis_for(&m, EvidencePolicy::none(), common::default_seed());
    let mut s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let b = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    (m, g, s)
}
fn migration_module(name: &str) -> Module {
    behavior_core::admit(&common::read(
        &common::fixtures()
            .join("migration/modules")
            .join(format!("{name}.json")),
    ))
    .unwrap()
}
fn migrated() -> (Module, Module, Genesis, Store<InMemoryBackend>) {
    let source = migration_module("cultures_v1");
    let target = migration_module("cultures_v2");
    let seed = vec![
        SeedEntity {
            entity: "Customer".into(),
            value: json!({"id":"c1","name":"N","email":"e"}),
        },
        SeedEntity {
            entity: "Culture".into(),
            value: json!({"id":"k1","medium":"MS","status":"ACTIVE","ph":1,"legacy_code":"L","price":"1.00","fee":"0.0100"}),
        },
        SeedEntity {
            entity: "Order".into(),
            value: json!({"id":"o1","customer":"c1","region":"north","qty":1}),
        },
    ];
    let g = genesis_for(&source, EvidencePolicy::none(), seed);
    let migration = admit_migration(
        &source,
        &target,
        &common::read(&common::fixtures().join("migration/valid/cultures_v1_to_v2.json")),
    )
    .unwrap();
    let mut s = Store::create(InMemoryBackend::new(), &source, g.clone()).unwrap();
    s.migrate(&migration, &source, &target, "2026-10-02T09:00:00Z", None)
        .unwrap();
    (source, target, g, s)
}

#[test]
fn exact_retry_at_genesis_recovers_without_second_backend_initialization() {
    let m = common::ledger();
    let g = genesis_for(&m, EvidencePolicy::none(), common::default_seed());
    let original = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let before = original.backend().head().unwrap().unwrap();
    let b = CreationBackend::new(original.into_backend());
    let observer = b.clone();
    let result = Store::create(b, &m, g.clone());
    assert!(
        result.is_ok(),
        "equivalent published creation was not recovered: {:?}",
        result.err()
    );
    let s = result.unwrap();
    assert_eq!(s.genesis().unwrap(), g);
    assert_eq!(s.backend().head().unwrap().unwrap(), before);
    assert_eq!(
        observer.counters().create_calls,
        0,
        "Core preflight recovery requested another initialization"
    );
}

#[test]
fn original_request_retry_after_update_preserves_original_versions_and_current_history() {
    let (m, g, s) = updated();
    let initial = s
        .backend()
        .version(&key("Account", "a1"), 1)
        .unwrap()
        .unwrap();
    let current = s.current().unwrap();
    let head = s.backend().head().unwrap().unwrap();
    let event = s.backend().record(1).unwrap().unwrap();
    let b = CreationBackend::new(s.into_backend());
    let observer = b.clone();
    let result = Store::create(b, &m, g.clone());
    assert!(
        result.is_ok(),
        "advanced equivalent creation was not recovered: {:?}",
        result.err()
    );
    let recovered = result.unwrap();
    assert_eq!(recovered.current().unwrap(), current);
    assert_eq!(recovered.genesis().unwrap(), g);
    assert_eq!(recovered.backend().head().unwrap().unwrap(), head);
    assert_eq!(recovered.backend().record(1).unwrap().unwrap(), event);
    assert_eq!(
        recovered
            .backend()
            .version(&key("Account", "a1"), 1)
            .unwrap()
            .unwrap(),
        initial
    );
    assert_eq!(
        recovered
            .load(&key("Account", "a1"), &current)
            .unwrap()
            .value["balance"],
        json!("99.00")
    );
    assert_eq!(observer.counters().create_calls, 0);
}

#[test]
fn original_module_recovers_migrated_store_without_rebinding_or_resetting_current_schema() {
    let (source, target, g, s) = migrated();
    let current = s.current().unwrap();
    let head = s.backend().head().unwrap().unwrap();
    let migration = s.backend().record(1).unwrap().unwrap();
    let b = CreationBackend::new(s.into_backend());
    let observer = b.clone();
    let result = Store::create(b, &source, g.clone());
    assert!(
        result.is_ok(),
        "original request was bound to current migrated schema or rejected: {:?}",
        result.err()
    );
    let recovered = result.unwrap();
    assert_eq!(recovered.genesis().unwrap(), g);
    assert_eq!(recovered.current().unwrap(), current);
    assert_eq!(recovered.backend().head().unwrap().unwrap(), head);
    assert_eq!(recovered.backend().record(1).unwrap().unwrap(), migration);
    assert_eq!(
        recovered.schema_at(&current).unwrap().hash,
        behavior_core::schema(&target).hash
    );
    let refusal = recovered
        .evaluate(
            &source,
            "set_region",
            &common::bind(&[("order", "o1")]),
            &json!({"region":"south"}),
            &json!({}),
            common::T0,
            None,
        )
        .err()
        .unwrap();
    assert_eq!(refusal.code(), "SCHEMA_MISMATCH");
    let result = recovered
        .evaluate(
            &target,
            "set_region",
            &common::bind(&[("order", "o1")]),
            &json!({"region":"south"}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap();
    assert!(
        result.bundle.is_some(),
        "actual migrated module should still validate/evaluate"
    );
    assert_eq!(observer.counters().create_calls, 0);
}

#[test]
fn corrupt_historical_seed_is_not_hidden_by_valid_current_values() {
    let (m, g, s) = updated();
    let mut original = s
        .backend()
        .version(&key("Account", "a1"), 1)
        .unwrap()
        .unwrap();
    original.value["balance"] = json!("777.00");
    let b = CreationBackend::new(s.into_backend());
    b.set_version_override(original);
    let result = Store::create(b, &m, g);
    assert!(
        result.is_err(),
        "corrupt original incarnation was accepted as creation evidence"
    );
    assert_eq!(result.err().unwrap().code(), "STORE_INCOMPLETE");
}

#[test]
fn required_recovery_reads_remain_operational_without_republication() {
    let (m, g, s) = updated();
    let original = s.into_backend();
    for point in [
        ReadPoint::Genesis,
        ReadPoint::Head,
        ReadPoint::VersionAt,
        ReadPoint::Version,
        ReadPoint::Record,
        ReadPoint::Removed,
        ReadPoint::Keys,
        ReadPoint::Used,
    ] {
        let b = CreationBackend::new(original.clone());
        let observer = b.clone();
        let expected = format!("019 recovery unavailable {point:?}");
        b.arm_read(point, BackendError(expected.clone()));
        let error = Store::create(b, &m, g.clone())
            .err()
            .expect("recovery omitted a mandatory failed read");
        assert_eq!(
            error,
            behavior_store::documents::StoreError::Backend(expected)
        );
        assert_eq!(
            observer.counters().create_calls,
            0,
            "operational failure was treated as absence"
        );
    }
}

#[test]
fn required_reference_recovery_failure_is_operational_and_never_absence() {
    let m = common::accounts();
    let g = genesis_for(&m, EvidencePolicy::none(), common::accounts_seed());
    let s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let b = CreationBackend::new(s.into_backend());
    let observer = b.clone();
    b.arm_read(
        ReadPoint::Incoming,
        BackendError("019 reference recovery unavailable".into()),
    );
    let error = Store::create(b, &m, g)
        .err()
        .expect("recovery omitted required reference evidence");
    assert_eq!(
        error,
        behavior_store::documents::StoreError::Backend("019 reference recovery unavailable".into())
    );
    assert_eq!(observer.counters().create_calls, 0);
}
