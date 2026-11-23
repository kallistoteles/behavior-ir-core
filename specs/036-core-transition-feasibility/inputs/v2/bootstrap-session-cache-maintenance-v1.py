"""One fixed, lossless cleanup of five independently closed analysis caches.

This operational allocation preserves every cache file before disposal. It
changes no semantic/proof contract, historical receipt or numerical limit.
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
NAME = "session-cache-maintenance-001"
PARENTS = ("a0546", "a0550", "a0556", "a0557", "a0562")
BASE = N / "bootstrap-runs" / NAME
OUTPUT = P / "session-cache-maintenance" / NAME
sys.path.insert(0, str(E))
from artifact_io import RootRegistry, write_once  # noqa: E402
from backend_ir_retention_v2 import _archive_stream, _verify_archive  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from native_analysis_cache_v2 import retain_before_reuse  # noqa: E402
from native_canary_cache_retention_v2 import CountOnlySink  # noqa: E402
from owned_cleanup import OwnedCleanup  # noqa: E402
from proof_cache_retention_v2 import strict_inventory  # noqa: E402
from recorder import V2Runner  # noqa: E402


def guarded(path):
    path = guard_owned_path(path)
    _unlinked_parents(path)
    return path


def owner():
    """Read only this operation's fence and its actual ancestor chain."""
    fence = json.loads(guarded(P / "active-tree.json").read_bytes())
    if (
        fence["output"] != str(P / "bootstrap" / NAME)
        or fence["boot_id"]
        != Path("/proc/sys/kernel/random/boot_id").read_text().strip()
    ):
        raise ValueError("SessionMaintenanceOwnerFence")
    cursor = os.getpid()
    seen = set()
    while cursor not in seen:
        seen.add(cursor)
        raw = Path(f"/proc/{cursor}/stat").read_text()
        fields = raw[raw.rfind(")") + 2 :].split()
        if cursor == fence["controller_pid"]:
            if int(fields[19]) != fence["controller_start_ticks"]:
                raise ValueError("SessionMaintenanceOwnerReused")
            return fence
        cursor = int(fields[1])
        if cursor <= 1:
            break
    raise ValueError("SessionMaintenanceNotOwnedDescendant")


def closed(refs, attempt):
    base = N / "attempts" / attempt
    cp = refs.read(ref_for(guarded(base / "checkpoint.json"), refs))
    rc = refs.read(
        ref_for(guarded(base / "child/receipt.json"), refs), limit=32 * 1024**2
    )
    result = refs.read(
        ref_for(guarded(P / "native-extraction" / attempt / "result.json"), refs)
    )
    RootRegistry({"attempt": base}).verify_closed("attempt")
    target = guarded(P / "disposable" / ("analysis-" + attempt) / "target")
    if (
        cp["attempt_id"] != attempt
        or cp["outcome"]["operational"] != "closed"
        or cp["source_validation_error"] is not None
        or cp["stage_outcome"] not in {"succeeded", "failed"}
        or rc["source_subject_ref"] != cp["source_subject_ref"]
        or result["source_subject_ref"] != cp["source_subject_ref"]
        or rc["exit_code"] != (0 if cp["stage_outcome"] == "succeeded" else 1)
        or rc["stop_reason"] is not None
        or rc["tree_empty"] is not True
        or rc["group_empty"] is not True
        or rc["final_storage_inventory_error"] is not None
        or result["analysis_target"] != str(target)
        or result["compiler_cache_reused"] is not False
        or result["extraction_exit_code"] != 0
        or result["translation_exit_code"] not in {0, 1, 2}
    ):
        raise ValueError("SessionMaintenanceClosedExactCache")
    # Both historical extraction subjects must be independent of this cache.
    for reference in [
        result["source_subject_ref"],
        result["native_source_subject_ref"],
    ]:
        for row in refs.read(reference)["files"]:
            logical = row["logical_ref"]
            guard_owned_path(Path(logical["path"]))
            if logical["root_id"] == "private" and (P / logical["path"]).is_relative_to(
                target
            ):
                raise ValueError("SessionMaintenanceCacheIsSelectedSource")
    return target


def child():
    refs, _ = artifact_context_for("w001")
    intent = refs.read(ref_for(guarded(BASE / "intent.json"), refs))
    for reference in intent["bindings"]:
        refs.verify(reference)
    OUTPUT.mkdir(parents=True, exist_ok=False)
    cleanup = OwnedCleanup(P)
    results = []
    for attempt in PARENTS:
        fence = owner()
        target = closed(refs, attempt)
        target_stat = target.stat()
        rows = strict_inventory(
            target, maximum_files=10000, maximum_bytes=512 * 1024**2
        )
        counter = CountOnlySink()
        _archive_stream(target, rows, counter, compressed_limit=64 * 1024**2)
        if counter.total > 64 * 1024**2:
            raise ValueError("SessionMaintenanceArchiveCapacity")
        out = OUTPUT / attempt
        saved = out / "retained-cache"
        out.mkdir()
        preserved = retain_before_reuse(target, saved)
        if preserved["archive_bytes"] != counter.total:
            raise ValueError("SessionMaintenanceArchiveChanged")
        retained = intent["bindings"] + [
            ref_for(saved / name, refs)
            for name in ["inventory.json", "all-files.tar.gz", "result.json"]
        ]
        registration = cleanup.register(target, retained_refs=retained, registry=refs)
        write_once(out / "registration.json", registration)
        if (
            owner() != fence
            or strict_inventory(
                target, maximum_files=10000, maximum_bytes=512 * 1024**2
            )
            != rows
        ):
            raise ValueError("SessionMaintenanceChangedBeforeDisposal")
        _verify_archive(saved / "all-files.tar.gz", rows)
        if (target.stat().st_dev, target.stat().st_ino) != (
            target_stat.st_dev,
            target_stat.st_ino,
        ):
            raise ValueError("SessionMaintenanceTargetReplaced")
        # The outer V2Runner holds the exclusive work lease. No subprocess is
        # launched here. Paced deletion covers only the registered cache and
        # never enumerates unrelated host processes or historical roots.
        deleted = 0
        for directory, directories, files, fd in os.fwalk(
            target, topdown=False, follow_symlinks=False
        ):
            for name in files:
                guarded(Path(directory) / name)
                if not stat.S_ISREG(
                    os.stat(name, dir_fd=fd, follow_symlinks=False).st_mode
                ):
                    raise ValueError("SessionMaintenanceChangedNode")
                os.unlink(name, dir_fd=fd)
                deleted += 1
                time.sleep(0.002)
                if deleted % 8 == 0:
                    time.sleep(0.25)
            for name in directories:
                guarded(Path(directory) / name)
                os.rmdir(name, dir_fd=fd)
        os.rmdir(target)
        if deleted != preserved["file_count"]:
            raise ValueError("SessionMaintenanceDeletedCount")
        for reference in retained:
            refs.verify(reference)
        result = {
            "attempt": attempt,
            "target": str(target),
            "files": deleted,
            "raw_bytes": preserved["raw_bytes"],
            "archive_bytes": preserved["archive_bytes"],
            "net_reclaimed_bytes": preserved["raw_bytes"] - preserved["archive_bytes"],
            "archive_ref": ref_for(saved / "all-files.tar.gz", refs),
            "generated_sources_raw_ir_and_executed_binaries_preserved": True,
        }
        write_once(out / "cleanup.json", result)
        results.append(result)
    write_once(
        OUTPUT / "result.json",
        {
            "format": "core036.session-cache-maintenance.v1",
            "results": results,
            "feature_complete": False,
            "product_adoption": "unactivated",
            "scope": "lossless closed owned compiler caches only; no scientific sample or native proof",
        },
    )
    return 0


def parent():
    refs, store = artifact_context_for("w001")
    if store.active_root_id != "future_evidence" or guarded(OUTPUT).exists():
        raise ValueError("SessionMaintenanceRootOrOutput")
    profile_path = F / "inputs/v2/profiles/sessions-continued-capacity-001.json"
    profile = refs.read(ref_for(guarded(profile_path), refs))
    # Current last closed observation leaves84MB cache headroom. Each archive
    # is hard bounded64MB, then its207MB cache is disposed before the next.
    cause_path = N / "bootstrap-runs/session-cold-scope-source-red-001/result.json"
    cause = refs.read(ref_for(guarded(cause_path), refs))
    rc = refs.read(cause["receipt_ref"], limit=32 * 1024**2)
    if (
        cause["actual_exit"] != 1
        or cause["stop_reason"] is not None
        or not cause["tree_empty"]
        or not cause["group_empty"]
        or rc["final_storage_inventory_error"] is not None
    ):
        raise ValueError("SessionMaintenancePriorClosure")
    if (
        profile["limits"]["cache_bytes"]
        - rc["final_resource_observation"]["growth_apparent_unique_inode_bytes"][
            "cache"
        ]
        < 80 * 1024**2
    ):
        raise ValueError("SessionMaintenanceArchivePeakHeadroom")
    bindings = [
        ref_for(guarded(path), refs)
        for path in [
            Path(__file__),
            profile_path,
            cause_path,
            refs.verify(cause["receipt_ref"]),
        ]
    ]
    for attempt in PARENTS:
        closed(refs, attempt)
        base = N / "attempts" / attempt
        result_path = P / "native-extraction" / attempt / "result.json"
        bindings += [
            ref_for(guarded(path), refs)
            for path in [
                base / "checkpoint.json",
                base / "child/receipt.json",
                result_path,
            ]
        ]
        result = refs.read(ref_for(result_path, refs))
        for name in ["seed_folds.llbc", *[row["path"] for row in result["generated"]]]:
            bindings.append(ref_for(guarded(result_path.parent / name), refs))
    bindings += [ref_for(guarded(path), refs) for path in sorted(E.glob("*.py"))]
    tools = refs.read(ref_for(guarded(E / "native-environment-inputs-v2.json"), refs))[
        "tools"
    ]
    BASE.mkdir(parents=True, exist_ok=False)
    write_once(
        BASE / "intent.json",
        {
            "bindings": bindings,
            "targets": list(PARENTS),
            "archive_compressed_limit": 64 * 1024**2,
        },
    )
    argv = [tools["python"]["path"], str(Path(__file__)), "--child"]
    write_once(
        BASE / "declaration.json",
        {
            "format": "core036.session-cache-maintenance-attempt.v1",
            "stage": "SESSIONS",
            "profile": profile,
            "argv": argv,
            "wall_seconds": 900,
            "start_monotonic_ns": STARTED,
            "scope": "owned storage maintenance only",
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
        wall_seconds=900,
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
                key: receipt[key]
                for key in [
                    "exit_code",
                    "stop_reason",
                    "tree_empty",
                    "group_empty",
                    "final_resource_observation",
                    "final_storage_inventory_error",
                ]
            }
        )
    )
    print((P / "bootstrap" / NAME / "stderr.txt").read_text()[-3000:])


if __name__ == "__main__":
    if sys.argv[1:] == ["--child"]:
        raise SystemExit(child())
    if len(sys.argv) != 1:
        raise ValueError("SessionMaintenanceArguments")
    parent()
