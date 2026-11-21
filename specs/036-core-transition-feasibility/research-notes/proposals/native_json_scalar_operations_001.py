"""Three source-facing scalar JSON candidates; no native primitive admission."""
from pathlib import PurePosixPath
from template_function_bindings_v2 import bind_functions

FUNCTIONS = (
    "alloc.string.String.Insts.CoreCloneClone.clone",
    "serde_json.value.Value.Insts.CoreCloneClone.clone",
    "serde_json.value.Value.impl.as_str",
)


def roots():
    specifications = [('string_clone', '∀ (value : String), alloc.string.String.Insts.CoreCloneClone.clone value = Aeneas.Std.Result.ok value'), ('value_clone', '∀ (value : transition_study036.serde_json.value.Value), serde_json.value.Value.Insts.CoreCloneClone.clone value = Aeneas.Std.Result.ok value'), ('string_clone_bytes', '∀ (value : String), (do let copied ← alloc.string.String.Insts.CoreCloneClone.clone value; Aeneas.Std.Result.ok (Correspondence036.NativeKeyOrder.ownedBytes copied)) = Aeneas.Std.Result.ok (Correspondence036.NativeKeyOrder.ownedBytes value)'), ('as_str_string', '∀ (value : String) (bound : (Correspondence036.NativeKeyOrder.ownedBytes value).length ≤ Aeneas.Std.Usize.max), serde_json.value.Value.impl.as_str (transition_study036.serde_json.value.Value.String value) = Aeneas.Std.Result.ok (some (Correspondence036.NativeKeyOrder.borrow value bound))'), ('as_str_null', 'serde_json.value.Value.impl.as_str transition_study036.serde_json.value.Value.Null = Aeneas.Std.Result.ok none'), ('as_str_bool', '∀ (value : Bool), serde_json.value.Value.impl.as_str (transition_study036.serde_json.value.Value.Bool value) = Aeneas.Std.Result.ok none'), ('as_str_number', '∀ (value : transition_study036.serde_json.number.Number), serde_json.value.Value.impl.as_str (transition_study036.serde_json.value.Value.Number value) = Aeneas.Std.Result.ok none'), ('as_str_array', '∀ (value : Aeneas.Std.alloc.vec.Vec transition_study036.serde_json.value.Value), serde_json.value.Value.impl.as_str (transition_study036.serde_json.value.Value.Array value) = Aeneas.Std.Result.ok none'), ('as_str_object', '∀ (value : serde_json.map.Map String transition_study036.serde_json.value.Value), serde_json.value.Value.impl.as_str (transition_study036.serde_json.value.Value.Object value) = Aeneas.Std.Result.ok none')]
    return [dict(id="native.json.scalar."+name, declaration="Correspondence036.NativeJsonScalarOperations."+name, expected_type=expected) for name,expected in specifications]


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
        or selection["format"] != "core036.native-json-scalar-operations.v2"
    ):
        raise ValueError("NativeJsonScalarOperationsSelection")
    for key in ("model_ref", "contract_ref"):
        ref = selection[key]
        if isinstance(ref, dict) and PurePosixPath(ref.get("path", "")).name in {
            "parameters.bin",
            "compression_prover_key.bin",
        }:
            raise ValueError("ProtectedArtifact")
    source = refs.verify(selection["model_ref"])
    if source != source_dir / "NativeJsonScalarOperations.lean":
        raise ValueError("NativeJsonScalarOperationsSourcePath")
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
        or contract["format"] != "core036.native-json-scalar-operations-contract.v2"
        or contract["scope"] != "exact_signature_candidate_api_not_native_admission"
        or contract["template_sha256"] != template_sha256
        or contract["native_proof"] != "unestablished"
        or contract["feature_complete"] is not False
    ):
        raise ValueError("NativeJsonScalarOperationsContract")
    model = source.read_text()
    external = bind_functions(external, model, contract["bindings"], FUNCTIONS)
    marker = "public import NativeJsonIterators\n"
    if external.count(marker) != 1:
        raise ValueError("NativeJsonScalarOperationsImport")
    external = external.replace(
        marker, marker + "public import NativeJsonScalarOperations\n"
    )
    return source, model.encode(), external, roots(), controls(model)



def controls(model):
    boundary="\nnamespace Correspondence036.NativeJsonScalarOperations\n"
    if model.count(boundary) != 1:
        raise ValueError("NativeJsonScalarProofBoundary")
    implementations=model.split(boundary)[0]
    mutated=[]
    for name,old,new,label in [
        (FUNCTIONS[0], "fun value => ok value", 'fun value => ok ""', "wrong-native-string-clone"),
        (FUNCTIONS[1], "fun value => ok value", "fun value => ok .Null", "wrong-native-value-clone"),
        (FUNCTIONS[2], "ok (some borrowed)", "ok none", "wrong-native-json-as-str"),
    ]:
        start=implementations.index(" def "+name)
        end=implementations.index("\n\n",start)
        block=implementations[start:end]
        if block.count(old)!=1:
            raise ValueError("NativeJsonScalarMutationPoint")
        mutant=implementations[:start]+block.replace(old,new)+implementations[end:]
        if name==FUNCTIONS[0]:
            goal="""
example : alloc.string.String.Insts.CoreCloneClone.clone "kept" = .ok "kept" := by
  simp [alloc.string.String.Insts.CoreCloneClone.clone]
"""
        else:
            goal="""
example (bound : (Correspondence036.NativeKeyOrder.ownedBytes "kept").length ≤ Usize.max) :
    (do let copied ← serde_json.value.Value.Insts.CoreCloneClone.clone
          (transition_study036.serde_json.value.Value.String "kept")
        serde_json.value.Value.impl.as_str copied) =
      .ok (some (Correspondence036.NativeKeyOrder.borrow "kept" bound)) := by
  simp [serde_json.value.Value.Insts.CoreCloneClone.clone,
    serde_json.value.Value.impl.as_str,
    Correspondence036.NativeStringCodec.borrow_result_valid "kept" bound]
"""
        mutated.append((label,mutant+goal,"normalized-False"))
    return mutated
