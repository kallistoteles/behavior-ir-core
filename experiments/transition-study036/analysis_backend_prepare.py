"""Materialize the release backend and its exact locked source dependencies."""

import argparse
import hashlib
import tarfile
import os
import re
import shutil
import subprocess
import time
from pathlib import Path

from artifact_io import digest, read, write_once
from environment import check_prepared_native_v2

E = Path(__file__).resolve().parent


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if out != private / "analysis-backend" / declaration["record_id"] or out.exists():
        raise ValueError("AnalysisBackendOutput")
    check_prepared_native_v2(E / "toolchain-v2.json")
    tools = read(E / "native-environment-inputs-v2.json")["tools"]
    git = tools["git"]["path"]
    if digest(git) != tools["git"]["sha256"]:
        raise ValueError("AnalysisBackendGitChanged")
    source = private / "analysis-runtime/a0035/package/backends/lean"
    manifest = read(source / "lake-manifest.json")
    expected = {
        "mathlib": "9d581dfff2e41de989072ea63abf3daf69311520",
        "plausible": "129d1ba9a16bc0660f46c79e9fb041ef5d5d80de",
        "LeanSearchClient": "c61286b7b63cbfd563b28e11e81d0a18233a044a",
        "importGraph": "b8cc5dd0a36233b88a6ed5a7dbf1207d09338c60",
        "proofwidgets": "16259c0d07d61ee37d999d05b5cf96338b8daa11",
        "aesop": "7d11bfa88558f8d3d90afdf6bd877ed70001498d",
        "Qq": "b0256621cb88178e9ad932a53633077b3029e621",
        "batteries": "d4c39b228d4a06f3b00748c2c445a7b9f056a6e3",
        "Cli": "c09cb1e4f1e6e1c231a1175a12b681b075054a1b",
    }
    if {p["name"]: p["rev"] for p in manifest["packages"]} != expected:
        raise ValueError("AnalysisBackendLockedDependencies")
    out.mkdir(parents=True)
    backend = out / "lean"
    inventory = []

    def copy_file(src, dst):
        src, dst = Path(src), Path(dst)
        if src.is_symlink() or not src.is_file() or src.stat().st_size > 512 * 1024**2:
            raise ValueError("AnalysisBackendCopyBoundary")
        shutil.copyfile(src, dst)
        value = digest(dst)
        if digest(src) != value:
            raise ValueError("AnalysisBackendCopyMismatch")
        inventory.append(
            {
                "path": str(src.relative_to(source)),
                "bytes": dst.stat().st_size,
                "sha256": value,
            }
        )
        time.sleep(0.002)
        return str(dst)

    shutil.copytree(
        source,
        backend,
        copy_function=copy_file,
        ignore=shutil.ignore_patterns("config", "*.tar.gz"),
    )
    archive = E / "private/analysis/aeneas-linux-x86_64.tar.gz"
    if (
        digest(archive)
        != "191cda720af3f0ad72f54dced18eb12772f28f97f7c06ad1d981c93ca8266c1f"
    ):
        raise ValueError("AnalysisBackendPublisherArchive")
    copied = {row["path"]: row for row in inventory}
    checked = set()
    with tarfile.open(archive, "r:gz") as package_archive:
        for member in package_archive:
            parts = Path(member.name).parts
            if "backends" not in parts:
                continue
            position = parts.index("backends")
            if parts[position : position + 2] != ("backends", "lean"):
                continue
            relative = str(Path(*parts[position + 2 :]))
            if not member.isfile() or relative not in copied:
                continue
            with package_archive.extractfile(member) as stream:
                value = hashlib.file_digest(stream, "sha256").hexdigest()
            if (
                copied[relative]["sha256"] != value
                or copied[relative]["bytes"] != member.size
            ):
                raise ValueError("AnalysisBackendSourceArchiveMismatch")
            checked.add(relative)
    if checked != set(copied):
        raise ValueError("AnalysisBackendSourceArchiveCoverage")
    packages = backend / ".lake/packages"
    packages.mkdir(exist_ok=False)
    env = {
        **os.environ,
        "GIT_CONFIG_NOSYSTEM": "1",
        "GIT_CONFIG_GLOBAL": os.devnull,
        "GIT_TERMINAL_PROMPT": "0",
    }
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
            "cwd": str(cwd),
            "exit_code": result.returncode,
            "stdout_sha256": digest(folder / "stdout.txt"),
            "stderr_sha256": digest(folder / "stderr.txt"),
        }
        commands.append(row)
        write_once(folder / "result.json", row)
        if result.returncode:
            raise ValueError("AnalysisBackendDependencyCommand:" + label)
        return (folder / "stdout.txt").read_text().strip()

    for package in manifest["packages"]:
        name, rev, url = package["name"], package["rev"], package["url"]
        if not re.fullmatch(
            r"https://github.com/(leanprover|leanprover-community)/[A-Za-z0-9_.-]+", url
        ):
            raise ValueError("AnalysisBackendDependencyURL")
        target = packages / name
        target.mkdir()
        prefix = [
            git,
            "-c",
            "core.hooksPath=/dev/null",
            "-c",
            "credential.helper=",
            "-c",
            "protocol.file.allow=never",
            "-c",
            "maintenance.auto=false",
            "-c",
            "gc.auto=0",
            "-c",
            "gc.autoDetach=false",
        ]
        run(name + "-init", [*prefix, "init", "--quiet"], target)
        run(
            name + "-fetch",
            [*prefix, "fetch", "--depth=1", "--no-tags", url, rev],
            target,
        )
        actual = run(name + "-commit", [*prefix, "rev-parse", "FETCH_HEAD"], target)
        if actual != rev:
            raise ValueError("AnalysisBackendDependencyRevision")
        run(
            name + "-checkout",
            [*prefix, "checkout", "--quiet", "--detach", rev],
            target,
        )
        if run(
            name + "-status",
            [*prefix, "status", "--porcelain", "--untracked-files=all"],
            target,
        ):
            raise ValueError("AnalysisBackendDependencyDirty")
    write_once(out / "backend-inventory.json", inventory)
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-backend-sources.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "backend": str(backend),
            "publisher_backend_inventory_sha256": digest(
                out / "backend-inventory.json"
            ),
            "lake_manifest_sha256": digest(backend / "lake-manifest.json"),
            "locked_dependencies": expected,
            "commands": commands,
            "scope": "pinned backend/release objects and exact Git dependency source materialization; no backend build, import check or kernel-closure claim",
            "product_adoption": "unactivated",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
