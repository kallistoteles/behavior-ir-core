"""Fresh tiny actual Rust extraction, exact Lean theorem audit and kernel replay."""

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
    if out != private / "analysis-canary" / declaration["record_id"] or out.exists():
        raise ValueError("AnalysisCanaryOutput")
    config = read(E / "analysis-canary-inputs-v2.json")
    registry = RootRegistry({"private": private}, readonly=["private"])
    native = read(registry.verify(config["rust_ref"]))
    cache = read(registry.verify(config["cache_ref"]))
    analysis = read(registry.verify(config["lean_ref"]))
    if (
        any(native["statuses"].values())
        or any(analysis["statuses"].values())
        or cache["missing_requested_roots"]
    ):
        raise ValueError("AnalysisCanaryToolsNotPrepared")
    for binary in [*native["patched_binaries"], *analysis["patched_binaries"]]:
        if digest(binary["path"]) != binary["sha256"]:
            raise ValueError("AnalysisCanaryToolChanged")
    inventory = read(registry.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    sdk = Path(analysis["sdk"])
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("AnalysisCanarySDKPath")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("AnalysisCanarySDKClosureChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("AnalysisCanarySDKLinkChanged")
    backend = Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("AnalysisCanaryBackend")
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    source = out / "identity.rs"
    write_once(
        source, b"#![forbid(unsafe_code)]\npub fn identity(value:u64)->u64 { value }\n"
    )
    paths = {row["name"]: row["path"] for row in native["patched_binaries"]}
    rust_env = {
        **os.environ,
        **native["environment"],
        "CARGO_TARGET_DIR": str(out / "target"),
        "CHARON_CACHE_DIR": str(out / "charon-cache"),
    }
    for key in ("RUSTC_WRAPPER", "RUSTC_WORKSPACE_WRAPPER", "LD_PRELOAD"):
        rust_env.pop(key, None)
    lean_env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
        "GIT_OPTIONAL_LOCKS": "0",
        "MATHLIB_NO_CACHE_ON_UPDATE": "1",
        "GIT_CONFIG_NOSYSTEM": "1",
        "GIT_CONFIG_GLOBAL": os.devnull,
    }
    lean_env.pop("LD_PRELOAD", None)
    commands = []

    def run(label, argv, *, env=lean_env, cwd=backend, timeout=300):
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
            "exit_code": result.returncode,
            "stdout_sha256": digest(folder / "stdout.txt"),
            "stderr_sha256": digest(folder / "stderr.txt"),
        }
        commands.append(row)
        write_once(folder / "result.json", row)
        if result.returncode:
            raise ValueError("AnalysisCanaryCommand:" + label)

    llbc = out / "identity.llbc"
    run(
        "extract",
        [
            paths["charon"],
            "rustc",
            "--preset",
            "aeneas",
            "--sysroot",
            "default",
            "--dest-file",
            str(llbc),
            "--",
            "--crate-type=lib",
            "--edition=2024",
            "--crate-name=core036_identity",
            str(source),
        ],
        env=rust_env,
        cwd=out,
    )
    run(
        "translate",
        [paths["aeneas"], "-backend", "lean", "-dest", str(project), str(llbc)],
        env=rust_env,
        cwd=out,
    )
    generated = list(project.glob("*.lean"))
    if len(generated) != 1 or not re.fullmatch(
        r"[A-Za-z][A-Za-z0-9_]*", generated[0].stem
    ):
        raise ValueError("AnalysisCanaryGeneratedModule")
    module = generated[0].stem
    generated_digest = digest(generated[0])
    proof = f"module\npublic import {module}\n@[expose] public section\ntheorem core036_identity_correct (value : Aeneas.Std.U64) :\n  core036_identity.identity value = Aeneas.Std.Result.ok value := rfl\n"
    write_once(project / "ProofRoot.lean", proof.encode())
    from check_proofs import check_declared_proof_v2

    expected_roots = [
        dict(
            id="helper.identity",
            declaration="core036_identity_correct",
            expected_type="(value : Aeneas.Std.U64) → core036_identity.identity value = Aeneas.Std.Result.ok value",
        )
    ]
    checked = check_declared_proof_v2(
        project=project,
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=lean_env,
        modules=[module, "ProofRoot"],
        roots=expected_roots,
        expected_files={
            module: generated_digest,
            "ProofRoot": digest(project / "ProofRoot.lean"),
        },
        out=out / "declared-proof",
    )
    commands.extend(checked["commands"])
    if digest(generated[0]) != generated_digest:
        raise ValueError("AnalysisCanaryGeneratedBodyChanged")
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-canary.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "rust_source_sha256": digest(source),
            "llbc_sha256": digest(llbc),
            "generated_sha256": generated_digest,
            "proof_source_sha256": digest(project / "ProofRoot.lean"),
            "audit": checked["audit"][0],
            "declared_proof_sha256": digest(out / "declared-proof/result.json"),
            "commands": commands,
            "helper_status": "freshly_kernel_checked",
            "scope": "one actual freshly extracted Rust identity helper with exact type/standard-foundation-only transitive axioms/fresh kernel; no source/cfg/axiom mutation controls or native Core proof yet",
            "native_general_correspondence": "unestablished",
            "feature_complete": False,
            "product_adoption": "unactivated",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
