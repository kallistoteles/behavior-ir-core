"""Translate an unchanged closed compiler IR with the source-bound repair."""

import argparse
import os
from pathlib import Path
import shutil

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_analysis_v2
from lean_command_v2 import run_logged_command

E = Path(__file__).resolve().parent
R = E.parents[1]


def checked_ir(folder, result):
    raw = folder / "worker_entrypoints.llbc"
    normalized = folder / "worker_entrypoints_names.llbc"
    if (
        result["extraction_exit_code"] != 0
        or result["translation_exit_code"] != 0
        or digest(raw) != result["llbc_sha256"]
        or digest(normalized) != result["aeneas_input_sha256"]
        or result["name_normalization"]["raw_llbc_sha256"] != digest(raw)
        or result["name_normalization"]["aeneas_input_sha256"] != digest(normalized)
    ):
        raise ValueError("RetranslateOriginalIRIdentity")
    return normalized


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    name, out = declaration["record_id"], Path(args.out)
    if out != private / "native-extraction" / name or out.exists():
        raise ValueError("RetranslateOutputOwnership")
    config = read(E / "retranslation-inputs-v2.json")
    if "write_default_probe_ref" in config:
        if (
            set(config) != {"format", "write_default_probe_ref"}
            or config["format"] != "core036.retranslation-inputs.v2"
        ):
            raise ValueError("WriteDefaultDiagnosticSelection")
        from native_write_default_probe_v2 import run_probe

        return run_probe(refs, config["write_default_probe_ref"], declaration, out)
    if (
        set(config)
        not in (
            {
                "format",
                "extraction_ref",
                "extraction_checkpoint_ref",
                "translator_ref",
                "translator_checkpoint_ref",
            },
            {
                "format",
                "extraction_ref",
                "extraction_checkpoint_ref",
                "translator_ref",
                "translator_checkpoint_ref",
                "runtime_binding_ref",
            },
        )
        or config["format"] != "core036.retranslation-inputs.v2"
    ):
        raise ValueError("RetranslateContext")
    for key in ("extraction", "translator"):
        cp_path = refs.verify(config[key + "_checkpoint_ref"])
        RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
        cp = refs.read(config[key + "_checkpoint_ref"])
        path = refs.verify(config[key + "_ref"])
        result = refs.read(config[key + "_ref"])
        if (
            cp["stage_outcome"] != "succeeded"
            or path.parent.name != cp["attempt_id"]
            or result["source_subject_ref"] != cp["source_subject_ref"]
        ):
            raise ValueError("RetranslatePrerequisite")
    extraction_path = refs.verify(config["extraction_ref"])
    original = refs.read(config["extraction_ref"])
    translator = refs.read(config["translator_ref"])
    translation_input = checked_ir(extraction_path.parent, original)
    executable = Path(translator["executable"])
    if (
        translator["new_translator_compiled"] is not True
        or digest(executable) != translator["executable_sha256"]
    ):
        raise ValueError("RetranslateExecutable")
    check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
    dependencies = refs.read(translator["dependencies_ref"])
    system = refs.read(dependencies["system_ref"])
    analysis = read(private / "analysis-lean-recheck/a0053/result.json")
    env = {
        **os.environ,
        **analysis["environment"],
        "LD_LIBRARY_PATH": system["gmp_library_directory"],
        "CI": "1",
    }
    env.pop("LD_PRELOAD", None)
    for key in list(env):
        if key.startswith(("OCAML", "CAML")):
            env.pop(key)
    env["OCAMLRUNPARAM"] = "d=1,o=40,v=0x400"
    if "runtime_binding_ref" in config:
        from retranslation_runtime_v2 import checked_runtime

        env["OCAMLRUNPARAM"] = checked_runtime(
            refs, config["runtime_binding_ref"], config
        )
    out.mkdir(parents=True)
    generated = out / "generated"
    generated.mkdir()
    commands = []

    def run(label, argv):
        folder = out / "commands" / label
        row = run_logged_command(
            folder,
            argv,
            cwd=out,
            env=env,
            seconds=1200,
            metadata=dict(label=label),
        )
        commands.append(row)
        return row["exit_code"], (folder / "stdout.txt").read_bytes()

    code, version = run("version", [str(executable), "-version"])
    if code != 0 or version.decode().strip() != translator["version"]:
        raise ValueError("RetranslateActualVersion")
    code, _ = run(
        "translate",
        [
            str(executable),
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
            str(translation_input),
        ],
    )
    if (
        checked_ir(extraction_path.parent, original) != translation_input
        or digest(executable) != translator["executable_sha256"]
    ):
        raise ValueError("RetranslateInputMutated")
    expected = out / "worker/expected"
    expected.mkdir(parents=True)
    original_literal = extraction_path.parent / "worker/expected/ld8-module.json"
    if original_literal.read_bytes() != (E / "expected/ld8-module.json").read_bytes():
        raise ValueError("RetranslateOriginalLiteralIdentity")
    shutil.copy2(
        extraction_path.parent / "worker/expected/ld8-module.json",
        expected / "ld8-module.json",
    )
    write_once(
        out / "result.json",
        {
            **original,
            "source_subject_ref": declaration["source_subject_ref"],
            "commands": commands,
            "translation_exit_code": code,
            "original_extraction_ref": config["extraction_ref"],
            "translator_ref": config["translator_ref"],
            "reused_closed_compiler_ir": True,
            "translator_execution": "sequential",
            "runtime_environment": {"OCAMLRUNPARAM": env["OCAMLRUNPARAM"]},
            "runtime_binding_ref": config.get("runtime_binding_ref"),
            "compiler_ir_path": str(translation_input),
            "generated": [
                dict(
                    path=str(path.relative_to(out)),
                    bytes=path.stat().st_size,
                    sha256=digest(path),
                )
                for path in sorted(generated.rglob("*"))
                if path.is_file()
            ],
            "native_proof": "unestablished",
            "product_adoption": "unactivated",
        },
    )
    return 0 if code == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
