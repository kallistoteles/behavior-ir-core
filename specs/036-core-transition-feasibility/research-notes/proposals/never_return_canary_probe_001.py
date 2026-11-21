"""UNSELECTED prospective static-Never compiler canary, not a native proof.

Keep the actual opaque call in the generated monadic program; check the same
safe source's observable stop count with both pinned Rust compilers. No Lean
model/admission or complete Core equivalence is inferred from these controls.
"""

import json
import os
import re

from artifact_io import RootRegistry, digest, write_once
from lean_command_v2 import run_logged_command
from llbc_inventory_v2 import body_inventory
from never_return_source_v2 import checked_sources


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    required = {"format", "tools_ref", "native_tools_ref", "baseline", "candidate",
                "source_ref", "dependency_ref", "entry_ref", "harness_ref"}
    private = refs.roots["private"]
    if (set(selection) != required
        or selection["format"] != "core036.never-return-canary.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()):
        raise ValueError("NeverCanarySelection")
    checked_sources(refs, selection["source_ref"], require_parse=True)
    compilers = {}
    for role, expected in (("baseline", "a0406"), ("candidate", "a0417")):
        row = selection[role]
        if set(row) != {"checkpoint_ref", "compiler_ref"}:
            raise ValueError("NeverCanaryCompilerBinding")
        path = refs.verify(row["checkpoint_ref"])
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
        cp, compiler = refs.read(row["checkpoint_ref"]), refs.read(row["compiler_ref"])
        if (cp["attempt_id"] != expected or cp["stage_outcome"] != "succeeded"
            or cp.get("source_validation_error") is not None
            or compiler["source_subject_ref"] != cp["source_subject_ref"]
            or refs.verify(row["compiler_ref"])
            != private / "nonpos-translator" / expected / "result.json"
            or compiler.get("new_translator_compiled") is not True
            or compiler.get("compiled_sources_match_declared_repair") is not True
            or digest(compiler["executable"]) != compiler["executable_sha256"]):
            raise ValueError("NeverCanaryCompiler")
        compilers[role] = compiler
    if compilers["candidate"].get("never_return_binding_ref") != selection["source_ref"]:
        raise ValueError("NeverCanaryDifferentRepair")
    config = refs.read(selection["tools_ref"])
    rust = refs.read(config["rust_ref"])
    if any(rust["statuses"].values()):
        raise ValueError("NeverCanaryRustStatus")
    for row in rust["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("NeverCanaryAnalysisTool")
    paths = {row["name"]: row["path"] for row in rust["patched_binaries"]}
    native = refs.read(selection["native_tools_ref"])["tools"]
    for name in ("rustc", "cc"):
        if digest(native[name]["path"]) != native[name]["sha256"]:
            raise ValueError("NeverCanaryNativeTool")
    dependencies = refs.read(compilers["candidate"]["dependencies_ref"])
    system = refs.read(dependencies["system_ref"])
    analysis_env = {**os.environ, **rust["environment"]}
    translation_env = {**analysis_env, "CI": "1",
        "LD_LIBRARY_PATH": system["gmp_library_directory"] + os.pathsep
        + rust["environment"]["LD_LIBRARY_PATH"], "OCAMLRUNPARAM": "d=1,o=10"}
    native_env = {**os.environ, "CI": "1"}
    for env in (analysis_env, translation_env, native_env):
        for key in ("LD_PRELOAD", "RUSTC_WRAPPER", "RUSTC_WORKSPACE_WRAPPER"):
            env.pop(key, None)
    out.mkdir(parents=True)
    sources = {}
    for key, name in (("dependency_ref", "dependency.rs"), ("entry_ref", "entry.rs"),
                      ("harness_ref", "harness.rs")):
        write_once(out / name, refs.verify(selection[key]).read_bytes())
        sources[name] = digest(out / name)
    commands = []

    def run(label, argv, env, expected=0):
        row = run_logged_command(out / "commands" / label, argv, cwd=out, env=env,
                                 seconds=120, metadata=dict(label=label, expected_exit=expected))
        commands.append(row)
        if row["timed_out"] or row["exit_code"] != expected:
            raise ValueError("NeverCanaryCommand:" + label)
        return row

    libraries = {}
    for label, compiler, env in (("analysis", paths["rustc"], analysis_env),
                                 ("native198", native["rustc"]["path"], native_env)):
        folder = out / label
        folder.mkdir()
        library, harness = folder / "libcore036_never_dependency.rlib", folder / "harness"
        run(label + "-version", [compiler, "--version"], env)
        run(label + "-dependency", [compiler, "--crate-type=lib", "--edition=2024",
            "--crate-name=core036_never_dependency", "-Copt-level=1", "-Ctarget-cpu=x86-64",
            *(["-Zalways-encode-mir=yes", "-Zmir-opt-level=3"] if label == "analysis" else []),
            "-o", str(library), str(out / "dependency.rs")], env)
        run(label + "-harness-build", [compiler, "--edition=2024",
            "--crate-name=core036_never_harness", "-Ctarget-cpu=x86-64",
            "-Clinker=" + native["cc"]["path"],
            *(["-Clink-arg=-fuse-ld=bfd"] if label == "analysis" else []),
            "--extern", "core036_never_dependency=" + str(library),
            "-o", str(harness), str(out / "harness.rs")], env)
        run(label + "-harness-run", [str(harness)], env)
        if (out / "commands" / (label + "-harness-run") / "stdout.txt").read_text().strip() != "CORE036_NEVER_NATIVE_CONTROLS_OK":
            raise ValueError("NeverCanaryHarnessMarker")
        libraries[label] = dict(path=str(library), sha256=digest(library))
    ir_path = out / "never_call.llbc"
    run("extract", [paths["charon"], "rustc", "--preset", "aeneas", "--sysroot", "default",
        "--include", "core036_never_dependency::remaining", "--opaque", "core036_never_dependency::stop",
        "--dest-file", str(ir_path), "--", "--crate-type=lib", "--edition=2024",
        "--crate-name=core036_never_entry", "--extern",
        "core036_never_dependency=" + libraries["analysis"]["path"], str(out / "entry.rs")], translation_env)
    if ir_path.stat().st_size > 4 * 1024**2:
        raise ValueError("NeverCanaryIRBound")
    ir_hash = digest(ir_path)
    ir = json.loads(ir_path.read_text())

    def named(function, name):
        return function is not None and [part.get("Ident", [None])[0]
            for part in function["item_meta"]["name"]] == ["core036_never_dependency", name]

    remaining = [f for f in ir["translated"]["fun_decls"] if named(f, "remaining")]
    stop = [f for f in ir["translated"]["fun_decls"] if named(f, "stop")]
    if len(remaining) != 1 or len(stop) != 1 or "Structured" not in (remaining[0].get("body") or {}) or stop[0].get("body") != "Opaque":
        raise ValueError("NeverCanaryActualSourceBoundary")
    scalar = {"Scalar": {"Integer": {"Unsigned": "Usize"}}}
    type_labels = {}

    def collect_types(node):
        if isinstance(node, dict):
            value = node.get("Value")
            if isinstance(value, list) and len(value) == 2 and type(value[0]) is int:
                label = "never" if value[1] == "Never" else "usize" if value[1] == scalar else None
                if label is not None:
                    if value[0] in type_labels and type_labels[value[0]] != label:
                        raise ValueError("NeverCanaryAmbiguousType")
                    type_labels[value[0]] = label
            for child in node.values():
                collect_types(child)
        elif isinstance(node, list):
            for child in node:
                collect_types(child)

    collect_types(ir)

    def label(ty):
        if ty == "Never":
            return "never"
        if ty == scalar:
            return "usize"
        if isinstance(ty, dict) and set(ty) == {"Deduplicated"}:
            return type_labels.get(ty["Deduplicated"])
        if isinstance(ty, dict) and set(ty) == {"Value"}:
            return label(ty["Value"][1])
        return None

    remaining_sig, stop_sig = remaining[0]["signature"], stop[0]["signature"]
    if (label(remaining_sig["output"]) != "usize"
        or [label(ty) for ty in remaining_sig["inputs"]] != ["usize", "usize"]
        or label(stop_sig["output"]) != "never"
        or [label(ty) for ty in stop_sig["inputs"]] != ["usize"] * 3
        or any(sig["is_unsafe"] or sig["is_variadic"] or sig["abi"] != "Rust"
               for sig in (remaining_sig, stop_sig))):
        raise ValueError("NeverCanarySignature")
    inventory = body_inventory(remaining[0]["body"])
    calls = [site for site in inventory["call_sites"] if site["direct_function_id"] == stop[0]["def_id"]]
    if len(calls) != 1:
        raise ValueError("NeverCanaryMissingStopCall")
    args = calls[0]["call"]["args"]
    if [list(arg) for arg in args] != [["Move"], ["Copy"], ["Move"]]:
        raise ValueError("NeverCanaryWrongMovedArguments")
    write_once(out / "canary-inventory.json", dict(remaining=remaining[0]["signature"],
        stop=stop[0]["signature"], body=inventory, input_sha256=ir_hash))
    outcomes = {}
    for role, compiler in compilers.items():
        run(role + "-version", [compiler["executable"], "-version"], translation_env)
        if (out / "commands" / (role + "-version") / "stdout.txt").read_text().strip() != compiler["version"]:
            raise ValueError("NeverCanaryCompilerVersion")
        destination = out / (role + "-generated") / "NeverCall"
        destination.mkdir(parents=True)
        row = run(role + "-translate", [compiler["executable"], "-backend", "lean",
            "-split-files", "-impl-namespace", "-sequential", "-no-progress-bar",
            "-dest", str(destination), str(ir_path)], translation_env, 1 if role == "baseline" else 0)
        log = "".join((out / "commands" / (role + "-translate") / name).read_text()
                      for name in ("stdout.txt", "stderr.txt"))
        if role == "baseline" and ("There should be no bottoms in the value" not in log
                                   or "core036_never_dependency::remaining" not in log):
            raise ValueError("NeverCanaryWrongBaselineRed")
        outcomes[role] = dict(exit_code=row["exit_code"], files=[dict(
            path=str(path.relative_to(out)), bytes=path.stat().st_size, sha256=digest(path))
            for path in sorted(destination.glob("*.lean"))])
        if role == "candidate":
            functions = (destination / "Funs.lean").read_text()
            if any(token in functions for token in ("sorry", "axiom ")) or not re.search(
                r"let\s+_\s*←\s+(?:[A-Za-z0-9_]+\.)*core036_never_dependency\.stop\b", functions):
                raise ValueError("NeverCanaryMonadicCallNotPreserved")
    if (digest(ir_path) != ir_hash or any(digest(out / name) != h for name, h in sources.items())
        or any(digest(c["executable"]) != c["executable_sha256"] for c in compilers.values())
        or any(digest(row["path"]) != row["sha256"] for row in libraries.values())):
        raise ValueError("NeverCanarySourceChanged")
    write_once(out / "result.json", dict(format="core036.never-return-canary-result.v2",
        source_subject_ref=declaration["source_subject_ref"], selection_ref=reference,
        commands=commands, input_sha256=ir_hash, source_sha256=sources, outcomes=outcomes,
        cross_compiler_harness="both_passed", generated_monadic_stop_call="retained",
        lean_typecheck="not_run", source_model_admission="unestablished",
        native_proof="unestablished", feature_complete=False,
        scope="Actual source/compiler representability and finite observable-stop controls only"))
    return 0
