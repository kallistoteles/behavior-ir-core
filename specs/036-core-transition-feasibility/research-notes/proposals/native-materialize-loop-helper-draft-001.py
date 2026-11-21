"""Actual child-map loop under candidate dependency interpretations."""
from pathlib import PurePosixPath
from native_projection_laws_v2 import SOURCE_SHA256

LOOP = "views.Views.impl.materialize_loop1"


def roots():
    data = "Correspondence036.CollectionsData"
    value = "transition_study036.serde_json.value.Value"
    row = "transition_study036.views.ChildRow"
    rows = f"{data}.Map String {value}"
    insert = "Correspondence036.NativeJsonMapOperations.orderedInsert"
    cmp = "Correspondence036.NativeKeyOrder.cmpString"
    phase = f'({insert} {cmp} "phase" ({value}.String entry.2.phase) basis).2'
    fields = f'({insert} {cmp} "owner" ({value}.String entry.2.owner) {phase}).2'
    update = f'({insert} {cmp} entry.1 ({value}.Object (serde_json.map.Map.mk {fields})) acc).2'
    fold = f"List.foldl (fun (acc : {rows}) (entry : String × {row}) => {update}) children entries"
    expected = f"∀ (basis children : {rows}) (entries : List (String × {row})), transition_study036.{LOOP} (serde_json.map.Map.mk basis) (alloc.collections.btree.map.Iter.mk entries) (serde_json.map.Map.mk children) = Aeneas.Std.Result.ok (serde_json.map.Map.mk ({fold}))"
    return [dict(id="actual.component.materialize_loop1_fold", declaration="Correspondence036.NativeMaterializeLoop.materialize_loop1_fold", expected_type=expected)]


def prepare(refs, reference, source_dir, component):
    def guard(ref):
        if isinstance(ref, dict) and PurePosixPath(ref.get("path", "")).name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
    guard(reference)
    selected = refs.read(reference)
    if (set(selected) != {"format", "scope", "model_ref", "source_sha256", "native_proof", "feature_complete"}
        or selected["format"] != "core036.native-materialize-loop-laws.v2"
        or selected["scope"] != "actual_component_under_candidate_dependencies_not_native_admission"
        or selected["source_sha256"] != SOURCE_SHA256
        or component.get("source_sha256") != SOURCE_SHA256
        or LOOP not in {row.get("name") for row in component.get("declarations", [])}
        or selected["native_proof"] != "unestablished" or selected["feature_complete"] is not False):
        raise ValueError("NativeMaterializeLoopSelection")
    guard(selected["model_ref"])
    source = refs.verify(selected["model_ref"])
    if source != source_dir / "NativeMaterializeLoop.lean":
        raise ValueError("NativeMaterializeLoopSourcePath")
    raw = source.read_bytes()
    if len(raw) > 64 * 1024 or raw.count(b"public import NativeProjectionLaws\n") != 1:
        raise ValueError("NativeMaterializeLoopImportOrBound")
    return source, raw, roots()
