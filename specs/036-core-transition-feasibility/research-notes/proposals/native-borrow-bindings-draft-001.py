"""Exact multiline borrow-node binding; no source/runtime semantic admission."""
import hashlib
import re

PRIMITIVES = {
    "alloc.string.String.impl.as_str":
        "alloc::string::{alloc::string::String}::as_str",
    "alloc.string.String.Insts.CoreOpsDerefDerefStr.deref":
        "alloc::string::{core::ops::deref::Deref<alloc::string::String, str>}::deref",
}


def bind_borrow_primitives(external, bindings):
    """Remove only pinned source blocks and supply their narrow interpretation."""
    if (not isinstance(external, str) or not isinstance(bindings, list)
        or not 1 <= len(bindings) <= len(PRIMITIVES)):
        raise ValueError("BorrowBindingInputs")
    seen = set()
    replacements = []
    definitions = []
    for row in bindings:
        if (not isinstance(row, dict)
            or set(row) != {"rust", "lean", "block_bytes", "block_sha256"}
            or not isinstance(row.get("lean"), str)
            or row["lean"] not in PRIMITIVES
            or row["lean"] in seen
            or row.get("rust") != PRIMITIVES[row["lean"]]
            or type(row.get("block_bytes")) is not int
            or not 0 < row["block_bytes"] <= 65536
            or not isinstance(row.get("block_sha256"), str)
            or re.fullmatch(r"[a-f0-9]{64}", row["block_sha256"]) is None):
            raise ValueError("BorrowBindingFields")
        seen.add(row["lean"])
        pattern = (r'^@\[\s*rust_fun\s+"' + re.escape(row["rust"])
                   + r'"\s*\]\s*axiom\s+' + re.escape(row["lean"])
                   + r'(?=\s|:)([\s\S]*?)(?=\n\n|\Z)')
        matches = list(re.finditer(pattern, external, re.M))
        if len(matches) != 1:
            raise ValueError("BorrowBindingMissingOrDuplicate")
        match = matches[0]
        if re.sub(r"\s+", "", match.group(1)) != ":String→ResultStr":
            raise ValueError("BorrowBindingSignature")
        start = external.rfind("/-- [", 0, match.start())
        end = match.end() + (2 if external[match.end():match.end()+2] == "\n\n" else 0)
        block = external[start:end] if start >= 0 else ""
        if (start < 0 or block.count("/-- [") != 1
            or len(re.findall(r"\baxiom\s+", block)) != 1
            or block.count("rust_fun") != 1
            or len(block.encode()) != row["block_bytes"]
            or hashlib.sha256(block.encode()).hexdigest() != row["block_sha256"]):
            raise ValueError("BorrowBindingExactBlock")
        replacements.append((start, end))
        definitions.append('@[rust_fun "' + row["rust"] + '"] def '
                           + row["lean"] + ' : String → Result Str :=\n'
                           + '  Correspondence036.NativeStringBorrow.borrowResult\n\n')
    ordered = sorted(replacements)
    if any(left[1] > right[0] for left, right in zip(ordered, ordered[1:])):
        raise ValueError("BorrowBindingOverlappingBlocks")
    remaining = external
    for start, end in reversed(ordered):
        remaining = remaining[:start] + remaining[end:]
    return remaining, "".join(definitions)
