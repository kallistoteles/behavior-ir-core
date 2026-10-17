#![allow(clippy::unwrap_used, clippy::expect_used)]
use serde_json::Value;
use std::path::{Path, PathBuf};
use std::process::Command;

fn fixtures() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures")
}

#[test]
fn poisoned_cache_is_an_artifact_error_and_preserves_output() {
    let case: Value = serde_json::from_str(
        &std::fs::read_to_string(fixtures().join("canonicalization/poisoned-cache.json")).unwrap(),
    )
    .unwrap();
    let dir = std::env::temp_dir().join(format!("core021-cli-{}", std::process::id()));
    let _ = std::fs::remove_dir_all(&dir);
    std::fs::create_dir_all(&dir).unwrap();
    let cache = dir.join("cache");
    let out = dir.join("out.json");
    let run = || {
        Command::new(env!("CARGO_BIN_EXE_behavior"))
            .arg("verify")
            .arg(fixtures().join(case["wire"].as_str().unwrap()))
            .arg("--profile")
            .arg(fixtures().join(case["profile"].as_str().unwrap()))
            .arg("--cache")
            .arg(&cache)
            .arg("--out")
            .arg(&out)
            .output()
            .unwrap()
    };
    let cold = run();
    assert_eq!(cold.status.code(), Some(1), "{cold:?}");
    let warm = run();
    let report: Value = serde_json::from_slice(&warm.stdout).unwrap();
    assert!(
        report["checks"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["cached"] == true)
    );
    let mut changed = 0;
    for entry in std::fs::read_dir(&cache).unwrap() {
        let path = entry.unwrap().path();
        if path.extension().and_then(|x| x.to_str()) != Some("json") {
            continue;
        }
        let mut v: Value = serde_json::from_str(&std::fs::read_to_string(&path).unwrap()).unwrap();
        if v["finding"].is_object() {
            v["finding"][case["field"].as_str().unwrap()] = case["value"].clone();
            std::fs::write(path, v.to_string()).unwrap();
            changed += 1;
        }
    }
    assert!(changed > 0, "must poison a surviving, matching finding");
    let sentinel = b"previous authoritative output";
    std::fs::write(&out, sentinel).unwrap();
    let result = run();
    let after = std::fs::read(&out).unwrap();
    eprintln!(
        "poisoned cache: status={:?}, stdout={:?}, stderr={:?}, output={after:?}",
        result.status.code(),
        result.stdout,
        String::from_utf8_lossy(&result.stderr)
    );
    assert_eq!(result.status.code(), Some(2));
    assert!(result.stdout.is_empty());
    let stderr = String::from_utf8(result.stderr).unwrap();
    assert!(
        stderr.contains("behavior: canonicalization failed:"),
        "{stderr}"
    );
    assert!(stderr.contains(case["path"].as_str().unwrap()), "{stderr}");
    assert_eq!(after, sentinel);
    std::fs::remove_dir_all(dir).unwrap();
}

#[test]
fn generated_direct_outputs_preserve_baseline_bytes_and_newlines() {
    let dir = std::env::temp_dir().join(format!("core021-cli-valid-{}", std::process::id()));
    std::fs::create_dir_all(&dir).unwrap();
    let seed = dir.join("seed.txt");
    let universe = dir.join("universe.json");
    std::fs::write(&seed, "42".repeat(32)).unwrap();
    std::fs::write(
        &universe,
        serde_json::json!([
            {"entity":"Customer","value":{"id":"c1","name":"Ada","email":"a@x"}},
            {"entity":"Order","value":{"id":"o1","customer":"c1","region":null,"qty":2}}
        ])
        .to_string(),
    )
    .unwrap();
    let fx = fixtures();
    let path = |p: &str| fx.join(p).to_str().unwrap().to_owned();
    let migration = vec![
        path("migration/modules/cultures_v1.json"),
        path("migration/modules/cultures_v2.json"),
        path("migration/valid/cultures_v1_to_v2.json"),
    ];
    let cases = vec![
        ("engine-info", vec!["engine-info".to_owned()]),
        (
            "hashes",
            vec!["hashes".to_owned(), path("verify/purchase_fixed.json")],
        ),
        (
            "signed-waiver",
            vec![
                "sign-waiver".to_owned(),
                path("canonicalization/baseline/waiver.json"),
                "--seed".to_owned(),
                seed.to_str().unwrap().to_owned(),
            ],
        ),
        (
            "migration-admit",
            [
                vec!["migration".to_owned(), "admit".to_owned()],
                migration.clone(),
            ]
            .concat(),
        ),
        (
            "migration-apply",
            [
                vec!["migration".to_owned(), "apply".to_owned()],
                migration,
                vec![universe.to_str().unwrap().to_owned()],
            ]
            .concat(),
        ),
    ];
    for (name, args) in cases {
        let output = Command::new(env!("CARGO_BIN_EXE_behavior"))
            .args(args)
            .output()
            .unwrap();
        assert_eq!(output.status.code(), Some(0), "{name}: {output:?}");
        assert!(output.stderr.is_empty(), "{name}: {output:?}");
        let mut expected =
            std::fs::read(fx.join(format!("canonicalization/cli-baseline/{name}.json"))).unwrap();
        if name == "engine-info" {
            // Preserve the historical fixture; only explicit implementation
            // metadata changes. Every other byte, including the newline, must match.
            let baseline = String::from_utf8(expected).unwrap();
            let old_engine = "\"engine\":\"0.13.0\"";
            let old_verifier = "\"verifier\":\"0.9.0\"";
            assert_eq!(baseline.matches(old_engine).count(), 1);
            assert_eq!(baseline.matches(old_verifier).count(), 1);
            expected = baseline
                .replacen(
                    old_engine,
                    &format!("\"engine\":\"{}\"", env!("CARGO_PKG_VERSION")),
                    1,
                )
                .replacen(old_verifier, "\"verifier\":\"0.10.0\"", 1)
                .into_bytes();
        }
        assert_eq!(
            output.stdout, expected,
            "{name}: exact bytes, including newline"
        );
    }
    std::fs::remove_dir_all(dir).unwrap();
}

#[test]
fn signing_cannot_remove_unsupported_self_hash_metadata() {
    let dir = std::env::temp_dir().join(format!("core021-cli-signing-{}", std::process::id()));
    std::fs::create_dir_all(&dir).unwrap();
    let seed = dir.join("seed.txt");
    let waiver = dir.join("waiver.json");
    std::fs::write(&seed, "42".repeat(32)).unwrap();
    let mut value: Value = serde_json::from_str(
        &std::fs::read_to_string(fixtures().join("canonicalization/baseline/waiver.json")).unwrap(),
    )
    .unwrap();
    value["hash"] = serde_json::json!({"items":[1.5]});
    std::fs::write(&waiver, value.to_string()).unwrap();
    let output = Command::new(env!("CARGO_BIN_EXE_behavior"))
        .arg("sign-waiver")
        .arg(&waiver)
        .arg("--seed")
        .arg(&seed)
        .output()
        .unwrap();
    assert_eq!(output.status.code(), Some(2), "{output:?}");
    assert!(output.stdout.is_empty());
    let stderr = String::from_utf8(output.stderr).unwrap();
    assert!(
        stderr.contains("behavior: canonicalization failed:"),
        "{stderr}"
    );
    assert!(stderr.contains("$.hash.items[0]"), "{stderr}");
    std::fs::remove_dir_all(dir).unwrap();
}
