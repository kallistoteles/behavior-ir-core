//! Comparable native dispatch. All normative output remains complete Core data.
use crate::{checker,encoding,fixtures::Config,maintained::Maintained,reference::Reference,types::*,witness::{ReplaySupport,TransitionWitness}};
use serde::{Deserialize,Serialize};
use std::time::Instant;
#[derive(Debug,Clone,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct NativeCase{pub format:String,pub case_id:String,pub config:Config,pub initial_population:usize,pub prefix:Vec<Operation>,pub operations:Vec<Operation>}
impl NativeCase{
    pub fn validate(&self)->Result<()>{if self.format!="core032.native-case.v1"||self.case_id.is_empty()||self.operations.is_empty()||self.operations.len()>128||self.prefix.len()>128||self.initial_population>8192{return Err(StudyError::Unsupported("native case format/capacity".into()));}self.config.validate()}
}
#[derive(Debug,Clone,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct NativeRun{pub format:String,pub case_id:String,pub candidate:String,pub profile:String,pub observations:Vec<ReferenceObservation>,pub initialization_seconds:f64,pub prefix_seconds:f64,pub operation_seconds:Vec<f64>,pub producer_seconds:f64,pub checker_seconds:f64,pub output_seconds:f64,pub expanded_bytes:u64,pub support_bytes:u64,pub compact_bytes:u64,pub whole_seconds:f64}
fn finish(mut result:NativeRun,start:Instant)->Result<NativeRun>{
    let output_start=Instant::now();
    for observation in &result.observations{
        result.expanded_bytes+=observation.export()?.len() as u64;
        if result.profile=="study"{
            let (reference,support)=encoding::pack(observation)?;
            let expanded=encoding::unpack(&reference,Some(&support))?;
            if !expanded.same_claim(observation){return Err(StudyError::Integrity("study profile expansion mismatch".into()));}
            result.support_bytes+=serde_json::to_vec(&support)?.len() as u64;
            result.compact_bytes+=serde_json::to_vec(&reference)?.len() as u64;
        }
    }
    result.output_seconds=output_start.elapsed().as_secs_f64();result.whole_seconds=start.elapsed().as_secs_f64();Ok(result)
}
pub fn check_produced(case:&NativeCase,proposed:&[ReferenceObservation])->Result<Vec<ReferenceObservation>>{
    case.validate()?;if proposed.len()!=case.operations.len(){return Err(StudyError::InvalidWitness("native attempt coverage incomplete".into()));}
    let mut anchor=Reference::new(case.config.clone(),case.initial_population)?;
    for operation in &case.prefix{anchor.execute(operation.clone())?;}
    let subject=anchor.subject.clone();let mut expected=anchor.snapshot()?;let mut prefix=case.prefix.clone();let mut checked=Vec::new();
    for (operation,proposed) in case.operations.iter().zip(proposed){
        let witness=TransitionWitness{subject:subject.clone(),before:expected.clone(),proposed:proposed.clone(),support:ReplaySupport{config:case.config.clone(),initial_population:case.initial_population,prefix:prefix.clone()}};
        let actual=checker::check(&subject,&expected,operation,&witness)?;
        expected=actual.after.clone();prefix.push(operation.clone());checked.push(actual);
    }Ok(checked)
}
pub fn run(case:&NativeCase,candidate:&str,profile:&str)->Result<NativeRun>{
    case.validate()?;
    if !matches!(candidate,"A"|"B"|"producer")||!matches!(profile,"existing"|"study"){return Err(StudyError::Unsupported("native candidate/output profile".into()));}
    let start=Instant::now();let mut result=NativeRun{format:"core032.native-run.v1".into(),case_id:case.case_id.clone(),candidate:candidate.into(),profile:profile.into(),observations:Vec::new(),initialization_seconds:0.,prefix_seconds:0.,operation_seconds:Vec::new(),producer_seconds:0.,checker_seconds:0.,output_seconds:0.,expanded_bytes:0,support_bytes:0,compact_bytes:0,whole_seconds:0.};
    if candidate=="A"{
        let mut executor=Maintained::new(case.config.clone(),case.initial_population)?;result.initialization_seconds=start.elapsed().as_secs_f64();let prefix=Instant::now();
        for operation in &case.prefix{executor.execute(operation.clone())?;}result.prefix_seconds=prefix.elapsed().as_secs_f64();
        for operation in &case.operations{let clock=Instant::now();result.observations.push(executor.execute(operation.clone())?);result.operation_seconds.push(clock.elapsed().as_secs_f64());}
    }else{
        let mut executor=Reference::new(case.config.clone(),case.initial_population)?;result.initialization_seconds=start.elapsed().as_secs_f64();let prefix=Instant::now();
        for operation in &case.prefix{executor.execute(operation.clone())?;}result.prefix_seconds=prefix.elapsed().as_secs_f64();
        let producer=Instant::now();
        for operation in &case.operations{let clock=Instant::now();result.observations.push(executor.execute(operation.clone())?);result.operation_seconds.push(clock.elapsed().as_secs_f64());}
        result.producer_seconds=producer.elapsed().as_secs_f64();
        if candidate=="B"{let checker=Instant::now();result.observations=check_produced(case,&result.observations)?;result.checker_seconds=checker.elapsed().as_secs_f64();}
    }
    finish(result,start)
}
