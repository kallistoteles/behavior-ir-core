"""Fresh Rust-to-LLBC-to-Lean helper; never a Core correspondence proof."""

import argparse
import os
import subprocess
from pathlib import Path

from artifact_io import digest, read, write_once


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if (
        out != private / "analysis-extraction" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("AnalysisExtractionOutput")
    prepared = read(private / "analysis-toolchain/a0040/result.json")
    paths = {row["name"]: row["path"] for row in prepared["patched_binaries"]}
    for row in prepared["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("AnalysisExtractorBinaryChanged")
    if any(prepared["statuses"].values()):
        raise ValueError("AnalysisNativeToolsNotReady")
    out.mkdir(parents=True)
    source = out / "identity.rs"
    write_once(
        source, b"#![forbid(unsafe_code)]\npub fn identity(value:u64)->u64 { value }\n"
    )
    generated = out / "generated"
    generated.mkdir()
    llbc = out / "identity.llbc"
    env = {
        **os.environ,
        **prepared["environment"],
        "CARGO_TARGET_DIR": str(out / "target"),
        "CHARON_CACHE_DIR": str(out / "charon-cache"),
    }
    env.pop("RUSTC_WRAPPER", None)
    env.pop("RUSTC_WORKSPACE_WRAPPER", None)
    rows = []

    def run(label, argv):
        folder = out / label
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                stdout=stdout,
                stderr=stderr,
                cwd=out,
                env=env,
                timeout=180,
                check=False,
            )
        row = {
            "label": label,
            "argv": argv,
            "exit_code": result.returncode,
            "stdout_sha256": digest(folder / "stdout.txt"),
            "stderr_sha256": digest(folder / "stderr.txt"),
        }
        rows.append(row)
        write_once(folder / "result.json", row)
        return result.returncode

    run("charon-help", [paths["charon"], "rustc", "--help"])
    run("aeneas-help", [paths["aeneas"], "-help"])
    extraction = run(
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
    )
    translation = None
    if extraction == 0 and llbc.is_file():
        translation = run(
            "translate",
            [paths["aeneas"], "-backend", "lean", "-dest", str(generated), str(llbc)],
        )
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-extraction-probe.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "rust_source_sha256": digest(source),
            "commands": rows,
            "llbc_sha256": digest(llbc) if llbc.is_file() else None,
            "generated": [
                {
                    "path": str(path.relative_to(out)),
                    "sha256": digest(path),
                    "bytes": path.stat().st_size,
                }
                for path in sorted(generated.rglob("*"))
                if path.is_file()
            ],
            "scope": "actual helper extraction and translation only; no Lean type/axiom/kernel check, no general Core correspondence",
            "native_general_proof": "unestablished",
            "product_adoption": "unactivated",
        },
    )
    return 0 if extraction == translation == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
