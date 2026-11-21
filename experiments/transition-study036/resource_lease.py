"""Work-wide tree ownership and explicit nesting for supervised controller tests.

The nested capability authorizes resource supervision within an already owned
process tree. It grants no semantic, proof, or source authority.
"""

import contextlib
import fcntl
import os
from pathlib import Path
from records import loads_v2

TOKEN_ENV = "CORE036_SUPERVISED_TEST_TREE"


def _private(root):
    root = Path(root)
    if (
        root.parent != Path("/var/tmp/behavior-ir-core036-v2")
        or not root.name.startswith("w")
        or not root.name[1:].isdigit()
        or root.is_symlink()
    ):
        raise ValueError("V2TreeLeaseOwner")
    st = root.stat()
    if st.st_uid != os.geteuid() or st.st_mode & 0o077:
        raise ValueError("V2TreeLeasePrivateBoundary")
    return root


def nested_authorized(root):
    from recorder import _proc_rows

    token = os.environ.get(TOKEN_ENV)
    if not token:
        return False
    fence = Path(root) / "active-tree.json"
    if not fence.is_file() or fence.is_symlink():
        return False
    value = loads_v2(fence.read_bytes())
    if (
        value.get("test_tree_token") != token
        or value.get("boot_id")
        != Path("/proc/sys/kernel/random/boot_id").read_text().strip()
    ):
        return False
    rows = _proc_rows()
    owner = value.get("controller_pid")
    if owner not in rows or rows[owner]["start_ticks"] != value.get(
        "controller_start_ticks"
    ):
        return False
    cursor = os.getpid()
    seen = set()
    while cursor in rows and cursor not in seen:
        seen.add(cursor)
        cursor = rows[cursor]["ppid"]
        if cursor == owner:
            return True
    return False


@contextlib.contextmanager
def tree_lease(root):
    root = _private(root)
    path = root / "process.lock"
    if path.is_symlink():
        raise ValueError("V2TreeLeaseSymlink")
    with path.open("a+b") as lease:
        nested = False
        try:
            fcntl.flock(lease, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError as exc:
            if not nested_authorized(root):
                raise ValueError("V2ActiveProcessTree") from exc
            nested = True
        yield nested


def recover_closed_bootstrap_fence(root, *, receipt_ref, registry, output_prefix):
    """Recover only with an actual reviewed closure that encloses this owner.

    No process is signalled. Preserve the old fence and actual closure first;
    verify PID/start-time identity and the exact recorded boot/interval.
    """
    from recorder import _proc_rows

    root = _private(root)
    with tree_lease(root) as nested:
        if nested:
            raise ValueError("V2CannotRecoverLiveParentTree")
        fence = root / "active-tree.json"
        if not fence.is_file() or fence.is_symlink():
            raise ValueError("V2RecoveryFence")
        raw = fence.read_bytes()
        value = loads_v2(raw)
        receipt = registry.read(receipt_ref)
        if (
            receipt.get("format") != "core035.bounded.v1"
            or receipt.get("tree_empty") is not True
            or receipt.get("group_empty") is not True
            or value["boot_id"] != receipt["boot_id"]
            or not receipt["start_monotonic_ns"]
            <= value["start_monotonic_ns"]
            <= receipt["start_monotonic_ns"] + receipt["wall_ns"]
        ):
            raise ValueError("V2RecoveryClosureDoesNotEncloseFence")
        starts = {
            row["start_ticks"]
            for sample in receipt["tree_samples"]
            for row in sample["processes"]
            if row["pid"] == value["controller_pid"]
        }
        if len(starts) != 1:
            raise ValueError("V2RecoveryOwnerIdentityUnavailable")
        current_boot = Path("/proc/sys/kernel/random/boot_id").read_text().strip()
        row = _proc_rows().get(value["controller_pid"])
        if (
            current_boot == value["boot_id"]
            and row is not None
            and row["start_ticks"] in starts
        ):
            raise ValueError("V2RecoveryOwnerStillLive")
        saved = registry.write("work", output_prefix + "/closed-owner-fence.json", raw)
        result = {
            "format": "core036.tree-fence-recovery.v2",
            "closure_ref": receipt_ref,
            "preserved_fence_ref": saved,
            "old_controller_pid": value["controller_pid"],
            "old_controller_start_ticks": next(iter(starts)),
            "old_boot_id": value["boot_id"],
            "current_boot_id": current_boot,
            "signals_sent": 0,
            "scope": "owned metadata recovery after independently closed reviewed bootstrap tree; no semantic authority",
        }
        registry.write("work", output_prefix + "/recovery.json", result)
        if fence.read_bytes() != raw:
            raise ValueError("V2FenceChangedDuringRecovery")
        fence.unlink()
        return result
