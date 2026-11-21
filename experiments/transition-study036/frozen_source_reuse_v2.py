"""Reuse verified immutable snapshots; mutable inputs are always read independently."""

import errno
import hashlib
import os
import re

from records import DOCUMENT, MANIFEST, identifier, validate_ref_v2


class FrozenSourceWriter:
    def __init__(self, registry, work_id, *, root_id="work"):
        identifier(work_id)
        self.registry = registry
        if root_id not in {"work", "future_evidence"} or root_id not in registry.roots:
            raise ValueError("FrozenSourceStoreOwnership")
        self.root_id = root_id
        self.anchors = {}
        subjects = registry.path(self.root_id, "subjects")
        if not subjects.exists():
            return
        previous = sorted(
            (p for p in subjects.iterdir() if re.fullmatch(r"r[0-9]{4,16}", p.name)),
            key=lambda p: int(p.name[1:]),
            reverse=True,
        )
        for folder in previous:
            name = "subjects/" + folder.name + "/manifest.json"
            path = registry.path(self.root_id, name)
            if not path.exists():
                continue
            record = registry.read(
                registry.reference(self.root_id, name), limit=MANIFEST
            )
            if (
                not isinstance(record, dict)
                or record.get("format") != "core036.source.v2"
                or record.get("work_id") != work_id
                or record.get("record_id") != folder.name
                or not isinstance(record.get("outcome"), dict)
                or record["outcome"].get("operational") != "completed"
                or not isinstance(record.get("files"), list)
                or not 0 < len(record["files"]) <= 20000
            ):
                raise ValueError("FrozenSourcePreviousSubject")
            for row in record["files"]:
                if not isinstance(row, dict) or set(row) != {
                    "logical_ref",
                    "snapshot_ref",
                }:
                    raise ValueError("FrozenSourcePreviousFile")
                reference = row["snapshot_ref"]
                validate_ref_v2(reference)
                if (
                    reference["root_id"] != self.root_id
                    or re.fullmatch(
                        "subjects/" + folder.name + r"/sources/[0-9]{5}",
                        reference["path"],
                    )
                    is None
                    or reference["bytes"] > DOCUMENT
                ):
                    raise ValueError("FrozenSourcePreviousOwnership")
                self.anchors.setdefault(
                    (reference["bytes"], reference["sha256"]), dict(reference)
                )
            break

    def write(self, name, raw, expected):
        validate_ref_v2(expected)
        if (
            type(raw) is not bytes
            or len(raw) > DOCUMENT
            or len(raw) != expected["bytes"]
            or hashlib.sha256(raw).hexdigest() != expected["sha256"]
            or type(name) is not str
            or re.fullmatch(r"subjects/r[0-9]{4,16}/sources/[0-9]{5}", name) is None
        ):
            raise ValueError("FrozenSourceInputChangedOrInvalid")
        destination = self.registry.path(self.root_id, name, writing=True)
        if destination.exists():
            raise FileExistsError(destination)
        subject = destination.parent.parent
        if (
            (self.registry.roots[self.root_id] / "closed-artifacts.json").exists()
            or (subject / "manifest.json").exists()
            or (subject / "closed-artifacts.json").exists()
        ):
            raise ValueError("FrozenSourceAlreadyClosed")
        reference = self.anchors.get((len(raw), expected["sha256"]))
        if reference is not None:
            anchor = self.registry.verify(reference)
            if anchor.read_bytes() != raw:
                raise ValueError("FrozenSourceExactBytes")
            destination.parent.mkdir(parents=True, exist_ok=True)
            try:
                os.link(anchor, destination, follow_symlinks=False)
            except OSError as error:
                if error.errno != errno.EXDEV:
                    raise
            else:
                result = self.registry.reference(self.root_id, name)
                if (result["bytes"], result["sha256"]) != (
                    expected["bytes"],
                    expected["sha256"],
                ):
                    raise ValueError("FrozenSourceChangedDuringLink")
                return result
        return self.registry.write(self.root_id, name, raw, limit=DOCUMENT)
