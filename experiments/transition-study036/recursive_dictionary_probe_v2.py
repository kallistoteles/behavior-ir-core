"""Conditional model control of lawful recursive dictionary value lowering."""

import json

from artifact_io import digest
from lean_command_v2 import run_logged_command

CONTROL_CODES = {
    "RecursiveDictionaryTypes": 0,
    "RecursiveDictionaryForward": 1,
    "RecursiveDictionaryGood": 0,
    "RecursiveDictionaryWrong": 1,
    "RecursiveDictionaryOpaque": 1,
    "RecursiveDictionaryAudit": 0,
}
AUDITED_ROOTS = {
    "Core036RecursiveDictionary.encoderStep_cont",
    "Core036RecursiveDictionary.leaf_exact",
    "Core036RecursiveDictionary.array_exact",
    "Core036RecursiveDictionary.object_exact",
}


def run_controls(
    *,
    refs,
    reference,
    prefix,
    folder,
    compiled,
    project,
    sdk,
    backend,
    env,
    constrain,
    out,
):
    selection = refs.read(reference)
    if (
        set(selection) != {"format", "control_refs"}
        or selection["format"] != "core036.recursive-dictionary-control.v2"
    ):
        raise ValueError("RecursiveDictionarySelection")
    controls = selection["control_refs"]
    if set(controls) != set(CONTROL_CODES):
        raise ValueError("RecursiveDictionaryControlCoverage")
    originals = {}
    for label, source_ref in controls.items():
        path = refs.verify(source_ref)
        original = path.read_bytes()
        originals[label] = (path, digest(path))
        source = original.replace(b"CORE036_MODULE_PREFIX", prefix.encode())
        if not source.startswith(b"module\n"):
            raise ValueError("RecursiveDictionaryControlHeader")
        target = folder / (label + ".lean")
        with target.open("xb") as stream:
            stream.write(source)
    commands = []

    def run(label, argv, expected_code):
        row = run_logged_command(
            out / "commands" / label,
            argv,
            cwd=backend,
            env=env,
            seconds=600,
            preexec_fn=constrain,
            metadata=dict(
                module=prefix + "." + label, expected_exit_code=expected_code
            ),
        )
        commands.append(row)
        return row

    all_controls_matched = True
    for label, expected_code in CONTROL_CODES.items():
        row = run(
            label,
            [
                str(sdk / "bin/lean"),
                "-j1",
                "-s131072",
                "-M4096",
                "-DAeneas.customDoElab=false",
                "-R",
                str(project),
                "-o",
                str(compiled / prefix / (label + ".olean")),
                str(folder / (label + ".lean")),
            ],
            expected_code,
        )
        if row["exit_code"] != expected_code:
            all_controls_matched = False
            break
        if expected_code == 1:
            text = (out / "commands" / label / "stdout.txt").read_text()
            if "error" not in text or "unknown module" in text.lower():
                raise ValueError("RecursiveDictionaryMalformedNegative")
            if (
                label == "RecursiveDictionaryForward"
                and "unavailableEncoder" not in text
            ):
                raise ValueError("RecursiveDictionaryNotForwardReference")
            if label == "RecursiveDictionaryOpaque" and not any(
                marker in text.lower() for marker in ("nonpos", "continuity")
            ):
                raise ValueError("RecursiveDictionaryNotContinuityRejection")
    audit = None
    if all_controls_matched:
        tag = "CORE036_RECURSIVE_DICTIONARY_AUDIT "
        text = (out / "commands/RecursiveDictionaryAudit/stdout.txt").read_text()
        reports = [
            json.loads(line[len(tag) :])
            for line in text.splitlines()
            if line.startswith(tag)
        ]
        allowed = {"propext", "Classical.choice", "Quot.sound"}
        if (
            len(reports) != 1
            or len(reports[0]) != 4
            or {row["declaration"] for row in reports[0]} != AUDITED_ROOTS
            or any(
                not row["type_repr"]
                or any(
                    axiom["name"] not in allowed or not axiom["type_repr"]
                    for axiom in row["axioms"]
                )
                for row in reports[0]
            )
        ):
            raise ValueError("RecursiveDictionaryAudit")
        audit = reports[0]
        run(
            "fresh-kernel",
            [
                str(sdk / "bin/leanchecker"),
                "--fresh",
                prefix + ".RecursiveDictionaryAudit",
            ],
            0,
        )
    for path, checksum in originals.values():
        if digest(path) != checksum:
            raise ValueError("RecursiveDictionarySourceChanged")
    passed = len(commands) == 7 and all(
        row["exit_code"] == row["expected_exit_code"] for row in commands
    )
    return dict(
        commands=commands,
        selected_model_theorem_audit=audit,
        fresh_kernel="passed" if passed else "not_established",
        all_control_outcomes_matched=passed,
        native_proof="unestablished",
        feature_complete=False,
        scope="Toy dictionary/function/loop lowering and its actual continuity/fixed-point obligations; no native Value body or compiler lowering proved",
    )
