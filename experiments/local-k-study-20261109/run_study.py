"""Freeze one attempt, build and run the bounded local-only experiment."""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
RECORDER = ROOT / "experiments/proof-backend-screen-20261107/run_bounded_precise.py"


def sha(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--attempt", required=True)
    args = ap.parse_args()
    assert args.attempt.isdigit()
    results = HERE / "results"
    results.mkdir(exist_ok=True)
    freeze = results / f"input-freeze-{args.attempt}.json"
    assert not freeze.exists()
    files = [*HERE.glob("*.rs"), *HERE.glob("*.py"), HERE / "Cargo.toml", HERE / "Cargo.lock",
             HERE / "protocol.json", ROOT / "rust-toolchain.toml", ROOT / "flake.lock",
             ROOT / "experiments/transition-study033/shell.nix", RECORDER,
             RECORDER.with_name("run_bounded.py"),
             ROOT / "docs/proposals/core-next-architecture/reference-fixture.jsonl",
             ROOT / "docs/proposals/core-next-architecture/check_fixture.py"]
    snapshot = results / f"source-inputs-{args.attempt}"
    snapshot.mkdir()
    for path in files:
        if path.parent == HERE:
            (snapshot / path.name).write_bytes(path.read_bytes())
    freeze.write_text(json.dumps({
        "format": "core-next.local-k-study.freeze.v1",
        "at_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
        "files": {str(p.relative_to(ROOT)): sha(p) for p in files},
        "flags": "release; target-cpu=x86-64; one worker; separate target; offline locked",
        "g1_pass": False,
    }, indent=2) + "\n")
    start = time.monotonic()
    env = dict(os.environ, RUSTFLAGS="-C target-cpu=x86-64", CARGO_INCREMENTAL="0")
    for name in ["CARGO_ENCODED_RUSTFLAGS", "RUSTC_WRAPPER", "RUSTC_WORKSPACE_WRAPPER"]:
        env.pop(name, None)

    def call(label, argv, stack=16):
        remaining = int(1800 - (time.monotonic() - start))
        assert remaining > 0
        out = results / f"{label}-{args.attempt}"
        command = [sys.executable, str(RECORDER), "--out", str(out), "--stack-mib", str(stack),
                   "--wall-seconds", str(min(900, remaining)), *map(str, argv)]
        subprocess.run(command, cwd=ROOT, env=env, check=True)
        return out

    call("build", ["nix-shell", "experiments/transition-study033/shell.nix", "--run",
                   f"python3 experiments/local-k-study-20261109/build.py {args.attempt}"], 64)
    binary = HERE / "target/release/local_k_study"
    (results / f"binary-{args.attempt}.json").write_text(json.dumps({
        "path": str(binary.relative_to(ROOT)), "sha256": sha(binary), "bytes": binary.stat().st_size,
        "g1_pass": False,
    }, indent=2) + "\n")
    functional = call("functional", [binary, "functional", results / f"functional-{args.attempt}/artifacts"])
    cost = call("cost", [binary, "cost", results / f"cost-{args.attempt}/artifacts"])
    call("verify", [sys.executable, HERE / "verify_results.py",
                    "--functional", functional / "artifacts", "--cost", cost / "artifacts",
                    "--out", results / f"assessment-{args.attempt}.json"])
    for path in files:
        assert sha(path) == json.loads(freeze.read_text())["files"][str(path.relative_to(ROOT))], path
    (results / f"scenario-{args.attempt}.json").write_text(json.dumps({
        "format": "core-next.local-k-study.scenario.v1", "elapsed_seconds": time.monotonic() - start,
        "frozen_inputs_unchanged": True, "scope": "Local-only; not full Core/G1", "g1_pass": False,
    }, indent=2) + "\n")


if __name__ == "__main__":
    main()
