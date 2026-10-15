#![allow(dead_code, clippy::unwrap_used, clippy::expect_used)]
use behavior_engine::verify::{CheckKind, Profile};
use std::path::{Path, PathBuf};
pub fn fixture(name: &str) -> String {
    std::fs::read_to_string(
        Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../tests/fixtures")
            .join(name),
    )
    .unwrap()
}
pub fn profile() -> Profile {
    Profile {
        checks: vec![CheckKind::Preservation],
        ..Profile::default()
    }
}
pub fn migration_case(
    index: usize,
) -> (
    behavior_engine::semantic::module::Module,
    behavior_engine::semantic::module::Module,
    behavior_engine::migration::Migration,
) {
    let cases: serde_json::Value =
        serde_json::from_str(&fixture("verify/migration.expected.json")).unwrap();
    let c = &cases["cases"][index];
    let s = behavior_engine::admit(&fixture(&format!(
        "migration/modules/{}.json",
        c["source"].as_str().unwrap()
    )))
    .unwrap();
    let t = behavior_engine::admit(&fixture(&format!(
        "migration/modules/{}.json",
        c["target"].as_str().unwrap()
    )))
    .unwrap();
    let m = behavior_engine::migration::admit_migration(
        &s,
        &t,
        &fixture(&format!(
            "migration/valid/{}.json",
            c["migration"].as_str().unwrap()
        )),
    )
    .unwrap();
    (s, t, m)
}
pub fn fresh_dir(name: &str) -> PathBuf {
    let p = std::env::temp_dir().join(format!("core021-{name}-{}", std::process::id()));
    let _ = std::fs::remove_dir_all(&p);
    std::fs::create_dir_all(&p).unwrap();
    p
}
