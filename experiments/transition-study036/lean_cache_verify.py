"""Verify the signed private substitute before admitting any store realization."""

import argparse
import os
import subprocess
from pathlib import Path

from artifact_io import digest, read, write_once
from lean_cache_prepare import DERIVER, ROOT

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
        out != private / "lean-cache-verification" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("LeanVerificationOutput")
    download_path = private / "lean-cache/a0018/download.json"
    download = read(download_path)
    cache = private / "lean-cache/a0018/cache"
    if download["cache_root"] != str(cache):
        raise ValueError("LeanVerificationCacheIdentity")
    out.mkdir(parents=True)
    tools = read(E / "toolchain.json")["tools"]
    nix = str(Path(tools["nix-store"]["path"]).with_name("nix"))
    argv = [
        nix,
        "--extra-experimental-features",
        "nix-command",
        "store",
        "verify",
        "--store",
        "file://" + str(cache),
        "--sigs-needed",
        "1",
        ROOT,
    ]
    with (
        (out / "stdout.txt").open("xb") as stdout,
        (out / "stderr.txt").open("xb") as stderr,
    ):
        result = subprocess.run(
            argv,
            stdout=stdout,
            stderr=stderr,
            env={**os.environ, "NIX_REMOTE": "local"},
            check=False,
        )
    write_once(
        out / "result.json",
        {
            "format": "core036.lean-substitute-verification.v2",
            "argv": argv,
            "exit_code": result.returncode,
            "download_sha256": digest(download_path),
            "expected_root": ROOT,
            "expected_deriver": DERIVER,
            "stdout_sha256": digest(out / "stdout.txt"),
            "stderr_sha256": digest(out / "stderr.txt"),
            "source_subject_ref": declaration["source_subject_ref"],
            "scope": "Nix signature and full NAR content verification in the owned file cache; no shared store modification",
            "product_adoption": "unactivated",
        },
    )
    return result.returncode


if __name__ == "__main__":
    raise SystemExit(main())
