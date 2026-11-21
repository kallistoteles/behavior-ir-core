"""Linux bounded recorders. Resource observations never establish semantic truth.

The v1 entrypoint is retained for historical interpretation. New execution uses
V2Runner and per-attempt, registered roots; no v1 campaign clock is imported.
"""

import ctypes
import datetime
import hashlib
import json
import os
from pathlib import Path
import resource
import select
import signal
import subprocess
import time

GIB = 1024**3
OWNED_PRIVATE = Path(__file__).resolve().parent / "private"
OWNED_EVIDENCE = (
    Path(__file__).resolve().parents[2]
    / "specs/036-core-transition-feasibility/evidence"
)


def permitted_wall(ledgers, now_ns, boot_id, reserve_seconds=0):
    if not ledgers or not 0 <= reserve_seconds <= 1800:
        raise ValueError("InvalidLedgerOrReserve")
    remaining = [ledger.remaining_ns(now_ns, boot_id) for ledger in ledgers]
    remaining[0] = max(0, remaining[0] - reserve_seconds * 10**9)
    return max(0, min(900, min(remaining) / 10**9))


class Ledger:
    def __init__(self, started_ns, boot_id, wall_seconds):
        if (
            type(started_ns) is not int
            or started_ns < 0
            or not boot_id
            or not 0 < wall_seconds <= 21600
        ):
            raise ValueError("InvalidLedger")
        self.started_ns = started_ns
        self.boot_id = boot_id
        self.budget_ns = int(wall_seconds * 10**9)

    def remaining_ns(self, now_ns, boot_id):
        if boot_id != self.boot_id or now_ns < self.started_ns:
            raise ValueError("ClockProvenanceChanged")
        return max(0, self.budget_ns - (now_ns - self.started_ns))


def disk_free():
    s = os.statvfs("/data")
    return s.f_bavail * s.f_frsize


def _footprint(root, excluded=None):
    total = 0
    seen = set()
    for directory, dirs, files in os.walk(root, followlinks=False):
        if excluded is not None:
            dirs[:] = [d for d in dirs if Path(directory) / d != excluded]
        for name in files:
            try:
                st = (Path(directory) / name).stat(follow_symlinks=False)
                key = (st.st_dev, st.st_ino)
                if key not in seen:
                    seen.add(key)
                    total += st.st_size
            except FileNotFoundError:
                continue
    return total


def project_growth():
    here = Path(__file__).resolve().parent
    private = here / "private"
    temporary = private / "tmp"
    return {
        "artifacts": _footprint(
            here.parents[1] / "specs/036-core-transition-feasibility/evidence"
        ),
        "cache": _footprint(private, temporary),
        "temporary": _footprint(temporary),
    }


def _growth_reason(usage):
    if usage["artifacts"] > 2 * GIB:
        return "ArtifactGrowthLimit"
    if usage["cache"] > 6 * GIB:
        return "CacheGrowthLimit"
    if usage["temporary"] > GIB:
        return "TemporaryGrowthLimit"
    if sum(usage.values()) > 8 * GIB:
        return "CombinedGrowthLimit"
    return None


def group_members(pgid):
    rows = []
    ticks = os.sysconf("SC_CLK_TCK")
    page = os.sysconf("SC_PAGE_SIZE")
    for p in Path("/proc").iterdir():
        if not p.name.isdigit():
            continue
        try:
            raw = (p / "stat").read_text()
            fields = raw[raw.rfind(")") + 2 :].split()
            if int(fields[2]) != pgid:
                continue
            rows.append(
                {
                    "pid": int(p.name),
                    "state": fields[0],
                    "virtual_bytes": int(fields[20]),
                    "rss_bytes": int(fields[21]) * page,
                    "user_cpu_ns": int(int(fields[11]) * 10**9 / ticks),
                    "system_cpu_ns": int(int(fields[12]) * 10**9 / ticks),
                    "threads": int(fields[17]),
                }
            )
        except (FileNotFoundError, ProcessLookupError, PermissionError):
            continue
    return rows


def _proc_rows():
    rows = {}
    ticks = os.sysconf("SC_CLK_TCK")
    page = os.sysconf("SC_PAGE_SIZE")
    for p in Path("/proc").iterdir():
        if not p.name.isdigit():
            continue
        try:
            raw = (p / "stat").read_text()
            f = raw[raw.rfind(")") + 2 :].split()
            pid = int(p.name)
            rows[pid] = {
                "pid": pid,
                "ppid": int(f[1]),
                "pgrp": int(f[2]),
                "start_ticks": int(f[19]),
                "state": f[0],
                "virtual_bytes": int(f[20]),
                "rss_bytes": int(f[21]) * page,
                "user_cpu_ns": int(int(f[11]) * 10**9 / ticks),
                "system_cpu_ns": int(int(f[12]) * 10**9 / ticks),
                "threads": int(f[17]),
            }
        except (OSError, ValueError, IndexError):
            continue
    return rows


def _owned(root_pid, known, baseline):
    # This controller launches one worker at a time. A subreaper's newly adopted
    # direct children belong to that worker, even if they created a new session.
    # Retain PID + start-time identity so PID reuse never authorizes a signal.
    rows = _proc_rows()
    parent = os.getpid()
    if root_pid in rows and root_pid not in known:
        known[root_pid] = rows[root_pid]["start_ticks"]
    for pid, row in rows.items():
        if row["ppid"] == parent and (pid, row["start_ticks"]) not in baseline:
            known.setdefault(pid, row["start_ticks"])
    while True:
        live = {
            pid
            for pid, start in known.items()
            if pid in rows and rows[pid]["start_ticks"] == start
        }
        added = False
        for pid, row in rows.items():
            if row["ppid"] in live and pid not in known:
                known[pid] = row["start_ticks"]
                added = True
        if not added:
            break
    return [row for pid, row in rows.items() if known.get(pid) == row["start_ticks"]]


def _signal_owned(row):
    fd = None
    try:
        fd = os.pidfd_open(row["pid"])
        raw = (Path("/proc") / str(row["pid"]) / "stat").read_text()
        fields = raw[raw.rfind(")") + 2 :].split()
        if int(fields[19]) == row["start_ticks"]:
            signal.pidfd_send_signal(fd, signal.SIGKILL)
    except (ProcessLookupError, FileNotFoundError):
        pass
    finally:
        if fd is not None:
            os.close(fd)


def _kill_owned(root_pid, known, baseline):
    for row in _owned(root_pid, known, baseline):
        _signal_owned(row)


def _reap_owned(root_pid, known, baseline):
    deadline = time.monotonic() + 2
    while True:
        members = _owned(root_pid, known, baseline)
        if not members:
            return True
        for row in members:
            _signal_owned(row)
            try:
                os.waitpid(row["pid"], os.WNOHANG)
            except (ChildProcessError, ProcessLookupError):
                pass
        if time.monotonic() > deadline:
            return not _owned(root_pid, known, baseline)
        time.sleep(0.005)


def _kill_group(pgid):
    try:
        os.killpg(pgid, signal.SIGKILL)
    except ProcessLookupError:
        pass


def _reap_group(pgid):
    deadline = time.monotonic() + 2
    while True:
        try:
            pid, _ = os.waitpid(-pgid, os.WNOHANG)
            if pid:
                continue
        except ChildProcessError:
            pass
        if not group_members(pgid):
            return True
        if time.monotonic() > deadline:
            return False
        time.sleep(0.005)


def launch_floor(ledger, session=None, bootstrap=None):
    if ledger is None:
        return 16 * GIB
    if session is None:
        session = json.loads((OWNED_EVIDENCE / "campaign-001/session.json").read_text())
    if bootstrap is None:
        bootstrap = json.loads(
            (OWNED_EVIDENCE / "development/bootstrap/receipt.json").read_text()
        )
    clock = session.get("clock", {})
    if (
        clock.get("started_ns") != ledger.started_ns
        or clock.get("boot_id") != ledger.boot_id
        or bootstrap.get("start_monotonic_ns") != ledger.started_ns
        or bootstrap.get("boot_id") != ledger.boot_id
        or bootstrap.get("group_id") is None
        or bootstrap.get("stop_reason") is not None
        or not bootstrap.get("tree_empty")
        or not bootstrap.get("group_empty")
    ):
        raise ValueError("InitialReserveProvenance")
    return 4 * GIB


def run(
    argv,
    out,
    wall_seconds=900,
    *,
    free_bytes=disk_free,
    growth_bytes=project_growth,
    ledger=None,
    env=None,
    stack_mib=64,
):
    if (
        not argv
        or any(not isinstance(s, str) or "\0" in s for s in argv)
        or not 0 < wall_seconds <= 1800
    ):
        raise ValueError("InvalidCommandOrWallLimit")
    out = Path(out)
    out.mkdir(parents=True, exist_ok=False)
    boot = Path("/proc/sys/kernel/random/boot_id").read_text().strip()
    start = time.monotonic_ns()
    if ledger is not None:
        wall_seconds = min(wall_seconds, ledger.remaining_ns(start, boot) / 10**9)
    start_floor = launch_floor(ledger)
    record = {
        "format": "core036.bounded.v1",
        "argv": argv,
        "started_at_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
        "start_monotonic_ns": start,
        "boot_id": boot,
        "wall_limit_ns": int(wall_seconds * 10**9),
        "address_space_limit_bytes": 8 * GIB,
        "disk_start_floor_bytes": start_floor,
        "campaign_initial_reserve_bytes": 16 * GIB,
        "sample_interval_ns": 10**9,
        "product_adoption": "unactivated",
        "assurance": "not_run",
    }
    reason = None
    code = None
    usage = None
    samples = []
    group_empty = True
    leftovers = False
    pgid = None
    tree_empty = True
    known = {}
    baseline = set()
    initial_growth = growth_bytes()
    record["initial_growth_apparent_unique_inode_bytes"] = initial_growth
    with (
        (out / "stdout.txt").open("xb") as stdout,
        (out / "stderr.txt").open("xb") as stderr,
    ):
        if free_bytes() < start_floor:
            reason = "DiskStartFloor"
        elif wall_seconds <= 0:
            reason = "OuterBudgetExhausted"
        elif _growth_reason(initial_growth):
            reason = _growth_reason(initial_growth)
        else:
            # Become a task-scoped subreaper, so orphan grandchildren can actually
            # be waited/reaped rather than left as zombie members of the group.
            libc = ctypes.CDLL(None, use_errno=True)
            if libc.prctl(36, 1, 0, 0, 0) != 0:
                raise OSError(ctypes.get_errno(), "PR_SET_CHILD_SUBREAPER")
            cpu = min(os.sched_getaffinity(0))
            record["cpu"] = cpu
            child_env = dict(os.environ)
            child_env.update(env or {})
            child_env.update(
                RAYON_NUM_THREADS="1",
                OMP_NUM_THREADS="1",
                CARGO_BUILD_JOBS="1",
                CARGO_INCREMENTAL="0",
            )

            def limits():
                os.sched_setaffinity(0, {cpu})
                resource.setrlimit(resource.RLIMIT_AS, (8 * GIB, 8 * GIB))
                resource.setrlimit(
                    resource.RLIMIT_STACK, (stack_mib * 1024**2, stack_mib * 1024**2)
                )
                resource.setrlimit(
                    resource.RLIMIT_FSIZE, (512 * 1024**2, 512 * 1024**2)
                )

            baseline = {
                (pid, row["start_ticks"])
                for pid, row in _proc_rows().items()
                if row["ppid"] == os.getpid()
            }
            try:
                child = subprocess.Popen(
                    argv,
                    stdout=stdout,
                    stderr=stderr,
                    env=child_env,
                    preexec_fn=limits,
                    start_new_session=True,
                )
            except OSError as error:
                child = None
                reason = "SpawnError"
                record["spawn_error"] = str(error)
            if child is not None:
                pgid = child.pid
                fd = os.pidfd_open(child.pid)
                next_sample = start
                try:
                    while True:
                        waited, status, rusage = os.wait4(child.pid, os.WNOHANG)
                        members = _owned(pgid, known, baseline)
                        if waited:
                            code = os.waitstatus_to_exitcode(status)
                            usage = rusage
                            child.returncode = code
                            break
                        now = time.monotonic_ns()
                        if now >= next_sample:
                            growth = growth_bytes()
                            samples.append(
                                {
                                    "at_monotonic_ns": now,
                                    "processes": members,
                                    "growth_apparent_unique_inode_bytes": growth,
                                }
                            )
                            next_sample = now + 10**9
                            if free_bytes() <= 4 * GIB:
                                reason = "EmergencyDiskFloor"
                            if _growth_reason(growth):
                                reason = _growth_reason(growth)
                        if now - start >= record["wall_limit_ns"]:
                            reason = "WallLimit"
                        if reason:
                            _kill_group(pgid)
                            _kill_owned(pgid, known, baseline)
                        select.select(
                            [fd],
                            [],
                            [],
                            max(
                                0,
                                min(
                                    0.1,
                                    (record["wall_limit_ns"] - (now - start)) / 10**9,
                                ),
                            )
                            if not reason
                            else 0.01,
                        )
                except KeyboardInterrupt:
                    reason = "Interrupted"
                    record["interrupted_signal"] = signal.SIGINT
                    _kill_group(pgid)
                    _kill_owned(pgid, known, baseline)
                    try:
                        _, status, usage = os.wait4(child.pid, 0)
                        code = os.waitstatus_to_exitcode(status)
                        child.returncode = code
                    except ChildProcessError:
                        # If interrupted immediately after wait4, the child
                        # is already reaped; an unavailable exit stays null.
                        pass
                finally:
                    os.close(fd)
                members = _owned(pgid, known, baseline)
                if any(row["state"] != "Z" for row in members):
                    leftovers = True
                    _kill_owned(pgid, known, baseline)
                    if reason is None:
                        reason = "LeftoverDescendants"
                tree_empty = _reap_owned(pgid, known, baseline)
                group_empty = not any(
                    row["pgrp"] == pgid for row in _owned(pgid, known, baseline)
                )
                if not tree_empty or not group_empty:
                    reason = "ProcessGroupNotEmpty"
    # A fast child may complete between samples. Recheck caps after all writers
    # and descendants close; exit0 cannot hide growth beyond the envelope.
    final_growth = growth_bytes()
    final_growth_reason = _growth_reason(final_growth)
    if reason is None and final_growth_reason:
        reason = final_growth_reason
    if reason is None and free_bytes() <= 4 * GIB:
        reason = "EmergencyDiskFloor"
    record["final_growth_apparent_unique_inode_bytes"] = final_growth
    record["final_growth_violation"] = final_growth_reason

    # All capture writers and processes have closed before these hashes.
    def sha(path):
        return hashlib.sha256(path.read_bytes()).hexdigest()

    record.update(
        finished_at_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
        wall_ns=time.monotonic_ns() - start,
        exit_code=code,
        stop_reason=reason,
        group_id=pgid,
        group_empty=group_empty,
        tree_empty=tree_empty,
        leftovers_killed=leftovers,
        process_tracking_scope="PID/start-time descendant closure plus subreaper-adopted children, including new sessions; one worker per controller",
        stdout_sha256=sha(out / "stdout.txt"),
        stderr_sha256=sha(out / "stderr.txt"),
        tree_samples=samples,
        aggregate_peak=None,
        aggregate_peak_reason="Exact aggregate/shared-page-adjusted peak unavailable; samples are observations",
        direct_waited=None
        if usage is None
        else {
            "user_cpu_ns": int(usage.ru_utime * 10**9),
            "system_cpu_ns": int(usage.ru_stime * 10**9),
            "peak_rss_bytes": usage.ru_maxrss * 1024,
        },
        direct_waited_scope="wait4 direct child and any descendants it already waited; not unreaped external grandchildren",
    )
    (out / "receipt.json").write_text(json.dumps(record, indent=2) + "\n")
    return record


def v2_footprints(roots, *, seen=None):
    """Apparent bytes, each inode once, nested roots assigned to deepest role.

    Roots are controller inputs, not report-selected paths. Symlinks themselves
    count but are never followed. Device/inode de-duplication spans all roles.
    """
    resolved = {name: Path(path).resolve() for name, path in roots.items()}
    if len(set(resolved.values())) != len(resolved):
        raise ValueError("V2DuplicateFootprintRoot")
    ordered = sorted(resolved, key=lambda name: (-len(resolved[name].parts), name))
    totals = dict.fromkeys(resolved, 0)
    if seen is None:
        seen = set()
    for name in ordered:
        import stat

        root = resolved[name]
        excluded = {
            str(other)
            for other in resolved.values()
            if other != root and other.is_relative_to(root)
        }
        pending = [str(root)]
        while pending:
            directory = pending.pop()
            try:
                entries = os.scandir(directory)
            except FileNotFoundError:
                continue
            with entries:
                for entry in entries:
                    if entry.path in excluded:
                        continue
                    try:
                        info = entry.stat(follow_symlinks=False)
                    except FileNotFoundError:
                        continue
                    if stat.S_ISDIR(info.st_mode):
                        pending.append(entry.path)
                        continue
                    key = (info.st_dev, info.st_ino)
                    if key not in seen:
                        seen.add(key)
                        totals[name] += info.st_size
    return totals


def _host_available_v2():
    for line in Path("/proc/meminfo").read_text().splitlines():
        if line.startswith("MemAvailable:"):
            return int(line.split()[1]) * 1024
    raise RuntimeError("MemAvailableUnavailable")


class V2Runner:
    """One closed Linux process tree, with hard child and observed group limits.

    growth/free_volumes are trusted observer injections for controller tests.
    Scientific callers use registered real roots and registered shared paths.
    A service outside this descendant tree is never admitted by this recorder.
    """

    def __init__(
        self,
        profile,
        *,
        growth=None,
        free_volumes=None,
        started_ns=None,
        shared_paths=(),
        control_paths=(),
        artifact_store=None,
    ):
        from bootstrap import validate_v2_profile
        import copy

        self.profile = copy.deepcopy(validate_v2_profile(profile))
        if self.profile["stage"] == "WORK":
            raise ValueError("V2AttemptProfileRequired")
        self.limits = self.profile["limits"]
        self.roots = {
            name: Path(value) for name, value in self.profile["roots"].items()
        }
        self.started_ns = time.monotonic_ns() if started_ns is None else started_ns
        if type(self.started_ns) is not int or self.started_ns < 0:
            raise ValueError("V2AttemptClock")
        self.boot_id = Path("/proc/sys/kernel/random/boot_id").read_text().strip()
        self.shared_paths = tuple(Path(p) for p in shared_paths)
        if any(
            not p.is_absolute() or not p.is_relative_to(self.roots["shared_store"])
            for p in self.shared_paths
        ):
            raise ValueError("V2UnregisteredSharedPath")
        self.control_paths = tuple(Path(p) for p in control_paths)
        if any(
            not p.is_absolute() or not (p.is_file() or p.is_dir()) or p.is_symlink()
            for p in self.control_paths
        ):
            raise ValueError("V2ControlInventory")
        self.artifact_store = artifact_store
        if artifact_store is not None:
            from artifact_store_v2 import ArtifactStore

            if (
                not isinstance(artifact_store, ArtifactStore)
                or artifact_store.work_id != self.profile["work_id"]
                or artifact_store.registry.roots["work"] != self.roots["artifacts"]
                or artifact_store.active_root_id != "future_evidence"
                or not artifact_store.configuration_refs
                or artifact_store.registry.roots["future_evidence"]
                not in self.control_paths
            ):
                raise ValueError("V2FutureArtifactStoreAdmission")
            for reference in artifact_store.configuration_refs:
                artifact_store.registry.verify(reference)
        self.growth = growth or self._growth
        self.free_volumes = free_volumes or self._free
        self.growth_scope = (
            "injected_controller_test_observer"
            if growth is not None
            else "registered_actual_roots"
        )
        self.free_scope = (
            "injected_controller_test_observer"
            if free_volumes is not None
            else "actual_registered_volumes"
        )

    def _free(self):
        result = {}
        for role, path in [
            ("root", self.roots["cache"]),
            ("data", self.roots["artifacts"]),
        ]:
            while not path.exists():
                path = path.parent
            stat = os.statvfs(path)
            result[role] = stat.f_bavail * stat.f_frsize
        return result

    def _growth(self, phase):
        observer = getattr(self, "_event_storage", None)
        if observer is not None and phase != "final":
            return observer.snapshot()
        roots = {k: self.roots[k] for k in ("cache", "temporary", "artifacts")}
        seen = set()
        result = v2_footprints(roots, seen=seen)
        # Explicitly inventoried controller/source bytes outside owned build
        # and evidence roots count in artifacts; unchanged historical sources
        # are read-only inputs and must not be passed as new control paths.
        for path in self.control_paths:
            if any(path.is_relative_to(root) for root in roots.values()):
                continue
            entries = path.rglob("*") if path.is_dir() else [path]
            for entry in entries:
                try:
                    st = entry.lstat()
                except FileNotFoundError:
                    continue
                if __import__("stat").S_ISDIR(st.st_mode):
                    continue
                key = (st.st_dev, st.st_ino)
                if key not in seen:
                    seen.add(key)
                    result["artifacts"] += st.st_size
        shared = 0
        for path in self.shared_paths:
            entries = path.rglob("*") if path.is_dir() else [path]
            for item in entries:
                st = item.lstat()
                if item.is_dir():
                    continue
                key = (st.st_dev, st.st_ino)
                if key not in seen:
                    seen.add(key)
                    shared += st.st_size
        result["shared_store"] = shared
        if observer is not None:
            try:
                incremental = observer.snapshot()
            except Exception as exc:
                self._storage_final_error = repr(exc)
            else:
                if incremental != result:
                    self._storage_final_error = (
                        "EventInventoryDiffersFromFullFinalInventory"
                    )
                    self._storage_inventory_diagnosis = observer.diagnose_metadata()
                self._storage_final_incremental = incremental
        return result

    def _resource_state(self, phase, members=()):
        from records import u64

        usage = self.growth(phase)
        if not isinstance(usage, dict) or set(usage) != {
            "cache",
            "temporary",
            "artifacts",
            "shared_store",
        }:
            raise ValueError("V2GrowthFields")
        for value in usage.values():
            u64(value)
        free = self.free_volumes()
        if not isinstance(free, dict) or set(free) != {"root", "data"}:
            raise ValueError("V2FreeVolumes")
        for value in free.values():
            u64(value)
        available = _host_available_v2()
        rss = sum(row["rss_bytes"] for row in members)
        reason = None
        if getattr(self, "_storage_final_error", None):
            reason = "StorageInventoryMismatch"
        caps = [
            ("cache", "cache_bytes", "CacheGrowthLimit"),
            ("temporary", "temporary_bytes", "TemporaryGrowthLimit"),
            ("artifacts", "evidence_bytes", "ArtifactGrowthLimit"),
            ("shared_store", "new_shared_store_bytes", "SharedStoreGrowthLimit"),
        ]
        for key, cap, message in caps:
            if usage[key] > self.limits[cap]:
                reason = reason or message
        if sum(usage.values()) > self.limits["combined_bytes"]:
            reason = reason or "CombinedGrowthLimit"
        if free["root"] < self.limits["root_stop_bytes"]:
            reason = reason or "RootFreeFloor"
        if free["data"] < self.limits["data_stop_bytes"]:
            reason = reason or "DataFreeFloor"
        if rss > self.limits["observed_rss_stop_bytes"]:
            reason = reason or "ObservedRSSLimit"
        if available < self.limits["host_available_stop_bytes"]:
            reason = reason or "HostAvailableFloor"
        return {
            "growth_apparent_unique_inode_bytes": usage,
            "free_volume_bytes": free,
            "host_available_bytes": available,
            "observed_descendant_rss_bytes": rss,
        }, reason

    def _output(self, out):
        from artifact_io import RootRegistry

        out = Path(out)
        if not out.is_absolute():
            raise ValueError("V2OutputRoot")
        if self.artifact_store is not None:
            store = self.artifact_store
            future = store.registry.roots["future_evidence"]
            if out.is_relative_to(future):
                relative = out.relative_to(future)
                parts = relative.parts
                if len(parts) != 3 or parts[0] != "attempts" or parts[2] != "child":
                    raise ValueError("V2FutureAttemptOutput")
                declaration = store.attempt_ref(parts[1])
                if declaration["root_id"] != "future_evidence":
                    raise ValueError("V2FutureAttemptOwnership")
                store.registry.verify(declaration)
                if (out.parent / "closed-artifacts.json").exists():
                    raise ValueError("V2FutureAttemptAlreadyClosed")
                store.output_path(str(relative))
                out.mkdir(parents=True, exist_ok=False)
                return out
        writable = {k: self.roots[k] for k in ("cache", "artifacts")}
        registry = RootRegistry(writable)
        for role, root in writable.items():
            if out.is_relative_to(root) and out != root:
                registry.path(role, str(out.relative_to(root)), writing=True)
                out.mkdir(parents=True, exist_ok=False)
                return out
        raise ValueError("V2OutputRoot")

    def run(
        self,
        argv,
        out,
        *,
        wall_seconds=900,
        lean=False,
        env=None,
        child_kind="ordinary",
        stack_mib=64,
        allow_nested_tests=False,
        source_subject_ref=None,
        file_limit_bytes=512 * 1024**2,
        incremental_storage=None,
    ):
        from resource_lease import TOKEN_ENV, tree_lease
        import secrets
        from artifact_io import RootRegistry, digest, write_once

        if incremental_storage is None:
            incremental_storage = self.growth_scope == "registered_actual_roots"

        if (
            not isinstance(argv, list)
            or not argv
            or any(not isinstance(x, str) or not x or "\0" in x for x in argv)
            or not Path(argv[0]).is_absolute()
            or type(wall_seconds) not in (int, float)
            or not 0 < wall_seconds
            or not __import__("math").isfinite(wall_seconds)
            or type(lean) is not bool
            or type(allow_nested_tests) is not bool
            or type(incremental_storage) is not bool
            or type(stack_mib) is not int
            or not 1 <= stack_mib <= 128
            or type(file_limit_bytes) is not int
            or not 0
            < file_limit_bytes
            <= min(self.limits["cache_bytes"], self.limits["temporary_bytes"])
        ):
            raise ValueError("V2CommandOrLimit")
        if incremental_storage and self.growth_scope != "registered_actual_roots":
            raise ValueError("V2IncrementalStorageRequiresActualRoots")
        limits = self.limits
        self._storage_final_error = None
        self._storage_final_incremental = None
        allowed = {
            "ordinary": limits["ordinary_child_seconds"],
            "extended": limits["extended_child_seconds"],
            "probe": limits["probe_seconds"],
            "cli_build": limits["cli_build_seconds"],
        }
        if child_kind not in allowed or wall_seconds > allowed[child_kind]:
            raise ValueError("V2UndeclaredChildException")
        # Only one V2 tree at a time, across controller processes. This lock is
        # outside all per-run directories and is held until descendants close.
        lock_path = self.roots["cache"] / "process.lock"
        if lock_path.is_symlink():
            raise ValueError("V2LeaseSymlink")
        lock_path.parent.mkdir(parents=True, exist_ok=True)
        from contextlib import ExitStack

        with tree_lease(self.roots["cache"]) as nested, ExitStack() as cleanup:
            fence = self.roots["cache"] / "active-tree.json"
            if not nested and (fence.exists() or fence.is_symlink()):
                raise ValueError("V2UnclosedTreeFence")
            out = self._output(out)
            context_roots = RootRegistry(
                {
                    **(
                        self.artifact_store.registry.roots
                        if self.artifact_store
                        else {}
                    ),
                    "private": self.roots["cache"],
                    "work": self.roots["artifacts"],
                    "repository": self.artifact_store.registry.roots["repository"]
                    if self.artifact_store
                    else Path(__file__).resolve().parents[2],
                },
                readonly=["repository"],
            )
            module_bytes = Path(__file__).read_bytes()
            module_path = out / "source-context/recorder.py"
            write_once(module_path, module_bytes)
            module_root = (
                "private" if module_path.is_relative_to(self.roots["cache"]) else "work"
            )
            if self.artifact_store and module_path.is_relative_to(
                self.artifact_store.registry.roots["future_evidence"]
            ):
                module_root = "future_evidence"
            module_ref = context_roots.reference(
                module_root,
                str(module_path.relative_to(context_roots.roots[module_root])),
            )
            if source_subject_ref is not None:
                context_roots.verify(source_subject_ref)
            start = time.monotonic_ns()
            boot = Path("/proc/sys/kernel/random/boot_id").read_text().strip()
            if boot != self.boot_id or start < self.started_ns:
                raise ValueError("V2AttemptClockChanged")
            remaining = (
                limits["attempt_seconds"] * 10**9
                - (start - self.started_ns)
                - limits["closure_reserve_seconds"] * 10**9
            )
            storage_error, storage_ref = None, None
            if incremental_storage:
                import storage_observer

                dependency = out / "source-context/storage_observer.py"
                write_once(dependency, Path(storage_observer.__file__).read_bytes())
                storage_ref = context_roots.reference(
                    module_root,
                    str(dependency.relative_to(context_roots.roots[module_root])),
                )
                try:
                    self._event_storage = cleanup.enter_context(
                        storage_observer.IncrementalStorage(
                            self.roots,
                            controls=self.control_paths,
                            shared_paths=self.shared_paths,
                        )
                    )
                    cleanup.callback(lambda: delattr(self, "_event_storage"))
                except Exception as exc:
                    storage_error = repr(exc)
            state, reason = self._resource_state("initial")
            if storage_error:
                reason = reason or "StorageObserverUnavailable"
            remaining = (
                limits["attempt_seconds"] * 10**9
                - (time.monotonic_ns() - self.started_ns)
                - limits["closure_reserve_seconds"] * 10**9
            )
            if remaining < int(wall_seconds * 10**9):
                reason = reason or "ClosureReserve"
            as_limit = limits[
                "lean_address_space_bytes" if lean else "address_space_bytes"
            ]
            record = {
                "format": "core036.resource.v2",
                "work_id": self.profile["work_id"],
                "record_id": out.name,
                "specification_ref": self.profile["specification_ref"],
                "source_subject_ref": module_ref
                if source_subject_ref is None
                else source_subject_ref,
                "monitor_source_ref": module_ref,
                "inputs": self.profile["inputs"]
                + ([storage_ref] if storage_ref is not None else [])
                + (
                    list(self.artifact_store.configuration_refs)
                    if self.artifact_store
                    else []
                ),
                "monitor_storage_dependency_ref": storage_ref,
                "incremental_storage_requested": incremental_storage,
                "storage_initialization_error": storage_error,
                "product_adoption": "unactivated",
                "argv": argv,
                "stage": self.profile["stage"],
                "child_kind": child_kind,
                "started_at_utc": datetime.datetime.now(
                    datetime.timezone.utc
                ).isoformat(),
                "start_monotonic_ns": start,
                "boot_id": boot,
                "wall_limit_ns": int(wall_seconds * 10**9),
                "address_space_limit_bytes": as_limit,
                "file_size_limit_bytes": file_limit_bytes,
                "sample_interval_ns": 10**9,
                "sample_target_interval_ns": 250_000_000
                if incremental_storage
                else 10**9,
                "initial_resource_observation": state,
                "nesting_scope": "within_supervised_test_tree"
                if nested
                else "exclusive_root",
                "growth_observer_scope": self.growth_scope,
                "free_volume_observer_scope": self.free_scope,
                "aggregate_peak": None,
                "aggregate_peak_reason": "Exact aggregate/shared-page-adjusted peak unavailable; samples are observations",
                "shared_store_scope": "Only prospectively registered new paths; services outside the owned tree are not supervised",
                "registered_roots": [],
                "registered_control_paths": [
                    {
                        "resolved_path": str(p.resolve()),
                        "kind": "directory" if p.is_dir() else "file",
                        "role": "artifacts",
                        "owner": "work",
                        "cap_bytes": limits["evidence_bytes"],
                        "filesystem_device": p.stat().st_dev,
                        "lifetime": self.profile["work_id"],
                    }
                    for p in self.control_paths
                ],
            }
            for role, path in self.roots.items():
                existing = path
                while not existing.exists():
                    existing = existing.parent
                record["registered_roots"].append(
                    {
                        "role": role,
                        "resolved_path": str(path.resolve()),
                        "owner": "shared" if role == "shared_store" else "work",
                        "filesystem_device": existing.stat().st_dev,
                        "lifetime": self.profile["work_id"],
                        "mutable": role != "shared_store",
                        "cap_bytes": limits[
                            {
                                "cache": "cache_bytes",
                                "temporary": "temporary_bytes",
                                "artifacts": "evidence_bytes",
                                "shared_store": "new_shared_store_bytes",
                            }[role]
                        ],
                    }
                )
            code, usage, pgid, known, baseline = None, None, None, {}, set()
            samples, leftovers, tree_empty, group_empty = [], False, True, True
            with (
                (out / "stdout.txt").open("xb") as stdout,
                (out / "stderr.txt").open("xb") as stderr,
            ):
                if reason is None:
                    token = (
                        secrets.token_hex(32)
                        if allow_nested_tests and not nested
                        else None
                    )
                    if not nested:
                        write_once(
                            fence,
                            {
                                "format": "core036.tree-fence.v2",
                                "controller_pid": os.getpid(),
                                "boot_id": boot,
                                "controller_start_ticks": _proc_rows()[os.getpid()][
                                    "start_ticks"
                                ],
                                "test_tree_token": token,
                                "start_monotonic_ns": start,
                                "output": str(out),
                            },
                        )
                    libc = ctypes.CDLL(None, use_errno=True)
                    if libc.prctl(36, 1, 0, 0, 0) != 0:
                        raise OSError(ctypes.get_errno(), "PR_SET_CHILD_SUBREAPER")
                    cpu = min(os.sched_getaffinity(0))
                    record["cpu"] = cpu
                    child_env = dict(os.environ)
                    child_env.update(env or {})
                    if token is not None:
                        child_env[TOKEN_ENV] = token
                    child_env.update(
                        RAYON_NUM_THREADS="1",
                        OMP_NUM_THREADS="1",
                        CARGO_BUILD_JOBS="1",
                        CARGO_INCREMENTAL="0",
                        TMPDIR=str(self.roots["temporary"]),
                    )
                    self.roots["temporary"].mkdir(parents=True, exist_ok=True)

                    def constrain():
                        os.sched_setaffinity(0, {cpu})
                        resource.setrlimit(resource.RLIMIT_AS, (as_limit, as_limit))
                        stack = stack_mib * 1024**2
                        resource.setrlimit(resource.RLIMIT_STACK, (stack, stack))
                        resource.setrlimit(
                            resource.RLIMIT_FSIZE, (file_limit_bytes, file_limit_bytes)
                        )

                    baseline = {
                        (pid, row["start_ticks"])
                        for pid, row in _proc_rows().items()
                        if row["ppid"] == os.getpid()
                    }
                    child_start = time.monotonic_ns()
                    record["child_start_monotonic_ns"] = child_start
                    try:
                        child = subprocess.Popen(
                            argv,
                            stdout=stdout,
                            stderr=stderr,
                            env=child_env,
                            preexec_fn=constrain,
                            start_new_session=True,
                        )
                    except OSError as exc:
                        reason = "SpawnError"
                        record["spawn_error"] = str(exc)
                    else:
                        pgid = child.pid
                        fd = os.pidfd_open(pgid)
                        next_sample = child_start
                        try:
                            while True:
                                waited, status, rusage = os.wait4(pgid, os.WNOHANG)
                                if waited:
                                    code, usage = (
                                        os.waitstatus_to_exitcode(status),
                                        rusage,
                                    )
                                    child.returncode = code
                                    break
                                now = time.monotonic_ns()
                                if now >= next_sample:
                                    # The declared observation cadence is one
                                    # second. Scanning every pidfd poll charges
                                    # substantial observer CPU to the child on
                                    # the same core without improving that
                                    # cadence. Closure still scans/reaps the
                                    # complete tree immediately after exit.
                                    members = _owned(pgid, known, baseline)
                                    state, violation = self._resource_state(
                                        "sample", members
                                    )
                                    samples.append(
                                        {
                                            "at_monotonic_ns": now,
                                            "processes": members,
                                            **state,
                                        }
                                    )
                                    if (
                                        incremental_storage
                                        and len(samples) > 1
                                        and now - samples[-2]["at_monotonic_ns"] > 10**9
                                    ):
                                        reason = reason or "ObservationCadenceMissed"
                                    next_sample = (
                                        now + record["sample_target_interval_ns"]
                                    )
                                    reason = reason or violation
                                if now - child_start >= record["wall_limit_ns"]:
                                    reason = reason or "WallLimit"
                                if reason:
                                    _kill_owned(pgid, known, baseline)
                                # Observation work consumes the polling budget.
                                # Re-read the clock: a slow snapshot may already
                                # have passed the next sampling deadline.
                                poll_now = time.monotonic_ns()
                                select.select(
                                    [fd],
                                    [],
                                    [],
                                    0.01
                                    if reason
                                    else max(
                                        0,
                                        min(
                                            0.1,
                                            (next_sample - poll_now) / 10**9,
                                            (
                                                record["wall_limit_ns"]
                                                - (poll_now - child_start)
                                            )
                                            / 10**9,
                                        ),
                                    ),
                                )
                        except BaseException as exc:
                            # Close the actual tree even if an observer or the
                            # controller fails; preserve a non-success receipt.
                            reason = reason or (
                                "Interrupted"
                                if isinstance(exc, KeyboardInterrupt)
                                else "ControllerError"
                            )
                            record["controller_error"] = repr(exc)
                            _kill_owned(pgid, known, baseline)
                            try:
                                _, status, usage = os.wait4(pgid, 0)
                                code = os.waitstatus_to_exitcode(status)
                                child.returncode = code
                            except ChildProcessError:
                                pass
                        finally:
                            os.close(fd)
                            members = _owned(pgid, known, baseline)
                            if any(row["state"] != "Z" for row in members):
                                leftovers = True
                                _kill_owned(pgid, known, baseline)
                                reason = reason or "LeftoverDescendants"
                            tree_empty = _reap_owned(pgid, known, baseline)
                            group_empty = not any(
                                r["pgrp"] == pgid for r in _owned(pgid, known, baseline)
                            )
                            if not tree_empty or not group_empty:
                                reason = "ProcessTreeNotEmpty"
                        record["observed_child_and_closure_ns"] = (
                            time.monotonic_ns() - child_start
                        )
            final_state, violation = self._resource_state("final")
            reason = reason or violation
            finish = time.monotonic_ns()
            record.update(
                finished_at_utc=datetime.datetime.now(
                    datetime.timezone.utc
                ).isoformat(),
                wall_ns=finish - start,
                exit_code=code,
                stop_reason=reason,
                group_id=pgid,
                group_empty=group_empty,
                tree_empty=tree_empty,
                leftovers_killed=leftovers,
                final_resource_observation=final_state,
                final_growth_violation=violation,
                final_storage_inventory_error=getattr(
                    self, "_storage_final_error", None
                ),
                final_incremental_storage_bytes=getattr(
                    self, "_storage_final_incremental", None
                ),
                final_storage_inventory_diagnosis=getattr(
                    self, "_storage_inventory_diagnosis", None
                ),
                stdout_sha256=digest(out / "stdout.txt"),
                stderr_sha256=digest(out / "stderr.txt"),
                tree_samples=samples,
                direct_waited=None
                if usage is None
                else {
                    "user_cpu_ns": int(usage.ru_utime * 10**9),
                    "system_cpu_ns": int(usage.ru_stime * 10**9),
                    "peak_rss_bytes": usage.ru_maxrss * 1024,
                },
                direct_waited_scope="wait4 direct child and descendants it waited; not external or unreaped grandchildren",
                process_tracking_scope="PID/start-time descendant closure plus newly subreaper-adopted children; one V2 tree per work lease",
                outcome={
                    "operational": "completed"
                    if code == 0 and reason is None
                    else "failed",
                    "acceptance": "blocked",
                },
                reason="Resource supervision only; no semantic or feature acceptance",
                blocking_ref=self.profile["specification_ref"],
            )
            write_once(out / "receipt.json", record)
            if not nested and tree_empty and group_empty and fence.exists():
                fence.unlink()
            return record
