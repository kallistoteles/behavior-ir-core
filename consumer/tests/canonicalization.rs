#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/canonicalization.rs"]
mod support;
use behavior_engine::canonical::{CanonicalError, tagged_hash};
use behavior_engine::verify::governance::{authorize, authorize_migration};
use behavior_engine::verify::{Profile, solver::Z3Process, verify, verify_migration};
use serde_json::json;
use support::*;

#[test]
fn editable_public_artifacts_have_checked_serialization() -> Result<(), Box<dyn std::error::Error>>
{
    let solver = Z3Process::from_env().expect("required facade acceptance needs Z3");
    let module = behavior_engine::admit(&fixture("verify/purchase_fixed.json")).unwrap();
    let report = verify(&module, &profile(), None, &solver)?;
    let report_text = report.to_json_string()?;
    let policy = fixture("governance/require_verified.json");
    let record = fixture("canonicalization/baseline/record.json");
    let authorization = authorize(
        &policy,
        &module,
        &record,
        Some(&report_text),
        &[],
        &[],
        "2026-09-25T12:00:00Z",
    )
    .unwrap();
    let (s, t, m) = migration_case(1);
    let migration_report = verify_migration(&m, &s, &t, &Profile::default(), None, &solver);
    let migration_authorization = authorize_migration(
        &policy,
        &m,
        &format!("sha256:{}", "0".repeat(64)),
        Some(&migration_report.to_json_string().unwrap()),
        &[],
        &[],
        "2026-09-25T12:00:00Z",
    )
    .unwrap();
    macro_rules! check {($artifact:expr,$name:expr)=>{{
        let mut a=$artifact;
        assert_eq!(a.to_json_string().unwrap(),fixture(concat!("canonicalization/current-verifier-0.11/",$name)));
        let old=a.hash.clone();a.value["draft"]=json!({"items":[1.5]});a.value["signature"]=json!("retained untrusted metadata");
        assert!(matches!(a.to_json_string(),Err(CanonicalError::Float(p)) if p=="$.draft.items[0]"));
        assert_eq!(a.hash,old);assert_eq!(a.value["hash"],old);
        a.value=json!({"draft":null});assert_eq!(a.to_json_string().unwrap(),"{\"draft\":null}");
    }}}
    // Fresh 0.10 reports/authorizations have separately named expectations;
    // frozen historical baseline bytes retain their original 0.9 identities.
    check!(report, "purchase_fixed-cold.json");
    check!(migration_report, "migration-verified.json");
    check!(authorization, "authorization.json");
    check!(migration_authorization, "migration-authorization.json");
    assert!(
        matches!(tagged_hash("tag",&json!({"hash":{"items":[1.5]}})),Err(CanonicalError::Float(p)) if p=="$.hash.items[0]")
    );
    Ok(())
}

#[test]
fn ordinary_producer_returns_a_typed_cache_finding_error() {
    let case: serde_json::Value =
        serde_json::from_str(&fixture("canonicalization/poisoned-cache.json")).unwrap();
    let dir = fresh_dir("consumer-poison");
    let module = behavior_engine::admit(&fixture(case["wire"].as_str().unwrap())).unwrap();
    let profile = Profile::from_json(&fixture(case["profile"].as_str().unwrap())).unwrap();
    let solver = Z3Process::from_env().expect("required facade acceptance needs Z3");
    let cold = verify(&module, &profile, Some(&dir), &solver).unwrap();
    let warm = verify(&module, &profile, Some(&dir), &solver).unwrap();
    assert_eq!(cold.hash, warm.hash);
    assert!(warm.checks.iter().all(|c| c.cached));
    let mut changed = 0;
    for file in std::fs::read_dir(&dir).unwrap() {
        let path = file.unwrap().path();
        let mut v: serde_json::Value =
            serde_json::from_str(&std::fs::read_to_string(&path).unwrap()).unwrap();
        if v["finding"].is_object() {
            v["finding"][case["field"].as_str().unwrap()] = case["value"].clone();
            std::fs::write(path, v.to_string()).unwrap();
            changed += 1;
        }
    }
    assert!(changed > 0);
    assert!(
        matches!(verify(&module,&profile,Some(&dir),&solver),Err(CanonicalError::Float(path)) if path==case["path"].as_str().unwrap())
    );
    std::fs::remove_dir_all(dir).unwrap();
}

#[test]
fn legacy_governance_retains_a_nameable_canonical_source() {
    use behavior_engine::verify::governance::GovernanceError;
    let module = behavior_engine::admit(&fixture("verify/purchase_fixed.json")).unwrap();
    let mut policy: serde_json::Value =
        serde_json::from_str(&fixture("governance/require_verified.json")).unwrap();
    policy["hash"] = json!({"items":[1.5]});
    let err = authorize(
        &policy.to_string(),
        &module,
        &fixture("canonicalization/baseline/record.json"),
        None,
        &[],
        &[],
        "2026-09-25T12:00:00Z",
    )
    .unwrap_err();
    assert!(
        matches!(err,GovernanceError::Canonicalization{artifact:"policy",source:CanonicalError::Float(path)} if path=="$.hash.items[0]")
    );
    assert!(matches!(
        authorize(
            "{}",
            &module,
            &fixture("canonicalization/baseline/record.json"),
            None,
            &[],
            &[],
            "2026-09-25T12:00:00Z"
        ),
        Err(GovernanceError::Invalid("policy", _))
    ));
    let (source, target, migration) = migration_case(1);
    let err = authorize_migration(
        &policy.to_string(),
        &migration,
        &format!("sha256:{}", "0".repeat(64)),
        None,
        &[],
        &[],
        "2026-09-25T12:00:00Z",
    )
    .unwrap_err();
    assert!(
        matches!(err,GovernanceError::Canonicalization{artifact:"policy",source:CanonicalError::Float(path)} if path=="$.hash.items[0]")
    );
    assert_ne!(source.behavior_version(), target.behavior_version());
    let mut w: serde_json::Value =
        serde_json::from_str(&fixture("canonicalization/baseline/waiver.json")).unwrap();
    w["hash"] = json!({"items":[1.5]});
    assert!(
        matches!(behavior_engine::verify::governance::sign_waiver(&"42".repeat(32),&w.to_string()),Err(GovernanceError::Canonicalization{source:CanonicalError::Float(path),..}) if path=="$.hash.items[0]")
    );
}

#[test]
fn legacy_migration_rejects_noncanonical_consumed_evidence_without_a_commit() {
    use behavior_engine::store::documents::{
        Evidence, EvidencePolicy, SeedEntity, StoreError, data_version,
    };
    use behavior_engine::store::{InMemoryBackend, Store};
    let (source, target, m) = migration_case(0);
    let seeds = vec![
        SeedEntity {
            entity: "Customer".into(),
            value: json!({"id":"c1","name":"Ada","email":"a@x"}),
        },
        SeedEntity {
            entity: "Culture".into(),
            value: json!({"id":"k1","medium":"WPM","status":"ACTIVE","ph":7,"legacy_code":"L1","price":"1.50","fee":"0.1235"}),
        },
    ];
    let mut store = Store::create(
        InMemoryBackend::new(),
        &source,
        behavior_engine::store::store::genesis_for(&source, EvidencePolicy::none(), seeds),
    )
    .unwrap();
    // Existing low-trust structural legacy format; fresh authenticated proof stays separate.
    let mut a = json!({"attestation_version":"1","subject":"migration","migration_hash":m.hash(),"source":m.source_schema(),"target":m.target_schema(),"profile":{"hash":"sha256:00"},"verifier_version":behavior_engine::verify::VERIFIER_VERSION,"result":"verified","checks":[{"kind":"preservation"}],"findings":[]});
    a["hash"] = json!(tagged_hash("behavior.verification.v1", &a).unwrap());
    let at = store.current().unwrap();
    let dv = data_version(&store.store_id().unwrap(), &at);
    let auth = authorize_migration(
        &fixture("governance/require_verified.json"),
        &m,
        &dv,
        Some(&a.to_string()),
        &[],
        &[],
        "2026-10-02T10:00:00Z",
    )
    .unwrap();
    assert_eq!(auth.decision, "allow");
    a["checks"][0]["cached"] = json!(1.5);
    let before = format!("{:?}", store.backend());
    let err = store
        .migrate(
            &m,
            &source,
            &target,
            "2026-10-02T10:00:00Z",
            Some(Evidence {
                authorization: auth.value,
                execution_policy: None,
                attestation: Some(a),
                waivers: vec![],
            }),
        )
        .unwrap_err();
    assert!(matches!(&err, StoreError::EvidenceMismatch(_)), "{err}");
    assert!(err.to_string().contains("$.checks[0].cached"));
    assert_eq!(format!("{:?}", store.backend()), before);
}
