//! Public, domain-neutral research inputs; no alternate execution semantics.
#![allow(clippy::unwrap_used)]
use super::{core_api, store_api};
use serde::{Deserialize, Serialize};
use serde_json::{Value as Json, json};

#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Case {
    pub case_id: String,
    pub n: usize,
    pub history: usize,
    pub steps: usize,
    pub batch: usize,
    pub rules: usize,
    pub padding: usize,
    pub filter_terms: usize,
    pub global: String,
    pub operation: String,
    pub commands: usize,
    pub relations: bool,
}
impl Default for Case {
    fn default() -> Self {
        Self {
            case_id: "smoke".into(),
            n: 128,
            history: 0,
            steps: 8,
            batch: 1,
            rules: 1,
            padding: 0,
            filter_terms: 1,
            global: "count".into(),
            operation: "create".into(),
            commands: 0,
            relations: false,
        }
    }
}
pub fn loc() -> Json {
    json!({"file":"core031-research.beh","line":1})
}
pub fn integer(value: i64) -> Json {
    json!({"op":"lit","type":{"t":"int"},"value":value,"loc":loc()})
}
pub fn string(value: &str) -> Json {
    json!({"op":"lit","type":{"t":"string"},"value":value,"loc":loc()})
}
pub fn field(param: &str, name: &str) -> Json {
    json!({"op":"field","param":param,"field":name,"loc":loc()})
}
pub fn op(name: &str, args: Vec<Json>) -> Json {
    json!({"op":name,"args":args,"loc":loc()})
}
pub fn wire(case: &Case) -> Json {
    assert!(
        case.n > 0 && case.steps > 0 && case.batch > 0 && case.rules > 0 && case.n >= case.batch
    );
    assert!(["create", "update", "reopen"].contains(&case.operation.as_str()));
    let mut w: Json = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/soundness/module.json"
    ))
    .unwrap();
    let pad = "p".repeat(case.padding);
    w["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"padding","type":{"t":"string"},"loc":loc()}));
    let mut query = json!({"op":"select","entity":"E","loc":loc()});
    if case.global == "filtered" {
        let mut predicate = op("eq", vec![field("q", "x"), integer(1)]);
        for i in 1..case.filter_terms {
            predicate = op(
                "and",
                vec![
                    predicate,
                    op("gt", vec![field("q", "y"), integer(-(i as i64))]),
                ],
            );
        }
        query = json!({"op":"where","args":[query],"param":"q","body":predicate,"loc":loc()});
    }
    let count = json!({"op":"count","args":[query],"loc":loc()});
    let bound = i64::try_from(case.n + case.steps * case.batch + 1).unwrap();
    let rule = match case.global.as_str() {
        "none" => None,
        "true" => Some(json!({"op":"lit","type":{"t":"bool"},"value":true,"loc":loc()})),
        "count" | "filtered" => Some(op("le", vec![count, integer(bound)])),
        "unsupported" => Some(op("ge", vec![count, integer(0)])),
        _ => panic!("unknown research global"),
    };
    w["invariants"] = json!(rule.map_or_else(Vec::new, |body| {
        (0..case.rules)
            .map(|i| json!({"name":format!("population{i}"),"body":body,"loc":loc()}))
            .collect()
    }));
    let mut params = vec![json!({"name":"n","role":"input","type":{"t":"int"}})];
    let mut effects = Vec::new();
    for i in 0..case.batch {
        let name = format!("e{i}");
        params.push(json!({"name":name,"role":"state","type":{"t":"entity","name":"E"}}));
        effects.push(json!({"target":{"param":name,"field":"x"},"value":{"op":"param","param":"n","loc":loc()},"loc":loc()}));
    }
    let mut create_params = Vec::new();
    let mut creates = Vec::new();
    for i in 0..case.batch {
        let name = format!("id{i}");
        create_params.push(json!({"name":name,"role":"input","type":{"t":"id","entity":"E"}}));
        let mut fields = json!({"x":integer(1),"y":integer(2),"padding":string(&pad)});
        if case.relations {
            fields["owner"] = field("parent", "id");
        }
        creates.push(json!({"create":"E","id":{"op":"param","param":name,"loc":loc()},"fields":fields,"loc":loc()}));
    }
    if case.relations {
        w["entities"].as_array_mut().unwrap().push(json!({"name":"Parent","fields":[{"name":"phase","type":{"t":"int"},"loc":loc()}],"loc":loc()}));
        w["entities"][0]["fields"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"owner","type":{"t":"ref","entity":"Parent"},"loc":loc()}));
        create_params
            .push(json!({"name":"parent","role":"state","type":{"t":"entity","name":"Parent"}}));
    }
    w["actions"] = json!([
        {"name":"set","params":params,"effects":effects,"preconditions":[],"postconditions":[],"loc":loc()},
        {"name":"create","params":create_params,"effects":creates,"preconditions":[],"postconditions":[],"loc":loc()},
        {"name":"remove","params":[{"name":"child","role":"state","type":{"t":"entity","name":"E"}}],"effects":[{"remove":"child","loc":loc()}],"preconditions":[],"postconditions":[],"loc":loc()}
    ]);
    w["reads"][0]["params"][0]["name"] = json!("e");
    if case.relations {
        w["actions"].as_array_mut().unwrap().push(json!({"name":"remove_parent","params":[{"name":"parent","role":"state","type":{"t":"entity","name":"Parent"}}],"effects":[{"remove":"parent","loc":loc()}],"preconditions":[],"postconditions":[],"loc":loc()}));
    }
    if case.commands > 0 {
        w["ir_version"] = json!("0.8");
        w["commands"] = json!([{"name":"WorkIntent","fields":[{"name":"kind","type":{"t":"string"},"loc":loc()}],"loc":loc()}]);
        let emission =
            json!({"command":"WorkIntent","payload":{"kind":string("process")},"loc":loc()});
        for action in w["actions"].as_array_mut().unwrap() {
            action["command_effects"] = json!(vec![emission.clone(); case.commands]);
        }
    }
    w
}
pub fn seed(case: &Case) -> Vec<store_api::documents::SeedEntity> {
    let mut rows: Vec<_> = (0..case.n)
        .map(|i| {
            let mut value =
                json!({"id":format!("e{i}"),"x":1,"y":2,"padding":"p".repeat(case.padding)});
            if case.relations {
                value["owner"] = json!("p0");
            }
            store_api::documents::SeedEntity {
                entity: "E".into(),
                value,
            }
        })
        .collect();
    if case.relations {
        rows.push(store_api::documents::SeedEntity {
            entity: "Parent".into(),
            value: json!({"id":"p0","phase":0}),
        });
    }
    rows
}
pub fn module(case: &Case) -> core_api::semantic::Module {
    core_api::admit(&wire(case).to_string()).unwrap()
}
pub fn genesis(case: &Case, module: &core_api::semantic::Module) -> store_api::documents::Genesis {
    if case.commands == 0 {
        store_api::store::genesis_for(
            module,
            store_api::documents::EvidencePolicy::none(),
            seed(case),
        )
    } else {
        let policy=serde_json::from_value(json!({"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]})).unwrap();
        store_api::store::genesis_v2_for(module, policy, seed(case)).unwrap()
    }
}
