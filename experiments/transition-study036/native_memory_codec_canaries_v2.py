"""Real source-program, bridge-type and forbidden-axiom rejection controls."""

import copy

from native_memory_codec_context_v2 import memory_codec_roots
from native_string_memory_context_v2 import memory_source_roots
from native_string_memory_canaries_v2 import (
    memory_canary_projects,
    memory_mutant_witness,
    validate_memory_canary_rejection,
)


def memory_codec_canary_projects(files, roots):
    if roots != memory_codec_roots() or "NativeMemoryCodecBridge" not in files:
        raise ValueError("MemoryCodecCanaryContext")
    cases = memory_canary_projects(files, memory_source_roots())
    mutant, _, label = cases["source"]
    cases["source"] = (mutant, copy.deepcopy(roots), label)
    wrong = copy.deepcopy(roots)
    wrong[0]["expected_type"] = "Aeneas.Std.Usize.max = 0"
    cases["type"] = (dict(files), wrong, "lean-Audit")
    return cases


def memory_codec_mutant_witness(files, roots):
    if roots != memory_codec_roots():
        raise ValueError("MemoryCodecWitnessRoots")
    # This separate source witness does not import the positive theorem or
    # the bridge that depends on it. Never count it as a fifth bridge root.
    names = [
        "NativeStringBorrow",
        "NativeStringMemoryModel",
        "NativeStringDerefProgram",
        "NativeStringMemoryProofs",
        "ProofRoot",
    ]
    return memory_mutant_witness(
        {name: files[name] for name in names}, memory_source_roots()
    )


def run_memory_codec_canaries(*, files, roots, sdk, backend, env, out):
    import json
    from pathlib import Path
    from artifact_io import digest, write_once
    from check_proofs import check_declared_proof_v2

    out = Path(out)
    out.mkdir(parents=True, exist_ok=False)

    def invocation(name, project_files, project_roots):
        base = out / name
        project, compiled = base / "project", base / "compiled"
        project.mkdir(parents=True, exist_ok=False)
        compiled.mkdir()
        for module, data in project_files.items():
            path = project / (module.replace(".", "/") + ".lean")
            path.parent.mkdir(parents=True, exist_ok=True)
            write_once(path, data)
        args = dict(
            project=project,
            compiled=compiled,
            sdk=sdk,
            backend=backend,
            env={**env, "LEAN_PATH": str(compiled)},
            modules=list(project_files),
            roots=project_roots,
            expected_files={
                name: digest(project / (name.replace(".", "/") + ".lean"))
                for name in project_files
            },
            out=base / "checked",
            kernel_mode="selected-root-export-v1",
        )
        write_once(
            base / "intent.json",
            {
                "expected_roots": project_roots,
                "source_sha256": args["expected_files"],
                "native_proof": "unestablished",
                "feature_complete": False,
            },
        )
        return base, args

    reports = []
    for kind, (mutant, expected, label) in memory_codec_canary_projects(
        files, roots
    ).items():
        base, args = invocation(kind, mutant, expected)
        try:
            check_declared_proof_v2(**args)
        except ValueError as error:
            if str(error) != "DeclaredProofCommand:" + label:
                raise
        else:
            raise ValueError("StringMemoryCanaryUnexpectedAcceptance:" + kind)
        checked = base / "checked"
        labels = ["lean-" + name.replace(".", "-") for name in mutant] + ["lean-Audit"]
        for prior in labels[: labels.index(label)]:
            if (
                json.loads((checked / prior / "result.json").read_text())["exit_code"]
                != 0
            ):
                raise ValueError("StringMemoryCanaryEarlierFailure")
        failed = checked / label
        validate_memory_canary_rejection(
            kind,
            json.loads((failed / "result.json").read_text()),
            (failed / "stdout.txt").read_text(),
            (failed / "stderr.txt").read_text(),
        )
        for name, expected_digest in args["expected_files"].items():
            if (
                digest(args["project"] / (name.replace(".", "/") + ".lean"))
                != expected_digest
            ):
                raise ValueError("StringMemoryCanaryChangedAfter")
        reports.append(
            {
                "kind": kind,
                "rejected_at": label,
                "failure_result_sha256": digest(failed / "result.json"),
            }
        )
    witness, witness_roots = memory_codec_mutant_witness(files, roots)
    base, args = invocation("mutant-witness", witness, witness_roots)
    checked = check_declared_proof_v2(**args)
    if checked["status"] != "proved_for_declared_subject":
        raise ValueError("StringMemoryCanaryWitnessUnproved")
    result = {
        "format": "core036.memory-codec-proof-canaries.v2",
        "rejections": reports,
        "witness_result_sha256": digest(base / "checked/result.json"),
        "scope": "source_memory_codec_coherence_controls_only",
        "native_proof": "unestablished",
        "runtime_totality_established": False,
        "feature_complete": False,
    }
    write_once(out / "result.json", result)
    return result
