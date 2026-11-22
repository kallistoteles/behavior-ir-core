"""Exact reached row-node bindings; models/native admission remain separate."""

import hashlib
import re

V = "serde_json.value.Value"
M = f"serde_json.map.Map String {V}"
MODEL = "Correspondence036.NativeCanonicalRowOperations."
ROW_PRIMITIVES = {
    "Str.Insts.CoreCmpPartialEqStr.eq": {
        "rust": "core::str::traits::{core::cmp::PartialEq<str, str>}::eq",
        "signature": ": Str → Str → Result Bool",
        "implementation": MODEL + "eqStr",
    },
    "Str.Insts.AllocBorrowToOwnedString.to_owned": {
        "rust": "alloc::str::{alloc::borrow::ToOwned<str, alloc::string::String>}::to_owned",
        "signature": ": Str → Result String",
        "implementation": MODEL + "ownResult",
    },
    "Str.Insts.Serde_jsonValueIndexIndex.index_into": {
        "rust": "serde_json::value::index::{serde_json::value::index::Index<str>}::index_into",
        "signature": f": Str → {V} → Result (Option {V})",
        "implementation": MODEL + "indexStr",
    },
    "Shared0T.Insts.Serde_jsonValueIndexIndex.index_into": {
        "rust": "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into",
        "signature": f"{{T : Type _}} (IndexInst : serde_json.value.index.Index T) : T → {V} → Result (Option {V})",
        "implementation": MODEL + "sharedIndex IndexInst",
    },
    "serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index": {
        "rust": "serde_json::value::index::{core::ops::index::Index<serde_json::value::Value, @I, serde_json::value::Value>}::index",
        "signature": f"{{I : Type _}} (IndexInst : serde_json.value.index.Index I) : {V} → I → Result {V}",
        "implementation": MODEL + "valueIndex IndexInst",
    },
    "serde_json.value.Value.Insts.CoreCloneClone.clone": {
        "rust": "serde_json::value::{core::clone::Clone<serde_json::value::Value>}::clone",
        "signature": f": {V} → Result {V}",
        "implementation": MODEL + "clone",
    },
    "serde_json.map.MapStringValue.impl.new": {
        "rust": "serde_json::map::{serde_json::map::Map<alloc::string::String, serde_json::value::Value>}::new",
        "signature": f": Result ({M})",
        "implementation": MODEL + "newMap",
    },
    "serde_json.map.MapStringValue.impl.insert": {
        "rust": "serde_json::map::{serde_json::map::Map<alloc::string::String, serde_json::value::Value>}::insert",
        "signature": f": {M} → String → {V} → Result ((Option {V}) × ({M}))",
        "implementation": MODEL + "insert",
    },
}

# These complete the model's full records. Str mutable meanings are NOT
# admitted: a generated-caller bridge and universal read noninterference must
# establish their contextual irrelevance. Shared methods genuinely forward.
ROW_DICTIONARY_PRIMITIVES = {
    "Str.Insts.Serde_jsonValueIndexIndex.index_into_mut": {
        "rust": "serde_json::value::index::{serde_json::value::index::Index<str>}::index_into_mut",
        "signature": f": Str → {V} → Result ((Option {V}) × (Option {V} → {V}))",
        "implementation": MODEL + "unreachedIndexIntoMut",
    },
    "Str.Insts.Serde_jsonValueIndexIndex.index_or_insert": {
        "rust": "serde_json::value::index::{serde_json::value::index::Index<str>}::index_or_insert",
        "signature": f": Str → {V} → Result ({V} × ({V} → {V}))",
        "implementation": MODEL + "unreachedIndexOrInsert",
    },
    "Shared0T.Insts.Serde_jsonValueIndexIndex.index_into_mut": {
        "rust": "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into_mut",
        "signature": f"{{T : Type _}} (IndexInst : serde_json.value.index.Index T) : T → {V} → Result ((Option {V}) × (Option {V} → {V}))",
        "implementation": MODEL + "sharedIndexIntoMut IndexInst",
    },
    "Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert": {
        "rust": "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_or_insert",
        "signature": f"{{T : Type _}} (IndexInst : serde_json.value.index.Index T) : T → {V} → Result ({V} × ({V} → {V}))",
        "implementation": MODEL + "sharedIndexOrInsert IndexInst",
    },
}


def bind_row_primitives(external, bindings):
    """Keep every unselected declaration and all generated executable bodies."""
    return _bind_named_primitives(external, bindings, ROW_PRIMITIVES)


def bind_row_dictionary_primitives(external, bindings):
    """A separate ledger; no admission of the inert mutable interpretations."""
    return _bind_named_primitives(external, bindings, ROW_DICTIONARY_PRIMITIVES)


def _bind_named_primitives(external, bindings, primitives):
    if (
        not isinstance(external, str)
        or not isinstance(bindings, list)
        or len(bindings) != len(primitives)
    ):
        raise ValueError("RowBindingInputs")
    replacements, definitions, seen = [], [], set()
    for row in bindings:
        if (
            not isinstance(row, dict)
            or set(row) != {"rust", "lean", "block_bytes", "block_sha256"}
            or not isinstance(row["lean"], str)
            or row["lean"] not in primitives
            or row["lean"] in seen
            or row["rust"] != primitives[row["lean"]]["rust"]
            or type(row["block_bytes"]) is not int
            or not 0 < row["block_bytes"] <= 65536
            or not isinstance(row["block_sha256"], str)
            or re.fullmatch(r"[a-f0-9]{64}", row["block_sha256"]) is None
        ):
            raise ValueError("RowBindingFields")
        seen.add(row["lean"])
        specification = primitives[row["lean"]]
        pattern = (
            r'^@\[\s*rust_fun\s+"' + re.escape(row["rust"])
            + r'"\s*\]\s*axiom\s+' + re.escape(row["lean"])
            + r"(?=\s|:)([\s\S]*?)(?=\n\n|\Z)"
        )
        matches = list(re.finditer(pattern, external, re.M))
        if len(matches) != 1:
            raise ValueError("RowBindingMissingOrDuplicate")
        match = matches[0]
        signature = match.group(1)
        if re.sub(r"\s+", "", signature) != re.sub(r"\s+", "", specification["signature"]):
            raise ValueError("RowBindingSignature")
        start = external.rfind("/-- [", 0, match.start())
        end = match.end() + (2 if external[match.end():match.end() + 2] == "\n\n" else 0)
        block = external[start:end] if start >= 0 else ""
        if (
            start < 0 or block.count("/-- [") != 1
            or len(re.findall(r"\baxiom\s+", block)) != 1
            or block.count("rust_fun") != 1
            or len(block.encode()) != row["block_bytes"]
            or hashlib.sha256(block.encode()).hexdigest() != row["block_sha256"]
        ):
            raise ValueError("RowBindingExactBlock")
        replacements.append((start, end))
        definitions.append(
            '@[rust_fun "' + row["rust"] + '"] def ' + row["lean"] + " "
            + signature.strip() + " :=\n  " + specification["implementation"] + "\n\n"
        )
    ordered = sorted(replacements)
    if any(left[1] > right[0] for left, right in zip(ordered, ordered[1:])):
        raise ValueError("RowBindingOverlappingBlocks")
    remaining = external
    for start, end in reversed(ordered):
        remaining = remaining[:start] + remaining[end:]
    return remaining, "".join(definitions)
