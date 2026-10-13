#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Original creation evidence survives advancement; recovery never restores genesis.

mod common;
use behavior_store as store_api;
#[path = "support/creation_backend.rs"]
mod fixture;
#[path = "support/history_backend.rs"]
mod history_fixture;

use behavior_core::migration::admit_migration;
use behavior_core::semantic::module::Module;
use behavior_store::documents::{EntityKey, EvidencePolicy, Genesis, SeedEntity};
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{Backend, BackendError, InMemoryBackend, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use fixture::{CreationBackend, PublishOn, ReadPoint};
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

fn creation(module: &Module, seed: Vec<SeedEntity>, v2: bool) -> Genesis {
    if v2 {
        let policy = EvidencePolicyV2::from_json(include_str!(
            "../../../tests/fixtures/governance-v2/evidence-policy-none.json"
        ))
        .unwrap();
        genesis_v2_for(module, policy, seed).unwrap()
    } else {
        genesis_for(module, EvidencePolicy::none(), seed)
    }
}

// The finite fixture's known identities include both the original seed and the
// entities subsequently created and removed. Capture primary/history answers
// independently of recovery, including historical reference and lifetime views.
fn lifecycle_material<B: Backend>(backend: &B, position: u64) -> serde_json::Value {
    let identities = [
        key("Customer", "c1"),
        key("Customer", "c2"),
        key("Customer", "c3"),
        key("Customer", "c4"),
        key("Account", "a1"),
        key("Account", "a2"),
        key("AuditNote", "n1"),
    ];
    let entities = identities.iter().map(|k| json!({
        "key": k,
        "revisions": (1..=position + 1).map(|r| backend.version(k, r).unwrap()).collect::<Vec<_>>(),
        "as_of": (0..=position).map(|p| backend.version_at(k, p).unwrap()).collect::<Vec<_>>(),
        "used": (0..=position).map(|p| backend.used_at(k, p).unwrap()).collect::<Vec<_>>(),
        "removed": backend.removed_at(k).unwrap(),
        "incoming": (0..=position).map(|p| {
            let mut refs = backend.incoming_at(k, p).unwrap();
            refs.sort();
            refs.into_iter().map(|edge| (edge.entity, edge.id, edge.field)).collect::<Vec<_>>()
        }).collect::<Vec<_>>(),
    })).collect::<Vec<_>>();
    let universes = ["Customer", "Account", "AuditNote"].map(|entity| {
        (0..=position)
            .map(|p| {
                let mut keys = backend.keys_at(entity, p).unwrap();
                keys.sort();
                keys
            })
            .collect::<Vec<_>>()
    });
    json!({
        "genesis": backend.genesis().unwrap(), "head": backend.head().unwrap(),
        "records": (0..=position).map(|p| backend.record(p).unwrap()).collect::<Vec<_>>(),
        "entities": entities, "universes": universes,
    })
}

#[test]
fn original_creation_survives_creates_retargeting_and_removal_under_both_profiles() {
    let m = common::accounts();
    for v2 in [false, true] {
        let g = creation(&m, common::accounts_seed(), v2);
        let mut s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
        let e = common::act(
            &s,
            "register_customer",
            &[],
            json!({"customer_id":"c4","name":"D"}),
        );
        common::commit_acc(&mut s, &e);
        let e = common::act(
            &s,
            "open_account",
            &[("owner", "c4")],
            json!({"account_id":"a2","initial":"0.00"}),
        );
        common::commit_acc(&mut s, &e);
        let e = common::act(
            &s,
            "switch_and_remove",
            &[("account", "a1"), ("old", "c1"), ("new", "c2")],
            json!({}),
        );
        common::commit_acc(&mut s, &e);
        let e = common::act(&s, "close_account", &[("account", "a2")], json!({}));
        common::commit_acc(&mut s, &e);
        let e = common::act(&s, "remove_customer", &[("customer", "c4")], json!({}));
        common::commit_acc(&mut s, &e);
        assert_eq!(s.current().unwrap().position, 5);
        assert_eq!(
            s.backend().removed_at(&key("Customer", "c1")).unwrap(),
            Some(3)
        );
        assert_eq!(
            s.backend().removed_at(&key("Account", "a2")).unwrap(),
            Some(4)
        );
        assert_eq!(
            s.backend().removed_at(&key("Customer", "c4")).unwrap(),
            Some(5)
        );
        assert!(!s.backend().used_at(&key("Account", "a2"), 0).unwrap());
        assert!(s.backend().used_at(&key("Account", "a2"), 5).unwrap());
        assert_eq!(
            s.backend()
                .version(&key("Account", "a1"), 2)
                .unwrap()
                .unwrap()
                .created_at,
            3
        );
        assert_eq!(
            s.backend().incoming_at(&key("Customer", "c1"), 0).unwrap(),
            vec![common::edge("Account", "a1", "owner")]
        );
        assert!(
            s.backend()
                .incoming_at(&key("Customer", "c1"), 5)
                .unwrap()
                .is_empty()
        );
        assert_eq!(
            s.backend().incoming_at(&key("Customer", "c2"), 5).unwrap(),
            vec![common::edge("Account", "a1", "owner")]
        );
        let before = lifecycle_material(s.backend(), 5);
        let observer = CreationBackend::new(s.into_backend());
        for _ in 0..3 {
            let recovered = Store::create(observer.clone(), &m, g.clone()).unwrap();
            assert_eq!(lifecycle_material(recovered.backend(), 5), before);
            assert_eq!(recovered.current().unwrap().position, 5);
            let refusal = common::act(
                &recovered,
                "register_customer",
                &[],
                json!({"customer_id":"c1","name":"replacement"}),
            );
            assert!(
                refusal.bundle.is_none(),
                "retry reset the historical never-used obligation"
            );
        }
        assert_eq!(observer.counters().create_calls, 0);
    }
}

#[test]
fn exact_module_recovery_refuses_self_consistent_wrong_legacy_original_product() {
    let m = common::ledger();
    let g = genesis_for(
        &m,
        EvidencePolicy::none(),
        common::seed(&[("a1", true, "1.0")]),
    );
    let s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let mut version = s
        .backend()
        .version(&key("Account", "a1"), 1)
        .unwrap()
        .unwrap();
    version.value["balance"] = json!("9.00");
    version.content_hash = version
        .content(&g.entity_declarations["Account"])
        .hash()
        .unwrap();
    let mut acc = behavior_store::muhash::Accumulator::empty();
    acc.insert(&version.content_hash).unwrap();
    let mut head = s.backend().head().unwrap().unwrap();
    head.state_ref.state = acc.state_id().unwrap();
    (head.acc_num, head.acc_den) = acc.to_hex();
    let b = CreationBackend::new(s.into_backend());
    b.set_version_override(version);
    b.set_head_override(Some(head));
    // Without the Module, structural v1 opening cannot decide whether raw input
    // and stored typed values are faithful normalization. It stays noncertifying.
    Store::open(b.clone()).unwrap();
    let error = Store::create(b.clone(), &m, g).err().unwrap();
    assert_eq!(error.code(), "STORE_INCOMPLETE");
    assert_eq!(b.counters().create_calls, 0);
}

#[test]
fn original_incarnation_identity_and_lifetime_mismatches_are_not_recovery_evidence() {
    let (m, g, s) = updated();
    let original = s
        .backend()
        .version(&key("Account", "a1"), 1)
        .unwrap()
        .unwrap();
    for mutation in ["key", "revision", "creation_position"] {
        let mut v = original.clone();
        match mutation {
            "key" => v.id = "different-identity".into(),
            "revision" => v.revision = 2,
            "creation_position" => v.created_at = 1,
            _ => unreachable!(),
        }
        let mut b = history_fixture::FaultBackend {
            inner: s.backend().clone(),
            ..Default::default()
        };
        b.versions.insert(original.key(), v);
        let result = Store::create(b, &m, g.clone());
        assert!(result.is_err(), "accepted original {mutation} mismatch");
        assert_eq!(result.err().unwrap().code(), "STORE_INCOMPLETE");
    }
}

#[test]
fn current_accumulator_state_and_record_mismatches_never_reset_original_creation() {
    let (m, g, s) = updated();
    let original_head = s.backend().head().unwrap().unwrap();
    for mutation in [
        "accumulator_encoding",
        "accumulator_value",
        "state",
        "record",
        "position",
    ] {
        let mut head = original_head.clone();
        match mutation {
            "accumulator_encoding" => head.acc_num = "invalid hex".into(),
            "accumulator_value" => head.acc_num = "1".into(),
            "state" => head.state_ref.state = format!("sha256:{}", "f".repeat(64)),
            "record" => head.last_record = format!("sha256:{}", "f".repeat(64)),
            "position" => head.state_ref.position += 1,
            _ => unreachable!(),
        }
        let b = CreationBackend::new(s.backend().clone());
        b.set_head_override(Some(head));
        assert!(Store::open(b.clone()).is_err(), "open accepted {mutation}");
        assert!(
            Store::create(b.clone(), &m, g.clone()).is_err(),
            "recovery accepted {mutation}"
        );
        assert_eq!(b.counters().create_calls, 0);
        b.set_head_override(None);
        assert_eq!(b.head().unwrap().unwrap(), original_head);
    }
}

#[test]
fn current_migration_schema_requires_its_exact_introduction_and_original_root() {
    let (source, _, g, s) = migrated();
    let original_head = s.backend().head().unwrap().unwrap();
    for mutation in [
        "hash",
        "declarations",
        "future_position",
        "zero_position",
        "introduction",
    ] {
        let mut head = original_head.clone();
        let schema = head.schema.as_mut().unwrap();
        match mutation {
            "hash" => schema.hash = format!("sha256:{}", "f".repeat(64)),
            "declarations" => {
                schema
                    .declarations
                    .insert("Foreign".into(), format!("sha256:{}", "f".repeat(64)));
            }
            "future_position" => schema.since += 1,
            "zero_position" => schema.since = 0,
            "introduction" => schema.migration_record = format!("sha256:{}", "f".repeat(64)),
            _ => unreachable!(),
        }
        let b = CreationBackend::new(s.backend().clone());
        b.set_head_override(Some(head));
        assert!(
            Store::open(b.clone()).is_err(),
            "open accepted schema {mutation}"
        );
        assert!(
            Store::create(b.clone(), &source, g.clone()).is_err(),
            "recovery accepted schema {mutation}"
        );
        assert_eq!(b.counters().create_calls, 0);
        b.set_head_override(None);
        assert_eq!(b.head().unwrap().unwrap(), original_head);
    }
}

#[test]
fn commit_after_head_capture_preserves_both_original_evidence_and_actual_later_history() {
    let m = common::ledger();
    let g = genesis_for(&m, EvidencePolicy::none(), common::default_seed());
    let initial = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let initial_head = initial.backend().head().unwrap().unwrap();
    let mut branch = Store::open(initial.backend().clone()).unwrap();
    let bundle = common::transfer(&branch, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    branch.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
    let event = branch.backend().record(1).unwrap().unwrap();
    let expected_head = branch.backend().head().unwrap().unwrap();
    let landing = behavior_store::conformance::Landing::of(
        initial_head.last_record,
        event.clone(),
        expected_head.clone(),
    );
    let b = CreationBackend::new(initial.into_backend());
    b.schedule_commit(PublishOn::AfterHead, landing);
    let recovered = Store::create(b.clone(), &m, g.clone()).unwrap();
    assert_eq!(b.counters().schedules_landed, 1);
    assert_eq!(b.counters().create_calls, 0);
    assert_eq!(recovered.genesis().unwrap(), g);
    assert_eq!(recovered.backend().head().unwrap().unwrap(), expected_head);
    assert_eq!(recovered.backend().record(1).unwrap().unwrap(), event);
    assert_eq!(recovered.current().unwrap().position, 1);
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

fn reject_wrong_parent_at(position: u64) {
    let m = common::ledger();
    let mut s = common::store();
    for _ in 0..position {
        let bundle = common::transfer(&s, "a1", "a2", "1.00", common::T0)
            .bundle
            .unwrap();
        s.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
    }
    let mut endpoint = s.backend().record(position).unwrap().unwrap();
    let mut head = s.backend().head().unwrap().unwrap();
    endpoint.committed_on.state = format!("sha256:{}", "f".repeat(64));
    head.last_record = endpoint.hash().unwrap();
    let mut backend = history_fixture::FaultBackend {
        inner: s.into_backend(),
        head_override: Some(head),
        ..Default::default()
    };
    backend.records.insert(position, endpoint);
    let result = Store::open(backend);
    assert!(
        result.is_err(),
        "position {position}: rehashed endpoint accepted a false canonical parent StateId"
    );
}

#[test]
fn checked_open_rejects_first_endpoint_parent_even_with_rehashed_head_identity() {
    reject_wrong_parent_at(1);
}

#[test]
fn checked_open_rejects_later_endpoint_parent_even_with_rehashed_head_identity() {
    reject_wrong_parent_at(2);
}

#[test]
fn exact_recovery_rejects_same_endpoint_parent_substitution_as_checked_open() {
    let (m, g, s) = updated();
    let mut endpoint = s.backend().record(1).unwrap().unwrap();
    let mut head = s.backend().head().unwrap().unwrap();
    endpoint.committed_on.state = format!("sha256:{}", "f".repeat(64));
    head.last_record = endpoint.hash().unwrap();
    let mut backend = history_fixture::FaultBackend {
        inner: s.into_backend(),
        head_override: Some(head),
        ..Default::default()
    };
    backend.records.insert(1, endpoint);
    let result = Store::create(backend, &m, g);
    assert!(
        result.is_err(),
        "exact original product masked a corrupt current endpoint"
    );
    // A future corrected route refuses the bounded integrity claim before
    // asking the host to create again. Old already-created refusal alone is
    // not evidence that its parent-state linkage was checked.
    assert_ne!(result.err().unwrap().code(), "BACKEND_ERROR");
}

#[test]
fn legacy_endpoint_evaluation_basis_cannot_diverge_from_its_canonical_committed_parent() {
    let (m, g, s) = updated();
    let mut endpoint = s.backend().record(1).unwrap().unwrap();
    assert_eq!(
        endpoint.format,
        behavior_store::documents::TAG_TRANSITION_RECORD,
        "this control targets the existing v1 history law"
    );
    assert_ne!(
        endpoint.evaluated_against.state,
        format!("sha256:{}", "f".repeat(64))
    );
    endpoint.evaluated_against.state = format!("sha256:{}", "f".repeat(64));
    let mut head = s.backend().head().unwrap().unwrap();
    head.last_record = endpoint.hash().unwrap();
    let mut b = history_fixture::FaultBackend {
        inner: s.into_backend(),
        head_override: Some(head),
        ..Default::default()
    };
    b.records.insert(1, endpoint);
    assert!(
        Store::open(b.clone()).is_err(),
        "legacy evaluated_against/committed_on mismatch was accepted as coherent history"
    );
    assert!(
        Store::create(b, &m, g).is_err(),
        "recovery ignored the same legacy history invariant"
    );
}
