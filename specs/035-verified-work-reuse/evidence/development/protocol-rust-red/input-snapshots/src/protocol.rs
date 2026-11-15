use serde_json::Value;
use std::collections::BTreeMap;
#[derive(Debug,thiserror::Error)]
pub enum ArtifactError { #[error(transparent)] Json(#[from]serde_json::Error) }
pub fn parse_json(raw:&[u8],_limit:usize)->Result<Value,ArtifactError>{Ok(serde_json::from_slice(raw)?)}
pub fn validate_outcomes(_v:&Value)->Result<(),ArtifactError>{Ok(())}
pub fn validate_subject(_a:&Value,_b:&Value)->Result<(),ArtifactError>{Ok(())}
pub fn validate_graph(_g:&BTreeMap<String,Vec<String>>)->Result<(),ArtifactError>{Ok(())}
pub fn semantic_digest(v:&Value)->Result<String,ArtifactError>{Ok(serde_json::to_string(v)?)}
