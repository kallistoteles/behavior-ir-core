"""Verify the full private SDK against its exact publisher archive and adaptations."""

import hashlib
import os
import subprocess
import tarfile
from pathlib import Path

from artifact_io import digest, read, write_once
from rust_analysis_install import executable_sections

E = Path(__file__).resolve().parent


def verify_sdk(analysis, private, out):
    sdk = Path(analysis["sdk"])
    archive = private / "analysis-lean/a0043/lean-4.36.0-rc2-linux.tar.zst"
    if sdk != private / "analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux":
        raise ValueError("AnalysisSDKVerificationRoot")
    if (
        archive.stat().st_size != 608393640
        or digest(archive)
        != "0a0a3208617e9eab92f1041efa83ad94d405e69d172fb654a62dbfa9fbc5313b"
    ):
        raise ValueError("AnalysisSDKPublisherArchive")
    tool = read(E / "analysis-lean-install-inputs-v2.json")["tools"]["zstd"]
    if digest(tool["path"]) != tool["sha256"]:
        raise ValueError("AnalysisSDKDecompressor")
    adapted = {
        str(Path(row["path"]).relative_to(sdk)): row
        for row in analysis["patched_binaries"]
    }
    inventory, seen, expanded, members = [], set(), 0, 0
    with (out / "sdk-verification-stderr.txt").open("xb") as stderr:
        process = subprocess.Popen(
            [tool["path"], "-d", "-c", str(archive)],
            stdout=subprocess.PIPE,
            stderr=stderr,
        )
        try:
            with tarfile.open(fileobj=process.stdout, mode="r|") as source:
                for member in source:
                    members += 1
                    expanded += member.size
                    path = Path(member.name)
                    if (
                        path.is_absolute()
                        or ".." in path.parts
                        or not path.parts
                        or path.parts[0] != sdk.name
                        or members > 100000
                        or expanded > 8 * 1024**3
                    ):
                        raise ValueError("AnalysisSDKArchiveStructure")
                    relative = str(Path(*path.parts[1:]))
                    target = sdk / relative
                    if not target.resolve().is_relative_to(sdk):
                        raise ValueError("AnalysisSDKLinkEscape")
                    if member.isdir():
                        if not target.is_dir() or target.is_symlink():
                            raise ValueError("AnalysisSDKDirectoryMismatch")
                        continue
                    if relative in seen:
                        raise ValueError("AnalysisSDKRepeatedMember")
                    seen.add(relative)
                    if member.issym():
                        if (
                            not target.is_symlink()
                            or os.readlink(target) != member.linkname
                        ):
                            raise ValueError("AnalysisSDKSymlinkMismatch")
                        inventory.append(
                            {
                                "path": relative,
                                "kind": "symlink",
                                "target": member.linkname,
                            }
                        )
                    elif member.islnk():
                        linked = Path(member.linkname)
                        if (
                            linked.is_absolute()
                            or ".." in linked.parts
                            or linked.parts[0] != sdk.name
                            or not os.path.samefile(
                                target, sdk.joinpath(*linked.parts[1:])
                            )
                        ):
                            raise ValueError("AnalysisSDKHardlinkMismatch")
                        inventory.append(
                            {
                                "path": relative,
                                "kind": "hardlink",
                                "target": member.linkname,
                                "sha256": digest(target),
                            }
                        )
                    elif member.isfile():
                        with source.extractfile(member) as contents:
                            publisher = hashlib.file_digest(
                                contents, "sha256"
                            ).hexdigest()
                        actual = digest(target)
                        row = adapted.get(relative)
                        if row is None:
                            if (
                                publisher != actual
                                or target.stat().st_size != member.size
                            ):
                                raise ValueError(
                                    "AnalysisSDKLibraryOrSourceMismatch:" + relative
                                )
                        elif (
                            publisher != row["publisher_sha256"]
                            or actual != row["sha256"]
                            or [
                                list(section) for section in executable_sections(target)
                            ]
                            != row["executable_sections"]
                        ):
                            raise ValueError(
                                "AnalysisSDKBinaryAdaptationMismatch:" + relative
                            )
                        inventory.append(
                            {
                                "path": relative,
                                "kind": "file",
                                "bytes": target.stat().st_size,
                                "sha256": actual,
                                "publisher_sha256": publisher,
                            }
                        )
                    else:
                        raise ValueError("AnalysisSDKSpecialMember")
            # Consume the publisher's trailing tar padding before closing the pipe.
            trailing = process.stdout.read(1024**2 + 1)
            if len(trailing) > 1024**2 or trailing.strip(b"\0"):
                raise ValueError("AnalysisSDKArchiveTrailingContent")
        except BaseException:
            process.kill()
            raise
        finally:
            process.stdout.close()
            code = process.wait(timeout=30)
        if code:
            raise ValueError("AnalysisSDKArchiveDecompression")
    actual_paths = {
        str(path.relative_to(sdk))
        for path in sdk.rglob("*")
        if path.is_symlink() or not path.is_dir()
    }
    if actual_paths != seen:
        raise ValueError("AnalysisSDKUninventoriedFiles")
    write_once(
        out / "sdk-inventory.json",
        {
            "archive_sha256": "0a0a3208617e9eab92f1041efa83ad94d405e69d172fb654a62dbfa9fbc5313b",
            "members": members,
            "expanded_bytes": expanded,
            "entries": inventory,
        },
    )
    return {
        "path": str(out / "sdk-inventory.json"),
        "sha256": digest(out / "sdk-inventory.json"),
        "members": members,
        "regular_and_link_entries": len(inventory),
    }
