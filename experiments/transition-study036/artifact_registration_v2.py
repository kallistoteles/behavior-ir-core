"""Validate an independently selected future store; no report grants authority."""

from pathlib import Path, PurePosixPath

from artifact_io import RootRegistry, digest
from artifact_store_v2 import ArtifactStore
from records import validate_ref_v2, u64


def guard_protected_components(path):
    if any(
        part in {"parameters.bin", "compression_prover_key.bin"}
        for part in PurePosixPath(path).parts
    ):
        raise ValueError("ProtectedArtifact")


def guard_reference(reference):
    if isinstance(reference, dict) and isinstance(reference.get("path"), str):
        guard_protected_components(reference["path"])
    validate_ref_v2(reference)


def no_symlink_components(path):
    path = Path(path)
    if not path.is_absolute():
        raise ValueError("ArtifactRegistrationAbsolutePath")
    current = Path(path.anchor)
    for component in path.parts[1:]:
        if component in {".", ".."}:
            raise ValueError("ArtifactRegistrationPath")
        current /= component
        if current.is_symlink():
            raise ValueError("ArtifactRegistrationSymlink")
    return path


def select_artifact_store(registry, work_id, selection_ref, *, expected_future_root):
    guard_reference(selection_ref)
    selected = registry.read(selection_ref)
    fields = {
        "format",
        "work_id",
        "root_id",
        "path",
        "context_ref",
        "specification_ref",
        "root_manifest_ref",
        "registration_receipt_ref",
        "scope",
    }
    if (
        not isinstance(selected, dict)
        or set(selected) != fields
        or selected["format"] != "core036.artifact-store-selection.v2"
        or selected["work_id"] != work_id
        or selected["root_id"] != "future_evidence"
        or selected["scope"] != "future_artifacts_only"
        or selected["path"] != str(expected_future_root)
        or "future_evidence" in registry.roots
    ):
        raise ValueError("ArtifactRegistrationSelection")
    for key in (
        "context_ref",
        "specification_ref",
        "root_manifest_ref",
        "registration_receipt_ref",
    ):
        guard_reference(selected[key])
    future = no_symlink_components(selected["path"])
    if not future.is_dir() or (future / "closed-artifacts.json").exists():
        raise ValueError("ArtifactRegistrationDestination")
    context_path = registry.verify(selected["context_ref"])
    if context_path != registry.path("work", "context.json"):
        raise ValueError("ArtifactRegistrationContextPath")
    context = registry.read(selected["context_ref"])
    if (
        not isinstance(context, dict)
        or context.get("work_id") != work_id
        or context.get("specification_ref") != selected["specification_ref"]
    ):
        raise ValueError("ArtifactRegistrationContext")
    registry.verify(selected["specification_ref"])
    receipt_path = registry.verify(selected["registration_receipt_ref"])
    if (
        not receipt_path.is_relative_to(registry.roots["work"] / "development")
        or receipt_path.name != "receipt.json"
    ):
        raise ValueError("ArtifactRegistrationReceiptPath")
    receipt = registry.read(selected["registration_receipt_ref"])
    if (
        not isinstance(receipt, dict)
        or not {
            "format",
            "exit_code",
            "stop_reason",
            "tree_empty",
            "group_empty",
            "group_id",
            "start_monotonic_ns",
            "wall_ns",
            "boot_id",
            "stdout_sha256",
            "stderr_sha256",
        }.issubset(receipt)
        or receipt.get("format") not in {"core035.bounded.v1", "core036.resource.v2"}
        or type(receipt.get("exit_code")) is not int
        or receipt.get("exit_code") != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or type(receipt.get("group_id")) is not int
        or receipt["group_id"] <= 0
    ):
        raise ValueError("ArtifactRegistrationUnclosedCreation")
    for key in ("start_monotonic_ns", "wall_ns"):
        if u64(receipt.get(key)) == 0:
            raise ValueError("ArtifactRegistrationCreationClock")
    for filename, key in (
        ("stdout.txt", "stdout_sha256"),
        ("stderr.txt", "stderr_sha256"),
    ):
        relative = str(
            (receipt_path.parent / filename).relative_to(registry.roots["work"])
        )
        path = registry.path("work", relative)
        if digest(path) != receipt.get(key):
            raise ValueError("ArtifactRegistrationCreationLog")
    augmented = RootRegistry(
        {**registry.roots, "future_evidence": future}, readonly=registry.readonly
    )
    store = ArtifactStore(
        augmented,
        work_id,
        future_root_id="future_evidence",
        configuration_refs=[
            selection_ref,
            selected["context_ref"],
            selected["specification_ref"],
            selected["root_manifest_ref"],
            selected["registration_receipt_ref"],
        ],
    )
    manifest_ref = selected["root_manifest_ref"]
    if (
        manifest_ref["root_id"] != "future_evidence"
        or manifest_ref["path"] != "registration.json"
    ):
        raise ValueError("ArtifactRegistrationManifestPath")
    manifest = augmented.read(manifest_ref)
    expected = {
        "format": "core036.artifact-root.v2",
        "work_id": work_id,
        "root_id": "future_evidence",
        "context_ref": selected["context_ref"],
        "specification_ref": selected["specification_ref"],
    }
    if manifest != expected:
        raise ValueError("ArtifactRegistrationManifestContext")
    return augmented, store
