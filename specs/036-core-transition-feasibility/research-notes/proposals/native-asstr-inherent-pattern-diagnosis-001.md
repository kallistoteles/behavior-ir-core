# Actual483: foreign body and the pinned inherent-name matcher

Actual483 closes failed/source-valid, no resource or inventory error. Charon exits0, but the requested serde_json Value::as_str is Foreign/opaque (def_id22); the body guard correctly rejects it. This is not semantic admission.

Pinned primary source: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/name_matcher/mod.rs#L256. The Rust matcher returns false for inherent Impl(Ty) patterns. Its CLI source also states this syntax differs from the OCaml matcher. The correction uses only the impl-position wildcard serde_json::value::_::as_str; actual unique-body/hash checking remains required. Broad module wildcards remain rejected. Eight source-support guards pass after a genuine rejected-pattern red. No installed tool, Rust body or model definition is edited.
