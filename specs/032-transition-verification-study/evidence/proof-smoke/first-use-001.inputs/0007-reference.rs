//! Actual Core evaluation/commit and complete history-bound operational capture.
use crate::{fixtures::{self,Config},subject::{Subject,recognize},types::*};
use behavior_store::{Backend,InMemoryBackend,Store};
use serde_json::{Value as Json,json};
use std::collections::{BTreeMap,BTreeSet};
pub const NOW: &str="2026-10-28T00:00:00Z";
pub struct Reference {
    pub module: behavior_core::semantic::Module,
    pub store: Store<InMemoryBackend>,
    pub subject: Subject,
}
pub type CoreRequest = (String,BTreeMap<String,String>,Json,Json);
pub fn core_request(config: &Config, operation: &Operation) -> Result<CoreRequest> {
    let mut bindings=BTreeMap::new();let mut input=json!({});let mut context=json!({});
    let action=match operation {
        Operation::Create { ids,owner }=> {
            if ids.len()!=config.batch || config.references!=owner.is_some() {return Err(StudyError::Unsupported("creation binding arity/parent presence".into()));}
            for (i,id) in ids.iter().enumerate(){input[format!("id{i}")]=json!(id);}
            if let Some(parent)=owner {bindings.insert("parent".into(),parent.clone());}
            "create"
        }
        Operation::Set { ids,value }=>{
            if ids.len()!=config.batch {return Err(StudyError::Unsupported("assignment binding arity".into()));}
            for(i,id)in ids.iter().enumerate(){bindings.insert(format!("e{i}"),id.clone());}input["value"]=json!(value);"set"
        }
        Operation::Remove { key }=>match key.entity.as_str(){
            "E"=>{bindings.insert("child".into(),key.id.clone());"remove"}
            "Parent" if config.references=>{bindings.insert("parent".into(),key.id.clone());"remove_parent"}
            _=>return Err(StudyError::Unsupported("unknown removal entity".into())),
        },
        Operation::Emit=>"emit",
        Operation::Probe {threshold,max_matches}=>{context["threshold"]=json!(threshold);input["max_matches"]=json!(max_matches);"probe"},
        Operation::Add{id,delta}=>{bindings.insert("e0".into(),id.clone());input["delta"]=json!(delta);"add"},
        Operation::Lazy{id,delta,enabled}=>{bindings.insert("e0".into(),id.clone());input["delta"]=json!(delta);context["enabled"]=json!(enabled);"lazy"},
    };
    Ok((action.into(),bindings,input,context))
}
impl Reference {
    pub fn new(config:Config,n:usize)->Result<Self>{
        let module=behavior_core::admit(&fixtures::module_wire(&config)?.to_string()).map_err(|e|StudyError::Admission(format!("{e:?}")))?;
        let subject=recognize(&module,&config)?;
        let policy=serde_json::from_value(json!({"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}))?;
        let genesis=behavior_store::store::genesis_v2_for(&module,policy,fixtures::seed(&config,n)?)?;
        let store=Store::create(InMemoryBackend::new(),&module,genesis)?;
        Ok(Self{module,store,subject})
    }
    pub fn snapshot(&self)->Result<OperationalState>{
        let history=self.store.current_history()?;
        let export=self.store.export_seed_at(&self.module,&history)?;
        let mut live=BTreeMap::new();
        for row in export.seed {
            let id=row.value["id"].as_str().ok_or_else(||StudyError::Integrity("missing typed identity".into()))?;
            let key=Key::new(&row.entity,id);
            if live.insert(key,EntityValue::from_core(&row.entity,&row.value)?).is_some(){return Err(StudyError::Integrity("duplicate snapshot row".into()));}
        }
        let genesis=self.store.backend().genesis()?.ok_or_else(||StudyError::Integrity("missing genesis".into()))?;
        let mut used=BTreeSet::new();
        for row in genesis.seed {
            let id=row.value["id"].as_str().ok_or_else(||StudyError::Integrity("missing seed identity".into()))?;
            used.insert(Key::new(row.entity,id));
        }
        for position in 1..=history.position {
            let record=self.store.backend().record(position)?.ok_or_else(||StudyError::Integrity("missing lifetime history record".into()))?;
            if record.position!=position || record.migration.is_some(){return Err(StudyError::Unsupported("nonordinary or mispositioned segment history".into()));}
            for row in record.created {used.insert(Key::new(row.entity,row.id));}
        }
        if live.keys().any(|key|!used.contains(key)){return Err(StudyError::Integrity("lifetime inventory excludes a live identity".into()));}
        Ok(OperationalState {behavior:self.subject.behavior.clone(),schema:export.schema,profile:self.subject.profile.clone(),history,live,used})
    }
    pub fn execute(&mut self,operation:Operation)->Result<ReferenceObservation>{
        let before=self.snapshot()?;
        let(action,bindings,input,context)=core_request(&self.subject.config,&operation)?;
        let evaluated=self.store.evaluate(&self.module,&action,&bindings,&input,&context,NOW,None);
        let mut error=None; let mut committed=None;
        let (outcome,record,commands)=match evaluated {
            Ok(evaluated)=>{
                let outcome=match evaluated.record["result"].as_str(){
                    Some("ALLOW")=>SemanticOutcome::Allow,Some("DENY"|"ENTITY_ID_ALREADY_USED"|"LIFECYCLE_CONFLICT")=>SemanticOutcome::Refused,
                    Some("ERROR"|"EVALUATION_ERROR"|"INVALID_INPUT"|"INVALID_STATE"|"INVALID_CONTEXT"|"INVALID_BINDING")=>SemanticOutcome::EvaluationError,
                    other=>return Err(StudyError::Integrity(format!("unknown Core result {other:?}"))),
                };
                let commands=evaluated.record.get("commands").and_then(|v|v.get("intents")).and_then(Json::as_array).cloned().unwrap_or_default();
                if let Some(bundle)=evaluated.bundle {
                    self.store.commit(&self.module,&bundle.evaluated_state,&bundle)?;
                    committed=self.store.backend().record(self.store.current_history()?.position)?;
                }else if outcome==SemanticOutcome::Allow{return Err(StudyError::Integrity("Core ALLOW lacks a commit candidate".into()));}
                (outcome,Some(evaluated.record),commands)
            }
            Err(e)=>{
                if matches!(e,behavior_store::StoreError::Backend(_)){return Err(e.into());}
                error=Some(json!({"stage":"Store::evaluate","code":e.code(),"message":e.to_string()}));
                (SemanticOutcome::EvaluationError,None,vec![])
            }
        };
        let after=self.snapshot()?;
        Ok(ReferenceObservation{before,after,operation,outcome,core_record:record,store_error:error,commands,committed_record:committed,support_available:true})
    }
}

/// Public data protocol for the existing private Core libtest reference route.
/// Constructing this request is not a measurement or a claim that it was executed.
pub fn full_scenario(config:&Config,n:usize,operations:&[Operation])->Result<Json>{
    let reference=Reference::new(config.clone(),n)?;
    let genesis=reference.store.backend().genesis()?.ok_or_else(||StudyError::Integrity("missing genesis".into()))?;
    let attempts=operations.iter().map(|op|{
        let(action,bindings,input,context)=core_request(config,op)?;
        Ok(json!({"action":action,"bindings":bindings,"input":input,"context":context,"now":NOW}))
    }).collect::<Result<Vec<Json>>>()?;
    Ok(json!({"module":fixtures::module_wire(config)?,"genesis":genesis,"attempts":attempts}))
}
