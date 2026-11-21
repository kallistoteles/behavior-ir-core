"""Supported extraction-name metadata with exact executable-IR preservation.

Raw compiler output remains separate. The verifier traverses both graphs,
without making another graph copy or materializing a whole JSON string.
"""

import copy
import hashlib
import json
import math
import re
import struct
from pathlib import Path

FORMAT = "core036.llbc-name-normalization.v2"
PREFIX = "Core036LocalTraitImpl"
DEBUG_FORMAT = "core036.llbc-namespace-debug-normalization.v2"


def lean_ir_filename(scope, *, normalized=False):
    if (
        type(scope) is not str
        or re.fullmatch(r"[a-z][a-z0-9]*(?:-[a-z0-9]+)*", scope) is None
        or type(normalized) is not bool
    ):
        raise ValueError("LlbcLeanModuleFilename")
    return scope.replace("-", "_") + ("_names" if normalized else "") + ".llbc"


def _schedule(original):
    if not isinstance(original, dict) or not isinstance(
        original.get("translated"), dict
    ):
        raise ValueError("LlbcNamesDocument")
    rows = original["translated"].get("trait_impls")
    if not isinstance(rows, list):
        raise ValueError("LlbcNamesTraitImplementations")
    used_ids = set()
    existing_names = set()
    for row in rows:
        if row is None:
            continue
        if (
            not isinstance(row, dict)
            or type(row.get("def_id")) is not int
            or row["def_id"] < 0
            or row["def_id"] in used_ids
        ):
            raise ValueError("LlbcNamesImplementationId")
        used_ids.add(row["def_id"])
        meta = row.get("item_meta")
        if (
            not isinstance(meta, dict)
            or type(meta.get("is_local")) is not bool
            or not isinstance(meta.get("attr_info"), dict)
        ):
            raise ValueError("LlbcNamesMetadata")
        attrs = meta["attr_info"]
        if "rename" not in attrs or (
            attrs["rename"] is not None and not isinstance(attrs["rename"], str)
        ):
            raise ValueError("LlbcNamesRenameMetadata")
        if attrs["rename"] is not None:
            existing_names.add(attrs["rename"])
    changes, allowed = [], {}
    for index, row in enumerate(rows):
        if row is None or not row["item_meta"]["is_local"]:
            continue
        attrs = row["item_meta"]["attr_info"]
        if attrs["rename"] is not None:
            continue
        name = PREFIX + str(row["def_id"])
        if name in existing_names:
            raise ValueError("LlbcNamesExplicitNameCollision")
        allowed[id(attrs)] = name
        changes.append(
            {
                "json_pointer": f"/translated/trait_impls/{index}/item_meta/attr_info/rename",
                "array_index": index,
                "def_id": row["def_id"],
                "before": None,
                "after": name,
            }
        )
    return changes, allowed


def _receipt(changes):
    return {
        "format": FORMAT,
        "changes": changes,
        "native_correspondence": "unestablished",
    }


def normalize_local_impl_names(original):
    changes, _ = _schedule(original)
    normalized = copy.deepcopy(original)
    for change in changes:
        row = normalized["translated"]["trait_impls"][change["array_index"]]
        row["item_meta"]["attr_info"]["rename"] = change["after"]
    return normalized, _receipt(changes)


def _debug_schedule(original, trait_changes):
    translated = original["translated"]
    reserved = set()
    for rows in translated.values():
        if not isinstance(rows, list):
            continue
        for row in rows:
            if not isinstance(row, dict):
                continue
            for part in row.get("item_meta", {}).get("name", []):
                if isinstance(part, dict) and "Ident" in part:
                    reserved.add(part["Ident"][0])
    reserved.update(change["after"].split(".")[0] for change in trait_changes)
    rows = translated.get("fun_decls")
    if not isinstance(rows, list):
        raise ValueError("LlbcDebugFunctions")
    changes, allowed, ids = [], {}, set()
    for position, row in enumerate(rows):
        if row is None:
            continue
        if (
            not isinstance(row, dict)
            or type(row.get("def_id")) is not int
            or row["def_id"] < 0
            or row["def_id"] in ids
        ):
            raise ValueError("LlbcDebugFunctionId")
        ids.add(row["def_id"])
        body = row.get("body")
        if body is None or body == "Opaque":
            continue
        if isinstance(body, dict) and set(body) == {"Intrinsic"}:
            intrinsic = body["Intrinsic"]
            if (
                not isinstance(intrinsic, dict)
                or set(intrinsic)
                != {"name", "arg_names", "fallback", "fallback_is_spec"}
                or type(intrinsic["name"]) is not str
                or not isinstance(intrinsic["arg_names"], list)
                or any(type(name) is not str for name in intrinsic["arg_names"])
                or intrinsic["fallback"] is not None
                or type(intrinsic["fallback_is_spec"]) is not bool
            ):
                raise ValueError("LlbcDebugIntrinsicWithoutFallbackRequired")
            # These declarations have no local debug-hint table. Their name,
            # argument order, signature and complete intrinsic metadata remain
            # subject to the unchanged exact graph comparison.
            continue
        if not isinstance(body, dict) or set(body) != {"Structured"}:
            raise ValueError("LlbcDebugBodyForm")
        local_block = body["Structured"].get("locals", {})
        locals_ = local_block.get("locals")
        if not isinstance(locals_, list):
            raise ValueError("LlbcDebugLocals")
        for index, local in enumerate(locals_):
            if (
                not isinstance(local, dict)
                or type(local.get("index")) is not int
                or local["index"] != index
                or "name" not in local
                or (local["name"] is not None and type(local["name"]) is not str)
            ):
                raise ValueError("LlbcDebugLocalIdentity")
        used = {local["name"] for local in locals_ if local["name"] is not None}
        for index, local in enumerate(locals_):
            before = local["name"]
            if before is None or before not in reserved:
                continue
            after = "v" + str(index)
            while after in reserved or after in used:
                after += "_"
            used.add(after)
            allowed[id(local)] = (before, after)
            changes.append(
                dict(
                    json_pointer=f"/translated/fun_decls/{position}/body/Structured/locals/locals/{index}/name",
                    function_index=position,
                    function_id=row["def_id"],
                    local_index=index,
                    before=before,
                    after=after,
                )
            )
    return changes, allowed


def normalize_namespace_debug_names(original):
    normalized, receipt = normalize_local_impl_names(original)
    changes, _ = _debug_schedule(original, receipt["changes"])
    for change in changes:
        locals_ = normalized["translated"]["fun_decls"][change["function_index"]][
            "body"
        ]["Structured"]["locals"]["locals"]
        locals_[change["local_index"]]["name"] = change["after"]
    return normalized, {
        **receipt,
        "format": DEBUG_FORMAT,
        "debug_local_changes": changes,
    }


def _compare(
    original, normalized, allowed, *, preserve_key_order=True, debug_allowed=None
):
    stack = [(original, normalized)]
    while stack:
        left, right = stack.pop()
        if type(left) is not type(right):
            raise ValueError("LlbcNamesExecutableOrMetadataChange")
        if type(left) is dict:
            if left.keys() != right.keys() or any(type(key) is not str for key in left):
                raise ValueError("LlbcNamesExecutableOrMetadataChange")
            if preserve_key_order and tuple(left) != tuple(right):
                raise ValueError("LlbcNamesExecutableOrMetadataChange")
            replacement = allowed.get(id(left))
            debug_replacement = (debug_allowed or {}).get(id(left))
            for key in left:
                if key == "name" and debug_replacement is not None:
                    if (left[key], right[key]) != debug_replacement or type(
                        right[key]
                    ) is not str:
                        raise ValueError("LlbcNamesExecutableOrMetadataChange")
                elif key == "rename" and replacement is not None:
                    if (
                        left[key] is not None
                        or type(right[key]) is not str
                        or right[key] != replacement
                    ):
                        raise ValueError("LlbcNamesExecutableOrMetadataChange")
                else:
                    stack.append((left[key], right[key]))
        elif type(left) is list:
            if len(left) != len(right):
                raise ValueError("LlbcNamesExecutableOrMetadataChange")
            stack.extend(zip(left, right, strict=True))
        elif type(left) is float:
            if (
                not math.isfinite(left)
                or not math.isfinite(right)
                or struct.pack(">d", left) != struct.pack(">d", right)
            ):
                raise ValueError("LlbcNamesExecutableOrMetadataChange")
        elif type(left) not in (str, int, bool, type(None)) or left != right:
            raise ValueError("LlbcNamesExecutableOrMetadataChange")


def verify_name_only_normalization(original, normalized, receipt):
    changes, allowed = _schedule(original)
    _compare(original, normalized, allowed)
    _compare(_receipt(changes), receipt, {}, preserve_key_order=False)


def verify_namespace_debug_normalization(original, normalized, receipt):
    changes, allowed = _schedule(original)
    debug_changes, debug_allowed = _debug_schedule(original, changes)
    _compare(original, normalized, allowed, debug_allowed=debug_allowed)
    expected = {
        **_receipt(changes),
        "format": DEBUG_FORMAT,
        "debug_local_changes": debug_changes,
    }
    _compare(expected, receipt, {}, preserve_key_order=False)


def write_normalized_llbc(path, original, normalized, receipt, *, max_bytes):
    if type(max_bytes) is not int or max_bytes <= 0:
        raise ValueError("LlbcNamesByteLimit")
    verify_name_only_normalization(original, normalized, receipt)
    return _write_verified_llbc(path, normalized, max_bytes=max_bytes)


def write_debug_normalized_llbc(path, original, normalized, receipt, *, max_bytes):
    if type(max_bytes) is not int or max_bytes <= 0:
        raise ValueError("LlbcNamesByteLimit")
    verify_namespace_debug_normalization(original, normalized, receipt)
    return _write_verified_llbc(path, normalized, max_bytes=max_bytes)


def _write_verified_llbc(path, normalized, *, max_bytes):
    encoder = json.JSONEncoder(
        ensure_ascii=False, allow_nan=False, separators=(",", ":")
    )
    checksum = hashlib.sha256()
    size = 0
    with Path(path).open("xb") as stream:
        for fragment in encoder.iterencode(normalized):
            raw = fragment.encode("utf-8")
            size += len(raw)
            if size > max_bytes:
                raise ValueError("LlbcNamesByteLimit")
            stream.write(raw)
            checksum.update(raw)
        if size + 1 > max_bytes:
            raise ValueError("LlbcNamesByteLimit")
        stream.write(b"\n")
        checksum.update(b"\n")
        size += 1
    return {"bytes": size, "sha256": checksum.hexdigest()}
