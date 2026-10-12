//! Creation evidence remains private and exact-snapshot-bound.
#![allow(clippy::unwrap_used, clippy::expect_used)]

use super::*;
use crate as store_api;
use crate::InMemoryBackend;
#[path = "../../tests/support/creation_backend.rs"]
mod fixture;
use fixture::{CreationBackend, CreationMutant};

fn module() -> Module {
    behavior_core::admit(include_str!(
        "../../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap()
}

fn genesis(module: &Module) -> Genesis {
    genesis_for(
        module,
        crate::documents::EvidencePolicy::none(),
        vec![crate::documents::SeedEntity {
            entity: "E".into(),
            value: json!({"id":"e0","x":1,"y":2}),
        }],
    )
}

#[test]
fn acknowledged_exact_initial_publication_has_module_bound_seed_certificate() {
    let m = module();
    let g = genesis(&m);
    let s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let guard = s.validated.lock().unwrap();
    let certificate = guard
        .as_ref()
        .expect("acknowledged legal seed is validated");
    assert_eq!(certificate.identity.history.position, 0);
    assert_eq!(certificate.identity.history.store, g.hash().unwrap());
    assert_eq!(certificate.identity.history.record, g.hash().unwrap());
    assert_eq!(
        certificate.identity.history.state,
        s.current().unwrap().state
    );
    assert_eq!(
        certificate.identity.behavior,
        behavior_core::serialize::to_wire_json(&m)
    );
    assert_eq!(
        certificate.identity.validation_profile,
        CURRENT_VALIDATION_PROFILE
    );
}

#[test]
fn ordinary_module_free_open_starts_without_validity_authority() {
    let m = module();
    let s = Store::create(InMemoryBackend::new(), &m, genesis(&m)).unwrap();
    let s = Store::open(s.into_backend()).unwrap();
    assert!(s.validated.lock().unwrap().is_none());
}

#[test]
fn later_equal_state_identity_never_grants_current_seed_certificate() {
    let m = module();
    let g = genesis(&m);
    let mut s = Store::create(InMemoryBackend::new(), &m, g.clone()).unwrap();
    let initial = s.current().unwrap();
    let e = s
        .evaluate(
            &m,
            "set",
            &BTreeMap::from([("e".into(), "e0".into())]),
            &json!({}),
            &json!({}),
            "2026-10-01T00:00:00Z",
            None,
        )
        .unwrap();
    let bundle = e.bundle.unwrap();
    s.commit(&m, &bundle.evaluated_state, &bundle).unwrap();
    let current = s.current().unwrap();
    assert_eq!(
        current.state, initial.state,
        "control must retain equal content"
    );
    assert_eq!(
        current.position, 1,
        "control must advance immutable history"
    );
    let b = CreationBackend::new(s.into_backend());
    // On this already complete equivalent target, returning Ok without writing
    // is a legal no-op. It lets the old Core route reach its cache attachment;
    // it is not evidence that an unpublished mutant is a conforming host.
    b.set_mutant(CreationMutant::NoPublication);
    let recovered = Store::create(b, &m, g).unwrap();
    assert_eq!(recovered.current().unwrap(), current);
    assert!(
        recovered.validated.lock().unwrap().is_none(),
        "position-zero candidate was promoted for an advanced Store"
    );
}

#[test]
fn successful_ack_without_complete_publication_never_attaches_seed_authority() {
    let m = module();
    let b = CreationBackend::new(InMemoryBackend::new());
    b.set_mutant(CreationMutant::NoPublication);
    let result = Store::create(b, &m, genesis(&m));
    assert!(
        result.is_err(),
        "a success-returning unpublished backend yielded an authoritative Store/cache"
    );
}

#[test]
fn original_module_migration_recovery_is_cold_under_actual_current_schema() {
    let source = behavior_core::admit(include_str!(
        "../../../../tests/fixtures/migration/modules/cultures_v1.json"
    )).unwrap();
    let target = behavior_core::admit(include_str!(
        "../../../../tests/fixtures/migration/modules/cultures_v2.json"
    )).unwrap();
    let migration = behavior_core::migration::admit_migration(&source, &target, include_str!(
        "../../../../tests/fixtures/migration/valid/cultures_v1_to_v2.json"
    )).unwrap();
    let seed = vec![
        crate::documents::SeedEntity { entity: "Customer".into(), value: json!({"id":"c1","name":"N","email":"e"}) },
        crate::documents::SeedEntity { entity: "Culture".into(), value: json!({"id":"k1","medium":"MS","status":"ACTIVE","ph":1,"legacy_code":"L","price":"1.00","fee":"0.0100"}) },
        crate::documents::SeedEntity { entity: "Order".into(), value: json!({"id":"o1","customer":"c1","region":"north","qty":1}) },
    ];
    let g = genesis_for(&source, crate::documents::EvidencePolicy::none(), seed);
    let mut s = Store::create(InMemoryBackend::new(), &source, g.clone()).unwrap();
    s.migrate(&migration, &source, &target, "2026-10-02T09:00:00Z", None).unwrap();
    let at = s.current().unwrap();
    let result = Store::create(s.into_backend(), &source, g);
    assert!(result.is_ok(), "original schema was incorrectly rebound during migration recovery: {:?}", result.err());
    let recovered = result.unwrap();
    assert_eq!(recovered.current().unwrap(), at);
    assert_eq!(recovered.schema_at(&at).unwrap().hash, schema(&target).hash);
    assert!(recovered.validated.lock().unwrap().is_none(), "initial certificate survived migrated recovery");
}
