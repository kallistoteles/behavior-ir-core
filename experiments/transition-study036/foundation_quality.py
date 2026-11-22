"""Scoped foundation formatting/lint with actual bounded, captured exits."""

import argparse
import subprocess
from pathlib import Path
from artifact_io import digest, read, write_once

E = Path(__file__).resolve().parent
MODULES = (
    "artifact_io",
    "bootstrap",
    "capacity_profile_v2",
    "campaign",
    "controller_v2",
    "environment",
    "analysis_environment",
    "model_replay_v2",
    "extract",
    "intervals",
    "costs",
    "native_lean_check_v2",
    "ground_lean_probe_v2",
    "core_cli_build_v2",
    "quality_v2",
    "quality_runtime_v2",
    "continued_capacity_v2",
    "quality",
    "cli_timeout_probe_v2",
    "gate_runtime_v2",
    "gate_package_probe_v2",
    "gates",
    "native_build",
    "owned_cleanup",
    "cleanup_unpack_v2",
    "cleanup_build_v2",
    "sdk_dedup_v2",
    "evidence_dedup_v2",
    "proof_canary_v2",
    "quality_cache_cleanup_v2",
    "check_proofs",
    "preservation",
    "prepare",
    "recorder",
    "records",
    "resource_lease",
    "sources",
    "study",
    "foundation_quality",
    "foundation_tests",
    "storage_observer",
    "storage_probe",
    "lean_cache_prepare",
    "lean_cache_verify",
    "lean_cache_realize",
    "original_safety_environment",
    "analysis_runtime_probe",
    "analysis_native_recheck",
    "analysis_extract_probe",
    "rust_analysis_prepare",
    "rust_analysis_install",
    "lean_analysis_prepare",
    "lean_analysis_install",
    "lean_analysis_recheck",
    "analysis_backend_prepare",
    "analysis_backend_recheck",
    "analysis_backend_build",
    "analysis_backend_cache",
    "analysis_canary_probe",
    "analysis_backend_abi",
    "verify_analysis_sdk",
)


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--declaration", required=True)
    p.add_argument("--out", required=True)
    a = p.parse_args()
    declaration = read(a.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(a.out)
    if out != private / "foundation-quality" / declaration["record_id"] or out.exists():
        raise ValueError("V2ScopedQualityOutput")
    out.mkdir(parents=True)
    tools = read(E / "toolchain.json")["tools"]
    for name in ("ruff", "nix-store"):
        if digest(tools[name]["path"]) != tools[name]["sha256"]:
            raise ValueError("V2ScopedToolBytes")
    paths = [str(E / (name + ".py")) for name in MODULES] + [
        str(p) for p in sorted((E / "tests/v2").glob("*.py"))
    ]

    def run(name, argv):
        folder = out / name
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv, stdout=stdout, stderr=stderr, check=False, cwd=E.parents[1]
            )
        write_once(
            folder / "result.json",
            {
                "argv": argv,
                "exit_code": result.returncode,
                "stdout_sha256": digest(folder / "stdout.txt"),
                "stderr_sha256": digest(folder / "stderr.txt"),
            },
        )
        return result.returncode

    ruff = tools["ruff"]["path"]
    store = tools["nix-store"]["path"]
    package = str(Path(*Path(ruff).parts[:4]))
    statuses = {}
    statuses["tool-closure"] = run(
        "tool-closure", [store, "--query", "--requisites", package]
    )
    if statuses["tool-closure"] == 0:
        gcroot = private / "gcroots" / declaration["record_id"] / "ruff"
        gcroot.parent.mkdir(parents=True, exist_ok=True)
        statuses["gcroot"] = run(
            "gcroot",
            [
                store,
                "--option",
                "builders",
                "",
                "--option",
                "substitute",
                "false",
                "--max-jobs",
                "0",
                "--add-root",
                str(gcroot),
                "--indirect",
                "--realise",
                package,
            ],
        )
    statuses["ruff-version"] = run("ruff-version", [ruff, "--version"])
    statuses["format"] = run("format", [ruff, "format", "--check", *paths])
    statuses["lint"] = run("lint", [ruff, "check", *paths])
    write_once(
        out / "result.json",
        {
            "format": "core036.scoped-quality.v2",
            "scope": "v2 foundation Python only; not the whole canonical Core gate",
            "statuses": statuses,
            "source_subject_ref": declaration["source_subject_ref"],
            "product_adoption": "unactivated",
        },
    )
    return 0 if all(code == 0 for code in statuses.values()) else 1


if __name__ == "__main__":
    raise SystemExit(main())
