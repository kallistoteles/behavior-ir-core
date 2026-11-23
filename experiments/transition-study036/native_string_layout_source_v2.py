"""Actual-layout source inventory, without memory/native interpretation."""

import hashlib
import json

STRING_LAYOUT_TYPES = (
    "alloc::string::String",
    "alloc::vec::Vec",
    "alloc::raw_vec::RawVec",
    "alloc::raw_vec::RawVecInner",
    "core::ptr::unique::Unique",
    "core::ptr::non_null::NonNull",
)

# Charon454586e9 options.rs apply_preset(Aeneas), with hide_allocator omitted.
# Keep every other option explicit; no new compiler/backend or source lowering.
RETAINED_ALLOCATOR_FLAGS = (
    "--lift-associated-types",
    "*",
    "--treat-box-as-builtin",
    "--ops-to-function-calls",
    "--index-to-function-calls",
    "--reconstruct-fallible-operations",
    "--reconstruct-panic-calls",
    "--reconstruct-asserts",
    "--reconstruct-matches",
    "--hide-marker-traits",
    "--remove-unused-self-clauses",
    "--remove-adt-clauses",
    "--unbind-item-vars",
    "--deallocate-all-locals",
    "--no-gen-tuple-structs",
)


def charon_source_flags(config):
    retain = config.get("retain_source_allocators", False)
    if type(retain) is not bool:
        raise ValueError("NativeExtractionAllocatorFlag")
    if not retain:
        return ["--preset", "aeneas"]
    patterns = config.get("source_support_includes", [])
    if (
        config.get("monomorphize", False) is not False
        or not isinstance(patterns, list)
        or any(not isinstance(pattern, str) for pattern in patterns)
        or not set(STRING_LAYOUT_TYPES) <= set(patterns)
    ):
        raise ValueError("NativeExtractionAllocatorSourceScope")
    return list(RETAINED_ALLOCATOR_FLAGS)


def verify_retained_allocator_source(translated):
    options = translated.get("options", {})
    booleans = [
        flag[2:].replace("-", "_")
        for flag in RETAINED_ALLOCATOR_FLAGS
        if flag.startswith("--") and flag != "--lift-associated-types"
    ]
    if (
        options.get("hide_allocator") is not False
        or options.get("preset") is not None
        or options.get("monomorphize") is not False
        or options.get("no_typecheck", False) is not False
        or options.get("lift_associated_types") != ["*"]
        or any(options.get(name) is not True for name in booleans)
    ):
        raise ValueError("NativeExtractionAllocatorSourceOptions")

    nonnull_patterns = 0

    def errors(value):
        nonlocal nonnull_patterns
        if isinstance(value, dict):
            if set(value) == {"Error"} and isinstance(value["Error"], str):
                raise ValueError("NativeExtractionSourceTypeError:" + value["Error"])
            pattern = value.get("Pattern")
            if (
                isinstance(pattern, list)
                and len(pattern) == 2
                and pattern[1] == "NotNull"
            ):
                nonnull_patterns += 1
            for child in value.values():
                errors(child)
        elif isinstance(value, list):
            for child in value:
                errors(child)

    for declaration in translated["type_decls"]:
        if declaration is not None:
            errors(declaration.get("kind"))
    if nonnull_patterns == 0:
        raise ValueError("NativeExtractionMissingNotNullSourcePattern")
    return {
        "hide_allocator": False,
        "preset": None,
        "explicit_flags": list(RETAINED_ALLOCATOR_FLAGS),
        "type_error_nodes": 0,
        "nonnull_patterns_erased": False,
        "nonnull_pattern_nodes": nonnull_patterns,
        "native_proof": "unestablished",
    }


def required_string_layout_inventory(rows, patterns):
    observed = []
    for pattern in STRING_LAYOUT_TYPES:
        if pattern not in patterns:
            continue
        name = pattern.split("::")
        matches = [
            row
            for row in rows
            if row is not None
            and [part.get("Ident", [None])[0] for part in row["item_meta"]["name"]]
            == name
        ]
        if len(matches) != 1:
            raise ValueError("NativeExtractionRequiredStringLayout")
        kind = matches[0].get("kind")
        if not isinstance(kind, dict) or set(kind) != {"Struct"}:
            raise ValueError("NativeExtractionOpaqueStringLayout")
        fields = kind["Struct"]
        if (
            not isinstance(fields, list)
            or not fields
            or any(
                not isinstance(field, dict)
                or not isinstance(field.get("name"), str)
                or not field["name"]
                or not isinstance(field.get("ty"), dict)
                or not field["ty"]
                for field in fields
            )
            or len({field["name"] for field in fields}) != len(fields)
        ):
            raise ValueError("NativeExtractionIncompleteStringLayout")
        observed.append(
            {
                "pattern": pattern,
                "type_id": matches[0]["def_id"],
                "field_names": [field["name"] for field in fields],
                "kind_sha256": hashlib.sha256(
                    json.dumps(
                        kind, sort_keys=True, separators=(",", ":"), ensure_ascii=False
                    ).encode()
                ).hexdigest(),
                "status": "unestablished",
            }
        )
    return observed
