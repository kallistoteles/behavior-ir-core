//! Canonical JSON output: keys sorted by byte value, compact, UTF-8, no floats.
//!
//! This is a serialization concern only; identity is computed separately (see `admit::hash`).

use serde::Serialize;
use serde_json::Value;

#[derive(Debug, thiserror::Error)]
pub enum CanonicalError {
    #[error("floating-point number in output at {0}")]
    Float(String),
    #[error("serialization failed: {0}")]
    Serialize(String),
}

fn check_no_floats(v: &Value, path: &str) -> Result<(), CanonicalError> {
    match v {
        Value::Number(n) if n.is_f64() => Err(CanonicalError::Float(path.to_string())),
        Value::Array(items) => items
            .iter()
            .enumerate()
            .try_for_each(|(i, c)| check_no_floats(c, &format!("{path}[{i}]"))),
        Value::Object(map) => map
            .iter()
            .try_for_each(|(k, c)| check_no_floats(c, &format!("{path}.{k}"))),
        _ => Ok(()),
    }
}

/// Canonical string of a JSON value. `serde_json`'s map is ordered by key (the
/// `preserve_order` feature is not enabled), which gives byte-order key sorting.
pub fn to_canonical_string(v: &Value) -> Result<String, CanonicalError> {
    // Allocate diagnostic paths only when there is a float to report.
    if contains_float(v) {
        check_no_floats(v, "$")?;
    }
    serde_json::to_string(v).map_err(|e| CanonicalError::Serialize(e.to_string()))
}

fn contains_float(value: &Value) -> bool {
    match value {
        Value::Number(number) => number.is_f64(),
        Value::Array(items) => items.iter().any(contains_float),
        Value::Object(items) => items.values().any(contains_float),
        _ => false,
    }
}

/// Canonical string of any serializable value.
pub fn canonical<T: Serialize>(t: &T) -> Result<String, CanonicalError> {
    let v = serde_json::to_value(t).map_err(|e| CanonicalError::Serialize(e.to_string()))?;
    to_canonical_string(&v)
}

/// `SHA-256(UTF8(tag) || 0 || canonical JSON without a top-level hash)`.
/// Nested hash fields remain content. This is the legacy governance algorithm.
pub fn tagged_hash(tag: &str, doc: &Value) -> Result<String, CanonicalError> {
    let text = if doc.get("hash").is_some() {
        let mut value = doc.clone();
        if let Value::Object(object) = &mut value {
            object.remove("hash");
        }
        to_canonical_string(&value)?
    } else {
        to_canonical_string(doc)?
    };
    Ok(tagged_hash_canonical_text(tag, &text))
}

/// Internal reuse of bytes already produced by the canonical serializer.
pub(crate) fn tagged_hash_canonical_text(tag: &str, text: &str) -> String {
    use sha2::{Digest, Sha256};
    let mut digest = Sha256::new();
    digest.update(tag.as_bytes());
    digest.update([0]);
    digest.update(text.as_bytes());
    const HEX: &[u8; 16] = b"0123456789abcdef";
    let mut hash = String::with_capacity(71);
    hash.push_str("sha256:");
    for byte in digest.finalize() {
        hash.push(HEX[usize::from(byte >> 4)] as char);
        hash.push(HEX[usize::from(byte & 15)] as char);
    }
    hash
}
