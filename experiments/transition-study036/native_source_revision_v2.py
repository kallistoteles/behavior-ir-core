"""Verify a source-only successor; never import native proof or tool authority."""

import re

from artifact_registration_v2 import guard_reference
from records import MANIFEST, u64


def apply_source_revision(binding, prepared, *, work_id):
    from controller_v2 import artifact_context_for
    import sources

    reference = binding["source_revision_ref"]
    guard_reference(reference)
    refs, _ = artifact_context_for(work_id)
    decision = refs.read(reference)
    if (
        set(decision)
        != {
            "format",
            "work_id",
            "record_id",
            "original_readiness_ref",
            "export_result_ref",
            "run_result_ref",
            "scope",
        }
        or decision["format"] != "core036.native-source-revision.v2"
        or decision["work_id"] != work_id
        or not isinstance(decision["record_id"], str)
        or re.fullmatch(r"core-source-inline-export-[0-9]{3}", decision["record_id"])
        is None
        or decision["scope"] != "candidate_source_only;tools_and_original_inherited"
        or decision["original_readiness_ref"] != binding["readiness_ref"]
    ):
        raise ValueError("NativeSourceRevisionContext")
    for key in ["original_readiness_ref", "export_result_ref", "run_result_ref"]:
        guard_reference(decision[key])
    name = decision["record_id"]
    expected = {
        "export_result_ref": refs.roots["private"]
        / "source-exports"
        / name
        / "result.json",
        "run_result_ref": refs.roots["future_evidence"]
        / "bootstrap-runs"
        / name
        / "result.json",
    }
    for key, path in expected.items():
        if refs.verify(decision[key]) != path:
            raise ValueError("NativeSourceRevisionExactProducer")
    refs.verify(decision["original_readiness_ref"])
    run = refs.read(decision["run_result_ref"])
    guard_reference(run["receipt_ref"])
    if (
        refs.verify(run["receipt_ref"])
        != refs.roots["private"] / "bootstrap" / name / "receipt.json"
    ):
        raise ValueError("NativeSourceRevisionExactReceipt")
    receipt = refs.read(run["receipt_ref"], limit=MANIFEST)
    if (
        type(run.get("actual_exit")) is not int
        or run["actual_exit"] != 0
        or run.get("stop_reason") is not None
        or run.get("tree_empty") is not True
        or run.get("group_empty") is not True
        or run.get("all_source_bytes_equal_after") is not True
        or run.get("scientific_acceptance") is not False
        or run.get("feature_complete") is not False
        or receipt.get("format") != "core036.resource.v2"
        or receipt.get("stage") != "NATIVE"
        or receipt.get("work_id") != work_id
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
        or receipt.get("growth_observer_scope") != "registered_actual_roots"
        or receipt.get("free_volume_observer_scope") != "actual_registered_volumes"
        or receipt.get("final_incremental_storage_bytes")
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    ):
        raise ValueError("NativeSourceRevisionNotClosedAndAccounted")
    usage = receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    if set(usage) != {"cache", "temporary", "artifacts", "shared_store"}:
        raise ValueError("NativeSourceRevisionStorageFields")
    for value in usage.values():
        u64(value)
    result = refs.read(decision["export_result_ref"])
    for key in [
        "source_subject_ref",
        "original_readiness_ref",
        "manifest_ref",
        "source_export_ref",
    ]:
        guard_reference(result[key])
    destination = refs.roots["private"] / "sources" / name / "core-reuse"
    count = prepared["sources"]["core-reuse"]["files"]
    if (
        result.get("format") != "core036.native-source-export.v2"
        or result.get("work_id") != work_id
        or result.get("record_id") != name
        or result.get("original_readiness_ref") != binding["readiness_ref"]
        or result.get("source_path") != str(destination)
        or result.get("source_revision") != sources.CORE_REV
        or type(result.get("files")) is not int
        or result["files"] != count
        or result.get("original") is not False
        or result.get("native_proof") != "unestablished"
        or result.get("feature_complete") is not False
        or result.get("product_adoption") != "unactivated"
        or not isinstance(result.get("actual_mutant_rejection"), str)
        or not result["actual_mutant_rejection"].strip()
        or result.get("patches") != sources.reviewed_patches()
        or refs.verify(result["manifest_ref"])
        != destination / "subject-inventory-v2.json"
        or refs.verify(result["source_export_ref"])
        != destination / "source-export.json"
        or refs.verify(result["source_subject_ref"])
        != refs.roots["future_evidence"] / "bootstrap-runs" / name / "source-index.json"
    ):
        raise ValueError("NativeSourceRevisionWrongSourceSubject")
    index = refs.read(result["source_subject_ref"], limit=MANIFEST)
    if (
        index.get("format") != "core036.native-source-export-source.v2"
        or not isinstance(index.get("files"), list)
        or not index["files"]
    ):
        raise ValueError("NativeSourceRevisionFrozenSourceIndex")
    for row in index["files"]:
        if set(row) != {"logical_ref", "snapshot_ref"}:
            raise ValueError("NativeSourceRevisionFrozenSourceRow")
        guard_reference(row["logical_ref"])
        guard_reference(row["snapshot_ref"])
    for row in index["files"]:
        if any(
            row["logical_ref"][key] != row["snapshot_ref"][key]
            for key in ["bytes", "sha256"]
        ):
            raise ValueError("NativeSourceRevisionSnapshotIdentity")
        # The original working path may legitimately change later. Frozen
        # execution bytes are checked without importing today's implementation.
        refs.verify(row["snapshot_ref"])
    manifest = refs.read(result["manifest_ref"], limit=MANIFEST)
    export = refs.read(result["source_export_ref"], limit=MANIFEST)
    expected_tools = sorted(
        (tool["path"], tool["sha256"]) for tool in prepared["tools"].values()
    )
    if (
        manifest.get("original") is not False
        or len(manifest["files"]) != count
        or manifest.get("patches") != result["patches"]
        or sorted((tool["path"], tool["sha256"]) for tool in manifest["tools"])
        != expected_tools
        or export.get("format") != "core035.source-export.v1"
        or export.get("repository") != str(refs.roots["repository"])
        or export.get("revision") != sources.CORE_REV
        or export.get("files") != manifest["files"]
        or export.get("patches") != manifest["patches"]
        or export.get("product_adoption") != "unactivated"
    ):
        raise ValueError("NativeSourceRevisionManifestContext")
    sources.verify_subject_v2(destination, manifest)
    entry = dict(
        path=str(destination),
        files=count,
        manifest_sha256=result["manifest_ref"]["sha256"],
        original=False,
    )
    return {**prepared, "sources": {**prepared["sources"], "core-reuse": entry}}
