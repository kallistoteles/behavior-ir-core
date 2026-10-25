#!/usr/bin/env python3
"""Diagnostic/reference pilots; their timings never establish production speedup."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time

ROOT = Path(__file__).resolve().parents[3]
EVIDENCE = ROOT / "specs/029-incremental-global-validation/evidence"
PROBES = ROOT / "target/core029-probes"


def main():
    cpu = min(os.sched_getaffinity(0))
    os.sched_setaffinity(0, {cpu})
    binary = PROBES / "released-instrumented"
    digest = hashlib.sha256(binary.read_bytes()).hexdigest()
    with (EVIDENCE / "instrumented-pilot.jsonl").open("a") as output:
        for population in (1, 16, 128, 512, 2048, 8192):
            command = [str(binary), str(population), "8", "count", "create", "1", "1"]
            started = time.monotonic()
            run = subprocess.run(command, capture_output=True, text=True, timeout=120)
            row = {"command": command, "binary_sha256": digest, "cpu_affinity": [cpu],
                   "returncode": run.returncode, "stdout": run.stdout, "stderr": run.stderr,
                   "process_wall_ms": (time.monotonic() - started) * 1000}
            if run.returncode == 0:
                row["result"] = json.loads(run.stdout)
                assert row["result"]["mode"] == "instrumented"
            output.write(json.dumps(row, sort_keys=True) + "\n")
            output.flush()
            print(f"Diagnostic population {population}: rc={run.returncode}", flush=True)
            if run.returncode:
                raise SystemExit(1)
    command = [str(PROBES / "reference-instrumented-test"),
               "store::incremental::workload_tests::controlled_global_reference_pilot",
               "--exact", "--ignored", "--nocapture", "--test-threads=1"]
    with (EVIDENCE / "reference-pilot.txt").open("w") as output:
        run = subprocess.run(command, stdout=output, stderr=subprocess.STDOUT, timeout=240)
    if run.returncode:
        raise SystemExit(run.returncode)
    print("Full-reference pilot: PASS", flush=True)


if __name__ == "__main__":
    main()
