use super::*;
use behavior_engine::verify::governance::{authorize, authorize_migration, sign_waiver};
const NOW: &str = "2026-09-25T12:00:00Z";
#[test]
fn generated_governance_and_history_preserve_independent_baseline() {
    let z3 = Z3Process::from_env().unwrap();
    let policy = fixture("governance/require_verified.json");
    let m = behavior_engine::admit(&fixture("verify/purchase_fixed.json")).unwrap();
    let report = verify(&m, &profile(), None, &z3).unwrap();
    let mut request: Value =
        serde_json::from_str(&fixture("governance/approve_request.json")).unwrap();
    request["facts"] = json!({"universe":[{"entity":"Employee","members":[]},{"entity":"Project","members":[request["state"]["project"].clone()]},{"entity":"Purchase","members":[request["state"]["purchase"].clone()]}]});
    let record = behavior_engine::evaluate(&m, &request.to_string());
    assert_eq!(record.as_json()["result"], "ALLOW");
    save("record.json", &record.to_json_string());
    let a = authorize(
        &policy,
        &m,
        &record.to_json_string(),
        Some(&report.to_json_string().unwrap()),
        &[],
        &[],
        NOW,
    )
    .unwrap();
    assert_eq!(a.decision, "allow");
    save("authorization.json", &a.to_json_string().unwrap());
    let (s, t, migration) = migration_case(1);
    let a = verify_migration(&migration, &s, &t, &Profile::default(), None, &z3);
    let ma = authorize_migration(
        &policy,
        &migration,
        &format!("sha256:{}", "0".repeat(64)),
        Some(&a.to_json_string().unwrap()),
        &[],
        &[],
        NOW,
    )
    .unwrap();
    assert_eq!(ma.decision, "allow");
    save(
        "migration-authorization.json",
        &ma.to_json_string().unwrap(),
    );
    let negative = behavior_engine::admit(&fixture("verify/purchase.json")).unwrap();
    let a = verify(&negative, &profile(), None, &z3).unwrap();
    let f = &a.findings()[0];
    let waiver = json!({"behavior_version":a.value["behavior_version"],"finding_hash":f["hash"],"profile_hash":a.value["profile"]["hash"],"verifier_version":a.value["verifier_version"],"rationale":"Core021 fixed test fixture"});
    save_json("waiver.json", &waiver);
    save_json(
        "signed-waiver.json",
        &sign_waiver(&"42".repeat(32), &waiver.to_string()).unwrap(),
    );
    save_json("policy.json", &serde_json::from_str(&policy).unwrap());
    use behavior_engine::store::documents::{EvidencePolicy, SeedEntity};
    use behavior_engine::store::{InMemoryBackend, Store};
    let ledger = behavior_engine::admit(&fixture("wire/valid/ledger.json")).unwrap();
    let seeds = [("a1", "100.00"), ("a2", "5.00")]
        .map(|(id, balance)| SeedEntity {
            entity: "Account".into(),
            value: json!({"id":id,"active":true,"balance":balance}),
        })
        .to_vec();
    let genesis =
        behavior_engine::store::store::genesis_for(&ledger, EvidencePolicy::none(), seeds);
    let mut store = Store::create(InMemoryBackend::new(), &ledger, genesis).unwrap();
    let start = store.current_history().unwrap();
    let bindings = std::collections::BTreeMap::from([
        ("from_".into(), "a1".into()),
        ("to".into(), "a2".into()),
    ]);
    let bundle = store
        .evaluate(
            &ledger,
            "transfer",
            &bindings,
            &json!({"amount":"1.00"}),
            &json!({}),
            NOW,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    let committed = store.commit(&ledger, &start.state_ref(), &bundle).unwrap();
    let end = store.current_history().unwrap();
    let replay =
        behavior_engine::store::replay::replay_data(&store, &start.state_ref(), &end.state_ref());
    assert!(replay.ok);
    save_json(
        "store-history.json",
        &json!({"record_id":committed.record_id,"result_state":committed.result_state,"start":start,"end":end,"replay_ok":replay.ok}),
    );
}
