"""Read-only verification of a closed backend materialization after Git cleanup."""

import argparse
import os
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
        out != private / "analysis-backend-recheck" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("AnalysisBackendRecheckOutput")
    config = read(E / "analysis-backend-recheck-inputs-v2.json")
    registry = RootRegistry({"private": private}, readonly=["private"])
    previous = read(registry.verify(config["materialization_ref"]))
    backend = Path(previous["backend"])
    if backend != private / "analysis-backend/a0054/lean":
        raise ValueError("AnalysisBackendMaterializationRoot")
    inventory = backend.parent / "backend-inventory.json"
    if digest(inventory) != previous["publisher_backend_inventory_sha256"]:
        raise ValueError("AnalysisBackendInventoryChanged")
    for row in read(inventory, limit=32 * 1024**2):
        path = backend / row["path"]
        if (
            not path.resolve().is_relative_to(backend)
            or path.stat().st_size != row["bytes"]
            or digest(path) != row["sha256"]
        ):
            raise ValueError("AnalysisBackendPublisherFilesChanged")
    if digest(backend / "lake-manifest.json") != previous["lake_manifest_sha256"]:
        raise ValueError("AnalysisBackendManifestChanged")
    tool = read(E / "native-environment-inputs-v2.json")["tools"]["git"]
    if digest(tool["path"]) != tool["sha256"]:
        raise ValueError("AnalysisBackendGitChanged")
    out.mkdir(parents=True)
    env = {
        **os.environ,
        "GIT_CONFIG_NOSYSTEM": "1",
        "GIT_CONFIG_GLOBAL": os.devnull,
        "GIT_OPTIONAL_LOCKS": "0",
        "GIT_TERMINAL_PROMPT": "0",
    }
    prefix = [
        tool["path"],
        "--no-optional-locks",
        "-c",
        "core.hooksPath=/dev/null",
        "-c",
        "maintenance.auto=false",
        "-c",
        "gc.auto=0",
        "-c",
        "gc.autoDetach=false",
    ]
    commands = []

    def run(label, argv, cwd):
        folder = out / label
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=cwd,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=300,
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
        write_once(folder / "result.json", row)
        if result.returncode:
            raise ValueError("AnalysisBackendGitVerification:" + label)
        return (folder / "stdout.txt").read_text().strip()

    for name, expected in previous["locked_dependencies"].items():
        target = backend / ".lake/packages" / name
        if not target.resolve().is_relative_to(backend):
            raise ValueError("AnalysisBackendDependencyPath")
        if run(name + "-revision", [*prefix, "rev-parse", "HEAD"], target) != expected:
            raise ValueError("AnalysisBackendWrongRevision")
        run(name + "-objects", [*prefix, "fsck", "--no-reflogs"], target)
        if run(
            name + "-status",
            [*prefix, "status", "--porcelain", "--untracked-files=all"],
            target,
        ):
            raise ValueError("AnalysisBackendDirtyWorktree")
    write_once(
        out / "result.json",
        {
            **previous,
            "format": "core036.analysis-backend-recheck.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "materialization_ref": config["materialization_ref"],
            "commands": commands,
            "scope": "actual publisher inventory, locked Git object/worktree checks with background maintenance disabled; backend build/import/kernel still pending",
            "product_adoption": "unactivated",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
