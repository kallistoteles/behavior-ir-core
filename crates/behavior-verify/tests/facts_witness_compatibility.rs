#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Actual current production and historical transport have distinct evidence roles.
//! Schema success cannot establish exact subject, runtime truth or authorization.
#[path = "../../behavior-core/tests/support/commands.rs"]
mod commands;
mod common;
#[path = "support/trusted.rs"]
mod oracle;

use behavior_core::Facts;
use behavior_core::semantic::module::Module;
use behavior_verify::governance::trusted::{
    GovernanceSubject, VerificationEnvelopeV2, decode_trusted_profile, verify_authenticated,
    verify_migration_authenticated,
};
use behavior_verify::solver::{Solver, Z3Process};
use behavior_verify::{CheckKind, Profile};
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::collections::BTreeSet;
use std::io::Write;
use std::path::{Path, PathBuf};
use std::process::{Command, Stdio};

fn root() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../..")
}
fn digest(bytes: &[u8]) -> String {
    format!("{:x}", Sha256::digest(bytes))
}
fn seal(mut document: Value) -> Value {
    document["content"]["expected_check_manifest_hash"] = json!(oracle::hash(
        "behavior.verification_manifest.v1",
        &document["expected_check_manifest"]
    ));
    document["report"]["expected_check_manifest_hash"] =
        document["content"]["expected_check_manifest_hash"].clone();
    document["content"]["report_hash"] = json!(oracle::hash(
        "behavior.verification_report.v2",
        &document["report"]
    ));
    let hash = oracle::hash("behavior.verification_content.v2", &document["content"]);
    document["verification_hash"] = json!(hash);
    document["signature"] = json!({"format":"behavior.verification_signature.v2",
        "subject_hash":hash,"key_id":oracle::key_id("verifier"),
        "signature":oracle::signature("behavior.verification_signature.v2",&hash,"verifier")});
    document
}
fn admit(wire: &Value) -> Module {
    behavior_core::admit(&wire.to_string()).unwrap_or_else(|e| panic!("{}", e.to_json_string()))
}
fn upgrade(mut wire: Value, version: &str) -> Value {
    wire["ir_version"] = json!(version);
    if version >= "0.7" && wire.get("reads").is_none() {
        wire["reads"] = json!([]);
    }
    if version == "0.8" {
        wire["commands"] = json!([]);
        for action in wire["actions"].as_array_mut().unwrap() {
            action["command_effects"] = json!([]);
        }
    }
    wire
}
fn profile(checks: Vec<CheckKind>) -> Profile {
    Profile {
        checks,
        ..Profile::default()
    }
}
fn produce(module: &Module, profile: &Profile, solver: &Z3Process) -> VerificationEnvelopeV2 {
    let envelope = verify_authenticated(
        &GovernanceSubject::Module(module),
        profile,
        oracle::text("verifier.seed").trim(),
        solver,
    )
    .unwrap()
    .envelope;
    let parsed = VerificationEnvelopeV2::from_json(&envelope.as_json().to_string()).unwrap();
    assert_eq!(parsed.as_json(), envelope.as_json());
    assert_eq!(parsed.hash(), envelope.hash());
    parsed
        .validate_for_subject(
            &GovernanceSubject::Module(module),
            profile,
            &solver.version(),
        )
        .unwrap();
    parsed
}

/// Confirm every reached witness independently; keep the exact record identity/result
/// and observed families for comparison with the frozen baseline run.
fn reproduce(module: &Module, envelope: &VerificationEnvelopeV2) -> (Vec<Value>, BTreeSet<String>) {
    let mut records = vec![];
    let mut families = BTreeSet::new();
    for check in envelope.report()["checks"].as_array().unwrap() {
        if check["witness"].is_null() {
            continue;
        }
        let witness = &check["witness"];
        let site = envelope.manifest()["obligations"]
            .as_array()
            .unwrap()
            .iter()
            .find(|site| site["key"] == check["key"])
            .unwrap();
        let name = site["descriptor"]["semantic_path"][0]["field"]
            .as_str()
            .unwrap();
        let mut request = json!({"data_version":"verification","state":witness["state"],
            "input":witness["input"],"context":witness["context"]});
        if let Some(facts) = witness.get("facts") {
            assert_eq!(Facts::from_json(facts).unwrap().to_json(), *facts);
            families.extend(facts.as_object().unwrap().keys().cloned());
            request["facts"] = facts.clone();
        }
        let record = if site["descriptor"]["phase"] == "read_body" {
            request["read"] = json!(name);
            let record = behavior_core::read::evaluate_read_request(module, &request.to_string())
                .unwrap()
                .record;
            let replay = behavior_core::read::replay_read(module, &record.to_json_string());
            assert!(replay.matches, "{replay:?}");
            record.as_json().clone()
        } else {
            request["action"] = json!(name);
            let record = behavior_core::evaluate(module, &request.to_string());
            record.as_json().clone()
        };
        assert_eq!(record["result"], witness["result"]);
        records.push(
            json!({"key":check["key"],"phase":site["descriptor"]["phase"],
            "record_sha256":digest(record.to_string().as_bytes()),"record":record}),
        );
    }
    (records, families)
}
fn emit(
    row: &str,
    label: &str,
    wire: &Value,
    envelope: &VerificationEnvelopeV2,
    records: Vec<Value>,
    families: BTreeSet<String>,
) {
    println!(
        "CORE024_COMPATIBILITY {}",
        json!({"row":row,"case":label,
        "producer_class":"actual fresh signed Core production","wire":wire["ir_version"],
        "wire_sha256":digest(wire.to_string().as_bytes()),"subject":envelope.as_json()["content"]["subject"],
        "verifier_version":envelope.as_json()["content"]["verifier_version"],
        "profile_hash":envelope.as_json()["content"]["profile_hash"],
        "verification_hash":envelope.hash(),"envelope_sha256":digest(envelope.as_json().to_string().as_bytes()),
        "envelope":envelope.as_json(),"records":records,"emitted_families":families})
    );
}

/// Same independent local Draft202012 oracle as the structure target. It checks
/// the actual governance root and embedded Store envelope, never a Store root.
fn schema_documents(documents: Vec<(String, Value)>) {
    let program = r#"
import copy,json,pathlib,sys
from jsonschema import Draft202012Validator
from referencing import Registry,Resource
registry=Registry()
for name in ('decision-record-0.7','decision-record-0.8'):
    s=json.loads(pathlib.Path(f'schema/{name}.schema.json').read_text())
    registry=registry.with_resource(s['$id'],Resource.from_contents(s))
documents=json.load(sys.stdin); results=[]
for name in ('governance-v2','store-v2'):
    s=json.loads(pathlib.Path(f'schema/{name}.schema.json').read_text())
    if name=='store-v2':
        s.pop('oneOf',None);s['$ref']='#/$defs/envelope'
    Draft202012Validator.check_schema(s)
    v=Draft202012Validator(s,registry=registry)
    for label,document in documents:
        results.append({'schema':name,'case':label,'accepted':v.is_valid(document)})
print(json.dumps(results,sort_keys=True))
"#;
    let mut child = Command::new("python3")
        .args(["-c", program])
        .current_dir(root())
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .unwrap();
    child
        .stdin
        .take()
        .unwrap()
        .write_all(json!(documents).to_string().as_bytes())
        .unwrap();
    let output = child.wait_with_output().unwrap();
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
    let results: Value = serde_json::from_slice(&output.stdout).unwrap();
    println!("CORE024_SHAPES {results}");
    assert!(
        results
            .as_array()
            .unwrap()
            .iter()
            .all(|r| r["accepted"] == true),
        "actual supported producer/archive is rejected: {results}"
    );
}

#[test]
fn current_action_production_covers_every_supported_wire_version() {
    let solver = Z3Process::from_env().unwrap();
    let profile = profile(vec![CheckKind::Postcondition]);
    let original = common::json(&common::fixtures().join("verify/postcondition.json"));
    let mut documents = vec![];
    for version in ["0.4", "0.5", "0.6", "0.7", "0.8"] {
        let wire = upgrade(original.clone(), version);
        let module = admit(&wire);
        let envelope = produce(&module, &profile, &solver);
        let (records, families) = reproduce(&module, &envelope);
        assert!(
            !records.is_empty(),
            "no actual action witness for Wire {version}"
        );
        assert!(records.iter().any(|r| r["record"]["result"] == "DENY"));
        emit("S02", version, &wire, &envelope, records, families);
        documents.push((format!("S02 Wire{version}"), envelope.as_json()));
    }
    schema_documents(documents);
}

#[test]
fn current_query_production_covers_supported_wire_versions_and_observed_families() {
    let solver = Z3Process::from_env().unwrap();
    let profile = profile(vec![CheckKind::Preservation]);
    let original = common::json(&common::fixtures().join("wire/valid/orders.json"));
    let mut documents = vec![];
    for version in ["0.6", "0.7", "0.8"] {
        let mut wire = upgrade(original.clone(), version);
        if version == "0.8" {
            // Wire0.8 intentionally refuses legacy effectless actions. Keep the
            // query-bearing state transitions, rather than inventing a command
            // or claiming the entire older module is a legal version product.
            wire["actions"]
                .as_array_mut()
                .unwrap()
                .retain(|action| !action["effects"].as_array().unwrap().is_empty());
        }
        let module = admit(&wire);
        let envelope = produce(&module, &profile, &solver);
        let (records, families) = reproduce(&module, &envelope);
        for required in ["queries", "fields", "universe"] {
            assert!(
                families.contains(required),
                "Wire{version} did not actually emit {required}: {families:?}"
            );
        }
        assert!(records.iter().any(|r| r["record"]["result"] == "DENY"));
        emit("S04", version, &wire, &envelope, records, families);
        documents.push((format!("S04 Wire{version}"), envelope.as_json()));
    }
    schema_documents(documents);
}

#[test]
fn current_read_production_covers_both_supported_wire_versions() {
    let solver = Z3Process::from_env().unwrap();
    let profile = profile(vec![CheckKind::EvaluationError]);
    let original = common::json(&common::fixtures().join("verify/reads.json"));
    let mut documents = vec![];
    for version in ["0.7", "0.8"] {
        let wire = upgrade(original.clone(), version);
        let module = admit(&wire);
        let envelope = produce(&module, &profile, &solver);
        let (records, families) = reproduce(&module, &envelope);
        assert!(!records.is_empty());
        assert!(
            records
                .iter()
                .all(|r| r["phase"] == "read_body" && r["record"]["result"] == "EVALUATION_ERROR")
        );
        assert!(families.contains("universe"));
        emit("S05", version, &wire, &envelope, records, families);
        documents.push((format!("S05 Wire{version}"), envelope.as_json()));

        // A real state-free read error naturally has no ordinary Facts. This
        // producer control checks optionality without deleting reached evidence.
        let wire = upgrade(
            json!({"ir_version":"0.7","entities":[],"enums":[],
            "nominals":[],"derived":[],"invariants":[],"constraints":[],"actions":[],
            "reads":[{"name":"zero_division","params":[],"loc":commands::loc(),
                "body":{"value":commands::op("div",vec![commands::integer(1),commands::integer(0)])}}]}),
            version,
        );
        let module = admit(&wire);
        let envelope = produce(&module, &profile, &solver);
        let (records, families) = reproduce(&module, &envelope);
        assert_eq!(records.len(), 1);
        assert!(families.is_empty());
        let witness = envelope.report()["checks"]
            .as_array()
            .unwrap()
            .iter()
            .find_map(|check| check["witness"].as_object())
            .unwrap();
        assert!(!witness.contains_key("facts"));
        emit(
            "S05",
            "actual read with omitted Facts",
            &wire,
            &envelope,
            records,
            families,
        );
        documents.push((
            format!("S05 Wire{version} omitted Facts"),
            envelope.as_json(),
        ));

        // Explicit empty Facts is a labelled codec/shape control, rather than
        // a claim that the producer emitted a different historical witness.
        let mut empty = envelope.as_json();
        let check = empty["report"]["checks"]
            .as_array_mut()
            .unwrap()
            .iter_mut()
            .find(|check| !check["witness"].is_null())
            .unwrap();
        check["witness"]["facts"] = json!({});
        let empty = seal(empty);
        let checked = VerificationEnvelopeV2::from_json(&empty.to_string()).unwrap();
        checked
            .validate_for_subject(
                &GovernanceSubject::Module(&module),
                &profile,
                &solver.version(),
            )
            .unwrap();
        println!(
            "CORE024_COMPATIBILITY {}",
            json!({"row":"K03","case":format!("Wire{version} explicit empty Facts"),
            "producer_class":"constructed current codec/shape control","verification_hash":checked.hash(),
            "canonical_sha256":digest(empty.to_string().as_bytes())})
        );
        documents.push((format!("K03 Wire{version} empty Facts"), empty));
    }
    schema_documents(documents);
}

#[test]
fn current_command_production_preserves_reachable_payload_refusal() {
    let wire = commands::ratio_module(commands::boolean(true));
    let module = admit(&wire);
    let profile = profile(vec![CheckKind::EvaluationError]);
    let solver = Z3Process::from_env().unwrap();
    let envelope = produce(&module, &profile, &solver);
    let (records, families) = reproduce(&module, &envelope);
    assert!(records.iter().any(|r| r["record"]["result"] == "ERROR"));
    assert!(
        records
            .iter()
            .all(|r| r["record"]["commands"]["intents"] == json!([]))
    );
    assert!(
        envelope.manifest()["obligations"]
            .as_array()
            .unwrap()
            .iter()
            .any(|site| site["descriptor"]["semantic_path"]
                .as_array()
                .unwrap()
                .iter()
                .any(|segment| segment["field"] == "command_effects"))
    );
    emit(
        "S06",
        "reachable command payload",
        &wire,
        &envelope,
        records,
        families,
    );
    schema_documents(vec![("S06 Wire0.8".into(), envelope.as_json())]);
}

#[test]
fn actual_migration_refusal_has_its_own_witness_product_and_exact_pair() {
    let source = admit(&common::json(
        &common::fixtures().join("migration/modules/cultures_v2.json"),
    ));
    let target = admit(&common::json(
        &common::fixtures().join("migration/modules/cultures_v3.json"),
    ));
    let mut wire = common::json(&common::fixtures().join("migration/valid/region_required.json"));
    wire["requirements"] = json!([]);
    wire["source"] = json!(behavior_core::schema(&source).hash);
    wire["target"] = json!(behavior_core::schema(&target).hash);
    let migration =
        behavior_core::migration::admit_migration(&source, &target, &wire.to_string()).unwrap();
    let solver = Z3Process::from_env().unwrap();
    let profile = Profile::default();
    let envelope = verify_migration_authenticated(
        &migration,
        &source,
        &target,
        &profile,
        oracle::text("verifier.seed").trim(),
        &solver,
    )
    .unwrap()
    .envelope;
    envelope
        .validate_for_subject(
            &GovernanceSubject::Migration(&migration, &source, &target),
            &profile,
            &solver.version(),
        )
        .unwrap();
    let mut refusals = vec![];
    for check in envelope.report()["checks"].as_array().unwrap() {
        if check["witness"].is_null() {
            continue;
        }
        let witness = &check["witness"];
        assert_eq!(witness.as_object().unwrap().len(), 3);
        assert!(witness.get("facts").is_none());
        let refusal = behavior_core::migration::transform_one(
            &migration,
            &source,
            &target,
            witness["entity"].as_str().unwrap(),
            &witness["value"],
        )
        .unwrap_err();
        assert_eq!(witness["refusal_code"], refusal.code);
        refusals.push(json!({"key":check["key"],"witness":witness,"code":refusal.code}));
    }
    assert!(!refusals.is_empty());
    println!(
        "CORE024_COMPATIBILITY {}",
        json!({"row":"S07","producer_class":"actual fresh signed Core production",
        "migration_ir":wire["migration_ir"],"source":source.behavior_version(),"target":target.behavior_version(),
        "migration_hash":migration.hash(),"envelope":envelope.as_json(),"verification_hash":envelope.hash(),
        "envelope_sha256":digest(envelope.as_json().to_string().as_bytes()),"refusals":refusals,
        "emitted_families":[]})
    );
    schema_documents(vec![("S07 MigrationIR0.1".into(), envelope.as_json())]);
}

#[test]
fn genuine_pre017_archive_retains_original_bytes_signature_and_refuses_fresh_promotion() {
    let path = root().join("specs/017-resulting-state-validity/evidence/runs/US2/profiles");
    let bytes = std::fs::read(path.join("archived-receipt-verifier-0.8.json")).unwrap();
    let provenance: Value =
        serde_json::from_slice(&std::fs::read(path.join("archive-proof-run.json")).unwrap())
            .unwrap();
    assert_eq!(
        digest(&bytes),
        provenance["envelope_sha256"].as_str().unwrap()
    );
    assert_eq!(
        provenance["baseline_revision"],
        "932eb8188dc28393213491e27f66e3bc7e273a6b"
    );
    let text = String::from_utf8(bytes.clone()).unwrap();
    let original: Value = serde_json::from_str(&text).unwrap();
    let envelope = VerificationEnvelopeV2::from_json(&text).unwrap();
    assert_eq!(envelope.as_json(), original);
    assert_eq!(envelope.as_json().to_string().as_bytes(), bytes);
    assert_eq!(envelope.as_json()["content"]["verifier_version"], "0.8.0");
    assert!(envelope.report()["checks"].as_array().unwrap().is_empty());
    let module = admit(&common::json(
        &common::fixtures().join("commands/modules/receipt.json"),
    ));
    assert_eq!(
        envelope.as_json()["content"]["subject"]["behavior_hash"],
        module.behavior_version()
    );
    let profile = decode_trusted_profile(&envelope.as_json()["profile"].to_string()).unwrap();
    let error = envelope
        .validate_for_subject(&GovernanceSubject::Module(&module), &profile, "z3 4.16.0")
        .unwrap_err();
    assert_eq!(error.code, "INCOMPLETE_VERIFICATION");
    println!(
        "CORE024_COMPATIBILITY {}",
        json!({"row":"H01","producer_class":"genuine immutable pre017 archive",
        "source":provenance["baseline_revision"],"original_sha256":digest(&bytes),"verification_hash":envelope.hash(),
        "fresh_refusal":error.code,"witness_count":0})
    );
    schema_documents(vec![("H01 genuine0.8 archive".into(), original)]);
}

fn constructed_codec(version: &str) -> (Module, Profile, Value) {
    let module = admit(&common::json(
        &common::fixtures().join("wire/valid/empty.json"),
    ));
    let profile = profile(vec![]);
    let metadata = json!({"subject":{"behavior_hash":module.behavior_version()},"profile_hash":profile.hash(),
        "verifier_version":version,"solver_version":"z3 4.16.0"});
    let mut manifest = metadata.clone();
    manifest["format"] = json!("behavior.verification_manifest.v1");
    manifest["obligations"] = json!([]);
    let mut report = metadata.clone();
    report["format"] = json!("behavior.verification_report.v2");
    report["checks"] = json!([]);
    report["findings"] = json!([]);
    report["result"] = json!("verified");
    let mut content = metadata;
    content["format"] = json!("behavior.verification_content.v2");
    content["issuer_key_id"] = json!(oracle::key_id("verifier"));
    let document = seal(
        json!({"format":"behavior.verification_envelope.v2","content":content,
        "profile":profile.to_json(),"expected_check_manifest":manifest,"report":report}),
    );
    (module, profile, document)
}

#[test]
fn constructed_07_08_codecs_preserve_transport_without_claiming_historical_production() {
    let mut documents = vec![];
    for (row, version) in [("K01", "0.7.0"), ("K02", "0.8.0")] {
        let (module, profile, document) = constructed_codec(version);
        let text = document.to_string();
        let envelope = VerificationEnvelopeV2::from_json(&text).unwrap();
        assert_eq!(envelope.as_json().to_string(), text);
        let error = envelope
            .validate_for_subject(&GovernanceSubject::Module(&module), &profile, "z3 4.16.0")
            .unwrap_err();
        assert_eq!(error.code, "INCOMPLETE_VERIFICATION");
        println!(
            "CORE024_COMPATIBILITY {}",
            json!({"row":row,"producer_class":"constructed codec control",
            "verifier_version":version,"canonical_sha256":digest(text.as_bytes()),"verification_hash":envelope.hash(),
            "fresh_refusal":error.code,"witness_count":0})
        );
        documents.push((format!("{row} constructed{version}"), document));
    }
    schema_documents(documents);
}

#[test]
fn unsupported_verifier_solver_and_wire_combinations_remain_refused() {
    let (_, _, original) = constructed_codec("0.8.0");
    for (label, field, value) in [
        ("unknown verifier", "verifier_version", "99.0.0"),
        ("unknown solver", "solver_version", "other 1.0.0"),
    ] {
        let mut changed = original.clone();
        for part in ["content", "expected_check_manifest", "report"] {
            changed[part][field] = json!(value);
        }
        let changed = seal(changed);
        let error = VerificationEnvelopeV2::from_json(&changed.to_string()).unwrap_err();
        assert_eq!(error.code, "UNSUPPORTED_VERIFIER");
        println!(
            "CORE024_COMPATIBILITY {}",
            json!({"row":"N01","case":label,"phase":"envelope_decode","refusal":error.code})
        );
    }
    let original = common::json(&common::fixtures().join("verify/postcondition.json"));
    for version in ["0.1", "0.2", "0.3"] {
        let mut wire = original.clone();
        wire["ir_version"] = json!(version);
        let refusal = behavior_core::admit(&wire.to_string()).unwrap_err();
        println!(
            "CORE024_COMPATIBILITY {}",
            json!({"row":"N02","wire":version,"phase":"admission",
            "refusal":serde_json::from_str::<Value>(&refusal.to_json_string()).unwrap()})
        );
    }
    let mut early_query = common::json(&common::fixtures().join("wire/valid/orders.json"));
    early_query["ir_version"] = json!("0.5");
    let refusal = behavior_core::admit(&early_query.to_string()).unwrap_err();
    println!(
        "CORE024_COMPATIBILITY {}",
        json!({"row":"N02","case":"query before Wire0.6","phase":"admission",
        "refusal":serde_json::from_str::<Value>(&refusal.to_json_string()).unwrap()})
    );
}

#[test]
fn semantic_contradictions_exact_subject_coverage_and_authentication_remain_checked() {
    let facts = json!({"existence":[{"entity":"Marker","id":"same","exists":true},
        {"entity":"Marker","id":"same","exists":false}]});
    let error = Facts::from_json(&facts).unwrap_err();
    assert_eq!(error.code, "INCONSISTENT_FACTS");
    println!(
        "CORE024_COMPATIBILITY {}",
        json!({"case":"contradictory semantic key","phase":"ordinary_decode","refusal":error.code})
    );
    let wire = common::json(&common::fixtures().join("facts-witness-schema/marker-customer.json"));
    let module = admit(&wire);
    let solver = Z3Process::from_env().unwrap();
    let profile = profile(vec![CheckKind::Postcondition]);
    let envelope = produce(&module, &profile, &solver);
    let (_, _, other_document) = constructed_codec(behavior_verify::VERIFIER_VERSION);
    let other = VerificationEnvelopeV2::from_json(&other_document.to_string()).unwrap();
    let error = other
        .validate_for_subject(
            &GovernanceSubject::Module(&module),
            &profile,
            &solver.version(),
        )
        .unwrap_err();
    assert_eq!(error.code, "INCOMPLETE_VERIFICATION");
    println!(
        "CORE024_COMPATIBILITY {}",
        json!({"case":"wrong exact subject","phase":"subject_validation","refusal":error.code})
    );
    let mut incomplete = envelope.as_json();
    incomplete["expected_check_manifest"]["obligations"] = json!([]);
    let error = VerificationEnvelopeV2::from_json(&seal(incomplete).to_string()).unwrap_err();
    assert_eq!(error.code, "INCOMPLETE_VERIFICATION");
    println!(
        "CORE024_COMPATIBILITY {}",
        json!({"case":"signed incomplete manifest","phase":"envelope_decode","refusal":error.code})
    );
    let mut corrupted = envelope.as_json();
    let mut signature = corrupted["signature"]["signature"]
        .as_str()
        .unwrap()
        .to_string();
    signature.replace_range(
        ..2,
        if signature.starts_with("00") {
            "01"
        } else {
            "00"
        },
    );
    corrupted["signature"]["signature"] = json!(signature);
    let error = VerificationEnvelopeV2::from_json(&corrupted.to_string()).unwrap_err();
    assert_eq!(error.code, "INVALID_SIGNATURE");
    println!(
        "CORE024_COMPATIBILITY {}",
        json!({"case":"invalid signature","phase":"envelope_decode","refusal":error.code})
    );
    for check in envelope.report()["checks"].as_array().unwrap() {
        if check["witness"].is_null() {
            continue;
        }
        let witness = &check["witness"];
        let name = envelope.manifest()["obligations"]
            .as_array()
            .unwrap()
            .iter()
            .find(|o| o["key"] == check["key"])
            .unwrap()["descriptor"]["semantic_path"][0]["field"]
            .clone();
        let marker = witness["state"]["marker"].clone();
        let request = json!({"action":name,"data_version":"verification","state":witness["state"],
            "input":witness["input"],"context":witness["context"],"facts":{
                "universe":[{"entity":"Marker","members":[marker]},{"entity":"Customer","members":[]}],
                "existence":[{"entity":"Marker","id":marker["id"],"exists":false}]}});
        let result = behavior_core::evaluate(&module, &request.to_string());
        assert_eq!(result.result(), "INVALID_INPUT");
        assert_eq!(result.as_json()["reasons"][0]["code"], "INCONSISTENT_FACTS");
        println!(
            "CORE024_COMPATIBILITY {}",
            json!({"case":"facts contradict exact parent universe",
            "phase":"evaluation_input","result":result.as_json()})
        );
    }
}
