"""Retain exact outputs of the completed canonical gate before cache disposal."""

import gzip
import hashlib
import os
import time

from artifact_io import RootRegistry, write_once
from owned_cleanup import OwnedCleanup


def retain_and_dispose(config, refs, private, work, out, declaration):
    if set(config) != {"format", "checkpoint_ref", "result_ref"}:
        raise ValueError("ClosedQualityCacheContext")
    checkpoint = refs.verify(config["checkpoint_ref"])
    if checkpoint != work / "attempts/a0169/checkpoint.json":
        raise ValueError("ClosedQualityCacheAttempt")
    RootRegistry({"attempt": checkpoint.parent}).verify_closed("attempt")
    cp = refs.read(config["checkpoint_ref"])
    result_path = refs.verify(config["result_ref"])
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["outcome"]["operational"] != "closed"
        or result_path != private / "quality/a0169/result.json"
    ):
        raise ValueError("ClosedQualityCacheNotSuccessful")
    result = refs.read(config["result_ref"])
    target = private / "disposable/gate-a0116/target"
    if (
        result["target"] != str(target)
        or result["exit_code"] != 0
        or result["whole_gate_terminal_ok"] is not True
    ):
        raise ValueError("ClosedQualityCacheTarget")
    cli = refs.read(result["cli_result_ref"])
    cli_path = refs.verify(cli["executable_ref"])
    if cli["executable_ref"]["sha256"] != result["cli_sha256"]:
        raise ValueError("ClosedQualityCacheCli")
    if cli_path.is_relative_to(target):
        raise ValueError("ClosedQualityCacheCliInsideTarget")
    old = refs.read(result["prior_cache_retention_ref"], limit=32 * 1024**2)
    by_hash = {r["retained_ref"]["sha256"]: r["retained_ref"] for r in old}
    cleanup = OwnedCleanup(private)
    cleanup._target(target)
    out.mkdir(parents=True)
    retained = [config["checkpoint_ref"], config["result_ref"], cli["executable_ref"]]
    entries = []
    verified = set()
    raw_total = archive_total = 0
    for path in sorted(target.rglob("*")):
        if not path.is_file():
            continue
        with path.open("rb") as stream:
            if stream.read(4) != b"\x7fELF":
                continue
            stream.seek(0)
            sha = hashlib.sha256()
            length = 0
            while data := stream.read(256 * 1024):
                sha.update(data)
                length += len(data)
                time.sleep(0.002)
        raw_total += length
        if raw_total > 4 * 1024**3 or len(entries) >= 4096:
            raise ValueError("ClosedQualityCacheRetentionBound")
        checksum = sha.hexdigest()
        reference = by_hash.get(checksum)
        if reference:
            key = (reference["root_id"], reference["path"])
            if key not in verified:
                refs.verify(reference)
                retained.append(reference)
                verified.add(key)
            if reference["bytes"] != length:
                raise ValueError("ClosedQualityCacheArchiveLength")
            encoding = "identity"
        else:
            archive = out / "files" / (checksum + ".gz")
            if not archive.exists():
                archive.parent.mkdir(exist_ok=True)
                with path.open("rb") as source, archive.open("xb") as output:
                    with gzip.GzipFile(fileobj=output, mode="wb", mtime=0) as packed:
                        while data := source.read(256 * 1024):
                            packed.write(data)
                            time.sleep(0.002)
                    output.flush()
                    os.fsync(output.fileno())
                check = hashlib.sha256()
                expanded = 0
                with gzip.open(archive, "rb") as source:
                    while data := source.read(256 * 1024):
                        check.update(data)
                        expanded += len(data)
                        if expanded > length:
                            raise ValueError("ClosedQualityCacheExpansion")
                        time.sleep(0.002)
                if check.hexdigest() != checksum or expanded != length:
                    raise ValueError("ClosedQualityCacheNotExact")
                archive_total += archive.stat().st_size
                if archive_total > 768 * 1024**2:
                    raise ValueError("ClosedQualityCacheArchiveBound")
                retained.append(refs.reference("work", str(archive.relative_to(work))))
            reference = refs.reference("work", str(archive.relative_to(work)))
            encoding = "gzip"
        entries.append(
            dict(
                original_path=str(path.relative_to(target)),
                original_mode=path.stat().st_mode,
                raw_sha256=checksum,
                raw_bytes=length,
                retained_ref=reference,
                encoding=encoding,
            )
        )
    if not entries:
        raise ValueError("ClosedQualityCacheNoExecutables")
    write_once(out / "executables.json", entries)
    write_once(
        out / "registration.json",
        cleanup.register(target, retained_refs=retained, registry=refs),
    )
    write_once(out / "cleanup.json", cleanup.dispose(target, paced=True))
    write_once(
        out / "result.json",
        dict(
            format="core036.closed-quality-cache-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            checkpoint_ref=config["checkpoint_ref"],
            result_ref=config["result_ref"],
            removed=str(target),
            executable_paths=len(entries),
            exact_raw_bytes=raw_total,
            new_archive_bytes=archive_total,
            preserved_cli_ref=cli["executable_ref"],
            future_gate_requires_new_cold_target=True,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
