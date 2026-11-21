"""Actual Value component equations under explicit imported, unproved models."""

import hashlib
import json
from pathlib import Path
import re

from artifact_io import RootRegistry, digest, write_once
from lean_command_v2 import run_logged_command

BASE = "serde_json.value.Value.Insts.Serde_coreSerSerialize"
ORIGINAL_NAMES = [
    BASE + ".serialize_loop.body",
    BASE + ".serialize_loop",
    BASE + ".serialize",
]
STOP = "/-- [transition_study036::acquire::require]:"
OMITTED = [
    (
        "/-- Trait implementation: [std::fs::{impl core::io::write::Write for std::fs::File}]",
        "std.fs.File.Insts.CoreIoWriteWrite",
    ),
    (
        "/-- Trait implementation: [alloc::io::util::{impl alloc::io::read::Read for core::io::util::Take<T>}]",
        "core.io.util.Take.Insts.AllocIoReadRead",
    ),
]


def fragment(source):
    if source.count(STOP) != 1:
        raise ValueError("NativeValueFragmentBoundary")
    prefix = source[: source.index(STOP)]
    spans = []
    for marker, name in OMITTED:
        if prefix.count(marker) != 1:
            raise ValueError("NativeValueOmissionBoundary")
        start = prefix.index(marker)
        end = prefix.find("\n\n/--", start)
        if end == -1:
            raise ValueError("NativeValueOmissionEnd")
        block = prefix[start:end]
        if "impl_def " + name not in block or "serde_json.value.Value" in block:
            raise ValueError("NativeValueOmissionScope")
        spans.append(
            (
                start,
                end,
                dict(
                    declaration=name,
                    source_utf8_start=len(source[:start].encode()),
                    source_utf8_end=len(source[:end].encode()),
                    bytes=len(block.encode()),
                    sha256=hashlib.sha256(block.encode()).hexdigest(),
                    reason="Unrelated unsupported I/O dictionary; excluded only from this explicit component, never from full native closure",
                ),
            )
        )
    selected, offset = [], 0
    for start, end, _ in sorted(spans):
        selected.append(prefix[offset:start])
        offset = end
    selected.append(prefix[offset:])
    return "".join(selected) + "end transition_study036\n", [row for _, _, row in spans]


def declaration(source, name):
    matches = list(re.finditer(r"\bdef " + re.escape(name) + r"(?=\s|[({])", source))
    if len(matches) != 1:
        raise ValueError("NativeValueOriginalDeclarationCoverage")
    start = source.rfind("\n/--", 0, matches[0].start()) + 1
    end = source.find("\n/--", matches[0].end())
    if start <= 0 or end < 0:
        raise ValueError("NativeValueOriginalDeclarationBoundary")
    return source[start:end].strip().encode()


def conservation(baseline, candidate):
    rows = []
    for name in ORIGINAL_NAMES:
        before, after = declaration(baseline, name), declaration(candidate, name)
        if before != after:
            raise ValueError("NativeValueOriginalDeclarationChanged")
        rows.append(
            dict(
                name=name, bytes=len(before), sha256=hashlib.sha256(before).hexdigest()
            )
        )
    return rows


def run_controls(
    *,
    refs,
    reference,
    config,
    generated,
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
        set(selection)
        != {
            "format",
            "baseline_checkpoint_ref",
            "baseline_result_ref",
            "laws_ref",
            "audit_ref",
        }
        or selection["format"] != "core036.native-value-dictionary.v2"
        or prefix != "WorkerEntrypointsNames"
    ):
        raise ValueError("NativeValueSelection")
    cp_path = refs.verify(selection["baseline_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["baseline_checkpoint_ref"])
    baseline_result = refs.read(selection["baseline_result_ref"])
    baseline_path = refs.verify(selection["baseline_result_ref"])
    current_result = refs.read(config["extraction_result_ref"])
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or baseline_result["source_subject_ref"] != cp["source_subject_ref"]
        or baseline_path
        != refs.roots["private"]
        / "native-extraction"
        / cp["attempt_id"]
        / "result.json"
        or baseline_result["original_extraction_ref"]
        != current_result["original_extraction_ref"]
        or baseline_result["aeneas_input_sha256"]
        != current_result["aeneas_input_sha256"]
    ):
        raise ValueError("NativeValueBaselineSubject")
    old_rows = {Path(row["path"]).name: row for row in baseline_result["generated"]}
    for name in (
        "Types.lean",
        "TypesExternal_Template.lean",
        "FunsExternal_Template.lean",
    ):
        if old_rows[name]["sha256"] != generated[name][1]["sha256"]:
            raise ValueError("NativeValueChangedModelInput")
    baseline_file = baseline_path.parent / old_rows["Funs.lean"]["path"]
    if digest(baseline_file) != old_rows["Funs.lean"]["sha256"]:
        raise ValueError("NativeValueChangedBaseline")
    baseline = baseline_file.read_text()
    candidate = generated["Funs.lean"][0].read_text()
    conserved = conservation(baseline, candidate)
    before, old_omitted = fragment(baseline)
    after, new_omitted = fragment(candidate)
    for name in ORIGINAL_NAMES:
        if (
            len(
                re.findall(
                    r"\bdef "
                    + re.escape(name)
                    + r"\.__core036_with_dictionary(?=\s|[({])",
                    after,
                )
            )
            != 1
        ):
            raise ValueError("NativeValueHelperCoverage")
    if "partial_fixpoint monotonicity NonPos.Cont.monotone" not in after:
        raise ValueError("NativeValueMissingActualFixedPoint")
    laws_path = refs.verify(selection["laws_ref"])
    audit_path = refs.verify(selection["audit_ref"])
    laws = laws_path.read_text().replace("CORE036_MODULE_PREFIX", prefix)
    audit = audit_path.read_text().replace("CORE036_MODULE_PREFIX", prefix)
    marker = "public import " + prefix + ".NativeValueCandidate\n"
    if laws.count(marker) != 1:
        raise ValueError("NativeValueLawsHeader")
    old = "| serde_json.value.Value.Null => serde_coreserSerializerInst.serialize_unit serializer"
    wrong = "| serde_json.value.Value.Null => serde_coreserSerializerInst.serialize_bool serializer true"
    if after.count(old) != 2:
        raise ValueError("NativeValueWrongBranchControl")
    mutant = after.replace(old, wrong, 1) + laws.replace("module\n", "", 1).replace(
        marker, "", 1
    )
    modules = {
        "NativeValueBaseline": before,
        "NativeValueCandidate": after,
        "NativeValueLaws": laws,
        "NativeValueMutant": mutant,
        "NativeValueAudit": audit,
    }
    for name, source in modules.items():
        write_once(folder / (name + ".lean"), source.encode())
    commands = []
    expected = {
        "NativeValueBaseline": 1,
        "NativeValueCandidate": 0,
        "NativeValueLaws": 0,
        "NativeValueMutant": 1,
        "NativeValueAudit": 0,
    }
    for name, code in expected.items():
        row = run_logged_command(
            out / "commands" / name,
            [
                str(sdk / "bin/lean"),
                "-j1",
                "-s131072",
                "-M4096",
                "-DAeneas.customDoElab=false",
                "-R",
                str(project),
                "-o",
                str(compiled / prefix / (name + ".olean")),
                str(folder / (name + ".lean")),
            ],
            cwd=backend,
            env=env,
            seconds=600,
            preexec_fn=constrain,
            metadata=dict(module=prefix + "." + name, expected_exit_code=code),
        )
        commands.append(row)
        if row["exit_code"] != code:
            break
        if code == 1:
            text = (out / "commands" / name / "stdout.txt").read_text()
            if "error" not in text or "unknown module" in text.lower():
                raise ValueError("NativeValueMalformedNegative")
            if name == "NativeValueBaseline" and (
                BASE not in text or "Unknown constant" not in text
            ):
                raise ValueError("NativeValueNotForwardReference")
            if name == "NativeValueMutant" and not any(
                x in text for x in ("rfl", "unsolved goals", "type mismatch")
            ):
                raise ValueError("NativeValueWrongBranchNotRejectedByEquation")
    audit_rows = None
    if len(commands) == 5 and all(
        row["exit_code"] == row["expected_exit_code"] for row in commands
    ):
        tag = "CORE036_NATIVE_VALUE_AUDIT "
        reports = [
            json.loads(line[len(tag) :])
            for line in (out / "commands/NativeValueAudit/stdout.txt")
            .read_text()
            .splitlines()
            if line.startswith(tag)
        ]
        if len(reports) != 1 or len(reports[0]) != 1:
            raise ValueError("NativeValueAuditCoverage")
        audit_rows = reports[0]
        commands.append(
            run_logged_command(
                out / "commands/fresh-kernel",
                [str(sdk / "bin/leanchecker"), "--fresh", prefix + ".NativeValueAudit"],
                cwd=backend,
                env=env,
                seconds=600,
                preexec_fn=constrain,
                metadata=dict(module=prefix + ".fresh-kernel", expected_exit_code=0),
            )
        )
    refs.verify(selection["laws_ref"])
    refs.verify(selection["audit_ref"])
    if digest(baseline_file) != old_rows["Funs.lean"]["sha256"]:
        raise ValueError("NativeValueBaselineMutated")
    passed = len(commands) == 6 and all(
        row["exit_code"] == row["expected_exit_code"] for row in commands
    )
    return dict(
        commands=commands,
        original_declaration_conservation=conserved,
        omitted_component_declarations=dict(
            baseline=old_omitted, candidate=new_omitted
        ),
        selected_equation_audit=audit_rows,
        all_control_outcomes_matched=passed,
        fresh_kernel="passed" if passed else "not_established",
        native_proof="unestablished",
        feature_complete=False,
        scope="Actual complete Value component equations under imported unproved models; explicitly excludes two unrelated I/O dictionaries and claims no full native closure",
    )
