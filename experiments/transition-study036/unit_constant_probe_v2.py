"""Actual optimized unit-constant source controls, without native Core promotion."""

import os
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from lean_command_v2 import run_logged_command
from check_proofs import check_declared_proof_v2


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    fields = {
        "format",
        "tools_ref",
        "dependency_source_ref",
        "entry_source_refs",
        "baseline_checkpoint_ref",
        "baseline_result_ref",
        "candidate_checkpoint_ref",
        "candidate_result_ref",
        "unit_source_ref",
        "metadata_checkpoint_ref",
        "metadata_proof_ref",
        "metadata_ir_ref",
    }
    if (
        set(selection) != fields
        or selection["format"] != "core036.unit-constant-probe.v2"
        or set(selection["entry_source_refs"]) != {"positive", "marker", "tuple"}
        or out != refs.roots["private"] / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("UnitProbeSelection")
    config = refs.read(selection["tools_ref"])
    tools, analysis, cache = (
        refs.read(config[k]) for k in ("rust_ref", "lean_ref", "cache_ref")
    )
    if (
        any(tools["statuses"].values())
        or any(analysis["statuses"].values())
        or cache["missing_requested_roots"]
    ):
        raise ValueError("UnitProbeToolStatus")
    for row in [*tools["patched_binaries"], *analysis["patched_binaries"]]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("UnitProbeToolIdentity")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != refs.roots["private"] / "analysis-backend-build/a0058/lean":
        raise ValueError("UnitProbeBackend")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("UnitProbeSDKPath")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("UnitProbeSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("UnitProbeSDKLink")
    compilers = {}
    for role in ("baseline", "candidate"):
        cp_path = refs.verify(selection[role + "_checkpoint_ref"])
        RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
        cp, result = (
            refs.read(selection[role + "_checkpoint_ref"]),
            refs.read(selection[role + "_result_ref"]),
        )
        if (
            cp["stage_outcome"] != "succeeded"
            or cp["source_validation_error"] is not None
            or result["source_subject_ref"] != cp["source_subject_ref"]
            or refs.verify(selection[role + "_result_ref"])
            != refs.roots["private"]
            / "nonpos-translator"
            / cp["attempt_id"]
            / "result.json"
            or result["new_translator_compiled"] is not True
            or result["compiled_sources_match_declared_repair"] is not True
            or digest(result["executable"]) != result["executable_sha256"]
        ):
            raise ValueError("UnitProbeCompiler")
        compilers[role] = result
    if compilers["candidate"].get("unit_binding_ref") != selection["unit_source_ref"]:
        raise ValueError("UnitProbeCompiledSourceBinding")
    from unit_constant_source_v2 import checked_sources

    checked_sources(refs, selection["unit_source_ref"], require_parse=True)
    deps = refs.read(compilers["candidate"]["dependencies_ref"])
    system = refs.read(deps["system_ref"])
    library_path = tools["environment"].get("LD_LIBRARY_PATH")
    if not isinstance(library_path, str) or not library_path:
        raise ValueError("UnitProbeRustLibraries")
    env = {
        **os.environ,
        **tools["environment"],
        "LD_LIBRARY_PATH": system["gmp_library_directory"] + os.pathsep + library_path,
        "CARGO_TARGET_DIR": str(out / "target"),
        "CHARON_CACHE_DIR": str(out / "charon-cache"),
        "OCAMLRUNPARAM": "d=1,o=10",
    }
    for key in ("LD_PRELOAD", "RUSTC_WRAPPER", "RUSTC_WORKSPACE_WRAPPER"):
        env.pop(key, None)
    paths = {row["name"]: row["path"] for row in tools["patched_binaries"]}
    out.mkdir(parents=True)
    source = out / "unit_dependency.rs"
    raw_source = refs.verify(selection["dependency_source_ref"]).read_bytes()
    write_once(source, raw_source)
    commands = []

    def run(label, argv, *, expected=0, run_env=env, cwd=out):
        row = run_logged_command(
            out / "commands" / label,
            argv,
            cwd=cwd,
            env=run_env,
            seconds=300,
            metadata=dict(label=label, expected_exit_code=expected),
        )
        commands.append(row)
        if row["exit_code"] != expected or row["timed_out"]:
            raise ValueError("UnitProbeCommand:" + label)
        return row

    dependency = out / "libcore036_unit_dependency.rlib"
    run(
        "compile-dependency",
        [
            paths["rustc"],
            "--crate-type=lib",
            "--edition=2024",
            "--crate-name=core036_unit_dependency",
            "-Copt-level=1",
            "-Ctarget-cpu=x86-64",
            "-Zalways-encode-mir=yes",
            "-Zmir-opt-level=3",
            "-o",
            str(dependency),
            str(source),
        ],
    )
    dependency_hash = digest(dependency)
    inputs = {}
    generated_files = {}
    for case, source_ref in selection["entry_source_refs"].items():
        entry = out / (case + "_entry.rs")
        write_once(entry, refs.verify(source_ref).read_bytes())
        llbc = out / ("unit_" + case + ".llbc")
        function = {"positive": "unit", "marker": "marker", "tuple": "tuple"}[case]
        run(
            case + "-extract",
            [
                paths["charon"],
                "rustc",
                "--preset",
                "aeneas",
                "--sysroot",
                "default",
                "--include",
                "core036_unit_dependency::" + function,
                "--include",
                "core036_unit_dependency::consume_"
                + ("unit" if case == "positive" else case),
                "--dest-file",
                str(llbc),
                "--",
                "--crate-type=lib",
                "--edition=2024",
                "--crate-name=core036_unit_entry",
                "--extern",
                "core036_unit_dependency=" + str(dependency),
                str(entry),
            ],
        )
        inputs[case] = (llbc, digest(llbc))
        # The frontend normalizes named ZSTs and nonempty tuples as aggregates.
        # Preserve that existing support; do not invent a constant rejection.
        roles = ("baseline", "candidate")
        baseline_generated_hash = None
        for role in roles:
            compiler = compilers[role]
            folder = out / (case + "-" + role + "-generated")
            folder.mkdir()
            expected = 1 if case == "positive" and role == "baseline" else 0
            run(
                case + "-" + role,
                [
                    compiler["executable"],
                    "-backend",
                    "lean",
                    "-no-progress-bar",
                    "-dest",
                    str(folder),
                    str(llbc),
                ],
                expected=expected,
            )
            if expected == 1:
                log = (
                    out / "commands" / (case + "-" + role) / "stdout.txt"
                ).read_text()
                log += (
                    out / "commands" / (case + "-" + role) / "stderr.txt"
                ).read_text()
                if (
                    "Found unexpected constant:" not in log
                    or "core036_unit_dependency::" + function not in log
                ):
                    raise ValueError("UnitProbeWrongRejection:" + case)
                if case == "positive" and "Found unexpected constant: ()" not in log:
                    raise ValueError("UnitProbeWrongUnitRed")
            else:
                generated = list(folder.glob("*.lean"))
                if len(generated) != 1:
                    raise ValueError("UnitProbeGeneratedModules")
                if role == "baseline":
                    baseline_generated_hash = digest(generated[0])
                else:
                    if (
                        case != "positive"
                        and digest(generated[0]) != baseline_generated_hash
                    ):
                        raise ValueError("UnitProbeUnrelatedAggregateChanged:" + case)
                    generated_files[case] = generated[0]
    # Check the exact previously proved metadata module, without claiming a new kernel run for it.
    mcp_path = refs.verify(selection["metadata_checkpoint_ref"])
    RootRegistry({"attempt": mcp_path.parent}).verify_closed("attempt")
    mcp = refs.read(selection["metadata_checkpoint_ref"])
    positive = refs.read(selection["metadata_proof_ref"])
    if (
        mcp["attempt_id"] != "a0378"
        or mcp["source_validation_error"] is not None
        or refs.verify(selection["metadata_proof_ref"])
        != refs.roots["private"] / "ground-lean-probe/a0378/declared-proof/result.json"
        or positive["status"] != "proved_for_declared_subject"
        or [r["label"] for r in positive["commands"]]
        != ["lean-SliceMetadata", "lean-ProofRoot", "lean-Audit", "fresh-kernel"]
        or any(
            type(r["exit_code"]) is not int or r["exit_code"] != 0
            for r in positive["commands"]
        )
    ):
        raise ValueError("UnitProbeMetadataPositiveDependency")
    metadata_ir = refs.verify(selection["metadata_ir_ref"])
    if (
        metadata_ir
        != refs.roots["private"] / "ground-lean-probe/a0378/slice_metadata.llbc"
    ):
        raise ValueError("UnitProbeMetadataIR")
    metadata = out / "metadata-generated"
    metadata.mkdir()
    run(
        "metadata-regression",
        [
            compilers["candidate"]["executable"],
            "-backend",
            "lean",
            "-no-progress-bar",
            "-dest",
            str(metadata),
            str(metadata_ir),
        ],
    )
    emitted = list(metadata.glob("*.lean"))
    if (
        len(emitted) != 1
        or digest(emitted[0]) != positive["source_sha256"]["SliceMetadata"]
    ):
        raise ValueError("UnitProbeMetadataChanged")
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    generated = generated_files["positive"]
    module = generated.stem
    raw_generated = generated.read_bytes()
    module_names = [path.stem for path in generated_files.values()]
    source_hashes = {}
    for path in generated_files.values():
        write_once(project / path.name, path.read_bytes())
        source_hashes[path.stem] = digest(path)
    proof = "module\n" + "".join(f"public import {name}\n" for name in module_names)
    proof += "@[expose] public section\n"
    roots = []
    for case, function in [
        ("positive", "unit"),
        ("marker", "marker"),
        ("tuple", "tuple"),
    ]:
        statement = f"(value : Aeneas.Std.U64) → core036_unit_entry.core036_unit_dependency.{function} value = Aeneas.Std.Result.ok value"
        proof += f"theorem {function}_correct : {statement} := by intro value; rfl\n"
        roots.append(
            dict(
                id="unit." + case,
                declaration=function + "_correct",
                expected_type=statement,
            )
        )
    write_once(project / "ProofRoot.lean", proof.encode())
    lean_env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
    }
    lean_env.pop("LD_PRELOAD", None)
    checked = check_declared_proof_v2(
        project=project,
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=lean_env,
        modules=[*module_names, "ProofRoot"],
        roots=roots,
        expected_files={
            **source_hashes,
            "ProofRoot": digest(project / "ProofRoot.lean"),
        },
        out=out / "declared-proof",
    )
    wrong = f"""module
public import {module}
@[expose] public section
theorem wrong_unit_result (value : Aeneas.Std.U64) :
  core036_unit_entry.core036_unit_dependency.unit value = Aeneas.Std.Result.fail .panic := by rfl
"""
    write_once(project / "Wrong.lean", wrong.encode())
    run(
        "wrong-result",
        [
            str(sdk / "bin/lake"),
            "--no-build",
            "env",
            str(sdk / "bin/lean"),
            "-j1",
            "-s131072",
            "-M4096",
            "-R",
            str(project),
            str(project / "Wrong.lean"),
        ],
        expected=1,
        run_env=lean_env,
        cwd=backend,
    )
    negative_log = "".join(
        (out / "commands/wrong-result" / name).read_text()
        for name in ("stdout.txt", "stderr.txt")
    )
    if "rfl" not in negative_log or any(
        marker in negative_log
        for marker in (
            "unexpected token",
            "Unknown identifier",
            "unknown identifier",
            "Application type mismatch",
        )
    ):
        raise ValueError("UnitProbeMalformedNegative")
    if (
        source.read_bytes() != raw_source
        or generated.read_bytes() != raw_generated
        or digest(dependency) != dependency_hash
    ):
        raise ValueError("UnitProbeSourceChanged")
    for path, checksum in inputs.values():
        if digest(path) != checksum:
            raise ValueError("UnitProbeIRChanged")
    for compiler in compilers.values():
        if digest(compiler["executable"]) != compiler["executable_sha256"]:
            raise ValueError("UnitProbeCompilerChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.unit-constant-probe-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            commands=commands,
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            dependency_sha256=dependency_hash,
            input_sha256={k: v[1] for k, v in inputs.items()},
            generated_sha256=digest(generated),
            generated_module_hashes=source_hashes,
            metadata_regression_sha256=digest(emitted[0]),
            metadata_positive_proof_ref=selection["metadata_proof_ref"],
            all_control_outcomes_matched=True,
            fresh_kernel="passed",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
            scope="Canonical unit source helper, unchanged named-ZST/nonempty-tuple aggregate helpers and exact metadata regression only; no full native Core/I/O proof",
        ),
    )
    return 0
