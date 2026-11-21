"""Supervised local substitution of one invalid output, never repair a valid path.

The exact signed NAR has already been fully verified. All references must be
valid before admission; builders, daemon work and network substitutes are off.
This is normal Nix realization of a missing/invalid object, rather than an
in-place repair of a valid shared runtime. No manual store deletion is used.
"""

import argparse
import os
import shutil
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
        out != private / "lean-cache-realization" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("LeanRealizationOutput")
    out.mkdir(parents=True)
    tools = read(E / "toolchain.json")["tools"]
    nix_store = tools["nix-store"]["path"]
    checked_path = private / "lean-cache-verification/a0019/result.json"
    checked = read(checked_path)
    cache = private / "lean-cache/a0018/cache"
    metadata = read(private / "lean-cache/a0018/cache-metadata.json")
    if (
        checked["exit_code"] != 0
        or checked["expected_root"] != ROOT
        or checked["expected_deriver"] != DERIVER
        or checked["download_sha256"]
        != digest(private / "lean-cache/a0018/download.json")
        or digest(private / "lean-cache-verification/a0019/stderr.txt")
        != checked["stderr_sha256"]
    ):
        raise ValueError("LeanUnverifiedSubstitute")
    if shutil.disk_usage(private).free < 48 * 1024**3:
        raise ValueError("LeanMaterializationHeadroom")
    # Read-only queries use the host's normal store access. Only the privileged
    # realization child opens the local root-owned database directly.
    environment = {**os.environ}

    def run(label, argv):
        directory = out / label
        directory.mkdir()
        with (
            (directory / "stdout.txt").open("xb") as stdout,
            (directory / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv, stdout=stdout, stderr=stderr, env=environment, check=False
            )
        write_once(
            directory / "result.json",
            {
                "argv": argv,
                "exit_code": result.returncode,
                "stdout_sha256": digest(directory / "stdout.txt"),
                "stderr_sha256": digest(directory / "stderr.txt"),
            },
        )
        return result.returncode

    # A working/registered output must never enter this path. In particular,
    # --repair and manual deletion are deliberately absent from the executor.
    if run("invalid-precondition", [nix_store, "--check-validity", ROOT]) == 0:
        raise ValueError("LeanOutputAlreadyValidNoReplacementAdmitted")
    references = [
        "/nix/store/" + ref
        for ref in metadata["fields"]["References"].split()
        if "/nix/store/" + ref != ROOT
    ]
    if run("reference-precondition", [nix_store, "--check-validity", *references]) != 0:
        raise ValueError("LeanReferenceClosureRequiresSeparatePreparation")
    root_command = [
        nix_store,
        "--realise",
        ROOT,
        "--option",
        "substituters",
        "file://" + str(cache),
        "--option",
        "builders",
        "",
        "--option",
        "max-jobs",
        "0",
        "--option",
        "max-substitution-jobs",
        "1",
        "--option",
        "require-sigs",
        "true",
        "--option",
        "temp-dir",
        str(private / "tmp"),
    ]
    # sudo retains these limits on this host; check inside the privileged child
    # before exec, so no daemon or root-owned unbounded builder is hidden.
    wrapper = "import os,resource,sys; assert len(os.sched_getaffinity(0))==1; assert resource.getrlimit(resource.RLIMIT_AS)[0]==8589934592; os.environ['NIX_REMOTE']='local'; os.execv(sys.argv[1],sys.argv[1:])"
    sudo = str(Path("/run/wrappers/bin/sudo").resolve())
    if not Path(sudo).is_file():
        raise ValueError("LeanLocalRealizationPrivilegeUnavailable")
    code = run(
        "realize", [sudo, "-n", tools["python"]["path"], "-c", wrapper, *root_command]
    )
    if code != 0:
        return code
    if run("valid-after", [nix_store, "--check-validity", ROOT]) != 0:
        return 1
    if run("deriver-after", [nix_store, "--query", "--deriver", ROOT]) != 0:
        return 1
    if (
        out / "deriver-after/stdout.txt"
    ).read_text().strip() != "/nix/store/" + DERIVER:
        raise ValueError("LeanRealizedDeriverMismatch")
    # Pin the actual complete closure before later offline certification.
    gcroot = private / "gcroots/original-safety-lean430"
    gcroot.parent.mkdir(exist_ok=True)
    if gcroot.exists() or gcroot.is_symlink():
        raise ValueError("LeanGCRootAlreadyExists")
    if run("gcroot", [nix_store, "--realise", ROOT, "--add-root", str(gcroot)]) != 0:
        return 1
    write_once(
        out / "result.json",
        {
            "format": "core036.lean-realization.v2",
            "exit_code": 0,
            "substitute_verification_sha256": digest(checked_path),
            "root": ROOT,
            "deriver": DERIVER,
            "gcroot": str(gcroot),
            "source_subject_ref": declaration["source_subject_ref"],
            "scope": "exact invalid output realized from verified signed local cache; no builders, network substitute, daemon or valid-path repair; runtime smoke remains separate",
            "product_adoption": "unactivated",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
