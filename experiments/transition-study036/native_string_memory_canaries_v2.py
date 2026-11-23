"""Fresh source-program/type/axiom controls for the memory interpretation only."""

import copy
import re


def memory_canary_projects(files, roots):
    required = {"NativeStringDerefProgram", "NativeStringMemoryProofs", "ProofRoot"}
    if not required <= files.keys() or len(roots) != 5:
        raise ValueError("StringMemoryCanaryContext")
    site = b".copy 5 1 [.deref, .field 0, .field 1]"
    if files["NativeStringDerefProgram"].count(site) != 1:
        raise ValueError("StringMemoryCanaryLengthRead")
    mutant = dict(files)
    mutant["NativeStringDerefProgram"] = mutant["NativeStringDerefProgram"].replace(
        site, b".copy 5 1 [.deref, .field 0, .field 0]", 1
    )
    wrong = copy.deepcopy(roots)
    if wrong[0]["id"] != "string_memory.word_limit":
        raise ValueError("StringMemoryCanaryRoot")
    wrong[0]["expected_type"] = "Aeneas.Std.Usize.max = 0"
    axiom = dict(files)
    axiom["ProofRoot"] += (
        b"\naxiom core036MemoryInjected : False\n"
        b"theorem core036MemoryInjectedTheorem : False := core036MemoryInjected\n"
    )
    return {
        "source": (mutant, copy.deepcopy(roots), "lean-NativeStringMemoryProofs"),
        "type": (dict(files), wrong, "lean-Audit"),
        "axiom": (
            axiom,
            [
                {
                    "id": "string_memory_canary.injected",
                    "declaration": "core036MemoryInjectedTheorem",
                    "expected_type": "False",
                }
            ],
            "lean-Audit",
        ),
    }


def validate_memory_canary_rejection(kind, row, stdout, stderr):
    if (
        kind not in {"source", "type", "axiom"}
        or type(row.get("exit_code")) is not int
        or row["exit_code"] != 1
        or stderr.strip()
        or not isinstance(stdout, str)
        or len(stdout) > 1024**2
        or any(
            x in stdout
            for x in [
                "Unknown constant",
                "unknown constant",
                "unknown identifier",
                "unknown module",
                "maximum recursion",
                "out of memory",
                "heartbeats",
                "timeout",
            ]
        )
    ):
        raise ValueError("StringMemoryCanaryUnexpectedFailure")
    errors = re.findall(r"^([^\n]+\.lean):\d+:\d+: error: ([^\n]+)", stdout, re.M)
    if not errors or stdout.count(": error:") != len(errors):
        raise ValueError("StringMemoryCanaryMissingLeanError")
    if kind == "source":
        semantic = "unsolved goals" in stdout and "none" in stdout and "some" in stdout
        trace_mismatch = all(
            token in stdout
            for token in ["Tactic `rewrite` failed", "execute", "copy", "field"]
        )
        if (
            len(errors) > 3
            or any(
                not path.endswith("/NativeStringMemoryProofs.lean")
                for path, _ in errors
            )
            or not (semantic or trace_mismatch)
        ):
            raise ValueError("StringMemoryCanaryNotSemanticRejection")
    else:
        expected = (
            "Wrong expected theorem type"
            if kind == "type"
            else "Unexpected transitive axiom"
        )
        if (
            len(errors) != 1
            or not errors[0][0].endswith("/Audit.lean")
            or errors[0][1] != expected
        ):
            raise ValueError("StringMemoryCanaryNotAuditRejection")


def memory_mutant_witness(files, roots):
    mutant = memory_canary_projects(files, roots)["source"][0]
    proof = files["NativeStringMemoryProofs"].decode("utf8")
    helper = re.search(
        r"private theorem execute_advance.*?(?=\ntheorem deref_exact)", proof, re.S
    )
    if (
        helper is None
        or proof.count("  rcases valid with") != 1
        or proof.count("  have h9 :") != 1
    ):
        raise ValueError("StringMemoryWitnessTraceContext")
    trace = proof.split("  rcases valid with", 1)[1].split("  have h9 :", 1)[0]
    trace = "  rcases valid with" + trace
    trace, count = re.subn(r"  have utf8 :[^\n]*\n    simp\n", "", trace)
    if count != 1:
        raise ValueError("StringMemoryWitnessUtf8Context")
    trace, count = re.subn(r"  let r1[0-8] :=[^\n]*\n", "", trace)
    if count != 9:
        raise ValueError("StringMemoryWitnessRegisterContext")
    trace, count = re.subn(r"  let final : State := \{\n.*?\}\n", "", trace, flags=re.S)
    if count != 1:
        raise ValueError("StringMemoryWitnessFinalContext")
    del mutant["NativeStringMemoryProofs"]
    del mutant["ProofRoot"]
    mutant["NativeStringMemoryMutantWitness"] = (
        "module\npublic import NativeStringDerefProgram\n@[expose] public section\n"
        "namespace Correspondence036.NativeStringMemory\n" + helper[0] + "\n"
        "theorem mutant_rejects (heap : Heap) (readable : Pointer → Nat → Bool)\n"
        "    (scope object : Nat) (pointer : Pointer) (text : String)\n"
        "    (capacity allocator rawMarker uniqueMarker : Value)\n"
        "    (valid : Representation heap readable object pointer text capacity allocator rawMarker uniqueMarker) :\n"
        "    execute NativeStringMemorySource.program (initial heap readable scope object) = none := by\n"
        + trace
        + "  let bad : Value := .record [.record [.record [.record [.pointer pointer], uniqueMarker], capacity, allocator], rawMarker]\n"
        "  let r10 := put r9 5 (some bad)\n"
        "  have h9 : step (.copy 5 1 [.deref, .field 0, .field 0]) (machine r9) = some (machine r10) := by\n"
        "    simp [step, place, readPath, readProjection, initial, update, stringCell, stored, bad, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10]\n"
        "  have h10 : step (.slicePointer 3 4 5) (machine r10) = none := by\n"
        "    simp [step, bad, put, machine, r10]\n"
        "  dsimp only [NativeStringMemorySource.program]\n"
        "  rw [execute_advance _ h0, execute_advance _ h1, execute_advance _ h2, execute_advance _ h3, execute_advance _ h4, execute_advance _ h5, execute_advance _ h6, execute_advance _ h7, execute_advance _ h8, execute_advance _ h9]\n"
        "  simp [execute, h10]\n"
        "end Correspondence036.NativeStringMemory\n"
    ).encode()
    mutant["ProofRoot"] = (
        b"module\npublic import NativeStringMemoryMutantWitness\n@[expose] public section\n"
    )
    expected = [
        {
            "id": "string_memory_mutant.rejects",
            "declaration": "Correspondence036.NativeStringMemory.mutant_rejects",
            "expected_type": roots[1]["expected_type"].split("∃ final,")[0]
            + "Correspondence036.NativeStringMemory.execute Correspondence036.NativeStringMemorySource.program "
            + "(Correspondence036.NativeStringMemory.initial heap readable scope object) = none",
        }
    ]
    return mutant, expected


def run_memory_canaries(*, files, roots, sdk, backend, env, out):
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
    for kind, (mutant, expected, label) in memory_canary_projects(files, roots).items():
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
    witness, witness_roots = memory_mutant_witness(files, roots)
    base, args = invocation("mutant-witness", witness, witness_roots)
    checked = check_declared_proof_v2(**args)
    if checked["status"] != "proved_for_declared_subject":
        raise ValueError("StringMemoryCanaryWitnessUnproved")
    result = {
        "format": "core036.string-memory-proof-canaries.v2",
        "rejections": reports,
        "witness_result_sha256": digest(base / "checked/result.json"),
        "scope": "source_string_memory_model_controls_only",
        "native_proof": "unestablished",
        "runtime_totality_established": False,
        "feature_complete": False,
    }
    write_once(out / "result.json", result)
    return result
