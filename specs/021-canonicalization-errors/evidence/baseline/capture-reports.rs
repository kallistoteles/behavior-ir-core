#![allow(clippy::unwrap_used, clippy::expect_used)]
use behavior_engine::verify::{CheckKind, Profile, solver::Z3Process, verify, verify_migration};
use serde_json::{Value, json};
use std::path::{Path, PathBuf};

#[path = "support/core021_capture_governance.rs"]
mod governance;

fn fixture(name: &str) -> String {
    std::fs::read_to_string(Path::new(env!("CARGO_MANIFEST_DIR")).join("../tests/fixtures").join(name)).unwrap()
}
fn output() -> PathBuf { PathBuf::from(std::env::var_os("CORE021_BASELINE_OUT").unwrap()) }
fn save(name: &str, text: &str) { std::fs::write(output().join(name), text).unwrap(); }
fn save_json(name: &str, value: &Value) { save(name, &behavior_engine::canonical::to_canonical_string(value).unwrap()); }
fn profile() -> Profile { Profile { checks: vec![CheckKind::Preservation], ..Profile::default() } }
fn migration_case(index: usize) -> (behavior_engine::semantic::module::Module, behavior_engine::semantic::module::Module, behavior_engine::migration::Migration) {
    let cases: Value = serde_json::from_str(&fixture("verify/migration.expected.json")).unwrap();
    let c = &cases["cases"][index];
    assert_eq!(c["variant"], "as_is");
    let s = behavior_engine::admit(&fixture(&format!("migration/modules/{}.json",c["source"].as_str().unwrap()))).unwrap();
    let t = behavior_engine::admit(&fixture(&format!("migration/modules/{}.json",c["target"].as_str().unwrap()))).unwrap();
    let m = behavior_engine::migration::admit_migration(&s,&t,&fixture(&format!("migration/valid/{}.json",c["migration"].as_str().unwrap()))).unwrap();
    (s,t,m)
}

#[test]
fn capture_reports() {
    let z3 = Z3Process::from_env().expect("baseline capture requires Z3");
    let p = profile();
    save_json("profile.json", &p.to_json());
    for (name,checks,rlimit,guard) in [
        ("profile-empty",Vec::new(),0,0),
        ("profile-extreme",CheckKind::ALL.into_iter().rev().chain(CheckKind::ALL).collect(),u64::MAX,u64::MAX),
    ] {
        save_json(&format!("{name}.json"), &Profile{checks,rlimit,wall_clock_guard_ms:guard}.to_json());
    }
    for name in ["purchase", "purchase_fixed"] {
        let m = behavior_engine::admit(&fixture(&format!("verify/{name}.json"))).unwrap();
        let cache = PathBuf::from(std::env::var_os("CORE021_BASELINE_CACHE").unwrap()).join(name);
        let _ = std::fs::remove_dir_all(&cache);
        let cold = verify(&m,&p,Some(&cache),&z3);
        let warm = verify(&m,&p,Some(&cache),&z3);
        assert_eq!(cold.hash,warm.hash);
        assert!(warm.checks.iter().all(|c|c.cached));
        save(&format!("{name}-cold.json"),&cold.to_json_string());
        save(&format!("{name}-warm.json"),&warm.to_json_string());
    }
    for (i,name) in [(0,"migration-negative"),(1,"migration-verified")] {
        let (s,t,m)=migration_case(i);
        let report=verify_migration(&m,&s,&t,&Profile::default(),None,&z3);
        assert_eq!(report.result,if i==0 {"not_verified"}else{"verified"});
        save(&format!("{name}.json"),&report.to_json_string());
    }
}
