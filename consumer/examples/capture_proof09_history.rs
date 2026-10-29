#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Test-only historical capture. Run on the pinned, unchanged Core 0.14.0 libraries.
//! This uses only the public facade; it never relabels newly generated proofs.
#[path = "../tests/support/durable_backend.rs"]
mod host;

use behavior_engine::migration::admit_migration;
use behavior_engine::store::documents::SeedEntity;
use behavior_engine::store::replay::{replay_behavior_with, replay_data};
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{Backend, Store};
use behavior_engine::verify::governance::{
    AuthorizationContextV2, EvidencePolicyV2, EvidenceV2, ExecutionPolicyV2, GovernanceCandidate,
    GovernanceSubject, authorize_trusted, sign_authorization, signing_key_id, verify_authenticated,
};
use behavior_engine::verify::{Profile, VERIFIER_VERSION, solver::Z3Process};
use serde_json::{Value, json};
use std::collections::BTreeMap;
use std::path::{Path, PathBuf};

const NOW: &str = "2026-10-05T12:00:00Z";

fn fixture(name: &str) -> Value {
    serde_json::from_str(
        &std::fs::read_to_string(
            Path::new(env!("CARGO_MANIFEST_DIR")).join("../tests/fixtures").join(name),
        ).unwrap(),
    ).unwrap()
}

fn seed(name: &str) -> String {
    std::fs::read_to_string(
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../tests/fixtures/governance-v2").join(name),
    ).unwrap().trim().to_owned()
}

fn read(path: &Path) -> Value {
    serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap()
}

fn evidence(
    subject: &GovernanceSubject<'_>, candidate: &GovernanceCandidate,
    ep: &EvidencePolicyV2, policy: &ExecutionPolicyV2, context: &AuthorizationContextV2,
) -> EvidenceV2 {
    let proof = verify_authenticated(subject, &Profile::default(), &seed("verifier.seed"), &Z3Process::from_env().unwrap()).unwrap();
    assert_eq!(proof.envelope.report()["result"], "verified", "{}", proof.diagnostics);
    assert!(!proof.envelope.manifest()["obligations"].as_array().unwrap().is_empty());
    let authorization = authorize_trusted(subject, candidate, ep, policy,
        &[proof.envelope.clone()], &signing_key_id(&seed("authorizer.seed")).unwrap(), context).unwrap();
    let signed = sign_authorization(&authorization, &seed("authorizer.seed")).unwrap();
    EvidenceV2::from_json(&json!({"format":"behavior.evidence.v2","execution_policy":policy.as_json(),
        "authorization":signed.as_json(),"verifications":[proof.envelope.as_json()],"waivers":[],"waiver_signatures":[]}).to_string()).unwrap()
}

fn main() {
    assert_eq!(VERIFIER_VERSION, "0.9.0", "capture must precede the verifier bump");
    let output = PathBuf::from(std::env::args().nth(1).expect("output directory"));
    std::fs::create_dir_all(&output).unwrap();
    let mut source_wire = fixture("soundness/migration-source-a.json");
    let mut target_wire = fixture("soundness/migration-target.json");
    // The captured workflows exercise actions/migration; unrelated read proofs are separate.
    source_wire["reads"] = json!([]);
    target_wire["reads"] = json!([]);
    let source = behavior_engine::admit(&source_wire.to_string()).unwrap();
    let target = behavior_engine::admit(&target_wire.to_string()).unwrap();
    let loc = json!({"file":"capture-proof09.beh","line":1});
    let migration_wire = json!({"migration_ir":"0.1","name":"add_z",
        "source":behavior_engine::schema(&source).hash,"target":behavior_engine::schema(&target).hash,
        "constants":[],"requirements":[],"transforms":[{"entity":"E","fields":{
            "z":{"op":"derived","name":"calc","args":["old"],"loc":loc}},"drops":[]}],"retire":[]});
    let migration = admit_migration(&source, &target, &migration_wire.to_string()).unwrap();
    let mut policy_wire = fixture("governance-v2/policy-verifier-0.9.json");
    policy_wire["accepted_profiles"] = json!([Profile::default().hash()]);
    let policy = ExecutionPolicyV2::from_json(&policy_wire.to_string()).unwrap();
    let mut ep_wire = fixture("governance-v2/evidence-policy.json");
    ep_wire["execution_policies"] = json!([policy.hash()]);
    let mut migration_rule = ep_wire.clone();
    migration_rule.as_object_mut().unwrap().remove("format");
    ep_wire["migration"] = migration_rule;
    let ep = EvidencePolicyV2::from_json(&ep_wire.to_string()).unwrap();
    let context = AuthorizationContextV2::from_json(&fixture("governance-v2/context.json").to_string(), &policy).unwrap();
    for kind in ["action", "migration"] {
        let directory = output.join(format!("{kind}-backend"));
        assert!(!directory.join("store.json").exists(), "capture target must be fresh");
        let mut store = Store::create(host::DurableBackend::open(&directory).unwrap(), &source,
            genesis_v2_for(&source, ep.clone(), vec![SeedEntity {entity:"E".into(),value:json!({"id":"only","x":2,"y":3})}]).unwrap()).unwrap();
        let initial = read(&directory.join("store.json"));
        let history = store.current_history().unwrap();
        let from = store.current().unwrap();
        let (candidate, evidence, recovered) = if kind == "action" {
            let bundle = store.evaluate(&source,"set",&BTreeMap::from([("e".into(),"only".into())]),
                &json!({}),&json!({}),NOW,None).unwrap().bundle.unwrap();
            let candidate = bundle.governance_candidate().unwrap();
            let ev = evidence(&GovernanceSubject::Module(&source), &candidate, &ep, &policy, &context);
            let signed = bundle.with_trusted_evidence(&ev).unwrap();
            let committed = store.commit_with_context(&source,&from,&signed,&context).unwrap();
            assert!(!committed.already);
            let before = std::fs::read(directory.join("store.json")).unwrap();
            let recovered = store.commit_with_context(&source,&from,&signed,&context).unwrap();
            assert_eq!(before,std::fs::read(directory.join("store.json")).unwrap());
            (candidate, ev, recovered)
        } else {
            let prepared = store.prepare_migration(&source,&target,&migration,NOW,Some(&history)).unwrap();
            let candidate = prepared.governance_candidate().unwrap();
            let ev = evidence(&GovernanceSubject::Migration(&migration,&source,&target),&candidate,&ep,&policy,&context);
            let committed = store.commit_prepared_migration(&source,&target,&migration,&prepared,Some(&ev),Some(&context)).unwrap();
            assert!(!committed.already);
            let before = std::fs::read(directory.join("store.json")).unwrap();
            let recovered = store.commit_prepared_migration(&source,&target,&migration,&prepared,Some(&ev),Some(&context)).unwrap();
            assert_eq!(before,std::fs::read(directory.join("store.json")).unwrap());
            (candidate, ev, recovered)
        };
        assert!(recovered.already);
        let to = store.current().unwrap();
        let data = replay_data(&store,&from,&to);
        let modules = BTreeMap::from([(source.behavior_version(),source.clone()),(target.behavior_version(),target.clone())]);
        let migrations = BTreeMap::from([(migration.hash(),(migration.clone(),source.clone(),target.clone()))]);
        let behavior = replay_behavior_with(&store,&modules,&migrations,&from,&to);
        assert!(data.ok,"{data:?}");
        assert!(behavior.ok,"{behavior:?}");
        let record = store.backend().record(1).unwrap().unwrap();
        assert_eq!(record.hash().unwrap(), recovered.record_id);
        let result = json!({"kind":kind,"verifier":"0.9.0","profile":Profile::default().to_json(),
            "source_module":source_wire,"target_module":target_wire,"migration":migration_wire,
            "initial_backend":initial,"committed_backend":read(&directory.join("store.json")),
            "candidate":candidate.as_json(),"evidence":evidence.as_json(),"context":context.as_json(),
            "baseline":{"data_replay":data,"behavior_replay":behavior,"recovered_record":recovered.record_id,
                "already":recovered.already,"evidence_trust":recovered.evidence_trust,"backend_unchanged_by_recovery":true}});
        std::fs::write(output.join(format!("{kind}.json")), behavior_engine::canonical::to_canonical_string(&result).unwrap()).unwrap();
    }
}
