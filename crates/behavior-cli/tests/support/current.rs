//! Positive CLI fixture preparation; no production complete-world inference.
#![allow(dead_code, clippy::unwrap_used, clippy::expect_used)]
use behavior_core::semantic::{Module, module::ParamRole, types::Type};
use serde_json::{Value, json};
use std::{
    collections::BTreeMap,
    path::{Path, PathBuf},
};

pub fn complete(module: &Module, original: &Value) -> Value {
    let mut request = original.clone();
    let mut rows: BTreeMap<String, BTreeMap<String, Value>> = BTreeMap::new();
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
            let Some(row) = request["state"].get(param.name()) else {
                continue;
            };
            let Some(id) = row["id"].as_str() else {
                continue;
            };
            if let Some(previous) = rows
                .entry(entity.clone())
                .or_default()
                .insert(id.into(), row.clone())
            {
                assert_eq!(previous, *row, "conflicting fixture binding");
            }
        }
    }
    let facts = request
        .as_object_mut()
        .unwrap()
        .entry("facts")
        .or_insert_with(|| json!({}))
        .as_object_mut()
        .unwrap();
    let universe = facts
        .entry("universe")
        .or_insert_with(|| json!([]))
        .as_array_mut()
        .unwrap();
    for entity in module.entities().keys() {
        if !universe.iter().any(|entry| entry["entity"] == *entity) {
            universe.push(json!({"entity":entity,"members":rows.remove(entity).unwrap_or_default().into_values().collect::<Vec<_>>()}));
        }
    }
    request
}

pub fn load(path: &Path) -> Value {
    serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap()
}

pub fn write(name: &str, value: &Value) -> PathBuf {
    let path = std::env::temp_dir().join(format!(
        "behavior017-cli-{}-{name}.json",
        std::process::id()
    ));
    std::fs::write(&path, value.to_string()).unwrap();
    path
}

pub fn request(wire: &Path, original: &Path) -> PathBuf {
    let module = behavior_engine::admit(&std::fs::read_to_string(wire).unwrap()).unwrap();
    let request = complete(&module, &load(original));
    write(original.file_stem().unwrap().to_str().unwrap(), &request)
}
