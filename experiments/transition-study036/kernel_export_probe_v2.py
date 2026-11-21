"""Prospective root-closure pilot; never replaces the default fresh checker."""

import copy
import gzip
import hashlib
import json
import os
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from check_proofs import theorem_audit_source_v2, validate_theorem_audit_v2
from kernel_export_v2 import validate_export
from lean_command_v2 import run_logged_command


def _encoded(rows):
    return ("\n".join(json.dumps(row) for row in rows) + "\n").encode()


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    if (
        set(selection)
        != {
            "format",
            "tools_ref",
            "checkpoint_ref",
            "positive_ref",
            "module_refs",
            "proof_contract_ref",
        }
        or selection["format"] != "core036.kernel-export-probe.v2"
        or out != refs.roots["private"] / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("KernelExportSelection")
    cp_path = refs.verify(selection["checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp, previous = (
        refs.read(selection["checkpoint_ref"]),
        refs.read(selection["positive_ref"]),
    )
    old = refs.roots["private"] / "ground-lean-probe/a0386"
    contract = refs.read(selection["proof_contract_ref"])
    if (
        set(contract) != {"format", "expected_roots"}
        or contract["format"] != "core036.kernel-export-expectations.v2"
        or cp["attempt_id"] != "a0386"
        or cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or refs.verify(selection["positive_ref"]) != old / "declared-proof/result.json"
        or previous["status"] != "proved_for_declared_subject"
        or previous["feature_native_status"] != "unestablished"
        or previous["expected_roots"] != contract["expected_roots"]
        or [r["label"] for r in previous["commands"]]
        != [
            "lean-UnitPositive",
            "lean-UnitMarker",
            "lean-UnitTuple",
            "lean-ProofRoot",
            "lean-Audit",
            "fresh-kernel",
        ]
        or any(
            type(r["exit_code"]) is not int or r["exit_code"] != 0
            for r in previous["commands"]
        )
    ):
        raise ValueError("KernelExportUncheckedComparison")
    roots = contract["expected_roots"]
    config = refs.read(selection["tools_ref"])
    analysis, cache = refs.read(config["lean_ref"]), refs.read(config["cache_ref"])
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("KernelExportToolStatus")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != refs.roots["private"] / "analysis-backend-build/a0058/lean":
        raise ValueError("KernelExportBackend")
    binaries = {Path(row["path"]).name: row for row in analysis["patched_binaries"]}
    for name in ("lean", "lake", "leanchecker", "leanexport"):
        if (
            name not in binaries
            or Path(binaries[name]["path"]) != sdk / "bin" / name
            or digest(binaries[name]["path"]) != binaries[name]["sha256"]
        ):
            raise ValueError("KernelExportBinary")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("KernelExportSDKPath")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("KernelExportSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("KernelExportSDKLink")
    modules = ["UnitPositive", "UnitMarker", "UnitTuple", "ProofRoot"]
    if set(selection["module_refs"]) != set(modules) or set(
        previous["source_sha256"]
    ) != set(modules):
        raise ValueError("KernelExportModules")
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    for module in modules:
        path = refs.verify(selection["module_refs"][module])
        if (
            path != old / "project" / (module + ".lean")
            or digest(path) != previous["source_sha256"][module]
        ):
            raise ValueError("KernelExportSourceBinding")
        write_once(project / path.name, path.read_bytes())
    audit = project / "Audit.lean"
    write_once(audit, theorem_audit_source_v2("ProofRoot", roots).encode())
    source_hashes = {p.name: digest(p) for p in project.glob("*.lean")}
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
    }
    env.pop("LD_PRELOAD", None)
    prefix = [str(sdk / "bin/lake"), "--no-build", "env"]
    commands = []

    def run(label, argv, expected=0):
        row = run_logged_command(
            out / "commands" / label,
            argv,
            cwd=backend,
            env=env,
            seconds=300,
            metadata=dict(label=label, expected_exit_code=expected),
        )
        commands.append(row)
        if row["exit_code"] != expected or row["timed_out"]:
            raise ValueError("KernelExportCommand:" + label)
        return row

    for name in [*modules, "Audit"]:
        run(
            "lean-" + name,
            [
                *prefix,
                str(sdk / "bin/lean"),
                "-j1",
                "-s131072",
                "-M4096",
                "-R",
                str(project),
                "-o",
                str(compiled / (name + ".olean")),
                str(project / (name + ".lean")),
            ],
        )
    audit_rows = [
        json.loads(line.removeprefix("CORE036_PROOF_AUDIT "))
        for line in (out / "commands/lean-Audit/stdout.txt").read_text().splitlines()
        if line.startswith("CORE036_PROOF_AUDIT ")
    ]
    if len(audit_rows) != 1:
        raise ValueError("KernelExportAuditOutput")
    validate_theorem_audit_v2(audit_rows[0], roots)
    compiled_hashes = {p.name: digest(p) for p in compiled.iterdir() if p.is_file()}
    exported = run(
        "export-roots",
        [
            *prefix,
            str(sdk / "bin/leanexport"),
            "ProofRoot",
            "--",
            *[r["declaration"] for r in roots],
        ],
    )
    export_path = out / "commands/export-roots/stdout.txt"
    if digest(export_path) != exported["stdout_sha256"]:
        raise ValueError("KernelExportOutputChanged")
    raw = export_path.read_bytes()
    policy = validate_export(raw, roots)
    run(
        "empty-kernel",
        [*prefix, str(sdk / "bin/leanchecker"), "--from-export", str(export_path)],
    )

    # These are explicit mutated exports, never edits to the positive sources.
    objects = [json.loads(line) for line in raw.decode().splitlines()]
    first_root = policy["root_line_indices"][roots[0]["declaration"]]
    root_info = objects[first_root]["thm"]
    names = {0: ()}
    for row in objects[1:]:
        if "in" in row:
            kind = "str" if "str" in row else "num"
            data = row[kind]
            names[row["in"]] = (
                *names[data["pre"]],
                (kind, data["str" if kind == "str" else "i"]),
            )
    cases = {}
    cases["metadata-only"] = ([objects[0]], "policy", 0)
    cases["missing-root"] = (
        [row for i, row in enumerate(objects) if i != first_root],
        "policy",
        0,
    )
    assumed = copy.deepcopy(objects)
    assumed[first_root] = {
        "axiom": {k: root_info[k] for k in ("name", "levelParams", "type")}
        | {"isUnsafe": False}
    }
    cases["root-as-axiom"] = (assumed, "policy", 0)
    new_id = max(names) + 1
    extra_name = {
        "in": new_id,
        "str": {"pre": 0, "str": "core036_unchecked_export_dependency"},
    }
    cases["extra-axiom"] = (
        [
            *objects,
            extra_name,
            {
                "axiom": {
                    "name": new_id,
                    "levelParams": [],
                    "type": root_info["type"],
                    "isUnsafe": False,
                }
            },
        ],
        "policy",
        0,
    )
    model_def = next((row["def"] for row in objects if "def" in row), None)
    if model_def is None:
        raise ValueError("KernelExportMissingDefinitionControl")
    for safety in ("unsafe", "partial"):
        definition = {**model_def, "name": new_id, "safety": safety}
        cases["unused-" + safety] = (
            [*objects, extra_name, {"def": definition}],
            "policy",
            0,
        )
    eq_name = (("str", "Eq"),)
    eq_groups = [
        i
        for i, row in enumerate(objects)
        if "inductive" in row
        and any(names[info["name"]] == eq_name for info in row["inductive"]["types"])
    ]
    if len(eq_groups) != 1:
        raise ValueError("KernelExportMissingEqControl")
    cases["missing-equality-dependency"] = (
        [row for i, row in enumerate(objects) if i != eq_groups[0]],
        "kernel",
        1,
    )
    nat_types = [
        row["ie"]
        for row in objects
        if "ie" in row
        and "const" in row
        and names[row["const"]["name"]] == (("str", "Nat"),)
    ]
    if not nat_types:
        raise ValueError("KernelExportMissingNatTypeControl")
    wrong_type = copy.deepcopy(objects)
    wrong_type[first_root]["thm"]["type"] = nat_types[0]
    cases["incompatible-root-type"] = (wrong_type, "kernel", 1)
    # Policy-refused inputs stop before kernel execution in the accepting path.
    # Retain their exact bytes losslessly without eight raw export copies.
    prepared = {}
    for name, (data, rejection, expected) in cases.items():
        mutation = _encoded(data)
        packed = gzip.compress(mutation, mtime=0)
        if gzip.decompress(packed) != mutation:
            raise ValueError("KernelExportRetentionRoundtrip")
        prepared[name] = (mutation, packed, rejection, expected)
    planned_retained_bytes = len(raw) + sum(
        len(packed)
        + (len(mutation) if rejection == "kernel" or name == "metadata-only" else 0)
        for name, (mutation, packed, rejection, _) in prepared.items()
    )
    if planned_retained_bytes > 32 * 1024**2:
        raise ValueError("KernelExportPilotRetentionCapacity")
    controls = []
    mutants = out / "mutants"
    mutants.mkdir()
    for name, (mutation, packed, rejection, expected) in prepared.items():
        path = mutants / (name + ".ndjson")
        packed_path = mutants / (name + ".ndjson.gz")
        write_once(packed_path, packed)
        error = None
        try:
            validate_export(mutation, roots)
        except ValueError as exc:
            error = str(exc)
        if (rejection == "policy") != (error is not None):
            raise ValueError("KernelExportWrongPolicyControl:" + name)
        actual_exit = None
        if rejection == "kernel" or name == "metadata-only":
            write_once(path, mutation)
            run(
                name,
                [*prefix, str(sdk / "bin/leanchecker"), "--from-export", str(path)],
                expected,
            )
            actual_exit = expected
        if rejection == "kernel":
            log = (out / "commands" / name / "stdout.txt").read_text()
            if "Lean default kernel rejects the solution:" not in log:
                raise ValueError("KernelExportMalformedKernelControl:" + name)
        controls.append(
            dict(
                id=name,
                rejection_layer=rejection,
                policy_error=error,
                actual_kernel_exit=actual_exit,
                kernel_execution="executed"
                if actual_exit is not None
                else "not_run_policy_refused",
                mutated_export_bytes=len(mutation),
                mutated_export_sha256=hashlib.sha256(mutation).hexdigest(),
                retained_gzip_bytes=len(packed),
                retained_gzip_sha256=digest(packed_path),
            )
        )
    if (
        digest(export_path) != exported["stdout_sha256"]
        or any(
            digest(project / name) != checksum
            for name, checksum in source_hashes.items()
        )
        or any(
            digest(compiled / name) != checksum
            for name, checksum in compiled_hashes.items()
        )
    ):
        raise ValueError("KernelExportSubjectChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.kernel-export-probe-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            comparison_full_fresh_proof_ref=selection["positive_ref"],
            commands=commands,
            expected_roots=roots,
            audit=audit_rows[0],
            export_sha256=digest(export_path),
            source_sha256=source_hashes,
            compiled_sha256=compiled_hashes,
            policy=policy,
            controls=controls,
            planned_retained_bytes=planned_retained_bytes,
            pilot_retained_byte_bound=32 * 1024**2,
            selected_root_empty_kernel="passed",
            all_imported_constants_rechecked=False,
            default_checker_changed=False,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
