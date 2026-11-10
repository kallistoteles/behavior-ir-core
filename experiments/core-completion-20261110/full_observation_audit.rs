//! Full reference rendering only on the audit path; never certificate acceptance.
#![forbid(unsafe_code)]
#[path = "../local-k-study-20261109/auth.rs"]
mod auth;
#[path = "../local-k-study-20261109/kernel.rs"]
mod kernel;
#[path = "../local-k-study-20261109/planner.rs"]
mod planner;
use auth::{Row, Tree, Work};
use kernel::{Action, Kernel, Outcome, Request};
use serde::{Deserialize, Serialize};
use serde_json::{Value, json};
use std::{
    collections::{BTreeMap, BTreeSet},
    fs::{self, File},
    io::Write,
    path::Path,
};

#[derive(Clone)]
struct Support {
    live: BTreeMap<String, i64>,
    used: BTreeSet<String>,
}
#[derive(Clone, Serialize, Deserialize)]
struct Recipe {
    program: auth::Hash,
    before_live: auth::Hash,
    before_used: auth::Hash,
    request_binding: auth::Hash,
    data_version: String,
}
fn expand(
    recipe: &Recipe,
    request: &Request,
    support: Option<&Support>,
    module: &behavior_core::semantic::Module,
) -> Result<Value, &'static str> {
    let support = support.ok_or("UnavailableAuditSupport")?;
    if recipe.program != request.program
        || recipe.request_binding != kernel::request_binding(request, &mut Work::default())
    {
        return Err("RecipeSubject");
    }
    let mut work = Work::default();
    let auth = auth::Auth::new(&mut work)?;
    let mut live = Tree::new(1);
    let mut used = Tree::new(2);
    for (id, x) in &support.live {
        live = live.put(
            &auth,
            Row {
                id: id.clone(),
                x: *x,
            },
            &mut work,
        )?;
    }
    for id in &support.used {
        used = used.put(
            &auth,
            Row {
                id: id.clone(),
                x: 0,
            },
            &mut work,
        )?;
    }
    if live.summary(&auth).digest != recipe.before_live
        || used.summary(&auth).digest != recipe.before_used
    {
        return Err("AuditSupportRoot");
    }
    let universe = support
        .live
        .iter()
        .map(|(id, x)| json!({"id":id,"x":x,"padding":""}))
        .collect::<Vec<_>>();
    let (action, input, state, identities) = match &request.operation {
        Action::Create { id } => (
            "create",
            json!({"id":id}),
            json!({}),
            json!([{"entity":"E","id":id,"used":support.used.contains(id)}]),
        ),
        Action::Set { id, value, .. } => (
            "set",
            json!({"value":value}),
            json!({"e":{"id":id,"x":support.live.get(id).ok_or("UnavailableAuditRow")?,"padding":""}}),
            json!([]),
        ),
        Action::Emit => ("emit", json!({}), json!({}), json!([])),
    };
    let raw = json!({"action":action,"input":input,"state":state,"context":{},"data_version":recipe.data_version,"facts":{"identities":identities,"universe":[{"entity":"E","members":universe}]}});
    serde_json::from_str(&behavior_core::evaluate(module, &raw.to_string()).to_json_string())
        .map_err(|_| "AuditRenderer")
}
fn projection(v: &Value) -> Outcome {
    Outcome {
        result: v["result"].as_str().unwrap().into(),
        reasons: serde_json::from_value(v["reasons"].clone()).unwrap(),
        changes: serde_json::from_value(v["changes"].clone()).unwrap(),
        lifecycle: v
            .get("lifecycle")
            .and_then(Value::as_array)
            .cloned()
            .unwrap_or_default(),
        commands: v["commands"]["intents"]
            .as_array()
            .unwrap()
            .iter()
            .map(|v| v["payload"].clone())
            .collect(),
    }
}
fn main() {
    let argv = std::env::args().collect::<Vec<_>>();
    assert_eq!(argv.len(), 2);
    let out = Path::new(&argv[1]);
    fs::create_dir(out).unwrap();
    let fixture =
        include_str!("../../docs/proposals/core-next-architecture/reference-fixture.jsonl")
            .lines()
            .map(|s| serde_json::from_str::<Value>(s).unwrap())
            .collect::<Vec<_>>();
    let module = behavior_core::admit(&fixture[0]["wire"].to_string()).unwrap();
    let k = Kernel::new(2, &mut Work::default()).unwrap();
    let mut support = Support {
        live: BTreeMap::from([("a".into(), 1)]),
        used: BTreeSet::from(["a".into()]),
    };
    let rows = vec![Row {
        id: "a".into(),
        x: 1,
    }];
    let mut basis = k
        .initialize(&rows, &["a".into()], &mut Work::default())
        .unwrap();
    let mut planner =
        planner::Planner::new(&k, &rows, &["a".into()], &mut Work::default()).unwrap();
    let mut records = File::create_new(out.join("full-records.jsonl")).unwrap();
    let mut recipes = File::create_new(out.join("recipes.jsonl")).unwrap();
    let mut bytes_total = 0;
    for (i, case) in fixture[1..].iter().enumerate() {
        let op = match i {
            0 => Action::Create { id: "b".into() },
            1 => Action::Set {
                id: "a".into(),
                old: 1,
                value: 3,
            },
            2 => Action::Emit,
            3 => Action::Create { id: "c".into() },
            4 => Action::Set {
                id: "a".into(),
                old: 3,
                value: 0,
            },
            5 => Action::Create { id: "b".into() },
            _ => unreachable!(),
        };
        let request = basis.request(&format!("audit-{i}"), op);
        let (proposal, next) = planner.propose(&k, &request, &mut Work::default()).unwrap();
        let checked = k
            .check(&basis, &request, &proposal, &mut Work::default())
            .unwrap();
        let recipe = Recipe {
            program: basis.view().program,
            before_live: basis.view().live.digest,
            before_used: basis.view().used.digest,
            request_binding: kernel::request_binding(&request, &mut Work::default()),
            data_version: case["request"]["data_version"].as_str().unwrap().into(),
        };
        let full = expand(&recipe, &request, Some(&support), &module).unwrap();
        assert_eq!(full, case["reference_decision"]);
        assert_eq!(projection(&full), checked.outcome);
        assert_eq!(
            expand(&recipe, &request, None, &module).unwrap_err(),
            "UnavailableAuditSupport"
        );
        let mut bad = recipe.clone();
        bad.before_live[0] ^= 1;
        assert_eq!(
            expand(&bad, &request, Some(&support), &module).unwrap_err(),
            "AuditSupportRoot"
        );
        let mut bad = recipe.clone();
        bad.request_binding[0] ^= 1;
        assert_eq!(
            expand(&bad, &request, Some(&support), &module).unwrap_err(),
            "RecipeSubject"
        );
        let mut bad_support = support.clone();
        bad_support.live.clear();
        assert_eq!(
            expand(&recipe, &request, Some(&bad_support), &module).unwrap_err(),
            "AuditSupportRoot"
        );
        let raw = serde_json::to_vec(&full).unwrap();
        bytes_total += raw.len();
        writeln!(records, "{}", full).unwrap();
        writeln!(recipes, "{}", serde_json::to_string(&recipe).unwrap()).unwrap();
        if checked.outcome.result == "ALLOW" {
            match &request.operation {
                Action::Create { id } => {
                    support.live.insert(id.clone(), 1);
                    support.used.insert(id.clone());
                }
                Action::Set { id, value, .. } => {
                    support.live.insert(id.clone(), *value);
                }
                Action::Emit => {}
            }
        }
        basis = checked.next;
        planner = next;
    }
    let receipt = json!({"full_reference_records_equal":6,"audit_controls":24,"full_record_bytes":bytes_total,"scope":"Entire six historical DecisionRecords reconstructed, not only projection. Actual full Core evaluator is audit-only. Not full-language K, generic recipe theorem, canonical codec/identity or prefix certificate. data_version is captured recipe metadata and is not part of old local-K typed request.","g1_pass":false});
    fs::write(
        out.join("receipt.json"),
        serde_json::to_vec_pretty(&receipt).unwrap(),
    )
    .unwrap();
    println!("{receipt}");
}
