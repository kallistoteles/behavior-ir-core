"""Diagnose the exact original Safety runtime; never repair shared paths here."""

import argparse
import os
import subprocess
import resource
from pathlib import Path
from artifact_io import digest, read, write_once

E = Path(__file__).resolve().parent
R = E.parents[1]


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--declaration", required=True)
    p.add_argument("--out", required=True)
    a = p.parse_args()
    declaration = read(a.declaration)
    lean_as = declaration["profile"]["limits"]["lean_address_space_bytes"]
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(a.out)
    if (
        out != private / "original-safety-environment" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("OriginalSafetyProbeOutput")
    out.mkdir(parents=True)
    tools = read(E / "toolchain.json")["tools"]
    lean_root = Path(tools["lean"]["path"]).parent.parent
    pin_path = (
        private
        / "cargo/git/checkouts/behavior-ir-b14b1014413630d7/8c0849f/crates/behavior-models/proofs/toolchain.json"
    )
    pin = read(pin_path)
    expected = pin["profiles"]["x86_64-linux"]
    if str(lean_root) != expected["outPath"]:
        raise ValueError("OriginalSafetyRootMismatch")
    env = {
        **os.environ,
        "LEAN_PATH": str(out),
        "PATH": os.pathsep.join(
            [
                str(lean_root / "bin"),
                *[str(Path(t["path"]).parent) for t in tools.values()],
            ]
        ),
    }

    def run(name, argv):
        folder = out / name
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            proof_process = name in {"lean-compile", "fresh-kernel"}

            def proof_limit():
                resource.setrlimit(resource.RLIMIT_AS, (lean_as, lean_as))

            try:
                result = subprocess.run(
                    argv,
                    stdout=stdout,
                    stderr=stderr,
                    env=env,
                    cwd=out,
                    timeout=360 if proof_process else 60,
                    preexec_fn=proof_limit if proof_process else None,
                    check=False,
                )
                code = result.returncode
            except (OSError, subprocess.TimeoutExpired) as error:
                stderr.write(repr(error).encode())
                code = None
        write_once(
            folder / "result.json",
            {
                "argv": argv,
                "exit_code": code,
                "stdout_sha256": digest(folder / "stdout.txt"),
                "stderr_sha256": digest(folder / "stderr.txt"),
                "wall_limit_seconds": 360 if proof_process else 60,
                "address_space_limit_bytes": lean_as if proof_process else 8 * 1024**3,
            },
        )
        return code, (folder / "stdout.txt").read_text(errors="replace").strip()

    original_nix = Path("/run/current-system/sw/bin/nix-store")
    if not original_nix.is_file():
        original_nix = Path("/nix/var/nix/profiles/default/bin/nix-store")
    rows = {}
    issues = []
    for name in ["lean", "leanchecker"]:
        actual = lean_root / "bin" / name
        rows[name] = {
            "exists": actual.is_file(),
            "actual_sha256": digest(actual) if actual.is_file() else None,
            "expected_sha256": tools[name]["sha256"],
        }
        if not actual.is_file() or digest(actual) != tools[name]["sha256"]:
            issues.append("tool-bytes:" + name)
    for label, nix in [
        ("actual-runtime", str(original_nix)),
        ("recorded-native", tools["nix-store"]["path"]),
    ]:
        code, text = run(
            label + "-deriver", [nix, "--query", "--deriver", str(lean_root)]
        )
        rows[label + "-deriver"] = {
            "exit_code": code,
            "actual": text,
            "expected": expected["drvPath"],
        }
        if code != 0 or text != expected["drvPath"]:
            issues.append("deriver:" + label)
        code, _ = run(
            label + "-closure", [nix, "--query", "--requisites", str(lean_root)]
        )
        if code != 0:
            issues.append("closure:" + label)
    code, text = run("lean-version", [str(lean_root / "bin/lean"), "--version"])
    rows["lean-version"] = {"exit_code": code, "output": text}
    if code != 0 or "4.30.0" not in text:
        issues.append("lean-version")
    write_once(
        out / "Sanity.lean", b"theorem sanity : (1 : Nat) + 1 = 2 := by decide\n"
    )
    code, _ = run(
        "lean-compile",
        [
            str(lean_root / "bin/lean"),
            "-j1",
            "-o",
            str(out / "Sanity.olean"),
            str(out / "Sanity.lean"),
        ],
    )
    if code != 0:
        issues.append("lean-compile")
    else:
        code, _ = run(
            "fresh-kernel",
            [str(lean_root / "bin/leanchecker"), "--fresh", "Sanity"],
        )
        if code != 0:
            issues.append("fresh-kernel")
    write_once(
        out / "result.json",
        {
            "format": "core036.original-safety-runtime.v2",
            "expected_profile": expected,
            "rows": rows,
            "issues": issues,
            "source_subject_ref": declaration["source_subject_ref"],
            "scope": "actual original Lean4.30 runtime, independent of pending analysisLean4.36; diagnostic only; no shared repair",
            "product_adoption": "unactivated",
        },
    )
    return 0 if not issues else 1


if __name__ == "__main__":
    raise SystemExit(main())
