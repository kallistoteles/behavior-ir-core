"""Canonical/view row agreement under explicitly candidate dependencies."""
from pathlib import PurePosixPath
from native_projection_laws_v2 import SOURCE_SHA256


def roots():
    data = "Correspondence036.CollectionsData"
    value = "transition_study036.serde_json.value.Value"
    rows = f"{data}.Map String {value}"
    ok = "Aeneas.Std.Result.ok"
    read = "Str.Insts.Serde_jsonValueIndexIndex.index_into"
    to_str = "Aeneas.Std.toStr"
    cmp = "Correspondence036.NativeKeyOrder.cmpString"
    insert = "Correspondence036.NativeJsonMapOperations.orderedInsert"

    def put(basis, key, replacement):
        return f"({insert} {cmp} {key} {replacement} {basis}).2"

    fields = put(put(f"{data}.Map.nil", '"phase"', f"({value}.String phase)"), '"owner"', f"({value}.String owner)")
    updated = put("children", "id", f"({value}.Object ⟨{fields}⟩)")
    arguments = f"(raw : {value}) (parents children : {rows}) (id owner phase : String)"
    premises = " ".join(
        f"({field}Read : {read} ({to_str} \"{field}\") raw = {ok} (some ({value}.String {field})))"
        for field in ("id", "phase", "owner")
    ) + " (idBound : (Correspondence036.NativeKeyOrder.ownedBytes id).length ≤ Aeneas.Std.Usize.max)"
    canonical = 'transition_study036.reference.state_fact_row (transition_study036.behavior_store.documents.SeedEntity.mk "Child" raw) ⟨parents⟩ ⟨children⟩'
    canonical_result = f"{ok} (Aeneas.Std.core.result.Result.Ok (), serde_json.map.Map.mk parents, serde_json.map.Map.mk updated)"
    view = "transition_study036.views.Views.impl.materialize_loop1.body ⟨Correspondence036.CollectionsData.Map.nil⟩ ⟨(id, transition_study036.views.ChildRow.mk owner phase) :: tail⟩ ⟨children⟩"
    view_result = f"{ok} (Aeneas.Std.ControlFlow.cont (alloc.collections.btree.map.Iter.mk tail, serde_json.map.Map.mk updated))"
    specifications = [
        ("canonical_child", f"∀ {arguments} {premises}, let updated := {updated}; {canonical} = {canonical_result}"),
        ("canonical_view_agreement", f"∀ {arguments} (tail : List (String × transition_study036.views.ChildRow)) {premises}, let updated := {updated}; {canonical} = {canonical_result} ∧ {view} = {view_result}"),
    ]
    return [dict(id="actual.canonical." + name, declaration="Correspondence036.NativeCanonicalChild." + name, expected_type=expected)
            for name, expected in specifications]


def prepare(refs, reference, source_dir, component):
    def guard(ref):
        if isinstance(ref, dict) and PurePosixPath(ref.get("path", "")).name in {
            "parameters.bin", "compression_prover_key.bin"
        }:
            raise ValueError("ProtectedArtifact")

    guard(reference)
    selection = refs.read(reference)
    if (
        set(selection) != {"format", "scope", "model_ref", "source_sha256", "native_proof", "feature_complete"}
        or selection["format"] != "core036.native-canonical-child-laws.v2"
        or selection["scope"] != "actual_component_under_candidate_dependencies_not_native_admission"
        or selection["source_sha256"] != SOURCE_SHA256
        or component.get("source_sha256") != SOURCE_SHA256
        or selection["native_proof"] != "unestablished"
        or selection["feature_complete"] is not False
    ):
        raise ValueError("NativeCanonicalChildSelection")
    guard(selection["model_ref"])
    source = refs.verify(selection["model_ref"])
    if source != source_dir / "NativeCanonicalChild.lean":
        raise ValueError("NativeCanonicalChildSourcePath")
    raw = source.read_bytes()
    if len(raw) > 64 * 1024 or raw.count(b"public import NativeProjectionLaws\n") != 1:
        raise ValueError("NativeCanonicalChildImportOrBound")
    return source, raw, roots()
