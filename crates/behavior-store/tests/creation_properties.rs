#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Algebraic laws concern original lineage identity, not backend call traces.

mod common;
use behavior_store as store_api;
#[path = "support/creation_backend.rs"]
mod fixture;

use behavior_store::documents::{EvidencePolicy, Genesis};
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{Backend, InMemoryBackend, Store};
use behavior_verify::governance::trusted::EvidencePolicyV2;
use fixture::{CreateFault, CreationBackend};
use proptest::prelude::*;

fn policy() -> EvidencePolicyV2 {
    EvidencePolicyV2::from_json(include_str!(
        "../../../tests/fixtures/governance-v2/evidence-policy-none.json"
    ))
    .unwrap()
}

// Reverse only object representation order. Array order is left intact because
// the legacy genesis seed is a semantic sequence, unlike canonical JSON objects.
fn reversed_object_json(value: &serde_json::Value) -> String {
    match value {
        serde_json::Value::Object(fields) => format!(
            "{{{}}}",
            fields
                .iter()
                .rev()
                .map(|(name, value)| format!(
                    "{}:{}",
                    serde_json::to_string(name).unwrap(),
                    reversed_object_json(value)
                ))
                .collect::<Vec<_>>()
                .join(",")
        ),
        serde_json::Value::Array(items) => format!(
            "[{}]",
            items
                .iter()
                .map(reversed_object_json)
                .collect::<Vec<_>>()
                .join(",")
        ),
        value => value.to_string(),
    }
}

proptest! {
    #![proptest_config(ProptestConfig {
        cases: 32,
        failure_persistence: None,
        rng_seed: proptest::test_runner::RngSeed::Fixed(190019),
        ..ProptestConfig::default()
    })]

    #[test]
    fn exact_same_creation_recovery_is_idempotent_for_arbitrary_valid_seeds(
        balances in prop::collection::vec(0u32..10000, 0..8), repeats in 1usize..5,
    ) {
        let m = common::ledger();
        let pairs: Vec<_> = balances.iter().enumerate().map(|(i,b)|
            (format!("a{i}"), true, format!("{}.{:02}", b/100, b%100))).collect();
        let seed = common::seed(&pairs.iter().map(|(id,active,balance)|
            (id.as_str(), *active, balance.as_str())).collect::<Vec<_>>());
        let g = genesis_for(&m, EvidencePolicy::none(), seed);
        let original = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
        let head = original.backend().head().unwrap().unwrap();
        let mut backend = original.into_backend();
        for _ in 0..repeats {
            let result = Store::create(backend, &m, g.clone());
            prop_assert!(result.is_ok(), "equivalent original creation was refused: {:?}", result.err());
            let recovered = result.unwrap();
            prop_assert_eq!(recovered.genesis().unwrap(), g.clone());
            prop_assert_eq!(recovered.backend().head().unwrap().unwrap(), head.clone());
            prop_assert!(recovered.backend().record(1).unwrap().is_none());
            backend = recovered.into_backend();
        }
    }

    #[test]
    fn ambiguous_error_never_implies_rollback_and_explicit_retry_is_safe(
        amount in 0u32..10000, after in any::<bool>(),
    ) {
        let m = common::ledger();
        let balance = format!("{}.{:02}", amount/100, amount%100);
        let g = genesis_for(&m, EvidencePolicy::none(), common::seed(&[("a1", true, &balance)]));
        let b = CreationBackend::new(InMemoryBackend::new());
        let observer = b.clone();
        observer.arm_create(if after { CreateFault::AfterPublish } else { CreateFault::BeforePublish });
        let error = Store::create(b, &m, g.clone()).err().unwrap();
        prop_assert_eq!(error.code(), "BACKEND_ERROR");
        prop_assert_eq!(observer.genesis().unwrap().is_some(), after);
        prop_assert_eq!(observer.head().unwrap().is_some(), after);
        let recovered = Store::create(observer.clone(), &m, g.clone());
        prop_assert!(recovered.is_ok(), "safe explicit retry failed: {:?}", recovered.err());
        let recovered = recovered.unwrap();
        prop_assert_eq!(recovered.genesis().unwrap(), g);
        prop_assert_eq!(recovered.current().unwrap().position, 0);
        prop_assert!(observer.record(1).unwrap().is_none());
    }

    #[test]
    fn legacy_seed_sequence_distinguishes_creation_even_with_equal_initial_state(
        balances in prop::collection::vec(0u32..10000, 2..7),
    ) {
        let m = common::ledger();
        let pairs: Vec<_> = balances.iter().enumerate().map(|(i,b)|
            (format!("a{i}"), true, format!("{}.{:02}", b/100, b%100))).collect();
        let seed = common::seed(&pairs.iter().map(|(id,active,balance)|
            (id.as_str(), *active, balance.as_str())).collect::<Vec<_>>());
        let g = genesis_for(&m, EvidencePolicy::none(), seed.clone());
        let mut reversed = seed;
        reversed.reverse();
        let foreign = genesis_for(&m, EvidencePolicy::none(), reversed);
        prop_assert_ne!(g.hash().unwrap(), foreign.hash().unwrap());
        let original = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
        let separate = Store::create(InMemoryBackend::new(), &m, foreign.clone()).unwrap();
        prop_assert_eq!(original.current().unwrap().state, separate.current().unwrap().state);
        let head = original.backend().head().unwrap().unwrap();
        let b = CreationBackend::new(original.into_backend());
        let error = Store::create(b.clone(), &m, foreign).err().unwrap();
        prop_assert_eq!(error.code(), "STORE_CREATION_CONFLICT");
        prop_assert_eq!(b.genesis().unwrap(), Some(g));
        prop_assert_eq!(b.head().unwrap(), Some(head));
        prop_assert_eq!(b.counters().create_calls, 0);
    }

    #[test]
    fn canonical_objects_and_backend_reference_enumeration_do_not_change_recovery(
        count in 1usize..6, v2 in any::<bool>(),
    ) {
        let m = common::accounts();
        let mut seed = common::accounts_seed();
        for i in 0..count {
            seed.push(common::account(&format!("extra{i}"), "c1", "0.00"));
        }
        let g = if v2 { genesis_v2_for(&m, policy(), seed).unwrap() }
            else { genesis_for(&m, EvidencePolicy::none(), seed) };
        let reordered: Genesis = serde_json::from_str(&reversed_object_json(&serde_json::to_value(&g).unwrap())).unwrap();
        prop_assert_eq!(g.hash().unwrap(), reordered.hash().unwrap());
        let s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
        let before = s.backend().head().unwrap().unwrap();
        let b = CreationBackend::new(s.into_backend());
        b.reverse_order(true);
        let recovered = Store::create(b.clone(), &m, reordered).unwrap();
        prop_assert_eq!(recovered.genesis().unwrap(), g);
        prop_assert_eq!(recovered.backend().head().unwrap(), Some(before));
        prop_assert_eq!(recovered.backend().incoming_at(&common::key("Customer", "c1"), 0).unwrap().len(), count + 1);
        prop_assert_eq!(b.counters().create_calls, 0);
    }

    #[test]
    fn canonical_v2_authoring_normalizes_equivalent_decimal_and_seed_order(
        amounts in prop::collection::vec(0u32..10000, 1..7),
    ) {
        let m = common::ledger();
        let pairs: Vec<_> = amounts.iter().enumerate().map(|(i,b)|
            (format!("a{i}"), true, format!("{b}.0"))).collect();
        let raw = common::seed(&pairs.iter().map(|(id,active,balance)|
            (id.as_str(), *active, balance.as_str())).collect::<Vec<_>>());
        let mut canonical = raw.clone();
        for item in &mut canonical {
            let raw_balance = item.value["balance"].as_str().unwrap();
            item.value["balance"] = serde_json::json!(format!("{raw_balance}0"));
        }
        canonical.reverse();
        let g = genesis_v2_for(&m, policy(), raw).unwrap();
        let equivalent = genesis_v2_for(&m, policy(), canonical).unwrap();
        prop_assert_eq!(&g, &equivalent);
        prop_assert_eq!(g.hash().unwrap(), equivalent.hash().unwrap());
        let s = Store::create(InMemoryBackend::new(), &m, g).unwrap();
        let before = s.backend().head().unwrap().unwrap();
        let recovered = Store::create(s.into_backend(), &m, equivalent).unwrap();
        prop_assert_eq!(recovered.backend().head().unwrap(), Some(before));
        prop_assert!(recovered.backend().record(1).unwrap().is_none());
    }

    #[test]
    fn equivalent_original_retry_preserves_generated_lifecycle_history(
        length in 1usize..12, seed in 1u64..10000, repeats in 1usize..4,
    ) {
        let m = common::accounts();
        let s = common::lifecycle_history(length, seed);
        let g = s.genesis().unwrap();
        let head = s.backend().head().unwrap().unwrap();
        let records = (1..=length as u64).map(|p| s.backend().record(p).unwrap()).collect::<Vec<_>>();
        let initial = s.state_at(0).unwrap();
        let original_versions = g.seed.iter().map(|seed| {
            let k = common::key(&seed.entity, seed.value["id"].as_str().unwrap());
            (k.clone(), s.backend().version(&k, 1).unwrap())
        }).collect::<Vec<_>>();
        let mut backend = s.into_backend();
        for _ in 0..repeats {
            let recovered = Store::create(backend, &m, g.clone()).unwrap();
            prop_assert_eq!(recovered.backend().head().unwrap(), Some(head.clone()));
            prop_assert_eq!(recovered.state_at(0).unwrap(), initial.clone());
            prop_assert_eq!((1..=length as u64).map(|p| recovered.backend().record(p).unwrap()).collect::<Vec<_>>(), records.clone());
            for (k, version) in &original_versions {
                prop_assert_eq!(recovered.backend().version(k, 1).unwrap(), version.clone());
                prop_assert!(recovered.backend().used_at(k, 0).unwrap());
            }
            backend = recovered.into_backend();
        }
    }
}
