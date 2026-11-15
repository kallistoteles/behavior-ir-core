#![forbid(unsafe_code)]
use assurance_study034::{
    error::{Result, StudyError, library},
    fixtures, io, safety_check,
};
use behavior_models::safety::evidence::UnverifiedSafetyBundle;
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::{
    collections::BTreeMap,
    path::{Path, PathBuf},
    time::Instant,
};
fn args() -> Result<(String, BTreeMap<String, PathBuf>)> {
    let values=std::env::args_os().skip(1).map(|s|s.into_string().map_err(|_|StudyError::InvalidInput("NonUtf8Argument".into()))).collect::<Result<Vec<_>>>()?;
    if values.iter().any(|s|s.len()>4096){return Err(StudyError::InvalidInput("ArgumentByteBound".into()));}
    let mut iter = values.into_iter();
    let op = iter
        .next()
        .ok_or(StudyError::Prerequisite("MissingOperation"))?;
    let mut options = BTreeMap::new();
    while let Some(k) = iter.next() {
        if ![
            "--input",
            "--prepared",
            "--out",
            "--case",
            "--packet",
            "--control",
        ]
        .contains(&k.as_str())
            || options.contains_key(&k)
        {
            return Err(StudyError::Prerequisite("UnknownOrRepeatedArgument"));
        }
        let v = iter
            .next()
            .ok_or(StudyError::Prerequisite("MissingArgument"))?;
        options.insert(k, PathBuf::from(v));
    }
    let wanted:&[&str]=match op.as_str(){"prepare"=>&["--input","--out"],"produce"=>&["--prepared","--case","--out"],"check"=>&["--prepared","--case","--packet","--out"],"control"=>&["--prepared","--control","--out"],_=>return Err(StudyError::InvalidInput("UnknownOperation".into()))};
    if options.len()!=wanted.len()||wanted.iter().any(|k|!options.contains_key(*k)){return Err(StudyError::InvalidInput("OperationArgumentSet".into()));}
    if required(&options,"--out")?.exists(){return Err(StudyError::InvalidInput("CreateOnceOutputExists".into()));}
    Ok((op, options))
}
fn required<'a>(a: &'a BTreeMap<String, PathBuf>, key: &str) -> Result<&'a Path> {
    a.get(key)
        .map(PathBuf::as_path)
        .ok_or(StudyError::Prerequisite("MissingArgument"))
}
fn prepare(input: &Path, out: &Path) -> Result<i32> {
    let v = io::read(input)?;
    if v["format"] != "core034.worker-input.v1" {
        return Err(StudyError::Prerequisite("InputVersion"));
    }
    if v.as_object().is_none_or(|o|o.keys().any(|k|!["format","commands","role","bundle","bundle_sha256"].contains(&k.as_str()))){return Err(StudyError::InvalidInput("UnknownPreparationField".into()));}
    let role = io::text(&v,"role")?;
    if !["oracle","inspect","certify","verify"].contains(&role){return Err(StudyError::InvalidInput("UnknownPreparationRole".into()));}
    let commands = v["commands"]
        .as_bool()
        .ok_or(StudyError::Prerequisite("MissingCommandsFlag"))?;
    if role=="oracle"&&commands{return Err(StudyError::InvalidInput("PrimaryOracleOnly".into()));}
    let m = fixtures::module(commands, false)?;
    let a = fixtures::analysis(&m, false)?;
    std::fs::create_dir(out)?;
    io::write(
        &out.join("subject.json"),
        &json!({"behavior":m.behavior_version(),"policy_set_hash":a.policy_set_hash(),"inventory":a.inventory().to_json(),"analysis":a.to_json(),"module":behavior_engine::serialize::to_wire_json(&m),"fixture":if commands{"LD8C-public-port-distinct"}else{"LD8-public-port-distinct"}}),
    )?;
    let start = Instant::now();
    if role=="inspect"{println!("{}",json!({"format":"core034.summary.v1","operation":"prepare","role":"inspect","operational":"completed","assurance":"unestablished","product_adoption":"unactivated"}));return Ok(0);}
    if role == "oracle" {
        let run = assurance_study034::lifecycle::oracle()?;
        io::write(&out.join("oracle.json"), &run)?;
        println!(
            "{}",
            json!({"format":"core034.summary.v1","operation":"prepare","role":"oracle","operational":"completed","assurance":"unestablished","product_adoption":"unactivated"})
        );
        return Ok(0);
    }

    let assessment = if role == "certify" {
        let (result, bundle) = safety_check::certify(&m, &a, &out.join("safety"))?;
        if let Some(b) = bundle {
            io::write(&out.join("bundle.json"), &b.to_json())?;
        }
        result.to_json()
    } else if role == "verify" {
        let bundle = checked_bundle(&v)?;
        let (record, _checked) = safety_check::recheck(&m, &a, &bundle, &out.join("safety"))?;
        record
    } else {
        return Err(StudyError::Prerequisite("UnknownPreparationRole"));
    };
    io::write(&out.join("assessment.json"), &assessment)?;
    let established = assessment["outcome"] == "Certified under assumptions";
    let exhausted=assessment["diagnostics"].as_array().is_some_and(|rows|rows.iter().any(|r|r["code"]=="SAFETY_PROOF_EXHAUSTED"));
    io::write(
        &out.join("worker-result.json"),
        &json!({"format":"core034.worker-result.v1","operation":"prepare","role":role,"assurance":if established{"established_under_premises"}else{"unestablished"},"operational":if established{"completed"}else if exhausted{"resource_stopped"}else{"tool_failed"},"elapsed_scope":"Safety library work and result preparation; full launch/load/persist interval is the supervisor receipt","elapsed_ns":start.elapsed().as_nanos().min(u64::MAX as u128) as u64,"assessment":"assessment.json","product_adoption":"unactivated","durability":"memory-pilot-no-durable-publication"}),
    )?;
    println!(
        "{}",
        json!({"format":"core034.summary.v1","operation":"prepare","assurance":if established{"established_under_premises"}else{"unestablished"},"product_adoption":"unactivated","assessment":out.join("assessment.json")})
    );
    Ok(if established { 0 } else if exhausted { 3 } else { 1 })
}
fn checked_bundle(v: &Value) -> Result<UnverifiedSafetyBundle> {
    let path = Path::new(io::text(v, "bundle")?);
    let data = io::read_bytes(path, 16 * 1024 * 1024)?;
    if data.len() > 16 * 1024 * 1024
        || format!("{:x}", Sha256::digest(&data)) != io::text(v, "bundle_sha256")?
    {
        return Err(StudyError::Prerequisite("BundleByteBinding"));
    }
    UnverifiedSafetyBundle::from_json(
        &assurance_study034::artifacts::parse_json(&data, 16 * 1024 * 1024).map_err(library)?,
    )
    .map_err(library)
}
fn produce(prepared: &Path, case: &str, out: &Path) -> Result<i32> {
    if case != "integration" {
        return Err(StudyError::Prerequisite("UnknownProductionCase"));
    }
    let v = io::read(prepared)?;
    assurance_study034::consumer_worker::validate_prepared(&v)?;
    if v["format"] != "core034.prepared-worker.v1" {
        return Err(StudyError::Prerequisite("PreparedVersion"));
    }
    let m = fixtures::module(false, false)?;
    let a = fixtures::analysis(&m, false)?;
    if v["behavior"] != m.behavior_version() || v["policy_set_hash"] != a.policy_set_hash() {
        return Err(StudyError::Prerequisite("PreparedSubjectMismatch"));
    }
    let bundle = checked_bundle(&v)?;
    std::fs::create_dir(out)?;
    let start = Instant::now();
    let (record, program) =
        safety_check::recheck(&m, &a, &bundle, &out.join("fresh-program-check"))?;
    io::write(&out.join("program-check.json"), &record)?;
    let Some(program) = program else {
        println!(
            "{}",
            json!({"format":"core034.summary.v1","operation":"produce","assurance":"unestablished","operational":"tool_failed","product_adoption":"unactivated"})
        );
        return Ok(1);
    };
    let program_ns = start.elapsed().as_nanos().min(u64::MAX as u128) as u64;
    let mut coordinator =
        assurance_study034::arrangements::Coordinator::new(fixtures::store_with(&m, vec![],assurance_study034::capture::Capture::default())?);
    let activation_start = Instant::now();
    let validity = coordinator.activate(&m, &a, &program)?;
    let activation_ns = activation_start.elapsed().as_nanos().min(u64::MAX as u128) as u64;
    let run = assurance_study034::lifecycle::coordinated(&mut coordinator, &m, &a)?;
    let oracle = assurance_study034::consumer_worker::bound_json(&v,"oracle","oracle_sha256",16*1024*1024)?;
    let without_diagnostics = |mut value: Value| {
        if let Some(o) = value.as_object_mut() {
            o.remove("diagnostics");
        }
        value
    };
    if without_diagnostics(run.clone()) != without_diagnostics(oracle) {
        return Err(StudyError::Prerequisite(
            "CompleteOracleObservationMismatch",
        ));
    }
    io::write(&out.join("lifecycle.json"), &run)?;
    let packet=assurance_study034::consumer_worker::packet(coordinator.store(),&m,&a,&run)?;
    io::write(&out.join("packet.json"),&serde_json::to_value(packet)?)?;
    // Actual post-check activation controls reuse the in-process checked object;
    // no forged JSON certificate can reach these capabilities.
    let changed = fixtures::module(true, false)?;
    let changed_a = fixtures::analysis(&changed, false)?;
    if coordinator.activate(&changed, &changed_a, &program).is_ok() || coordinator.active() {
        return Err(StudyError::Prerequisite(
            "ChangedModuleInheritedCertificate",
        ));
    }
    let weak = fixtures::analysis(&m, true)?;
    if coordinator.activate(&m, &weak, &program).is_ok() {
        return Err(StudyError::Prerequisite(
            "ChangedPoliciesInheritedCertificate",
        ));
    }
    let mut invalid = assurance_study034::arrangements::Coordinator::new(fixtures::store(
        &m,
        vec![
            fixtures::parent("p", "Gone"),
            fixtures::child("c", "p", "Active"),
        ],
    )?);
    if invalid.activate(&m, &a, &program).is_ok() || invalid.active() {
        return Err(StudyError::Prerequisite("InvalidStartActivated"));
    }
    let mut migrating = assurance_study034::arrangements::Coordinator::new(fixtures::store(
        &m,
        vec![
            fixtures::parent("p", "Open"),
            fixtures::child("c", "p", "Active"),
        ],
    )?);
    migrating.activate(&m, &a, &program)?;
    assurance_study034::boundaries::unsafe_migration_control(&mut migrating, &m)?;
    if migrating.active() {
        return Err(StudyError::Prerequisite("MigrationKeptOldAuthority"));
    }
    coordinator.activate(&m, &a, &program)?;
    if coordinator.into_restart().active() {
        return Err(StudyError::Prerequisite("RestartKeptActiveAuthority"));
    }
    io::write(
        &out.join("worker-result.json"),
        &json!({"format":"core034.worker-result.v1","operation":"produce","case":case,"operational":"completed","assurance":"established_under_premises","claims":["Q1","Q2","Q3","Q4"],"Q5":"independent recipient check not performed by producer","Q6":"unestablished: memory only","authority":"explicit_trust: one coordinator controls all actual writers; Core/Safety/extractor/encoding/backend correspondence trusted","program_check_ns":program_ns,"activation_ns":activation_ns,"activation":validity,"controls":{"invalid_start":"rejected","changed_module":"rejected","changed_policy":"rejected","migration":"deactivated","restart":"deactivated"},"complete_oracle_comparison":true,"product_adoption":"unactivated"}),
    )?;
    println!(
        "{}",
        json!({"format":"core034.summary.v1","operation":"produce","operational":"completed","assurance":"established_under_premises","Q6":"unestablished","product_adoption":"unactivated"})
    );
    Ok(0)
}
fn execute(op:String,a:BTreeMap<String,PathBuf>) -> Result<i32> {
    match op.as_str() {
        "prepare" => prepare(required(&a, "--input")?, required(&a, "--out")?),
        "control" => assurance_study034::controls::run(required(&a,"--prepared")?,required(&a,"--control")?.to_str().ok_or(StudyError::Prerequisite("InvalidControl"))?,required(&a,"--out")?),
        "check" => assurance_study034::consumer_worker::check(required(&a,"--prepared")?,required(&a,"--case")?.to_str().ok_or(StudyError::Prerequisite("InvalidCase"))?,required(&a,"--packet")?,required(&a,"--out")?),
        "produce" => produce(
            required(&a, "--prepared")?,
            required(&a, "--case")?
                .to_str()
                .ok_or(StudyError::Prerequisite("InvalidCase"))?,
            required(&a, "--out")?,
        ),
        _ => Err(StudyError::Prerequisite("UnsupportedWorkerOperation")),
    }
}
fn main() {
 let (op,a)=match args(){Ok(parsed)=>parsed,Err(error)=>{eprintln!("{}",json!({"format":"core034.summary.v1","operational":"not_run","assurance":"unestablished","error":error.to_string(),"product_adoption":"unactivated"}));std::process::exit(2)}};
 let out=a.get("--out").cloned();
 let code=match execute(op,a){Ok(code)=>code,Err(error)=>{
  let invalid=matches!(&error,StudyError::InvalidInput(_));let started=out.is_some_and(|p|p.exists());
  eprintln!("{}",json!({"format":"core034.summary.v1","operational":if invalid||!started{"not_run"}else{"tool_failed"},"assurance":"unestablished","error":error.to_string(),"product_adoption":"unactivated"}));
  if invalid||!started{2}else{1}
 }};std::process::exit(code);
}
