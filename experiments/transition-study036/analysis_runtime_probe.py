"""Private exact publisher package plus checked Nix runtime loader diagnostics.

This establishes loader/version facts only. Extraction, the Rust sysroot and
the analysis Lean kernel remain separate required readiness checks.
"""

import argparse
import os
import shutil
import struct
import subprocess
from pathlib import Path

from analysis_tools import extract_archive
from artifact_io import RootRegistry, digest, read, write_once

E = Path(__file__).resolve().parent
R = E.parents[1]


def interpreter(path):
    with Path(path).open("rb") as stream:
        header = stream.read(64)
        if header[:6] != b"\x7fELF\x02\x01":
            raise ValueError("ExpectedLittleEndianELF64")
        offset = struct.unpack_from("<Q", header, 32)[0]
        width, count = struct.unpack_from("<HH", header, 54)
        if width != 56 or count > 1024:
            raise ValueError("ELFProgramHeaderBound")
        for number in range(count):
            stream.seek(offset + number * width)
            row = stream.read(width)
            if struct.unpack_from("<I", row)[0] == 3:
                start = struct.unpack_from("<Q", row, 8)[0]
                size = struct.unpack_from("<Q", row, 32)[0]
                if not 0 < size <= 4096:
                    raise ValueError("ELFInterpreterBound")
                stream.seek(start)
                return stream.read(size).rstrip(b"\0").decode("utf-8")
    return None


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if out != private / "analysis-runtime" / declaration["record_id"] or out.exists():
        raise ValueError("AnalysisRuntimeOutput")
    inputs = read(E / "analysis-environment-inputs-v2.json")
    registry = RootRegistry({"repository": R}, readonly=["repository"])
    archive = registry.verify(inputs["archive_ref"])
    loader = Path(inputs["loader_path"])
    if (
        not loader.is_relative_to("/nix/store")
        or loader.is_symlink()
        or digest(loader) != inputs["loader_sha256"]
    ):
        raise ValueError("AnalysisPinnedLoader")
    out.mkdir(parents=True)
    copied = out / "publisher-package.tar.gz"
    shutil.copyfile(archive, copied)
    extract_archive(
        copied, out / "package", inputs["archive_ref"]["sha256"], 2 * 1024**3
    )
    env = {**os.environ, "NIX_REMOTE": "daemon"}
    env.pop("LD_PRELOAD", None)
    env["LD_LIBRARY_PATH"] = os.pathsep.join(inputs["library_directories"])
    tools = read(E / "toolchain.json")["tools"]
    rows, issues = [], []

    def run(label, argv):
        folder = out / label
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv, stdout=stdout, stderr=stderr, env=env, check=False, timeout=60
            )
        record = {
            "label": label,
            "argv": argv,
            "exit_code": result.returncode,
            "stdout_sha256": digest(folder / "stdout.txt"),
            "stderr_sha256": digest(folder / "stderr.txt"),
        }
        rows.append(record)
        write_once(folder / "result.json", record)
        if result.returncode != 0:
            issues.append(label)
        return result.returncode

    for number, directory in enumerate(inputs["library_directories"]):
        root = str(Path(directory).parent)
        if (
            run(
                "runtime-metadata-" + str(number),
                [tools["nix-store"]["path"], "--query", "--requisites", root],
            )
            != 0
        ):
            raise ValueError("AnalysisLoaderRuntimeClosure")
        if (
            run(
                "runtime-content-" + str(number),
                [tools["nix-store"]["path"], "--verify-path", root],
            )
            != 0
        ):
            raise ValueError("AnalysisLoaderRuntimeContent")
        gcroot = (
            private / "gcroots" / declaration["record_id"] / ("runtime-" + str(number))
        )
        gcroot.parent.mkdir(parents=True, exist_ok=True)
        if (
            run(
                "runtime-gcroot-" + str(number),
                [
                    tools["nix-store"]["path"],
                    "--option",
                    "builders",
                    "",
                    "--option",
                    "substitute",
                    "false",
                    "--max-jobs",
                    "0",
                    "--realise",
                    root,
                    "--add-root",
                    str(gcroot),
                ],
            )
            != 0
        ):
            raise ValueError("AnalysisLoaderGCRoot")
    binaries = []
    for name, flag in [
        ("aeneas", "-version"),
        ("charon", "--version"),
        ("charon-driver", "--version"),
    ]:
        binary = out / "package" / name
        elf_interpreter = interpreter(binary)
        prefix = (
            [str(loader), "--library-path", env["LD_LIBRARY_PATH"]]
            if elf_interpreter
            else []
        )
        if elf_interpreter:
            run(name + "-loader", [*prefix, "--list", str(binary)])
        run(name + "-version", [*prefix, str(binary), flag])
        binaries.append(
            {
                "name": name,
                "sha256": digest(binary),
                "bytes": binary.stat().st_size,
                "elf_interpreter": elf_interpreter,
            }
        )
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-loader-diagnostic.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "package_source": inputs["publisher_source"],
            "binaries": binaries,
            "commands": rows,
            "issues": issues,
            "scope": "exact private publisher package and existing Nix runtime loader; analyzer itself is not represented as a Nix derivation; Rust sysroot/extraction/Lean readiness unestablished",
            "product_adoption": "unactivated",
            "analysis_ready": False,
        },
    )
    return 0 if not issues else 1


if __name__ == "__main__":
    raise SystemExit(main())
