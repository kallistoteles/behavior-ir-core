"""Fixed fresh JSON source/type/axiom controls; never native admission."""

import copy
import re


def source_index_canary_projects(files, roots):
    """Mutate real generated code, an expectation and a theorem dependency."""
    required = {"SeedFoldsNames.Funs", "NativeJsonSourceIndex", "ProofRoot"}
    if not required <= files.keys() or len(roots) != 7:
        raise ValueError("JsonSourceCanaryContext")
    null = (
        b"def serde_json.value.index.IndexValueIValue.index.NULL\n"
        b"  : serde_json.value.Value :=\n"
        b"  serde_json.value.Value.Null\n"
    )
    if files["SeedFoldsNames.Funs"].count(null) != 1:
        raise ValueError("JsonSourceCanaryNullSite")
    source = dict(files)
    source["SeedFoldsNames.Funs"] = source["SeedFoldsNames.Funs"].replace(
        null, null.rsplit(b"Value.Null", 1)[0] + b"Value.Bool true\n", 1
    )
    wrong_type = copy.deepcopy(roots)
    if wrong_type[0]["id"] != "json_source.null_exact":
        raise ValueError("JsonSourceCanaryRoot")
    wrong_type[0]["expected_type"] = (
        "transition_study036.serde_json.value.index.IndexValueIValue.index.NULL = "
        "transition_study036.serde_json.value.Value.Bool true"
    )
    axiom = dict(files)
    axiom["ProofRoot"] += (
        b"\naxiom core036Injected : False\n"
        b"theorem core036InjectedTheorem : False := core036Injected\n"
    )
    axiom_roots = [
        {
            "id": "json_source_canary.injected",
            "declaration": "core036InjectedTheorem",
            "expected_type": "False",
        }
    ]
    return {
        "source": (source, roots, "lean-NativeJsonSourceIndex"),
        "type": (dict(files), wrong_type, "lean-Audit"),
        "axiom": (axiom, axiom_roots, "lean-Audit"),
    }


def source_mutant_witness(files, roots):
    mutant = source_index_canary_projects(files, roots)["source"][0]
    del mutant["NativeJsonSourceIndex"]
    del mutant["ProofRoot"]
    mutant["NativeJsonMutantWitness"] = (
        b"module\npublic import SeedFoldsNames.Funs\n@[expose] public section\n"
        b"namespace Correspondence036.NativeJsonMutantWitness\n"
        b"theorem changed : transition_study036.serde_json.value.index.IndexValueIValue.index.NULL = "
        b"transition_study036.serde_json.value.Value.Bool true := by\n"
        b"  unfold transition_study036.serde_json.value.index.IndexValueIValue.index.NULL\n  rfl\n"
        b"theorem distinct : transition_study036.serde_json.value.index.IndexValueIValue.index.NULL "
        b"\xe2\x89\xa0 transition_study036.serde_json.value.Value.Null := by\n"
        b"  unfold transition_study036.serde_json.value.index.IndexValueIValue.index.NULL\n"
        b"  intro h\n  cases h\n"
        b"end Correspondence036.NativeJsonMutantWitness\n"
    )
    mutant["ProofRoot"] = (
        b"module\npublic import NativeJsonMutantWitness\n@[expose] public section\n"
    )
    witness_roots = [
        {
            "id": "json_source_mutant." + name,
            "declaration": "Correspondence036.NativeJsonMutantWitness." + name,
            "expected_type": "transition_study036.serde_json.value.index.IndexValueIValue.index.NULL "
            + type_,
        }
        for name, type_ in [
            ("changed", "= transition_study036.serde_json.value.Value.Bool true"),
            ("distinct", "\u2260 transition_study036.serde_json.value.Value.Null"),
        ]
    ]
    return mutant, witness_roots


def validate_canary_rejection(kind, row, stdout, stderr):
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
                "unknown identifier",
                "unknown module",
                "maximum recursion",
                "out of memory",
            ]
        )
    ):
        raise ValueError("JsonSourceCanaryUnexpectedFailure")
    errors = re.findall(r"^([^\n]+\.lean):\d+:\d+: error: ([^\n]+)", stdout, re.M)
    if not errors or stdout.count(": error:") != len(errors):
        raise ValueError("JsonSourceCanaryMissingLeanError")
    if kind == "source":
        if (
            len(errors) > 2
            or any(
                not path.endswith("/NativeJsonSourceIndex.lean") for path, _ in errors
            )
            or "rfl" not in stdout
            or "Bool true" not in stdout
            or "Null" not in stdout
        ):
            raise ValueError("JsonSourceCanaryNotSemanticRejection")
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
            raise ValueError("JsonSourceCanaryNotAuditRejection")


def run_source_index_canaries(*, files, roots, sdk, backend, env, out):
    """Actual fresh compiler/audit rejections plus a fresh mutant witness."""
    import json
    from pathlib import Path
    from artifact_io import digest, write_once
    from check_proofs import check_declared_proof_v2

    out = Path(out)
    out.mkdir(parents=True, exist_ok=False)

    def execute(name, project_files, project_roots):
        base = out / name
        project, compiled = base / "project", base / "compiled"
        project.mkdir(parents=True, exist_ok=False)
        compiled.mkdir()
        for module, data in project_files.items():
            path = project / (module.replace(".", "/") + ".lean")
            path.parent.mkdir(parents=True, exist_ok=True)
            write_once(path, data)
        invocation = dict(
            project=project,
            compiled=compiled,
            sdk=sdk,
            backend=backend,
            env={**env, "LEAN_PATH": str(compiled)},
            modules=list(project_files),
            roots=project_roots,
            expected_files={
                module: digest(project / (module.replace(".", "/") + ".lean"))
                for module in project_files
            },
            out=base / "checked",
            kernel_mode="selected-root-export-v1",
        )
        return base, invocation

    reports = []
    for kind, (mutant, expected, failure_label) in source_index_canary_projects(
        files, roots
    ).items():
        base, invocation = execute(kind, mutant, expected)
        write_once(
            base / "intent.json",
            {
                "kind": kind,
                "expected_failure_label": failure_label,
                "expected_roots": expected,
                "source_sha256": invocation["expected_files"],
                "native_proof": "unestablished",
                "feature_complete": False,
            },
        )
        try:
            check_declared_proof_v2(**invocation)
        except ValueError as error:
            if str(error) != "DeclaredProofCommand:" + failure_label:
                raise
        else:
            raise ValueError("JsonSourceCanaryUnexpectedAcceptance:" + kind)
        checked = base / "checked"
        labels = ["lean-" + name.replace(".", "-") for name in mutant] + ["lean-Audit"]
        for label in labels[: labels.index(failure_label)]:
            if (
                json.loads((checked / label / "result.json").read_text())["exit_code"]
                != 0
            ):
                raise ValueError("JsonSourceCanaryEarlierCompileFailure")
        failed = checked / failure_label
        row = json.loads((failed / "result.json").read_text())
        validate_canary_rejection(
            kind,
            row,
            (failed / "stdout.txt").read_text(),
            (failed / "stderr.txt").read_text(),
        )
        for module, expected_digest in invocation["expected_files"].items():
            if (
                digest(invocation["project"] / (module.replace(".", "/") + ".lean"))
                != expected_digest
            ):
                raise ValueError("JsonSourceCanaryChangedAfterRun")
        reports.append(
            {
                "kind": kind,
                "rejected_at": failure_label,
                "failure_result_sha256": digest(failed / "result.json"),
            }
        )

    witness, witness_roots = source_mutant_witness(files, roots)
    base, invocation = execute("mutant-witness", witness, witness_roots)
    write_once(
        base / "intent.json",
        {
            "expected_roots": witness_roots,
            "source_sha256": invocation["expected_files"],
            "native_proof": "unestablished",
        },
    )
    checked = check_declared_proof_v2(**invocation)
    if checked["status"] != "proved_for_declared_subject":
        raise ValueError("JsonSourceCanaryWitnessUnproved")
    result = {
        "format": "core036.json-source-proof-canaries.v2",
        "rejections": reports,
        "witness_result_sha256": digest(base / "checked/result.json"),
        "scope": "generated_json_source_index_controls_only",
        "native_proof": "unestablished",
        "runtime_totality_established": False,
        "feature_complete": False,
    }
    write_once(out / "result.json", result)
    return result
