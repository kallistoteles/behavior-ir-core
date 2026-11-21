"""Build the locked mathlib cache utility in an isolated writable backend copy."""

import argparse
import os
import shutil
import subprocess
import time
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
        out != private / "analysis-backend-build" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("AnalysisBackendBuildOutput")
    config = read(E / "analysis-backend-build-inputs-v2.json")
    registry = RootRegistry({"private": private}, readonly=["private"])
    analysis = read(registry.verify(config["lean_ref"]))
    sources = read(registry.verify(config["backend_ref"]))
    if any(analysis["statuses"].values()):
        raise ValueError("AnalysisLeanProbeNotPassed")
    for binary in analysis["patched_binaries"]:
        if digest(binary["path"]) != binary["sha256"]:
            raise ValueError("AnalysisLeanBinaryChanged")
    sdk = Path(analysis["sdk"])
    source = Path(sources["backend"])
    if source != private / "analysis-backend/a0054/lean":
        raise ValueError("AnalysisBackendBuildSource")
    tools = read(E / "native-environment-inputs-v2.json")["tools"]
    for tool in [*tools.values(), config["curl"]]:
        if digest(tool["path"]) != tool["sha256"]:
            raise ValueError("AnalysisBackendBuildToolChanged")
    if "reuse_build_result_ref" in config:
        from analysis_backend_abi import recheck

        return recheck(declaration, out, config, analysis, sources, registry)
    out.mkdir(parents=True)
    from verify_analysis_sdk import verify_sdk

    sdk_binding = verify_sdk(analysis, private, out)
    backend = out / "lean"
    copied = []

    def copy_file(src, dst):
        src, dst = Path(src), Path(dst)
        if src.is_symlink() or not src.is_file():
            raise ValueError("AnalysisBackendCopyType:" + str(src))
        shutil.copy2(src, dst)
        value = digest(dst)
        if digest(src) != value:
            raise ValueError("AnalysisBackendCopyMismatch")
        copied.append(
            {
                "path": str(src.relative_to(source)),
                "bytes": dst.stat().st_size,
                "sha256": value,
            }
        )
        time.sleep(0.001)
        return str(dst)

    links = [path for path in source.rglob("*") if path.is_symlink()]
    for link in links:
        if (
            not link.resolve().is_relative_to(source)
            or not link.exists()
            or Path(os.readlink(link)).is_absolute()
        ):
            raise ValueError("AnalysisBackendSourceSymlinkEscape")
    shutil.copytree(source, backend, copy_function=copy_file, symlinks=True)
    for link in links:
        target = backend / link.relative_to(source)
        if not target.resolve().is_relative_to(backend) or os.readlink(
            target
        ) != os.readlink(link):
            raise ValueError("AnalysisBackendCopiedSymlinkEscape")
        copied.append(
            {
                "path": str(link.relative_to(source)),
                "kind": "symlink",
                "target": os.readlink(target),
                "resolved_sha256": digest(target),
            }
        )
    write_once(out / "copy-inventory.json", copied)
    paths = [
        str(sdk / "bin"),
        str(Path(config["curl"]["path"]).parent),
        *sorted({str(Path(tool["path"]).parent) for tool in tools.values()}),
    ]
    env = {
        **os.environ,
        **analysis["environment"],
        "PATH": os.pathsep.join(paths),
        "CI": "1",
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "MATHLIB_NO_CACHE_ON_UPDATE": "1",
        "MATHLIB_CACHE_DIR": str(out / "mathlib-cache"),
        "MATHLIB_CACHE_PARALLEL_MAX": "1",
        "CURL_HOME": str(out / "curl-home"),
        "GIT_CONFIG_NOSYSTEM": "1",
        "GIT_CONFIG_GLOBAL": os.devnull,
        "GIT_TERMINAL_PROMPT": "0",
        "GIT_CONFIG_COUNT": "3",
        "GIT_CONFIG_KEY_0": "maintenance.auto",
        "GIT_CONFIG_VALUE_0": "false",
        "GIT_CONFIG_KEY_1": "gc.auto",
        "GIT_CONFIG_VALUE_1": "0",
        "GIT_CONFIG_KEY_2": "gc.autoDetach",
        "GIT_CONFIG_VALUE_2": "false",
    }
    env.pop("LD_PRELOAD", None)
    (out / "curl-home").mkdir()
    commands = []

    def run(label, argv, *, cwd=backend, timeout=300):
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
                timeout=timeout,
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
            raise ValueError("AnalysisBackendBuildCommand:" + label)

    curl_root = str(Path(config["curl"]["path"]).parents[1])
    run(
        "curl-closure",
        [tools["nix-store"]["path"], "--query", "--requisites", curl_root],
    )
    run("curl-content", [tools["nix-store"]["path"], "--verify-path", curl_root])
    gcroot = private / "gcroots" / declaration["record_id"] / "curl"
    gcroot.parent.mkdir(parents=True, exist_ok=True)
    run(
        "curl-root",
        [
            tools["nix-store"]["path"],
            "--option",
            "builders",
            "",
            "--option",
            "substitute",
            "false",
            "--max-jobs",
            "0",
            "--realise",
            curl_root,
            "--add-root",
            str(gcroot),
        ],
    )
    run("curl-version", [config["curl"]["path"], "--version"])
    for package in read(backend / "lake-manifest.json")["packages"]:
        target = backend / ".lake/packages" / package["name"]
        run(
            package["name"] + "-remote",
            [tools["git"]["path"], "config", "remote.origin.url", package["url"]],
            cwd=target,
        )
    manifest_hash = digest(backend / "lake-manifest.json")
    run("lake-version", [str(sdk / "bin/lake"), "--version"])
    run(
        "cache-build",
        [str(sdk / "bin/lake"), "--no-cache", "build", "@mathlib/cache"],
        timeout=1800,
    )
    run(
        "cache-help",
        [str(sdk / "bin/lake"), "--no-build", "exe", "@mathlib/cache", "--help"],
    )
    if digest(backend / "lake-manifest.json") != manifest_hash:
        raise ValueError("AnalysisBackendManifestRewritten")
    executable = backend / ".lake/packages/mathlib/.lake/build/bin/cache"
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-backend-cache-tool.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "backend": str(backend),
            "source_backend_ref": config["backend_ref"],
            "sdk_binding": sdk_binding,
            "analysis_lean_ref": config["lean_ref"],
            "copy_inventory_sha256": digest(out / "copy-inventory.json"),
            "cache_executable": {
                "path": str(executable),
                "bytes": executable.stat().st_size,
                "sha256": digest(executable),
            },
            "commands": commands,
            "environment": {
                key: env[key]
                for key in (
                    "PATH",
                    "CI",
                    "LEAN_NUM_THREADS",
                    "LEAN_STACK_SIZE_KB",
                    "MALLOC_ARENA_MAX",
                    "MATHLIB_NO_CACHE_ON_UPDATE",
                    "MATHLIB_CACHE_DIR",
                    "MATHLIB_CACHE_PARALLEL_MAX",
                    "CURL_HOME",
                )
            },
            "scope": "actual locked mathlib cache utility build only; no dependency cache download, Aeneas import/kernel or native correspondence pass",
            "product_adoption": "unactivated",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
