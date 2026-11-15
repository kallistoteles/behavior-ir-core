//! Ordinary Core reference construction and full original observation. No checked authority imports.
use crate::{
    capture::Capture,
    error::{Result, StudyError, library},
    fixtures, io, safety_check,
};
use behavior_engine::{
    semantic::Module,
    store::{Backend, Store, documents::HistoryRef},
};
use behavior_models::safety::UncertifiedSafetyAnalysis;
use serde::Deserialize;
use serde_json::{Value, json};
use std::path::Path;

pub struct Parent {
    pub module: Module,
    pub analysis: UncertifiedSafetyAnalysis,
    pub store: Store<Capture>,
    pub origin: HistoryRef,
    pub requests: Vec<Value>,
}
pub fn dimensions(case: &str) -> Result<(usize, u64)> {
    match case {
        "growth-D1" => Ok((2, 8)),
        "growth-D2" => Ok((64, 8)),
        "growth-D3" => Ok((256, 8)),
        "growth-D4" => Ok((2, 32)),
        "growth-D5" => Ok((2, 128)),
        _ => Err(StudyError::InvalidInput("Unknown035Cell".into())),
    }
}
pub fn request(action: &str) -> Value {
    json!({"format":"behavior.invocation.v1","capability":action,"bindings":if action=="activate"{json!({"c":{"entity":"Child","id":"c0000"},"p":{"entity":"Parent","id":"p0000"}})}else{json!({"c":{"entity":"Child","id":"c0000"}})},"input":{},"context":{}})
}
pub fn state_facts<B: Backend>(s: &Store<B>, m: &Module) -> Result<Value> {
    let h = s.current_history().map_err(library)?;
    let export = s.export_seed_at(m, &h).map_err(library)?;
    let (mut parents, mut children) = (serde_json::Map::new(), serde_json::Map::new());
    for row in export.seed {
        let id = row.value["id"]
            .as_str()
            .ok_or(StudyError::Prerequisite("SeedIdentity"))?
            .to_owned();
        match row.entity.as_str() {
            "Parent" => {
                parents.insert(id, row.value["phase"].clone());
            }
            "Child" => {
                children.insert(
                    id,
                    json!({"phase":row.value["phase"],"owner":row.value["owner"]}),
                );
            }
            _ => return Err(StudyError::Prerequisite("UnexpectedEntity")),
        }
    }
    Ok(json!({"parents":parents,"children":children}))
}
pub fn step(
    s: &mut Store<Capture>,
    m: &Module,
    a: &UncertifiedSafetyAnalysis,
    r: &Value,
) -> Result<Value> {
    let before = s.current_history().map_err(library)?;
    let invocation = fixtures::invoke_request(s, m, r)?;
    let mut commit_arguments = Value::Null;
    if let Some(bundle) = &invocation.bundle {
        s.commit(m, &s.current().map_err(library)?, bundle)
            .map_err(library)?;
        commit_arguments = serde_json::to_value(s.backend().last_call())?;
    }
    let after = s.current_history().map_err(library)?;
    let validity = behavior_models::safety::snapshot::validate_store_snapshot(m, a, s, &after);
    let state = state_facts(s, m)?;
    Ok(
        json!({"invocation":invocation.record.as_json(),"bundle":invocation.bundle,"commit_arguments":commit_arguments,"transition_record":commit_arguments.get("record"),"before_history":before.as_json(),"after_history":after.as_json(),"post_state":state,"original_property_outcomes":{"status":validity.status()}}),
    )
}
pub fn parent(case: &str) -> Result<Parent> {
    let (n, h) = dimensions(case)?;
    let m = fixtures::module(false, false)?;
    let a = fixtures::analysis(&m, false)?;
    let mut seed = vec![];
    for i in 0..n / 2 {
        let p = format!("p{i:04}");
        let c = format!("c{i:04}");
        seed.push(fixtures::parent(&p, "Open"));
        seed.push(fixtures::child(&c, &p, "Active"));
    }
    let mut s = fixtures::store_with(&m, seed, Capture::default())?;
    let origin = s.current_history().map_err(library)?;
    let mut requests = vec![];
    for i in 0..h {
        let r = request(if i % 2 == 0 { "finish" } else { "activate" });
        let v = step(&mut s, &m, &a, &r)?;
        if v["bundle"].is_null() || v["original_property_outcomes"]["status"] != "Valid" {
            return Err(StudyError::Prerequisite("ReferenceParentPreparation"));
        }
        requests.push(r);
    }
    if s.current_history().map_err(library)?.position != h {
        return Err(StudyError::Prerequisite("ReferenceParentPosition"));
    }
    Ok(Parent {
        module: m,
        analysis: a,
        store: s,
        origin,
        requests,
    })
}
pub fn case(case: &str) -> Result<Value> {
    let (n, h) = dimensions(case)?;
    let mut p = parent(case)?;
    let before = p.store.current_history().map_err(library)?;
    let packet = p.store.backend().packet()?;
    let r = request("finish");
    let result = step(&mut p.store, &p.module, &p.analysis, &r)?;
    if result["post_state"]["children"]["c0000"]["phase"] != "Terminal"
        || result["after_history"]["position"] != h + 1
    {
        return Err(StudyError::Prerequisite("AuthoredFinishResult"));
    }
    let drain = step(&mut p.store, &p.module, &p.analysis, &r)?;
    if drain["after_history"]["state"] != result["after_history"]["state"]
        || drain["after_history"]["position"] != h + 2
    {
        return Err(StudyError::Prerequisite("AuthoredUnchangedContentDrain"));
    }
    Ok(
        json!({"format":"core035.reference-case.v1","case_id":case,"N":n,"H":h,"D":1,"module":behavior_engine::serialize::to_wire_json(&p.module),"behavior":p.module.behavior_version(),"policy_set_hash":p.analysis.policy_set_hash(),"origin":p.origin.as_json(),"parent":before.as_json(),"request":r,"prior_requests":p.requests,"parent_packet":packet,"expected":result,"drain_expected":drain,"product_adoption":"unactivated"}),
    )
}
pub fn lifecycle() -> Result<Value> {
    let m = fixtures::module(false, false)?;
    let a = fixtures::analysis(&m, false)?;
    let mut s = fixtures::store_with(&m, vec![], Capture::default())?;
    let authored: Value = serde_json::from_str(include_str!("../expected/ld8.json"))?;
    let mut observations = vec![];
    for fact in authored["attempts"]
        .as_array()
        .ok_or(StudyError::Prerequisite("AuthoredAttempts"))?
    {
        if state_facts(&s, &m)? != fact["before"] {
            return Err(StudyError::Prerequisite("AuthoredBeforeMismatch"));
        }
        let mut bindings = serde_json::Map::new();
        for (k, id) in fact["bindings"]
            .as_object()
            .ok_or(StudyError::Prerequisite("AuthoredBindings"))?
        {
            bindings.insert(
                k.clone(),
                json!({"entity":if k=="p"{"Parent"}else{"Child"},"id":id}),
            );
        }
        let r = json!({"format":"behavior.invocation.v1","capability":fact["action"],"bindings":bindings,"input":fact["input"],"context":{}});
        let v = step(&mut s, &m, &a, &r)?;
        let allowed = fact["expected"] == "ALLOW";
        if allowed != !v["bundle"].is_null()
            || v["after_history"]["position"] != fact["position"]
            || v["post_state"] != fact["after"]
            || v["original_property_outcomes"]["status"] != "Valid"
        {
            return Err(StudyError::Prerequisite("AuthoredLifecycleMismatch"));
        }
        observations.push(json!({"request":r,"observation":v}));
    }
    Ok(
        json!({"format":"core035.reference-lifecycle.v1","attempts":observations,"committed_steps":s.current_history().map_err(library)?.position,"backend":s.backend().packet()?}),
    )
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
pub struct OracleInput {
    pub format: String,
    pub cases: Vec<String>,
}
pub fn prepare(input: &Value, out: &Path) -> Result<()> {
    let cfg: OracleInput = serde_json::from_value(input.clone())?;
    if cfg.format != "core035.oracle-input.v1" || cfg.cases.is_empty() || cfg.cases.len() > 5 {
        return Err(StudyError::Prerequisite("OracleInput"));
    }
    let unique: std::collections::BTreeSet<_> = cfg.cases.iter().collect();
    if unique.len() != cfg.cases.len() {
        return Err(StudyError::Prerequisite("DuplicateCase"));
    }
    for c in &cfg.cases {
        dimensions(c)?;
    }
    std::fs::create_dir(out)?;
    let m = fixtures::module(false, false)?;
    let a = fixtures::analysis(&m, false)?;
    let (assessment, bundle) = safety_check::certify(&m, &a, &out.join("program-certification"))?;
    io::write(&out.join("program-assessment.json"), &assessment.to_json())?;
    let bundle = bundle.ok_or(StudyError::Prerequisite("OracleProgramNotCertified"))?;
    io::write(&out.join("safety-bundle.json"), &bundle.to_json())?;
    io::write(
        &out.join("subject.json"),
        &json!({"module":behavior_engine::serialize::to_wire_json(&m),"behavior":m.behavior_version(),"analysis":a.to_json(),"policy_set_hash":a.policy_set_hash()}),
    )?;
    io::write(&out.join("lifecycle.json"), &lifecycle()?)?;
    for c in &cfg.cases {
        io::write(&out.join(format!("{c}.json")), &case(c)?)?;
    }
    Ok(())
}
