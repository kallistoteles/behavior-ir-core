"""Reproduce a nonlocal optimized Read-self failure before changing semantics."""

import json
import os

from artifact_io import RootRegistry, digest, write_once
from lean_command_v2 import run_logged_command
from llbc_inventory_v2 import body_inventory


def _reference_types(value):
    result = {}

    def walk(node):
        if isinstance(node, dict):
            item = node.get("Value")
            if (
                isinstance(item, list)
                and len(item) == 2
                and type(item[0]) is int
                and isinstance(item[1], dict)
                and set(item[1]) == {"Ref"}
            ):
                if item[0] in result and result[item[0]] != item[1]:
                    raise ValueError("MutableReadAmbiguousReferenceType")
                result[item[0]] = item[1]
            for child in node.values():
                walk(child)
        elif isinstance(node, list):
            for child in node:
                walk(child)

    walk(value)
    return result


def read_self_witness(ir):
    references = _reference_types(ir)

    def mutable_reference(ty):
        if isinstance(ty, dict) and set(ty) == {"Value"}:
            ty = ty["Value"][1]
        elif isinstance(ty, dict) and set(ty) == {"Deduplicated"}:
            ty = references.get(ty["Deduplicated"])
        return (
            isinstance(ty, dict)
            and set(ty) == {"Ref"}
            and len(ty["Ref"]) == 3
            and ty["Ref"][2] == "Mut"
        )

    selected = []
    for function in ir["translated"]["fun_decls"]:
        if function is None:
            continue
        parts = [part.get("Ident", [None])[0] for part in function["item_meta"]["name"]]
        if (
            parts[0] == "core036_read_dependency"
            and parts[-1] == "twice"
            and "Step" in parts
        ):
            selected.append(function)
    if len(selected) != 1:
        raise ValueError("MutableReadMissingActualDefault")
    function = selected[0]
    signature = function["signature"]
    if len(signature["inputs"]) != 1 or not mutable_reference(signature["inputs"][0]):
        raise ValueError("MutableReadReceiverSignature")
    body = function.get("body")
    if not isinstance(body, dict) or "Structured" not in body:
        raise ValueError("MutableReadDefaultOpaque")
    locals_ = body["Structured"]["locals"]
    receiver = [row for row in locals_["locals"] if row["index"] == 1]
    if (
        locals_["arg_count"] != 1
        or len(receiver) != 1
        or receiver[0]["name"] != "self"
        or not mutable_reference(receiver[0]["ty"])
    ):
        raise ValueError("MutableReadReceiverLocal")
    inventory = body_inventory(body)
    calls = []
    receiver_kinds = []
    for site in inventory["call_sites"]:
        args = site["call"].get("args", [])
        if args and isinstance(args[0], dict) and set(args[0]) in ({"Read"}, {"Move"}):
            kind = next(iter(args[0]))
            place = args[0][kind]
            if place.get("kind") == {"Local": 1} and mutable_reference(place.get("ty")):
                calls.append(site)
                receiver_kinds.append(kind)
    if len(calls) != 2 or receiver_kinds != ["Read", "Move"]:
        raise ValueError("MutableReadMissingReadThenFinalMove")
    return dict(
        function_id=function["def_id"],
        signature=signature,
        receiver_local=receiver[0],
        body_sha256=inventory["body_sha256"],
        read_self_calls=calls[:1],
        final_move_self_call=calls[1],
        receiver_use_pattern="read_then_final_move",
        qualifies_as_reproduction=True,
        producer_is_a_reborrow_marker=False,
    )


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    if (
        set(selection)
        != {
            "format",
            "tools_ref",
            "checkpoint_ref",
            "compiler_ref",
            "dependency_ref",
            "entry_ref",
            "alias_rejected_ref",
            "receiver_use_pattern",
        }
        or selection["format"] != "core036.mutable-read-reproduction.v2"
        or selection["receiver_use_pattern"] != "read_then_final_move"
        or out != refs.roots["private"] / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("MutableReadSelection")
    cp_path = refs.verify(selection["checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp, compiler = (
        refs.read(selection["checkpoint_ref"]),
        refs.read(selection["compiler_ref"]),
    )
    if (
        cp["attempt_id"] != "a0383"
        or cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or refs.verify(selection["compiler_ref"])
        != refs.roots["private"] / "nonpos-translator/a0383/result.json"
        or compiler["source_subject_ref"] != cp["source_subject_ref"]
        or compiler["new_translator_compiled"] is not True
        or compiler["compiled_sources_match_declared_repair"] is not True
        or digest(compiler["executable"]) != compiler["executable_sha256"]
    ):
        raise ValueError("MutableReadCompiler")
    config = refs.read(selection["tools_ref"])
    tools = refs.read(config["rust_ref"])
    if any(tools["statuses"].values()):
        raise ValueError("MutableReadRustStatus")
    for row in tools["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("MutableReadRustBinary")
    paths = {row["name"]: row["path"] for row in tools["patched_binaries"]}
    dependencies = refs.read(compiler["dependencies_ref"])
    system = refs.read(dependencies["system_ref"])
    library_path = tools["environment"].get("LD_LIBRARY_PATH")
    if not isinstance(library_path, str) or not library_path:
        raise ValueError("MutableReadRustLibraries")
    env = {
        **os.environ,
        **tools["environment"],
        "LD_LIBRARY_PATH": system["gmp_library_directory"] + os.pathsep + library_path,
        "OCAMLRUNPARAM": "d=1,o=10",
        "CARGO_TARGET_DIR": str(out / "target"),
        "CHARON_CACHE_DIR": str(out / "charon-cache"),
    }
    for key in ("LD_PRELOAD", "RUSTC_WRAPPER", "RUSTC_WORKSPACE_WRAPPER"):
        env.pop(key, None)
    out.mkdir(parents=True)
    sources = {}
    for key, name in (
        ("dependency_ref", "dependency.rs"),
        ("entry_ref", "entry.rs"),
        ("alias_rejected_ref", "alias.rs"),
    ):
        path = out / name
        write_once(path, refs.verify(selection[key]).read_bytes())
        sources[name] = digest(path)
    commands = []

    def run(label, argv, expected=0):
        row = run_logged_command(
            out / "commands" / label,
            argv,
            cwd=out,
            env=env,
            seconds=300,
            metadata=dict(label=label, expected_exit_code=expected),
        )
        commands.append(row)
        if row["exit_code"] != expected or row["timed_out"]:
            raise ValueError("MutableReadCommand:" + label)
        return row

    dependency = out / "libcore036_read_dependency.rlib"
    run(
        "compile-dependency",
        [
            paths["rustc"],
            "--crate-type=lib",
            "--edition=2024",
            "--crate-name=core036_read_dependency",
            "-Copt-level=1",
            "-Ctarget-cpu=x86-64",
            "-Zalways-encode-mir=yes",
            "-Zmir-opt-level=3",
            "-o",
            str(dependency),
            str(out / "dependency.rs"),
        ],
    )
    dependency_hash = digest(dependency)
    run(
        "reject-source-alias",
        [
            paths["rustc"],
            "--crate-type=lib",
            "--edition=2024",
            "--crate-name=core036_alias_rejected",
            "-o",
            str(out / "forbidden.rlib"),
            str(out / "alias.rs"),
        ],
        1,
    )
    if (
        "E0506" not in (out / "commands/reject-source-alias/stderr.txt").read_text()
        or (out / "forbidden.rlib").exists()
    ):
        raise ValueError("MutableReadMalformedAliasControl")
    llbc = out / "mutable_read.llbc"
    run(
        "extract",
        [
            paths["charon"],
            "rustc",
            "--preset",
            "aeneas",
            "--sysroot",
            "default",
            "--include",
            "core036_read_dependency",
            "--dest-file",
            str(llbc),
            "--",
            "--crate-type=lib",
            "--edition=2024",
            "--crate-name=core036_read_entry",
            "--extern",
            "core036_read_dependency=" + str(dependency),
            str(out / "entry.rs"),
        ],
    )
    ir_hash = digest(llbc)
    witness = read_self_witness(json.loads(llbc.read_text()))
    write_once(out / "read-self-inventory.json", witness)
    run("baseline-version", [compiler["executable"], "-version"])
    if (out / "commands/baseline-version/stdout.txt").read_text().strip() != compiler[
        "version"
    ]:
        raise ValueError("MutableReadCompilerVersion")
    generated = out / "baseline-generated"
    generated.mkdir()
    run(
        "baseline-translate",
        [
            compiler["executable"],
            "-backend",
            "lean",
            "-no-progress-bar",
            "-dest",
            str(generated),
            str(llbc),
        ],
        1,
    )
    log = "".join(
        (out / "commands/baseline-translate" / name).read_text()
        for name in ("stdout.txt", "stderr.txt")
    )
    if (
        "Can't copy a mutable borrow" not in log
        or "core036_read_dependency::Step::twice" not in log
    ):
        raise ValueError("MutableReadWrongBaselineFailure")
    if (
        digest(llbc) != ir_hash
        or digest(dependency) != dependency_hash
        or digest(compiler["executable"]) != compiler["executable_sha256"]
        or any(digest(out / name) != checksum for name, checksum in sources.items())
    ):
        raise ValueError("MutableReadSubjectChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.mutable-read-reproduction-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            commands=commands,
            input_sha256=ir_hash,
            dependency_sha256=dependency_hash,
            source_sha256=sources,
            witness=witness,
            status="reproduced_old_source_failure",
            source_alias_control="rejected_E0506",
            candidate_repair="not_implemented",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
