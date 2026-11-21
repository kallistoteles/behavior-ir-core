"""Inventory actual source obligations; an inventory establishes no native proof."""

import argparse
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from records import MANIFEST

E = Path(__file__).resolve().parent
R = E.parents[1]
BRIDGE_MODULES = {
    "B01": ["eligibility", "ground"],
    "B02": ["reference", "views", "acquire"],
    "B03": ["ground", "acquire", "safety_check"],
    "B04": ["views", "ground"],
    "B05": ["ground", "observation", "fixtures"],
    "B06": ["safety_check", "reference", "acquire"],
    "B07": ["observation", "serialization", "reference"],
    "B08": ["output", "io", "native_io", "serialization"],
    "B09": ["capture", "ground"],
    "B10": ["run_v2", "protocol", "operation", "source_identity"],
}


def direct_closure(rows, roots):
    indexed = {}
    for position, row in enumerate(rows):
        identifier = row["def_id"]
        if (
            type(identifier) is not int
            or not 0 <= identifier < 2**64
            or identifier in indexed
        ):
            raise ValueError("CorrespondenceFunctionIdentity")
        indexed[identifier] = (position, row)
    for _, row in indexed.values():
        if row["body_form"] not in {"translated", "opaque", "absent"}:
            raise ValueError("CorrespondenceFunctionBodyForm")
        for target in row["direct_function_ids"]:
            if type(target) is not int or target not in indexed:
                raise ValueError("CorrespondenceMissingDirectDeclaration")
    if (
        not isinstance(roots, list)
        or not roots
        or any(type(i) is not int or i not in indexed for i in roots)
    ):
        raise ValueError("CorrespondenceUnknownRoot")
    pending, reached = list(roots), set()
    while pending:
        identifier = pending.pop()
        if identifier in reached:
            continue
        reached.add(identifier)
        pending.extend(indexed[identifier][1]["direct_function_ids"])
    return dict(
        root_function_ids=sorted(set(roots)),
        reachable_function_ids=sorted(reached),
        opaque_function_ids=sorted(
            i for i in reached if indexed[i][1]["body_form"] != "translated"
        ),
        unresolved_call_sites=[
            dict(caller_function_id=i, inventory_row=indexed[i][0], site_index=j)
            for i in sorted(reached)
            for j in range(len(indexed[i][1]["unresolved_call_sites"]))
        ],
        closure_scope="Direct function references only; indirect targets and opaque bodies remain explicit open dependencies",
        semantic_status="unestablished",
    )


def local_module(row):
    name = row["item_meta"]["name"]
    if (
        not row["item_meta"]["is_local"]
        or len(name) < 2
        or name[0].get("Ident", [None])[0] != "transition_study036"
    ):
        return None
    return name[1].get("Ident", [None])[0]


def source_chain(config, results):
    """Keep the compiled Rust subject distinct from a later completion executor."""
    native = results["native"]
    compiled = native.get("compiled_source_subject_ref", native["source_subject_ref"])
    if "compiled_source_subject_ref" in native and (
        native.get("format") != "core036.native-completion.v2"
        or not isinstance(native.get("compiled_checkpoint_ref"), dict)
    ):
        raise ValueError("CorrespondenceInventoryCompiledContext")
    if (
        results["extraction"]["native_source_subject_ref"] != compiled
        or results["translation"]["original_extraction_ref"] != config["extraction_ref"]
        or results["typecheck"]["extraction_result_ref"] != config["translation_ref"]
    ):
        raise ValueError("CorrespondenceInventorySourceChain")
    return compiled


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    out = Path(args.out)
    if (
        out != private / "correspondence-inventory" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("CorrespondenceInventoryOwnership")
    config = read(E / "correspondence-inventory-inputs-v2.json")
    required = {
        "format",
        "call_inventory_ref",
        "raw_ir_ref",
        "correctness_contract_ref",
        "bridge_contract_ref",
    }
    for key in ("native", "extraction", "translation", "typecheck"):
        required |= {key + "_ref", key + "_checkpoint_ref"}
    if (
        set(config) != required
        or config["format"] != "core036.correspondence-inventory-inputs.v2"
    ):
        raise ValueError("CorrespondenceInventoryInputs")
    results = {}
    for key in ("native", "extraction", "translation", "typecheck"):
        cp_path = refs.verify(config[key + "_checkpoint_ref"])
        RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
        cp = refs.read(config[key + "_checkpoint_ref"])
        path = refs.verify(config[key + "_ref"])
        result = refs.read(config[key + "_ref"])
        if (
            cp["source_validation_error"] is not None
            or path.parent.name != cp["attempt_id"]
            or result["source_subject_ref"] != cp["source_subject_ref"]
        ):
            raise ValueError("CorrespondenceInventoryPrerequisiteSource")
        if cp["stage_outcome"] != ("failed" if key == "typecheck" else "succeeded"):
            raise ValueError("CorrespondenceInventoryPrerequisiteOutcome")
        results[key] = result
    extraction = results["extraction"]
    compiled_ref = source_chain(config, results)
    native = results["native"]
    if "compiled_source_subject_ref" in native:
        cp_path = refs.verify(native["compiled_checkpoint_ref"])
        RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
        cp = refs.read(native["compiled_checkpoint_ref"])
        if (
            cp["source_subject_ref"] != compiled_ref
            or cp["source_validation_error"] is not None
            or native["worker_path"]
            != str(private / "native-builds" / cp["attempt_id"] / "worker")
        ):
            raise ValueError("CorrespondenceInventoryCompiledContext")
    extraction_path = refs.verify(config["extraction_ref"])
    if (
        refs.verify(config["call_inventory_ref"])
        != extraction_path.parent / "call-inventory.json"
        or digest(refs.verify(config["raw_ir_ref"])) != extraction["llbc_sha256"]
    ):
        raise ValueError("CorrespondenceInventoryIRSource")
    inventory = refs.read(config["call_inventory_ref"], limit=64 * 1024**2)
    if (
        inventory["has_errors"] is not False
        or inventory["crate_name"] != "transition_study036"
    ):
        raise ValueError("CorrespondenceInventoryCompilerErrors")
    rows = inventory["declarations"]["fun_decls"]
    native_subject = refs.read(compiled_ref, limit=MANIFEST)
    contracts = refs.read(config["bridge_contract_ref"])
    if (
        contracts["format"] != "core036.native-bridge-contracts.v2"
        or {x["id"] for x in contracts["bridges"]} != set(BRIDGE_MODULES)
        or len(contracts["bridges"]) != 10
    ):
        raise ValueError("CorrespondenceInventoryBridgeSet")
    for row in native_subject["files"]:
        if row["logical_ref"]["path"].endswith(
            ("/compression_prover_key.bin", "/parameters.bin")
        ):
            raise ValueError("CorrespondenceProtectedUnrelatedProofInput")
        refs.verify(row["snapshot_ref"])
    refs.verify(config["correctness_contract_ref"])
    bridges = []
    for bridge in contracts["bridges"]:
        modules = BRIDGE_MODULES[bridge["id"]]
        roots = [row["def_id"] for row in rows if local_module(row) in modules]
        if any(
            not any(local_module(row) == module for row in rows) for module in modules
        ):
            raise ValueError("CorrespondenceInventoryMissingNativeModule")
        bridges.append(
            {
                **bridge,
                "source_modules": modules,
                "function_graph": direct_closure(rows, roots),
                "obligation_status": "unestablished",
                "checked_native_theorem_roots": [],
            }
        )
    typecheck = results["typecheck"]
    if typecheck["all_generated_modules_typecheck"] is not False or not any(
        row["module"].endswith(".Types") and row["exit_code"] == 0
        for row in typecheck["commands"]
    ):
        raise ValueError("CorrespondenceInventoryObservedTypeBoundary")
    cfg = extraction_path.parent / "commands/cfg/stdout.txt"
    compiler = extraction_path.parent / "commands/compiler/stdout.txt"
    out.mkdir(parents=True)
    common = dict(
        source_subject_ref=declaration["source_subject_ref"],
        native_source_subject_ref=compiled_ref,
        input_refs=[config[key] for key in sorted(config) if key.endswith("_ref")],
        native_proof="unestablished",
        feature_complete=False,
        product_adoption="unactivated",
    )
    correspondence = dict(
        **common,
        format="core036.native-correspondence-inputs.v2",
        bridges=bridges,
        function_index=[
            dict(
                function_id=row["def_id"],
                inventory_row=i,
                raw_rust_name=row["item_meta"]["name"],
                source_span=row["item_meta"]["span"],
                is_local=row["item_meta"]["is_local"],
                body_form=row["body_form"],
                body_sha256=row["body_sha256"],
                direct_function_ids=row["direct_function_ids"],
                indirect_site_count=len(row["unresolved_call_sites"]),
                semantic_status="unestablished",
            )
            for i, row in enumerate(rows)
        ],
        declaration_counts={
            key: len(value) for key, value in inventory["declarations"].items()
        },
        extraction_options=inventory["options"],
        target_information=inventory["target_information"],
        actual_extraction_cfg_ref=refs.reference(
            "private", str(cfg.relative_to(private))
        ),
        actual_extraction_compiler_ref=refs.reference(
            "private", str(compiler.relative_to(private))
        ),
        stable_to_extraction_compiler_relation="unestablished",
        non_function_and_signature_scope="Complete original compiler IR is retained; this index does not replace type/trait/global dependencies or resolve indirect dispatch",
        actual_generated_types="typechecked_in_declared_diagnostic_model",
        actual_generated_functions="unestablished",
        native_roots=[],
    )
    write_once(out / "correspondence.json", correspondence)
    write_once(
        out / "proof-contract.json",
        dict(
            **common,
            format="core036.native-proof-contract.v2",
            correctness_contract_ref=config["correctness_contract_ref"],
            bridge_contract_ref=config["bridge_contract_ref"],
            required_bridge_ids=sorted(BRIDGE_MODULES),
            checked_native_theorem_roots=[],
            native_relation="Obs(Native036(x,E)) = Obs(OriginalCore(x,E)) for arbitrary admitted finite representable x and explicitly enforced E; exact original fallback outside selector",
            theorem_domain_is_measurement_matrix=False,
            new_unenforced_premises_added=False,
            kernel_axiom_allowlist=["propext", "Classical.choice", "Quot.sound"],
            external_dependency_refinements="Unestablished; generic primitive contracts require explicit justification, shared-call congruence equal complete arguments, and no assumed desired observation/projection equality",
            expected_native_lean_types="Pending relation/source refinements; no fabricated named proof roots or proof availability",
            acceptance="All B01-B10 exact expected native types, source/generated/cfg binding, transitive-axiom checks, real mutation rejection and fresh kernel must independently pass",
        ),
    )
    write_once(
        out / "result.json",
        dict(
            **common,
            format="core036.correspondence-inventory-result.v2",
            function_count=len(rows),
            bridge_count=len(bridges),
            correspondence_ref=refs.reference(
                "private", str((out / "correspondence.json").relative_to(private))
            ),
            proof_contract_ref=refs.reference(
                "private", str((out / "proof-contract.json").relative_to(private))
            ),
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
