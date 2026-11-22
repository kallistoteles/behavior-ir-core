"""Fixed closed row-component intermediates; all raw proofs remain in place."""

from artifact_io import RootRegistry, read
from artifact_registration_v2 import guard_reference
from backend_ir_retention_v2 import _archive_stream
from native_canary_cache_retention_v2 import CountOnlySink
from native_partial_cache_retention_v2 import complete_inventory
from proof_cache_retention_v2 import JOINT_COMPONENT_PARENTS as PARENTS
from proof_cache_retention_v2 import _targets, _cache_inventory, _run_batch


def run_retention(refs, reference, declaration, out):
    guard_reference(reference)
    selection = refs.read(reference)
    if (
        set(selection) != {"format", "selection_ref", "baseline_checkpoint_ref"}
        or selection["format"] != "core036.joint-proof-cache-retention.v2"
    ):
        raise ValueError("JointProofCacheSelection")
    for key in ("selection_ref", "baseline_checkpoint_ref"):
        guard_reference(selection[key])
    private, future = refs.roots["private"], refs.roots["future_evidence"]
    baseline_path = refs.verify(selection["baseline_checkpoint_ref"])
    if baseline_path != future / "attempts/a0526/checkpoint.json":
        raise ValueError("JointProofCacheBaselinePath")
    RootRegistry({"attempt": baseline_path.parent}).verify_closed("attempt")
    baseline = refs.read(selection["baseline_checkpoint_ref"])
    receipt = read(baseline_path.parent / "child/receipt.json", limit=32 * 1024**2)
    if (
        baseline["stage_outcome"] != "succeeded"
        or baseline["source_validation_error"] is not None
        or baseline["outcome"]["operational"] != "closed"
        or receipt["source_subject_ref"] != baseline["source_subject_ref"]
        or receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["final_storage_inventory_error"] is not None
    ):
        raise ValueError("JointProofCacheBaselineClosure")
    inner = refs.read(selection["selection_ref"])
    if len(inner["parent_checkpoints"]) != len(PARENTS):
        raise ValueError("JointProofCacheParentSet")
    for attempt, ref in zip(PARENTS, inner["parent_checkpoints"], strict=True):
        guard_reference(ref)
        path = refs.verify(ref)
        if path != future / "attempts" / attempt / "checkpoint.json":
            raise ValueError("JointProofCacheParentPath")
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
        cp = refs.read(ref)
        parent = read(path.parent / "declaration.json", limit=32 * 1024**2)
        rc = read(path.parent / "child/receipt.json", limit=32 * 1024**2)
        if (
            cp["attempt_id"] != attempt
            or cp["source_validation_error"] is not None
            or cp["outcome"]["operational"] != "closed"
            or parent["stage"] != "NATIVE"
            or parent["slots"] != ["native-ground-lean-probe"]
            or rc["source_subject_ref"] != cp["source_subject_ref"]
            or rc["stop_reason"] is not None
            or rc["tree_empty"] is not True
            or rc["group_empty"] is not True
            or rc["final_storage_inventory_error"] is not None
        ):
            raise ValueError("JointProofCacheOwner")
        for target in _targets(private, attempt, PARENTS):
            complete_inventory(target)
    rows = _cache_inventory(private, PARENTS)
    counter = CountOnlySink()
    _archive_stream(private, rows, counter, compressed_limit=128 * 1024**2)
    budget = (
        declaration["profile"]["limits"]["cache_bytes"]
        - receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"][
            "cache"
        ]
        - 16 * 1024**2
    )
    if counter.total > budget:
        raise ValueError("JointProofCachePeakCapacity")
    return _run_batch(
        refs,
        selection["selection_ref"],
        declaration,
        out,
        parents=PARENTS,
        archive_admission=dict(
            bytes=counter.total, sha256=counter.checksum.hexdigest()
        ),
    )
