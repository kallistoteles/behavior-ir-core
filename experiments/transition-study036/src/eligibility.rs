//! Selector failure delegates to original Core; it never produces a refusal.
use crate::{reference::Parent, views::Views};
use behavior_engine::store::documents::HistoryRef;
use serde_json::Value;
pub(crate) fn module(parent: &Parent) -> bool {
    // Keep the exact same UTF-8 bytes/trim comparison without asking the
    // pinned Lean emitter to quote a JSON string literal.
    let expected = match std::str::from_utf8(include_bytes!("../expected/ld8-module.json")) {
        Ok(value) => value,
        Err(_) => return false,
    };
    crate::serialization::module_wire(&parent.module) == expected.trim()
        && parent.analysis.policy_set_hash()
            == "sha256:dd15224cdcb1f74cf061420e0eccf15e912611503fc36b461ed231b5772ec4b5"
}
pub(crate) fn finish(
    parent: &Parent,
    checked_view: &Views,
    history: &HistoryRef,
    request: &Value,
) -> Option<String> {
    if !module(parent)
        || !checked_view.matches(history)
        || history.position == u64::MAX
        || request["format"] != "behavior.invocation.v1"
        || request["capability"] != "finish"
        || request["input"] != Value::Object(serde_json::Map::new())
        || request["context"] != Value::Object(serde_json::Map::new())
    {
        return None;
    }
    let bindings = request["bindings"].as_object()?;
    if bindings.len() != 1 {
        return None;
    }
    let binding = bindings.get("c")?;
    if binding["entity"] != "Child" {
        return None;
    }
    let child = binding["id"].as_str()?;
    checked_view.stage(child)?;
    Some(child.to_owned())
}

#[cfg(test)]
mod extraction_refinement_tests {
    #[test]
    fn byte_constant_decoding_preserves_original_selector() -> crate::error::Result<()> {
        let bytes = include_bytes!("../expected/ld8-module.json");
        let decoded = std::str::from_utf8(bytes).map_err(crate::error::library)?;
        assert_eq!(
            decoded.trim(),
            include_str!("../expected/ld8-module.json").trim()
        );
        let mut parent = crate::reference::parent("growth-D1")?;
        assert!(super::module(&parent));
        parent.module = crate::fixtures::module(true, false)?;
        assert!(!super::module(&parent));
        Ok(())
    }
}
