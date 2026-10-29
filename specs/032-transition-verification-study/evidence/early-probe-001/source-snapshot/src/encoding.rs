//! Content-addressed exact support reference; no proof or availability authority.
use crate::types::*;
use serde::{Deserialize,Serialize};
use sha2::{Digest,Sha256};
#[derive(Debug,Clone,PartialEq,Eq,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct CompactObservation {
    pub format:String,
    pub claim_digest:String,
    pub raw_bytes:usize,
}
pub fn compact(observed:&ReferenceObservation)->Result<CompactObservation>{
    let raw=observed.export()?;
    Ok(CompactObservation{format:"core032.study-observation.v1".into(),claim_digest:format!("{:x}",Sha256::digest(&raw)),raw_bytes:raw.len()})
}
pub fn expand(compact:&CompactObservation,support:&ReferenceObservation)->Result<ReferenceObservation>{
    if compact.format!="core032.study-observation.v1"{return Err(StudyError::Unsupported("observation profile".into()));}
    let expected=self::compact(support)?;
    if compact!=&expected{return Err(StudyError::InvalidWitness("complete support digest/length differs".into()));}
    Ok(support.clone())
}
