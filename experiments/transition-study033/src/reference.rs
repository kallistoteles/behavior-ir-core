//! Closed-template recognition and an explicitly separate authoritative Core oracle.
use crate::profile::Error;
use serde::{Deserialize, Serialize};
use serde_json::{Value, json};
use sha2::{Digest, Sha256};

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct TemplateConfig {
    pub format_version: String,
    pub limit: i64,
    pub padding_bytes: u16,
    pub commands: u8,
}

impl Default for TemplateConfig {
    fn default() -> Self {
        Self {
            format_version: "core033.template.v1".into(),
            limit: 1000,
            padding_bytes: 0,
            commands: 2,
        }
    }
}

impl TemplateConfig {
    pub fn validate(&self) -> Result<(), Error> {
        if self.format_version != "core033.template.v1" {
            return Err(Error::Invalid("unsupported template version".into()));
        }
        if !(0..=1_048_576).contains(&self.limit)
            || self.padding_bytes > 768
            || !(1..=2).contains(&self.commands)
        {
            return Err(Error::Unsupported(
                "outside declared cap/padding/command template bounds".into(),
            ));
        }
        Ok(())
    }
}

pub struct RecognizedModule {
    pub module: behavior_core::semantic::Module,
    pub source_descriptor_sha256: [u8; 32],
    pub config: TemplateConfig,
}

impl RecognizedModule {
    /// Full authoritative evaluation for comparison/reconstruction, never certificate acceptance.
    pub fn evaluate_oracle(&self, request: &str) -> Result<behavior_core::DecisionRecord, Error> {
        Ok(behavior_core::evaluate(&self.module, request))
    }
}

fn loc() -> Value {
    json!({"file":"core033-public.beh","line":1})
}
fn lit(ty: &str, value: Value) -> Value {
    json!({"op":"lit","type":{"t":ty},"value":value,"loc":loc()})
}
fn param(name: &str) -> Value {
    json!({"op":"param","param":name,"loc":loc()})
}
fn operation(name: &str, args: Vec<Value>) -> Value {
    json!({"op":name,"args":args,"loc":loc()})
}

pub fn module_wire(config: &TemplateConfig) -> Result<Value, Error> {
    config.validate()?;
    let emissions = vec![
        json!({"command":"WorkIntent","payload":{"kind":lit("string",json!("process"))},"loc":loc()});
        usize::from(config.commands)
    ];
    let action = |name: &str, params: Vec<Value>, effects: Vec<Value>| json!({"name":name,"params":params,"effects":effects,"preconditions":[],"postconditions":[],"command_effects":emissions,"loc":loc()});
    let create = action(
        "create",
        vec![json!({"name":"id","role":"input","type":{"t":"id","entity":"E"}})],
        vec![
            json!({"create":"E","id":param("id"),"fields":{"x":lit("int",json!(1)),"padding":lit("string",json!("p".repeat(usize::from(config.padding_bytes))))},"loc":loc()}),
        ],
    );
    let set = action(
        "set",
        vec![
            json!({"name":"value","role":"input","type":{"t":"int"}}),
            json!({"name":"e","role":"state","type":{"t":"entity","name":"E"}}),
        ],
        vec![json!({"target":{"param":"e","field":"x"},"value":param("value"),"loc":loc()})],
    );
    Ok(json!({
        "ir_version":"0.8","enums":[],"nominals":[],"derived":[],"reads":[],
        "entities":[{"name":"E","fields":[{"name":"x","type":{"t":"int"},"loc":loc()},{"name":"padding","type":{"t":"string"},"loc":loc()}],"loc":loc()}],
        "commands":[{"name":"WorkIntent","fields":[{"name":"kind","type":{"t":"string"},"loc":loc()}],"loc":loc()}],
        "constraints":[{"name":"positive","entity":"E","param":"e","body":operation("gt",vec![json!({"op":"field","param":"e","field":"x","loc":loc()}),lit("int",json!(0))]),"loc":loc()}],
        "invariants":[{"name":"population","body":operation("le",vec![operation("count",vec![json!({"op":"select","entity":"E","loc":loc()})]),lit("int",json!(config.limit))]),"loc":loc()}],
        "actions":[create,set,action("emit",vec![],vec![])]
    }))
}

pub fn recognize(raw: &str, config: &TemplateConfig) -> Result<RecognizedModule, Error> {
    config.validate()?;
    let supplied = behavior_core::canonical::decode_strict(raw)
        .map_err(|_| Error::Invalid("module must be unambiguous JSON".into()))?;
    if supplied != module_wire(config)? {
        return Err(Error::Unsupported(
            "complete module, bindings or observation metadata differs from closed template".into(),
        ));
    }
    let module = behavior_core::admit(raw)
        .map_err(|_| Error::Invalid("template rejected by authoritative Core admission".into()))?;
    if module.semantic_profile() != behavior_core::semantic::types::SemanticProfile::CommandIntents
    {
        return Err(Error::Unsupported("wrong admitted semantic profile".into()));
    }
    let canonical = behavior_core::canonical::canonical(&supplied)
        .map_err(|_| Error::Invalid("module canonicalization failed".into()))?;
    let mut hash = Sha256::new();
    hash.update(b"core033.module-descriptor.v1\0");
    hash.update(canonical.as_bytes());
    Ok(RecognizedModule {
        module,
        source_descriptor_sha256: hash.finalize().into(),
        config: config.clone(),
    })
}
