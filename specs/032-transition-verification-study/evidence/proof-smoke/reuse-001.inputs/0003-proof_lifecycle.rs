//! Disposable proof-artifact lifecycle. No Core runtime state or authorization is added.
use crate::{prover::{self,Case,Parameters,Prepared,Proof,ProofEnvelope},circuit::TransitionCircuit,types::*};
use serde::{Deserialize,Serialize};use sha2::{Digest,Sha256};
use std::{fs,path::Path};
#[derive(Debug,Clone,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Progress{pub native:u64,pub proved:u64,pub bridged:u64,pub pending:u64}
impl Progress{
    /// Coordinates are committed history positions, not attempts or circuit steps.
    pub fn new(native:u64,proved:u64,bridged:u64)->Result<Self>{
        if proved>native||bridged>native{return Err(StudyError::Integrity("proved/bridged position exceeds native head".into()));}
        Ok(Self{native,proved,bridged,pending:native-proved.min(bridged)})
    }
    pub fn complete(&self)->bool{self.pending==0}
}
#[derive(Debug,Clone,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Checkpoint{pub format:String,pub payload:Vec<u8>,pub sha256:String,pub steps:usize,pub head:HistoryRef,pub recipe:String}
fn head(p:&Prepared)->Result<HistoryRef>{p.observations.last().map(|v|v.after.history.clone()).ok_or_else(||StudyError::Unsupported("empty proof segment".into()))}
pub fn checkpoint(case:&Case,pp:&Parameters,proof:&ProofEnvelope)->Result<Checkpoint>{
    let p=prover::prepare(case)?;prover::verify(&p,pp,proof)?;
    let payload=prover::encode(proof)?;Ok(Checkpoint{format:"core032.checkpoint.v1".into(),sha256:format!("{:x}",Sha256::digest(&payload)),payload,steps:p.steps.len(),head:head(&p)?,recipe:prover::parameter_recipe(&p)?})
}
pub fn validate_checkpoint(case:&Case,pp:&Parameters,checkpoint:&Checkpoint)->Result<ProofEnvelope>{
    let p=prover::prepare(case)?;
    if checkpoint.format!="core032.checkpoint.v1"||checkpoint.steps!=p.steps.len()||checkpoint.head!=head(&p)?||checkpoint.recipe!=prover::parameter_recipe(&p)?||checkpoint.sha256!=format!("{:x}",Sha256::digest(&checkpoint.payload)){
        return Err(StudyError::InvalidWitness("checkpoint is partial, corrupt or belongs to another exact segment".into()));
    }
    let envelope:ProofEnvelope=prover::decode(&checkpoint.payload)?;prover::verify(&p,pp,&envelope)?;Ok(envelope)
}
pub fn resume(previous:&Case,extended:&Case,pp:&Parameters,checkpoint:&Checkpoint)->Result<ProofEnvelope>{
    if previous.config!=extended.config||previous.initial_population!=extended.initial_population||extended.operations.len()<=previous.operations.len()||!extended.operations.starts_with(&previous.operations){return Err(StudyError::InvalidWitness("restart changes shape, initial anchor or proved prefix".into()));}
    let envelope=validate_checkpoint(previous,pp,checkpoint)?;let p=prover::prepare(extended)?;
    let mut proof:Proof=prover::decode(&envelope.proof)?;
    for step in p.steps.iter().skip(previous.operations.len()){
        proof.prove_step(pp,&TransitionCircuit{shape:p.shape.clone(),witness:step.clone(),proposed:None}).map_err(|e|StudyError::Integrity(format!("Nova continuation: {e}")))?;
    }
    // Constructed output remains unaccepted until the independent verifier checks it.
    Ok(ProofEnvelope{format:"core032.nova-proof.v1".into(),binding:p.binding,parameters:prover::parameter_identity(pp),proof:prover::encode(&proof)?})
}
/// Atomic create-only publication on the cooperating local filesystem. This is
/// an artifact durability experiment, not a Store backend or device guarantee.
pub fn publish(path:&Path,checkpoint:&Checkpoint,interrupt_before_publish:bool)->Result<()>{
    let pending=path.with_extension(format!("pending-{}",std::process::id()));
    let bytes=prover::encode(checkpoint)?;
    let mut f=fs::OpenOptions::new().create_new(true).write(true).open(&pending)?;
    std::io::Write::write_all(&mut f,&bytes)?;f.sync_all()?;
    if interrupt_before_publish{return Err(StudyError::Unavailable("checkpoint staged but not published".into()));}
    fs::hard_link(&pending,path)?;fs::File::open(path.parent().ok_or_else(||StudyError::Io(std::io::Error::other("checkpoint parent missing")))?)?.sync_all()?;
    fs::remove_file(pending)?;Ok(())
}
pub fn read_untrusted(path:&Path)->Result<Checkpoint>{
    if !path.is_file(){return Err(StudyError::Unavailable("published checkpoint absent".into()));}
    if fs::metadata(path)?.len()>512*1024*1024{return Err(StudyError::InvalidWitness("checkpoint capacity".into()));}
    prover::decode(&fs::read(path)?)
}
