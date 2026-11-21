"""Prospective diagnostic of a genuine included stdlib Write default body.

Not selected or executed. This isolates extraction size; it neither replaces
the full native probe nor claims that every Write implementation uses a default.
"""

import json
import os

from artifact_io import RootRegistry, digest, write_once
from lean_command_v2 import run_logged_command
from llbc_inventory_v2 import body_inventory


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    if (
        set(selection)
        != {"format", "tools_ref", "baseline", "candidate", "entry_ref"}
        or selection["format"] != "core036.write-default-scoped-inputs.v2"
        or out != refs.roots["private"] / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("WriteDefaultScopedSelection")
    compilers = {}
    for role, expected in (("baseline", "a0383"), ("candidate", "a0406")):
        binding = selection[role]
        if set(binding) != {"checkpoint_ref", "compiler_ref"}:
            raise ValueError("WriteDefaultScopedCompilerBinding")
        cp_path = refs.verify(binding["checkpoint_ref"])
        RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
        cp, compiler = refs.read(binding["checkpoint_ref"]), refs.read(binding["compiler_ref"])
        if (
            cp["attempt_id"] != expected
            or cp["stage_outcome"] != "succeeded"
            or cp.get("source_validation_error") is not None
            or compiler["source_subject_ref"] != cp["source_subject_ref"]
            or refs.verify(binding["compiler_ref"])
            != refs.roots["private"] / "nonpos-translator" / expected / "result.json"
            or compiler.get("new_translator_compiled") is not True
            or compiler.get("compiled_sources_match_declared_repair") is not True
            or digest(compiler["executable"]) != compiler["executable_sha256"]
        ):
            raise ValueError("WriteDefaultScopedCompiler")
        compilers[role] = compiler
    config = refs.read(selection["tools_ref"])
    tools = refs.read(config["rust_ref"])
    if any(tools["statuses"].values()):
        raise ValueError("WriteDefaultScopedRustStatus")
    for row in tools["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("WriteDefaultScopedRustBinary")
    paths = {row["name"]: row["path"] for row in tools["patched_binaries"]}
    dependencies = refs.read(compilers["candidate"]["dependencies_ref"])
    system = refs.read(dependencies["system_ref"])
    env = {
        **os.environ,
        **tools["environment"],
        "LD_LIBRARY_PATH": system["gmp_library_directory"]
        + os.pathsep + tools["environment"]["LD_LIBRARY_PATH"],
        "OCAMLRUNPARAM": "d=1,o=10,v=0x400",
        "CARGO_TARGET_DIR": str(out / "target"),
        "CHARON_CACHE_DIR": str(out / "charon-cache"),
    }
    for key in ("LD_PRELOAD", "RUSTC_WRAPPER", "RUSTC_WORKSPACE_WRAPPER"):
        env.pop(key, None)
    out.mkdir(parents=True)
    entry = out / "entry.rs"
    write_once(entry, refs.verify(selection["entry_ref"]).read_bytes())
    entry_hash = digest(entry)
    commands = []

    def run(label, argv, seconds):
        row = run_logged_command(out / "commands" / label, argv, cwd=out,
                                 env=env, seconds=seconds, metadata=dict(label=label))
        commands.append(row)
        return row

    ir_path = out / "write_default.llbc"
    extraction = run("extract", [
        paths["charon"], "rustc", "--preset", "aeneas", "--sysroot", "default",
        "--include", "core::io::write::Write::write_all",
        "--dest-file", str(ir_path), "--", "--crate-type=lib", "--edition=2024",
        "--crate-name=core036_write_default_entry", str(entry)], 120)
    if extraction["exit_code"] != 0 or extraction["timed_out"]:
        raise ValueError("WriteDefaultScopedExtraction")
    if ir_path.stat().st_size > 16 * 1024**2:
        raise ValueError("WriteDefaultScopedIRBound")
    ir_hash = digest(ir_path)
    ir = json.loads(ir_path.read_text())
    requested = ["core", "io", "write", "Write", "write_all"]
    functions = [row for row in ir["translated"]["fun_decls"] if row is not None
                 and [part.get("Ident", [None])[0] for part in row["item_meta"]["name"]]
                 == requested]
    if len(functions) != 1 or "Structured" not in (functions[0].get("body") or {}):
        raise ValueError("WriteDefaultScopedMissingActualBody")
    function = functions[0]
    inventory = body_inventory(function["body"])
    write_once(out / "actual-default-inventory.json", {
        "function_id": function["def_id"], "item_meta": function["item_meta"],
        "signature": function["signature"], "body_inventory": inventory,
        "input_sha256": ir_hash, "source_is_copied_algorithm": False})
    outcomes = {}
    for role, compiler in compilers.items():
        version = run(role + "-version", [compiler["executable"], "-version"], 30)
        if (version["exit_code"] != 0 or version["timed_out"]
            or (out / "commands" / (role + "-version") / "stdout.txt").read_text().strip()
            != compiler["version"]):
            raise ValueError("WriteDefaultScopedVersion")
        generated = out / (role + "-generated")
        generated.mkdir()
        translation = run(role + "-translate", [compiler["executable"], "-backend", "lean",
            "-split-files", "-impl-namespace", "-no-progress-bar", "-sequential",
            "-max-recdepth", "8192", "-diagnose-translation", "-dest", str(generated),
            str(ir_path)], 120)
        log = "".join((out / "commands" / (role + "-translate") / name).read_text()
                      for name in ("stdout.txt", "stderr.txt"))
        outcomes[role] = dict(exit_code=translation["exit_code"],
            timed_out=translation["timed_out"],
            mutable_copy_diagnostic="Can't copy a mutable borrow" in log,
            generated=[dict(path=str(path.relative_to(out)), bytes=path.stat().st_size,
                            sha256=digest(path)) for path in sorted(generated.glob("*.lean"))])
        if digest(compiler["executable"]) != compiler["executable_sha256"]:
            raise ValueError("WriteDefaultScopedCompilerChanged")
    if digest(entry) != entry_hash or digest(ir_path) != ir_hash:
        raise ValueError("WriteDefaultScopedSourceChanged")
    write_once(out / "result.json", dict(
        format="core036.write-default-scoped-result.v2",
        source_subject_ref=declaration["source_subject_ref"], selection_ref=reference,
        input_sha256=ir_hash, source_sha256=entry_hash, commands=commands,
        actual_default_body=inventory, outcomes=outcomes,
        native_proof="unestablished", feature_complete=False,
        scope="Unmodified actual stdlib default in a separately extracted small caller; diagnostic only"))
    baseline, candidate = outcomes["baseline"], outcomes["candidate"]
    return 0 if (baseline["exit_code"] == 1 and not baseline["timed_out"]
                 and baseline["mutable_copy_diagnostic"]
                 and candidate["exit_code"] == 0 and not candidate["timed_out"]) else 1
