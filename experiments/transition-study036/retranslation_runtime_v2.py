"""Source-bound lower GC-overhead profile after an actual same-input memory stop."""

from artifact_io import RootRegistry

RUNTIME = "d=1,o=10,v=0x400"
HOST_FLOOR = 4 * 1024**3


def validate_runtime_failure(cp, receipt, config, frozen_config):
    samples = receipt.get("tree_samples", [])
    if (
        cp.get("stage_outcome") != "resource_stopped"
        or "source_validation_error" not in cp
        or cp["source_validation_error"] is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or receipt.get("source_subject_ref") != cp.get("source_subject_ref")
        or receipt.get("exit_code") != -9
        or receipt.get("stop_reason") != "HostAvailableFloor"
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or config != frozen_config
        or not samples
        or any(
            type(row.get("host_available_bytes")) is not int
            or row["host_available_bytes"] < 0
            or type(row.get("observed_descendant_rss_bytes")) is not int
            or row["observed_descendant_rss_bytes"] < 0
            for row in samples
        )
        or min(row["host_available_bytes"] for row in samples) >= HOST_FLOOR
        or max(row["observed_descendant_rss_bytes"] for row in samples) == 0
    ):
        raise ValueError("RetranslationRuntimeNotActualSameInputMemoryFailure")
    return RUNTIME


def checked_runtime(refs, binding_ref, config):
    binding = refs.read(binding_ref)
    if (
        set(binding)
        != {
            "format",
            "failed_checkpoint_ref",
            "failed_receipt_ref",
            "gc_control_ref",
            "runtime_manual_ref",
            "OCAMLRUNPARAM",
        }
        or binding["format"] != "core036.retranslation-runtime.v2"
        or binding["OCAMLRUNPARAM"] != RUNTIME
    ):
        raise ValueError("RetranslationRuntimeBinding")
    cp_path = refs.verify(binding["failed_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    if (
        refs.verify(binding["failed_receipt_ref"])
        != cp_path.parent / "child/receipt.json"
    ):
        raise ValueError("RetranslationRuntimeReceiptPath")
    cp = refs.read(binding["failed_checkpoint_ref"])
    receipt = refs.read(binding["failed_receipt_ref"])
    rows = [
        row
        for row in refs.read(cp["source_subject_ref"])["files"]
        if row["logical_ref"]["root_id"] == "repository"
        and row["logical_ref"]["path"]
        == "experiments/transition-study036/retranslation-inputs-v2.json"
    ]
    if len(rows) != 1:
        raise ValueError("RetranslationRuntimeFrozenInput")
    before = refs.read(rows[0]["snapshot_ref"])
    runtime = validate_runtime_failure(
        cp,
        receipt,
        {key: value for key, value in config.items() if key != "runtime_binding_ref"},
        before,
    )
    # Exact pinned compiler documentation, not an arbitrary runtime command.
    refs.verify(binding["gc_control_ref"])
    refs.verify(binding["runtime_manual_ref"])
    return runtime
