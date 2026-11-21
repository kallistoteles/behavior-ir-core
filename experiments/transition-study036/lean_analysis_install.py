"""Install the exact analysis SDK privately and run real compiler/kernel probes."""

import argparse
import os
import resource
import subprocess
import tarfile
import time
from pathlib import Path

from analysis_runtime_probe import interpreter
from artifact_io import digest, read, write_once
from rust_analysis_install import executable_sections

E = Path(__file__).resolve().parent


class PacedArchiveReader:
    """Bound write bursts so the same-CPU resource observer can quiesce."""

    def __init__(self, stream):
        self.stream, self.bytes = stream, 0

    def read(self, size):
        chunk = self.stream.read(size)
        self.bytes += len(chunk)
        if self.bytes >= 4 * 1024**2:
            time.sleep(0.1)
            self.bytes = 0
        return chunk


def unpack(stream, target):
    target.mkdir()
    count, size = 0, 0
    with tarfile.open(fileobj=PacedArchiveReader(stream), mode="r|") as archive:
        for member in archive:
            count += 1
            size += member.size
            name = Path(member.name)
            if (
                count > 100000
                or size > 8 * 1024**3
                or member.size > 2 * 1024**3
                or name.is_absolute()
                or ".." in name.parts
                or not (
                    member.isfile()
                    or member.isdir()
                    or member.issym()
                    or member.islnk()
                )
            ):
                raise ValueError("AnalysisLeanArchiveBoundOrPath")
            archive.extract(member, target, filter="data")
            time.sleep(0.002)
    return {"members": count, "expanded_bytes": size}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if (
        out != private / "analysis-lean-install" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("AnalysisLeanInstallOutput")
    config = read(E / "analysis-lean-install-inputs-v2.json")
    metadata = read(private / "analysis-lean/a0043/result.json")
    archive = Path(metadata["path"])
    if (
        archive != private / "analysis-lean/a0043/lean-4.36.0-rc2-linux.tar.zst"
        or archive.stat().st_size != 608393640
        or digest(archive)
        != "0a0a3208617e9eab92f1041efa83ad94d405e69d172fb654a62dbfa9fbc5313b"
    ):
        raise ValueError("AnalysisLeanArchiveChanged")
    for tool in config["tools"].values():
        if digest(tool["path"]) != tool["sha256"]:
            raise ValueError("AnalysisLeanInstallToolChanged")
    out.mkdir(parents=True)
    commands = []

    def run(label, argv, *, env=None, lean=False):
        folder = out / label
        folder.mkdir()

        def limits():
            if lean:
                bound = declaration["profile"]["limits"]["lean_address_space_bytes"]
                resource.setrlimit(resource.RLIMIT_AS, (bound, bound))

        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=out,
                env=env,
                stdout=stdout,
                stderr=stderr,
                preexec_fn=limits if lean else None,
                timeout=360 if lean else 120,
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
        return result.returncode

    nix = read(E / "native-environment-inputs-v2.json")["tools"]["nix-store"]["path"]
    roots = sorted(
        set(
            [str(Path(t["path"]).parents[1]) for t in config["tools"].values()]
            + config["runtime_roots"]
        )
    )
    for number, root in enumerate(roots):
        if not root.startswith("/nix/store/") or len(Path(root).parts) != 4:
            raise ValueError("AnalysisLeanRuntimeRoot")
        gcroot = private / "gcroots" / declaration["record_id"] / str(number)
        gcroot.parent.mkdir(parents=True, exist_ok=True)
        for suffix, argv in [
            ("closure", [nix, "--query", "--requisites", root]),
            ("content", [nix, "--verify-path", root]),
            (
                "root",
                [
                    nix,
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
            ),
        ]:
            if run(f"runtime-{number}-{suffix}", argv):
                raise ValueError("AnalysisLeanRuntimeIntegrity")
    with (out / "decompress-stderr.txt").open("xb") as stderr:
        process = subprocess.Popen(
            [config["tools"]["zstd"]["path"], "-d", "-c", str(archive)],
            stdout=subprocess.PIPE,
            stderr=stderr,
        )
        try:
            expansion = unpack(process.stdout, out / "sdk")
        finally:
            process.stdout.close()
            try:
                code = process.wait(timeout=30)
            except subprocess.TimeoutExpired:
                process.kill()
                process.wait()
                raise
        if code:
            raise ValueError("AnalysisLeanDecompression")
    sdk = out / "sdk/lean-4.36.0-rc2-linux"
    if not (sdk / "bin/lean").is_file():
        raise ValueError("AnalysisLeanSDKLayout")
    libraries = [
        str(sdk / "lib/lean"),
        str(sdk / "lib"),
        *config["library_directories"],
    ]
    patched = []
    seen = set()
    for path in sorted((sdk / "bin").iterdir()):
        resolved = path.resolve()
        if not resolved.is_relative_to(sdk) or not resolved.is_file():
            raise ValueError("AnalysisLeanBinaryPath")
        if resolved in seen:
            continue
        seen.add(resolved)
        with resolved.open("rb") as source:
            if source.read(4) != b"\x7fELF":
                continue
        before, original = executable_sections(resolved), digest(resolved)
        write_once(
            out / ("publisher-" + path.name + ".json"),
            {"path": str(resolved), "sha256": original, "executable_sections": before},
        )
        if interpreter(resolved) is None:
            patched.append(
                {
                    "path": str(resolved),
                    "publisher_sha256": original,
                    "sha256": original,
                    "executable_sections": before,
                    "adaptation": "none; static ELF",
                }
            )
            continue
        if run(
            "patch-" + path.name,
            [
                config["tools"]["patchelf"]["path"],
                "--set-interpreter",
                config["loader"],
                "--set-rpath",
                os.pathsep.join(libraries),
                str(resolved),
            ],
        ):
            raise ValueError("AnalysisLeanELFPatch")
        if executable_sections(resolved) != before:
            raise ValueError("AnalysisLeanExecutableSectionsChanged")
        patched.append(
            {
                "path": str(resolved),
                "publisher_sha256": original,
                "sha256": digest(resolved),
                "executable_sections": before,
            }
        )
    env = {
        **os.environ,
        "LEAN_SYSROOT": str(sdk),
        "LEAN_PATH": str(out),
        "LD_LIBRARY_PATH": os.pathsep.join(libraries),
    }
    env.pop("LD_PRELOAD", None)
    write_once(
        out / "Sanity.lean",
        b"theorem core036_analysis_sanity (n : Nat) : n = n := rfl\n#print axioms core036_analysis_sanity\n",
    )
    statuses = {}
    for label, argv in [
        ("version", [str(sdk / "bin/lean"), "--version"]),
        (
            "compile",
            [
                str(sdk / "bin/lean"),
                "-j1",
                "-o",
                str(out / "Sanity.olean"),
                str(out / "Sanity.lean"),
            ],
        ),
    ]:
        statuses[label] = run(label, argv, env=env, lean=True)
    if not statuses["compile"]:
        statuses["fresh-kernel"] = run(
            "fresh-kernel",
            [str(sdk / "bin/leanchecker"), "--fresh", "Sanity"],
            env=env,
            lean=True,
        )
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-lean-install.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "archive_sha256": metadata["asset"]["sha256"],
            "sdk": str(sdk),
            "expansion": expansion,
            "patched_binaries": patched,
            "commands": commands,
            "statuses": statuses,
            "environment": {
                key: env[key]
                for key in ("LEAN_SYSROOT", "LEAN_PATH", "LD_LIBRARY_PATH")
            },
            "scope": "analysis SDK compiler and fresh-kernel sanity only; Aeneas backend and Core correspondence unestablished",
            "product_adoption": "unactivated",
        },
    )
    return 0 if all(value == 0 for value in statuses.values()) else 1


if __name__ == "__main__":
    raise SystemExit(main())
