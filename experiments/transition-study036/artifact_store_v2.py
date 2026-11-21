"""Route future artifacts without rebinding the work context or journal."""

import re
from pathlib import PurePosixPath

from records import MANIFEST, identifier, validate_ref_v2


class ArtifactStore:
    """Storage locations only; selecting a store grants no native authority."""

    CATEGORIES = frozenset(
        {
            "subjects",
            "attempts",
            "journal-sources",
            "development",
            "inputs",
            "bootstrap-runs",
        }
    )

    def __init__(
        self, registry, work_id, *, future_root_id=None, configuration_refs=()
    ):
        identifier(work_id)
        if "work" not in registry.roots:
            raise ValueError("ArtifactStoreMissingWork")
        self.registry = registry
        self.work_id = work_id
        for reference in configuration_refs:
            if (
                isinstance(reference, dict)
                and isinstance(reference.get("path"), str)
                and PurePosixPath(reference["path"]).name
                in {"parameters.bin", "compression_prover_key.bin"}
            ):
                raise ValueError("ProtectedArtifact")
            validate_ref_v2(reference)
        self.configuration_refs = tuple(dict(ref) for ref in configuration_refs)
        self.root_ids = ("work",)
        self.active_root_id = "work"
        if future_root_id is not None:
            if (
                future_root_id != "future_evidence"
                or future_root_id not in registry.roots
            ):
                raise ValueError("ArtifactStoreUnregisteredSelection")
            future = registry.roots[future_root_id]
            for key, root in registry.roots.items():
                if key != future_root_id and (
                    future.is_relative_to(root) or root.is_relative_to(future)
                ):
                    raise ValueError("ArtifactStoreOverlappingRoots")
            self.root_ids += (future_root_id,)
            self.active_root_id = future_root_id

    @property
    def context_path(self):
        return self.registry.path("work", "context.json")

    @property
    def journal_path(self):
        return self.registry.path("work", "events.jsonl")

    @staticmethod
    def _identifier(value, prefix):
        if (
            not isinstance(value, str)
            or re.fullmatch(prefix + r"[0-9]{4,16}", value) is None
        ):
            raise ValueError("ArtifactStoreIdentifier")
        return value

    @classmethod
    def _relative(cls, relative):
        if not isinstance(relative, str):
            raise ValueError("ArtifactStorePath")
        path = PurePosixPath(relative)
        if path.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        pieces = relative.split("/")
        if (
            path.is_absolute()
            or len(pieces) < 2
            or any(piece in {"", ".", ".."} for piece in pieces)
            or pieces[0] not in cls.CATEGORIES
        ):
            raise ValueError("ArtifactStorePath")
        if pieces[0] == "subjects":
            cls._identifier(pieces[1], "r")
        if pieces[0] == "attempts":
            cls._identifier(pieces[1], "a")
        return pieces

    def output_path(self, relative):
        pieces = self._relative(relative)
        owner = "/".join(pieces[:2])
        for root_id in self.root_ids:
            if root_id != self.active_root_id:
                old = self.registry.path(root_id, owner)
                if old.exists():
                    raise FileExistsError(old)
        return self.registry.path(self.active_root_id, relative, writing=True)

    def write(self, relative, value, *, limit=MANIFEST):
        self.output_path(relative)
        return self.registry.write(self.active_root_id, relative, value, limit=limit)

    def _existing_ref(self, relative):
        pieces = self._relative(relative)
        owner = "/".join(pieces[:2])
        matches = []
        owners = []
        for root_id in self.root_ids:
            if self.registry.path(root_id, owner).exists():
                owners.append(root_id)
            path = self.registry.path(root_id, relative)
            if path.exists():
                if not path.is_file():
                    raise ValueError("ArtifactStoreExpectedFile")
                matches.append(root_id)
        if len(matches) > 1 or len(owners) > 1:
            raise ValueError("ArtifactStoreAmbiguousLocation")
        if not matches:
            raise FileNotFoundError(relative)
        return self.registry.reference(matches[0], relative)

    def subject_ref(self, revision):
        revision = self._identifier(revision, "r")
        return self._existing_ref(f"subjects/{revision}/manifest.json")

    def file_ref(self, relative):
        return self._existing_ref(relative)

    def attempt_ref(self, attempt_id, filename="declaration.json"):
        attempt_id = self._identifier(attempt_id, "a")
        if filename not in {"declaration.json", "checkpoint.json"}:
            raise ValueError("ArtifactStoreAttemptFile")
        return self._existing_ref(f"attempts/{attempt_id}/{filename}")

    def directories(self, category):
        if category not in self.CATEGORIES:
            raise ValueError("ArtifactStoreCategory")
        return tuple(self.registry.path(root_id, category) for root_id in self.root_ids)
