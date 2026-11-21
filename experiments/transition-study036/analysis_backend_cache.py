"""Fetch only the external import roots used by the locked Aeneas backend."""

import argparse
import os
import re
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
        out != private / "analysis-backend-cache" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("AnalysisBackendCacheOutput")
    config = read(E / "analysis-backend-cache-inputs-v2.json")
    registry = RootRegistry({"private": private}, readonly=["private"])
    prepared = read(registry.verify(config["cache_tool_ref"]))
    analysis = read(registry.verify(prepared["analysis_lean_ref"]))
    executable = Path(prepared["cache_executable"]["path"])
    if (
        not executable.is_relative_to(private / "analysis-backend-build")
        or digest(executable) != prepared["cache_executable"]["sha256"]
    ):
        raise ValueError("AnalysisCacheToolChanged")
    backend, sdk = Path(prepared["backend"]), Path(analysis["sdk"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("AnalysisCacheWorkspace")
    package_map = {
        "Mathlib": "mathlib",
        "Batteries": "batteries",
        "Aesop": "aesop",
        "Qq": "Qq",
        "ProofWidgets": "proofwidgets",
        "Plausible": "plausible",
        "LeanSearchClient": "LeanSearchClient",
        "ImportGraph": "importGraph",
        "Cli": "Cli",
    }
    roots, sources = set(), []
    files = (
        sorted(backend.glob("*.lean"))
        + sorted((backend / "Aeneas").rglob("*.lean"))
        + sorted((backend / "AeneasMeta").rglob("*.lean"))
    )
    for source in files:
        if source.name == "lakefile.lean":
            continue
        for match in re.finditer(
            r"^(?:(?:public|private|meta)\s+)*import\s+([A-Za-z_][A-Za-z0-9_'.]*)",
            source.read_text(),
            re.M,
        ):
            module = match.group(1)
            if module.split(".")[0] in package_map:
                roots.add(module)
        sources.append(
            {"path": str(source.relative_to(backend)), "sha256": digest(source)}
        )
    if not roots or "Mathlib" in roots:
        raise ValueError("AnalysisCacheUnboundedRootSelection")
    out.mkdir(parents=True)
    write_once(
        out / "import-roots.json",
        {
            "roots": sorted(roots),
            "sources": sources,
            "scope": "requested imports only; Lean import/type/kernel checks independently establish actual closure",
        },
    )
    env = {
        **os.environ,
        **analysis["environment"],
        **prepared["environment"],
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
    argv = [
        str(sdk / "bin/lake"),
        "--no-build",
        "env",
        str(executable),
        "get",
        *sorted(roots),
    ]
    with (
        (out / "stdout.txt").open("xb") as stdout,
        (out / "stderr.txt").open("xb") as stderr,
    ):
        result = subprocess.run(
            argv,
            cwd=backend,
            env=env,
            stdout=stdout,
            stderr=stderr,
            timeout=1800,
            check=False,
        )
    write_once(
        out / "command.json",
        {
            "argv": argv,
            "exit_code": result.returncode,
            "stdout_sha256": digest(out / "stdout.txt"),
            "stderr_sha256": digest(out / "stderr.txt"),
        },
    )
    if result.returncode:
        return 1
    missing = []
    for module in sorted(roots):
        path = (
            backend
            / ".lake/packages"
            / package_map[module.split(".")[0]]
            / ".lake/build/lib/lean"
            / Path(*module.split(".")).with_suffix(".olean")
        )
        if not path.is_file():
            missing.append(module)
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-backend-cache.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "cache_tool_ref": config["cache_tool_ref"],
            "backend": str(backend),
            "requested_roots": sorted(roots),
            "missing_requested_roots": missing,
            "command_sha256": digest(out / "command.json"),
            "scope": "actual dependency cache retrieval and requested object presence only; no Aeneas type/kernel/native correspondence pass",
            "product_adoption": "unactivated",
        },
    )
    return 1 if missing else 0


if __name__ == "__main__":
    raise SystemExit(main())
