"""Bind actual entry/default signatures to captured-gap candidates, no admission."""
from pathlib import PurePosixPath
from template_function_bindings_v2 import bind_functions

FUNCTIONS = (
    "alloc.collections.btree.map.BTreeMap.impl.entry",
    "alloc.collections.btree.map.entry.Entry.impl.or_default",
)


def roots():
    specifications = [('decode_encode', '∀ {K V A : Type} (entry : Correspondence036.CollectionsGap.Entry K V), Correspondence036.NativeEntryOperations.decode (Correspondence036.NativeEntryOperations.encode (A := A) entry) = entry'), ('encode_decode', '∀ {K V A : Type} (entry : transition_study036.alloc.collections.btree.map.entry.Entry K V A), Correspondence036.NativeEntryOperations.encode (Correspondence036.NativeEntryOperations.decode entry) = entry'), ('render_encode', '∀ {K V A : Type} (entry : Correspondence036.CollectionsGap.Entry K V), Correspondence036.NativeEntryOperations.render (Correspondence036.NativeEntryOperations.encode (A := A) entry) = Correspondence036.CollectionsGap.toMap entry'), ('or_default_gap', '∀ {K V A : Type} (order : Aeneas.Std.core.cmp.Ord K) (default : Aeneas.Std.core.default.Default V) (allocator : transition_study036.core.alloc.AllocatorClone A) (entry : transition_study036.alloc.collections.btree.map.entry.Entry K V A), alloc.collections.btree.map.entry.Entry.impl.or_default order default allocator entry = (do let (current, backward) ← Correspondence036.CollectionsGap.orDefault (fun _ => default.default) (Correspondence036.NativeEntryOperations.decode entry); Aeneas.Std.Result.ok (current, fun replacement => Correspondence036.NativeEntryOperations.encode (backward replacement)))'), ('entry_captured', '∀ {K V A : Type} (allocator : transition_study036.core.alloc.AllocatorClone A) (order : Aeneas.Std.core.cmp.Ord K) (map : alloc.collections.btree.map.BTreeMap K V A) (key : K) (captured : Correspondence036.CollectionsGap.Entry K V) (searched : Correspondence036.CollectionsGap.captureM order.cmp key map.data = Aeneas.Std.Result.ok captured), alloc.collections.btree.map.BTreeMap.impl.entry allocator order map key = Aeneas.Std.Result.ok (Correspondence036.NativeEntryOperations.encode captured, fun replacement => alloc.collections.btree.map.BTreeMap.mk (Correspondence036.NativeEntryOperations.render replacement))'), ('backward_render', '∀ {K V A : Type} (entry : Correspondence036.CollectionsGap.Entry K V), (alloc.collections.btree.map.BTreeMap.mk (A := A) (Correspondence036.NativeEntryOperations.render (Correspondence036.NativeEntryOperations.encode (A := A) entry))).data = Correspondence036.CollectionsGap.toMap entry')]
    return [dict(id="native.entry.api." + name, declaration="Correspondence036.NativeEntryOperations." + name, expected_type=expected) for name, expected in specifications]


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
        or selection["format"] != "core036.native-entry-operations.v2"
    ):
        raise ValueError("NativeEntryOperationsSelection")
    for key in ("model_ref", "contract_ref"):
        ref = selection[key]
        if isinstance(ref, dict) and PurePosixPath(ref.get("path", "")).name in {
            "parameters.bin",
            "compression_prover_key.bin",
        }:
            raise ValueError("ProtectedArtifact")
    source = refs.verify(selection["model_ref"])
    if source != source_dir / "NativeEntryOperations.lean":
        raise ValueError("NativeEntryOperationsSourcePath")
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
        or contract["format"] != "core036.native-entry-operations-contract.v2"
        or contract["scope"] != "exact_signature_candidate_api_not_native_admission"
        or contract["template_sha256"] != template_sha256
        or contract["native_proof"] != "unestablished"
        or contract["feature_complete"] is not False
    ):
        raise ValueError("NativeEntryOperationsContract")
    model = source.read_text()
    external = bind_functions(external, model, contract["bindings"], FUNCTIONS)
    marker = "public import NativeJsonIterators\n"
    if external.count(marker) != 1:
        raise ValueError("NativeEntryOperationsImport")
    external = external.replace(
        marker, marker + "public import NativeEntryOperations\n"
    )
    return source, model.encode(), external, roots(), controls(model)



def controls(model):
    boundary = "\nnamespace Correspondence036.NativeEntryOperations\n"
    if model.count(boundary) != 2:
        raise ValueError("NativeEntryOperationsProofBoundary")
    implementations = model.rsplit(boundary, 1)[0]
    occupied = "ok (occupied.value, fun replacement => .Occupied ⟨occupied.front, occupied.stored, replacement, occupied.suffix⟩)"
    vacant = ".Occupied ⟨vacant.front, vacant.key, replacement, vacant.suffix⟩"
    if implementations.count(occupied) != 1 or implementations.count(vacant) != 1:
        raise ValueError("NativeEntryOperationsMutationPoint")
    wrong_default = implementations.replace(occupied, "do let _ ← coredefaultDefaultInst.default; " + occupied) + """
example {A : Type} (order : core.cmp.Ord String) (allocator : core.alloc.AllocatorClone A) :
    alloc.collections.btree.map.entry.Entry.impl.or_default order
      ⟨.fail .undef⟩ allocator
      (.Occupied ⟨.nil, "key", transition_study036.serde_json.value.Value.Null, .nil⟩) =
        .ok (transition_study036.serde_json.value.Value.Null,
          fun replacement => .Occupied ⟨.nil, "key", replacement, .nil⟩) := by
  simp [alloc.collections.btree.map.entry.Entry.impl.or_default]
"""
    wrong_gap = implementations.replace(vacant, ".Occupied ⟨Correspondence036.CollectionsFocus.append vacant.front vacant.suffix, vacant.key, replacement, .nil⟩") + """
open Correspondence036.NativeEntryOperations
open Correspondence036.CollectionsData Correspondence036.CollectionsFocus
example {A : Type} (order : core.cmp.Ord String) (allocator : core.alloc.AllocatorClone A) :
    (do let (_, backward) ← alloc.collections.btree.map.entry.Entry.impl.or_default order
          ⟨.ok transition_study036.serde_json.value.Value.Null⟩ allocator
          (.Vacant ⟨.cons "a" .Null .nil, "b", .cons "c" .Null .nil⟩);
        .ok (keys (render (backward .Null)))) = .ok ["a", "b", "c"] := by
  simp [alloc.collections.btree.map.entry.Entry.impl.or_default, render, decode,
    Correspondence036.CollectionsGap.toMap, append, keys]
"""
    point = "Correspondence036.CollectionsGap.captureM corecmpOrdInst.cmp key map.data"
    if implementations.count(point) != 1:
        raise ValueError("NativeEntryOperationsForwardMutationPoint")
    wrong_forward = implementations.replace(point, "Correspondence036.CollectionsGap.captureM (fun _ _ => .ok .eq) key map.data") + """
example {A : Type} (order : core.cmp.Ord String) (allocator : core.alloc.AllocatorClone A) :
    alloc.collections.btree.map.BTreeMap.impl.entry allocator
      { order with cmp := fun _ _ => .fail .undef }
      ⟨.cons "key" transition_study036.serde_json.value.Value.Null .nil⟩ "other" =
        .fail .undef := by
  simp [alloc.collections.btree.map.BTreeMap.impl.entry,
    Correspondence036.CollectionsGap.captureM, Correspondence036.NativeEntryOperations.encode]
"""
    return [("wrong-native-entry-default", wrong_default, "normalized-False"), ("wrong-native-entry-gap", wrong_gap, "normalized-False"), ("wrong-native-entry-forward", wrong_forward, "normalized-False")]
