"""Prospective bounded acquisition of the native compiler's owning std sources."""

import base64
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import urllib.request

from artifact_io import digest, write_once
from lean_command_v2 import run_logged_command

COMMIT = "48a229ceaefd4985c50990b14116b6d856af0985"
API_VERSION = "2026-03-10"
FILES = (
    "LICENSE-APACHE",
    "LICENSE-MIT",
    "library/core/src/str/traits.rs",
    "library/core/src/borrow.rs",
    "library/core/src/cmp.rs",
    "library/core/src/slice/cmp.rs",
    "library/alloc/src/string.rs",
    "library/alloc/src/str.rs",
    "library/alloc/src/vec/mod.rs",
    "library/alloc/src/vec/partial_eq.rs",
    "library/alloc/src/collections/btree/map.rs",
    "library/alloc/src/collections/btree/map/entry.rs",
    "library/alloc/src/collections/btree/set.rs",
    "library/alloc/src/collections/btree/search.rs",
    "library/alloc/src/collections/btree/node.rs",
)
MAX_FILE = 1_000_000
MAX_RESPONSE = 4 * 1024**2
MAX_SOURCE_TOTAL = 12 * 1024**2
MAX_RESPONSE_TOTAL = 24 * 1024**2


def source_url(path):
    if path not in FILES or PurePosixPath(path).name in {
        "parameters.bin",
        "compression_prover_key.bin",
    }:
        raise ValueError("NativeStdSourcePath")
    return f"https://api.github.com/repos/rust-lang/rust/contents/{path}?ref={COMMIT}"


def checked_response(path, response):
    url = source_url(path)
    if not isinstance(response, dict):
        raise ValueError("NativeStdSourceResponse")
    if (
        response.get("type") != "file"
        or response.get("name") != PurePosixPath(path).name
        or response.get("path") != path
        or response.get("encoding") != "base64"
        or response.get("url") != url
        or response.get("html_url")
        != f"https://github.com/rust-lang/rust/blob/{COMMIT}/{path}"
        or response.get("download_url")
        != f"https://raw.githubusercontent.com/rust-lang/rust/{COMMIT}/{path}"
        or type(response.get("size")) is not int
        or not 0 < response["size"] <= MAX_FILE
        or not isinstance(response.get("sha"), str)
        or re.fullmatch(r"[a-f0-9]{40}", response["sha"]) is None
        or response.get("git_url")
        != f"https://api.github.com/repos/rust-lang/rust/git/blobs/{response['sha']}"
        or not isinstance(response.get("content"), str)
        or len(response["content"]) > MAX_RESPONSE
    ):
        raise ValueError("NativeStdSourceResponseIdentity")
    try:
        raw = base64.b64decode(response["content"].replace("\n", ""), validate=True)
    except ValueError as error:
        raise ValueError("NativeStdSourceEncoding") from error
    if len(raw) != response["size"] or b"\0" in raw:
        raise ValueError("NativeStdSourceBytes")
    raw.decode("utf-8", errors="strict")
    blob = hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
    if blob != response["sha"]:
        raise ValueError("NativeStdSourceGitBlobIdentity")
    return raw


def checked_native_version(stdout):
    fields = {}
    lines = stdout.splitlines()
    for line in lines[1:]:
        if ": " in line:
            key, value = line.split(": ", 1)
            if key in fields:
                raise ValueError("NativeStdCompilerVersionDuplicate")
            fields[key] = value
    if (
        not lines
        or not lines[0].startswith("rustc 1.98.1 (")
        or fields.get("release") != "1.98.1"
        or fields.get("commit-hash") != COMMIT
        or fields.get("host") != "x86_64-unknown-linux-gnu"
    ):
        raise ValueError("NativeStdCompilerSourceIdentity")
    return {key: fields[key] for key in ("release", "commit-hash", "host")}


def run_acquisition(refs, reference, declaration, out):
    if (
        isinstance(reference, dict)
        and isinstance(reference.get("path"), str)
        and PurePosixPath(reference["path"]).name
        in {"parameters.bin", "compression_prover_key.bin"}
    ):
        raise ValueError("ProtectedArtifact")
    selection = refs.read(reference)
    private, repository = refs.roots["private"], refs.roots["repository"]
    if (
        set(selection) != {"format", "toolchain_ref", "commit", "files"}
        or selection["format"] != "core036.native-stdlib-source.v2"
        or selection["commit"] != COMMIT
        or selection["files"] != list(FILES)
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("NativeStdSourceSelection")
    toolchain_ref = selection["toolchain_ref"]
    if (
        not isinstance(toolchain_ref, dict)
        or toolchain_ref.get("root_id") != "repository"
        or toolchain_ref.get("path") != "experiments/transition-study036/toolchain.json"
    ):
        raise ValueError("NativeStdSourceToolchainPath")
    toolchain_path = refs.verify(toolchain_ref)
    if toolchain_path != repository / "experiments/transition-study036/toolchain.json":
        raise ValueError("NativeStdSourceToolchainPath")
    tools = refs.read(selection["toolchain_ref"])["tools"]
    rustc = tools["rustc"]
    executable = Path(rustc["path"])
    expected_executable = Path(
        "/nix/store/6w2dzfizkrgkjz3bgb9mm8y0fb4pmizq-rust-minimal-1.98.1/bin/rustc"
    )
    if (
        executable != expected_executable
        or rustc["sha256"]
        != "0beece94b8c81cc784a21a1d556c5915275072e767d34d0d32276af329e97250"
        or digest(executable) != rustc["sha256"]
    ):
        raise ValueError("NativeStdSourceCompilerChanged")
    out.mkdir(parents=True)
    env = {**os.environ, "RUST_BACKTRACE": "0"}
    env.pop("LD_PRELOAD", None)
    version = run_logged_command(
        out / "native-compiler-version",
        [str(executable), "--version", "--verbose"],
        cwd=repository,
        env=env,
        seconds=60,
        metadata=dict(label="native-compiler-version", expected_exit_code=0),
    )
    if version["exit_code"] != 0 or version["timed_out"]:
        raise ValueError("NativeStdSourceCompilerVersionFailed")
    frozen_streams = []
    captured_stdout = None
    for name, key in (("stdout.txt", "stdout_sha256"), ("stderr.txt", "stderr_sha256")):
        stream = out / "native-compiler-version" / name
        raw_stream = stream.read_bytes()
        if hashlib.sha256(raw_stream).hexdigest() != version[key]:
            raise ValueError("NativeStdCompilerCaptureChanged")
        frozen_streams.append(
            {
                "root_id": "private",
                "path": str(stream.relative_to(private)),
                "bytes": len(raw_stream),
                "sha256": version[key],
            }
        )
        if name == "stdout.txt":
            captured_stdout = raw_stream.decode("utf-8", errors="strict")
    identity = checked_native_version(captured_stdout)
    entries, source_total, response_total = [], 0, 0
    for index, path in enumerate(FILES):
        url = source_url(path)
        request = urllib.request.Request(
            url,
            headers={
                "Accept": "application/vnd.github+json",
                "User-Agent": "behavior-ir-core036-source-research",
                "X-GitHub-Api-Version": API_VERSION,
            },
        )
        with urllib.request.urlopen(request, timeout=30) as incoming:
            if incoming.status != 200 or incoming.geturl() != url:
                raise ValueError("NativeStdSourceHTTPIdentity")
            metadata = incoming.read(MAX_RESPONSE + 1)
        response_total += len(metadata)
        if len(metadata) > MAX_RESPONSE or response_total > MAX_RESPONSE_TOTAL:
            raise ValueError("NativeStdSourceResponseBound")
        response = json.loads(metadata)
        raw = checked_response(path, response)
        source_total += len(raw)
        if source_total > MAX_SOURCE_TOTAL:
            raise ValueError("NativeStdSourceTotalBound")
        response_path = out / "responses" / f"{index:02d}.json"
        source_path = out / "sources" / path
        source_sha256 = hashlib.sha256(raw).hexdigest()
        response_sha256 = hashlib.sha256(metadata).hexdigest()
        write_once(response_path, metadata)
        write_once(source_path, raw)
        entries.append(
            dict(
                path=path,
                commit=COMMIT,
                api_url=url,
                git_blob_sha1=response["sha"],
                bytes=len(raw),
                sha256=source_sha256,
                response_bytes=len(metadata),
                response_sha256=response_sha256,
            )
        )
    refs.verify(reference)
    refs.verify(selection["toolchain_ref"])
    if digest(executable) != rustc["sha256"]:
        raise ValueError("NativeStdSourceCompilerChanged")
    for frozen in frozen_streams:
        refs.verify(frozen)
    for index, entry in enumerate(entries):
        for path, size, checksum in (
            (out / "sources" / entry["path"], entry["bytes"], entry["sha256"]),
            (
                out / "responses" / f"{index:02d}.json",
                entry["response_bytes"],
                entry["response_sha256"],
            ),
        ):
            checked = refs.verify(
                {
                    "root_id": "private",
                    "path": str(path.relative_to(private)),
                    "bytes": size,
                    "sha256": checksum,
                }
            )
            if checked != path:
                raise ValueError("NativeStdSourceRetainedPathChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.native-stdlib-source-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            native_compiler=identity,
            compiler_command=version,
            commit=COMMIT,
            api_version=API_VERSION,
            source_bytes=source_total,
            response_bytes=response_total,
            sources=entries,
            native_proof="unestablished",
            native_primitive_admission="unestablished",
            feature_complete=False,
            scope="Owning public core/alloc source acquisition and installed compiler commit match only. Official API/TLS metadata links commit to blob; local Git blob and SHA256 checks bind content. No formal compiler/library semantic equivalence, cfg/ABI/runtime or native Core admission.",
        ),
    )
    return 0
