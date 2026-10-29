"""Frozen research capacities; exhaustion has no semantic or proof authority."""
from contextlib import contextmanager
import fcntl
import hashlib
import json
import math
import os
from pathlib import Path
import resource
import shutil
import signal
import subprocess
import time

from artifacts import read_json


class ProfileError(ValueError):
    """The declared environment cannot be honored."""


def load_profile():
    path = Path(__file__).with_name("profile.json")
    numeric = ["measurement_cpu", "orchestration_cpu", "workers", "address_space_limit_bytes", "free_space_min_bytes", "native_timeout_seconds", "consumer_timeout_seconds", "proof_timeout_seconds", "whole_case_timeout_seconds"]
    properties = {name: {"type": "integer", "minimum": 0} for name in numeric}
    properties.update(format={"const": "core032.profile.v1"}, cache={"type": "string"})
    return read_json(path, {"type": "object", "additionalProperties": False, "required": list(properties), "properties": properties})


def profile_digest(profile):
    return hashlib.sha256(json.dumps(profile, sort_keys=True, separators=(",", ":"), allow_nan=False).encode()).hexdigest()


def preflight(profile, directory, *, expected_digest, cpus=None, free_bytes=None):
    if profile_digest(profile) != expected_digest:
        raise ProfileError("profile changed; create a new campaign")
    actual_cpus = os.sched_getaffinity(0) if cpus is None else cpus
    if not {profile["measurement_cpu"], profile["orchestration_cpu"]} <= actual_cpus:
        raise ProfileError("declared measurement/orchestration CPUs unavailable")
    actual_free = shutil.disk_usage(directory).free if free_bytes is None else free_bytes
    if actual_free < profile["free_space_min_bytes"]:
        raise ProfileError("insufficient disk; preserve existing work and record capacity failure")


@contextmanager
def timing_lock(path):
    with Path(path).open("a+") as handle:
        try:
            fcntl.flock(handle, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError as exc:
            raise ProfileError("another collector owns this measurement lock") from exc
        try:
            yield
        finally:
            fcntl.flock(handle, fcntl.LOCK_UN)


def metric(value, reason=None):
    if value is None:
        if not reason:
            raise ProfileError("unmeasured metric requires a reason")
    elif type(value) not in (int, float) or not math.isfinite(value) or value < 0:
        raise ProfileError("invalid numeric metric")
    return {"value": value, "reason": reason}


def run_child(argv, *, output_dir, timeout_seconds, address_space_bytes, affinity=None, deadline=None, env=None):
    """Own one process group; retain output and per-child wait4 resource observations.

    Short limits/affinity=None are unit-test controls. Campaign callers must use the
    manifest-bound profile/preflight and shared timing lock, not arbitrary overrides.
    """
    if timeout_seconds <= 0 or type(address_space_bytes) is not int or address_space_bytes <= 0:
        raise ProfileError("invalid child resource limit")
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=False)
    start = time.monotonic()
    if deadline is not None and deadline <= start:
        return {"outcome": "ResourceExhausted", "reason": "whole-chain-time", "launched": False,
                "wall_seconds": 0.0, "peak_rss_bytes": None, "exit_code": None}

    def limits():
        resource.setrlimit(resource.RLIMIT_AS, (address_space_bytes, address_space_bytes))
        if affinity is not None:
            os.sched_setaffinity(0, {affinity})

    phase_end = start + timeout_seconds
    end = min(phase_end, deadline) if deadline is not None else phase_end
    exhausted = False
    with (output_dir / "stdout.txt").open("wb") as stdout, (output_dir / "stderr.txt").open("wb") as stderr:
        process = subprocess.Popen(argv, stdout=stdout, stderr=stderr, env=env, start_new_session=True, preexec_fn=limits)
        while True:
            pid, status, usage = os.wait4(process.pid, os.WNOHANG)
            if pid:
                process.returncode = os.waitstatus_to_exitcode(status)
                break
            if not exhausted and time.monotonic() >= end:
                exhausted = True
                try:
                    os.killpg(process.pid, signal.SIGKILL)
                except ProcessLookupError:
                    pass
            time.sleep(0.01)
    result = {"outcome": "ResourceExhausted" if exhausted else ("Succeeded" if process.returncode == 0 else "ToolFailure"),
              "reason": ("whole-chain-time" if deadline is not None and deadline <= phase_end else "wall-time") if exhausted else None,
              "launched": True, "exit_code": process.returncode, "wall_seconds": time.monotonic() - start,
              "user_seconds": usage.ru_utime, "system_seconds": usage.ru_stime,
              "peak_rss_bytes": usage.ru_maxrss * 1024, "address_space_limit_bytes": address_space_bytes,
              "measurement_cpu": affinity}
    (output_dir / "result.json").write_text(json.dumps(result, sort_keys=True, indent=2) + "\n")
    return result
