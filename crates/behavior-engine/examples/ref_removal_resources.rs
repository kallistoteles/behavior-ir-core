#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Public verification measurement harness. Timing never participates in proof identity.
use behavior_engine::verify::{Profile, verify};
use behavior_verify::solver::{Query, Solver, SolverAnswer, Z3Process};
use serde_json::{Value, json};
use std::{cell::RefCell, path::Path, time::Instant};
struct Measured {
    inner: Z3Process,
    calls: RefCell<Vec<Value>>,
}
impl Solver for Measured {
    fn version(&self) -> String {
        self.inner.version()
    }
    fn check(&self, q: &Query) -> SolverAnswer {
        let start = Instant::now();
        let result = self.inner.check(q);
        let outcome = match &result {
            SolverAnswer::Unsat => "unsat".to_owned(),
            SolverAnswer::Sat(_) => "sat".into(),
            SolverAnswer::Unknown(r) => format!("unknown:{}", r.as_str()),
        };
        self.calls.borrow_mut().push(json!({"wall_ns":start.elapsed().as_nanos() as u64,"rlimit":q.rlimit,"requested_values":q.get.len(),"requested_symbols":q.get,"outcome":outcome,"script":q.script}));
        result
    }
}
fn main() {
    let args: Vec<_> = std::env::args().collect();
    let pattern = &args[1];
    let version = &args[2];
    let path = Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tests/fixtures/verify/ref-removals")
        .join(format!("{pattern}.json"));
    let mut wire: Value = serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap();
    wire["ir_version"] = json!(version);
    if version == "0.8" {
        wire["commands"] = json!([]);
        wire["actions"][0]["command_effects"] = json!([]);
    }
    let module = behavior_engine::admit(&wire.to_string()).unwrap();
    let solver = Measured {
        inner: Z3Process::from_env().unwrap(),
        calls: RefCell::new(Vec::new()),
    };
    let p = Profile::default();
    let start = Instant::now();
    let a = verify(&module, &p, None, &solver).unwrap();
    let wall = start.elapsed().as_nanos() as u64;
    let preservation: Vec<_> = a.value["checks"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|c| c["kind"] == "preservation" || c["kind"] == "referential_integrity")
        .collect();
    assert!(!preservation.is_empty());
    assert!(
        preservation
            .iter()
            .any(|c| c["subject"]["kind"] == "reference_world")
    );
    assert!(preservation.iter().all(|c| c["outcome"] == "proven"));
    let solver_version = solver.version();
    let mut calls = solver.calls.into_inner();
    // For these six audited fixtures the first default-profile query is the
    // child-entry auxiliary. Warning searches also request no values, so that
    // fact alone cannot identify auxiliary work. Match its complete script too.
    let prefix_script = calls[0]["script"].clone();
    for call in &mut calls {
        call["role"] = json!(
            if call["requested_values"] == 0 && call["script"] == prefix_script {
                "reference_prefix_auxiliary"
            } else {
                "selected_site_or_witness_search"
            }
        );
    }
    println!(
        "{}",
        json!({"pattern":pattern,"ir_version":version,"wire":wire,"behavior_hash":module.behavior_version(),"schema_hash":behavior_engine::schema::schema(&module).hash,"profile":p.to_json(),"solver":solver_version,"wall_verification_ns":wall,"queries":calls,"report":a.value})
    );
}
