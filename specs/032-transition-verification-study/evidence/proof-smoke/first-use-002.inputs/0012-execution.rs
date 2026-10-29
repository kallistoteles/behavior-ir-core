//! Comparable native dispatch. All normative output remains complete Core data.
use crate::{
    checker, encoding,
    fixtures::Config,
    maintained::Maintained,
    reference::Reference,
    types::*,
    witness::{ReplaySupport, TransitionWitness},
};
use serde::{Deserialize, Serialize};
use std::time::Instant;
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct NativeCase {
    pub format: String,
    pub case_id: String,
    pub config: Config,
    pub initial_population: usize,
    pub prefix: Vec<Operation>,
    pub operations: Vec<Operation>,
}
impl NativeCase {
    pub fn validate(&self) -> Result<()> {
        if self.format != "core032.native-case.v1"
            || self.case_id.is_empty()
            || self.operations.is_empty()
            || self.operations.len() > 128
            || self.prefix.len() > 128
            || self.initial_population > 8192
        {
            return Err(StudyError::Unsupported(
                "native case format/capacity".into(),
            ));
        }
        self.config.validate()
    }
}
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct NativeRun {
    pub format: String,
    pub case_id: String,
    pub candidate: String,
    pub profile: String,
    #[serde(default)]
    pub observations: Vec<ReferenceObservation>,
    pub study_bundle: Option<encoding::DagBundle>,
    pub initialization_seconds: f64,
    pub prefix_seconds: f64,
    pub operation_seconds: Vec<f64>,
    pub producer_seconds: Option<f64>,
    pub checker_seconds: Option<f64>,
    pub output_seconds: f64,
    pub expanded_bytes: u64,
    pub support_bytes: u64,
    pub compact_bytes: u64,
    pub whole_seconds: f64,
    pub diagnostics: Option<crate::metrics::Counters>,
    pub diagnostic_scope: String,
}
fn finish(mut result: NativeRun, start: Instant) -> Result<NativeRun> {
    let output_start = Instant::now();
    for observation in &result.observations {
        result.expanded_bytes += observation.export()?.len() as u64;
    }
    if result.profile == "study" {
        let bundle = encoding::pack_many(&result.observations)?;
        result.support_bytes = serde_json::to_vec(&bundle.support)?.len() as u64;
        result.compact_bytes = serde_json::to_vec(&bundle.references)?.len() as u64;
        result.study_bundle = Some(bundle);
    }
    result.output_seconds = output_start.elapsed().as_secs_f64();
    result.whole_seconds = start.elapsed().as_secs_f64();
    result.diagnostics = crate::metrics::read();
    Ok(result)
}
pub fn check_produced(
    case: &NativeCase,
    proposed: &[ReferenceObservation],
) -> Result<Vec<ReferenceObservation>> {
    case.validate()?;
    if proposed.len() != case.operations.len() {
        return Err(StudyError::InvalidWitness(
            "native attempt coverage incomplete".into(),
        ));
    }
    let mut anchor = Reference::new(case.config.clone(), case.initial_population)?;
    for operation in &case.prefix {
        anchor.execute(operation.clone())?;
    }
    let subject = anchor.subject.clone();
    let mut expected = anchor.snapshot()?;
    let mut prefix = case.prefix.clone();
    let mut checked = Vec::new();
    for (operation, proposed) in case.operations.iter().zip(proposed) {
        let witness = TransitionWitness {
            subject: subject.clone(),
            before: expected.clone(),
            proposed: proposed.clone(),
            support: ReplaySupport {
                config: case.config.clone(),
                initial_population: case.initial_population,
                prefix: prefix.clone(),
            },
        };
        let actual = checker::check(&subject, &expected, operation, &witness)?;
        expected = actual.after.clone();
        prefix.push(operation.clone());
        checked.push(actual);
    }
    Ok(checked)
}
pub fn run(case: &NativeCase, candidate: &str, profile: &str) -> Result<NativeRun> {
    case.validate()?;
    if !matches!(candidate, "A" | "B" | "producer") || !matches!(profile, "existing" | "study") {
        return Err(StudyError::Unsupported(
            "native candidate/output profile".into(),
        ));
    }
    let start = Instant::now();
    let mut result = NativeRun {
        format: "core032.native-run.v1".into(),
        case_id: case.case_id.clone(),
        candidate: candidate.into(),
        profile: profile.into(),
        observations: Vec::new(),
        study_bundle: None,
        initialization_seconds: 0.,
        prefix_seconds: 0.,
        operation_seconds: Vec::new(),
        producer_seconds: None,
        checker_seconds: None,
        output_seconds: 0.,
        expanded_bytes: 0,
        support_bytes: 0,
        compact_bytes: 0,
        whole_seconds: 0.,
        diagnostics: None,
        diagnostic_scope: crate::metrics::SCOPE.into(),
    };
    if candidate == "A" {
        let mut executor = Maintained::new(case.config.clone(), case.initial_population)?;
        result.initialization_seconds = start.elapsed().as_secs_f64();
        let prefix = Instant::now();
        for operation in &case.prefix {
            executor.execute(operation.clone())?;
        }
        result.prefix_seconds = prefix.elapsed().as_secs_f64();
        for operation in &case.operations {
            let clock = Instant::now();
            result
                .observations
                .push(executor.execute(operation.clone())?);
            result.operation_seconds.push(clock.elapsed().as_secs_f64());
        }
    } else {
        let mut executor = Reference::new(case.config.clone(), case.initial_population)?;
        result.initialization_seconds = start.elapsed().as_secs_f64();
        let prefix = Instant::now();
        for operation in &case.prefix {
            executor.execute(operation.clone())?;
        }
        result.prefix_seconds = prefix.elapsed().as_secs_f64();
        let producer = Instant::now();
        for operation in &case.operations {
            let clock = Instant::now();
            result
                .observations
                .push(executor.execute(operation.clone())?);
            result.operation_seconds.push(clock.elapsed().as_secs_f64());
        }
        result.producer_seconds = Some(producer.elapsed().as_secs_f64());
        if candidate == "B" {
            let checker = Instant::now();
            result.observations = check_produced(case, &result.observations)?;
            result.checker_seconds = Some(checker.elapsed().as_secs_f64());
        }
    }
    finish(result, start)
}

/// Transport bytes for the study profile contain actual shared objects and roots.
/// Full audit bytes are obtained only by verified expansion of retained support.
pub fn to_wire(run: &NativeRun) -> Result<serde_json::Value> {
    let mut wire = serde_json::Map::new();
    macro_rules! field {
        ($name:ident) => {
            wire.insert(stringify!($name).into(), serde_json::to_value(&run.$name)?);
        };
    }
    field!(format);
    field!(case_id);
    field!(candidate);
    field!(profile);
    if run.profile == "existing" {
        field!(observations);
    }
    field!(study_bundle);
    field!(initialization_seconds);
    field!(prefix_seconds);
    field!(operation_seconds);
    field!(producer_seconds);
    field!(checker_seconds);
    field!(output_seconds);
    field!(expanded_bytes);
    field!(support_bytes);
    field!(compact_bytes);
    field!(whole_seconds);
    field!(diagnostics);
    field!(diagnostic_scope);
    Ok(serde_json::Value::Object(wire))
}
pub fn from_wire(case: &NativeCase, profile: &str, wire: serde_json::Value) -> Result<NativeRun> {
    if profile == "study" && wire.get("observations").is_some() {
        return Err(StudyError::InvalidWitness(
            "study transport must use its sole declared DAG interpretation".into(),
        ));
    }
    let mut run: NativeRun = serde_json::from_value(wire)?;
    if run.format != "core032.native-run.v1"
        || run.case_id != case.case_id
        || run.profile != profile
    {
        return Err(StudyError::InvalidWitness(
            "native output subject/profile mismatch".into(),
        ));
    }
    if profile == "study" {
        run.observations = encoding::unpack_many(
            run.study_bundle
                .as_ref()
                .ok_or_else(|| StudyError::Unavailable("study support absent".into()))?,
        )?;
    } else if profile != "existing" || run.study_bundle.is_some() {
        return Err(StudyError::InvalidWitness(
            "unexpected output interpretation".into(),
        ));
    }
    if run.observations.len() != case.operations.len()
        || run
            .observations
            .iter()
            .zip(&case.operations)
            .any(|(obs, op)| &obs.operation != op)
    {
        return Err(StudyError::InvalidWitness(
            "output attempt inventory differs".into(),
        ));
    }
    Ok(run)
}
pub fn format_observations(
    case: &NativeCase,
    profile: &str,
    observations: Vec<ReferenceObservation>,
) -> Result<NativeRun> {
    case.validate()?;
    if !matches!(profile, "existing" | "study") || observations.len() != case.operations.len() {
        return Err(StudyError::Unsupported(
            "reference output format/attempt coverage".into(),
        ));
    }
    let start = Instant::now();
    finish(
        NativeRun {
            format: "core032.native-run.v1".into(),
            case_id: case.case_id.clone(),
            candidate: "reference-format-only".into(),
            profile: profile.into(),
            observations,
            study_bundle: None,
            initialization_seconds: 0.,
            prefix_seconds: 0.,
            operation_seconds: vec![],
            producer_seconds: None,
            checker_seconds: None,
            output_seconds: 0.,
            expanded_bytes: 0,
            support_bytes: 0,
            compact_bytes: 0,
            whole_seconds: 0.,
            diagnostics: None,
            diagnostic_scope: crate::metrics::SCOPE.into(),
        },
        start,
    )
}
