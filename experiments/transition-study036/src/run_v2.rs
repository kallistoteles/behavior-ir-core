//! Fixed-role conformance execution. Cost acceptance is a separate measured endpoint.
use crate::{
    error::{LibraryResult, Result, StudyError},
    ground::Ground,
    io,
    native_artifacts::InputRoots,
    observation,
    protocol::{self, CaseKindV2},
    raw_oracle,
    safety_check::{self, CheckedProgram},
};
use behavior_models::safety::evidence::UnverifiedSafetyBundle;
use serde_json::{Value, json};
use std::path::Path;

#[derive(Clone, Copy)]
pub enum Role {
    Reference,
    Reuse,
    Buffered,
}
impl Role {
    fn retained(self) -> bool {
        matches!(self, Self::Reuse | Self::Buffered)
    }
    pub fn delivery_mode(self) -> crate::output::DeliveryMode {
        match self {
            Self::Buffered => crate::output::DeliveryMode::Buffered,
            Self::Reference | Self::Reuse => crate::output::DeliveryMode::Original,
        }
    }
    fn name(self) -> &'static str {
        match self {
            Self::Reference => "R",
            Self::Reuse => "GV",
            Self::Buffered => "B",
        }
    }
}
fn semantic_file(path: &Path) -> Result<Value> {
    Ok(protocol::parse_payload_json(
        &io::read_bytes(path, protocol::ARTIFACT_BOUND_V2)?,
        protocol::ARTIFACT_BOUND_V2,
    )?)
}
fn operation_cases_only(cases: &[protocol::CaseV2]) -> bool {
    for case in cases {
        if !matches!(case.kind, CaseKindV2::Operation) {
            return false;
        }
    }
    true
}

fn pair_documents(
    case: &protocol::CaseV2,
    roots: &InputRoots,
    prepared: &Path,
    documents: &mut Vec<(Value, crate::fixtures::InvocationMetadata)>,
    expectations: &mut Vec<Value>,
) -> Result<()> {
    let mut operation = 0;
    while operation < case.requests.len() {
        documents.push(raw_oracle::invocation(roots, &case.requests[operation])?);
        expectations.push(semantic_file(
            &prepared.join(format!("observation-{operation:03}.json")),
        )?);
        operation += 1;
    }
    Ok(())
}

fn pair_deliveries(pair: &crate::operation::PairReport, deliveries: &mut Vec<Value>) -> Result<()> {
    for operation in &pair.operations {
        deliveries.push(serde_json::to_value(&operation.delivery)?);
    }
    Ok(())
}

fn single_operations(
    ground: &mut Ground,
    case: &protocol::CaseV2,
    roots: &InputRoots,
    prepared: &Path,
    context: crate::operation::PairContext<'_>,
    deliveries: &mut Vec<Value>,
) -> Result<()> {
    let mut operation = 0;
    while operation < case.requests.len() {
        let (document, metadata) = raw_oracle::invocation(roots, &case.requests[operation])?;
        let expected = semantic_file(&prepared.join(format!("observation-{operation:03}.json")))?;
        ground.select_retention(context.role.retained())?;
        let actual = ground.invoke_with_metadata(&document, &metadata)?;
        observation::compare(&actual, &expected)?;
        let delivery = crate::output::write_new_mode(
            &context.out.join(format!("observation-{operation:03}.json")),
            &actual,
            context.role.delivery_mode(),
            context.diagnostic,
        )?;
        deliveries.push(json!({"bytes":delivery.bytes,
            "underlying_write_calls":delivery.underlying_write_calls,"buffered":delivery.buffered}));
        operation += 1;
    }
    Ok(())
}

#[derive(Clone, Copy)]
struct CaseContext<'a> {
    request: &'a protocol::RequestV2,
    roots: &'a InputRoots,
    out: &'a Path,
    role: Role,
}

fn execute_case(
    context: CaseContext<'_>,
    index: usize,
    case: &protocol::CaseV2,
    prepared_ref: &protocol::ArtifactRefV2,
    program: &mut Option<CheckedProgram>,
) -> Result<Value> {
    let request = context.request;
    let roots = context.roots;
    let out = context.out;
    let role = context.role;
    let prepared_path = roots.verified_path(prepared_ref, protocol::CONTROL_BOUND_V2)?;
    if !manifest_filename(&prepared_path) {
        return Err(StudyError::InvalidInput("PreparedManifestFilename".into()));
    }
    let prepared = prepared_path
        .parent()
        .ok_or_else(|| StudyError::InvalidInput("PreparedManifestParent".into()))?;
    let manifest = roots.control_json(prepared_ref)?;
    let workload = &manifest["workload"];
    raw_oracle::validate_prepared(prepared, workload)?;
    let raw = raw_oracle::load(&serde_json::to_vec(workload)?, roots)?;
    if raw.workload.record_id != case.case_id
        || raw.workload.work_id != request.work_id
        || raw.workload.population != case.population
        || raw.workload.history != case.history
        || raw.workload.requests != case.requests
    {
        return Err(StudyError::InvalidInput("OperationWorkloadDiffers".into()));
    }
    if serde_json::to_value(&raw.workload.specification_ref)?
        != serde_json::to_value(&request.specification_ref)?
        || serde_json::to_value(&raw.workload.source_subject_ref)?
            != serde_json::to_value(&request.source_subject_ref)?
    {
        return Err(StudyError::InvalidInput("OperationSubjectDiffers".into()));
    }
    let case_out = out.join(format!("case-{index:03}"));
    if let Some(checked) = program.as_ref() {
        if !checked.matches(&raw.parent.module, &raw.parent.analysis) {
            return Err(StudyError::InvalidInput(
                "ImmutableBatchProgramSubjectDiffers".into(),
            ));
        }
    } else {
        let bundle = UnverifiedSafetyBundle::from_json(&semantic_file(
            &prepared.join("safety-bundle.json"),
        )?)
        .map_library()?;
        let (assessment, checked) = safety_check::recheck(
            &raw.parent.module,
            &raw.parent.analysis,
            &bundle,
            &out.join("program-check"),
        )?;
        io::write(&out.join("program-assessment.json"), &assessment)?;
        *program = Some(checked.ok_or(StudyError::Prerequisite("ProgramNotRechecked"))?);
    }
    let mut expected_subject = semantic_file(&prepared.join("subject.json"))?;
    expected_subject["request"] = raw_oracle::invocation(roots, &case.requests[0])?.0;
    let basis_clock = std::time::Instant::now();
    let mut ground = Ground::supplied(raw.parent);
    ground.check(
        program
            .as_ref()
            .ok_or(StudyError::Prerequisite("ProgramNotRechecked"))?,
        &expected_subject,
    )?;
    ground.enable_views(role.retained())?;
    let verified_basis_and_views_ns = crate::timings::elapsed(basis_clock);
    let initial_provenance = ground.provenance().cloned();
    let mut operation_pair = Value::Null;
    let deliveries = if case.requests.len() == 2 {
        let mut documents = Vec::with_capacity(2);
        let mut expectations = Vec::with_capacity(2);
        pair_documents(case, roots, prepared, &mut documents, &mut expectations)?;
        let documents: [(Value, crate::fixtures::InvocationMetadata); 2] = documents
            .try_into()
            .map_err(|_| StudyError::Prerequisite("PairRequestCount"))?;
        let expectations: [Value; 2] = expectations
            .try_into()
            .map_err(|_| StudyError::Prerequisite("PairOriginalCount"))?;
        let pair = crate::operation::run_pair(
            &mut ground,
            &documents,
            &expectations,
            crate::operation::PairContext {
                role,
                diagnostic: matches!(request.mode, protocol::Mode::Diagnostic),
                out: &case_out,
                execution_scope: &case.case_id,
            },
        )?;
        let mut deliveries = Vec::with_capacity(pair.operations.len());
        pair_deliveries(&pair, &mut deliveries)?;
        operation_pair = serde_json::to_value(pair)?;
        deliveries
    } else {
        std::fs::create_dir(&case_out)?;
        let mut deliveries = Vec::new();
        single_operations(
            &mut ground,
            case,
            roots,
            prepared,
            crate::operation::PairContext {
                role,
                diagnostic: matches!(request.mode, protocol::Mode::Diagnostic),
                out: &case_out,
                execution_scope: &case.case_id,
            },
            &mut deliveries,
        )?;
        deliveries
    };
    Ok(
        json!({"case_id":case.case_id,"operations":case.requests.len(),"initial_provenance":initial_provenance,"final_history":ground.history()?,"final_provenance":ground.provenance(),"views_active":ground.views_active(),"private_authority_exported":false,"deliveries":deliveries,"operation_pair":operation_pair,"verified_basis_and_views_ns":verified_basis_and_views_ns,"basis_scope":"Original authority/view rechecking only; raw input replay and initial checked-program preparation occur earlier and are not included in this field"}),
    )
}

fn manifest_filename(path: &Path) -> bool {
    match path.file_name() {
        Some(name) => name == "manifest.json",
        None => false,
    }
}

fn execute_cases(context: CaseContext<'_>, summaries: &mut Vec<Value>) -> Result<()> {
    let mut program = None;
    let mut index = 0;
    while index < context.request.cases.len() {
        let value = execute_case(
            context,
            index,
            &context.request.cases[index],
            &context.request.inputs[index],
            &mut program,
        )?;
        summaries.push(value);
        index += 1;
    }
    Ok(())
}

pub fn execute(bytes: &[u8], roots: &InputRoots, out: &Path, role: Role) -> Result<()> {
    let request = protocol::parse_request_v2(bytes)?;
    let compiled = crate::source_identity::compiled_dependency_identity()?;
    if request.source_subject_ref.sha256 != compiled.source_subject_sha256 {
        return Err(StudyError::InvalidInput(
            "WorkerCompiledSubjectDiffers".into(),
        ));
    }
    roots.read(&request.source_subject_ref, protocol::MANIFEST_BOUND_V2)?;
    if out.exists() {
        return Err(StudyError::InvalidInput("OutputExists".into()));
    }
    if request.inputs.len() != request.cases.len() || !operation_cases_only(&request.cases) {
        return Err(StudyError::InvalidInput(
            "OperationPreparedInputCountOrKind".into(),
        ));
    }
    std::fs::create_dir(out)?;
    let mut summaries = Vec::new();
    execute_cases(
        CaseContext {
            request: &request,
            roots,
            out,
            role,
        },
        &mut summaries,
    )?;

    io::write(
        &out.join("summary.json"),
        &json!({"format":"core036.worker-conformance.v2","work_id":request.work_id,"record_id":request.record_id,"role":role.name(),"cases":summaries,"scope":"conformance only; detailed timing/diagnostic endpoint acceptance pending","native_proof":"unestablished","product_adoption":"unactivated"}),
    )
}

fn execute_cli(args: &[String], role: Role) -> Result<()> {
    if args.len() != 5 || args[0] != "execute" || args[1] != "--input" || args[3] != "--out" {
        return Err(StudyError::InvalidInput(
            "Usage: execute --input REQUEST_V2 --out NEW_DIRECTORY".into(),
        ));
    }
    let bytes = io::read_bytes(Path::new(&args[2]), protocol::CONTROL_BOUND_V2)?;
    execute(
        &bytes,
        &InputRoots::from_controller_environment()?,
        Path::new(&args[4]),
        role,
    )
}

pub fn entry(role: Role) -> std::process::ExitCode {
    let mut arguments = std::env::args();
    arguments.next();
    let mut args = Vec::new();
    for argument in arguments {
        args.push(argument);
    }
    if args.as_slice() == ["--help"] {
        println!(
            "execute --input REQUEST_V2 --out NEW_DIRECTORY; fixed {} role; legacy full delivery",
            role.name()
        );
        return std::process::ExitCode::SUCCESS;
    }
    match execute_cli(&args, role) {
        Ok(()) => std::process::ExitCode::SUCCESS,
        Err(error) => {
            eprintln!("{error}");
            std::process::ExitCode::from(error.exit_code())
        }
    }
}
