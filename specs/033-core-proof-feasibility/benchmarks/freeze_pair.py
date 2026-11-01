"""Capture available first-pair inputs; never fill future receipt/key slots."""
import argparse
import json
from pathlib import Path
import shutil
import subprocess

ROOT = Path(__file__).resolve().parents[3]
FEATURE = ROOT / "specs/033-core-proof-feasibility"
STUDY = ROOT / "experiments/transition-study033"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=FEATURE / "evidence/artifact-pair/inputs")
    output = parser.parse_args().out.resolve()
    output.mkdir(exist_ok=False)
    first = (FEATURE / "evidence/work-log.jsonl").read_text().splitlines()[0]
    (output / "budget-start.json").write_text(first + "\n")
    revision = subprocess.run(["git", "rev-parse", "HEAD"], cwd=ROOT, check=True,
                              capture_output=True, text=True).stdout.strip()
    (output / "source-revision.json").write_text(json.dumps({
        "source_revision": revision, "scope": "parent revision plus exact frozen per-file digests",
    }, indent=2) + "\n")
    runner = output / "core033-first-pair"
    shutil.copy2(STUDY / "target/debug/core-proof-feasibility033", runner)
    runner.chmod(0o555)
    inputs = {
        "native_source": STUDY / "generated/checker_step.rs",
        "ir_matrix": STUDY / "generated/matrix.bin",
        "g0_contract": FEATURE / "g0-contract.json",
        "g0_review": FEATURE / "evidence/g0-review.json",
        "codec_profile": FEATURE / "codec-profile.json",
        "budget_start": output / "budget-start.json",
        "baseline": FEATURE / "evidence/baseline-manifest.json",
        "source_revision": output / "source-revision.json",
        "driver": STUDY / "proofs/check_pair.py",
        "artifact_driver": STUDY / "proofs/check_artifact.py",
        "kernel_driver": STUDY / "proofs/check_targets.py",
        "audit": STUDY / "proofs/Audit.lean",
        "lake_manifest": STUDY / "proofs/lake-manifest.json",
        "lakefile": STUDY / "proofs/lakefile.toml",
        "lean_toolchain": STUDY / "proofs/lean-toolchain",
        "cargo_lock": STUDY / "Cargo.lock",
        "shell": STUDY / "shell.nix",
        "freeze_script": Path(__file__).resolve(),
        "runner": runner,
        "cargo_manifest": STUDY / "Cargo.toml",
    }
    for module in ["IR", "Source", "SourceParser", "Bits", "R1CS", "Matrix", "KernelDecide", "Pair", "Generate"]:
        inputs[module] = STUDY / f"proofs/Core033/{module}.lean"
    for index, source in enumerate(sorted((STUDY / "src").rglob("*.rs"))):
        inputs[f"native_impl_{index:03}"] = source
    for tool in ["lean", "leanchecker", "rustc", "rustfmt", "python3"]:
        executable = shutil.which(tool)
        if executable is None:
            raise ValueError("missing pinned tool " + tool)
        inputs["tool_" + tool] = Path(executable).resolve()
    dependencies = sorted((STUDY / "proofs/.lake/packages").glob("*/.lake/build/lib/lean/**/*.olean*"))
    dependencies = [p for p in dependencies if not p.name.endswith(".hash")]
    for index, dependency in enumerate(dependencies):
        inputs[f"dependency_{index:04}"] = dependency
    profile = {"format_version": "core033.profile.v1", "name": "first-signed-negative64-pair",
               "inputs": {name: str(path) for name, path in inputs.items()},
               "output_slots": {"correspondence": "receipt.json", "verification_key": "future/vk.bin",
                                "release": "future/release.json", "embedding": "future/embedding.json"}}
    profile_path = output / "profile.json"
    with profile_path.open("x") as stream:
        json.dump(profile, stream, indent=2, sort_keys=True)
        stream.write("\n")
    subprocess.run([str(inputs["runner"]), "freeze", "--profile", str(profile_path),
                    "--out", str(output / "frozen")], check=True, cwd=ROOT)


if __name__ == "__main__":
    main()
