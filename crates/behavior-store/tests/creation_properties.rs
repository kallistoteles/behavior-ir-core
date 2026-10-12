#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Algebraic laws concern original lineage identity, not backend call traces.

mod common;
use behavior_store as store_api;
#[path = "support/creation_backend.rs"]
mod fixture;

use behavior_store::documents::EvidencePolicy;
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use fixture::{CreateFault, CreationBackend};
use proptest::prelude::*;

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
}
