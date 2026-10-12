//! Helpers shared by integration tests (included with `mod common;`).
#![allow(dead_code, clippy::unwrap_used, clippy::expect_used)]

use std::path::{Path, PathBuf};

pub fn repo_root() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../..")
}

pub fn fixtures() -> PathBuf {
    repo_root().join("tests/fixtures")
}

pub fn read(path: &Path) -> String {
    std::fs::read_to_string(path).unwrap_or_else(|e| panic!("reading {}: {e}", path.display()))
}

pub fn json(path: &Path) -> serde_json::Value {
    serde_json::from_str(&read(path)).unwrap()
}

/// Explicit closed-world preparation for positive current-action fixtures.
/// Only actual State/Read bindings supply rows; other declared types are empty.
/// Existing universes (including intentionally inconsistent ones) are preserved.
/// This is test input preparation, never a validity oracle or production fallback.
/// Partial/malformed-input tests must call the public evaluator with their raw input.
pub fn complete_request(
    module: &behavior_core::semantic::Module,
    request: &serde_json::Value,
) -> serde_json::Value {
    use behavior_core::semantic::{module::ParamRole, types::Type};
    use serde_json::{Value, json};
    use std::collections::BTreeMap;
    let mut request = request.clone();
    let mut bound: BTreeMap<String, BTreeMap<String, Value>> = BTreeMap::new();
    if let Some(action) = request["action"]
        .as_str()
        .and_then(|name| module.action(name))
    {
        for param in action.params() {
            if !matches!(param.role(), ParamRole::State | ParamRole::Read) {
                continue;
            }
            let Type::Entity(entity) = param.ty() else {
                continue;
            };
            let Some(value) = request["state"].get(param.name()) else {
                continue;
            };
            let Some(id) = value["id"].as_str() else {
                continue;
            };
            if let Some(previous) = bound
                .entry(entity.clone())
                .or_default()
                .insert(id.into(), value.clone())
            {
                assert_eq!(
                    previous, *value,
                    "conflicting fixture aliases for {entity}#{id}"
                );
            }
        }
    }
    let object = request
        .as_object_mut()
        .expect("positive request fixture must be an object");
    let facts = object
        .entry("facts")
        .or_insert_with(|| json!({}))
        .as_object_mut()
        .expect("positive facts fixture must be an object");
    let universe = facts
        .entry("universe")
        .or_insert_with(|| json!([]))
        .as_array_mut()
        .expect("positive universe fixture must be an array");
    for entity in module.entities().keys() {
        if !universe.iter().any(|entry| entry["entity"] == *entity) {
            universe.push(json!({"entity":entity,"members":bound.remove(entity).unwrap_or_default().into_values().collect::<Vec<_>>()}));
        }
    }
    request
}

/// Actual immutable baseline output with its separately captured digest.
pub fn archived_record(family: &str, name: &str) -> String {
    use sha2::{Digest, Sha256};
    let root = fixtures().join("resulting-state-validity/compatibility-archive");
    let path = match family {
        "invoke" => format!("invocation-records/{name}.json"),
        "intent" => format!("intent-records/{name}.json"),
        _ => format!("records/{family}/{name}.json"),
    };
    let manifest = json(&root.join("manifest.json"));
    let expected = manifest["cases"]
        .as_array()
        .unwrap()
        .iter()
        .find(|case| case["record_path"] == path)
        .expect("captured baseline record");
    let text = read(&root.join(&path));
    assert_eq!(
        format!("{:x}", Sha256::digest(text.as_bytes())),
        expected["record_sha256"].as_str().unwrap()
    );
    text
}

/// Sorted list of files in `dir` with the given suffix, excluding `.expected.json`.
pub fn files(dir: &Path, suffix: &str) -> Vec<PathBuf> {
    let mut out: Vec<PathBuf> = std::fs::read_dir(dir)
        .unwrap()
        .map(|e| e.unwrap().path())
        .filter(|p| {
            let n = p.file_name().unwrap().to_string_lossy().to_string();
            n.ends_with(suffix) && !n.ends_with(".expected.json")
        })
        .collect();
    out.sort();
    out
}

/// Checks that `expected` is a JSON subset of `got` (objects: listed keys; arrays: same length,
/// matching elements). Keys starting with `$` are directives: `$contains` maps dotted paths to
/// substrings the string there must contain; `$absent` lists dotted paths that must not exist.
pub fn subset_problems(expected: &serde_json::Value, got: &serde_json::Value) -> Vec<String> {
    use serde_json::Value;
    fn walk(expected: &Value, got: &Value, path: &str, out: &mut Vec<String>) {
        match (expected, got) {
            (Value::Object(e), Value::Object(g)) => {
                for (k, v) in e {
                    if k.starts_with('$') {
                        continue;
                    }
                    match g.get(k) {
                        Some(gv) => walk(v, gv, &format!("{path}.{k}"), out),
                        None => out.push(format!("{path}.{k}: missing")),
                    }
                }
            }
            (Value::Array(e), Value::Array(g)) => {
                if e.len() != g.len() {
                    out.push(format!(
                        "{path}: expected {} elements, got {}: {got}",
                        e.len(),
                        g.len()
                    ));
                    return;
                }
                for (i, (ev, gv)) in e.iter().zip(g).enumerate() {
                    walk(ev, gv, &format!("{path}[{i}]"), out);
                }
            }
            (e, g) if e == g => {}
            (e, g) => out.push(format!("{path}: expected {e}, got {g}")),
        }
    }
    fn at<'a>(v: &'a Value, dotted: &str) -> Option<&'a Value> {
        dotted
            .split('.')
            .try_fold(v, |cur, part| match part.parse::<usize>() {
                Ok(i) => cur.get(i),
                Err(_) => cur.get(part),
            })
    }
    let mut out = Vec::new();
    walk(expected, got, "", &mut out);
    if let Some(Value::Object(c)) = expected.get("$contains") {
        for (p, needles) in c {
            let s = at(got, p).and_then(Value::as_str).unwrap_or_default();
            for n in needles.as_array().unwrap() {
                if !s.contains(n.as_str().unwrap()) {
                    out.push(format!("{p}: `{s}` does not contain {n}"));
                }
            }
        }
    }
    if let Some(Value::Array(paths)) = expected.get("$absent") {
        for p in paths {
            if at(got, p.as_str().unwrap()).is_some() {
                out.push(format!("{p}: should be absent"));
            }
        }
    }
    out
}
