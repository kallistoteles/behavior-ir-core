#!/usr/bin/env python3
"""Capture actual pinned commands and immutable source/test provenance.

This is audit tooling, not a build/gate bypass. Invoke with an unused output
directory and a JSON list of argv lists. Every command's real status is kept.
"""
import datetime
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys

root = Path(__file__).resolve().parents[3]
destination = root / sys.argv[1]
destination.mkdir(parents=True, exist_ok=False)
commands = json.loads(sys.argv[2])


def now():
    return datetime.datetime.now(datetime.timezone.utc).isoformat()


def manifest():
    files = set()
    for directory in ("crates", "consumer", "schema", "scripts"):
        for path in (root / directory).rglob("*"):
            if path.is_file() and "target" not in path.parts and ".git" not in path.parts:
                files.add(path)
    files.update(root.glob("Cargo.*"))
    return {str(p.relative_to(root)): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(files)}


before = manifest()
report = {"cwd": str(root), "head": subprocess.check_output(
    ["git", "rev-parse", "HEAD"], cwd=root, text=True).strip(),
    "started": now(), "source_test_files": before, "runs": []}
for index, argv in enumerate(commands):
    started = now()
    result = subprocess.run(argv, cwd=root, capture_output=True, text=True)
    stem = f"{index:02d}"
    (destination / (stem + ".stdout.txt")).write_text(result.stdout)
    (destination / (stem + ".stderr.txt")).write_text(result.stderr)
    run = {"argv": argv, "started": started, "finished": now(),
           "exit_status": result.returncode,
           "summaries": re.findall(r"test result: (.+)", result.stdout),
           "collection": re.findall(r"(\d+) tests?, (\d+) benchmarks?", result.stdout),
           "stdout_sha256": hashlib.sha256(result.stdout.encode()).hexdigest(),
           "stderr_sha256": hashlib.sha256(result.stderr.encode()).hexdigest()}
    report["runs"].append(run)
    print(json.dumps(run), flush=True)
report["finished"] = now()
report["sources_unchanged_during_run"] = before == manifest()
(destination / "run.json").write_text(json.dumps(report, indent=2) + "\n")
sys.exit(0 if all(r["exit_status"] == 0 for r in report["runs"]) else 1)
