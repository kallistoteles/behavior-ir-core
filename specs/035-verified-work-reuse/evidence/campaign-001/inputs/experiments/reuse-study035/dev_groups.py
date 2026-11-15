"""Development group preflight with already retained, byte-checked workers."""

import json
from pathlib import Path
import shlex
from artifact_io import verify_ref, write_once
from recorder import run

E = Path(__file__).resolve().parent
D = E.parents[1] / "specs/035-verified-work-reuse/evidence/development"
p = json.loads((D / "group-prepared-001.json").read_text())
t = json.loads((E / "toolchain.json").read_text())["tools"]
results = []
for role, target in [("R", "reference"), ("G", "ground"), ("V", "views")]:
    b = p["workers"]["reuse035-" + target]["executable"]
    verify_ref(D, b)
    argv = [
        str(D / b["path"]),
        "run-group",
        "--prepared",
        str(D / "group-prepared-001.json"),
        "--case",
        "growth-D1",
        "--out",
        str(D / ("group-execution-" + role + "-001")),
    ]
    r = run(
        [t["nix-shell"]["path"], str(E / "shell.nix"), "--run", shlex.join(argv)],
        D / ("group-native-" + role + "-001"),
        wall_seconds=900,
    )
    results.append(
        {"role": role, "exit_code": r["exit_code"], "stop_reason": r["stop_reason"]}
    )
    if r["exit_code"] != 0 or r["stop_reason"]:
        break
write_once(D / "group-checks-001.json", results)
print(json.dumps(results))
