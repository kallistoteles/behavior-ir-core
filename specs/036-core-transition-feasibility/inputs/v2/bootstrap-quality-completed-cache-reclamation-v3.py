"""Reverify retained Q576 bytes and reclaim another finite 384 MiB subset.

The exact owned target is closed, deselected and already partly reclaimed.
Every remaining member is rechecked against the archive or retained delta
before disposal; no shared/native581 cache or historical033 path is touched.
"""

import json
import os
from pathlib import Path
import stat
import sys
import time

sys.dont_write_bytecode = True
STARTED = time.monotonic_ns()
R = Path("/data/repos/behavior-ir-core-033")
E = R / "experiments/transition-study036"
F = R / "specs/036-core-transition-feasibility"
P = Path("/var/tmp/behavior-ir-core036-v2/w001")
N = Path("/var/tmp/behavior-ir-core036-evidence-v2/w001")
NAME = "quality-completed-cache-reclamation-003"
BASE = N / "bootstrap-runs" / NAME
OUT = P / "quality-cache-reclamation" / NAME
TARGET = P / "disposable/gate-a0574/target"
ARCHIVE = P / "quality/a0576/retained-cache"
RECLAIM = 384 * 1024**2
sys.path.insert(0, str(E))
from artifact_io import RootRegistry, digest, read, write_once  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from native_partial_cache_retention_v2 import complete_inventory  # noqa: E402
from native_suite_capacity_v2 import _closed_receipt  # noqa: E402
from owned_cleanup import OwnedCleanup  # noqa: E402
from quality_cache_retention_v2 import preserve_current_cache  # noqa: E402
from quality_v2 import parse_full_gate_log_v2  # noqa: E402
from recorder import V2Runner  # noqa: E402


def guarded(path):
    path = guard_owned_path(Path(path))
    _unlinked_parents(path)
    return path


def owner():
    fence = read(guarded(P / "active-tree.json"))
    if (
        fence["output"] != str(P / "bootstrap" / NAME)
        or fence["boot_id"]
        != Path("/proc/sys/kernel/random/boot_id").read_text().strip()
    ):
        raise ValueError("CompletedCacheOwnerFence")
    cursor, seen = os.getpid(), set()
    while cursor > 1 and cursor not in seen:
        if cursor == 2217256:
            raise ValueError("CompletedCacheExcludedProcess")
        seen.add(cursor)
        fields = (
            Path("/proc", str(cursor), "stat").read_text().rsplit(")", 1)[1].split()
        )
        if cursor == fence["controller_pid"]:
            if int(fields[19]) != fence["controller_start_ticks"]:
                raise ValueError("CompletedCacheReusedController")
            return fence
        cursor = int(fields[1])
    raise ValueError("CompletedCacheNotOwned")


def closed_quality(refs):
    attempt = guarded(N / "attempts/a0576")
    RootRegistry({"attempt": attempt}).verify_closed("attempt")
    for path, expected in [
        (
            attempt / "checkpoint.json",
            "190a93f6eb9a1995237d4793c2b447d74144a4e6f0fbf5ea816f3740f6b21c1e",
        ),
        (
            attempt / "child/receipt.json",
            "4a9bf2a4a5f28b7a4a26a33f131e59032793ddcd5ce87f71293b96a664a29850",
        ),
        (
            P / "quality/a0576/result.json",
            "74975f762f59a5ec0c7a39699a8491c38efb6e76cab1bce1fbaf589f59f2cd36",
        ),
    ]:
        if digest(guarded(path)) != expected:
            raise ValueError("CompletedCacheExpectedClosedBytes")
    cp = read(attempt / "checkpoint.json")
    rc = read(attempt / "child/receipt.json", limit=32 * 1024**2)
    result = read(guarded(P / "quality/a0576/result.json"))
    if read(guarded(ARCHIVE / "result.json")) != result["complete_cache_preservation"]:
        raise ValueError("CompletedCacheExpectedArchive")
    declaration = read(attempt / "declaration.json")
    _closed_receipt(rc, "Q", "w001")
    if (
        cp["attempt_id"] != "a0576"
        or cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or cp["outcome"]["operational"] != "closed"
        or rc.get("controller_error") is not None
        or cp["source_subject_ref"] != rc["source_subject_ref"]
        or cp["source_subject_ref"] != result["source_subject_ref"]
        or declaration["revision"] != "r9600"
        or result["whole_gate_terminal_ok"] is not True
        or result["exit_code"] != 0
        or result["runtime_preparation_only"] is not False
        or result["target"] != str(TARGET)
        or result["evaluated_runtime_result"]["capture_pair_equal"] is not True
        or result["evaluated_runtime_result"]["gate_exit"] != 0
    ):
        raise ValueError("CompletedCacheExactClosedQuality")
    labels = [
        "cargo fmt",
        "clippy",
        "cargo test",
        "prepared state work",
        "incremental validation work",
        "cargo build",
        "determinism check",
        "boundary",
        "public surface",
        "external consumer",
        "workflows",
        "terms",
        "script tests",
    ]
    parse_full_gate_log_v2(
        guarded(P / "quality/a0576/stderr.txt").read_text(), expected_labels=labels
    )
    for stream in ["stdout", "stderr"]:
        if (
            digest(guarded(P / "quality/a0576" / (stream + ".txt")))
            != result[stream + "_sha256"]
        ):
            raise ValueError("CompletedCacheChangedQualityLog")
    config = read(guarded(E / "quality-inputs-v2.json"))
    if set(config) != {
        "format",
        "cli_result_ref",
        "cli_checkpoint_ref",
        "runtime_fixture_inputs",
    }:
        raise ValueError("CompletedCacheStillSelectedForReuse")
    return rc


def child():
    refs, _ = artifact_context_for("w001")
    intent = refs.read(ref_for(guarded(BASE / "intent.json"), refs))
    for reference in intent["bindings"]:
        refs.verify(reference)
    closed_quality(refs)
    OUT.mkdir(parents=True, exist_ok=False)
    inventory, preservation = preserve_current_cache(
        guarded(TARGET),
        guarded(ARCHIVE),
        guarded(OUT / "final-delta"),
        budget=intent["archive_budget"],
    )
    candidates = []
    for row in inventory["files"]:
        path = guarded(TARGET / row["path"])
        info = path.lstat()
        if (
            stat.S_ISREG(info.st_mode)
            and info.st_nlink == 1
            and row["bytes"] >= 256 * 1024
        ):
            candidates.append((row, info.st_dev, info.st_ino))
    candidates.sort(key=lambda item: (-item[0]["bytes"], item[0]["path"]))
    selected, total = [], 0
    for row, device, inode in candidates:
        if total >= RECLAIM:
            break
        selected.append({"file": row, "device": device, "inode": inode})
        total += row["bytes"]
    if total < RECLAIM or len(selected) > 1024:
        raise ValueError("CompletedCacheFiniteReclaimSelection")
    selection_paths = {row["file"]["path"] for row in selected}
    # No selected original logical reference may lose its accessible byte input.
    # Every current row has archive coverage; direct old consumers need an
    # additional reconstruction catalog before their path can be removed.
    frozen = refs.read(intent["frozen_source_ref"], limit=32 * 1024**2)
    for row in frozen["files"]:
        logical = row["logical_ref"]
        if logical["root_id"] == "private" and logical["path"].startswith(
            str(TARGET.relative_to(P)) + "/"
        ):
            relative = str(Path(logical["path"]).relative_to(TARGET.relative_to(P)))
            if relative in selection_paths:
                raise ValueError("CompletedCacheDirectFrozenInputNeedsCatalog")
    retained_refs = list(intent["bindings"])
    for folder, result in [
        (ARCHIVE, read(guarded(ARCHIVE / "result.json"))),
        (OUT / "final-delta", preservation),
    ]:
        for name in ["result.json", "complete-inventory.json"]:
            retained_refs.append(ref_for(guarded(folder / name), refs))
        for part in result["parts"]:
            retained_refs.append(ref_for(guarded(folder / part["name"]), refs))
    cleanup = OwnedCleanup(P)
    registration = cleanup.register(
        guarded(TARGET), retained_refs=retained_refs, registry=refs
    )
    write_once(OUT / "registration.json", registration)
    write_once(
        OUT / "reclaim-plan.json",
        {
            "files": selected,
            "requested_unique_bytes": RECLAIM,
            "selected_single_link_bytes": total,
            "all_current_files_archived": True,
            "unselected_files_and_directories_kept": True,
        },
    )
    fence = owner()
    if (
        complete_inventory(
            TARGET, maximum_bytes=4 * 1024**3, domain="closed-quality-cache"
        )
        != inventory
    ):
        raise ValueError("CompletedCacheChangedBeforeReclaim")
    removed = []
    for number, entry in enumerate(selected, 1):
        if owner() != fence:
            raise ValueError("CompletedCacheOwnerChanged")
        row = entry["file"]
        path = guarded(TARGET / row["path"])
        info = path.lstat()
        if (
            not stat.S_ISREG(info.st_mode)
            or info.st_nlink != 1
            or (info.st_dev, info.st_ino, info.st_size, stat.S_IMODE(info.st_mode))
            != (entry["device"], entry["inode"], row["bytes"], row["mode"])
            or digest(path) != row["sha256"]
        ):
            raise ValueError("CompletedCacheSelectedBytesChanged")
        path.unlink()
        removed.append(row["path"])
        time.sleep(0.002)
        if number % 4 == 0:
            time.sleep(1.0)
    remaining = complete_inventory(
        TARGET, maximum_bytes=4 * 1024**3, domain="closed-quality-cache"
    )
    expected_files = [
        row for row in inventory["files"] if row["path"] not in selection_paths
    ]
    if (
        remaining["files"] != expected_files
        or remaining["directories"] != inventory["directories"]
    ):
        raise ValueError("CompletedCacheUnexpectedReclamation")
    for reference in retained_refs:
        refs.verify(reference)
    write_once(
        OUT / "result.json",
        {
            "format": "core036.completed-cache-reclamation.v1",
            "target": str(TARGET),
            "closed_quality_checkpoint_ref": intent["checkpoint_ref"],
            "complete_final_inventory_ref": ref_for(
                OUT / "final-delta/complete-inventory.json", refs
            ),
            "delta_preservation_ref": ref_for(OUT / "final-delta/result.json", refs),
            "prior_preservation_ref": ref_for(ARCHIVE / "result.json", refs),
            "removed_file_count": len(removed),
            "removed_single_link_bytes": total,
            "new_archive_bytes": preservation["new_archive_bytes"],
            "all_original_paths_modes_and_bytes_retained": True,
            "other_files_and_directories_unchanged": True,
            "future_cache_reuse_requires_explicit_restoration": True,
            "feature_complete": False,
            "product_adoption": "unactivated",
        },
    )
    return 0


def parent():
    refs, store = artifact_context_for("w001")
    rc = closed_quality(refs)
    cause_path = guarded(N / "bootstrap-runs/quality-completed-cache-reclamation-002/result.json")
    cause = refs.read(ref_for(cause_path, refs))
    cause_receipt_path = refs.verify(cause["receipt_ref"])
    cause_receipt = refs.read(cause["receipt_ref"], limit=32 * 1024**2)
    if (type(cause["actual_exit"]) is not int or cause["actual_exit"] != 1
            or cause["stop_reason"] is not None or not cause["tree_empty"]
            or not cause["group_empty"] or not cause["all_source_bytes_equal_after"]
            or cause_receipt["final_storage_inventory_error"] is not None
            or cause_receipt["final_incremental_storage_bytes"] != cause_receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]):
        raise ValueError("CompletedCacheClosedSelectionCause")
    profile_path = guarded(F / "inputs/v2/profiles/native-consumer-capacity-001.json")
    profile = refs.read(ref_for(profile_path, refs))
    from bootstrap import validate_v2_profile

    validate_v2_profile(profile)
    usage = rc["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    budget = min(
        256 * 1024**2,
        profile["limits"]["cache_bytes"] - usage["cache"] - 64 * 1024**2,
        profile["limits"]["combined_bytes"] - sum(usage.values()) - 64 * 1024**2,
    )
    if budget < 128 * 1024**2:
        raise ValueError("CompletedCacheRetentionHeadroom")
    paths = [
        Path(__file__),
        cause_path,
        cause_receipt_path,
        F / "inputs/v2/bootstrap-quality-completed-cache-reclamation-v2.py",
        profile_path,
        E / "quality-inputs-v2.json",
        *sorted(E.glob("*.py")),
        N / "attempts/a0576/checkpoint.json",
        N / "attempts/a0576/declaration.json",
        N / "attempts/a0576/child/receipt.json",
        P / "quality/a0576/result.json",
        P / "quality/a0576/stdout.txt",
        P / "quality/a0576/stderr.txt",
        P / "quality/a0576/runtime/result.json",
        ARCHIVE / "result.json",
        ARCHIVE / "complete-inventory.json",
    ]
    bindings = [ref_for(guarded(path), refs) for path in paths]
    BASE.mkdir(parents=True, exist_ok=False)
    frozen_ref = ref_for(guarded(N / "subjects/r9600/manifest.json"), refs)
    frozen = refs.read(frozen_ref, limit=32 * 1024**2)
    anchors = {
        (r["logical_ref"]["bytes"], r["logical_ref"]["sha256"]): r["snapshot_ref"]
        for r in frozen["files"]
    }
    rows = []
    for reference in bindings:
        snapshot = anchors.get((reference["bytes"], reference["sha256"]))
        if snapshot is None:
            path = BASE / "sources" / reference["sha256"]
            if not path.exists():
                write_once(path, refs.verify(reference).read_bytes())
            snapshot = ref_for(path, refs)
        refs.verify(snapshot)
        rows.append({"logical_ref": reference, "snapshot_ref": snapshot})
    write_once(
        BASE / "source-index.json",
        {"format": "core036.cache-maintenance-source.v1", "files": rows},
    )
    checkpoint = ref_for(guarded(N / "attempts/a0576/checkpoint.json"), refs)
    write_once(
        BASE / "intent.json",
        {
            "bindings": bindings,
            "archive_budget": budget,
            "checkpoint_ref": checkpoint,
            "frozen_source_ref": frozen_ref,
            "reason": "Closed maintenance002 preserved its new12,041,026B delta but rejected512MiB selection before deleting anything. Census of that exact unchanged inventory finds418455399B in275 single-link files at least256KiB, enough for the new384MiB selection. Actual closed582 leaves651327481B cache headroom. The previous optimized native target747796625B alone exceeds that headroom; this new finite384MiB reclamation creates room for the required fully frozen successor. Verify complete final cache via existing archive+new deltas, then reclaim384MiB from its largest single-link compiler files. Keep other files/directories, all original bytes, old outcomes and ordinary limits.",
        },
    )
    python = refs.read(ref_for(guarded(E / "native-environment-inputs-v2.json"), refs))[
        "tools"
    ]["python"]
    if digest(guarded(python["path"])) != python["sha256"]:
        raise ValueError("CompletedCachePython")
    argv = [python["path"], str(Path(__file__)), "--child"]
    source_ref = ref_for(BASE / "source-index.json", refs)
    write_once(
        BASE / "declaration.json",
        {
            "stage": "NATIVE",
            "profile": profile,
            "argv": argv,
            "wall_seconds": 1800,
            "start_monotonic_ns": STARTED,
            "source_subject_ref": source_ref,
            "scope": "lossless finite closed compiler cache reclamation; no scientific acceptance",
        },
    )
    runner = V2Runner(
        profile,
        started_ns=STARTED,
        control_paths=[*execution_control_paths(), N],
        artifact_store=store,
    )
    receipt = runner.run(
        argv,
        P / "bootstrap" / NAME,
        wall_seconds=1800,
        child_kind="extended",
        source_subject_ref=source_ref,
        env={"PYTHONDONTWRITEBYTECODE": "1", "PYTHONPATH": str(E)},
    )
    for reference in bindings:
        refs.verify(reference)
    write_once(
        BASE / "result.json",
        {
            "receipt_ref": ref_for(P / "bootstrap" / NAME / "receipt.json", refs),
            "actual_exit": receipt["exit_code"],
            "stop_reason": receipt["stop_reason"],
            "tree_empty": receipt["tree_empty"],
            "group_empty": receipt["group_empty"],
            "all_source_bytes_equal_after": True,
            "feature_complete": False,
        },
    )
    print(
        json.dumps(
            {
                k: receipt[k]
                for k in [
                    "exit_code",
                    "stop_reason",
                    "tree_empty",
                    "group_empty",
                    "final_storage_inventory_error",
                    "final_resource_observation",
                ]
            }
        )
    )
    print(guarded(P / "bootstrap" / NAME / "stderr.txt").read_text()[-2500:])


if __name__ == "__main__":
    if sys.argv[1:] == ["--child"]:
        raise SystemExit(child())
    if len(sys.argv) != 1:
        raise ValueError("CompletedCacheArguments")
    parent()
