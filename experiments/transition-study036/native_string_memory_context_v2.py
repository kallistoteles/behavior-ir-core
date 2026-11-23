"""Exact source descriptor to a declared memory project; no native admission."""

import re


def memory_source_roots():
    m = "Correspondence036.NativeStringMemory"
    p = "Correspondence036.NativeStringMemorySource.program"
    b = "Correspondence036.NativeStringBorrow"
    arguments = f"∀ (heap : {m}.Heap) (readable : {m}.Pointer → Nat → Bool) (scope object : Nat) (pointer : {m}.Pointer) (text : String) (capacity allocator rawMarker uniqueMarker : {m}.Value) (valid : {m}.Representation heap readable object pointer text capacity allocator rawMarker uniqueMarker), "
    run = f"{m}.execute {p} ({m}.initial heap readable scope object) = some final"
    length = f"({b}.ownedBytes text).length"
    return [
        dict(
            id="string_memory.word_limit",
            declaration=m + ".word_limit",
            expected_type="Aeneas.Std.Usize.max = 18446744073709551615",
        ),
        dict(
            id="string_memory.exact",
            declaration=m + ".deref_exact",
            expected_type=arguments
            + f"∃ final, {run} ∧ final.heap = heap ∧ final.readable = readable ∧ final.scope = scope ∧ final.returned = some ({m}.Value.strRef pointer {length} scope)",
        ),
        dict(
            id="string_memory.projected",
            declaration=m + ".deref_projected",
            expected_type=arguments
            + f"∃ final, {run} ∧ ∃ value, final.returned = some value ∧ {m}.projectedStr final.heap value = some ({b}.borrow text valid.2.2.1)",
        ),
        dict(
            id="string_memory.empty",
            declaration=m + ".prefix_zero",
            expected_type=f"∀ (heap : {m}.Heap) (pointer : {m}.Pointer), {m}.prefix heap pointer 0 = some []",
        ),
        dict(
            id="string_memory.bytes",
            declaration=m + ".deref_bytes",
            expected_type=arguments
            + f"∃ final, {run} ∧ {m}.prefix final.heap pointer {length} = some ({b}.ownedBytes text)",
        ),
    ]


def program_source(descriptor):
    if descriptor.get("format") != "core036.string-deref-source-program.v1":
        raise ValueError("StringMemorySourceDescriptor")
    instructions = []
    for destination, parsed in descriptor["assignments"]:
        if parsed[0] == "copy":
            local, path, _ = parsed[1]
            projections = [
                ".deref"
                if item == "deref"
                else ".metadata"
                if item == "metadata"
                else ".field " + str(item)
                for item in path
            ]
            instructions.append(
                f".copy {destination} {local} [" + ", ".join(projections) + "]"
            )
        elif parsed[0] == "cast":
            constructor = "dataPointer" if parsed[2][0] == "ptr" else "sharedStr"
            instructions.append(f".{constructor} {destination} {parsed[1][0]}")
        elif parsed[0] == "slice":
            instructions.append(
                f".slicePointer {destination} {parsed[1][0]} {parsed[2][0]}"
            )
        elif parsed[0] == "borrow":
            instructions.append(
                f".sharedBytes {destination} {parsed[1][0]} {parsed[2][0]}"
            )
        else:
            raise ValueError("StringMemorySourceInstruction")
    statements = []
    for kind, index in descriptor["lifecycle"]:
        if type(index) is not int or not 0 <= index <= 6:
            raise ValueError("StringMemorySourceLocal")
        if kind == "assign":
            statements.append(instructions[index])
        elif kind in {"live", "dead"}:
            statements.append(f".{kind} {index}")
        elif kind == "return":
            statements.append(f".returnValue {index}")
        else:
            raise ValueError("StringMemorySourceLifecycle")
    return (
        "module\npublic import NativeStringMemoryModel\n@[expose] public section\n"
        "namespace Correspondence036.NativeStringMemorySource\n"
        "def program : List NativeStringMemory.Instruction := [\n  "
        + ",\n  ".join(statements)
        + "\n]\nend Correspondence036.NativeStringMemorySource\n"
    ).encode()


def memory_project_files(descriptor, sources):
    names = {
        "NativeStringBorrow",
        "NativeStringMemoryModel",
        "NativeStringMemoryProofs",
    }
    if set(sources) != names or any(
        type(value) is not bytes or len(value) > 4 * 1024**2
        for value in sources.values()
    ):
        raise ValueError("StringMemoryProjectSources")
    if any(re.search(rb"\b(?:axiom|sorry|admit)\b", raw) for raw in sources.values()):
        raise ValueError("StringMemoryUnprovedProjectSource")
    return {
        "NativeStringBorrow": sources["NativeStringBorrow"],
        "NativeStringMemoryModel": sources["NativeStringMemoryModel"],
        "NativeStringDerefProgram": program_source(descriptor),
        "NativeStringMemoryProofs": sources["NativeStringMemoryProofs"],
        "ProofRoot": b"module\npublic import NativeStringMemoryProofs\n@[expose] public section\n",
    }


def validate_memory_selection(selection):
    from artifact_registration_v2 import guard_reference

    references = {
        "extraction_checkpoint_ref",
        "extraction_result_ref",
        "borrow_selection_ref",
        "source_decomposition_ref",
    }
    if (
        not isinstance(selection, dict)
        or set(selection)
        != references
        | {
            "format",
            "source_refs",
            "bindings",
            "scope",
            "native_proof",
            "runtime_totality_established",
            "feature_complete",
        }
        or selection["format"] != "core036.native-string-memory-probe.v2"
        or selection["scope"] != "source_string_memory_model_only"
        or selection["native_proof"] != "unestablished"
        or selection["feature_complete"] is not False
        or selection["runtime_totality_established"] is not False
        or selection["bindings"] != []
        or set(selection["source_refs"])
        != {"NativeStringBorrow", "NativeStringMemoryModel", "NativeStringMemoryProofs"}
    ):
        raise ValueError("StringMemorySelection")
    for reference in [
        *[selection[key] for key in references],
        *selection["source_refs"].values(),
    ]:
        guard_reference(reference)
