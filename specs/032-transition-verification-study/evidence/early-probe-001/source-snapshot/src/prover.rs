//! Bounded exact-computation proof, with a mandatory separately checked Core bridge.
//! Parameters are locally derived from the expected circuit, never accepted from a producer.
use crate::{circuit::{Fr,MachineState,Shape,StepWitness,TransitionCircuit},consumer::{ClaimBinding,check_binding},fixtures::Config,reference::Reference,types::*};
use nova_snark::{nova::{PublicParams,RecursiveSNARK},provider::{PallasEngine,VestaEngine,ipa_pc::EvaluationEngine},spartan::snark::RelaxedR1CSSNARK,traits::snark::RelaxedR1CSSNARKTrait};
use serde::{Deserialize,Serialize};
use sha2::{Digest,Sha256};
use ff::PrimeField;
use std::{collections::BTreeMap,time::Instant};
pub type Parameters=PublicParams<PallasEngine,VestaEngine,TransitionCircuit>;
pub type Proof=RecursiveSNARK<PallasEngine,VestaEngine,TransitionCircuit>;
type S1=RelaxedR1CSSNARK<PallasEngine,EvaluationEngine<PallasEngine>>;
type S2=RelaxedR1CSSNARK<VestaEngine,EvaluationEngine<VestaEngine>>;
const MAX_BLOB:usize=512*1024*1024;
#[derive(Debug,Clone,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Case{pub format:String,pub config:Config,pub initial_population:usize,pub operations:Vec<Operation>}
pub struct Prepared{pub shape:Shape,pub initial:MachineState,pub final_state:MachineState,pub steps:Vec<StepWitness>,pub observations:Vec<ReferenceObservation>,pub binding:ClaimBinding}
fn digest<T:Serialize>(value:&T)->Result<[u8;32]>{Ok(Sha256::digest(serde_json::to_vec(value)?).into())}
fn hex(bytes:&[u8])->String{bytes.iter().map(|b|format!("{b:02x}")).collect()}
fn step(shape:&Shape,op:&Operation)->Result<StepWitness>{
    let index=|id:&str|shape.catalog.iter().position(|x|x==id).ok_or_else(||StudyError::Unsupported("identity outside finite proof catalog".into()));
    Ok(match op{
        Operation::Create{ids,owner:None} if ids.len()==1=>StepWitness::new(0,index(&ids[0])?,0,0,0),
        Operation::Set{ids,value} if ids.len()==1=>StepWitness::new(1,index(&ids[0])?,*value,0,0),
        Operation::Remove{key} if key.entity=="E"=>StepWitness::new(2,index(&key.id)?,0,0,0),
        Operation::Emit=>StepWitness::new(3,0,0,0,0),
        Operation::Probe{threshold,max_matches}=>StepWitness::new(4,0,0,*threshold,*max_matches),
        _=>return Err(StudyError::Unsupported("operation outside bounded proof language (no refs/add/lazy/batch)".into())),
    })
}
/// Independent comparison to actual Core snapshots, not just to the witness constructor.
fn check_state(shape:&Shape,machine:&MachineState,core:&OperationalState,padding:usize)->Result<()>{
    machine.validate(shape)?;
    if core.used.len()!=machine.used.iter().filter(|b|**b).count() || core.live.len()!=machine.live.iter().filter(|b|**b).count(){return Err(StudyError::Integrity("proof/Core inventory length mismatch".into()));}
    for (i,id) in shape.catalog.iter().enumerate(){
        let key=Key::new("E",id);let value=core.live.get(&key);
        if core.used.contains(&key)!=machine.used[i] || value.is_some()!=machine.live[i]{return Err(StudyError::Integrity("proof/Core live or lifetime mismatch".into()));}
        if let Some(value)=value{match value{
            EntityValue::E{x,padding:actual,owner:None} if *x>0 && u64::try_from(*x).ok()==Some(machine.values[i]) && actual==&"p".repeat(padding)=>{},
            _=>return Err(StudyError::Integrity("proof/Core typed value mismatch".into())),
        }}
    }Ok(())
}
pub fn prepare(case:&Case)->Result<Prepared>{
    let capacity=usize::try_from(case.config.limit).map_err(|_|StudyError::Unsupported("negative circuit limit".into()))?;
    if case.format!="core032.proof-case.v1" || !(1..=16).contains(&capacity) || case.config.batch!=1 || case.config.references || case.operations.is_empty() || case.operations.len()>128 || case.initial_population>capacity {
        return Err(StudyError::Unsupported("bounded proof case/configuration".into()));
    }
    let mut reference=Reference::new(case.config.clone(),case.initial_population)?;
    let anchor=reference.snapshot()?;
    let shape=Shape{capacity,commands:case.config.commands as u64,subject:digest(&reference.subject)?,anchor:digest(&anchor)?,catalog:(0..2*capacity).map(|i|format!("e{i}")).collect()};shape.validate()?;
    let steps=case.operations.iter().map(|op|step(&shape,op)).collect::<Result<Vec<_>>>()?;
    let mut initial=MachineState::empty(&shape);
    for i in 0..case.initial_population{initial.live[i]=true;initial.used[i]=true;initial.values[i]=1;}
    check_state(&shape,&initial,&anchor,case.config.padding)?;
    let mut state=initial.clone();let mut observations=Vec::new();
    for (op,step) in case.operations.iter().zip(&steps){
        let actual=reference.execute(op.clone())?;
        state=state.apply(&shape,step)?;
        let expected_code=match state.last_outcome{0=>"ALLOW",1=>"DENY",2=>"ENTITY_ID_ALREADY_USED",3=>"ENTITY_NOT_FOUND",_=>return Err(StudyError::Integrity("unreachable result".into()))};
        let code=actual.core_record.as_ref().and_then(|v|v["result"].as_str()).or_else(||actual.store_error.as_ref().and_then(|v|v["code"].as_str()));
        if code!=Some(expected_code) {return Err(StudyError::Integrity(format!("bounded relation/Core outcome differs: {expected_code} versus {code:?}")));}
        check_state(&shape,&state,&actual.after,case.config.padding)?;
        if actual.after.history.position!=state.commits || actual.commands.len()!=if state.last_outcome==0{case.config.commands}else{0}{return Err(StudyError::Integrity("proof/Core commit or command occurrences differ".into()));}
        observations.push(actual);
    }
    let binding=ClaimBinding{format:"core032.claim-binding.v1".into(),steps:steps.len(),fields:BTreeMap::from([
        ("subject".into(),hex(&shape.subject)),("schema".into(),anchor.schema.clone()),("profile".into(),anchor.profile.clone()),
        ("checker".into(),hex(&Sha256::digest(include_bytes!("circuit/step.rs")))),("anchor".into(),hex(&shape.anchor)),
        ("endpoint".into(),hex(&digest(&reference.snapshot()?)?)),("outputs".into(),hex(&digest(&observations)?)),
        ("case".into(),hex(&digest(case)?)),("model".into(),"core032.bounded-five-operations.v1".into()),
    ])};
    Ok(Prepared{shape,initial,final_state:state,steps,observations,binding})
}
fn circuit(p:&Prepared,step:StepWitness)->TransitionCircuit{TransitionCircuit{shape:p.shape.clone(),witness:step,proposed:None}}
pub fn parameters(p:&Prepared)->Result<Parameters>{
    Parameters::setup(&circuit(p,p.steps[0].clone()),&*S1::ck_floor(),&*S2::ck_floor()).map_err(|e|StudyError::Integrity(format!("Nova parameter derivation: {e}")))
}
pub fn parameter_identity(pp:&Parameters)->String{hex(pp.digest().to_repr().as_ref())}
#[derive(Debug,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ProofEnvelope{pub format:String,pub binding:ClaimBinding,pub parameters:String,pub proof:Vec<u8>}
pub fn encode<T:Serialize>(v:&T)->Result<Vec<u8>>{bincode::serde::encode_to_vec(v,bincode::config::standard().with_fixed_int_encoding()).map_err(|e|StudyError::Integrity(format!("proof serialization: {e}")))}
pub fn decode<T:serde::de::DeserializeOwned>(bytes:&[u8])->Result<T>{
    if bytes.len()>MAX_BLOB{return Err(StudyError::Integrity("proof blob exceeds bound".into()));}
    let (value,n)=bincode::serde::decode_from_slice(bytes,bincode::config::standard().with_fixed_int_encoding().with_limit::<MAX_BLOB>()).map_err(|e|StudyError::InvalidWitness(format!("proof decoding: {e}")))?;
    if n!=bytes.len(){return Err(StudyError::InvalidWitness("trailing proof data".into()));}Ok(value)
}
pub fn produce(p:&Prepared,pp:&Parameters)->Result<(ProofEnvelope,Vec<f64>)>{
    let z0=p.initial.to_fields(&p.shape)?;
    let mut proof=Proof::new(pp,&circuit(p,p.steps[0].clone()),&z0).map_err(|e|StudyError::Integrity(format!("Nova initialization: {e}")))?;
    let mut timings=Vec::new();
    for (i,step) in p.steps.iter().enumerate(){
        let start=Instant::now();proof.prove_step(pp,&circuit(p,step.clone())).map_err(|e|StudyError::Integrity(format!("Nova fold {i}: {e}")))?;timings.push(start.elapsed().as_secs_f64());
        eprintln!("core032 fold {} complete ({:.3}s)",i+1,timings[i]);
    }
    Ok((ProofEnvelope{format:"core032.nova-proof.v1".into(),binding:p.binding.clone(),parameters:parameter_identity(pp),proof:encode(&proof)?},timings))
}
pub fn verify(p:&Prepared,pp:&Parameters,envelope:&ProofEnvelope)->Result<()>{
    check_binding(&p.binding,&envelope.binding)?;
    if envelope.format!="core032.nova-proof.v1" || envelope.parameters!=parameter_identity(pp){return Err(StudyError::InvalidWitness("proof format or independently derived parameter identity differs".into()));}
    let proof:Proof=decode(&envelope.proof)?;
    let actual:Vec<Fr>=proof.verify(pp,p.steps.len(),&p.initial.to_fields(&p.shape)?).map_err(|e|StudyError::InvalidWitness(format!("Nova proof verification: {e}")))?;
    if actual!=p.final_state.to_fields(&p.shape)?{return Err(StudyError::InvalidWitness("verified circuit endpoint differs from independently checked Core endpoint".into()));}Ok(())
}
