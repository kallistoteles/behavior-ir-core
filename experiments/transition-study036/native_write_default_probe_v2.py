"""Diagnostic rerun of the exact retained native Write-default failure."""

import os
from artifact_io import RootRegistry, digest, write_once
from lean_command_v2 import run_logged_command


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    required = {
        "format",
        "baseline_checkpoint_ref",
        "baseline_result_ref",
        "candidate_checkpoint_ref",
        "candidate_result_ref",
        "candidate_source_ref",
    }
    if (
        set(selection) != required
        or selection["format"] != "core036.native-write-default-probe.v2"
    ):
        raise ValueError("NativeWriteDefaultSelection")
    private = refs.roots["private"]
    if out != private / "native-extraction" / declaration["record_id"] or out.exists():
        raise ValueError("NativeWriteDefaultOwnership")
    old_cp_path = refs.verify(selection["baseline_checkpoint_ref"])
    RootRegistry({"attempt": old_cp_path.parent}).verify_closed("attempt")
    old_cp = refs.read(selection["baseline_checkpoint_ref"])
    old_path = refs.verify(selection["baseline_result_ref"])
    original = refs.read(selection["baseline_result_ref"])
    if (
        old_cp.get("attempt_id") != "a0313"
        or old_cp.get("stage_outcome") != "failed"
        or old_cp.get("source_validation_error") is not None
        or old_path != private / "native-extraction/a0313/result.json"
        or original.get("source_subject_ref") != old_cp.get("source_subject_ref")
        or original.get("format") != "core036.native-extraction.v2"
        or type(original.get("extraction_exit_code")) is not int
        or original["extraction_exit_code"] != 0
        or type(original.get("translation_exit_code")) is not int
        or original["translation_exit_code"] != 1
    ):
        raise ValueError("NativeWriteDefaultOriginalFailure")
    requested = "core::io::write::Write::write_all"
    rows = [
        row
        for row in original["included_crate_inventory"]
        if row["pattern"] == requested
    ]
    if (
        requested not in original["source_support_includes"]
        or len(rows) != 1
        or rows[0]["function_declarations"] != 1
        or rows[0]["translated_bodies"] != 1
    ):
        raise ValueError("NativeWriteDefaultMissingRealBody")
    old_commands = [row for row in original["commands"] if row["label"] == "translate"]
    old_log = old_path.parent / "commands/translate/stdout.txt"
    if (
        len(old_commands) != 1
        or old_commands[0]["exit_code"] != 1
        or digest(old_log) != old_commands[0]["stdout_sha256"]
        or "PtrMetadata" not in old_log.read_text()
    ):
        raise ValueError("NativeWriteDefaultWrongOriginalRed")
    raw = old_path.parent / "worker_entrypoints.llbc"
    normalized = old_path.parent / "worker_entrypoints_names.llbc"

    def verify_ir():
        if (
            digest(raw) != original["llbc_sha256"]
            or digest(normalized) != original["aeneas_input_sha256"]
            or original["name_normalization"]["raw_llbc_sha256"]
            != original["llbc_sha256"]
            or original["name_normalization"]["aeneas_input_sha256"]
            != original["aeneas_input_sha256"]
        ):
            raise ValueError("NativeWriteDefaultIRChanged")

    verify_ir()
    candidate_cp_path = refs.verify(selection["candidate_checkpoint_ref"])
    RootRegistry({"attempt": candidate_cp_path.parent}).verify_closed("attempt")
    candidate_cp = refs.read(selection["candidate_checkpoint_ref"])
    candidate = refs.read(selection["candidate_result_ref"])
    if (
        candidate_cp.get("stage_outcome") != "succeeded"
        or candidate_cp.get("source_validation_error") is not None
        or refs.verify(selection["candidate_result_ref"])
        != private / "nonpos-translator" / candidate_cp["attempt_id"] / "result.json"
        or candidate.get("source_subject_ref") != candidate_cp.get("source_subject_ref")
        or candidate.get("new_translator_compiled") is not True
        or candidate.get("compiled_sources_match_declared_repair") is not True
        or candidate.get("slice_metadata_binding_ref")
        != selection["candidate_source_ref"]
        or digest(candidate["executable"]) != candidate["executable_sha256"]
    ):
        raise ValueError("NativeWriteDefaultCandidate")
    from slice_metadata_source_v2 import checked_sources

    checked_sources(refs, selection["candidate_source_ref"], require_parse=True)
    dependencies = refs.read(candidate["dependencies_ref"])
    system = refs.read(dependencies["system_ref"])
    env = {**os.environ, "LD_LIBRARY_PATH": system["gmp_library_directory"], "CI": "1"}
    env.pop("LD_PRELOAD", None)
    for key in list(env):
        if key.startswith(("OCAML", "CAML")):
            env.pop(key)
    env["OCAMLRUNPARAM"] = "d=1,o=10,v=0x400"
    out.mkdir(parents=True)
    generated = out / "generated"
    generated.mkdir()
    commands = []

    def run(label, argv):
        row = run_logged_command(
            out / "commands" / label,
            argv,
            cwd=out,
            env=env,
            seconds=1200,
            metadata=dict(label=label),
        )
        commands.append(row)
        return row

    version = run("version", [candidate["executable"], "-version"])
    if (
        version["exit_code"] != 0
        or version["timed_out"]
        or (out / "commands/version/stdout.txt").read_text().strip()
        != candidate["version"]
    ):
        raise ValueError("NativeWriteDefaultVersion")
    translation = run(
        "translate",
        [
            candidate["executable"],
            "-backend",
            "lean",
            "-split-files",
            "-impl-namespace",
            "-no-progress-bar",
            "-sequential",
            "-max-recdepth",
            "8192",
            "-dest",
            str(generated),
            str(normalized),
        ],
    )
    verify_ir()
    if digest(candidate["executable"]) != candidate["executable_sha256"]:
        raise ValueError("NativeWriteDefaultCompilerChanged")
    log = (out / "commands/translate/stdout.txt").read_text()
    log += (out / "commands/translate/stderr.txt").read_text()
    available_errors = [
        line
        for line in log.splitlines()
        if "error" in line.lower() or "unsupported" in line.lower()
    ]
    write_once(
        out / "result.json",
        dict(
            format="core036.native-write-default-probe-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            original_extraction_ref=selection["baseline_result_ref"],
            original_ir_unmodified=True,
            llbc_sha256=original["llbc_sha256"],
            aeneas_input_sha256=original["aeneas_input_sha256"],
            commands=commands,
            translation_exit_code=translation["exit_code"],
            translation_timed_out=translation["timed_out"],
            available_error_lines=available_errors,
            complete_error_inventory_claimed=False,
            generated=[
                dict(
                    path=str(path.relative_to(out)),
                    bytes=path.stat().st_size,
                    sha256=digest(path),
                )
                for path in sorted(generated.glob("*.lean"))
            ],
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
            scope="Diagnostic rerun of unchanged real historical native Write-default IR; no whole native Core proof/support claim",
        ),
    )
    return 0 if translation["exit_code"] == 0 and not translation["timed_out"] else 1
