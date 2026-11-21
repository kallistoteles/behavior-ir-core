"""Exact source-owned function inventories; not a native semantic admission."""

import hashlib
import re


def bind_functions(external, model, bindings, functions):
    required = set(functions)
    if (
        not isinstance(bindings, list)
        or len(bindings) != len(functions)
        or any(not isinstance(row, dict) for row in bindings)
        or {row.get("lean") for row in bindings} != required
    ):
        raise ValueError("NativeFunctionBindingInventory")
    original = set(re.findall(r"^@\[rust_fun [^\n]+ axiom ([^ (\n:]+)", external, re.M))
    defined = re.findall(
        r'^@\[rust_fun "([^"]+)"\] def ([^ (\n:]+)([^\n]+) :=$', model, re.M
    )
    if len(defined) != len(functions) or {row[1] for row in defined} != required:
        raise ValueError("NativeFunctionModelInventory")
    by_name = {name: (rust, signature) for rust, name, signature in defined}
    for row in bindings:
        if (
            set(row) != {"rust", "lean", "block_bytes", "block_sha256"}
            or not isinstance(row["rust"], str)
            or not isinstance(row["block_sha256"], str)
            or re.fullmatch(r"[a-f0-9]{64}", row["block_sha256"]) is None
            or type(row["block_bytes"]) is not int
            or not 0 < row["block_bytes"] <= 65536
        ):
            raise ValueError("NativeFunctionBindingFields")
        name = row["lean"]
        pattern = (
            r'^@\[rust_fun "'
            + re.escape(row["rust"])
            + r'"\] axiom '
            + re.escape(name)
            + r"([^\n]+)$"
        )
        matches = list(re.finditer(pattern, external, re.M))
        if len(matches) != 1:
            raise ValueError("NativeFunctionBindingMissing")
        match = matches[0]
        start = external.rfind("/-- [", 0, match.start())
        end = external.index("\n\n", match.end()) + 2
        block = external[start:end]
        if (
            start < 0
            or block.count("axiom ") != 1
            or len(block.encode()) != row["block_bytes"]
            or hashlib.sha256(block.encode()).hexdigest() != row["block_sha256"]
            or by_name[name] != (row["rust"], match.group(1))
        ):
            raise ValueError("NativeFunctionExactSignatureOrBlock")
        external = external[:start] + external[end:]
    remaining = set(
        re.findall(r"^@\[rust_fun [^\n]+ axiom ([^ (\n:]+)", external, re.M)
    )
    if remaining & required or remaining | required != original:
        raise ValueError("NativeFunctionExternalNodeLoss")
    return external
