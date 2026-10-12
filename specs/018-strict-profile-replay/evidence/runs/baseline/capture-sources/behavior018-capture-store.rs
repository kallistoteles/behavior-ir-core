#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Temporary baseline-only fixture capture. Not production code or a replay implementation.
use behavior_core::read::{ReadSource, admit_read};
use behavior_store::documents::{EvidencePolicy, SeedEntity};
use behavior_store::store::genesis_for;
use behavior_store::{InMemoryBackend, Store};
use serde_json::{Value, json};
use std::collections::BTreeMap;
use std::path::{Path, PathBuf};
fn load(root: &Path, name: &str) -> Value { serde_json::from_str(&std::fs::read_to_string(root.join(name)).unwrap()).unwrap() }
fn save(root: &Path, name: &str, v: &Value) { std::fs::write(root.join(name), serde_json::to_string_pretty(v).unwrap()+"\n").unwrap(); }
fn capture(root: &Path, fixture: &Value, profile: &str) {
    let module=behavior_core::admit(&std::fs::read_to_string(root.join(fixture["module"].as_str().unwrap())).unwrap()).unwrap();
    let setup=load(root,fixture["store_setup"].as_str().unwrap());
    let seed: Vec<SeedEntity>=serde_json::from_value(setup["seed"].clone()).unwrap();
    let store=Store::create(InMemoryBackend::new(),&module,genesis_for(&module,EvidencePolicy::none(),seed.clone())).unwrap();
    let at=store.current().unwrap();
    let source=if fixture["read_source"]=="ad_hoc" { ReadSource::AdHoc(Box::new(admit_read(&module,&std::fs::read_to_string(root.join(fixture["read_definition"].as_str().unwrap())).unwrap()).unwrap())) } else { ReadSource::Declared(fixture["read_name"].as_str().unwrap().into()) };
    let targets: BTreeMap<String,String>=serde_json::from_value(setup["targets"].clone()).unwrap();
    let fresh=store.read(&module,&source,&targets,&setup["input"],&setup["context"],Some(&at)).unwrap();
    let dv=fresh.record.as_json()["data_version"].as_str().unwrap();
    let universe=json!({"universe":[{"entity":"Culture","members":seed.iter().map(|s|s.value.clone()).collect::<Vec<_>>()}]});
    let request=json!({"data_version":dv,"state":fresh.record.as_json()["state"],"input":setup["input"],"context":setup["context"],"facts":universe});
    let snapshot=json!({"format":"behavior.snapshot.v1","data_version":dv,"entities":setup["seed"],"facts":universe});
    save(root,fixture["request"].as_str().unwrap(),&request); save(root,fixture["snapshot"].as_str().unwrap(),&snapshot);
    let schema=store.schema_at(&at).unwrap();
    save(root,fixture["capture_metadata"].as_str().unwrap(),&json!({"source_revision":std::env::var("BEHAVIOR018_CAPTURE_BASE_SHA").unwrap(),"source":"unchanged baseline public Store::create/read + independent Core profile evaluator","module_behavior":module.behavior_version(),"schema":schema.hash,"state":at.state,"position":at.position,"data_version":dv,"requested_profile":profile,"fresh_profile":fresh.record.as_json()["format"],"fresh_read_record_id":fresh.record.record_id(),"store_setup":fixture["store_setup"]}));
    let fresh_path=fixture["read_record"].as_str().unwrap().replace(".read.json",".fresh.read.json"); std::fs::write(root.join(fresh_path),fresh.record.to_json_string()).unwrap();
    // Historical/module legacy captures here are genuine fresh v1 outputs. Later
    // unit capture independently checks the requested archived profile, never relabels.
    if fresh.record.as_json()["format"]==profile { std::fs::write(root.join(fixture["read_record"].as_str().unwrap()),fresh.record.to_json_string()).unwrap(); }
    if fixture["invocation_record"].is_string() {
        let requested=behavior_core::invocation::RequestedInvocation::decode(&setup["invocation"].to_string()).unwrap().0.unwrap();
        let execution=store.invoke(&module,&requested,"1970-01-01T00:00:00Z",None,Some(&at)).unwrap();
        assert!(execution.bundle.is_none());
        let fresh_path=fixture["invocation_record"].as_str().unwrap().replace(".invocation.json",".fresh.invocation.json");
        std::fs::write(root.join(fresh_path),execution.record.to_json_string()).unwrap();
        if execution.record.as_json()["outcome"]["record"]["format"]==profile { std::fs::write(root.join(fixture["invocation_record"].as_str().unwrap()),execution.record.to_json_string()).unwrap(); }
    }
}
#[test]
fn capture_018_baseline_store_coordinates() {
    let root=PathBuf::from(std::env::var("BEHAVIOR018_FIXTURE_ROOT").unwrap());
    let manifest=load(&root,"matrix.json");
    for row in manifest["rows"].as_array().unwrap() { for key in ["canonical_fixture","error_fixture","binding_fixture"] { capture(&root,&row[key],row["profile"].as_str().unwrap()); } }
    capture(&root,&manifest["audit_regression_fixture"],"behavior.read_record.v1");
}
