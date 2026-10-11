#![allow(clippy::unwrap_used, clippy::expect_used)]
//! G1/G3: live store truth and independently supplied Q govern every write.
mod common;
use behavior_store::documents::*;
use behavior_store::store::genesis_v2_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use behavior_verify::governance::trusted::*;
use serde_json::{Value, json};
use std::collections::BTreeMap;

fn raw(n: &str) -> Value {
    common::json(&common::fixtures().join("governance-v2").join(n))
}

fn schema_python(program: &str, documents: &Value) {
    use std::io::Write;
    use std::process::{Command, Stdio};
    let prefix = r#"
import copy,json,pathlib,sys
from jsonschema import Draft202012Validator
from referencing import Registry,Resource
root=pathlib.Path('.')
registry=Registry()
for name in ('decision-record-0.7','decision-record-0.8'):
    schema=json.loads((root/f'schema/{name}.schema.json').read_text())
    registry=registry.with_resource(schema['$id'],Resource.from_contents(schema))
def validator(name,definition=None):
    schema=json.loads((root/f'schema/{name}.schema.json').read_text())
    if definition:
        schema.pop('oneOf');schema['$ref']='#/$defs/'+definition
    Draft202012Validator.check_schema(schema)
    return Draft202012Validator(schema,registry=registry)
documents=json.load(sys.stdin)
"#;
    let mut child = Command::new("python3")
        .args(["-c", &format!("{prefix}\n{program}")])
        .current_dir(std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../.."))
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .unwrap();
    child
        .stdin
        .take()
        .unwrap()
        .write_all(documents.to_string().as_bytes())
        .unwrap();
    let output = child.wait_with_output().unwrap();
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
}

fn schema_action_candidates() -> Value {
    let p = ExecutionPolicyV2::from_json(&raw("policy-none.json").to_string()).unwrap();
    let ep = ep_for(&p.as_json());
    let s = create(ep.clone(), common::default_seed());
    let legacy = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    assert_eq!(legacy.record["record_version"], "0.8");
    assert!(legacy.record.get("semantic_profile").is_none());

    let module = behavior_core::admit(&common::read(
        &common::fixtures().join("commands/modules/receipt.json"),
    ))
    .unwrap();
    let commands = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(&module, ep, vec![]).unwrap(),
    )
    .unwrap();
    let commands = commands
        .evaluate(
            &module,
            "receipt",
            &BTreeMap::new(),
            &json!({"recipient":"customer-1"}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    assert_eq!(commands.record["record_version"], "0.8");
    assert_eq!(commands.record["semantic_profile"], "0.8");

    let archive: CommitBundle = serde_json::from_value(common::json(
        &common::fixtures().join("resulting-state-validity/commands/bundle.json"),
    ))
    .unwrap();
    assert_eq!(archive.record["record_version"], "0.7");
    behavior_core::DecisionRecord::from_json(&archive.record.to_string()).unwrap();
    json!([
        {"name":"fresh Legacy08","candidate":legacy.governance_candidate().unwrap().as_json()},
        {"name":"fresh CommandIntents08","candidate":commands.governance_candidate().unwrap().as_json()},
        {"name":"genuine archived CommandIntents07","candidate":archive.governance_candidate().unwrap().as_json()}
    ])
}

#[test]
fn schema_current_action08_and_archived07_nested_records() {
    schema_python(
        r#"
for schema in ('governance-v2','store-v2'):
    check=validator(schema,'candidate')
    nested=validator(schema,'decision_record')
    for entry in documents:
        doc=entry['candidate'];record=doc['content']['record']
        assert check.is_valid(doc),(schema,entry['name'],list(check.iter_errors(doc)))
        assert nested.is_valid(record),(schema,entry['name'])
        bad=copy.deepcopy(doc);bad['content']['record']['unknown_field']=True
        assert not check.is_valid(bad),(schema,'open nested record')
        bad=copy.deepcopy(doc);bad['content']['record']['record_version']='unknown.version'
        assert not check.is_valid(bad),(schema,'unknown nested version')
"#,
        &schema_action_candidates(),
    );
}

#[test]
fn schema_current_verifier09_and_authentic_archive08_provenance() {
    let module = behavior_core::admit(&common::read(
        &common::fixtures().join("commands/modules/receipt.json"),
    ))
    .unwrap();
    let profile = behavior_verify::Profile {
        checks: vec![behavior_verify::CheckKind::EvaluationError],
        ..behavior_verify::Profile::default()
    };
    let seed = common::read(&common::fixtures().join("governance-v2/verifier.seed"));
    let proof = verify_authenticated(
        &GovernanceSubject::Module(&module),
        &profile,
        seed.trim(),
        &behavior_verify::solver::Z3Process::from_env().unwrap(),
    )
    .unwrap();
    assert_eq!(
        proof.envelope.as_json()["content"]["verifier_version"],
        "0.9.0"
    );
    let archive = VerificationEnvelopeV2::from_json(include_str!(
        "../../../specs/017-resulting-state-validity/evidence/runs/US2/profiles/archived-receipt-verifier-0.8.json"
    ))
    .unwrap();
    assert_eq!(archive.as_json()["content"]["verifier_version"], "0.8.0");
    schema_python(
        r#"
for schema in ('governance-v2','store-v2'):
    for name,envelope in documents.items():
        assert validator(schema,'envelope').is_valid(envelope),(schema,name,'envelope')
        for definition,key in [('verification_content','content'),('manifest','expected_check_manifest'),('report','report')]:
            value=envelope[key];check=validator(schema,definition)
            assert check.is_valid(value),(schema,name,definition)
            bad=copy.deepcopy(value);bad['verifier_version']='unknown.version'
            assert not check.is_valid(bad),(schema,definition,'unknown verifier')
            bad=copy.deepcopy(value);bad['unknown_field']=True
            assert not check.is_valid(bad),(schema,definition,'open provenance')
        for obligation in envelope['expected_check_manifest']['obligations']:
            check=validator(schema,'descriptor');value=obligation['descriptor']
            assert check.is_valid(value),(schema,name,'descriptor')
            bad=copy.deepcopy(value);bad['verifier_version']='unknown.version'
            assert not check.is_valid(bad),(schema,'descriptor','unknown verifier')
            bad=copy.deepcopy(value);bad['unknown_field']=True
            assert not check.is_valid(bad),(schema,'descriptor','open provenance')
"#,
        &json!({"fresh09":proof.envelope.as_json(),"authentic_archive08":archive.as_json()}),
    );
}

#[test]
fn schema_nested_current_profile_closure_controls() {
    let mut documents = schema_action_candidates();
    for entry in documents.as_array_mut().unwrap() {
        let record = &entry["candidate"]["content"]["record"];
        assert!(behavior_core::DecisionRecord::from_json(&record.to_string()).is_ok());
        if record["record_version"] == "0.8" {
            for fault in [
                "missing_validation",
                "wrong_validation",
                "unknown_field",
                "wrong_language",
            ] {
                let mut bad = record.clone();
                match fault {
                    "missing_validation" => {
                        bad.as_object_mut().unwrap().remove("validation_profile");
                    }
                    "wrong_validation" => bad["validation_profile"] = json!("unknown.validation"),
                    "unknown_field" => bad["unknown_field"] = json!(true),
                    "wrong_language" => bad["semantic_profile"] = json!("unknown.language"),
                    _ => unreachable!(),
                }
                assert!(
                    behavior_core::DecisionRecord::from_json(&bad.to_string()).is_err(),
                    "{fault}"
                );
            }
        }
    }
    schema_python(
        r#"
legacy=json.loads((root/'tests/fixtures/governance-v2/legacy-required-history.json').read_text())['bundle']['record']
assert legacy['record_version'] in ('0.4','0.5','0.6')
for schema in ('governance-v2','store-v2'):
    nested=validator(schema,'decision_record')
    assert nested.is_valid(legacy),(schema,'frozen legacy positive prerequisite')
    for entry in documents:
        record=entry['candidate']['content']['record']
        canonical=validator('decision-record-'+record['record_version'])
        assert canonical.is_valid(record),entry['name']
        mutations=[]
        bad=copy.deepcopy(record);bad['unknown_field']=True;mutations.append(bad)
        bad=copy.deepcopy(record);bad['record_version']='0.9';mutations.append(bad)
        if record['record_version']=='0.8':
            bad=copy.deepcopy(record);bad.pop('validation_profile');mutations.append(bad)
            bad=copy.deepcopy(record);bad['validation_profile']='unknown.validation';mutations.append(bad)
            bad=copy.deepcopy(record);bad['semantic_profile']='unknown.language';mutations.append(bad)
            bad=copy.deepcopy(record)
            if 'semantic_profile' in bad: bad.pop('commands')
            else: bad['commands']={'declarations':[],'intents':[],'types':[]}
            mutations.append(bad)
        else:
            bad=copy.deepcopy(record);bad['validation_profile']='behavior.complete_resulting_state.v1';mutations.append(bad)
        for bad in mutations:
            assert not canonical.is_valid(bad),(entry['name'],'canonical mutation escaped')
            assert not nested.is_valid(bad),(schema,entry['name'],'nested mutation escaped')
"#,
        &documents,
    );
}
fn ep_for(p: &Value) -> EvidencePolicyV2 {
    let mut e = raw("evidence-policy.json");
    e["execution_policies"] =
        json!([behavior_verify::hashing::document_hash("behavior.policy.v2", p).unwrap()]);
    EvidencePolicyV2::from_json(&e.to_string()).unwrap()
}
fn q_for(p: &ExecutionPolicyV2, time: &str) -> AuthorizationContextV2 {
    let mut q = raw("context-unbound.json");
    q["policy_time"] = json!(time);
    AuthorizationContextV2::from_json(&q.to_string(), p).unwrap()
}
fn create(e: EvidencePolicyV2, seeds: Vec<SeedEntity>) -> Store<InMemoryBackend> {
    let m = common::ledger();
    Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_v2_for(&m, e, seeds).unwrap(),
    )
    .unwrap()
}
fn evidence(
    b: &CommitBundle,
    e: &EvidencePolicyV2,
    p: &ExecutionPolicyV2,
    q: &AuthorizationContextV2,
) -> EvidenceV2 {
    let m = common::ledger();
    let key = raw("evidence-policy.json")["trusted_authorities"][0]["key_id"]
        .as_str()
        .unwrap()
        .to_string();
    let a = authorize_trusted(
        &GovernanceSubject::Module(&m),
        &b.governance_candidate().unwrap(),
        e,
        p,
        &[],
        &key,
        q,
    )
    .unwrap();
    let seed = common::read(&common::fixtures().join("governance-v2/authorizer.seed"));
    let signed = sign_authorization(&a, seed.trim()).unwrap();
    EvidenceV2::from_json(&json!({"format":"behavior.evidence.v2","execution_policy":p.as_json(),"authorization":signed.as_json(),
        "verifications":[],"waivers":[],"waiver_signatures":[]}).to_string()).unwrap()
}
fn historical() -> (Store<InMemoryBackend>, CommitBundle, String) {
    let v = raw("legacy-required-history.json");
    let g: Genesis = serde_json::from_value(v["genesis"].clone()).unwrap();
    let h0: Head = serde_json::from_value(v["head0"].clone()).unwrap();
    let h1: Head = serde_json::from_value(v["head1"].clone()).unwrap();
    let seeds: Vec<EntityVersion> = serde_json::from_value(v["seed_versions"].clone()).unwrap();
    let new: Vec<EntityVersion> = serde_json::from_value(v["new_versions"].clone()).unwrap();
    let r: TransitionRecord = serde_json::from_value(v["record"].clone()).unwrap();
    let b: CommitBundle = serde_json::from_value(v["bundle"].clone()).unwrap();
    let mut backend = InMemoryBackend::new();
    backend.create(&g, &h0, &seeds, &[]).unwrap();
    backend
        .commit(&h0.last_record, &new, &[], &[], &r, &h1)
        .unwrap();
    (
        Store::open(backend).unwrap(),
        b,
        v["committed"].as_str().unwrap().to_string(),
    )
}

#[test]
fn legacy_required_store_refuses_a_new_self_hashed_allow_before_mutation() {
    let v = raw("legacy-required-history.json");
    let g: Genesis = serde_json::from_value(v["genesis"].clone()).unwrap();
    let m = common::ledger();
    let mut s = Store::create(InMemoryBackend::new(), &m, g).unwrap();
    let b: CommitBundle = serde_json::from_value(v["bundle"].clone()).unwrap();
    let before = s.backend().head().unwrap();
    let e = s.commit(&m, &b.evaluated_state, &b).unwrap_err();
    assert_eq!(e.code(), "TRUSTED_GOVERNANCE_UPGRADE_REQUIRED");
    assert_eq!(s.backend().head().unwrap(), before);
    assert!(s.backend().record(1).unwrap().is_none());
}

#[test]
fn historical_required_store_recovery_remains_read_only_and_structural() {
    let (mut s, b, id) = historical();
    let before = s.backend().head().unwrap();
    let c = s.commit(&common::ledger(), &b.evaluated_state, &b).unwrap();
    assert!(c.already);
    assert_eq!(c.record_id, id);
    assert_eq!(c.evidence_trust, Some("structural"));
    assert_eq!(s.backend().head().unwrap(), before);
    let start = StateRef {
        state: raw("legacy-required-history.json")["head0"]["state_ref"]["state"]
            .as_str()
            .unwrap()
            .into(),
        position: 0,
    };
    assert!(behavior_store::replay::replay_data(&s, &start, &s.current().unwrap()).ok);
}

#[test]
fn authenticated_commit_requires_independent_context_and_archives_the_compared_value() {
    let raw_p = raw("policy-none.json");
    let p = ExecutionPolicyV2::from_json(&raw_p.to_string()).unwrap();
    let ep = ep_for(&raw_p);
    let mut s = create(ep.clone(), common::default_seed());
    let q = q_for(&p, "2026-10-05T12:00:00Z");
    let before = s.backend().head().unwrap();
    let b = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    let ev = evidence(&b, &ep, &p, &q);
    let b = b.with_trusted_evidence(&ev).unwrap();
    let error = s
        .commit(&common::ledger(), &b.evaluated_state, &b)
        .unwrap_err();
    assert_eq!(error.code(), "CONTEXT_REQUIRED");
    assert_eq!(s.backend().head().unwrap(), before);
    let c = s
        .commit_with_context(&common::ledger(), &b.evaluated_state, &b, &q)
        .unwrap();
    assert_eq!(c.evidence_trust, Some("authenticated"));
    let r = serde_json::to_value(s.backend().record(1).unwrap().unwrap()).unwrap();
    assert_eq!(r["bundle"]["authorization_context"], q.as_json());
}

#[test]
fn independent_context_substitution_is_refused_even_with_valid_signed_context() {
    let raw_p = raw("policy-none.json");
    let p = ExecutionPolicyV2::from_json(&raw_p.to_string()).unwrap();
    let ep = ep_for(&raw_p);
    let mut s = create(ep.clone(), common::default_seed());
    let q = q_for(&p, "2026-10-05T12:00:00Z");
    let b = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    let b = b.with_trusted_evidence(&evidence(&b, &ep, &p, &q)).unwrap();
    let before = s.backend().head().unwrap();
    let different = q_for(&p, "2026-10-06T12:00:00Z");
    let error = s
        .commit_with_context(&common::ledger(), &b.evaluated_state, &b, &different)
        .unwrap_err();
    assert_eq!(error.code(), "CONTEXT_MISMATCH");
    assert_eq!(s.backend().head().unwrap(), before);
    assert!(s.backend().record(1).unwrap().is_none());
}

#[test]
fn cross_store_candidate_and_authorization_cannot_be_reused() {
    let raw_p = raw("policy-none.json");
    let p = ExecutionPolicyV2::from_json(&raw_p.to_string()).unwrap();
    let ep = ep_for(&raw_p);
    let s = create(ep.clone(), common::default_seed());
    let mut other = create(
        ep.clone(),
        common::seed(&[("a1", true, "80.00"), ("a2", true, "5.00")]),
    );
    let q = q_for(&p, "2026-10-05T12:00:00Z");
    let b = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    let b = b.with_trusted_evidence(&evidence(&b, &ep, &p, &q)).unwrap();
    let before = other.backend().head().unwrap();
    assert!(
        other
            .commit_with_context(&common::ledger(), &b.evaluated_state, &b, &q)
            .is_err()
    );
    assert_eq!(other.backend().head().unwrap(), before);
}

#[test]
fn missing_required_verification_cannot_be_replaced_with_a_valid_authorizer_signature() {
    let raw_p = raw("policy.json");
    let p = ExecutionPolicyV2::from_json(&raw_p.to_string()).unwrap();
    let ep = ep_for(&raw_p);
    let mut s = create(ep.clone(), common::default_seed());
    let q = AuthorizationContextV2::from_json(&raw("context.json").to_string(), &p).unwrap();
    let b = common::transfer(&s, "a1", "a2", "1.00", "2026-10-05T12:00:00Z")
        .bundle
        .unwrap();
    let b = b.with_trusted_evidence(&evidence(&b, &ep, &p, &q)).unwrap();
    let before = s.backend().head().unwrap();
    let error = s
        .commit_with_context(&common::ledger(), &b.evaluated_state, &b, &q)
        .unwrap_err();
    assert_eq!(error.code(), "POLICY_REFUSED");
    assert_eq!(s.backend().head().unwrap(), before);
}

#[test]
fn bound_bundle_time_is_checked_without_changing_candidate_identity() {
    let mut raw_p = raw("policy-none.json");
    raw_p["bind_commit_time"] = json!(true);
    let p = ExecutionPolicyV2::from_json(&raw_p.to_string()).unwrap();
    let ep = ep_for(&raw_p);
    let mut raw_q = raw("context-unbound.json");
    raw_q["requested_commit_time"] = json!("2026-10-05T12:00:00Z");
    let q = AuthorizationContextV2::from_json(&raw_q.to_string(), &p).unwrap();
    let mut s = create(ep.clone(), common::default_seed());
    let b = common::transfer(&s, "a1", "a2", "1.00", "2026-10-05T12:00:00Z")
        .bundle
        .unwrap();
    let ev = evidence(&b, &ep, &p, &q);
    let mut b = b.with_trusted_evidence(&ev).unwrap();
    let candidate = b.governance_candidate().unwrap().as_json();
    b.commit_time = "2026-10-05T12:00:01Z".into();
    assert_eq!(b.governance_candidate().unwrap().as_json(), candidate);
    let before = s.backend().head().unwrap();
    assert!(
        s.commit_with_context(&common::ledger(), &b.evaluated_state, &b, &q)
            .is_err()
    );
    assert_eq!(s.backend().head().unwrap(), before);
}

#[test]
fn legacy_adoption_exports_exact_live_state_into_a_distinct_v2_lineage() {
    let (old, _, _) = historical();
    let m = common::ledger();
    let old_history = old.current_history().unwrap();
    let bytes = serde_json::to_value(old.backend().record(1).unwrap()).unwrap();
    let export = old.export_seed_at(&m, &old_history).unwrap();
    assert_eq!(export.source_history, old_history);
    assert_eq!(export.state, old.current().unwrap().state);
    assert_eq!(export.schema, behavior_core::schema(&m).hash);
    let none = EvidencePolicyV2::from_json(&raw("evidence-policy-none.json").to_string()).unwrap();
    let new = create(none, export.seed);
    assert_eq!(new.current().unwrap().state, old.current().unwrap().state);
    assert_eq!(new.current().unwrap().position, 0);
    assert_ne!(new.store_id().unwrap(), old.store_id().unwrap());
    for id in ["a1", "a2"] {
        let k = EntityKey {
            entity: "Account".into(),
            id: id.into(),
        };
        assert_eq!(
            new.backend().version_at(&k, 0).unwrap().unwrap().revision,
            1
        );
    }
    assert_eq!(
        serde_json::to_value(old.backend().record(1).unwrap()).unwrap(),
        bytes
    );
}

#[test]
fn none_policy_still_rejects_supplied_invalid_evidence_before_any_write() {
    let ep = EvidencePolicyV2::from_json(&raw("evidence-policy-none.json").to_string()).unwrap();
    let mut s = create(ep, common::default_seed());
    let mut b = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    b.evidence = Some(
        Evidence {
            authorization: json!({"decision":"allow"}),
            execution_policy: None,
            attestation: None,
            waivers: vec![],
        }
        .into(),
    );
    let before = s.backend().head().unwrap();
    assert!(s.commit(&common::ledger(), &b.evaluated_state, &b).is_err());
    assert_eq!(s.backend().head().unwrap(), before);
}

#[test]
fn authenticated_recovery_uses_original_archived_context_after_later_commits() {
    let raw_p = raw("policy-none.json");
    let p = ExecutionPolicyV2::from_json(&raw_p.to_string()).unwrap();
    let ep = ep_for(&raw_p);
    let mut s = create(ep.clone(), common::default_seed());
    let q = q_for(&p, "2026-10-05T12:00:00Z");
    let first = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    let first = first
        .with_trusted_evidence(&evidence(&first, &ep, &p, &q))
        .unwrap();
    let c = s
        .commit_with_context(&common::ledger(), &first.evaluated_state, &first, &q)
        .unwrap();
    let second = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    let second = second
        .with_trusted_evidence(&evidence(&second, &ep, &p, &q))
        .unwrap();
    s.commit_with_context(&common::ledger(), &second.evaluated_state, &second, &q)
        .unwrap();
    let before = s.backend().head().unwrap();
    let recovered = s
        .commit(&common::ledger(), &first.evaluated_state, &first)
        .unwrap();
    assert!(recovered.already);
    assert_eq!(recovered.record_id, c.record_id);
    assert_eq!(recovered.evidence_trust, Some("authenticated"));
    assert_eq!(s.backend().head().unwrap(), before);
}

#[test]
fn migration_uses_the_same_trusted_relation_and_independent_context() {
    let source = behavior_core::admit(&common::read(
        &common::fixtures().join("soundness/migration-source-a.json"),
    ))
    .unwrap();
    let target = behavior_core::admit(&common::read(
        &common::fixtures().join("soundness/migration-target.json"),
    ))
    .unwrap();
    let l = json!({"file":"governance-migration.dsl","line":1});
    let doc = json!({"migration_ir":"0.1","name":"add_z","source":behavior_core::schema(&source).hash,"target":behavior_core::schema(&target).hash,
        "constants":[],"requirements":[],"transforms":[{"entity":"E","fields":{"z":{"op":"derived","name":"calc","args":["old"],"loc":l}},"drops":[]}],"retire":[]});
    let migration =
        behavior_core::migration::admit_migration(&source, &target, &doc.to_string()).unwrap();
    let raw_p = raw("policy-none.json");
    let p = ExecutionPolicyV2::from_json(&raw_p.to_string()).unwrap();
    let required = ep_for(&raw_p).as_json();
    let mut raw_ep = raw("evidence-policy-none.json");
    let mut rule = required.clone();
    rule.as_object_mut().unwrap().remove("format");
    raw_ep["migration"] = rule;
    let ep = EvidencePolicyV2::from_json(&raw_ep.to_string()).unwrap();
    let mut s = Store::create(
        InMemoryBackend::new(),
        &source,
        genesis_v2_for(
            &source,
            ep.clone(),
            vec![SeedEntity {
                entity: "E".into(),
                value: json!({"id":"only","x":1,"y":2}),
            }],
        )
        .unwrap(),
    )
    .unwrap();
    let prepared = s
        .prepare_migration(&source, &target, &migration, common::T0, None)
        .unwrap();
    let before = s.backend().head().unwrap();
    let error = s
        .commit_prepared_migration(&source, &target, &migration, &prepared, None, None)
        .unwrap_err();
    assert_eq!(error.code(), "CONTEXT_REQUIRED");
    assert_eq!(s.backend().head().unwrap(), before);
    let q = q_for(&p, "2026-10-05T12:00:00Z");
    let issuer = required["trusted_authorities"][0]["key_id"]
        .as_str()
        .unwrap();
    let subject = GovernanceSubject::Migration(&migration, &source, &target);
    let a = authorize_trusted(
        &subject,
        &prepared.governance_candidate().unwrap(),
        &ep,
        &p,
        &[],
        issuer,
        &q,
    )
    .unwrap();
    let seed = common::read(&common::fixtures().join("governance-v2/authorizer.seed"));
    let signed = sign_authorization(&a, seed.trim()).unwrap();
    let ev=EvidenceV2::from_json(&json!({"format":"behavior.evidence.v2","execution_policy":p.as_json(),"authorization":signed.as_json(),"verifications":[],"waivers":[],"waiver_signatures":[]}).to_string()).unwrap();
    let c = s
        .commit_prepared_migration(&source, &target, &migration, &prepared, Some(&ev), Some(&q))
        .unwrap();
    assert_eq!(c.evidence_trust, Some("authenticated"));
    assert_eq!(c.result_state.position, 1);
}

#[test]
fn exact_behavior_and_store_rederived_delta_cannot_be_substituted_after_authorization() {
    let raw_p = raw("policy-none.json");
    let p = ExecutionPolicyV2::from_json(&raw_p.to_string()).unwrap();
    let ep = ep_for(&raw_p);
    let mut s = create(ep.clone(), common::default_seed());
    let q = q_for(&p, "2026-10-05T12:00:00Z");
    let b = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    let signed = b.with_trusted_evidence(&evidence(&b, &ep, &p, &q)).unwrap();
    let before = s.backend().head().unwrap();
    let mut tampered = signed.clone();
    tampered.write_set[0].new = json!("999.00");
    assert!(
        s.commit_with_context(&common::ledger(), &tampered.evaluated_state, &tampered, &q)
            .is_err()
    );
    let mut wire = common::json(&common::fixtures().join("wire/valid/ledger.json"));
    wire["actions"][1]["name"] = json!("different_public_capability");
    let other = behavior_core::admit(&wire.to_string()).unwrap();
    assert_eq!(
        behavior_core::schema(&other).hash,
        behavior_core::schema(&common::ledger()).hash
    );
    assert!(
        s.commit_with_context(&other, &signed.evaluated_state, &signed, &q)
            .is_err()
    );
    assert_eq!(s.backend().head().unwrap(), before);
    assert!(s.backend().record(1).unwrap().is_none());
}

#[path = "support/history_backend.rs"]
mod replay_faults;

#[test]
fn both_replays_check_authenticated_history_and_archived_policy_context() {
    use behavior_store::replay::{replay_behavior_with, replay_data};
    use std::collections::BTreeMap;
    let m = common::ledger();
    let p = ExecutionPolicyV2::from_json(&raw("policy-none.json").to_string()).unwrap();
    let ep = ep_for(&p.as_json());
    let q = q_for(&p, "2026-10-05T12:00:00Z");
    for fault in [
        "valid",
        "context",
        "missing_evidence",
        "authorization_reference",
    ] {
        let mut s = Store::create(
            replay_faults::FaultBackend::default(),
            &m,
            genesis_v2_for(&m, ep.clone(), common::default_seed()).unwrap(),
        )
        .unwrap();
        let start = s.current().unwrap();
        let b = common::transfer(&s, "a1", "a2", "1.00", common::T0)
            .bundle
            .unwrap();
        let signed = b.with_trusted_evidence(&evidence(&b, &ep, &p, &q)).unwrap();
        let end = s
            .commit_with_context(&m, &start, &signed, &q)
            .unwrap()
            .result_state;
        if fault != "valid" {
            let mut event = s.backend().record(1).unwrap().unwrap();
            let bundle = event.bundle.as_mut().unwrap();
            match fault {
                "context" => {
                    bundle.authorization_context.as_mut().unwrap()["policy_time"] =
                        json!("2026-10-05T12:00:01Z")
                }
                "missing_evidence" => {
                    bundle.evidence = None;
                    bundle.authorization_context = None;
                    event.authorization = None;
                }
                _ => event.authorization = Some(format!("sha256:{}", "ff".repeat(32))),
            }
            // Recompute all mere structural hashes. Trust/policy integrity must
            // still refuse, rather than relying on an unrecomputed hash assertion.
            event.bundle_hash = bundle.hash().unwrap();
            let mut head = s.backend().head().unwrap().unwrap();
            head.last_record = event.hash().unwrap();
            s.backend_mut().records.insert(1, event);
            s.backend_mut().head_override = Some(head);
        }
        let modules = BTreeMap::from([(m.behavior_version(), m.clone())]);
        assert_eq!(
            replay_behavior_with(&s, &modules, &BTreeMap::new(), &start, &end).ok,
            fault == "valid",
            "behavior: {fault}"
        );
        assert_eq!(
            replay_data(&s, &start, &end).ok,
            fault == "valid",
            "data: {fault}"
        );
    }
}

#[test]
fn new_governance_and_store_schemas_match_closed_fixture_and_runtime_shapes() {
    let p = ExecutionPolicyV2::from_json(&raw("policy-none.json").to_string()).unwrap();
    let ep = ep_for(&p.as_json());
    let q = q_for(&p, "2026-10-05T12:00:00Z");
    let mut s = create(ep.clone(), common::default_seed());
    let b = common::transfer(&s, "a1", "a2", "1.00", common::T0)
        .bundle
        .unwrap();
    let candidate = b.governance_candidate().unwrap();
    let ev = evidence(&b, &ep, &p, &q);
    let signed = b.with_trusted_evidence(&ev).unwrap();
    let start = s.current_history().unwrap();
    s.commit_with_context(&common::ledger(), &signed.evaluated_state, &signed, &q)
        .unwrap();
    let proof_module = behavior_core::admit(&common::read(
        &common::fixtures().join("soundness/module.json"),
    ))
    .unwrap();
    let profile = behavior_verify::Profile {
        checks: vec![behavior_verify::CheckKind::EvaluationError],
        ..behavior_verify::Profile::default()
    };
    let seed = common::read(&common::fixtures().join("governance-v2/verifier.seed"));
    let proof = verify_authenticated(
        &GovernanceSubject::Module(&proof_module),
        &profile,
        seed.trim(),
        &behavior_verify::solver::Z3Process::from_env().unwrap(),
    )
    .unwrap();
    let (mut migrated, source, target, migration) = none_migration_store();
    let prepared = migrated
        .prepare_migration(&source, &target, &migration, common::T0, None)
        .unwrap();
    let migration_candidate = prepared.governance_candidate().unwrap();
    migrated
        .commit_prepared_migration(&source, &target, &migration, &prepared, None, None)
        .unwrap();
    let migration_event = migrated.backend().record(1).unwrap().unwrap();
    let migration_proof = verify_migration_authenticated(
        &migration,
        &source,
        &target,
        &profile,
        seed.trim(),
        &behavior_verify::solver::Z3Process::from_env().unwrap(),
    )
    .unwrap();
    let waiver = json!({"behavior_version":proof_module.behavior_version(),"finding_hash":format!("sha256:{}","ab".repeat(32)),"profile_hash":proof.envelope.report()["profile_hash"],"verifier_version":"0.7.0","rationale":"schema compatibility fixture","expires_at":"2026-11-01T00:00:00Z"});
    let waiver_signature =
        behavior_verify::governance::sign_waiver(seed.trim(), &waiver.to_string()).unwrap();
    let documents = json!({"auxiliary":{"waiver":waiver,"waiver_signature":waiver_signature},"governance":[ep.as_json(),p.as_json(),q.as_json(),candidate.as_json(),ev.as_json(),ev.authorization().as_json(),proof.envelope.as_json(),proof.envelope.manifest(),proof.envelope.report(),migration_candidate.as_json(),migration_proof.envelope.as_json()],
        "store":[serde_json::to_value(&migration_event).unwrap(),serde_json::to_value(migration_event.migration.unwrap()).unwrap(),serde_json::to_value(s.genesis().unwrap()).unwrap(),serde_json::to_value(s.backend().record(1).unwrap().unwrap()).unwrap(),serde_json::to_value(s.backend().record(1).unwrap().unwrap().bundle.unwrap()).unwrap(),start.as_json(),s.current_history().unwrap().as_json(),serde_json::to_value(s.export_seed_at(&common::ledger(),&s.current_history().unwrap()).unwrap()).unwrap()]});
    let program = r#"
for group,name in [('governance','governance-v2'),('store','store-v2')]:
    schema=json.loads((root/f'schema/{name}.schema.json').read_text())
    Draft202012Validator.check_schema(schema)
    validator=Draft202012Validator(schema,registry=registry)
    for doc in documents[group]:
        errors=list(validator.iter_errors(doc))
        assert not errors,(doc.get('format'),[e.message for e in errors])
        changed=copy.deepcopy(doc);changed['unknown_field']=True
        assert not validator.is_valid(changed),doc.get('format')
        changed=copy.deepcopy(doc);changed['format']='unknown.version'
        assert not validator.is_valid(changed)
for definition,doc in documents['auxiliary'].items():
    schema=json.loads((root/'schema/governance-v2.schema.json').read_text())
    schema.pop('oneOf');schema['$ref']='#/$defs/'+definition
    validator=Draft202012Validator(schema,registry=registry)
    assert validator.is_valid(doc),(definition,list(validator.iter_errors(doc)))
    changed=copy.deepcopy(doc);changed['unknown_field']=True
    assert not validator.is_valid(changed),definition
q=documents['governance'][2]
for field in ('policy_time','requested_commit_time','required_context'):
    changed=copy.deepcopy(q);changed.pop(field)
    assert not Draft202012Validator(json.loads((root/'schema/governance-v2.schema.json').read_text()),registry=registry).is_valid(changed),field
policy=documents['governance'][1]
for field in ('bind_commit_time','required_context'):
    changed=copy.deepcopy(policy);changed.pop(field)
    assert not Draft202012Validator(json.loads((root/'schema/governance-v2.schema.json').read_text()),registry=registry).is_valid(changed),field
report=documents['governance'][8]
for field in ('checks','expected_check_manifest_hash'):
    changed=copy.deepcopy(report);changed.pop(field)
    assert not Draft202012Validator(json.loads((root/'schema/governance-v2.schema.json').read_text()),registry=registry).is_valid(changed),field
"#;
    schema_python(program, &documents);
}

#[test]
fn v2_genesis_rejects_noncanonical_seed_identity_and_declaration_representations() {
    let m = common::ledger();
    let e = EvidencePolicyV2::from_json(&raw("evidence-policy-none.json").to_string()).unwrap();
    let canonical = genesis_v2_for(&m, e, common::default_seed()).unwrap();
    for fault in [
        "reordered",
        "duplicate",
        "unknown_type",
        "invalid_declaration",
        "invalid_id",
    ] {
        let mut g = serde_json::to_value(&canonical).unwrap();
        match fault {
            "reordered" => g["seed"].as_array_mut().unwrap().reverse(),
            "duplicate" => {
                let first = g["seed"][0].clone();
                g["seed"].as_array_mut().unwrap().push(first);
            }
            "unknown_type" => g["seed"][0]["entity"] = json!("NotDeclared"),
            "invalid_declaration" => {
                let key = g["entity_declarations"]
                    .as_object()
                    .unwrap()
                    .keys()
                    .next()
                    .unwrap()
                    .clone();
                g["entity_declarations"][key] = json!("sha256:aa");
            }
            _ => g["seed"][0]["value"]["id"] = json!(""),
        }
        assert!(
            Genesis::from_json(&g.to_string()).is_err(),
            "accepted {fault}"
        );
    }
}

fn none_migration_store() -> (
    Store<replay_faults::FaultBackend>,
    behavior_core::semantic::module::Module,
    behavior_core::semantic::module::Module,
    behavior_core::migration::Migration,
) {
    let source = behavior_core::admit(&common::read(
        &common::fixtures().join("soundness/migration-source-a.json"),
    ))
    .unwrap();
    let target = behavior_core::admit(&common::read(
        &common::fixtures().join("soundness/migration-target.json"),
    ))
    .unwrap();
    let doc = json!({"migration_ir":"0.1","name":"add_z","source":behavior_core::schema(&source).hash,"target":behavior_core::schema(&target).hash,"constants":[],"requirements":[],"transforms":[{"entity":"E","fields":{"z":{"op":"derived","name":"calc","args":["old"],"loc":{"file":"migration.dsl","line":1}}},"drops":[]}],"retire":[]});
    let migration =
        behavior_core::migration::admit_migration(&source, &target, &doc.to_string()).unwrap();
    let ep = EvidencePolicyV2::from_json(&raw("evidence-policy-none.json").to_string()).unwrap();
    let store = Store::create(
        replay_faults::FaultBackend::default(),
        &source,
        genesis_v2_for(
            &source,
            ep,
            vec![SeedEntity {
                entity: "E".into(),
                value: json!({"id":"only","x":1,"y":2}),
            }],
        )
        .unwrap(),
    )
    .unwrap();
    (store, source, target, migration)
}

#[test]
fn v2_migration_replay_binds_candidate_to_actual_source_reads_and_transformation() {
    for fault in ["valid", "reads", "writes", "transformation"] {
        let (mut s, source, target, migration) = none_migration_store();
        let start = s.current().unwrap();
        let prepared = s
            .prepare_migration(&source, &target, &migration, common::T0, None)
            .unwrap();
        let end = s
            .commit_prepared_migration(&source, &target, &migration, &prepared, None, None)
            .unwrap()
            .result_state;
        if fault != "valid" {
            let mut event = s.backend().record(1).unwrap().unwrap();
            let bundle = event.migration.as_mut().unwrap();
            let candidate = bundle.candidate.as_mut().unwrap();
            match fault {
                "reads" => candidate["content"]["read_set"] = json!([]),
                "writes" => candidate["content"]["write_set"] = json!([]),
                _ => candidate["content"]["transformation"]["entities"][0]["value"]["z"] = json!(2),
            }
            candidate["transition_hash"] = json!(
                behavior_verify::hashing::document_hash(
                    "behavior.candidate_transition.v2",
                    &candidate["content"]
                )
                .unwrap()
            );
            event.bundle_hash = bundle.hash().unwrap();
            let mut head = s.backend().head().unwrap().unwrap();
            head.last_record = event.hash().unwrap();
            head.schema.as_mut().unwrap().migration_record = head.last_record.clone();
            s.backend_mut().records.insert(1, event);
            s.backend_mut().head_override = Some(head);
        }
        assert_eq!(
            behavior_store::replay::replay_data(&s, &start, &end).ok,
            fault == "valid",
            "{fault}"
        );
    }
}

#[test]
fn v2_migration_rejects_legacy_raw_verification_instead_of_claiming_authenticated_proof() {
    let (mut s, source, target, migration) = none_migration_store();
    let prepared = s
        .prepare_migration(&source, &target, &migration, common::T0, None)
        .unwrap();
    s.commit_prepared_migration(&source, &target, &migration, &prepared, None, None)
        .unwrap();
    let mut bundle = s.backend().record(1).unwrap().unwrap().migration.unwrap();
    bundle.verification = Some(json!({"result":"verified"}));
    assert!(
        bundle.hash().is_err(),
        "raw legacy verification has no meaning in authenticated v2"
    );
}
