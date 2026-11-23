"""Build and retain the actual selected Core CLI before the unchanged full gate."""

import argparse
import json
import os
import shutil
import subprocess
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from artifact_registration_v2 import guard_protected_components
from native_compile_binding_v2 import TARGET, configuration_inventory

E = Path(__file__).resolve().parent
R = E.parents[1]


def build_plan(tools, private, target, core):
    """Use the admitted native compiler/linker; never evaluate/install a shell."""
    if not {"cargo", "rustc", "cc"} <= set(tools):
        raise ValueError("CoreCliPinnedBuildTools")
    for item in [private, target, core, *[t["path"] for t in tools.values()]]:
        guard_protected_components(item)
        if not Path(item).is_absolute() or ".." in Path(item).parts:
            raise ValueError("CoreCliAbsoluteBuildPaths")
    if not target.is_relative_to(private / "disposable"):
        raise ValueError("CoreCliOwnedBuildTarget")
    environment = {
        "CARGO_HOME": str(private / "cargo"),
        "CARGO_TARGET_DIR": str(target),
        "CARGO_NET_OFFLINE": "true",
        "CARGO_INCREMENTAL": "0",
        "CARGO_BUILD_JOBS": "1",
        "CARGO_PROFILE_RELEASE_DEBUG": "0",
        "RUSTC": tools["rustc"]["path"],
        "CC": tools["cc"]["path"],
        "RUSTFLAGS": "-C target-cpu=x86-64 -C linker=" + tools["cc"]["path"],
        "RUST_TEST_THREADS": "1",
        "TMPDIR": str(private / "tmp"),
        "LC_ALL": "C",
        "PYTHONDONTWRITEBYTECODE": "1",
        "PATH": os.pathsep.join(
            dict.fromkeys(str(Path(t["path"]).parent) for t in tools.values())
        ),
    }
    argv = [
        tools["cargo"]["path"],
        "build",
        "--target",
        TARGET,
        "--release",
        "--locked",
        "--offline",
        "--message-format=json-render-diagnostics",
        "--manifest-path",
        str(core / "Cargo.toml"),
        "-p",
        "behavior-cli",
    ]
    return argv, environment, target / TARGET / "release/behavior"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if out != private / "core-cli-builds" / declaration["record_id"] or out.exists():
        raise ValueError("CoreCliBuildOwnership")
    prepared = check_prepared_native_v2(E / "toolchain-v2.json")
    tools = dict(prepared["tools"])
    core = Path(prepared["sources"]["core-reuse"]["path"])
    source_hash = digest(core / "source-export.json")
    lock_hash = digest(core / "Cargo.lock")
    target = private / "disposable" / ("cli-" + declaration["record_id"]) / "target"
    if target.exists():
        raise ValueError("CoreCliFreshTarget")
    out.mkdir(parents=True)
    target.mkdir(parents=True)
    configuration_inventory(core, private / "cargo")
    argv, environment, emitted = build_plan(tools, private, target, core)
    write_once(
        out / "build-environment.json",
        {
            "format": "core036.controlled-cli-environment.v2",
            "argv": argv,
            "environment": environment,
            "target": TARGET,
            "tools": tools,
            "inherited_environment": False,
            "shell_evaluation_or_realization": False,
        },
    )
    identity = subprocess.run(
        [tools["rustc"]["path"], "-vV"],
        env=environment,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        timeout=30,
        check=False,
    )
    write_once(
        out / "compiler-identity.json",
        {
            "argv": [tools["rustc"]["path"], "-vV"],
            "exit_code": identity.returncode,
            "stdout": identity.stdout.decode("utf-8"),
            "stderr": identity.stderr.decode("utf-8"),
            "tool": tools["rustc"],
        },
    )
    if identity.returncode != 0:
        return 1
    with (
        (out / "stdout.txt").open("xb") as stdout,
        (out / "stderr.txt").open("xb") as stderr,
    ):
        child = subprocess.run(
            argv,
            cwd=core,
            env=environment,
            stdout=stdout,
            stderr=stderr,
            timeout=1750,
            check=False,
        )
    receipt = {
        "argv": argv,
        "exit_code": child.returncode,
        "stdout_sha256": digest(out / "stdout.txt"),
        "stderr_sha256": digest(out / "stderr.txt"),
    }
    write_once(out / "command.json", receipt)
    if child.returncode:
        return 1
    artifacts = []
    for line in (out / "stdout.txt").read_text().splitlines():
        if line.startswith("{"):
            row = json.loads(line)
            if (
                row.get("reason") == "compiler-artifact"
                and row.get("target", {}).get("name") == "behavior"
                and row.get("executable")
            ):
                artifacts.append(row)
    if len(artifacts) != 1 or Path(artifacts[0]["executable"]) != emitted:
        raise ValueError("CoreCliActualCompilerArtifact")
    retained = out / "retained/behavior"
    retained.parent.mkdir()
    shutil.copy2(emitted, retained)
    if digest(emitted) != digest(retained) or retained.read_bytes()[:4] != b"\x7fELF":
        raise ValueError("CoreCliRetainedActualElf")
    check_prepared_native_v2(E / "toolchain-v2.json")
    if (
        digest(core / "source-export.json") != source_hash
        or digest(core / "Cargo.lock") != lock_hash
    ):
        raise ValueError("CoreCliBuildSourceChanged")
    roots = RootRegistry({"private": private}, readonly=["private"])
    write_once(
        out / "result.json",
        {
            "format": "core036.core-cli-build.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "compiler_artifact": artifacts[0],
            "command": receipt,
            "compiled_core": str(core),
            "source_export_sha256": source_hash,
            "core_lock_sha256": lock_hash,
            "source_export_ref": roots.reference(
                "private", str((core / "source-export.json").relative_to(private))
            ),
            "executable_ref": roots.reference(
                "private", str(retained.relative_to(private))
            ),
            "target": str(target),
            "target_started_empty": True,
            "profile": "release",
            "target_triple": TARGET,
            "controlled_environment_ref": roots.reference(
                "private", str((out / "build-environment.json").relative_to(private))
            ),
            "compiler_identity_ref": roots.reference(
                "private", str((out / "compiler-identity.json").relative_to(private))
            ),
            "shell_evaluation_or_realization": False,
            "canonical_quality": "unestablished",
            "native_correspondence": "unestablished",
            "product_adoption": "unactivated",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
