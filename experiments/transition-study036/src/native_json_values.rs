//! Explicit native object construction, without a generic Serialize dictionary.
#[macro_export]
macro_rules! native_object {
    ($($key:literal => $value:expr),* $(,)?) => {{
        let mut fields = serde_json::Map::new();
        $(fields.insert($key.to_owned(), $value);)*
        serde_json::Value::Object(fields)
    }};
}

#[macro_export]
macro_rules! native_text {
    ($value:expr) => {
        serde_json::Value::String(($value).to_owned())
    };
}
