//! Original semantic replay from raw, byte-bound inputs. No imported authority.
use crate::{
    capture::Capture,
    error::{LibraryResult, Result, StudyError},
    fixtures::{self, RawWorkloadV2},
    io,
    native_artifacts::InputRoots,
    protocol::{self, RawRequestV2},
    reference::{self, Parent},
    safety_check,
};
use behavior_engine::semantic::Module;
use behavior_engine::store::{Store, documents::Genesis};
use behavior_models::safety::{
    FieldOwnershipInput, LifecycleDependencyInput, UncertifiedSafetyAnalysis,
    analyze_with_dependencies,
};
use serde::Deserialize;
use serde_json::{Value, json};
use std::path::Path;

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Policy {
    ownership: Vec<Value>,
    dependencies: Vec<Value>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Basis {
    genesis: Genesis,
    prefix: Vec<RawRequestV2>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Facts {
    initial: Value,
    prefix: Vec<Fact>,
    steps: Vec<Fact>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Fact {
    allowed: bool,
    position: u64,
    post_state: Value,
}

pub fn invocation(
    roots: &InputRoots,
    raw: &RawRequestV2,
) -> Result<(Value, fixtures::InvocationMetadata)> {
    let request = roots.semantic_json(&raw.request_ref)?;
    let context = roots.semantic_json(&raw.context_ref)?;
    if request.get("context") != Some(&context)
        || serde_json::to_vec(&request["context"])? != serde_json::to_vec(&context)?
    {
        return Err(StudyError::InvalidInput("RequestContextBytesDiffer".into()));
    }
    let metadata = serde_json::from_value(roots.semantic_json(&raw.metadata_ref)?)?;
    Ok((request, metadata))
}
fn fact(actual: &Value, expected: &Fact) -> Result<()> {
    if actual["bundle"].is_null() == expected.allowed
        || actual["after_history"]["position"] != expected.position
        || actual["post_state"] != expected.post_state
        || actual["original_property_outcomes"]["status"] != "Valid"
    {
        return Err(StudyError::Prerequisite("AuthoredRawFactMismatch"));
    }
    Ok(())
}
pub struct RawParent {
    pub parent: Parent,
    pub workload: RawWorkloadV2,
    facts: Facts,
}

fn read_additional_references(
    roots: &InputRoots,
    references: &[protocol::ArtifactRefV2],
) -> Result<()> {
    for reference in references {
        roots.read(reference, protocol::ARTIFACT_BOUND_V2)?;
    }
    Ok(())
}

fn read_workload_references(roots: &InputRoots, workload: &RawWorkloadV2) -> Result<()> {
    roots.read(&workload.specification_ref, protocol::ARTIFACT_BOUND_V2)?;
    roots.read(&workload.source_subject_ref, protocol::ARTIFACT_BOUND_V2)?;
    roots.read(&workload.blocking_ref, protocol::ARTIFACT_BOUND_V2)?;
    read_additional_references(roots, &workload.inputs)
}

fn ownership_inputs(raw: &[Value], parsed: &mut Vec<FieldOwnershipInput>) -> Result<()> {
    for input in raw {
        parsed.push(FieldOwnershipInput::from_json(input).map_library()?);
    }
    Ok(())
}

fn dependency_inputs(raw: &[Value], parsed: &mut Vec<LifecycleDependencyInput>) -> Result<()> {
    for input in raw {
        parsed.push(LifecycleDependencyInput::from_json(input).map_library()?);
    }
    Ok(())
}

struct PrefixReplay<'a> {
    roots: &'a InputRoots,
    module: &'a Module,
    analysis: &'a UncertifiedSafetyAnalysis,
    prefix: &'a [RawRequestV2],
    expected: &'a [Fact],
}

impl PrefixReplay<'_> {
    fn replay(self, store: &mut Store<Capture>, requests: &mut Vec<Value>) -> Result<()> {
        let Self {
            roots,
            module,
            analysis,
            prefix,
            expected,
        } = self;
        let mut index = 0;
        while index < prefix.len() {
            let (request, metadata) = invocation(roots, &prefix[index])?;
            let observed =
                reference::step_with_metadata(store, module, analysis, &request, &metadata)?;
            fact(&observed, &expected[index])?;
            if observed["bundle"].is_null() {
                return Err(StudyError::InvalidInput(
                    "RawPrefixMustNameCommittedSteps".into(),
                ));
            }
            requests.push(request);
            index += 1;
        }
        Ok(())
    }
}

/// Immutable program transport only; no state, history or ground is acquired.
pub struct RawProgram {
    pub workload: RawWorkloadV2,
    pub module: Module,
    pub analysis: UncertifiedSafetyAnalysis,
}

pub fn program_context(bytes: &[u8], roots: &InputRoots) -> Result<RawProgram> {
    let workload = fixtures::parse_raw_workload_v2(bytes)?;
    // Referenced context must really exist, not just be a syntactically valid digest.
    read_workload_references(roots, &workload)?;
    let module_json = roots.semantic_json(&workload.module_ref)?;
    let module_text = match &module_json {
        Value::String(text) => text.to_owned(),
        _ => module_json.to_string(),
    };
    let module = behavior_engine::admit(&module_text).map_library()?;
    let policy: Policy = serde_json::from_value(roots.semantic_json(&workload.policy_ref)?)?;
    let mut ownership = Vec::new();
    ownership_inputs(&policy.ownership, &mut ownership)?;
    let mut dependencies = Vec::new();
    dependency_inputs(&policy.dependencies, &mut dependencies)?;
    let analysis = analyze_with_dependencies(&module, &ownership, &dependencies).map_library()?;
    Ok(RawProgram {
        workload,
        module,
        analysis,
    })
}

pub fn load(bytes: &[u8], roots: &InputRoots) -> Result<RawParent> {
    let RawProgram {
        workload,
        module,
        analysis,
    } = program_context(bytes, roots)?;
    let basis: Basis = serde_json::from_value(roots.semantic_json(&workload.basis_ref)?)?;
    let facts: Facts = serde_json::from_value(roots.semantic_json(&workload.expected_facts_ref)?)?;
    if basis.prefix.len() > 128
        || facts.prefix.len() != basis.prefix.len()
        || facts.steps.len() != workload.requests.len()
    {
        return Err(StudyError::InvalidInput("RawPrefixOrFactCount".into()));
    }
    let mut store = Store::create(Capture::default(), &module, basis.genesis).map_library()?;
    let origin = store.current_history().map_library()?;
    let initial = reference::state_facts(&store, &module)?;
    if initial != facts.initial
        || behavior_models::safety::snapshot::validate_store_snapshot(
            &module, &analysis, &store, &origin,
        )
        .status()
            != "Valid"
    {
        return Err(StudyError::Prerequisite("AuthoredRawInitialMismatch"));
    }
    let mut requests = Vec::new();
    PrefixReplay {
        roots,
        module: &module,
        analysis: &analysis,
        prefix: &basis.prefix,
        expected: &facts.prefix,
    }
    .replay(&mut store, &mut requests)?;
    let history = store.current_history().map_library()?;
    let state = reference::state_facts(&store, &module)?;
    let count = state["parents"].as_object().map_or(0, |m| m.len())
        + state["children"].as_object().map_or(0, |m| m.len());
    if history.position != workload.history || count as u64 != workload.population {
        return Err(StudyError::InvalidInput("RawParentDimensionsDiffer".into()));
    }
    Ok(RawParent {
        parent: Parent {
            module,
            analysis,
            store,
            origin,
            requests,
        },
        workload,
        facts,
    })
}
pub fn observation(raw: &mut RawParent, roots: &InputRoots, index: usize) -> Result<Value> {
    let input = raw
        .workload
        .requests
        .get(index)
        .ok_or(StudyError::Prerequisite("RawRequestIndex"))?;
    let expected = raw
        .facts
        .steps
        .get(index)
        .ok_or(StudyError::Prerequisite("RawFactIndex"))?;
    let (request, metadata) = invocation(roots, input)?;
    let result = reference::step_with_metadata(
        &mut raw.parent.store,
        &raw.parent.module,
        &raw.parent.analysis,
        &request,
        &metadata,
    )?;
    fact(&result, expected)?;
    Ok(result)
}
pub fn observations(raw: &mut RawParent, roots: &InputRoots) -> Result<Vec<Value>> {
    (0..raw.workload.requests.len())
        .map(|index| observation(raw, roots, index))
        .collect()
}
fn local_ref(out: &Path, name: &str) -> Result<Value> {
    let bytes = io::read_bytes(&out.join(name), protocol::ARTIFACT_BOUND_V2)?;
    Ok(json!({"path":name,"bytes":bytes.len(),"sha256":crate::serialization::raw_sha256(&bytes)}))
}

pub fn prepare(bytes: &[u8], roots: &InputRoots, out: &Path) -> Result<()> {
    if out.exists() {
        return Err(StudyError::InvalidInput("OutputExists".into()));
    }
    let mut raw = load(bytes, roots)?;
    std::fs::create_dir(out)?;
    let (assessment, bundle) = safety_check::certify(
        &raw.parent.module,
        &raw.parent.analysis,
        &out.join("program-certification"),
    )?;
    io::write(&out.join("program-assessment.json"), &assessment.to_json())?;
    let bundle = bundle.ok_or(StudyError::Prerequisite("OracleProgramNotCertified"))?;
    io::write(&out.join("safety-bundle.json"), &bundle.to_json())?;
    let parent = raw.parent.store.current_history().map_library()?;
    let packet = raw.parent.store.backend().packet()?;
    let mut result_refs = Vec::new();
    for index in 0..raw.workload.requests.len() {
        let value = observation(&mut raw, roots, index)?;
        let name = format!("observation-{index:03}.json");
        io::write(&out.join(&name), &value)?;
        result_refs.push(local_ref(out, &name)?);
    }
    // Raw workload remains untrusted transport; this prepared result is compared by replay.
    io::write(
        &out.join("workload.json"),
        &protocol::parse_json(bytes, protocol::CONTROL_BOUND_V2)?,
    )?;

    io::write(
        &out.join("subject.json"),
        &json!({"module":behavior_engine::serialize::to_wire_json(&raw.parent.module),"behavior":raw.parent.module.behavior_version(),"analysis":raw.parent.analysis.to_json(),"policy_set_hash":raw.parent.analysis.policy_set_hash(),"origin":raw.parent.origin.as_json(),"parent":parent.as_json(),"parent_packet":packet}),
    )?;
    let mut manifest = json!({"format":"core036.prepared-case.v2","workload":protocol::parse_json(bytes, protocol::CONTROL_BOUND_V2)?,"subject":local_ref(out,"subject.json")?,"bundle":local_ref(out,"safety-bundle.json")?,"observations":result_refs,"product_adoption":"unactivated","native_proof":"unestablished"});
    for key in [
        "work_id",
        "record_id",
        "specification_ref",
        "source_subject_ref",
        "inputs",
        "outcome",
        "reason",
        "blocking_ref",
    ] {
        manifest[key] = manifest["workload"][key].clone();
    }
    io::write(&out.join("manifest.json"), &manifest)?;
    Ok(())
}

fn equal(actual: &Value, expected: &Value) -> Result<()> {
    if actual != expected || serde_json::to_vec(actual)? != serde_json::to_vec(expected)? {
        return Err(StudyError::Prerequisite("IndependentOriginalAuditMismatch"));
    }
    Ok(())
}
fn prepared_field_known(key: &str) -> bool {
    matches!(
        key,
        "format"
            | "workload"
            | "subject"
            | "bundle"
            | "observations"
            | "product_adoption"
            | "native_proof"
            | "work_id"
            | "record_id"
            | "specification_ref"
            | "source_subject_ref"
            | "inputs"
            | "outcome"
            | "reason"
            | "blocking_ref"
    )
}

fn prepared_fields_known(object: &serde_json::Map<String, Value>) -> bool {
    for key in object.keys() {
        if !prepared_field_known(key.as_str()) {
            return false;
        }
    }
    true
}

fn compare_prepared_metadata(manifest: &Value, workload: &Value) -> Result<()> {
    equal(&manifest["work_id"], &workload["work_id"])?;
    equal(&manifest["record_id"], &workload["record_id"])?;
    equal(
        &manifest["specification_ref"],
        &workload["specification_ref"],
    )?;
    equal(
        &manifest["source_subject_ref"],
        &workload["source_subject_ref"],
    )?;
    equal(&manifest["inputs"], &workload["inputs"])?;
    equal(&manifest["outcome"], &workload["outcome"])?;
    equal(&manifest["reason"], &workload["reason"])?;
    equal(&manifest["blocking_ref"], &workload["blocking_ref"])
}

fn compare_prepared_observations(prepared: &Path, observations: &[Value]) -> Result<()> {
    let mut index = 0;
    while index < observations.len() {
        equal(
            &observations[index],
            &local_ref(prepared, &format!("observation-{index:03}.json"))?,
        )?;
        index += 1;
    }
    Ok(())
}

pub fn validate_prepared(prepared: &Path, workload: &Value) -> Result<()> {
    let manifest = protocol::parse_json(
        &io::read_bytes(&prepared.join("manifest.json"), protocol::CONTROL_BOUND_V2)?,
        protocol::CONTROL_BOUND_V2,
    )?;
    let object = manifest
        .as_object()
        .ok_or_else(|| StudyError::InvalidInput("PreparedManifestObject".into()))?;
    if object.len() != 15
        || !prepared_fields_known(object)
        || manifest["format"] != "core036.prepared-case.v2"
        || manifest["native_proof"] != "unestablished"
        || manifest["product_adoption"] != "unactivated"
    {
        return Err(StudyError::InvalidInput("PreparedManifestContract".into()));
    }
    equal(&manifest["workload"], workload)?;
    compare_prepared_metadata(&manifest, workload)?;
    equal(&manifest["subject"], &local_ref(prepared, "subject.json")?)?;
    equal(
        &manifest["bundle"],
        &local_ref(prepared, "safety-bundle.json")?,
    )?;
    let raw = fixtures::parse_raw_workload_v2(&serde_json::to_vec(workload)?)?;
    let observations = manifest["observations"]
        .as_array()
        .ok_or_else(|| StudyError::InvalidInput("PreparedObservationRefs".into()))?;
    if observations.len() != raw.requests.len() {
        return Err(StudyError::InvalidInput("PreparedObservationCount".into()));
    }
    compare_prepared_observations(prepared, observations)
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct ExpectedContext {
    format: ExpectedFormat,
    workload_ref: protocol::ArtifactRefV2,
}
#[derive(Deserialize)]
enum ExpectedFormat {
    #[serde(rename = "core036.oracle-context.v2")]
    V2,
}

pub fn replay(prepared: &Path, context: &[u8], roots: &InputRoots, out: &Path) -> Result<()> {
    let expected: ExpectedContext =
        serde_json::from_value(protocol::parse_json(context, protocol::CONTROL_BOUND_V2)?)?;
    let _ = expected.format;
    // The verifier chooses this context, never the prepared candidate manifest.
    let bytes = roots.read(&expected.workload_ref, protocol::CONTROL_BOUND_V2)?;
    equal(
        &io::read(&prepared.join("workload.json"))?,
        &protocol::parse_json(&bytes, protocol::CONTROL_BOUND_V2)?,
    )?;
    validate_prepared(
        prepared,
        &protocol::parse_json(&bytes, protocol::CONTROL_BOUND_V2)?,
    )?;
    let mut raw = load(&bytes, roots)?;
    let history = raw.parent.store.current_history().map_library()?;
    let subject = json!({"module":behavior_engine::serialize::to_wire_json(&raw.parent.module),"behavior":raw.parent.module.behavior_version(),"analysis":raw.parent.analysis.to_json(),"policy_set_hash":raw.parent.analysis.policy_set_hash(),"origin":raw.parent.origin.as_json(),"parent":history.as_json(),"parent_packet":raw.parent.store.backend().packet()?});
    equal(&subject, &io::read(&prepared.join("subject.json"))?)?;
    if out.exists() {
        return Err(StudyError::InvalidInput("OutputExists".into()));
    }
    std::fs::create_dir(out)?;
    let bundle = behavior_models::safety::evidence::UnverifiedSafetyBundle::from_json(&io::read(
        &prepared.join("safety-bundle.json"),
    )?)
    .map_library()?;
    let (assessment, checked) = safety_check::recheck(
        &raw.parent.module,
        &raw.parent.analysis,
        &bundle,
        &out.join("program-recheck"),
    )?;
    io::write(&out.join("program-assessment.json"), &assessment)?;
    checked.ok_or(StudyError::Prerequisite("OracleProgramNotRechecked"))?;
    for index in 0..raw.workload.requests.len() {
        let result = observation(&mut raw, roots, index)?;
        let name = format!("observation-{index:03}.json");
        let expected = protocol::parse_payload_json(
            &io::read_bytes(&prepared.join(&name), protocol::ARTIFACT_BOUND_V2)?,
            protocol::ARTIFACT_BOUND_V2,
        )?;
        equal(&result, &expected)?;
        io::write(&out.join(&name), &result)?;
    }
    io::write(
        &out.join("result.json"),
        &json!({"format":"core036.oracle-replay.v2","work_id":raw.workload.work_id,"record_id":raw.workload.record_id,"product_adoption":"unactivated","semantic":"equal","native_proof":"unestablished","authority":"fresh_original_checks_only_not_exported"}),
    )
}
