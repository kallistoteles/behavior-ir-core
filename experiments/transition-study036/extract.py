"""Actual selected native-source extraction; opaque/unsupported nodes stay open."""

import argparse
import hashlib
import json
import os
import shutil
import subprocess
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_analysis_v2, check_prepared_native_v2
from llbc_inventory_v2 import body_inventory
from llbc_names_v2 import (
    lean_ir_filename,
    normalize_local_impl_names,
    normalize_namespace_debug_names,
    write_debug_normalized_llbc,
    write_normalized_llbc,
)
from records import MANIFEST

E = Path(__file__).resolve().parent
R = E.parents[1]

REQUIRED_SOURCE_BODIES = {
    "serde_json::value::index::_::index_into": ("serde_json", "value", "index"),
    "serde_json::map::_::get": ("serde_json", "map"),
    "crate::reference::state_fact_rows": ("transition_study036", "reference"),
    "crate::views::seed_rows": ("transition_study036", "views"),
    "crate::views::seed_relation": ("transition_study036", "views"),
    "crate::views::seed_relations": ("transition_study036", "views"),
    "crate::reference::state_fact_row": ("transition_study036", "reference"),
    "crate::views::seed_row": ("transition_study036", "views"),
    "crate::views::text": ("transition_study036", "views"),
    "crate::views::_::into_study": ("transition_study036", "views"),
    # Actual484's Value::as_str calls this nonallocating std wrapper.
    "alloc::string::_::deref": ("alloc", "string"),
    # Pinned Rust NamePattern matcher cannot match inherent Impl(Ty) nodes.
    # Keep the one impl-position wildcard; observed-body uniqueness still gates.
    "serde_json::value::_::as_str": ("serde_json", "value"),
    "serde_json::value::{serde_json::value::Value}::as_str": (
        "serde_json",
        "value",
    ),
    "{impl serde_core::ser::Serialize for serde_json::value::Value}::serialize": (
        "serde_json",
        "value",
        "ser",
    ),
    "{impl serde_core::ser::Serialize for serde_json::number::Number}::serialize": (
        "serde_json",
        "number",
    ),
}
# Actual520/546 retain both the str reader and its shared-reference forwarding
# reader. Inventory both bodies; semantic/native interpretation is separate.
REQUIRED_SOURCE_BODY_COUNTS = {"serde_json::value::index::_::index_into": 2}
NUMBER_TYPE_SOURCE = "serde_json::number::Number"
NUMBER_PAYLOAD_SOURCE = "serde_json::number::N"
JSON_MAP_TYPE_SOURCE = "serde_json::map::Map"


def extraction_roots(scope):
    roots = {
        "seed-folds": [
            "crate::reference::state_fact_rows",
            "crate::views::seed_rows",
            "crate::views::seed_relations",
            "crate::views::_::into_study",
        ],
        "seed-canonical": [
            "crate::reference::state_fact_row",
            "crate::views::seed_row",
            "crate::views::_::into_study",
        ],
        "typed-seed-row": ["crate::views::seed_row", "crate::views::_::into_study"],
        "canonical-row": ["crate::reference::state_fact_row"],
        "views": ["crate::views"],
        "errors": ["crate::error"],
        "entry-errors": ["crate::run_v2::entry"],
        "selector": ["crate::eligibility::finish"],
        **{
            name: ["crate::run_v2"]
            for name in (
                "entrypoints",
                "worker-entrypoints",
                "entrypoints-engine",
                "entrypoints-core",
                "entrypoints-core-invocation",
                "entrypoints-store",
                "entrypoints-models",
                "entrypoints-verify",
            )
        },
        "ground": ["crate::ground"],
        "protocol": ["crate::protocol::parse_request_v2"],
        "intervals": ["crate::intervals::reconcile"],
    }
    if not isinstance(scope, str) or scope not in roots:
        raise ValueError("NativeExtractionScope")
    return roots[scope]


def source_support_includes(config):
    """Only add explicitly reviewed bodies; flags alone do not prove inclusion."""
    patterns = config.get("source_support_includes", [])
    reviewed = {
        "serde_core::ser::impls",
        "core::io::write::Write::write_all",
        "alloc::io::read::Read::take",
        "alloc::io::read::Read::read_to_end",
        *REQUIRED_SOURCE_BODIES,
        NUMBER_TYPE_SOURCE,
        NUMBER_PAYLOAD_SOURCE,
        JSON_MAP_TYPE_SOURCE,
    }
    if (
        not isinstance(patterns, list)
        or any(not isinstance(p, str) or p not in reviewed for p in patterns)
        or len(set(patterns)) != len(patterns)
    ):
        raise ValueError("NativeExtractionSourceSupportIncludes")
    return list(patterns)


def required_source_body_inventory(rows, patterns):
    """Fail if a requested method is absent, ambiguous or still opaque."""
    observed = []
    for pattern in patterns:
        prefix = REQUIRED_SOURCE_BODIES.get(pattern)
        if prefix is None:
            continue
        matches = []
        for row in rows:
            name = row.get("item_meta", {}).get("name", [])
            if (
                len(name) > len(prefix)
                and all(
                    element.get("Ident", [None])[0] == part
                    for element, part in zip(name, prefix)
                )
                and name[-1].get("Ident", [None])[0] == pattern.rsplit("::", 1)[-1]
            ):
                matches.append(row)
        expected_count = REQUIRED_SOURCE_BODY_COUNTS.get(pattern, 1)
        if (
            len(matches) != expected_count
            or len({row["def_id"] for row in matches}) != expected_count
        ):
            raise ValueError("NativeExtractionRequiredSourceMethod:" + pattern)
        for row in matches:
            if (
                row.get("body_present") is not True
                or row.get("body_form") != "translated"
                or not row.get("body_sha256")
            ):
                raise ValueError("NativeExtractionRequiredSourceBody:" + pattern)
            observed.append(
                {
                    "pattern": pattern,
                    "function_id": row["def_id"],
                    "body_sha256": row["body_sha256"],
                    "status": "unestablished",
                }
            )
    return observed


def required_source_type_inventory(rows, patterns):
    """Require actual Number/N/map layouts; this does not prove refinement."""
    observed = []
    for pattern, prefix, leaf, form in [
        (NUMBER_TYPE_SOURCE, ["serde_json", "number"], "Number", "Struct"),
        (NUMBER_PAYLOAD_SOURCE, ["serde_json", "number"], "N", "Enum"),
        (JSON_MAP_TYPE_SOURCE, ["serde_json", "map"], "Map", "Struct"),
    ]:
        if pattern not in patterns:
            continue
        matches = [
            row
            for row in rows
            if row is not None
            and [
                element.get("Ident", [None])[0] for element in row["item_meta"]["name"]
            ]
            == [*prefix, leaf]
        ]
        if len(matches) != 1:
            raise ValueError(
                "NativeExtractionRequiredJSONMapType"
                if pattern == JSON_MAP_TYPE_SOURCE
                else "NativeExtractionRequiredNumberType"
            )
        kind = matches[0].get("kind")
        if not isinstance(kind, dict) or set(kind) != {form}:
            raise ValueError(
                "NativeExtractionOpaqueJSONMapType"
                if pattern == JSON_MAP_TYPE_SOURCE
                else "NativeExtractionOpaqueNumberType"
            )
        if pattern == JSON_MAP_TYPE_SOURCE:
            fields = kind["Struct"]
            if (
                not isinstance(fields, list)
                or len(fields) != 1
                or not isinstance(fields[0], dict)
                or fields[0].get("name") != "map"
                or "ty" not in fields[0]
            ):
                raise ValueError("NativeExtractionJSONMapRepresentation")
        if leaf == "N":
            variants = kind["Enum"]
            if (
                not isinstance(variants, list)
                or any(not isinstance(v, dict) for v in variants)
                or [v.get("name") for v in variants] != ["PosInt", "NegInt", "Float"]
                or any(
                    not isinstance(v.get("fields"), list) or len(v["fields"]) != 1
                    for v in variants
                )
            ):
                raise ValueError("NativeExtractionNumberPayloadRepresentation")
        observed.append(
            {
                "pattern": pattern,
                "type_id": matches[0]["def_id"],
                "kind_sha256": hashlib.sha256(
                    json.dumps(
                        kind, sort_keys=True, separators=(",", ":"), ensure_ascii=False
                    ).encode()
                ).hexdigest(),
                "status": "unestablished",
            }
        )
    return observed


def validate_diagnostic_boundaries(contract, base, scope):
    """A minimized entry probe adds one opaque node, without dropping the base."""
    boundaries = contract.get("diagnostic_opaque_boundaries")
    if (
        scope != "entry-errors"
        or base.get("format") != "core036.codec-boundaries.v2"
        or base.get("native_refinement_claimed") is not False
        or contract.get("native_refinement_claimed") is not False
        or contract.get("status") != "unestablished"
        or not isinstance(base.get("extraction_boundary_patterns"), list)
        or "crate::serialization" not in base["extraction_boundary_patterns"]
        or not isinstance(boundaries, list)
        or len(boundaries) != 1
        or not isinstance(boundaries[0], dict)
        or boundaries[0].get("name") != "crate::run_v2::execute_cli"
        or boundaries[0].get("status") != "unestablished"
        or contract.get("extraction_boundary_patterns")
        != [*base["extraction_boundary_patterns"], "crate::run_v2::execute_cli"]
    ):
        raise ValueError("NativeExtractionDiagnosticBoundaryDelta")


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
    from controller_v2 import artifact_context_for

    refs, _ = artifact_context_for(declaration["work_id"])
    if (
        refs.roots["repository"] != R
        or refs.roots["work"] != work
        or refs.roots["private"] != private
    ):
        raise ValueError("NativeExtractionRegisteredRoots")
    out = Path(args.out)
    if out != private / "native-extraction" / declaration["record_id"] or out.exists():
        raise ValueError("NativeExtractionOutput")
    check_prepared_native_v2(E / "toolchain-v2.json")
    check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
    config = read(E / "native-extraction-inputs-v2.json")
    from artifact_registration_v2 import guard_reference

    for key in (
        "native_result_ref",
        "native_checkpoint_ref",
        "dependency_cache_checkpoint_ref",
        "retained_analysis_cache_checkpoint_ref",
        "codec_contract_ref",
        "ir_budget_ref",
        "native_audit_ref",
        "native_unit_binding_ref",
    ):
        if key in config:
            guard_reference(config[key])
    required = {"format", "native_result_ref", "native_checkpoint_ref"}
    if (
        not required <= set(config)
        or set(config)
        - required
        - {
            "dependency_cache_checkpoint_ref",
            "retained_analysis_cache_checkpoint_ref",
            "scope",
            "monomorphize",
            "concrete_codecs",
            "codec_contract_ref",
            "ir_budget_ref",
            "normalize_local_impl_names",
            "avoid_debug_namespace_collisions",
            "source_support_includes",
            "native_audit_ref",
            "native_unit_binding_ref",
        }
        or config["format"] != "core036.extraction-inputs.v2"
    ):
        raise ValueError("NativeExtractionContext")
    normalize_names = config.get("normalize_local_impl_names", False)
    if type(normalize_names) is not bool:
        raise ValueError("NativeExtractionNameNormalizationFlag")
    avoid_namespace_collisions = config.get("avoid_debug_namespace_collisions", False)
    if type(avoid_namespace_collisions) is not bool or (
        avoid_namespace_collisions and not normalize_names
    ):
        raise ValueError("NativeExtractionDebugNameNormalizationFlag")
    concrete_codecs = config.get("concrete_codecs", False)
    if type(concrete_codecs) is not bool or concrete_codecs != (
        "codec_contract_ref" in config
    ):
        raise ValueError("NativeExtractionCodecContext")
    opaque_patterns = []
    ir_byte_limit = 64 * 1024**2
    if "ir_budget_ref" in config:
        budget = refs.read(config["ir_budget_ref"])
        if (
            budget.get("format") != "core036.extraction-ir-budget.v2"
            or budget.get("native_refinement_claimed") is not False
            or type(budget.get("max_input_bytes")) is not int
            or not 1 <= budget["max_input_bytes"] <= 128 * 1024**2
        ):
            raise ValueError("NativeExtractionIRBudget")
        observed_path = refs.verify(budget["observed_ir_ref"])
        prior_checkpoint = refs.verify(budget["closed_checkpoint_ref"])
        RootRegistry({"attempt": prior_checkpoint.parent}).verify_closed("attempt")
        if (
            refs.read(budget["closed_checkpoint_ref"])["outcome"]["operational"]
            != "closed"
            or observed_path.stat().st_size > budget["max_input_bytes"]
        ):
            raise ValueError("NativeExtractionIRBudgetEvidence")
        ir_byte_limit = budget["max_input_bytes"]
    if concrete_codecs:
        contract = refs.read(config["codec_contract_ref"])
        if (
            contract.get("format") != "core036.codec-boundaries.v2"
            or contract.get("status") != "unestablished"
            or contract.get("native_refinement_claimed") is not False
            or contract.get("opaque_rust_module") != "crate::serialization"
        ):
            raise ValueError("NativeExtractionCodecContract")
        for source_ref in contract["source_refs"]:
            refs.verify(source_ref)
        dependency_sources = contract.get("dependency_source_refs", [])
        if not isinstance(dependency_sources, list) or len(dependency_sources) > 256:
            raise ValueError("NativeExtractionCodecDependencySources")
        for source_ref in dependency_sources:
            refs.verify(source_ref)
        if (
            config.get("scope") == "entry-errors"
            or "diagnostic_base_contract_ref" in contract
        ):
            if "diagnostic_base_contract_ref" not in contract:
                raise ValueError("NativeExtractionDiagnosticBaseRequired")
            base = refs.read(contract["diagnostic_base_contract_ref"])
            validate_diagnostic_boundaries(contract, base, config.get("scope"))
        opaque_patterns = contract.get(
            "extraction_boundary_patterns", ["crate::serialization"]
        )
        if (
            not isinstance(opaque_patterns, list)
            or not 1 <= len(opaque_patterns) <= 32
            or any(
                not isinstance(pattern, str)
                or not pattern
                or len(pattern) > 1024
                or pattern in {"*", "_", "crate"}
                for pattern in opaque_patterns
            )
            or len(set(opaque_patterns)) != len(opaque_patterns)
            or "crate::serialization" not in opaque_patterns
        ):
            raise ValueError("NativeExtractionCodecPatterns")
    scope = config.get("scope", "views")
    monomorphize = config.get("monomorphize", False)
    if type(monomorphize) is not bool:
        raise ValueError("NativeExtractionMonomorphizationFlag")
    selected_roots = extraction_roots(scope)
    includes = {
        "entrypoints": [
            "behavior_core",
            "behavior_engine",
            "behavior_store",
            "behavior_models",
            "behavior_verify",
        ],
        "entrypoints-engine": ["behavior_engine"],
        "entrypoints-core": ["behavior_core"],
        "entrypoints-core-invocation": ["behavior_core::invocation"],
        "entrypoints-store": ["behavior_store"],
        "entrypoints-models": ["behavior_models"],
        "entrypoints-verify": ["behavior_verify"],
    }.get(scope, [])
    support_includes = source_support_includes(config)
    result_path = refs.verify(config["native_result_ref"])
    native = refs.read(config["native_result_ref"])
    checkpoint_path = refs.verify(config["native_checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(config["native_checkpoint_ref"])
    if (
        checkpoint["stage_outcome"] != "succeeded"
        or result_path.parent.name != checkpoint["attempt_id"]
        or native["source_subject_ref"] != checkpoint["source_subject_ref"]
    ):
        raise ValueError("NativeExtractionClosedSource")
    compiled_subject_ref = native.get(
        "compiled_source_subject_ref", native["source_subject_ref"]
    )
    native_worker = result_path.parent / "worker"
    if "compiled_source_subject_ref" in native:
        from native_compiled_context_v2 import compiled_worker_layout

        guard_reference(native.get("compiled_checkpoint_ref"))
        compiled_cp_path = refs.verify(native["compiled_checkpoint_ref"])
        if (
            compiled_cp_path.name != "checkpoint.json"
            or compiled_cp_path.parent.parent
            not in {
                refs.roots["work"] / "attempts",
                refs.roots.get("future_evidence", refs.roots["work"]) / "attempts",
            }
        ):
            raise ValueError("NativeExtractionCompiledCheckpointOwnership")
        RootRegistry({"attempt": compiled_cp_path.parent}).verify_closed("attempt")
        compiled_cp = refs.read(native["compiled_checkpoint_ref"])
        native_worker = compiled_worker_layout(private, native, compiled_cp)
    from native_compiled_context_v2 import verified_build_hashes

    manifest_sha, lock_sha = verified_build_hashes(
        refs, native, result_path, native_worker, config
    )
    subject = refs.read(compiled_subject_ref, limit=MANIFEST)
    if concrete_codecs:
        actual_native_refs = [row["logical_ref"] for row in subject["files"]]
        if any(
            source_ref not in actual_native_refs
            for source_ref in contract["source_refs"]
        ):
            raise ValueError("NativeExtractionCodecDiffersFromCompiledSource")
        refs.verify(contract["original_wrapper_subject_ref"])
    selected = []
    prefix = "experiments/transition-study036/"
    for row in subject["files"]:
        logical = row["logical_ref"]
        guard_reference(logical)
        guard_reference(row["snapshot_ref"])
        relative = logical["path"].removeprefix(prefix)
        if logical["path"].startswith(prefix) and (
            relative.startswith("src/")
            or relative.startswith("expected/")
            or relative.startswith("tests/")
        ):
            source = native_worker / relative
            if (
                digest(source) != logical["sha256"]
                or source.read_bytes() != refs.verify(row["snapshot_ref"]).read_bytes()
            ):
                raise ValueError("NativeExtractionSourceBodyChanged")
            selected.append((relative, source, logical["sha256"]))
    if not any(name == "src/views.rs" for name, _, _ in selected):
        raise ValueError("NativeExtractionMissingRealViews")
    out.mkdir(parents=True)
    worker = out / "worker"
    worker.mkdir()
    for name, source, _ in selected:
        target = worker / name
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
    for name in ("Cargo.toml", "Cargo.lock", "build-identity.json"):
        shutil.copy2(native_worker / name, worker / name)
    if (
        digest(worker / "Cargo.toml") != manifest_sha
        or digest(worker / "Cargo.lock") != lock_sha
    ):
        raise ValueError("NativeExtractionBuildInputsChanged")
    # Cargo reads bin paths even for --lib, so the exact retained source includes
    # them above. No test fixture/alternative Rust implementation is substituted.
    analysis = read(private / "analysis-toolchain/a0040/result.json")
    paths = {row["name"]: row["path"] for row in analysis["patched_binaries"]}
    env = {
        **os.environ,
        **analysis["environment"],
        # Charon supplies --target even for the host triple. Cargo does not
        # propagate RUSTFLAGS to host build scripts in that case; pin their
        # linker through the target setting too, as Cargo documents.
        "CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER": analysis["environment"]["CC"],
        "CARGO_TARGET_DIR": str(
            private / "disposable" / ("analysis-" + declaration["record_id"]) / "target"
        ),
        "CHARON_CACHE_DIR": str(out / "charon-cache"),
    }
    env.pop("RUSTC_WRAPPER", None)
    env.pop("RUSTC_WORKSPACE_WRAPPER", None)
    # Rust's distributed GNU target defaults to its bundled lld. That binary
    # has a generic Linux interpreter. Use the supported opt-out for both
    # target and host artifacts, without altering installed SDK bytes or Rust
    # functions/cfg. Cargo's host table is required for proc-macro/build scripts.
    env["RUSTFLAGS"] += " -C linker-features=-lld"
    linker = analysis["environment"]["CC"]
    cargo_config = (
        "target-applies-to-host = false\n"
        "[unstable]\nhost-config = true\ntarget-applies-to-host = true\n"
        "[host.x86_64-unknown-linux-gnu]\n"
        "linker = " + json.dumps(linker) + "\n"
        'rustflags = ["-C", "linker-features=-lld", "-C", "target-cpu=x86-64"]\n'
    )
    write_once(worker / ".cargo/config.toml", cargo_config.encode())
    reused_cache = False
    if "retained_analysis_cache_checkpoint_ref" in config:
        if "dependency_cache_checkpoint_ref" in config:
            raise ValueError("NativeExtractionAmbiguousCacheSelection")
        from native_analysis_cache_v2 import verified_analysis_cache

        target = verified_analysis_cache(
            refs,
            config["retained_analysis_cache_checkpoint_ref"],
            compiled_subject_ref,
            worker,
            declaration["source_subject_ref"],
            out / "retained-analysis-cache",
        )
        env["CARGO_TARGET_DIR"] = str(target)
        reused_cache = True
    if "dependency_cache_checkpoint_ref" in config:
        prior_path = refs.verify(config["dependency_cache_checkpoint_ref"])
        if (
            prior_path.name != "checkpoint.json"
            or prior_path.parent.parent != work / "attempts"
        ):
            raise ValueError("ExtractionCacheCheckpointOwnership")
        RootRegistry({"attempt": prior_path.parent}).verify_closed("attempt")
        prior = refs.read(config["dependency_cache_checkpoint_ref"])
        old = private / "native-extraction" / prior["attempt_id"]
        previous = read(old / "result.json")
        if (
            previous["extraction_exit_code"] != 0
            or prior["outcome"]["operational"] != "closed"
        ):
            raise ValueError("ExtractionCacheCompilationNotClosed")
        for name in ("Cargo.lock", ".cargo/config.toml"):
            if digest(old / "worker" / name) != digest(worker / name):
                raise ValueError("ExtractionCacheConfigurationDiffers")
        target = private / "disposable" / ("analysis-" + prior["attempt_id"]) / "target"
        refs.path("private", str(target.relative_to(private)))
        if not target.is_dir():
            raise ValueError("ExtractionCacheMissing")
        env["CARGO_TARGET_DIR"] = str(target)
        reused_cache = True
    commands = []

    def run(label, argv, seconds=1800):
        folder = out / "commands" / label
        folder.mkdir(parents=True)
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=worker,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=seconds,
                check=False,
            )
        row = {
            "label": label,
            "argv": argv,
            "exit_code": result.returncode,
            "stdout_sha256": digest(folder / "stdout.txt"),
            "stderr_sha256": digest(folder / "stderr.txt"),
        }
        commands.append(row)
        write_once(folder / "result.json", row)
        return result.returncode

    run(
        "metadata",
        [
            paths["cargo"],
            "metadata",
            "--locked",
            "--offline",
            "--format-version",
            "1",
            "--features",
            "worker",
        ],
        180,
    )
    run("compiler", [paths["rustc"], "-vV"], 180)
    run(
        "cfg",
        [
            paths["rustc"],
            "--print",
            "cfg",
            "--cfg",
            'feature="worker"',
            "-C",
            "target-cpu=x86-64",
        ],
        180,
    )
    llbc = out / lean_ir_filename(scope)
    code = run(
        "extract",
        [
            paths["charon"],
            "cargo",
            *(
                [
                    "--monomorphize",
                    "--lift-associated-types",
                    "*",
                    "--hide-marker-traits",
                    "--hide-allocator",
                    "--remove-unused-self-clauses",
                    "--remove-adt-clauses",
                    "--treat-box-as-builtin",
                    "--reconstruct-fallible-operations",
                    "--reconstruct-panic-calls",
                    "--reconstruct-asserts",
                    "--reconstruct-matches",
                    "--deallocate-all-locals",
                    "--unbind-item-vars",
                ]
                if monomorphize
                else ["--preset", "aeneas"]
            ),
            "--sysroot",
            "default",
            *[arg for root in selected_roots for arg in ["--start-from", root]],
            *[arg for pattern in opaque_patterns for arg in ["--opaque", pattern]],
            *[
                arg
                for pattern in [*includes, *support_includes]
                for arg in ["--include", pattern]
            ],
            "--dest-file",
            str(llbc),
            "--",
            "--locked",
            "--offline",
            "--manifest-path",
            str(worker / "Cargo.toml"),
            "--lib",
            "--features",
            "worker",
        ],
    )
    generated = out / "generated"
    generated.mkdir()
    translation = None
    graph = None
    required_bodies = []
    required_types = []
    included_crate_inventory = []
    translation_input = llbc
    name_normalization = None
    if llbc.is_file():
        if llbc.stat().st_size > ir_byte_limit:
            raise ValueError("NativeExtractionIRRequiresDeclaredDecomposition")
        data = json.loads(llbc.read_bytes())
        translated = data["translated"]
        function_ids = {
            row["def_id"] for row in translated["fun_decls"] if row is not None
        }
        graph = {
            "has_errors": data["has_errors"],
            "crate_name": translated["crate_name"],
            "options": translated["options"],
            "target_information": translated["target_information"],
            "declarations": {
                kind: [
                    {
                        "def_id": row.get("def_id"),
                        "item_meta": row.get("item_meta"),
                        **(
                            body_inventory(row.get("body"), function_ids=function_ids)
                            if kind == "fun_decls"
                            else {"body_present": False, "body_form": "not_applicable"}
                        ),
                        "classification": "unestablished",
                    }
                    for row in translated[kind]
                    if row is not None
                ]
                for kind in (
                    "type_decls",
                    "fun_decls",
                    "global_decls",
                    "trait_decls",
                    "trait_impls",
                )
            },
            "scope": "raw compiler closure inventory; foreign/opaque nodes are not silently proved",
            "call_reference_scope": "Actual Call terms, including unwind branches, and direct function references including drops/function values; indirect targets retained unresolved. Non-function dependencies remain in the complete retained LLBC and declaration inventory.",
        }
        # Keep the full observed closure even when a requested method is absent.
        write_once(out / "call-inventory.json", graph)
        required_bodies = required_source_body_inventory(
            graph["declarations"]["fun_decls"], support_includes
        )
        graph["required_source_bodies"] = required_bodies
        write_once(out / "required-source-bodies.json", required_bodies)
        required_types = required_source_type_inventory(
            translated["type_decls"], support_includes
        )
        write_once(out / "required-source-types.json", required_types)
        for crate_name in [*includes, *support_includes]:
            prefix = REQUIRED_SOURCE_BODIES.get(crate_name, crate_name.split("::"))
            rows = [
                row
                for row in graph["declarations"]["fun_decls"]
                if len(row["item_meta"]["name"]) >= len(prefix)
                and all(
                    elem.get("Ident", [None])[0] == part
                    for elem, part in zip(row["item_meta"]["name"], prefix)
                )
            ]
            if crate_name in REQUIRED_SOURCE_BODIES:
                selected_ids = {
                    row["function_id"]
                    for row in graph["required_source_bodies"]
                    if row["pattern"] == crate_name
                }
                rows = [row for row in rows if row["def_id"] in selected_ids]
            included_crate_inventory.append(
                {
                    "pattern": crate_name,
                    "crate": prefix[0],
                    "function_declarations": len(rows),
                    "translated_bodies": sum(row["body_present"] for row in rows),
                    **(
                        {
                            "required_type_declarations": sum(
                                row["pattern"] == crate_name for row in required_types
                            ),
                            "transparent_type_definitions": sum(
                                row["pattern"] == crate_name for row in required_types
                            ),
                        }
                        if crate_name
                        in {
                            NUMBER_TYPE_SOURCE,
                            NUMBER_PAYLOAD_SOURCE,
                            JSON_MAP_TYPE_SOURCE,
                        }
                        else {}
                    ),
                    "status": "unestablished",
                }
            )
        if code == 0 and data["has_errors"] is False:
            if normalize_names:
                normalizer = (
                    normalize_namespace_debug_names
                    if avoid_namespace_collisions
                    else normalize_local_impl_names
                )
                normalized, name_normalization = normalizer(data)
                translation_input = out / lean_ir_filename(scope, normalized=True)
                writer = (
                    write_debug_normalized_llbc
                    if avoid_namespace_collisions
                    else write_normalized_llbc
                )
                writer(
                    translation_input,
                    data,
                    normalized,
                    name_normalization,
                    max_bytes=ir_byte_limit,
                )
                name_normalization = {
                    **name_normalization,
                    "raw_llbc_sha256": digest(llbc),
                    "aeneas_input_sha256": digest(translation_input),
                    "scope": (
                        "Local trait-impl names and scheduled namespace-colliding local debug-name hints only; all instructions, types, IDs, data literals, spans and call references retained unchanged"
                        if avoid_namespace_collisions
                        else "Local trait-impl extraction names only; raw compiler LLBC and all executable bodies/references retained unchanged"
                    ),
                }
                write_once(out / "name-normalization.json", name_normalization)
                del normalized
            # The raw IR, inventory and optional name-only IR are retained on
            # disk. Release their parsed graphs before the child translator
            # uses its separately supervised memory budget.
            del data, translated, graph
            translation = run(
                "translate",
                [
                    paths["aeneas"],
                    "-backend",
                    "lean",
                    "-split-files",
                    "-impl-namespace",
                    "-no-progress-bar",
                    # The real 6458-byte selector constant needs more than the
                    # default 2048 recursive simp steps for Array.make's
                    # length proof (actual closed a0213). This is a checked
                    # proof-generation setting, not a new axiom or RAM quota.
                    "-max-recdepth",
                    "8192",
                    "-dest",
                    str(generated),
                    str(translation_input),
                ],
            )
    for name, _, expected in selected:
        if digest(worker / name) != expected:
            raise ValueError("NativeExtractionInputMutated")
    write_once(
        out / "result.json",
        {
            "format": "core036.native-extraction.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "native_source_subject_ref": compiled_subject_ref,
            "monomorphize_requested": monomorphize,
            "debug_namespace_name_avoidance_requested": avoid_namespace_collisions,
            "analysis_translation_max_recursion_depth": 8192,
            "ir_budget_ref": config.get("ir_budget_ref"),
            "ir_input_byte_limit": ir_byte_limit,
            "ir_actual_bytes": llbc.stat().st_size if llbc.is_file() else None,
            "concrete_codec_boundaries_requested": concrete_codecs,
            "codec_contract_ref": config.get("codec_contract_ref"),
            "unestablished_opaque_patterns": opaque_patterns,
            "commands": commands,
            "llbc_sha256": digest(llbc) if llbc.is_file() else None,
            "aeneas_input_sha256": digest(translation_input)
            if translation_input.is_file()
            else None,
            "name_normalization": name_normalization,
            "generated": [
                {
                    "path": str(path.relative_to(out)),
                    "bytes": path.stat().st_size,
                    "sha256": digest(path),
                }
                for path in sorted(generated.rglob("*"))
                if path.is_file()
            ],
            "extraction_exit_code": code,
            "translation_exit_code": translation,
            "closure_fully_classified": False,
            "compiler_cache_reused": reused_cache,
            "retained_analysis_cache_checkpoint_ref": config.get(
                "retained_analysis_cache_checkpoint_ref"
            ),
            "cache_before_reuse_ref": refs.reference(
                "private",
                str((out / "retained-analysis-cache/result.json").relative_to(private)),
            )
            if "retained_analysis_cache_checkpoint_ref" in config
            else None,
            "analysis_target": env["CARGO_TARGET_DIR"],
            "native_proof": "unestablished",
            "product_adoption": "unactivated",
            "selected_root": selected_roots[0],
            "selected_roots": selected_roots,
            "included_core_crates": includes,
            "source_support_includes": support_includes,
            # Keep only small summaries after releasing the large IR graphs.
            "required_source_bodies": required_bodies,
            "required_source_types": required_types,
            "included_crate_inventory": included_crate_inventory,
            "scope": "Actual selected source call-closure probe with explicit unproved dependencies; not Core correspondence",
        },
    )
    return 0 if code == 0 and translation == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
