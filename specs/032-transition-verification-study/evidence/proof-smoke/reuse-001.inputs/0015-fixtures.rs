//! Closed public template. Core admission, not this generator, defines execution.
use crate::types::{EntityValue, Result, StudyError};
use serde::{Deserialize, Serialize};
use serde_json::{Value as Json, json};

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Config {
    pub limit: i64,
    pub rules: usize,
    pub batch: usize,
    pub padding: usize,
    pub references: bool,
    pub commands: usize,
    pub filter_terms: usize,
}
impl Default for Config {
    fn default() -> Self { Self { limit: 1000, rules: 1, batch: 1, padding: 0, references: false, commands: 0, filter_terms: 1 } }
}
impl Config {
    pub fn validate(&self) -> Result<()> {
        if self.limit < 0 || !(1..=64).contains(&self.rules) || !(1..=8).contains(&self.batch)
            || self.padding > 65536 || self.commands > 16 || !(1..=4).contains(&self.filter_terms) {
            return Err(StudyError::Unsupported("outside declared study configuration capacities".into()));
        }
        Ok(())
    }
}
pub fn loc() -> Json { json!({"file":"core032-public.beh","line":1}) }
pub fn integer(n: i64) -> Json { json!({"op":"lit","type":{"t":"int"},"value":n,"loc":loc()}) }
pub fn boolean(v: bool) -> Json { json!({"op":"lit","type":{"t":"bool"},"value":v,"loc":loc()}) }
pub fn field(p: &str, f: &str) -> Json { json!({"op":"field","param":p,"field":f,"loc":loc()}) }
pub fn param(p: &str) -> Json { json!({"op":"param","param":p,"loc":loc()}) }
pub fn op(name: &str, args: Vec<Json>) -> Json { json!({"op":name,"args":args,"loc":loc()}) }
fn condition(v: Json) -> Json { json!({"expr":v,"loc":loc()}) }
fn input(name: &str, ty: Json) -> Json { json!({"name":name,"role":"input","type":ty}) }
fn state(name: &str, entity: &str) -> Json { json!({"name":name,"role":"state","type":{"t":"entity","name":entity}}) }
fn action(name: &str, params: Vec<Json>, effects: Vec<Json>, conditions: Vec<Json>, commands: &[Json]) -> Json {
    // Core requires a declared state or command effect. A false command guard
    // admits the zero-realized-command control without inventing a runtime effect.
    let commands = if effects.is_empty() && commands.is_empty() {
        vec![json!({"command":"WorkIntent","when":boolean(false),"payload":{"kind":{"op":"lit","type":{"t":"string"},"value":"process","loc":loc()}},"loc":loc()})]
    } else { commands.to_vec() };
    json!({"name":name,"params":params,"effects":effects,"preconditions":conditions,"postconditions":[],"command_effects":commands,"loc":loc()})
}
pub fn module_wire(c: &Config) -> Result<Json> {
    c.validate()?;
    let mut fields = vec![json!({"name":"x","type":{"t":"int"},"loc":loc()}),json!({"name":"padding","type":{"t":"string"},"loc":loc()})];
    if c.references { fields.push(json!({"name":"owner","type":{"t":"ref","entity":"Parent"},"loc":loc()})); }
    let mut entities = vec![json!({"name":"E","fields":fields,"loc":loc()})];
    if c.references { entities.push(json!({"name":"Parent","fields":[{"name":"phase","type":{"t":"int"},"loc":loc()}],"loc":loc()})); }
    let emits = vec![json!({"command":"WorkIntent","payload":{"kind":{"op":"lit","type":{"t":"string"},"value":"process","loc":loc()}},"loc":loc()});c.commands];
    let mut create_params = Vec::new(); let mut creates = Vec::new();
    let mut set_params = vec![input("value",json!({"t":"int"}))]; let mut sets = Vec::new();
    for i in 0..c.batch {
        let name = format!("id{i}");
        create_params.push(input(&name,json!({"t":"id","entity":"E"})));
        let mut values = json!({"x":integer(1),"padding":{"op":"lit","type":{"t":"string"},"value":"p".repeat(c.padding),"loc":loc()}});
        if c.references { values["owner"] = field("parent","id"); }
        creates.push(json!({"create":"E","id":param(&name),"fields":values,"loc":loc()}));
        let name = format!("e{i}"); set_params.push(state(&name,"E"));
        sets.push(json!({"target":{"param":name,"field":"x"},"value":param("value"),"loc":loc()}));
    }
    if c.references { create_params.push(state("parent","Parent")); }
    let query = json!({"op":"select","entity":"E","loc":loc()});
    let mut predicate = op("lt",vec![field("row","x"),param("threshold")]);
    for _ in 1..c.filter_terms { predicate = op("and",vec![predicate,op("gt",vec![field("row","x"),integer(0)])]); }
    let filtered = json!({"op":"where","args":[query.clone()],"param":"row","body":predicate,"loc":loc()});
    let mut actions = vec![
        action("create",create_params,creates,vec![],&emits),
        action("set",set_params,sets,vec![],&emits),
        action("remove",vec![state("child","E")],vec![json!({"remove":"child","loc":loc()})],vec![],&emits),
        action("emit",vec![],vec![],vec![],&emits),
        action("probe",vec![json!({"name":"threshold","role":"context","type":{"t":"int"}}),input("max_matches",json!({"t":"int"}))],vec![],vec![condition(op("le",vec![json!({"op":"count","args":[filtered],"loc":loc()}),param("max_matches")]))],&emits),
        action("add",vec![state("e0","E"),input("delta",json!({"t":"int"}))],vec![json!({"target":{"param":"e0","field":"x"},"value":op("add",vec![field("e0","x"),param("delta")]),"loc":loc()})],vec![],&emits),
        action("lazy",vec![state("e0","E"),input("delta",json!({"t":"int"})),json!({"name":"enabled","role":"context","type":{"t":"bool"}})],vec![],vec![condition(op("or",vec![op("not",vec![param("enabled")]),op("gt",vec![op("add",vec![field("e0","x"),param("delta")]),integer(0)])]))],&emits),
    ];
    if c.references { actions.push(action("remove_parent",vec![state("parent","Parent")],vec![json!({"remove":"parent","loc":loc()})],vec![],&emits)); }
    Ok(json!({"ir_version":"0.8","entities":entities,"enums":[],"nominals":[],"derived":[],"reads":[],
        "commands":[{"name":"WorkIntent","fields":[{"name":"kind","type":{"t":"string"},"loc":loc()}],"loc":loc()}],
        "constraints":[{"name":"positive","entity":"E","param":"e","body":op("gt",vec![field("e","x"),integer(0)]),"loc":loc()}],
        "invariants":(0..c.rules).map(|i|json!({"name":format!("population{i:02}"),"body":op("le",vec![json!({"op":"count","args":[query.clone()],"loc":loc()}),integer(c.limit)]),"loc":loc()})).collect::<Vec<_>>(),
        "actions":actions}))
}
pub fn seed(c: &Config, n: usize) -> Result<Vec<behavior_store::documents::SeedEntity>> {
    c.validate()?;
    let mut rows: Vec<_> = (0..n).map(|i| behavior_store::documents::SeedEntity { entity:"E".into(), value:EntityValue::E {x:1,padding:"p".repeat(c.padding),owner:c.references.then(||"p0".into())}.to_core(&format!("e{i}")) }).collect();
    if c.references {rows.push(behavior_store::documents::SeedEntity {entity:"Parent".into(),value:EntityValue::Parent {phase:0}.to_core("p0")});}
    Ok(rows)
}
