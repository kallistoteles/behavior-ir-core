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

/// Experimental lossless JSON DAG. It factors repeated structure and requires
/// retained support; it does not change any existing Core record or its hash.
#[derive(Debug,Clone,PartialEq,Eq,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct DagReference{pub format:String,pub root:String,pub claim:CompactObservation}
#[derive(Debug,Clone,PartialEq,Eq,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct DagSupport{pub format:String,pub nodes:std::collections::BTreeMap<String,serde_json::Value>}
const MAX_RAW:usize=256*1024*1024;
const MAX_NODES:usize=1_000_000;
fn node_hash(value:&serde_json::Value)->Result<String>{Ok(format!("{:x}",Sha256::digest(serde_json::to_vec(value)?)))}
fn intern(value:&serde_json::Value,support:&mut DagSupport,depth:usize)->Result<String>{
    use serde_json::{Value,json};
    if depth>128 || support.nodes.len()>=MAX_NODES{return Err(StudyError::Unsupported("DAG depth/node bound".into()));}
    let node=match value{
        Value::Array(values)=>json!({"kind":"array","items":values.iter().map(|v|intern(v,support,depth+1)).collect::<Result<Vec<_>>>()?}),
        Value::Object(fields)=>json!({"kind":"object","fields":fields.iter().map(|(key,value)|Ok((key,intern(value,support,depth+1)?))).collect::<Result<Vec<_>>>()?}),
        scalar=>json!({"kind":"scalar","value":scalar}),
    };
    let hash=node_hash(&node)?;
    if let Some(existing)=support.nodes.insert(hash.clone(),node.clone()){
        if existing!=node{return Err(StudyError::Integrity("hash collision in DAG interning".into()));}
    }Ok(hash)
}
pub fn pack(observed:&ReferenceObservation)->Result<(DagReference,DagSupport)>{
    let claim=compact(observed)?;
    if claim.raw_bytes>MAX_RAW{return Err(StudyError::Unsupported("observation exceeds DAG byte capacity".into()));}
    let value=serde_json::to_value(observed)?;
    let mut support=DagSupport{format:"core032.dag-support.v1".into(),nodes:Default::default()};
    let root=intern(&value,&mut support,0)?;
    Ok((DagReference{format:"core032.dag-reference.v1".into(),root,claim},support))
}
fn materialize(hash:&str,support:&DagSupport,depth:usize,budget:&mut usize)->Result<serde_json::Value>{
    use serde_json::Value;
    let bad=||StudyError::InvalidWitness("corrupt/noncanonical DAG node".into());
    if depth>128 || *budget<2{return Err(StudyError::InvalidWitness("DAG depth or expanded-byte bound".into()));}*budget-=2;
    let node=support.nodes.get(hash).ok_or_else(||StudyError::Unavailable(format!("DAG support node {hash} missing")))?;
    if node_hash(node)?!=hash{return Err(bad());}
    let object=node.as_object().ok_or_else(bad)?;
    if object.len()!=2{return Err(bad());}
    match node["kind"].as_str(){
        Some("scalar")=>{
            let v=node.get("value").ok_or_else(bad)?;
            if v.is_array()||v.is_object(){return Err(bad());}
            let bytes=serde_json::to_vec(v)?.len();*budget=budget.checked_sub(bytes).ok_or_else(bad)?;Ok(v.clone())
        }
        Some("array")=>Ok(Value::Array(node["items"].as_array().ok_or_else(bad)?.iter().map(|child|materialize(child.as_str().ok_or_else(bad)?,support,depth+1,budget)).collect::<Result<Vec<_>>>()?)),
        Some("object")=>{
            let mut fields=serde_json::Map::new();let mut last=None::<String>;
            for entry in node["fields"].as_array().ok_or_else(bad)?{
                let pair=entry.as_array().ok_or_else(bad)?;if pair.len()!=2{return Err(bad());}
                let key=pair[0].as_str().ok_or_else(bad)?;
                if last.as_deref().is_some_and(|previous|previous>=key){return Err(bad());}
                *budget=budget.checked_sub(key.len()+4).ok_or_else(bad)?;
                fields.insert(key.into(),materialize(pair[1].as_str().ok_or_else(bad)?,support,depth+1,budget)?);last=Some(key.into());
            }Ok(Value::Object(fields))
        }
        _=>Err(bad()),
    }
}
pub fn unpack(reference:&DagReference,support:Option<&DagSupport>)->Result<ReferenceObservation>{
    let support=support.ok_or_else(||StudyError::Unavailable("DAG support unavailable".into()))?;
    if reference.format!="core032.dag-reference.v1"||support.format!="core032.dag-support.v1"||support.nodes.len()>MAX_NODES||reference.claim.raw_bytes>MAX_RAW{return Err(StudyError::InvalidWitness("DAG format/capacity".into()));}
    let value=materialize(&reference.root,support,0,&mut MAX_RAW.clone())?;
    let observation:ReferenceObservation=serde_json::from_value(value)?;
    expand(&reference.claim,&observation)
}
