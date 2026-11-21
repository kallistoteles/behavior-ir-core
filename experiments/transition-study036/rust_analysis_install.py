"""Owned native-host tool materialization; no rustup auto-install or shared repair."""

import argparse
import os
import shutil
import stat
import struct
import subprocess
import tarfile
import time
from pathlib import Path

from analysis_runtime_probe import interpreter
from artifact_io import RootRegistry, digest, read, write_once

E = Path(__file__).resolve().parent
R = E.parents[1]


def executable_sections(path):
    import hashlib

    with Path(path).open("rb") as stream:
        header = stream.read(64)
        if header[:6] != b"\x7fELF\x02\x01":
            raise ValueError("ToolELF64")
        offset = struct.unpack_from("<Q", header, 40)[0]
        width, count = struct.unpack_from("<HH", header, 58)
        if width != 64 or count > 4096:
            raise ValueError("ToolELFSectionBound")
        sections = []
        for number in range(count):
            stream.seek(offset + number * width)
            row = stream.read(width)
            flags = struct.unpack_from("<Q", row, 8)[0]
            if flags & 4:
                start, size = struct.unpack_from("<QQ", row, 24)
                stream.seek(start)
                left, value = size, hashlib.sha256()
                while left:
                    chunk = stream.read(min(left, 1024**2))
                    if not chunk:
                        raise ValueError("ToolELFTruncated")
                    value.update(chunk)
                    left -= len(chunk)
                sections.append((size, value.hexdigest()))
    return sorted(sections)


def unpack(archive, target):
    target.mkdir(parents=True, exist_ok=False)
    with tarfile.open(archive, "r:xz") as source:
        members = source.getmembers()
        if len(members) > 60000 or sum(member.size for member in members) > 3 * 1024**3:
            raise ValueError("RustArchiveExpansionBound")
        for number, member in enumerate(members):
            name = Path(member.name)
            if name.is_absolute() or ".." in name.parts:
                raise ValueError("RustArchivePath")
            if not (
                member.isfile() or member.isdir() or member.issym() or member.islnk()
            ):
                raise ValueError("RustArchiveMember")
            source.extract(member, target, filter="data")
            if number % 32 == 31:
                time.sleep(0.02)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if out != private / "analysis-toolchain" / declaration["record_id"] or out.exists():
        raise ValueError("AnalysisInstallationOutput")
    config = read(E / "analysis-install-inputs-v2.json")
    if "reuse_materialization_ref" in config:
        from analysis_native_recheck import recheck

        return recheck(declaration, out, config)
    refs = RootRegistry({"private": private}, readonly=["private"])
    download = read(refs.verify(config["archives_ref"]))
    analyzer_probe = read(refs.verify(config["analyzer_probe_ref"]))
    runtime = read(E / "analysis-environment-inputs-v2.json")
    loader, patcher = Path(runtime["loader_path"]), Path(config["patchelf_path"])
    if (
        digest(loader) != runtime["loader_sha256"]
        or digest(patcher) != config["patchelf_sha256"]
    ):
        raise ValueError("AnalysisMaterializationToolsChanged")
    out.mkdir(parents=True)
    sysroot = out / "sysroot"
    sysroot.mkdir()
    disposable = (
        private / "disposable" / ("analysis-unpack-" + declaration["record_id"])
    )
    disposable.mkdir(parents=True, exist_ok=False)
    count = 0

    def copy_node(source, target):
        nonlocal count
        info = source.lstat()
        if stat.S_ISDIR(info.st_mode):
            target.mkdir(parents=True, exist_ok=True)
            for child in sorted(source.iterdir()):
                copy_node(child, target / child.name)
        elif stat.S_ISREG(info.st_mode):
            target.parent.mkdir(parents=True, exist_ok=True)
            if target.exists():
                if target.is_symlink() or digest(source) != digest(target):
                    raise ValueError("RustComponentCollision")
            else:
                shutil.copy2(source, target)
        elif stat.S_ISLNK(info.st_mode):
            link = os.readlink(source)
            if Path(link).is_absolute() or not (
                target.parent / link
            ).resolve().is_relative_to(sysroot):
                raise ValueError("RustInstalledSymlinkEscape")
            target.parent.mkdir(parents=True, exist_ok=True)
            if target.is_symlink():
                if os.readlink(target) != link:
                    raise ValueError("RustSymlinkCollision")
            elif target.exists():
                raise ValueError("RustSymlinkCollision")
            else:
                target.symlink_to(link)
        else:
            raise ValueError("RustInstalledMember")
        count += 1
        if count % 32 == 0:
            time.sleep(0.02)

    for archive in download["archives"]:
        path = Path(archive["path"])
        if (
            not path.is_relative_to(private / "analysis-rust")
            or digest(path) != archive["sha256"]
        ):
            raise ValueError("RustInstallationArchive")
        target = disposable / archive["name"]
        unpack(path, target)
        top = list(target.iterdir())
        if len(top) != 1 or not top[0].is_dir():
            raise ValueError("RustInstallerRoot")
        package = top[0]
        components = (package / "components").read_text().splitlines()
        for component in components:
            if not component or "/" in component or ".." in component:
                raise ValueError("RustInstallerComponent")
            payload = package / component
            manifest = (payload / "manifest.in").read_bytes()
            write_once(out / "manifests" / (component + ".in"), manifest)
            for line in manifest.decode().splitlines():
                kind, relative = line.split(":", 1)
                if (
                    kind not in {"file", "dir"}
                    or Path(relative).is_absolute()
                    or ".." in Path(relative).parts
                ):
                    raise ValueError("RustInstallerManifest")
                copy_node(payload / relative, sysroot / relative)
    required_driver = sysroot / "lib/librustc_driver-415cc549468a4aa5.so"
    if not required_driver.is_file():
        raise ValueError("PinnedCharonRustDriverMissing")
    tools = read(E / "native-environment-inputs-v2.json")["tools"]
    library_path = os.pathsep.join(
        [str(sysroot / "lib"), *runtime["library_directories"]]
    )
    env = {
        **os.environ,
        "LD_LIBRARY_PATH": library_path,
        "CHARON_TOOLCHAIN_IS_IN_PATH": "1",
        "CHARON_CACHE_DIR": str(out / "charon-cache"),
        "CARGO_HOME": str(private / "cargo"),
        "CARGO_NET_OFFLINE": "true",
        "CARGO_BUILD_JOBS": "1",
    }
    env.pop("LD_PRELOAD", None)
    env.update(
        RUSTC=str(sysroot / "bin/rustc"),
        CC=tools["cc"]["path"],
        CARGO_INCREMENTAL="0",
        CARGO_PROFILE_DEV_DEBUG="0",
        CARGO_PROFILE_RELEASE_DEBUG="0",
        CARGO_TARGET_DIR=str(out / "target"),
        RUSTFLAGS="-C target-cpu=x86-64 -C linker=" + tools["cc"]["path"],
    )
    env["PATH"] = os.pathsep.join(
        [
            str(out / "bin"),
            str(sysroot / "bin"),
            *dict.fromkeys(str(Path(tool["path"]).parent) for tool in tools.values()),
        ]
    )
    commands, statuses, patched = [], {}, []

    def run(label, argv):
        folder = out / label
        folder.mkdir(parents=True)
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv, stdout=stdout, stderr=stderr, env=env, check=False, timeout=120
            )
        row = {
            "label": label,
            "argv": argv,
            "exit_code": result.returncode,
            "stdout_sha256": digest(folder / "stdout.txt"),
            "stderr_sha256": digest(folder / "stderr.txt"),
        }
        write_once(folder / "result.json", row)
        commands.append(row)
        statuses[label] = result.returncode
        return result.returncode

    patcher_root = str(patcher.parent.parent)
    if (
        run(
            "patcher-metadata",
            [tools["nix-store"]["path"], "--query", "--requisites", patcher_root],
        )
        != 0
    ):
        raise ValueError("AnalysisPatcherClosure")
    gcroot = private / "gcroots" / declaration["record_id"] / "patchelf"
    gcroot.parent.mkdir(parents=True, exist_ok=True)
    if (
        run(
            "patcher-gcroot",
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
                patcher_root,
                "--add-root",
                str(gcroot),
            ],
        )
        != 0
    ):
        raise ValueError("AnalysisPatcherGCRoot")

    def patch_binary(name, binary):
        before, instructions = digest(binary), executable_sections(binary)
        if interpreter(binary):
            binary.chmod(binary.stat().st_mode | 0o200)
            if (
                run(
                    name + "-patch",
                    [
                        str(patcher),
                        "--set-interpreter",
                        str(loader),
                        "--set-rpath",
                        library_path,
                        str(binary),
                    ],
                )
                != 0
            ):
                raise ValueError("AnalysisELFPatch")
            if executable_sections(binary) != instructions:
                raise ValueError("AnalysisInstructionSectionsChanged")
        patched.append(
            {
                "name": name,
                "path": str(binary),
                "original_sha256": before,
                "sha256": digest(binary),
                "executable_sections_unchanged": True,
            }
        )

    for name in ("rustc", "cargo", "rustdoc"):
        patch_binary(name, sysroot / "bin" / name)
    (out / "bin").mkdir()
    package = private / "analysis-runtime/a0035/package"
    for name in ("aeneas", "charon", "charon-driver"):
        binary = out / "bin" / name
        expected = next(
            row for row in analyzer_probe["binaries"] if row["name"] == name
        )
        if digest(package / name) != expected["sha256"]:
            raise ValueError("OriginalAnalyzerPackageChanged")
        shutil.copy2(package / name, binary)
        patch_binary(name, binary)
    for label, argv in [
        ("rustc-version", [str(sysroot / "bin/rustc"), "-vV"]),
        ("cargo-version", [str(sysroot / "bin/cargo"), "--version"]),
        ("rustc-sysroot", [str(sysroot / "bin/rustc"), "--print=sysroot"]),
        ("aeneas-version", [str(out / "bin/aeneas"), "-version"]),
        ("charon-version", [str(out / "bin/charon"), "version"]),
        ("charon-toolchain", [str(out / "bin/charon"), "toolchain-version"]),
        ("driver-version", [str(out / "bin/charon-driver"), "rustc", "--version"]),
    ]:
        run(label, argv)
    if statuses["rustc-sysroot"] == 0 and (
        out / "rustc-sysroot/stdout.txt"
    ).read_text().strip() != str(sysroot):
        statuses["sysroot-identity"] = 1
    if (
        statuses["charon-toolchain"] == 0
        and (out / "charon-toolchain/stdout.txt").read_text().strip()
        != "nightly-2026-09-17"
    ):
        statuses["charon-toolchain-identity"] = 1
    for label, expected in (
        ("aeneas-version", "1dc8ad3"),
        ("charon-version", "454586e"),
        ("rustc-version", "1.100.0-nightly"),
        ("driver-version", "1.100.0-nightly"),
    ):
        if (
            statuses[label] == 0
            and expected not in (out / label / "stdout.txt").read_text()
        ):
            statuses[label + "-identity"] = 1
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-native-tools.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "sysroot": str(sysroot),
            "environment": {
                key: env[key]
                for key in (
                    "PATH",
                    "LD_LIBRARY_PATH",
                    "CHARON_TOOLCHAIN_IS_IN_PATH",
                    "CHARON_CACHE_DIR",
                    "CARGO_HOME",
                    "CARGO_NET_OFFLINE",
                    "CARGO_BUILD_JOBS",
                    "RUSTC",
                    "CC",
                    "CARGO_INCREMENTAL",
                    "CARGO_PROFILE_DEV_DEBUG",
                    "CARGO_PROFILE_RELEASE_DEBUG",
                    "CARGO_TARGET_DIR",
                    "RUSTFLAGS",
                )
            },
            "patched_binaries": patched,
            "commands": commands,
            "statuses": statuses,
            "scope": "actual private official native-host Rust components; loader metadata patched with unchanged instruction sections; executable version probes only; extraction/analysis Lean/native bridge remain unestablished",
            "product_adoption": "unactivated",
            "analysis_ready": False,
        },
    )
    return 0 if all(value == 0 for value in statuses.values()) else 1


if __name__ == "__main__":
    raise SystemExit(main())
