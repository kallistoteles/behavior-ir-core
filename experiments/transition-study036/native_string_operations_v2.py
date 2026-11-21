"""Bind exact candidate String/Str interfaces; native admission remains open."""

from pathlib import PurePosixPath
from template_function_bindings_v2 import bind_functions

FUNCTIONS = (
    "Str.Insts.CoreCmpPartialOrdStr.partial_cmp",
    "Str.Insts.CoreCmpPartialEqStr.eq",
    "Str.Insts.CoreCmpOrd.cmp",
    "alloc.string.String.Insts.CoreBorrowBorrowStr.borrow",
    "Str.Insts.AllocBorrowToOwnedString.to_owned",
    "alloc.string.String.Insts.CoreCmpPartialEqString.eq",
    "alloc.string.String.Insts.CoreCmpPartialOrdString.partial_cmp",
    "alloc.string.String.Insts.CoreCmpOrd.cmp",
    "alloc.string.String.impl.as_str",
)


def roots():
    n = "Correspondence036.NativeStringOperations"
    k = "Correspondence036.NativeKeyOrder"
    c = "Correspondence036.NativeStringCodec"
    r = "Aeneas.Std.Result.ok"
    s = "Aeneas.Std.Str"
    a = "alloc.string.String"
    specs = [
        (
            "string_compare",
            f"∀ (left right : String), {a}.Insts.CoreCmpOrd.cmp left right = {r} ({k}.cmpString left right)",
        ),
        (
            "str_compare",
            f"∀ (left right : {s}), _root_.Str.Insts.CoreCmpOrd.cmp left right = {r} ({k}.cmpStr left right)",
        ),
        (
            "string_partial",
            f"∀ (left right : String), {a}.Insts.CoreCmpPartialOrdString.partial_cmp left right = {r} (some ({k}.cmpString left right))",
        ),
        (
            "str_partial",
            f"∀ (left right : {s}), _root_.Str.Insts.CoreCmpPartialOrdStr.partial_cmp left right = {r} (some ({k}.cmpStr left right))",
        ),
        (
            "string_equal",
            f"∀ (left right : String), {a}.Insts.CoreCmpPartialEqString.eq left right = {r} (decide (left = right))",
        ),
        (
            "str_equal",
            f"∀ (left right : {s}), _root_.Str.Insts.CoreCmpPartialEqStr.eq left right = {r} (decide (left = right))",
        ),
        (
            "string_eq_comparison",
            f"∀ (left right : String), {a}.Insts.CoreCmpPartialEqString.eq left right = {r} (decide ({k}.cmpString left right = .eq))",
        ),
        (
            "str_eq_comparison",
            f"∀ (left right : {s}), _root_.Str.Insts.CoreCmpPartialEqStr.eq left right = {r} (decide ({k}.cmpStr left right = .eq))",
        ),
        (
            "borrow_valid",
            f"∀ (value : String) (bound : ({k}.ownedBytes value).length ≤ Aeneas.Std.Usize.max), {a}.Insts.CoreBorrowBorrowStr.borrow value = {r} ({k}.borrow value bound)",
        ),
        (
            "as_str_valid",
            f"∀ (value : String) (bound : ({k}.ownedBytes value).length ≤ Aeneas.Std.Usize.max), {a}.impl.as_str value = {r} ({k}.borrow value bound)",
        ),
        (
            "to_owned_valid",
            f"∀ (value : {s}) (owned : String), {c}.decode value = some owned → _root_.Str.Insts.AllocBorrowToOwnedString.to_owned value = {r} owned",
        ),
        (
            "native_roundtrip",
            f"∀ (value : String) (bound : ({k}.ownedBytes value).length ≤ Aeneas.Std.Usize.max), (do let borrowed ← {a}.impl.as_str value; _root_.Str.Insts.AllocBorrowToOwnedString.to_owned borrowed) = {r} value",
        ),
    ]
    return [
        dict(
            id="native.string.api." + name,
            declaration=n + "." + name,
            expected_type=expected,
        )
        for name, expected in specs
    ]


def prepare(refs, reference, external, template_sha256, source_dir):
    for ref in (reference,):
        if isinstance(ref, dict) and PurePosixPath(ref.get("path", "")).name in {
            "parameters.bin",
            "compression_prover_key.bin",
        }:
            raise ValueError("ProtectedArtifact")
    selection = refs.read(reference)
    if (
        set(selection) != {"format", "model_ref", "contract_ref"}
        or selection["format"] != "core036.native-string-operations.v2"
    ):
        raise ValueError("NativeStringOperationsSelection")
    for key in ("model_ref", "contract_ref"):
        ref = selection[key]
        if isinstance(ref, dict) and PurePosixPath(ref.get("path", "")).name in {
            "parameters.bin",
            "compression_prover_key.bin",
        }:
            raise ValueError("ProtectedArtifact")
    source = refs.verify(selection["model_ref"])
    if source != source_dir / "NativeStringOperations.lean":
        raise ValueError("NativeStringOperationsSourcePath")
    contract = refs.read(selection["contract_ref"])
    if (
        set(contract)
        != {
            "format",
            "scope",
            "template_sha256",
            "bindings",
            "native_proof",
            "feature_complete",
        }
        or contract["format"] != "core036.native-string-operations-contract.v2"
        or contract["scope"] != "exact_signature_candidate_api_not_native_admission"
        or contract["template_sha256"] != template_sha256
        or contract["native_proof"] != "unestablished"
        or contract["feature_complete"] is not False
    ):
        raise ValueError("NativeStringOperationsContract")
    model = source.read_text()
    external = bind_functions(external, model, contract["bindings"], FUNCTIONS)
    marker = "public import NativeJsonIterators\n"
    if external.count(marker) != 1:
        raise ValueError("NativeStringOperationsImport")
    external = external.replace(
        marker, marker + "public import NativeStringOperations\n"
    )
    return source, model.encode(), external, roots(), controls(model)


def controls(model):
    boundary = "\nnamespace Correspondence036.NativeStringOperations\n"
    if model.count(boundary) != 1:
        raise ValueError("NativeStringOperationsProofBoundary")
    implementations = model.split(boundary)[0]
    name = "alloc.string.String.Insts.CoreCmpOrd.cmp"
    start = implementations.index(" def " + name)
    end = implementations.index("\n\n", start)
    block = implementations[start:end]
    old = "Correspondence036.NativeKeyOrder.cmpString left right"
    if block.count(old) != 1:
        raise ValueError("NativeStringOperationsMutationPoint")
    mutant = (
        implementations[:start]
        + block.replace(old, "Correspondence036.NativeKeyOrder.cmpString right left")
        + implementations[end:]
    )
    mutant += """
open Correspondence036.NativeKeyOrder
example : alloc.string.String.Insts.CoreCmpOrd.cmp "z" "é" = .ok .lt := by
  unfold alloc.string.String.Insts.CoreCmpOrd.cmp
  rw [string_compare_swap "é" "z", unicode_control.1]
  simp
"""
    return [("wrong-native-string-comparator", mutant, "normalized-False")]
