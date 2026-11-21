"""Share byte-identical closed retained ELF files, preserving every old seal."""

import argparse
import os
import re
import stat
from pathlib import Path

from artifact_io import RootRegistry, read, write_once
from resource_lease import tree_lease
from sdk_dedup_v2 import link_identical_v2


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    repository = Path(__file__).resolve().parents[2]
    experiment = Path(__file__).resolve().parent
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        repository
        / "specs/036-core-transition-feasibility/evidence/v2"
        / declaration["work_id"]
    )
    out = Path(args.out)
    if (
        out != work / "attempts" / declaration["record_id"] / "evidence-sharing"
        or out.exists()
    ):
        raise ValueError("EvidenceSharingOutput")
    refs = RootRegistry({"repository": repository}, readonly=["repository"])
    selection = read(experiment / "evidence-sharing-inputs-v2.json")
    if (
        set(selection) != {"format", "archives"}
        or selection["format"] != "core036.evidence-sharing.v2"
    ):
        raise ValueError("EvidenceSharingSelection")
    if (
        not isinstance(selection["archives"], list)
        or not 1 <= len(selection["archives"]) <= 64
    ):
        raise ValueError("EvidenceSharingArchiveBound")
    archives, seen = [], set()
    for row in selection["archives"]:
        if set(row) != {"checkpoint_ref", "index_ref"}:
            raise ValueError("EvidenceSharingArchiveFields")
        checkpoint_path = refs.verify(row["checkpoint_ref"])
        checkpoint = refs.read(row["checkpoint_ref"])
        name = checkpoint["attempt_id"]
        if (
            not isinstance(name, str)
            or re.fullmatch(r"a[0-9]{4,16}", name) is None
            or checkpoint_path != work / "attempts" / name / "checkpoint.json"
            or name in seen
        ):
            raise ValueError("EvidenceSharingCheckpointOwnership")
        if checkpoint["outcome"]["operational"] != "closed":
            raise ValueError("EvidenceSharingWriterNotClosed")
        RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
        root = work / "development/native-builds" / name
        if refs.verify(row["index_ref"]) != root / "closed-artifacts.json":
            raise ValueError("EvidenceSharingArchiveOwnership")
        registry = RootRegistry({"retained": root})
        index = registry.verify_closed("retained")
        archives.append((registry, root, index))
        seen.add(name)

    # Admission above checks all original bytes and closures before the first
    # inode replacement. All targets are earlier closed archive files.
    anchors, candidates = {}, []
    for registry, root, index in archives:
        for reference in index["files"]:
            path = registry.path("retained", reference["path"])
            info = path.lstat()
            if not stat.S_ISREG(info.st_mode) or not info.st_mode & 0o111:
                continue
            if info.st_uid != os.geteuid():
                raise ValueError("EvidenceSharingForeignOwner")
            with path.open("rb") as stream:
                if stream.read(4) != b"\x7fELF":
                    continue
            key = (
                info.st_dev,
                info.st_size,
                stat.S_IMODE(info.st_mode),
                info.st_uid,
                info.st_gid,
                reference["sha256"],
            )
            if key in anchors:
                candidates.append((anchors[key], path))
            else:
                anchors[key] = path
    out.mkdir(parents=True)
    changes, counts, released = [], {}, 0
    with tree_lease(private) as nested:
        if not nested:
            raise ValueError("EvidenceSharingControllerLease")
        for anchor, candidate in candidates:
            result = link_identical_v2(anchor, candidate)
            outcome = "linked" if result["linked"] else result["reason"]
            counts[outcome] = counts.get(outcome, 0) + 1
            if result["linked"]:
                released += result["released_unique_file_bytes"]
                changes.append(
                    dict(
                        anchor=str(anchor.relative_to(work)),
                        candidate=str(candidate.relative_to(work)),
                        **result,
                    )
                )
        for registry, _, _ in archives:
            registry.verify_closed("retained")
    write_once(out / "shared-files.json", changes)
    write_once(
        out / "result.json",
        dict(
            format="core036.evidence-sharing-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selected_archives=len(archives),
            counts=counts,
            released_unique_file_bytes=released,
            all_original_archive_seals_verified_before_and_after=True,
            scope="Earlier closed owned native archives only; exact full byte comparison and metadata checks before sharing ELF inodes. Every original file/path/seal remains. No compiler cache, source, proof, unrelated033 payload or old record is deleted or rewritten.",
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
