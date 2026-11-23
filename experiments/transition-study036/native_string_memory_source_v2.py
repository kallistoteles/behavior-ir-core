"""Typed recognition of the retained std String borrow; no native admission.

The descriptor binds actual source, including pointer refinements and layout.
It is an input to a separately checked memory interpretation, not its proof.
"""

import hashlib
import json
import re
import stat

from native_string_layout_source_v2 import (
    STRING_LAYOUT_TYPES,
    required_string_layout_inventory,
    verify_retained_allocator_source,
)


def _hash(value):
    return hashlib.sha256(
        json.dumps(
            value, sort_keys=True, separators=(",", ":"), ensure_ascii=False
        ).encode()
    ).hexdigest()


def _name(row):
    return "::".join(
        part.get("Ident", ["<impl>"])[0] for part in row["item_meta"]["name"]
    )


class SourceTypes:
    def __init__(self, translated):
        self.declarations = {
            row["def_id"]: row for row in translated["type_decls"] if row
        }
        self.pool = {}
        kinds = {
            "Adt",
            "Scalar",
            "Ref",
            "RawPtr",
            "Slice",
            "Pattern",
            "TypeVar",
            "DynTrait",
            "Foreign",
            "Arrow",
            "TraitType",
            "Error",
            "Never",
        }

        def collect(value):
            if isinstance(value, dict):
                wrapped = value.get("Value")
                if (
                    isinstance(wrapped, list)
                    and len(wrapped) == 2
                    and isinstance(wrapped[1], dict)
                    and len(wrapped[1]) == 1
                    and next(iter(wrapped[1])) in kinds
                ):
                    index, body = wrapped
                    if index in self.pool and self.pool[index] != body:
                        raise ValueError("StringMemoryAmbiguousTypeInterner")
                    self.pool[index] = body
                for child in value.values():
                    collect(child)
            elif isinstance(value, list):
                for child in value:
                    collect(child)

        collect(translated)

    def resolve(self, value):
        if set(value) == {"Deduplicated"}:
            if value["Deduplicated"] not in self.pool:
                raise ValueError("StringMemoryMissingTypeInterner")
            return self.pool[value["Deduplicated"]]
        if set(value) == {"Value"}:
            return value["Value"][1]
        return value

    def shape(self, value, arguments=()):
        value = self.resolve(value)
        if "Adt" in value:
            adt = value["Adt"]
            if adt["builtin"] == "Str":
                return ("str",)
            return (
                "adt",
                _name(self.declarations[adt["id"]]),
                tuple(self.shape(t, arguments) for t in adt["generics"]["types"]),
            )
        if "TypeVar" in value and set(value["TypeVar"]) == {"Free"}:
            index = value["TypeVar"]["Free"]
            if index >= len(arguments):
                raise ValueError("StringMemoryUnboundTypeVariable")
            return arguments[index]
        if "Scalar" in value:
            scalar = value["Scalar"]
            if scalar == {"Integer": {"Unsigned": "U8"}}:
                return ("u8",)
            if scalar == {"Integer": {"Unsigned": "Usize"}}:
                return ("usize",)
        if "Ref" in value:
            _, target, mutability = value["Ref"]
            return ("ref", mutability, self.shape(target, arguments))
        if "RawPtr" in value:
            target, mutability = value["RawPtr"]
            return ("ptr", mutability, self.shape(target, arguments))
        if "Slice" in value:
            return ("slice", self.shape(value["Slice"][0], arguments))
        if "Pattern" in value:
            inner, pattern = value["Pattern"]
            return ("pattern", pattern, self.shape(inner, arguments))
        raise ValueError("StringMemoryUnsupportedSourceType")

    def field(self, type_, index):
        if type_[0] != "adt":
            raise ValueError("StringMemoryFieldOfNonStruct")
        rows = [row for row in self.declarations.values() if _name(row) == type_[1]]
        if len(rows) != 1 or set(rows[0]["kind"]) != {"Struct"}:
            raise ValueError("StringMemoryFieldLayout")
        fields = rows[0]["kind"]["Struct"]
        if type(index) is not int or not 0 <= index < len(fields):
            raise ValueError("StringMemoryFieldIndex")
        return self.shape(fields[index]["ty"], type_[2])


READONLY_STRING_CALLERS = {
    "alloc::string::_::deref": ("string", "deref"),
    "alloc::string::_::as_str": ("string", "as_str"),
    "alloc::str::_::borrow": ("str", "borrow"),
}


def _recognize_string_borrow(translated, owner, method):
    verify_retained_allocator_source(translated)
    bindings = required_string_layout_inventory(
        translated["type_decls"], STRING_LAYOUT_TYPES
    )
    expected_fields = [
        ["vec"],
        ["buf", "len"],
        ["inner", "_marker"],
        ["ptr", "cap", "alloc"],
        ["pointer", "_marker"],
        ["pointer"],
    ]
    if [row["field_names"] for row in bindings] != expected_fields:
        raise ValueError("StringMemoryActualFieldNames")
    targets = translated["target_information"]
    if (
        len(targets) != 1
        or targets[0]["key"] != "x86_64-unknown-linux-gnu"
        or targets[0]["value"]["target_pointer_size"] != 8
        or targets[0]["value"]["is_little_endian"] is not True
    ):
        raise ValueError("StringMemoryTargetABI")
    types = SourceTypes(translated)
    nonnull = next(
        row
        for row in types.declarations.values()
        if _name(row) == STRING_LAYOUT_TYPES[-1]
    )
    if (
        len(nonnull["layout"]) != 1
        or nonnull["layout"][0]["value"]["repr"]["transparent"] is not True
    ):
        raise ValueError("StringMemoryNonNullRepresentation")
    functions = [
        row
        for row in translated["fun_decls"]
        if row
        and _name(row).startswith(f"alloc::{owner}::")
        and _name(row).endswith("::" + method)
    ]
    if len(functions) != 1 or set(functions[0]["body"]) != {"Structured"}:
        raise ValueError("StringMemoryActualDerefBody")
    function = functions[0]
    signature = function["signature"]
    string = ("adt", "alloc::string::String", ())
    if (
        signature["is_unsafe"] is not False
        or signature["abi"] != "Rust"
        or signature["is_variadic"] is not False
        or len(signature["inputs"]) != 1
        or types.shape(signature["inputs"][0]) != ("ref", "Shared", string)
        or types.shape(signature["output"]) != ("ref", "Shared", ("str",))
        or types.resolve(signature["inputs"][0])["Ref"][0]
        != types.resolve(signature["output"])["Ref"][0]
    ):
        raise ValueError("StringMemoryBorrowSignature")
    body = function["body"]["Structured"]
    locals_ = body["locals"]
    if locals_["arg_count"] != 1 or [row["index"] for row in locals_["locals"]] != list(
        range(7)
    ):
        raise ValueError("StringMemoryLocalInventory")
    local_types = {row["index"]: types.shape(row["ty"]) for row in locals_["locals"]}
    live, initialized, assignments, lifecycle = {1}, {1}, [], []

    def place(value):
        kind = value["kind"]
        if set(kind) == {"Local"}:
            local = kind["Local"]
            if local not in live or local not in initialized:
                raise ValueError("StringMemoryUninitializedRead")
            shape, path = local_types[local], []
        elif set(kind) == {"Projection"}:
            source, step = kind["Projection"]
            local, path, shape = place(source)
            if step == "Deref" and shape[0] in {"ref", "ptr"}:
                path, shape = [*path, "deref"], shape[2]
            elif step == "PtrMetadata" and shape == (
                "ptr",
                "Shared",
                ("slice", ("u8",)),
            ):
                path, shape = [*path, "metadata"], ("usize",)
            elif (
                isinstance(step, dict)
                and set(step) == {"Field"}
                and step["Field"][0] is None
            ):
                index = step["Field"][1]
                path, shape = [*path, index], types.field(shape, index)
            else:
                raise ValueError("StringMemoryUnsupportedPlace")
        else:
            raise ValueError("StringMemoryUnsupportedPlace")
        if types.shape(value["ty"]) != shape:
            raise ValueError("StringMemoryPlaceTypeMismatch")
        return local, path, shape

    def operand(value, mode):
        if set(value) != {mode}:
            raise ValueError("StringMemoryOperandMode")
        raw = value[mode]
        value_place = raw[0] if mode == "Copy" else raw
        if mode == "Copy" and (not isinstance(raw, list) or len(raw) != 2):
            raise ValueError("StringMemoryCopyWitness")
        result = place(value_place)
        if mode == "Move":
            if result[1]:
                raise ValueError("StringMemoryPartialMove")
            initialized.remove(result[0])
        return result

    statements = body["body"]["statements"]
    for statement in statements:
        kind = statement["kind"]
        if kind == "Return":
            if statement is not statements[-1] or 0 not in initialized:
                raise ValueError("StringMemoryReturnState")
            lifecycle.append(["return", 0])
        elif isinstance(kind, dict) and set(kind) == {"StorageLive"}:
            local = kind["StorageLive"]
            if local in live or local not in local_types:
                raise ValueError("StringMemoryStorageLive")
            live.add(local)
            lifecycle.append(["live", local])
        elif isinstance(kind, dict) and set(kind) == {"StorageDead"}:
            local = kind["StorageDead"]
            if local not in live:
                raise ValueError("StringMemoryStorageDead")
            live.remove(local)
            initialized.discard(local)
            lifecycle.append(["dead", local])
        elif isinstance(kind, dict) and set(kind) == {"Assign"}:
            destination, expression = kind["Assign"]
            if set(destination["kind"]) != {"Local"}:
                raise ValueError("StringMemoryHeapWrite")
            local = destination["kind"]["Local"]
            if (
                local not in live
                or types.shape(destination["ty"]) != local_types[local]
            ):
                raise ValueError("StringMemoryAssignmentType")
            if set(expression) == {"Use"}:
                value, marker = expression["Use"]
                if marker != "Yes":
                    raise ValueError("StringMemoryCopyMarker")
                parsed = ["copy", operand(value, "Copy")]
            elif set(expression) == {"UnaryOp"}:
                operator, value = expression["UnaryOp"]
                if set(operator) != {"Cast"} or set(operator["Cast"]) != {"Transmute"}:
                    raise ValueError("StringMemoryCastKind")
                parsed = [
                    "cast",
                    operand(value, "Copy"),
                    types.shape(operator["Cast"]["Transmute"]),
                ]
            elif set(expression) == {"Aggregate"}:
                aggregate, values = expression["Aggregate"]
                if (
                    set(aggregate) != {"RawPtr"}
                    or aggregate["RawPtr"][1] != "Shared"
                    or types.shape(aggregate["RawPtr"][0]) != ("slice", ("u8",))
                    or len(values) != 2
                ):
                    raise ValueError("StringMemorySliceAggregate")
                parsed = [
                    "slice",
                    operand(values[0], "Copy"),
                    operand(values[1], "Move"),
                ]
            elif set(expression) == {"Ref"}:
                reference = expression["Ref"]
                if reference["kind"] != "Shared" or set(reference["ptr_metadata"]) != {
                    "Read"
                }:
                    raise ValueError("StringMemoryBorrowKind")
                parsed = [
                    "borrow",
                    place(reference["place"]),
                    place(reference["ptr_metadata"]["Read"]),
                ]
            else:
                raise ValueError("StringMemoryUnsupportedAssignment")
            initialized.add(local)
            assignments.append([local, parsed])
            lifecycle.append(["assign", len(assignments) - 1])
        else:
            raise ValueError("StringMemoryUnsupportedStatement")
    if len(assignments) != 6 or not lifecycle or lifecycle[-1] != ["return", 0]:
        raise ValueError("StringMemorySixAssignmentsRequired")
    wrapper, pointer, length, slice_pointer, shared, returned = [
        row[0] for row in assignments
    ]
    u8, usize, byte_slice = ("u8",), ("usize",), ("slice", ("u8",))
    nonnull_u8 = ("adt", "core::ptr::non_null::NonNull", (u8,))
    expected = [
        [wrapper, ["copy", (1, ["deref", 0, 0, 0, 0, 0], nonnull_u8)]],
        [pointer, ["cast", (wrapper, [], nonnull_u8), ("ptr", "Shared", u8)]],
        [length, ["copy", (1, ["deref", 0, 1], usize)]],
        [
            slice_pointer,
            ["slice", (pointer, [], ("ptr", "Shared", u8)), (length, [], usize)],
        ],
        [
            shared,
            [
                "borrow",
                (slice_pointer, ["deref"], byte_slice),
                (slice_pointer, ["metadata"], usize),
            ],
        ],
        [
            0,
            [
                "cast",
                (shared, [], ("ref", "Shared", byte_slice)),
                ("ref", "Shared", ("str",)),
            ],
        ],
    ]
    if (
        assignments != expected
        or returned != 0
        or len({wrapper, pointer, length, slice_pointer, shared}) != 5
        or types.field(nonnull_u8, 0) != ("pattern", "NotNull", ("ptr", "Shared", u8))
    ):
        raise ValueError("StringMemoryActualProgramMismatch")
    expected_local = {
        wrapper: nonnull_u8,
        pointer: ("ptr", "Shared", u8),
        length: usize,
        slice_pointer: ("ptr", "Shared", byte_slice),
        shared: ("ref", "Shared", byte_slice),
        0: ("ref", "Shared", ("str",)),
        1: ("ref", "Shared", string),
    }
    if local_types != expected_local:
        raise ValueError("StringMemoryLocalTypes")
    return {
        "format": "core036.string-deref-source-program.v1",
        "function_id": function["def_id"],
        "body_sha256": _hash(function["body"]),
        "signature_sha256": _hash(signature),
        "pointer_bits": 64,
        "layout_bindings": bindings,
        "nonnull_layout_sha256": _hash(nonnull["layout"]),
        "operations": [
            "read_nonnull",
            "cast_data_pointer",
            "read_length",
            "make_slice_pointer",
            "borrow_shared_bytes",
            "cast_shared_str",
        ],
        "assignments": assignments,
        "lifecycle": lifecycle,
        "native_proof": "unestablished",
        "feature_complete": False,
    }


def recognize_string_deref(translated):
    """Keep the original557 descriptor and its source contract unchanged."""
    return _recognize_string_borrow(translated, "string", "deref")


def recognize_string_readonly_callers(translated):
    """Bind three real functions to one exact typed program, without admission."""
    functions = {}
    for pattern, (owner, method) in READONLY_STRING_CALLERS.items():
        descriptor = _recognize_string_borrow(translated, owner, method)
        functions[pattern] = {
            **descriptor,
            "format": "core036.string-readonly-source-program.v1",
            "source_pattern": pattern,
        }
    first = functions["alloc::string::_::deref"]
    semantic_fields = (
        "pointer_bits",
        "layout_bindings",
        "nonnull_layout_sha256",
        "operations",
        "assignments",
        "lifecycle",
    )
    if len({row["function_id"] for row in functions.values()}) != 3 or any(
        row[key] != first[key] for row in functions.values() for key in semantic_fields
    ):
        raise ValueError("StringReadonlyCallerProgramMismatch")
    return functions


def _verified_memory_crate(refs, selection, *, producer, body_count):
    """Verify one fixed source producer, including its actual translator refusal."""
    from artifact_io import RootRegistry, digest, read
    from artifact_registration_v2 import guard_reference
    from extract import (
        required_source_body_inventory,
        required_source_type_inventory,
        required_source_global_inventory,
    )
    from llbc_inventory_v2 import body_inventory
    from native_accessor_source_canary_v2 import guard_owned_path

    private, future = refs.roots["private"], refs.roots["future_evidence"]
    base = private / "native-extraction" / producer

    def owned(path):
        path = guard_owned_path(path)
        if not path.is_relative_to(private):
            raise ValueError("StringMemorySourcePath")
        for parent in [*reversed(path.parents), path]:
            if stat.S_ISLNK(parent.lstat().st_mode):
                raise ValueError("StringMemorySourceSymlink")
        return path

    for key in ("extraction_checkpoint_ref", "extraction_result_ref"):
        guard_reference(selection[key])
    checkpoint_path = refs.verify(selection["extraction_checkpoint_ref"])
    if (
        checkpoint_path != future / "attempts" / producer / "checkpoint.json"
        or refs.verify(selection["extraction_result_ref"]) != base / "result.json"
    ):
        raise ValueError("StringMemorySourceProducer")
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(selection["extraction_checkpoint_ref"])
    result = refs.read(selection["extraction_result_ref"])
    receipt = read(checkpoint_path.parent / "child/receipt.json")
    if (
        checkpoint["stage_outcome"] != "failed"
        or checkpoint["source_validation_error"] is not None
        or checkpoint["outcome"]["operational"] != "closed"
        or result["source_subject_ref"] != checkpoint["source_subject_ref"]
        or receipt["source_subject_ref"] != checkpoint["source_subject_ref"]
        or result["extraction_exit_code"] != 0
        or result["translation_exit_code"] != 1
        or result["compiler_cache_reused"] is not False
        or result["generated"] != []
        or result["native_proof"] != "unestablished"
        or result["scope"]
        != "Actual selected source call-closure probe with explicit unproved dependencies; not Core correspondence"
        or result["selected_roots"]
        != [
            "crate::reference::state_fact_rows",
            "crate::views::seed_rows",
            "crate::views::seed_relations",
            "crate::views::_::into_study",
        ]
        or receipt["exit_code"] != 1
        or receipt["stop_reason"] is not None
        or receipt.get("controller_error") is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["final_storage_inventory_error"] is not None
    ):
        raise ValueError("StringMemorySourceClosure")
    if [(row["label"], row["exit_code"]) for row in result["commands"]] != [
        ("metadata", 0),
        ("compiler", 0),
        ("cfg", 0),
        ("extract", 0),
        ("translate", 1),
    ]:
        raise ValueError("StringMemorySourceCommands")
    for row in result["commands"]:
        for stream in ("stdout", "stderr"):
            path = owned(base / "commands" / row["label"] / (stream + ".txt"))
            if digest(path) != row[stream + "_sha256"]:
                raise ValueError("StringMemorySourceCommandBytes")
    refusal = owned(base / "commands/translate/stdout.txt").read_text()
    refusal = re.sub(r"\x1b\[[0-9;]*m", "", refusal)
    if (
        refusal.count("[Error]") != 1
        or "Invalid option detected: the serialized crate was generated by Charon without the `--preset=aeneas` option."
        not in refusal
        or owned(base / "commands/translate/stderr.txt").read_bytes()
    ):
        raise ValueError("StringMemorySourceExpectedRefusal")
    raw_path = owned(base / "seed_folds.llbc")
    if (
        raw_path.stat().st_size > 4 * 1024**2
        or digest(raw_path) != result["llbc_sha256"]
    ):
        raise ValueError("StringMemorySourceRawBytes")
    raw = read(raw_path, limit=4 * 1024**2)["translated"]
    retained = verify_retained_allocator_source(raw)
    if retained != result["retained_allocator_source"] or retained != read(
        owned(base / "retained-allocator-source.json")
    ):
        raise ValueError("StringMemorySourceAllocatorWitness")
    ids = {row["def_id"] for row in raw["fun_decls"] if row}
    inventory = [
        dict(
            def_id=row["def_id"],
            item_meta=row["item_meta"],
            **body_inventory(row.get("body"), function_ids=ids),
        )
        for row in raw["fun_decls"]
        if row
    ]
    patterns = result["source_support_includes"]
    if (
        required_source_body_inventory(inventory, patterns)
        != result["required_source_bodies"]
        or required_source_type_inventory(raw["type_decls"], patterns)
        != result["required_source_types"]
        or required_source_global_inventory(
            raw["global_decls"], raw["fun_decls"], patterns
        )
        != result["required_source_globals"]
        or len(result["required_source_bodies"]) != body_count
        or len(result["required_source_types"]) != 9
        or len(result["required_source_globals"]) != 1
    ):
        raise ValueError("StringMemorySourceInventories")
    return raw, result


def verified_memory_source(refs, selection):
    """Accept faithful source from closed557, retaining its translator refusal."""
    raw, result = _verified_memory_crate(
        refs, selection, producer="a0557", body_count=14
    )
    return recognize_string_deref(raw), result


def verified_readonly_callers_source(refs, selection):
    """Check closed562 and every actual caller; no native/runtime authority."""
    raw, result = _verified_memory_crate(
        refs, selection, producer="a0562", body_count=16
    )
    return recognize_string_readonly_callers(raw), result
