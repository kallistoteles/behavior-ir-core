"""Compose actual generated JSON context and the source-bound readonly model.

This establishes a context for model coherence, never native admission.
"""

import re

from native_json_source_context_v2 import json_source_project_files
from native_string_memory_context_v2 import readonly_callers_project_files


SOURCE_NAMES = frozenset(
    {
        "RuntimeNames",
        "NativeJsonSourceIndex",
        "NativeJsonIterators",
        "NativeKeyOrder",
        "NativeStringCodec",
        "NativeStringBorrow",
        "NativeStringMemoryModel",
        "NativeStringMemoryProofs",
        "NativeMemoryCodecBridge",
    }
)


def validate_memory_codec_selection(selection):
    from artifact_registration_v2 import guard_reference

    references = {
        "json_source_selection_ref",
        "readonly_selection_ref",
        "checked_readonly_checkpoint_ref",
        "checked_readonly_result_ref",
    }
    if (
        not isinstance(selection, dict)
        or set(selection)
        != references
        | {
            "format",
            "source_refs",
            "scope",
            "native_proof",
            "runtime_totality_established",
            "feature_complete",
        }
        or selection["format"] != "core036.native-memory-codec-probe.v2"
        or selection["scope"] != "source_memory_codec_coherence_only"
        or selection["native_proof"] != "unestablished"
        or selection["runtime_totality_established"] is not False
        or selection["feature_complete"] is not False
        or not isinstance(selection["source_refs"], dict)
        or set(selection["source_refs"]) != SOURCE_NAMES
    ):
        raise ValueError("MemoryCodecSelection")
    for reference in [
        *[selection[key] for key in references],
        *selection["source_refs"].values(),
    ]:
        guard_reference(reference)


def memory_codec_project_files(generated, functions, sources):
    if (
        not isinstance(sources, dict)
        or set(sources) != SOURCE_NAMES
        or any(
            type(raw) is not bytes or len(raw) > 4 * 1024**2 for raw in sources.values()
        )
    ):
        raise ValueError("MemoryCodecProjectSources")
    if any(re.search(rb"\b(?:axiom|sorry|admit)\b", raw) for raw in sources.values()):
        raise ValueError("MemoryCodecUnprovedSource")
    iterator = sources["NativeJsonIterators"]
    token = b"CORE036_MODULE_PREFIX"
    if (
        iterator.count(token) != 1
        or iterator.count(b"public import CORE036_MODULE_PREFIX.Types\n") != 1
    ):
        raise ValueError("MemoryCodecIteratorModuleContext")
    files = json_source_project_files(
        generated, sources["RuntimeNames"], sources["NativeJsonSourceIndex"]
    )
    del files["ProofRoot"]
    files["NativeJsonIterators"] = iterator.replace(token, b"SeedFoldsNames", 1)
    for name in ["NativeKeyOrder", "NativeStringCodec"]:
        files[name] = sources[name]
    memory = readonly_callers_project_files(
        functions,
        {
            name: sources[name]
            for name in [
                "NativeStringBorrow",
                "NativeStringMemoryModel",
                "NativeStringMemoryProofs",
            ]
        },
    )
    del memory["ProofRoot"]
    files.update(memory)
    files["NativeMemoryCodecBridge"] = sources["NativeMemoryCodecBridge"]
    files["ProofRoot"] = (
        b"module\npublic import NativeMemoryCodecBridge\n@[expose] public section\n"
    )
    return files


def memory_codec_roots():
    """Expected statements frozen independently before bridge proof bodies."""
    return [
        {
            "id": "memory_codec.bytes_coherent",
            "declaration": "Correspondence036.NativeMemoryCodecBridge.bytes_coherent",
            "expected_type": "∀ (text : String), Correspondence036.NativeStringBorrow.ownedBytes text = "
            "Correspondence036.NativeKeyOrder.ownedBytes text",
        },
        {
            "id": "memory_codec.borrow_coherent",
            "declaration": "Correspondence036.NativeMemoryCodecBridge.borrow_coherent",
            "expected_type": "∀ (text : String) (bound : "
            "(Correspondence036.NativeStringBorrow.ownedBytes text).length ≤ "
            "Aeneas.Std.Usize.max), Correspondence036.NativeStringBorrow.borrow text "
            "bound = Correspondence036.NativeKeyOrder.borrow text bound",
        },
        {
            "id": "memory_codec.result_coherent",
            "declaration": "Correspondence036.NativeMemoryCodecBridge.result_coherent",
            "expected_type": "∀ (text : String), Correspondence036.NativeStringBorrow.borrowResult text "
            "= Correspondence036.NativeStringCodec.borrowResult text",
        },
        {
            "id": "memory_codec.source_projected_codec",
            "declaration": "Correspondence036.NativeMemoryCodecBridge.source_projected_codec",
            "expected_type": "∀ (heap : Correspondence036.NativeStringMemory.Heap) (readable : "
            "Correspondence036.NativeStringMemory.Pointer → Nat → Bool) (scope object "
            ": Nat) (pointer : Correspondence036.NativeStringMemory.Pointer) (text : "
            "String) (capacity allocator rawMarker uniqueMarker : "
            "Correspondence036.NativeStringMemory.Value) (valid : "
            "Correspondence036.NativeStringMemory.Representation heap readable object "
            "pointer text capacity allocator rawMarker uniqueMarker), ∃ final, "
            "Correspondence036.NativeStringMemory.execute "
            "Correspondence036.NativeStringMemorySource.program "
            "(Correspondence036.NativeStringMemory.initial heap readable scope object) "
            "= some final ∧ ∃ value, final.returned = some value ∧ "
            "Correspondence036.NativeStringMemory.projectedStr final.heap value = some "
            "(Correspondence036.NativeKeyOrder.borrow text valid.2.2.1)",
        },
    ]
