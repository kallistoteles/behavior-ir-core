"""Reproduce the actual package-test storage burst without rerunning prior gates."""

import argparse
import os
import shlex
import subprocess
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from gate_runtime_v2 import expected_runtime_inputs, validate_gate_runtime_inputs_v2

E = Path(__file__).resolve().parent
R = E.parents[1]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    if declaration["stage"] != "NATIVE" or declaration["slots"] != [
        "quality-package-probe"
    ]:
        raise ValueError("PackageProbeFixedSlot")
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry(
        {"repository": R, "private": private, "work": work},
        readonly=["repository", "private", "work"],
    )
    config = read(E / "quality-inputs-v2.json")
    prepared = check_prepared_native_v2(E / "toolchain-v2.json")
    core = Path(prepared["sources"]["core-reuse"]["path"])
    checkpoint_path = refs.verify(config["cli_checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(config["cli_checkpoint_ref"])
    build = refs.read(config["cli_result_ref"])
    if (
        checkpoint["stage_outcome"] != "succeeded"
        or build["source_subject_ref"] != checkpoint["source_subject_ref"]
        or build["compiled_core"] != str(core)
        or build["source_export_sha256"] != digest(core / "source-export.json")
        or build["core_lock_sha256"] != digest(core / "Cargo.lock")
    ):
        raise ValueError("PackageProbeActualCliSource")
    cli = refs.verify(build["executable_ref"])
    validate_gate_runtime_inputs_v2(
        config["runtime_fixture_inputs"],
        registry=refs,
        prepared=prepared,
        expected_spec=expected_runtime_inputs(),
    )
    script = core / "scripts/tests/test_binding_conformance.sh"
    script_sha = digest(script)
    out = Path(args.out)
    if (
        out != private / "quality-package-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("PackageProbeOutput")
    out.mkdir(parents=True)
    shell = read(E / "toolchain.json")["tools"]["nix-shell"]
    if digest(shell["path"]) != shell["sha256"]:
        raise ValueError("PackageProbePinnedShell")
    env = {
        **os.environ,
        "PYTHONNOUSERSITE": "1",
        "BEHAVIOR_BIN": str(cli),
        "TMPDIR": str(private / "tmp"),
        "RUST_TEST_THREADS": "1",
        "CARGO_BUILD_JOBS": "1",
        "CARGO_INCREMENTAL": "0",
        "CARGO_HOME": str(private / "cargo"),
        "CARGO_NET_OFFLINE": "true",
    }
    original = script.read_text()
    marker = 'python3 - "$PWD" "$BIN" "$mode" <<\'PY\'\n'
    if original.count(marker) != 1 or not original.endswith("PY\n"):
        raise ValueError("PackageProbeOriginalPythonBoundary")
    body = original.split(marker, 1)[1][:-3]
    original_body = out / "original-package-tests.py"
    write_once(original_body, body.encode())
    driver = out / "selected-test.py"
    write_once(
        driver,
        b"import sys,unittest\nfrom pathlib import Path\nunittest.defaultTestLoader.testNamePatterns=['*PackageContract*']\nsource=Path(sys.argv[1])\nsys.argv=[str(source),*sys.argv[2:]]\nexec(compile(source.read_text(),str(source),'exec'),{'__name__':'__main__'})\n",
    )
    argv = [
        shell["path"],
        str(E / "shell.nix"),
        "--run",
        shlex.join(
            ["python3", str(driver), str(original_body), str(core), str(cli), "package"]
        ),
    ]
    commands = []
    for repetition in range(3):
        folder = out / f"repeat-{repetition:02}"
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            child = subprocess.run(
                argv,
                cwd=core,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=180,
                check=False,
            )
        row = dict(
            argv=argv,
            exit_code=child.returncode,
            stdout_sha256=digest(folder / "stdout.txt"),
            stderr_sha256=digest(folder / "stderr.txt"),
        )
        write_once(folder / "result.json", row)
        commands.append(row)
        if child.returncode:
            break
    if digest(script) != script_sha:
        raise ValueError("PackageProbeOriginalScriptChanged")
    refs.verify(build["executable_ref"])
    write_once(
        out / "result.json",
        dict(
            format="core036.quality-package-probe.v2",
            source_subject_ref=declaration["source_subject_ref"],
            commands=commands,
            cli_ref=build["executable_ref"],
            original_script_sha256=script_sha,
            scope="Three repetitions of the unmodified original PackageContract group under the unchanged outer resource observer. Diagnostic only, not a complete canonical gate or native proof.",
            feature_complete=False,
            native_proof="unestablished",
        ),
    )
    return 0 if len(commands) == 3 and all(x["exit_code"] == 0 for x in commands) else 1


if __name__ == "__main__":
    raise SystemExit(main())
