//! Authored LD8 facts exercise public Core; reference records share that oracle.
use crate::{
    arrangements::Coordinator,
    error::{Result, StudyError, library},
    fixtures,
};
use behavior_engine::{
    invocation::Invocation,
    semantic::Module,
    store::{Backend, InMemoryBackend, Store},
};
use behavior_models::safety::UncertifiedSafetyAnalysis;
use serde_json::{Value, json};
trait Host {
    type B: Backend;
    fn store(&self) -> &Store<Self::B>;
    fn step(
        &mut self,
        m: &Module,
        a: &UncertifiedSafetyAnalysis,
        action: &str,
        b: Value,
        i: Value,
    ) -> Result<Invocation>;
}
struct Oracle(Store<InMemoryBackend>);
impl Host for Oracle {
    type B = InMemoryBackend;
    fn store(&self) -> &Store<Self::B> {
        &self.0
    }
    fn step(
        &mut self,
        m: &Module,
        _a: &UncertifiedSafetyAnalysis,
        action: &str,
        b: Value,
        i: Value,
    ) -> Result<Invocation> {
        let inv = fixtures::invoke(&self.0, m, action, b, i)?;
        if let Some(bundle) = &inv.bundle {
            self.0
                .commit(m, &self.0.current().map_err(library)?, bundle)
                .map_err(library)?;
        }
        Ok(inv)
    }
}
impl<B: Backend> Host for Coordinator<B> {
    type B = B;
    fn store(&self) -> &Store<B> {
        Coordinator::store(self)
    }
    fn step(
        &mut self,
        m: &Module,
        a: &UncertifiedSafetyAnalysis,
        action: &str,
        b: Value,
        i: Value,
    ) -> Result<Invocation> {
        self.invoke(m, a, action, b, i)
    }
}
pub fn state_facts<B: Backend>(s: &Store<B>, m: &Module) -> Result<Value> {
    let export = s
        .export_seed_at(m, &s.current_history().map_err(library)?)
        .map_err(library)?;
    let mut parents = serde_json::Map::new();
    let mut children = serde_json::Map::new();
    for row in export.seed {
        let id = row.value["id"]
            .as_str()
            .ok_or(StudyError::Prerequisite("SeedMissingIdentity"))?
            .to_owned();
        match row.entity.as_str() {
            "Parent" => {
                parents.insert(id, row.value["phase"].clone());
            }
            "Child" => {
                children.insert(
                    id,
                    json!({"phase":row.value["phase"],"owner":row.value["owner"]}),
                );
            }
            _ => return Err(StudyError::Prerequisite("UnexpectedSeedEntity")),
        }
    }
    Ok(json!({"parents":parents,"children":children}))
}
fn run<H: Host>(host: &mut H, m: &Module, a: &UncertifiedSafetyAnalysis) -> Result<Value> {
    let authored: Value = serde_json::from_str(include_str!("../expected/ld8.json"))?;
    let facts = authored["attempts"]
        .as_array()
        .ok_or(StudyError::Prerequisite("AuthoredAttempts"))?;
    let origin = host.store().current_history().map_err(library)?;
    let mut attempts = vec![];
    let mut timings = vec![];
    for fact in facts {
        let started = std::time::Instant::now();
        let before = host.store().current_history().map_err(library)?;
        if state_facts(host.store(), m)? != fact["before"] {
            return Err(StudyError::Prerequisite("AuthoredBeforeStateMismatch"));
        }
        let mut bindings = serde_json::Map::new();
        for (name, id) in fact["bindings"]
            .as_object()
            .ok_or(StudyError::Prerequisite("AuthoredBindings"))?
        {
            bindings.insert(
                name.clone(),
                json!({"entity":if name=="p"{"Parent"}else{"Child"},"id":id}),
            );
        }
        let action = fact["action"]
            .as_str()
            .ok_or(StudyError::Prerequisite("AuthoredAction"))?;
        let inv = host.step(m, a, action, Value::Object(bindings), fact["input"].clone())?;
        let result = inv
            .record
            .inner_record()
            .and_then(|v| v.get("result"))
            .and_then(Value::as_str);
        let allowed = fact["expected"] == "ALLOW";
        if allowed != inv.bundle.is_some()
            || (allowed && result != Some("ALLOW"))
            || (fact["expected"] == "DENY" && result != Some("DENY"))
        {
            return Err(StudyError::Library(format!(
                "Authored outcome mismatch for {action}: {:?}",
                inv.record.as_json()
            )));
        }
        let after = host.store().current_history().map_err(library)?;
        if after.position
            != fact["position"]
                .as_u64()
                .ok_or(StudyError::Prerequisite("AuthoredPosition"))?
            || state_facts(host.store(), m)? != fact["after"]
            || (!allowed && after != before)
        {
            return Err(StudyError::Prerequisite(
                "AuthoredAfterStateOrRefusalMismatch",
            ));
        }
        let validity =
            behavior_models::safety::snapshot::validate_store_snapshot(m, a, host.store(), &after);
        if validity.status() != "Valid" {
            return Err(StudyError::Prerequisite("LifecyclePropertyViolation"));
        }
        timings.push(json!({"attempt":fact["attempt"],"wall_ns":started.elapsed().as_nanos().min(u64::MAX as u128)as u64,"scope":"authored checks, full snapshots, invocation, commit/refusal, validity and observation construction; memory acknowledgement"}));
        attempts.push(json!({"action":action,"request":inv.record.as_json()["request"],"invocation":inv.record.as_json(),"committed":allowed,"before":before.as_json(),"after":after.as_json(),"state_facts":fact["after"],"validity":validity.to_json()}));
    }
    let endpoint = host.store().current_history().map_err(library)?;
    Ok(
        json!({"format":"core034.lifecycle.v1","diagnostics":{"timings":timings},"origin":origin.as_json(),"endpoint":endpoint.as_json(),"module":m.behavior_version(),"policies":a.policy_set_hash(),"attempts":attempts,"committed_steps":endpoint.position-origin.position,"final_snapshot":state_facts(host.store(),m)?,"oracle":"public Core63a8; authored business facts independent, complete records share Core evaluator","durability":"memory-only"}),
    )
}
pub fn oracle() -> Result<Value> {
    let m = fixtures::module(false, false)?;
    let a = fixtures::analysis(&m, false)?;
    let mut host = Oracle(fixtures::store(&m, vec![])?);
    run(&mut host, &m, &a)
}
pub fn coordinated<B: Backend>(
    coordinator: &mut Coordinator<B>,
    m: &Module,
    a: &UncertifiedSafetyAnalysis,
) -> Result<Value> {
    run(coordinator, m, a)
}
