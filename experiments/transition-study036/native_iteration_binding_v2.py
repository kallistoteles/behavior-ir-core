"""Prospective guarded exact-signature iterator definitions; no primitive admission."""

import hashlib
import re
from pathlib import PurePosixPath


FUNCTIONS = (
    "alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next",
    "SharedABTreeMap.Insts.CoreIterTraitsCollectIntoIteratorPairSharedAKSharedAVIter.into_iter",
    "alloc.collections.btree.map.BTreeMap.Insts.CoreIterTraitsCollectIntoIteratorPairIntoIter.into_iter",
    "alloc.collections.btree.map.IntoIter.Insts.CoreIterTraitsIteratorIteratorPair.next",
    "alloc.collections.btree.map.Values.Insts.CoreIterTraitsIteratorIteratorSharedAV.next",
    "alloc.collections.btree.map.BTreeMap.impl.values",
    "serde_json.map.MapStringValue.impl.keys",
    "SharedAMapStringValue.Insts.CoreIterTraitsCollectIntoIteratorPairSharedAStringSharedAValueIter.into_iter",
    "serde_json.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAStringSharedAValue.next",
    "serde_json.map.Keys.Insts.CoreIterTraitsIteratorIteratorSharedAString.next",
)


def expected_roots():
    n = "Correspondence036.NativeCollectionIteration"
    b = "alloc.collections.btree.map"
    a = "Aeneas.Std."
    ac = "transition_study036.core.alloc.AllocatorClone"
    (
        shared,
        shared_init,
        owned_init,
        owned,
        values,
        values_init,
        keys_init,
        json_init,
        json_next,
        keys_next,
    ) = FUNCTIONS
    specs = [
        (
            "shared_next",
            f"∀ {{K V : Type}} (rows : List (K × V)), {shared} (⟨rows⟩ : {b}.Iter K V) = {a}Result.ok (rows.head?, ⟨rows.tail⟩)",
        ),
        (
            "owned_next",
            f"∀ {{K V A : Type}} (allocator : {ac} A) (rows : List (K × V)), {owned} allocator (⟨rows⟩ : {b}.IntoIter K V A) = {a}Result.ok (rows.head?, ⟨rows.tail⟩)",
        ),
        (
            "values_next",
            f"∀ {{K V : Type}} (rows : List (K × V)), {values} (⟨rows⟩ : {b}.Values K V) = {a}Result.ok (rows.head?.map Prod.snd, ⟨rows.tail⟩)",
        ),
        (
            "json_next",
            f"∀ (rows : List (String × {n}.NativeValue)), {json_next} (⟨rows⟩ : serde_json.map.Iter) = {a}Result.ok (rows.head?, ⟨rows.tail⟩)",
        ),
        (
            "keys_next",
            f"∀ (rows : List String), {keys_next} (⟨rows⟩ : serde_json.map.Keys) = {a}Result.ok (rows.head?, ⟨rows.tail⟩)",
        ),
    ]
    for name, function, cursor in [
        ("shared_init", shared_init, f"{b}.Iter K V"),
        ("owned_init", owned_init, f"{b}.IntoIter K V A"),
        ("values_init", values_init, f"{b}.Values K V"),
    ]:
        specs.append(
            (
                name,
                f"∀ {{K V A : Type}} (allocator : {ac} A) (map : {b}.BTreeMap K V A), {function} allocator map = {a}Result.ok (⟨Correspondence036.CollectionsOrder.entries map.data⟩ : {cursor})",
            )
        )
    specs.extend(
        [
            (
                "json_init",
                f"∀ (map : serde_json.map.Map String {n}.NativeValue), {json_init} map = {a}Result.ok ⟨Correspondence036.CollectionsOrder.entries map.data⟩",
            ),
            (
                "keys_init",
                f"∀ (map : serde_json.map.Map String {n}.NativeValue), {keys_init} map = {a}Result.ok ⟨(Correspondence036.CollectionsOrder.entries map.data).map Prod.fst⟩",
            ),
        ]
    )
    for name, fn, cursor, item, binders, projected in [
        ("consume_shared", shared, f"{b}.Iter K V", "K × V", "{K V : Type}", False),
        (
            "consume_owned",
            owned + " allocator",
            f"{b}.IntoIter K V A",
            "K × V",
            f"{{K V A : Type}} (allocator : {ac} A)",
            False,
        ),
        ("consume_values", values, f"{b}.Values K V", "K × V", "{K V : Type}", True),
        (
            "consume_json",
            json_next,
            "serde_json.map.Iter",
            f"String × {n}.NativeValue",
            "",
            False,
        ),
        ("consume_keys", keys_next, "serde_json.map.Keys", "String", "", False),
    ]:
        taken = "(rows.take count).map Prod.snd" if projected else "rows.take count"
        specs.append(
            (
                name,
                f"∀ {binders} (count : Nat) (rows : List ({item})), {n}.consume ({fn}) count (⟨rows⟩ : {cursor}) = {a}Result.ok ({taken}, ⟨rows.drop count⟩)",
            )
        )
    specs.extend(
        [
            (
                "consume_all_shared",
                f"∀ {{K V : Type}} (rows : List (K × V)), {n}.consume {shared} rows.length (⟨rows⟩ : {b}.Iter K V) = {a}Result.ok (rows, ⟨[]⟩)",
            ),
            (
                "exhausted_shared",
                f"∀ {{K V : Type}} (count : Nat), {n}.consume {shared} count (⟨[]⟩ : {b}.Iter K V) = {a}Result.ok ([], ⟨[]⟩)",
            ),
        ]
    )
    return [
        dict(
            id="native.collection.iteration." + name,
            declaration=n + "." + name,
            expected_type=expected,
        )
        for name, expected in specs
    ]


def guard_reference(reference):
    if (
        isinstance(reference, dict)
        and isinstance(reference.get("path"), str)
        and PurePosixPath(reference["path"]).name
        in {"parameters.bin", "compression_prover_key.bin"}
    ):
        raise ValueError("ProtectedArtifact")


def prepare(refs, reference, external, template_sha256, source_dir):
    guard_reference(reference)
    selection = refs.read(reference)
    names = {
        "model_ref": "NativeCollectionIteration.lean",
        "invariant_ref": "CollectionsInvariant.lean",
        "order_ref": "CollectionsOrder.lean",
    }
    if (
        set(selection) != {"format", "contract_ref", *names}
        or selection["format"] != "core036.native-collection-iteration.v2"
    ):
        raise ValueError("NativeIterationSelection")
    for key in (*names, "contract_ref"):
        guard_reference(selection[key])
    paths = {key: refs.verify(selection[key]) for key in names}
    if any(paths[key] != source_dir / name for key, name in names.items()):
        raise ValueError("NativeIterationSourcePath")
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
        or contract["format"] != "core036.native-iteration-contract.v2"
        or contract["scope"] != "exact_signature_candidate_api_not_native_admission"
        or contract["template_sha256"] != template_sha256
        or contract["native_proof"] != "unestablished"
        or contract["feature_complete"] is not False
        or not isinstance(contract["bindings"], list)
        or len(contract["bindings"]) != len(FUNCTIONS)
        or {row.get("lean") for row in contract["bindings"]} != set(FUNCTIONS)
    ):
        raise ValueError("NativeIterationContract")
    model = paths["model_ref"].read_text()
    original_names = set(
        re.findall(r"^@\[rust_fun [^\n]+ axiom ([^ (\n:]+)", external, re.M)
    )
    defined = re.findall(
        r'^@\[rust_fun "([^"]+)"\] def ([^ (\n:]+)([^\n]+) :=$', model, re.M
    )
    if len(defined) != len(FUNCTIONS) or {row[1] for row in defined} != set(FUNCTIONS):
        raise ValueError("NativeIterationModelInventory")
    by_name = {name: (rust, signature) for rust, name, signature in defined}
    for row in contract["bindings"]:
        if set(row) != {"rust", "lean", "block_bytes", "block_sha256"}:
            raise ValueError("NativeIterationBindingFields")
        name = row["lean"]
        pattern = (
            r'^@\[rust_fun "'
            + re.escape(row["rust"])
            + r'"\] axiom '
            + re.escape(name)
            + r"([^\n]+)$"
        )
        matches = list(re.finditer(pattern, external, re.M))
        if len(matches) != 1:
            raise ValueError("NativeIterationBindingMissing")
        match = matches[0]
        start, end = (
            external.rfind("/-- [", 0, match.start()),
            external.index("\n\n", match.end()) + 2,
        )
        block = external[start:end]
        if (
            start < 0
            or block.count("axiom ") != 1
            or type(row["block_bytes"]) is not int
            or row["block_bytes"] != len(block.encode())
            or hashlib.sha256(block.encode()).hexdigest() != row["block_sha256"]
            or by_name[name] != (row["rust"], match.group(1))
        ):
            raise ValueError("NativeIterationExactSignatureOrBlock")
        external = external[:start] + external[end:]
    remaining = set(
        re.findall(r"^@\[rust_fun [^\n]+ axiom ([^ (\n:]+)", external, re.M)
    )
    if remaining & set(FUNCTIONS) or remaining | set(FUNCTIONS) != original_names:
        raise ValueError("NativeIterationExternalNodeLoss")
    marker = "public import NativeJsonIterators\n"
    if external.count(marker) != 1:
        raise ValueError("NativeIterationExternalImport")
    external = external.replace(
        marker, marker + "public import NativeCollectionIteration\n"
    )
    modules = {
        names[key].removesuffix(".lean"): paths[key].read_bytes()
        for key in ("invariant_ref", "order_ref", "model_ref")
    }
    controls = []
    boundary = "\nnamespace Correspondence036.NativeCollectionIteration\n"
    if model.count(boundary) != 1:
        raise ValueError("NativeIterationProofBoundary")
    implementations = model.split(boundary)[0]
    name = FUNCTIONS[0]
    start = implementations.index(" def " + name)
    end = implementations.index("\n\n", start)
    block = implementations[start:end]
    old = "| row :: tail => .ok (some row, ⟨tail⟩)"
    if block.count(old) != 1:
        raise ValueError("NativeIterationMutationPoint")
    for label, changed in [
        ("iterator-omission", "| row :: tail => .ok (none, ⟨tail⟩)"),
        ("iterator-nonadvance", "| row :: tail => .ok (some row, ⟨row :: tail⟩)"),
    ]:
        mutant = (
            implementations[:start]
            + block.replace(old, changed)
            + implementations[end:]
        )
        mutant += (
            "\nexample : "
            + name
            + ' (⟨[("a", transition_study036.serde_json.value.Value.Null)]⟩ : alloc.collections.btree.map.Iter String transition_study036.serde_json.value.Value) = .ok (some ("a", transition_study036.serde_json.value.Value.Null), ⟨[]⟩) := by\n'
            "  simp [" + name + "]\n"
        )
        controls.append((label, mutant, "normalized-False"))
    return paths, modules, external, expected_roots(), controls
