//! Whole research consumer operations. Expected subjects are separate inputs.
use crate::{
    artifacts::{DOCUMENT_BOUND, PACKET_BOUND, parse_json},
    capture::Capture,
    error::{Result, StudyError, library},
    history_check::{self, Attempt, Expected, HistoryPacket},
    io,
};
use behavior_engine::{
    semantic::Module,
    store::{Store, documents::HistoryRef},
};
use behavior_models::safety::UncertifiedSafetyAnalysis;
use serde::Deserialize;
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::{path::Path, time::Instant};
pub fn validate_prepared(v: &Value) -> Result<()> {
    const FIELDS: &[&str] = &[
        "format",
        "behavior",
        "policy_set_hash",
        "bundle",
        "bundle_sha256",
        "oracle",
        "oracle_sha256",
        "consumer_role",
        "variant",
        "packet",
        "packet_sha256",
        "commands_bundle",
        "commands_bundle_sha256",
        "resident",
        "control_variant",
        "growth",
        "growth_reference",
        "growth_reference_sha256",
    ];
    if v["format"] != "core034.prepared-worker.v1"
        || v.as_object()
            .is_none_or(|o| o.keys().any(|k| !FIELDS.contains(&k.as_str())))
    {
        return Err(StudyError::InvalidInput(
            "PreparedVersionOrUnknownField".into(),
        ));
    }
    Ok(())
}
pub fn bound_json(v: &Value, key: &str, digest_key: &str, limit: usize) -> Result<Value> {
    let bytes = io::read_bytes(Path::new(io::text(v, key)?), limit)?;
    if format!("{:x}", Sha256::digest(&bytes)) != io::text(v, digest_key)? {
        return Err(StudyError::Prerequisite("InputByteBindingMismatch"));
    }
    parse_json(&bytes, limit).map_err(library)
}
pub fn packet(
    store: &Store<Capture>,
    module: &Module,
    analysis: &UncertifiedSafetyAnalysis,
    run: &Value,
) -> Result<HistoryPacket> {
    let rows = run["attempts"]
        .as_array()
        .ok_or(StudyError::Prerequisite("MissingAttemptRecords"))?;
    let mut attempts = vec![];
    for row in rows {
        attempts.push(Attempt {
            invocation: row["invocation"].clone(),
            before: HistoryRef::from_json(&row["before"].to_string()).map_err(library)?,
            after: HistoryRef::from_json(&row["after"].to_string()).map_err(library)?,
            committed: row["committed"]
                .as_bool()
                .ok_or(StudyError::Prerequisite("MissingCommitDisposition"))?,
        });
    }
    Ok(HistoryPacket {
        format: "core034.history-packet.v1".into(),
        backend: store.backend().packet()?,
        module: behavior_engine::serialize::to_wire_json(module),
        policies: Some(analysis.to_json()["policies"].clone()),
        attempts,
        migrations: vec![],
    })
}
pub fn expected(v: &Value) -> Result<Expected> {
    let oracle = bound_json(v, "oracle", "oracle_sha256", DOCUMENT_BOUND)?;
    let variant = v.get("variant").and_then(Value::as_str).unwrap_or("LD8");
    let mut requests = vec![];
    if oracle["format"] == "core034.expected-subject.v1" {
        requests = oracle["requests"]
            .as_array()
            .ok_or(StudyError::Prerequisite("ExpectedRequestsMissing"))?
            .clone();
    } else {
        for row in oracle["attempts"]
            .as_array()
            .ok_or(StudyError::Prerequisite("ExpectedAttemptsMissing"))?
        {
            let inv = &row["invocation"];
            requests.push(json!({"format":"behavior.invocation.v1","capability":inv["capability"],"bindings":inv["requested_bindings"],"input":inv["input"],"context":inv["context"]}));
        }
    }
    Ok(Expected {
        variant: variant.into(),
        behavior: io::text(v, "behavior")?.into(),
        policy_set_hash: io::text(v, "policy_set_hash")?.into(),
        origin: HistoryRef::from_json(&oracle["origin"].to_string()).map_err(library)?,
        endpoint: HistoryRef::from_json(&oracle["endpoint"].to_string()).map_err(library)?,
        requests,
        require_safety: true,
    })
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct ResidentInput {
    request: Value,
    candidate: Value,
    parent: HistoryRef,
    endpoint: HistoryRef,
}
pub fn check(prepared: &Path, case: &str, packet_path: &Path, out: &Path) -> Result<i32> {
    let started = Instant::now();
    let v = io::read(prepared)?;
    validate_prepared(&v)?;
    if v["format"] != "core034.prepared-worker.v1"
        || !matches!(
            case,
            "integration"
                | "controls"
                | "growth-D1"
                | "growth-D2"
                | "growth-D3"
                | "growth-D4"
                | "growth-D5"
                | "growth-D6"
        )
    {
        return Err(StudyError::Prerequisite("UnsupportedConsumerCaseOrVersion"));
    }
    let role = io::text(&v, "consumer_role")?;
    if role != "fresh" && role != "resident" {
        return Err(StudyError::Prerequisite("UnsupportedConsumerRole"));
    }
    std::fs::create_dir(out)?;
    let report = if role == "fresh" {
        let expected = expected(&v)?;
        let raw = io::read_bytes(packet_path, PACKET_BOUND)?;
        let packet = history_check::decode(&raw)?;
        let checked = history_check::check(&packet, &expected)?;
        checked.report()
    } else {
        let r = &v["resident"];
        let prefix: HistoryPacket = serde_json::from_value(bound_json(
            r,
            "prefix_packet",
            "prefix_packet_sha256",
            PACKET_BOUND,
        )?)?;
        let expected: Expected = serde_json::from_value(r["expected_prefix"].clone())?;
        let establish_start = Instant::now();
        let basis = history_check::check(&prefix, &expected)?;
        let establishment_ns = establish_start.elapsed().as_nanos().min(u64::MAX as u128) as u64;
        // Candidate reads are inside the resident extension interval, after the basis
        // is actually established in this process. No serialized cache is authority.
        let extension_start = Instant::now();
        let incoming: ResidentInput = serde_json::from_value(
            parse_json(&io::read_bytes(packet_path, PACKET_BOUND)?, PACKET_BOUND)
                .map_err(library)?,
        )?;
        let endpoint = HistoryRef::from_json(&r["endpoint"].to_string()).map_err(library)?;
        if incoming.request != r["request"]
            || incoming.parent != expected.endpoint
            || incoming.endpoint != endpoint
        {
            return Err(StudyError::Prerequisite(
                "ResidentIndependentSubjectMismatch",
            ));
        }
        let checked = crate::arrangements::check_resident(
            basis,
            &incoming.request,
            &incoming.candidate,
            &incoming.parent,
            &endpoint,
        )?;
        let extension_ns = extension_start.elapsed().as_nanos().min(u64::MAX as u128) as u64;
        let mut report = checked.report();
        report["diagnostics"] = json!({"basis_establishment_ns":establishment_ns,"resident_extension_ns":extension_ns,"extension_scope":"incoming request/candidate reads through own full Core comparison, commit and expected endpoint confirmation; memory only"});
        report
    };
    io::write(&out.join("checked-history.json"), &report)?;
    io::write(
        &out.join("worker-result.json"),
        &json!({"format":"core034.worker-result.v1","operation":"check","role":role,"case":case,"operational":"completed","assurance":"established_under_premises","claim_refs":if report["state_safety_checked"]==true{json!(["Q3","Q4","Q5"])}else{json!(["Q3","Q5"])},"premises":["independently chosen exact subjects","pinned Core implementation/encoding/backend/snapshot-validator correspondence"],"checked_history":"checked-history.json","work_elapsed_ns_before_summary":started.elapsed().as_nanos().min(u64::MAX as u128)as u64,"scope":"full launch/load/persist and resources remain in supervisor receipt","Q6":"unestablished: memory only","product_adoption":"unactivated"}),
    )?;
    println!(
        "{}",
        json!({"format":"core034.summary.v1","operation":"check","role":role,"case":case,"operational":"completed","assurance":"established_under_premises","Q6":"unestablished","product_adoption":"unactivated"})
    );
    Ok(0)
}
