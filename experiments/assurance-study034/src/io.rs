use crate::{
    artifacts::{DOCUMENT_BOUND, parse_json},
    error::{Result, StudyError},
};
use serde_json::Value;
use std::{
    fs::{File, OpenOptions},
    io::{Read, Write},
    path::Path,
};
pub fn read_bytes(path: &Path, limit: usize) -> Result<Vec<u8>> {
    let mut bytes = vec![];
    File::open(path)
        .map_err(|e| StudyError::InvalidInput(e.to_string()))?
        .take((limit + 1) as u64)
        .read_to_end(&mut bytes)?;
    if bytes.len() > limit {
        return Err(StudyError::InvalidInput("FileByteBound".into()));
    }
    Ok(bytes)
}
pub fn read(path: &Path) -> Result<Value> {
    parse_json(&read_bytes(path, DOCUMENT_BOUND)?, DOCUMENT_BOUND)
        .map_err(|e| StudyError::InvalidInput(e.to_string()))
}
pub fn write(path: &Path, value: &Value) -> Result<()> {
    let mut f = OpenOptions::new().write(true).create_new(true).open(path)?;
    serde_json::to_writer(&mut f, value)?;
    f.write_all(b"\n")?;
    f.sync_all()?;
    Ok(())
}
pub fn text<'a>(value: &'a Value, key: &str) -> Result<&'a str> {
    value
        .get(key)
        .and_then(Value::as_str)
        .ok_or(StudyError::InvalidInput("MissingStringField".into()))
}
