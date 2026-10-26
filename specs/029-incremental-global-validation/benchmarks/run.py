#!/usr/bin/env python3
"""Sequential public-API pilot measurements; never interprets failures as acceptance."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time


def cases():
    for population in (1, 16, 128, 512, 2048, 8192):
        for rule in ("none", "true", "count", "unsupported"):
            for workload in ("create", "update", "unrelated", "warm"):
                yield (population, 8, rule, workload, 1, 1)
    for steps in (8, 32, 128):
        yield (128, steps, "count", "update", 1, 1)
    for batch in (2, 8):
        for rules in (1, 4):
            yield (512, 8, "count", "create", batch, rules)
    yield (128, 8, "count", "reopen", 1, 1)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--binary", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--mode", choices=("production-like", "instrumented"), required=True)
    parser.add_argument("--strategy", choices=("released-baseline", "candidate"), required=True)
    parser.add_argument("--repeats", type=int, default=1)
    parser.add_argument("--timeout", type=float, default=120)
    parser.add_argument("--smoke", action="store_true")
    args = parser.parse_args()
    assert args.repeats > 0 and args.timeout > 0
    binary = args.binary.resolve(strict=True)
    cpu = min(os.sched_getaffinity(0))
    os.sched_setaffinity(0, {cpu})
    provenance = {
        "binary_sha256": hashlib.sha256(binary.read_bytes()).hexdigest(),
        "runner_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "cpu_affinity": [cpu],
        "platform": os.uname()._asdict() if hasattr(os.uname(), "_asdict") else list(os.uname()),
        "timeout_seconds": args.timeout,
    }
    selected = [(16, 4, "count", "create", 1, 1)] if args.smoke else list(dict.fromkeys(cases()))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("a") as stream:
        for repetition in range(args.repeats):
            for case in selected:
                command = [str(binary), *map(str, case)]
                started = time.monotonic()
                row = {"provenance": provenance, "strategy": args.strategy, "mode": args.mode,
                       "repetition": repetition, "case": case, "command": command}
                try:
                    run = subprocess.run(command, capture_output=True, text=True, timeout=args.timeout)
                    row.update(returncode=run.returncode, stdout=run.stdout, stderr=run.stderr,
                               process_wall_ms=(time.monotonic() - started) * 1000)
                    if run.returncode == 0:
                        row["result"] = json.loads(run.stdout)
                        if row["result"]["mode"] != args.mode:
                            row["error"] = "binary measurement mode mismatch"
                    else:
                        row["error"] = "probe failed"
                except (subprocess.TimeoutExpired, json.JSONDecodeError) as error:
                    row.update(error=str(error), process_wall_ms=(time.monotonic() - started) * 1000)
                stream.write(json.dumps(row, sort_keys=True) + "\n")
                stream.flush()
                print(json.dumps({"case": case, "repetition": repetition,
                                  "wall_ms": row["process_wall_ms"], "error": row.get("error")}), flush=True)
                if "error" in row:
                    raise SystemExit(1)


if __name__ == "__main__":
    main()
