"""Actual shared-slice metadata red/green extraction and checked length equations."""

import os
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from lean_command_v2 import run_logged_command
from check_proofs import check_declared_proof_v2

FUNCTIONS = {"bytes": "U8", "words": "U32", "zero_sized": "Unit", "generic": None}


def validate_metadata_red(log):
    markers = (
        "Generated_Expressions.PtrMetadata",
        "Values.VSharedBorrow",
        "Generated_Types.RShared",
    )
    if (
        log.count("Inconsistent projection:") != len(FUNCTIONS)
        or any(marker not in log for marker in markers)
        or any("core036_slice_metadata::" + name not in log for name in FUNCTIONS)
    ):
        raise ValueError("SliceMetadataProbeWrongRed")


def metadata_witnesses(value, path=""):
    result = []
    if value == "PtrMetadata":
        result.append(path)
    elif isinstance(value, dict):
        for key, child in value.items():
            if key == "ptr_metadata":
                # Ref.ptr_metadata is a reborrow hint, not this evaluator path.
                continue
            result.extend(metadata_witnesses(child, path + "/" + str(key)))
    elif isinstance(value, list):
        for index, child in enumerate(value):
            result.extend(metadata_witnesses(child, path + "/" + str(index)))
    return result


def run_probe(declaration, out, selection_ref, base_config):
    E = Path(__file__).resolve().parent
    R = E.parents[1]
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    selection = refs.read(selection_ref)
    required = {
        "format",
        "source_ref",
        "entry_source_ref",
        "candidate_checkpoint_ref",
        "candidate_result_ref",
        "baseline_checkpoint_ref",
        "baseline_result_ref",
        "candidate_source_ref",
    }
    if (
        set(selection) != required
        or selection["format"] != "core036.slice-metadata-probe.v2"
    ):
        raise ValueError("SliceMetadataProbeSelection")
    if out != private / "ground-lean-probe" / declaration["record_id"] or out.exists():
        raise ValueError("SliceMetadataProbeOwnership")
    if set(base_config) != {"rust_ref", "lean_ref", "cache_ref", "sdk_inventory_ref"}:
        raise ValueError("SliceMetadataProbeBaseConfig")
    tools = read(refs.verify(base_config["rust_ref"]))
    analysis = read(refs.verify(base_config["lean_ref"]))
    cache = read(refs.verify(base_config["cache_ref"]))
    if (
        any(tools["statuses"].values())
        or any(analysis["statuses"].values())
        or cache["missing_requested_roots"]
    ):
        raise ValueError("SliceMetadataProbeToolStatus")
    for row in [*tools["patched_binaries"], *analysis["patched_binaries"]]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("SliceMetadataProbeToolIdentity")
    compilers = {}
    for role in ("baseline", "candidate"):
        cp_path = refs.verify(selection[role + "_checkpoint_ref"])
        RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
        cp = refs.read(selection[role + "_checkpoint_ref"])
        result_path = refs.verify(selection[role + "_result_ref"])
        result = refs.read(selection[role + "_result_ref"])
        if (
            cp.get("stage_outcome") != "succeeded"
            or cp.get("source_validation_error") is not None
            or result_path
            != private / "nonpos-translator" / cp["attempt_id"] / "result.json"
            or result.get("source_subject_ref") != cp.get("source_subject_ref")
            or result.get("new_translator_compiled") is not True
            or result.get("compiled_sources_match_declared_repair") is not True
            or digest(result["executable"]) != result["executable_sha256"]
        ):
            raise ValueError("SliceMetadataProbeCompiler")
        compilers[role] = result
    if (
        compilers["candidate"].get("slice_metadata_binding_ref")
        != selection["candidate_source_ref"]
    ):
        raise ValueError("SliceMetadataProbeCompiledSource")
    from slice_metadata_source_v2 import checked_sources

    source_binding, _ = checked_sources(
        refs, selection["candidate_source_ref"], require_parse=True
    )
    if (
        source_binding["baseline_checkpoint_ref"]
        != selection["baseline_checkpoint_ref"]
        or source_binding["baseline_result_ref"] != selection["baseline_result_ref"]
    ):
        raise ValueError("SliceMetadataProbeBaseline")
    dependencies = refs.read(compilers["candidate"]["dependencies_ref"])
    system = refs.read(dependencies["system_ref"])
    backend = Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("SliceMetadataProbeBackend")
    sdk = Path(analysis["sdk"])
    inventory = read(refs.verify(base_config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("SliceMetadataProbeSDKPath")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("SliceMetadataProbeSDKClosure")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("SliceMetadataProbeSDKLink")
    paths = {row["name"]: row["path"] for row in tools["patched_binaries"]}
    runtime_library_path = tools["environment"].get("LD_LIBRARY_PATH")
    if not isinstance(runtime_library_path, str) or not runtime_library_path:
        raise ValueError("SliceMetadataProbeMissingRustLibraries")
    rust_env = {
        **os.environ,
        **tools["environment"],
        "CARGO_TARGET_DIR": str(out / "target"),
        "CHARON_CACHE_DIR": str(out / "charon-cache"),
        "LD_LIBRARY_PATH": system["gmp_library_directory"]
        + os.pathsep
        + runtime_library_path,
        "OCAMLRUNPARAM": "d=1,o=10",
    }
    for key in ("RUSTC_WRAPPER", "RUSTC_WORKSPACE_WRAPPER", "LD_PRELOAD"):
        rust_env.pop(key, None)
    out.mkdir(parents=True)
    source = out / "slice_metadata.rs"
    source_bytes = refs.verify(selection["source_ref"]).read_bytes()
    write_once(source, source_bytes)
    commands = []

    def run(label, argv, *, env=rust_env, cwd=out, expected=0, seconds=300):
        row = run_logged_command(
            out / "commands" / label,
            argv,
            cwd=cwd,
            env=env,
            seconds=seconds,
            metadata=dict(label=label, expected_exit_code=expected),
        )
        commands.append(row)
        return row

    entry = out / "slice_entry.rs"
    entry_bytes = refs.verify(selection["entry_source_ref"]).read_bytes()
    write_once(entry, entry_bytes)
    dependency = out / "libcore036_slice_metadata.rlib"
    compilation = run(
        "compile-dependency",
        [
            paths["rustc"],
            "--crate-type=lib",
            "--edition=2024",
            "--crate-name=core036_slice_metadata",
            "-Copt-level=1",
            "-Ctarget-cpu=x86-64",
            "-Zalways-encode-mir=yes",
            "-Zmir-opt-level=3",
            "-o",
            str(dependency),
            str(source),
        ],
    )
    if (
        compilation["exit_code"] != 0
        or compilation["timed_out"]
        or not dependency.is_file()
    ):
        raise ValueError("SliceMetadataDependencyCompilation")
    dependency_hash = digest(dependency)
    llbc = out / "slice_metadata.llbc"
    extraction = run(
        "extract",
        [
            paths["charon"],
            "rustc",
            "--preset",
            "aeneas",
            "--sysroot",
            "default",
            "--include",
            "core036_slice_metadata",
            "--dest-file",
            str(llbc),
            "--",
            "--crate-type=lib",
            "--edition=2024",
            "--crate-name=core036_slice_entry",
            "--extern",
            "core036_slice_metadata=" + str(dependency),
            str(entry),
        ],
    )
    if extraction["exit_code"] != 0 or extraction["timed_out"]:
        raise ValueError("SliceMetadataProbeExtraction")
    ir_hash = digest(llbc)
    ir = read(llbc)
    witnesses = {}
    for row in ir["translated"]["fun_decls"]:
        if row is None:
            continue
        parts = row["item_meta"]["name"]
        name = parts[-1].get("Ident", [None])[0] if parts else None
        crate = parts[0].get("Ident", [None])[0] if parts else None
        if crate == "core036_slice_metadata" and name in FUNCTIONS:
            if name in witnesses:
                raise ValueError("SliceMetadataProbeDuplicateFunction")
            body = row.get("body")
            witnesses[name] = metadata_witnesses(body)
    if set(witnesses) != set(FUNCTIONS) or not all(witnesses.values()):
        write_once(
            out / "metadata-inventory.json",
            dict(
                witnesses=witnesses,
                qualifies_as_reproduction=False,
                reason="Every selected function must contain real PtrMetadata",
            ),
        )
        raise ValueError("SliceMetadataProbeNoRealMetadata")
    write_once(
        out / "metadata-inventory.json",
        dict(
            witnesses=witnesses,
            qualifies_as_reproduction=True,
            ir_sha256=ir_hash,
            original_ir_unmodified=True,
        ),
    )
    del ir
    outputs = {}
    for role in ("baseline", "candidate"):
        generated = out / (role + "-generated")
        generated.mkdir()
        compiler = compilers[role]
        version = run(role + "-version", [compiler["executable"], "-version"])
        if (
            version["exit_code"] != 0
            or (out / "commands" / (role + "-version") / "stdout.txt")
            .read_text()
            .strip()
            != compiler["version"]
        ):
            raise ValueError("SliceMetadataProbeVersion")
        result = run(
            role + "-translate",
            [
                compiler["executable"],
                "-backend",
                "lean",
                "-no-progress-bar",
                "-dest",
                str(generated),
                str(llbc),
            ],
            expected=1 if role == "baseline" else 0,
        )
        outputs[role] = result
        if result["timed_out"] or result["exit_code"] != result["expected_exit_code"]:
            raise ValueError("SliceMetadataProbeTranslation:" + role)
        if role == "baseline":
            log = (out / "commands/baseline-translate/stdout.txt").read_text()
            log += (out / "commands/baseline-translate/stderr.txt").read_text()
            validate_metadata_red(log)
    generated = list((out / "candidate-generated").glob("*.lean"))
    if len(generated) != 1:
        raise ValueError("SliceMetadataProbeGeneratedModules")
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    module = generated[0].stem
    generated_bytes = generated[0].read_bytes()
    if generated_bytes.count(b"Slice.len") < len(FUNCTIONS):
        raise ValueError("SliceMetadataProbeMissingLengthEquations")
    write_once(project / generated[0].name, generated_bytes)
    prelude = (
        f"module\npublic import {module}\n@[expose] public section\nopen Aeneas.Std\n"
    )
    proofs = prelude
    roots = []
    for name, typ in FUNCTIONS.items():
        binder = "(T : Type) (s : Slice T)" if typ is None else f"(s : Slice {typ})"
        call = (
            f"@core036_slice_entry.core036_slice_metadata.{name} T s"
            if typ is None
            else f"core036_slice_entry.core036_slice_metadata.{name} s"
        )
        statement = f"{binder} : {call} = Result.ok (Slice.len s)"
        proofs += f"theorem slice_{name} {statement} := by rfl\n"
        roots.append(
            dict(
                id="slice." + name,
                declaration="slice_" + name,
                expected_type=f"{binder.replace(') (', ') → (')} → {call} = Result.ok (Slice.len s)",
            )
        )
    proofs += """theorem slice_element_count (T : Type) (s : Slice T) :
  ∃ n, @core036_slice_entry.core036_slice_metadata.generic T s = Result.ok n ∧ n.val = s.val.length := by
  exact ⟨Slice.len s, slice_generic T s, Slice.len_val s⟩
"""
    roots.append(
        dict(
            id="slice.element_count",
            declaration="slice_element_count",
            expected_type="(T : Type) → (s : Slice T) → ∃ n, @core036_slice_entry.core036_slice_metadata.generic T s = Result.ok n ∧ n.val = s.val.length",
        )
    )
    # The independent Audit module does not inherit ProofRoot's open commands.
    for root in roots:
        for identifier in ("Slice", "U8", "U32", "Usize", "Result"):
            root["expected_type"] = root["expected_type"].replace(
                identifier, "Aeneas.Std." + identifier
            )
    write_once(project / "ProofRoot.lean", proofs.encode())
    lean_env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
        "GIT_OPTIONAL_LOCKS": "0",
        "MATHLIB_NO_CACHE_ON_UPDATE": "1",
        "GIT_CONFIG_NOSYSTEM": "1",
        "GIT_CONFIG_GLOBAL": os.devnull,
    }
    lean_env.pop("LD_PRELOAD", None)
    checked = check_declared_proof_v2(
        project=project,
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=lean_env,
        modules=[module, "ProofRoot"],
        roots=roots,
        expected_files={
            module: digest(project / generated[0].name),
            "ProofRoot": digest(project / "ProofRoot.lean"),
        },
        out=out / "declared-proof",
    )
    wrong = (
        prelude
        + """theorem wrong_length_plus_one (s : Slice U8) (h : s.val.length + 1 < 2 ^ UScalarTy.Usize.numBits) :
  core036_slice_entry.core036_slice_metadata.bytes s = Result.ok (Usize.ofNatCore (s.val.length + 1) h) := by rfl
"""
    )
    write_once(project / "Wrong.lean", wrong.encode())
    negative = run(
        "wrong-length-plus-one",
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
        env=lean_env,
        cwd=backend,
        expected=1,
    )
    if negative["exit_code"] != 1 or negative["timed_out"]:
        raise ValueError("SliceMetadataProbeWrongLengthAccepted")
    negative_log = (out / "commands/wrong-length-plus-one/stdout.txt").read_text() + (
        out / "commands/wrong-length-plus-one/stderr.txt"
    ).read_text()
    if "rfl" not in negative_log or any(
        word in negative_log
        for word in ("unexpected token", "Unknown identifier", "unknown identifier")
    ):
        raise ValueError("SliceMetadataProbeMalformedNegative")
    for compiler in compilers.values():
        if digest(compiler["executable"]) != compiler["executable_sha256"]:
            raise ValueError("SliceMetadataProbeCompilerChanged")
    if (
        digest(llbc) != ir_hash
        or source.read_bytes() != source_bytes
        or entry.read_bytes() != entry_bytes
        or digest(dependency) != dependency_hash
        or generated[0].read_bytes() != generated_bytes
    ):
        raise ValueError("SliceMetadataProbeInputsChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.slice-metadata-probe-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=selection_ref,
            commands=commands,
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            rust_source_ref=selection["source_ref"],
            entry_source_ref=selection["entry_source_ref"],
            dependency_sha256=dependency_hash,
            llbc_sha256=ir_hash,
            generated_sha256=digest(generated[0]),
            metadata_witnesses=witnesses,
            all_control_outcomes_matched=True,
            fresh_kernel="passed",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
            scope="Actual tiny source extraction and length equations only; no whole native I/O/Core correspondence",
        ),
    )
    return 0
