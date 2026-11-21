"""Recheck the closed SDK without changing or duplicating its payload."""

import argparse
import os
import resource
import subprocess
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once

E = Path(__file__).resolve().parent


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if (
        out != private / "analysis-lean-recheck" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("AnalysisLeanRecheckOutput")
    config = read(E / "analysis-lean-recheck-inputs-v2.json")
    registry = RootRegistry({"private": private}, readonly=["private"])
    previous = read(registry.verify(config["materialization_ref"]))
    sdk = Path(previous["sdk"])
    if sdk != private / "analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux":
        raise ValueError("AnalysisLeanRecheckSDK")
    for binary in previous["patched_binaries"]:
        if (
            not Path(binary["path"]).is_relative_to(sdk)
            or digest(binary["path"]) != binary["sha256"]
        ):
            raise ValueError("AnalysisLeanSDKBinaryChanged")
    out.mkdir(parents=True)
    env = {
        **os.environ,
        **previous["environment"],
        **config["runtime_environment"],
        "LEAN_PATH": str(out),
    }
    env.pop("LD_PRELOAD", None)
    commands, statuses = [], {}

    def limits():
        bound = declaration["profile"]["limits"]["lean_address_space_bytes"]
        resource.setrlimit(resource.RLIMIT_AS, (bound, bound))

    def run(label, argv):
        folder = out / label
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=out,
                env=env,
                stdout=stdout,
                stderr=stderr,
                preexec_fn=limits,
                timeout=360,
                check=False,
            )
        row = {
            "label": label,
            "argv": argv,
            "exit_code": result.returncode,
            "stdout_sha256": digest(folder / "stdout.txt"),
            "stderr_sha256": digest(folder / "stderr.txt"),
        }
        commands.append(row)
        statuses[label] = result.returncode
        write_once(folder / "result.json", row)

    write_once(
        out / "Sanity.lean",
        b"theorem core036_analysis_sanity (n : Nat) : n = n := rfl\n#print axioms core036_analysis_sanity\n",
    )
    run("version", [str(sdk / "bin/lean"), "--version"])
    run(
        "compile",
        [
            str(sdk / "bin/lean"),
            "-j1",
            "-o",
            str(out / "Sanity.olean"),
            str(out / "Sanity.lean"),
        ],
    )
    if statuses["compile"] == 0:
        run("fresh-kernel", [str(sdk / "bin/leanchecker"), "--fresh", "Sanity"])
    write_once(
        out / "result.json",
        {
            **previous,
            "format": "core036.analysis-lean-recheck.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "materialization_ref": config["materialization_ref"],
            "environment": {
                key: env[key]
                for key in (*previous["environment"], *config["runtime_environment"])
            },
            "commands": commands,
            "statuses": statuses,
            "scope": "actual unchanged SDK compiler/kernel probes with explicit runtime environment; full backend and native correspondence remain pending",
            "product_adoption": "unactivated",
        },
    )
    return 0 if all(value == 0 for value in statuses.values()) else 1


if __name__ == "__main__":
    raise SystemExit(main())
