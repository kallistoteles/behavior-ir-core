#![allow(clippy::unwrap_used, clippy::expect_used)]
use serde_json::Value;
use std::path::{Path, PathBuf};
use std::process::Command;

fn fixtures() -> PathBuf { Path::new(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures") }

#[test]
fn poisoned_cache_is_an_artifact_error_and_preserves_output() {
    let case: Value = serde_json::from_str(&std::fs::read_to_string(fixtures().join("canonicalization/poisoned-cache.json")).unwrap()).unwrap();
    let dir = std::env::temp_dir().join(format!("core021-cli-{}",std::process::id()));
    let _ = std::fs::remove_dir_all(&dir);
    std::fs::create_dir_all(&dir).unwrap();
    let cache = dir.join("cache");
    let out = dir.join("out.json");
    let run = || Command::new(env!("CARGO_BIN_EXE_behavior"))
        .arg("verify").arg(fixtures().join(case["wire"].as_str().unwrap()))
        .arg("--profile").arg(fixtures().join(case["profile"].as_str().unwrap()))
        .arg("--cache").arg(&cache).arg("--out").arg(&out).output().unwrap();
    let cold = run();
    assert_eq!(cold.status.code(),Some(1),"{cold:?}");
    let warm = run();
    let report:Value = serde_json::from_slice(&warm.stdout).unwrap();
    assert!(report["checks"].as_array().unwrap().iter().all(|c|c["cached"]==true));
    let mut changed=0;
    for entry in std::fs::read_dir(&cache).unwrap() {
        let path=entry.unwrap().path();
        if path.extension().and_then(|x|x.to_str())!=Some("json") {continue;}
        let mut v:Value=serde_json::from_str(&std::fs::read_to_string(&path).unwrap()).unwrap();
        if v["finding"].is_object() {
            v["finding"][case["field"].as_str().unwrap()]=case["value"].clone();
            std::fs::write(path,v.to_string()).unwrap(); changed+=1;
        }
    }
    assert!(changed>0,"must poison a surviving, matching finding");
    let sentinel=b"previous authoritative output";
    std::fs::write(&out,sentinel).unwrap();
    let result=run();
    let after=std::fs::read(&out).unwrap();
    eprintln!("poisoned cache: status={:?}, stdout={:?}, stderr={:?}, output={after:?}",result.status.code(),result.stdout,String::from_utf8_lossy(&result.stderr));
    assert_eq!(result.status.code(),Some(2));
    assert!(result.stdout.is_empty());
    let stderr=String::from_utf8(result.stderr).unwrap();
    assert!(stderr.contains("behavior: canonicalization failed:"),"{stderr}");
    assert!(stderr.contains(case["path"].as_str().unwrap()),"{stderr}");
    assert_eq!(after,sentinel);
    std::fs::remove_dir_all(dir).unwrap();
}
