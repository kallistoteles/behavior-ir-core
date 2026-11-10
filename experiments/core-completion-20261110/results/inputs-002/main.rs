#![forbid(unsafe_code)]
#[path = "../local-k-study-20261109/auth.rs"]
mod auth;
mod gate;
#[path = "../local-k-study-20261109/kernel.rs"]
mod kernel;
#[path = "../local-k-study-20261109/planner.rs"]
mod planner;
mod store;
use serde_json::json;
use std::{fs, path::Path};
fn run() -> store::Result<serde_json::Value> {
    let a = std::env::args().collect::<Vec<_>>();
    match a.get(1).map(String::as_str) {
        Some("init") if a.len() == 5 => {
            let seed = store::Seed {
                limit: a[3].parse()?,
                live: vec![auth::Row {
                    id: "a".into(),
                    x: 1,
                }],
                used: vec!["a".into()],
            };
            store::initialize(Path::new(&a[2]), seed, a[4] == "strong")
        }
        Some("prepare") if a.len() == 6 => {
            let job = store::prepare_job(Path::new(&a[2]), &a[3], &a[4])?;
            use std::io::Write;
            let mut f = fs::File::create_new(&a[5])?;
            f.write_all(&serde_json::to_vec(&job)?)?;
            Ok(json!({"prepared":true,"scope":"LocalResearch"}))
        }
        Some("publish") if a.len() == 5 => {
            let raw = fs::read(&a[3])?;
            if raw.len() > 524288 {
                return Err("JobBound".into());
            }
            let job = serde_json::from_slice(&raw)?;
            store::publish(Path::new(&a[2]), job, a[4] == "strong")
        }
        Some("summary") if a.len() == 3 => store::summary(Path::new(&a[2])),
        _ => Err("Usage".into()),
    }
}
fn main() {
    match run() {
        Ok(v) => println!(
            "{}",
            json!({"status":"Completed","result":v,"g1_pass":false})
        ),
        Err(e) => {
            println!(
                "{}",
                json!({"status":"OperationalError","error":e.to_string(),"g1_pass":false})
            );
            std::process::exit(2);
        }
    }
}
