"""Bounded publisher-checked private opam probe, before any package install."""

import argparse
import hashlib
import json
import os
import re
import subprocess
import time
import urllib.request
from pathlib import Path

from analysis_runtime_probe import interpreter
from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2

E = Path(__file__).resolve().parent
R = E.parents[1]
URL = "https://github.com/ocaml/opam/releases/download/2.3.0/opam-2.3.0-x86_64-linux"
PUBLISHER_BLOB = "6cfef7443c9ae719dda9c21f17958f2d419d3930"
REPOSITORY_METADATA_URL = (
    "https://api.github.com/repos/ocaml/opam-repository/commits/master"
)


def publisher_asset(raw, expected_blob):
    blob = hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
    if len(raw) > 256 * 1024 or blob != expected_blob:
        raise ValueError("NonposOpamPublisherIdentity")
    hashes = re.findall(
        rb'^\s*opam-2\.3\.0-x86_64-linux\)\s+echo "([a-f0-9]{128})";;\s*$',
        raw,
        re.MULTILINE,
    )
    if len(hashes) != 1:
        raise ValueError("NonposOpamPublisherChecksum")
    return dict(url=URL, sha512=hashes[0].decode(), max_bytes=64 * 1024**2)


def download_asset(asset, target, *, opener=urllib.request.urlopen):
    if (
        asset["url"] != URL
        or type(asset["max_bytes"]) is not int
        or not 0 < asset["max_bytes"] <= 64 * 1024**2
        or re.fullmatch(r"[a-f0-9]{128}", asset["sha512"]) is None
    ):
        raise ValueError("NonposOpamAssetContext")
    if target.exists() or target.is_symlink():
        raise FileExistsError(target)
    partial = target.with_name(target.name + ".partial")
    count, hashed, paced = 0, hashlib.sha512(), 0
    request = urllib.request.Request(
        URL, headers={"User-Agent": "core036-bounded-investigation"}
    )
    with opener(request, timeout=60) as stream, partial.open("xb") as output:
        while chunk := stream.read(1024**2):
            count += len(chunk)
            if count > asset["max_bytes"]:
                raise ValueError("NonposOpamDownloadBound")
            hashed.update(chunk)
            output.write(chunk)
            paced += len(chunk)
            if paced >= 4 * 1024**2:
                time.sleep(0.02)
                paced = 0
    if not count or hashed.hexdigest() != asset["sha512"]:
        raise ValueError("NonposOpamDownloadDigest")
    os.link(partial, target)
    partial.unlink()
    return dict(url=URL, bytes=count, sha512=hashed.hexdigest(), sha256=digest(target))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if (
        out != private / "nonpos-opam-bootstrap" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("NonposOpamOutputOwnership")
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    config = read(E / "nonpos-opam-inputs-v2.json")
    if (
        set(config)
        != {
            "format",
            "publisher_ref",
            "source_preparation_ref",
            "source_checkpoint_ref",
        }
        or config["format"] != "core036.nonpos-opam-inputs.v2"
    ):
        raise ValueError("NonposOpamBootstrapContext")
    publisher = refs.verify(config["publisher_ref"]).read_bytes()
    asset = publisher_asset(publisher, PUBLISHER_BLOB)
    prepared = refs.read(config["source_preparation_ref"])
    checkpoint_path = refs.verify(config["source_checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(config["source_checkpoint_ref"])
    if (
        prepared["source_prepared"] is not True
        or prepared["new_translator_compiled"] is not False
        or prepared["translation_backend_adopted"] is not False
        or checkpoint["stage_outcome"] != "succeeded"
    ):
        raise ValueError("NonposOpamSourcePrerequisite")
    check_prepared_native_v2(E / "toolchain-v2.json")
    out.mkdir(parents=True)
    target = out / "opam-2.3.0-x86_64-linux"
    receipt = download_asset(asset, target)
    target.chmod(0o500)
    elf_interpreter = interpreter(target)
    runtime = read(E / "analysis-environment-inputs-v2.json")
    loader = Path(runtime["loader_path"])
    if digest(loader) != runtime["loader_sha256"]:
        raise ValueError("NonposOpamLoaderChanged")
    prefix = (
        []
        if elf_interpreter is None
        else [
            str(loader),
            "--library-path",
            os.pathsep.join(runtime["library_directories"]),
        ]
    )
    env = {
        **os.environ,
        "MALLOC_ARENA_MAX": "2",
        "OPAMROOT": str(private / "tmp/nonpos-opam-version" / declaration["record_id"]),
    }
    env.pop("LD_PRELOAD", None)
    env.pop("LD_LIBRARY_PATH", None)
    log = out / "version"
    log.mkdir()
    argv = [*prefix, str(target), "--version"]
    with (
        (log / "stdout.txt").open("xb") as stdout,
        (log / "stderr.txt").open("xb") as stderr,
    ):
        result = subprocess.run(
            argv,
            cwd=out,
            env=env,
            stdout=stdout,
            stderr=stderr,
            timeout=60,
            check=False,
        )
    version = dict(
        argv=argv,
        exit_code=result.returncode,
        stdout_sha256=digest(log / "stdout.txt"),
        stderr_sha256=digest(log / "stderr.txt"),
    )
    write_once(log / "result.json", version)
    if result.returncode or (log / "stdout.txt").read_text().strip() != "2.3.0":
        raise ValueError("NonposOpamVersionProbe")
    # Capture the moving repository head as metadata only. A later subject must
    # freeze this concrete commit before initialization or package selection.
    request = urllib.request.Request(
        REPOSITORY_METADATA_URL, headers={"User-Agent": "core036-bounded-investigation"}
    )
    with urllib.request.urlopen(request, timeout=60) as stream:
        metadata_raw = stream.read(4 * 1024**2 + 1)
    if len(metadata_raw) > 4 * 1024**2:
        raise ValueError("NonposOpamRepositoryMetadataBound")
    metadata = json.loads(metadata_raw)
    if re.fullmatch(r"[a-f0-9]{40}", metadata.get("sha", "")) is None:
        raise ValueError("NonposOpamRepositoryCommit")
    write_once(out / "repository-commit.json", metadata_raw)
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-opam-bootstrap.v2",
            source_subject_ref=declaration["source_subject_ref"],
            publisher_ref=config["publisher_ref"],
            download=receipt,
            executable=str(target),
            executable_sha256=digest(target),
            elf_interpreter=elf_interpreter,
            invocation_prefix=prefix,
            version_probe=version,
            selected_repository_commit=metadata["sha"],
            repository_metadata_url=REPOSITORY_METADATA_URL,
            repository_metadata_sha256=hashlib.sha256(metadata_raw).hexdigest(),
            packages_installed=False,
            ocaml_compiler_ready=False,
            new_translator_compiled=False,
            translation_backend_adopted=False,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
