//! Closed-template recognition through public admitted semantic identities.
use crate::{
    fixtures::{Config, module_wire},
    types::{Result, StudyError},
};
use behavior_core::semantic::Module;
use serde::{Deserialize, Serialize};
use std::collections::BTreeMap;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ActionInventory {
    pub hash: String,
    pub params: Vec<(String, String, String)>,
    pub assignments: usize,
    pub creates: usize,
    pub removes: usize,
    pub preconditions: usize,
    pub postconditions: usize,
    pub command_emissions: usize,
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Subject {
    pub format: String,
    pub behavior: String,
    pub schema: String,
    pub profile: String,
    pub config: Config,
    pub actions: BTreeMap<String, ActionInventory>,
    pub entities: BTreeMap<String, Vec<(String, String, bool)>>,
    pub constraints: Vec<String>,
    pub global_invariants: Vec<String>,
}
fn inventory(module: &Module) -> BTreeMap<String, ActionInventory> {
    module
        .actions()
        .iter()
        .map(|(name, a)| {
            (
                name.clone(),
                ActionInventory {
                    hash: behavior_core::semantic::types::hash_display(a.hash()),
                    params: a
                        .params()
                        .iter()
                        .map(|p| {
                            (
                                p.name().into(),
                                format!("{:?}", p.role()),
                                p.ty().to_string(),
                            )
                        })
                        .collect(),
                    assignments: a.effects().len(),
                    creates: a.creates().len(),
                    removes: a.removes().len(),
                    preconditions: a.preconditions().len(),
                    postconditions: a.postconditions().len(),
                    command_emissions: a.command_emissions().len(),
                },
            )
        })
        .collect()
}
pub fn recognize(module: &Module, config: &Config) -> Result<Subject> {
    let expected = behavior_core::admit(&module_wire(config)?.to_string())
        .map_err(|e| StudyError::Admission(format!("{e:?}")))?;
    let actions = inventory(module);
    // Core-computed hashes bind the complete admitted module, never a supplied digest.
    // Also check resolved input names: the adapter must not misbind alpha-renamed inputs.
    if module.behavior_version() != expected.behavior_version() || actions != inventory(&expected) {
        return Err(StudyError::Unsupported(
            "complete admitted module differs from closed template".into(),
        ));
    }
    Ok(Subject {
        format: "core032.subject.v1".into(),
        behavior: module.behavior_version(),
        schema: behavior_core::schema(module).hash,
        profile: "0.8".into(),
        config: config.clone(),
        actions,
        entities: module
            .entities()
            .iter()
            .map(|(name, e)| {
                (
                    name.clone(),
                    e.fields()
                        .iter()
                        .map(|(field, ty)| (field.clone(), ty.to_string(), e.is_reference(field)))
                        .collect(),
                )
            })
            .collect(),
        constraints: module.constraints().keys().cloned().collect(),
        global_invariants: module.global_invariants().keys().cloned().collect(),
    })
}
