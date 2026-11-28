"""Conserve actual585 whole Views and bind explicit candidate primitive APIs.

Unbound external nodes remain present. Compilation or a helper theorem cannot
admit the runtime interpretations or establish full native correspondence.
"""

import hashlib
import re

PREFIX = "ViewsCanonicalNames"
GENERATED = {
    "Types.lean": "1a971fd1aa3010be64044056d37d8c728f4918bec697c8ec45b96f8c2a4dfabd",
    "Funs.lean": "cc2f12e4a7de12b60e1010211327548aeee6e43ab4335e08a838e84e09fec63f",
    "TypesExternal_Template.lean": "a79e0bc9424f5d748ba8d76c678ef1366e5221525db8ee6f6e68c54b3af47cd5",
    "FunsExternal_Template.lean": "5b209d674fa84097c51663fe48b8421ce281bd86b71915d1f507d944394e7970",
}
SOURCES = (
    "CollectionsData",
    "CollectionsInvariant",
    "CollectionsOrder",
    "NativeCollectionsData",
    "NativeJsonIterators",
    "NativeCollectionIteration",
    "NativeKeyOrder",
    "NativeStringCodec",
    "NativeStringOperations",
    "NativeWholeViewsOperations",
    "RuntimeNames",
    "NativeProjectionLaws",
    "NativeMaterializeLoop",
    "NativeWholeViewsMaterialize",
)
TYPE_BINDINGS = {
    "alloc.collections.btree.map.BTreeMap": 3,
    "alloc.collections.btree.map.Iter": 2,
    "alloc.collections.btree.map.IntoIter": 3,
    "alloc.collections.btree.set.BTreeSet": 2,
    "alloc.collections.btree.set.Iter": 1,
    "serde_json.map.Map": 2,
}


def _blocks(source):
    return list(re.finditer(r"^/-- \[[\s\S]*?(?=^/-- \[|\Z)", source, re.M))


def _foreign_functions(source, kind):
    end = r"(?=\s*:=)" if kind == "def" else r"(?=\n\n|\Z)"
    pattern = (
        r'@\[\s*(?:trait_default\s*,\s*)?rust_fun\s+"([^"\n]+)"\s*\]\s*'
        + kind
        + r"\s+([A-Za-z_][A-Za-z0-9_.]*)([\s\S]*?)"
        + end
    )
    result = {}
    for match in re.finditer(pattern, source):
        rust, name, signature = match.groups()
        if name in result:
            raise ValueError("WholeViewsDuplicatePrimitive")
        result[name] = (rust, re.sub(r"\s+", "", signature), match)
    return result


def _bind_functions(external, models):
    original = _foreign_functions(external, "axiom")
    all_axioms = set(re.findall(r"(?m)^\s*axiom\s+([A-Za-z_][A-Za-z0-9_.]*)", external))
    if set(original) != all_axioms:
        raise ValueError("WholeViewsUnindexedExternalNode")
    definitions = {}
    for source in models:
        for name, value in _foreign_functions(source, "def").items():
            if name in definitions:
                raise ValueError("WholeViewsDuplicatePrimitive")
            definitions[name] = value
    bound = set(original) & set(definitions)
    if not bound or "serde_json.map.MapStringValue.impl.insert" not in bound:
        raise ValueError("WholeViewsPrimitiveInventory")
    removed = []
    bindings = []
    for name in sorted(bound):
        rust, signature, match = original[name]
        if definitions[name][:2] != (rust, signature):
            raise ValueError("WholeViewsPrimitiveSignature:" + name)
        start = external.rfind("/-- [", 0, match.start())
        end = match.end() + (
            2 if external[match.end() : match.end() + 2] == "\n\n" else 0
        )
        block = external[start:end]
        if (
            start < 0
            or len(re.findall(r"\baxiom\s+", block)) != 1
            or block.count("rust_fun") != 1
        ):
            raise ValueError("WholeViewsPrimitiveBlock")
        removed.append((start, end))
        bindings.append(
            {
                "lean": name,
                "rust": rust,
                "block_sha256": hashlib.sha256(block.encode()).hexdigest(),
                "status": "candidate_interpretation_not_native_admission",
            }
        )
    removed.sort()
    if any(left[1] > right[0] for left, right in zip(removed, removed[1:])):
        raise ValueError("WholeViewsOverlappingPrimitiveBlocks")
    remaining = external
    for start, end in reversed(removed):
        remaining = remaining[:start] + remaining[end:]
    left = _foreign_functions(remaining, "axiom")
    if set(left) | bound != set(original) or set(left) & bound:
        raise ValueError("WholeViewsExternalNodeLoss")
    return remaining, bindings, sorted(left)


def _types(external):
    removed, seen = [], set()
    for block in _blocks(external):
        match = re.search(
            r"\baxiom\s+([A-Za-z_][A-Za-z0-9_.]*)([\s\S]*)", block.group()
        )
        if match is None or match.group(1) not in TYPE_BINDINGS:
            continue
        name = match.group(1)
        if (
            name in seen
            or len(re.findall(r"\(\s*[A-Z]\s*:\s*Type\s*_\s*\)", match.group(2)))
            != TYPE_BINDINGS[name]
        ):
            raise ValueError("WholeViewsCollectionTypeBinding")
        seen.add(name)
        removed.append((block.start(), block.end()))
    if seen != set(TYPE_BINDINGS):
        raise ValueError("WholeViewsCollectionTypeInventory")
    for start, end in reversed(removed):
        external = external[:start] + external[end:]
    if external.count("public import Aeneas\n") != 1:
        raise ValueError("WholeViewsTypeHeader")
    external = external.replace(
        "public import Aeneas\n",
        "public import Aeneas\npublic import NativeCollectionsData\npublic import RuntimeNames\n",
        1,
    )
    external += """
/- Candidate set cursor only; no native ordering/heap adequacy is admitted. -/
@[rust_type "alloc::collections::btree::set::Iter" (body := .opaque)]
structure alloc.collections.btree.set.Iter (T : Type) where
  remaining : List T
"""
    return external


def _validate_local_imports(files):
    available = set()
    for name, raw in files.items():
        for imported in re.findall(
            rb"(?m)^(?:public )?import (?:all )?([A-Za-z_][A-Za-z0-9_.]*)", raw
        ):
            imported = imported.decode()
            if (
                imported.split(".")[0] not in {"Aeneas", "Init", "Std", "Lean"}
                and imported not in available
            ):
                raise ValueError("WholeViewsLocalImport:" + name + ":" + imported)
        available.add(name)


def build_project(generated, sources):
    if not isinstance(generated, dict) or set(generated) != set(GENERATED):
        raise ValueError("WholeViewsGeneratedInventory")
    for name, expected in GENERATED.items():
        raw = generated[name]
        if (
            type(raw) is not bytes
            or len(raw) > 4 * 1024**2
            or hashlib.sha256(raw).hexdigest() != expected
        ):
            raise ValueError("WholeViewsGeneratedSource:" + name)
    if not isinstance(sources, dict) or set(sources) != set(SOURCES):
        raise ValueError("WholeViewsModelInventory")
    if any(type(raw) is not bytes or len(raw) > 1024**2 for raw in sources.values()):
        raise ValueError("WholeViewsModelSourceBound")
    for raw in sources.values():
        if re.search(rb"(?m)^\s*(?:axiom|sorry)\b", raw):
            raise ValueError("WholeViewsUnprovedModelDefinition")
    models = [
        sources[name].decode()
        for name in (
            "NativeStringOperations",
            "NativeCollectionIteration",
            "NativeWholeViewsOperations",
        )
    ]
    functions, bindings, unbound = _bind_functions(
        generated["FunsExternal_Template.lean"].decode(), models
    )
    if functions.count("public import Aeneas\n") != 1:
        raise ValueError("WholeViewsFunctionHeader")
    functions = functions.replace(
        "public import Aeneas\n",
        "public import Aeneas\npublic import NativeStringOperations\npublic import NativeCollectionIteration\npublic import NativeJsonMapOperations\n",
        1,
    )
    files = {
        "RuntimeNames": sources["RuntimeNames"],
        "CollectionsData": sources["CollectionsData"],
        "CollectionsInvariant": sources["CollectionsInvariant"],
        "NativeCollectionsData": sources["NativeCollectionsData"],
        PREFIX + ".TypesExternal": _types(
            generated["TypesExternal_Template.lean"].decode()
        ).encode(),
        PREFIX + ".Types": generated["Types.lean"],
        "NativeJsonIterators": sources["NativeJsonIterators"].replace(
            b"CORE036_MODULE_PREFIX.Types", (PREFIX + ".Types").encode()
        ),
        "CollectionsOrder": sources["CollectionsOrder"],
        "NativeCollectionIteration": sources["NativeCollectionIteration"],
        "NativeKeyOrder": sources["NativeKeyOrder"],
        "NativeStringCodec": sources["NativeStringCodec"],
        "NativeStringOperations": sources["NativeStringOperations"],
        "NativeJsonMapOperations": sources["NativeWholeViewsOperations"],
        PREFIX + ".FunsExternal": functions.encode(),
        PREFIX + ".Funs": generated["Funs.lean"],
        "NativeProjectionComponents": (
            "module\npublic import " + PREFIX + ".Funs\n@[expose] public section\n"
        ).encode(),
        "NativeProjectionLaws": sources["NativeProjectionLaws"],
        "NativeMaterializeLoop": sources["NativeMaterializeLoop"],
        "NativeWholeViewsMaterialize": sources["NativeWholeViewsMaterialize"],
        "ProofRoot": b"module\npublic import NativeWholeViewsMaterialize\n@[expose] public section\n",
    }
    _validate_local_imports(files)
    return files, {
        "scope": "complete generated materialization under candidate primitive interpretations only",
        "native_proof": "unestablished",
        "bindings": bindings,
        "unbound_external_nodes": unbound,
        "generated_types_and_functions_unchanged": True,
        "child_loop_proof_reused_unchanged": True,
    }


def roots():
    ns = "Correspondence036.NativeWholeViewsMaterialize"
    view = "transition_study036.views.Views"
    actual = "transition_study036.views.Views.impl.materialize"
    rows = "Correspondence036.CollectionsData.Map String transition_study036.serde_json.value.Value"
    return [
        {
            "id": "whole_views.parent_loop_fold",
            "declaration": ns + ".parent_loop_fold",
            "expected_type": f"∀ (rows : List (String × String)) (initial : {rows}), transition_study036.views.Views.impl.materialize_loop0 ⟨rows⟩ ⟨initial⟩ = Aeneas.Std.Result.ok (serde_json.map.Map.mk ({ns}.parentFold rows initial))",
        },
        {
            "id": "whole_views.materialize_exact",
            "declaration": ns + ".materialize_exact",
            "expected_type": f"∀ (view : {view}), {actual} view = Aeneas.Std.Result.ok ({ns}.materialized (Correspondence036.CollectionsOrder.entries view.parents.data) (Correspondence036.CollectionsOrder.entries view.children.data))",
        },
        {
            "id": "whole_views.materialize_frame",
            "declaration": ns + ".materialize_frame",
            "expected_type": f"∀ (left right : {view}) (parents : left.parents = right.parents) (children : left.children = right.children), {actual} left = {actual} right",
        },
    ]
