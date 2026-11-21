"""Run a retained completed cache build after a non-code ELF loader adaptation."""

import os
import shutil
import subprocess
from pathlib import Path

from artifact_io import digest, read, write_once
from rust_analysis_install import executable_sections
from verify_analysis_sdk import verify_sdk

E = Path(__file__).resolve().parent


def recheck(declaration, out, config, analysis, sources, registry):
    private = Path(declaration["profile"]["roots"]["cache"])
    backend = private / "analysis-backend-build/a0058/lean"
    prior = read(registry.verify(config["reuse_build_result_ref"]))
    sdk = Path(analysis["sdk"])
    if prior["exit_code"] != 0 or prior["argv"] != [
        str(sdk / "bin/lake"),
        "--no-cache",
        "build",
        "@mathlib/cache",
    ]:
        raise ValueError("AnalysisCacheBuildNotCompleted")
    original = registry.verify(config["cache_binary_ref"])
    if original != backend / ".lake/packages/mathlib/.lake/build/bin/cache":
        raise ValueError("AnalysisCacheBinaryOwnership")
    if digest(backend / "lake-manifest.json") != sources["lake_manifest_sha256"]:
        raise ValueError("AnalysisCacheWorkspaceManifest")
    out.mkdir(parents=True)
    sdk_binding = verify_sdk(analysis, private, out)
    retained = out / "source-built-cache.bin"
    executable = out / "bin/cache"
    executable.parent.mkdir()
    shutil.copy2(original, retained)
    shutil.copy2(retained, executable)
    if digest(retained) != config["cache_binary_ref"]["sha256"]:
        raise ValueError("AnalysisCacheRetentionMismatch")
    pins = read(E / "analysis-lean-install-inputs-v2.json")
    patcher = pins["tools"]["patchelf"]
    if digest(patcher["path"]) != patcher["sha256"]:
        raise ValueError("AnalysisCachePatcherChanged")
    sections = executable_sections(executable)
    tools = read(E / "native-environment-inputs-v2.json")["tools"]
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
        "GIT_OPTIONAL_LOCKS": "0",
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

    def run(label, argv):
        folder = out / label
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=backend,
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
            raise ValueError("AnalysisCacheABIProbe:" + label)

    run(
        "patch-cache",
        [
            patcher["path"],
            "--set-interpreter",
            pins["loader"],
            "--set-rpath",
            env["LD_LIBRARY_PATH"],
            str(executable),
        ],
    )
    if executable_sections(executable) != sections:
        raise ValueError("AnalysisCacheInstructionChange")
    run(
        "cache-help",
        [str(sdk / "bin/lake"), "--no-build", "env", str(executable), "--help"],
    )
    # Generated .lake build/config artifacts are the declared writable cache;
    # previous logs, input snapshots and retained binaries are never overwritten.
    if digest(original) != config["cache_binary_ref"]["sha256"] or digest(
        retained
    ) != digest(original):
        raise ValueError("AnalysisCacheOriginalWasChanged")
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-backend-cache-tool.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "backend": str(backend),
            "source_backend_ref": config["backend_ref"],
            "analysis_lean_ref": config["lean_ref"],
            "completed_build_ref": config["reuse_build_result_ref"],
            "original_binary_ref": config["cache_binary_ref"],
            "sdk_binding": sdk_binding,
            "cache_executable": {
                "path": str(executable),
                "bytes": executable.stat().st_size,
                "sha256": digest(executable),
            },
            "executable_sections_unchanged": sections,
            "commands": commands,
            "environment": {
                key: value
                for key, value in env.items()
                if key
                in {
                    "PATH",
                    "CI",
                    "LEAN_NUM_THREADS",
                    "LEAN_STACK_SIZE_KB",
                    "MALLOC_ARENA_MAX",
                    "MATHLIB_NO_CACHE_ON_UPDATE",
                    "MATHLIB_CACHE_DIR",
                    "MATHLIB_CACHE_PARALLEL_MAX",
                    "CURL_HOME",
                }
            },
            "scope": "actual source-built cache utility, retained before non-code ABI adaptation and help probe; reused generated workspace cache is warm; no dependency cache download/Aeneas kernel/native correspondence claim",
            "product_adoption": "unactivated",
        },
    )
    return 0
