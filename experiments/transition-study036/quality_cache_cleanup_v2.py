"""Resume disposal only after freshly verifying closed exact ELF retention."""

import argparse
import gzip
import hashlib
from pathlib import Path
from artifact_io import RootRegistry, read, write_once
from owned_cleanup import OwnedCleanup


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    d = read(args.declaration)
    P = Path(d["profile"]["roots"]["cache"])
    R = Path(__file__).resolve().parents[2]
    W = R / "specs/036-core-transition-feasibility/evidence/v2" / d["work_id"]
    E = Path(__file__).resolve().parent
    out = Path(args.out)
    if (
        out != W / "attempts" / d["record_id"] / "quality-cache-retention"
        or out.exists()
    ):
        raise ValueError("QualityCacheResumeOutput")
    refs = RootRegistry(
        {"repository": R, "private": P, "work": W},
        readonly=["repository", "private", "work"],
    )
    config = read(E / "quality-cache-retention-inputs-v2.json")
    if config.get("format") == "core036.closed-quality-cache-retention.v2":
        from closed_quality_cache_v2 import retain_and_dispose

        return retain_and_dispose(config, refs, P, W, out, d)
    if (
        set(config)
        != {
            "format",
            "prior_checkpoint_ref",
            "prior_index_ref",
            "prior_registrations_ref",
        }
        or config["format"] != "core036.quality-cache-retention-resume.v2"
    ):
        raise ValueError("QualityCacheResumeContext")
    cp = refs.verify(config["prior_checkpoint_ref"])
    RootRegistry({"attempt": cp.parent}).verify_closed("attempt")
    prior = refs.read(config["prior_checkpoint_ref"])
    if (
        cp != W / "attempts/a0111/checkpoint.json"
        or prior["outcome"]["operational"] != "closed"
    ):
        raise ValueError("QualityCacheResumePredecessor")
    expected = W / "attempts/a0111/quality-cache-retention"
    if (
        refs.verify(config["prior_index_ref"]) != expected / "executables.json"
        or refs.verify(config["prior_registrations_ref"])
        != expected / "registrations.json"
    ):
        raise ValueError("QualityCacheResumeArtifactSelection")
    entries = refs.read(config["prior_index_ref"], limit=32 * 1024**2)
    registrations = refs.read(config["prior_registrations_ref"], limit=32 * 1024**2)
    if not entries or len(entries) > 4096:
        raise ValueError("QualityCacheResumeExecutableCount")
    verified = set()
    for row in entries:
        archive = refs.verify(row["archive_ref"])
        if not archive.is_relative_to(expected / "files"):
            raise ValueError("QualityCacheArchiveOwnership")
        key = (row["archive_ref"]["sha256"], row["raw_sha256"], row["raw_bytes"])
        if key in verified:
            continue
        checksum = hashlib.sha256()
        length = 0
        with gzip.open(archive, "rb") as source:
            while data := source.read(1024**2):
                checksum.update(data)
                length += len(data)
                if length > row["raw_bytes"]:
                    raise ValueError("QualityCacheArchiveExpansion")
        if checksum.hexdigest() != row["raw_sha256"] or length != row["raw_bytes"]:
            raise ValueError("QualityCacheArchiveNotExact")
        verified.add(key)
    targets = [
        P / "disposable" / ("gate-" + name) / "target" for name in ["a0107", "a0109"]
    ]
    if len(registrations) != 2 or [Path(r["target"]) for r in registrations] != targets:
        raise ValueError("QualityCacheResumeTargets")
    cleanup = OwnedCleanup(P)
    out.mkdir(parents=True)
    # Identical durable registrations recheck inode and every prior retained ref;
    # no archive/data flag alone permits deletion, and the tree lease is shared.
    for target, registration in zip(targets, registrations, strict=True):
        actual = cleanup.register(
            target, retained_refs=registration["retained_refs"], registry=refs
        )
        if actual != registration:
            raise ValueError("QualityCacheRegistrationChanged")
    write_once(
        out / "reverified-archives.json",
        dict(
            original_index_ref=config["prior_index_ref"],
            paths=len(entries),
            unique_checked_archives=len(verified),
        ),
    )
    for i, target in enumerate(targets):
        write_once(out / f"cleanup-{i:02d}.json", cleanup.dispose(target, paced=True))
    write_once(
        out / "result.json",
        dict(
            format="core036.quality-cache-retention-result.v2",
            source_subject_ref=d["source_subject_ref"],
            prior_index_ref=config["prior_index_ref"],
            removed=list(map(str, targets)),
            executable_paths=len(entries),
            unique_checked_archives=len(verified),
            all_archives_decompressed_and_byte_hash_checked=True,
            scope="Closed Q targets only; exact original executable archives, Core CLI, all sources/tools and every failed attempt retained. Batched pacing provides quiet observation windows; unchanged observer and resource limits.",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
