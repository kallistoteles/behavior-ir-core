"""Actual conserved component laws under candidate dependency interpretations."""
from pathlib import PurePosixPath

SOURCE_SHA256 = "867ac45f43f469cedf534a9e5008c6e383681dbd090f9fd74328cb924d36c5d3"


def roots():
    data = "Correspondence036.CollectionsData"
    value = "transition_study036.serde_json.value.Value"
    row = "transition_study036.views.ChildRow"
    api = "transition_study036.views.Views.impl.materialize_loop1.body"
    result = "Aeneas.Std.Result.ok"
    control = "Aeneas.Std.ControlFlow"
    ns = "Correspondence036.NativeProjectionLaws"
    rows = f"{data}.Map String {value}"

    def put(basis, key, replacement):
        return f"(Correspondence036.NativeJsonMapOperations.orderedInsert Correspondence036.NativeKeyOrder.cmpString {key} {replacement} {basis}).2"

    entity = put(
        put(put(f"{data}.Map.nil", '"id"', f"({value}.String idValue)"), '"owner"', f"({value}.String ownerValue)"),
        '"phase"', f"({value}.String phaseValue)",
    )
    fields = put(put("basis", '"phase"', f"({value}.String row.phase)"), '"owner"', f"({value}.String row.owner)")
    children = put("children", "id", f"({value}.Object ⟨{fields}⟩)")
    specifications = [
        (
            "child_entity_value",
            f"∀ (id owner phase : Aeneas.Std.Str) (idValue ownerValue phaseValue : String) (idDecoded : Correspondence036.NativeStringCodec.decode id = some idValue) (ownerDecoded : Correspondence036.NativeStringCodec.decode owner = some ownerValue) (phaseDecoded : Correspondence036.NativeStringCodec.decode phase = some phaseValue), transition_study036.views.child_entity_value id owner phase = {result} ({value}.Object ⟨{entity}⟩)",
        ),
        (
            "materialize_empty",
            f"∀ (basis children : {rows}), {api} ⟨basis⟩ ⟨[]⟩ ⟨children⟩ = {result} ({control}.done (serde_json.map.Map.mk children))",
        ),
        (
            "materialize_step",
            f"∀ (basis children : {rows}) (id : String) (row : {row}) (tail : List (String × {row})), {api} ⟨basis⟩ ⟨(id, row) :: tail⟩ ⟨children⟩ = {result} ({control}.cont (alloc.collections.btree.map.Iter.mk tail, serde_json.map.Map.mk {children}))",
        ),
    ]
    return [dict(id="actual.component." + name, declaration=ns + "." + name, expected_type=expected)
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
        or selection["format"] != "core036.native-projection-laws.v2"
        or selection["scope"] != "actual_component_under_candidate_dependencies_not_native_admission"
        or selection["source_sha256"] != SOURCE_SHA256
        or component.get("source_sha256") != SOURCE_SHA256
        or selection["native_proof"] != "unestablished"
        or selection["feature_complete"] is not False
    ):
        raise ValueError("NativeProjectionLawsSelection")
    guard(selection["model_ref"])
    source = refs.verify(selection["model_ref"])
    if source != source_dir / "NativeProjectionLaws.lean":
        raise ValueError("NativeProjectionLawsSourcePath")
    raw = source.read_bytes()
    if len(raw) > 64 * 1024 or raw.count(b"public import NativeProjectionComponents\n") != 1:
        raise ValueError("NativeProjectionLawsImportOrBound")
    return source, raw, roots()
