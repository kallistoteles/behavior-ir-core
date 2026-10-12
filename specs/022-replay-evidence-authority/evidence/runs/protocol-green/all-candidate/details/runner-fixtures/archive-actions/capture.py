#!/usr/bin/env python3
"""Capture actual pre-017 action profiles through its retained public CLI.

This owns only new 022 fixtures. Historical source, records and receipts are
read-only. Inputs use freshly reconstructed canonical Store coordinates.
"""

import argparse
import datetime
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

ROOT = Path(__file__).resolve().parents[5]
DEST = Path(__file__).resolve().parent
BASELINE = "932eb8188dc28393213491e27f66e3bc7e273a6b"
PROVENANCE = ROOT / "tests/fixtures/resulting-state-validity/compatibility-archive/manifest.json"
OUTCOMES = {"allow": "ALLOW", "refusal": "DENY", "error": "ERROR"}


def sha(data):
    return hashlib.sha256(data).hexdigest()


def immutable_write(path, data):
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.exists():
        if path.read_bytes() != data:
            raise RuntimeError(f"Refusing to replace captured bytes: {path}")
    else:
        path.write_bytes(data)


def model(version):
    loc = {"file": "022-archive-actions.beh", "line": 1}

    def lit(value):
        return {"op": "lit", "type": {"t": "bool" if isinstance(value, bool) else "int"}, "value": value, "loc": loc}

    def field(name):
        return {"op": "field", "param": "c", "field": name, "loc": loc}

    observations = []
    if version == "0.5":
        observations = [{"op": "exists", "args": [field("id")], "loc": loc}]
    if version == "0.6":
        observations = [{"op": "gt", "args": [{"op": "count", "args": [{"op": "select", "entity": "Counter", "loc": loc}], "loc": loc}, lit(0)], "loc": loc}]
    actions = []
    for outcome in OUTCOMES:
        preconditions = [{"expr": expr, "loc": loc} for expr in observations]
        if outcome == "refusal":
            preconditions.append({"expr": lit(False), "loc": loc})
        value = {"op": "add", "args": [field("value"), lit(1)], "loc": loc}
        if outcome == "error":
            value = {"op": "add", "args": [lit(9223372036854775807), lit(1)], "loc": loc}
        actions.append({"name": outcome, "params": [{"name": "c", "role": "state", "type": {"t": "entity", "name": "Counter"}}],
                        "preconditions": preconditions, "postconditions": [],
                        "effects": [{"target": {"param": "c", "field": "value"}, "value": value, "loc": loc}], "loc": loc})
        if version in ("0.7", "0.8"):
            actions[-1]["command_effects"] = []
    module = {"ir_version": "0.8" if version in ("0.7", "0.8") else "0.7",
              "entities": [{"name": "Counter", "fields": [{"name": "value", "type": {"t": "int"}, "loc": loc}], "loc": loc}],
              "actions": actions, "reads": [], "derived": [], "constraints": [], "invariants": [], "enums": [], "nominals": []}
    if version in ("0.7", "0.8"):
        module["commands"] = []
    return module


def prepare_models():
    for version in ("0.4", "0.5", "0.6", "0.7", "0.8"):
        row = DEST / version
        immutable_write(row / "module.json", (json.dumps(model(version), sort_keys=True, indent=2) + "\n").encode())
        for outcome in OUTCOMES:
            request = {"format": "behavior.invocation.v1", "capability": outcome,
                       "bindings": {"c": {"entity": "Counter", "id": "c1"}}, "input": {}, "context": {}}
            immutable_write(row / f"{outcome}.request.json", (json.dumps(request, sort_keys=True) + "\n").encode())


def capture():
    manifest = json.loads(PROVENANCE.read_text())
    checkout = Path(manifest["producer_checkout"])
    revision = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=checkout, text=True).strip()
    status = subprocess.check_output(["git", "status", "--porcelain"], cwd=checkout, text=True)
    if revision != BASELINE or status:
        raise RuntimeError("Historical producer source is not the clean recorded baseline")
    for relative, expected in manifest["baseline_source_files"].items():
        if sha((checkout / relative).read_bytes()) != expected:
            raise RuntimeError(f"Historical source custody changed: {relative}")
    original_binary = Path(manifest["producer_binary"])
    binary_sha = sha(original_binary.read_bytes())
    if binary_sha != manifest["producer_binary_sha256"]:
        raise RuntimeError("Historical binary differs from its retained provenance")
    area = Path("/tmp/behavior022-archive-actions")
    area.mkdir(exist_ok=True)
    binary = area / "behavior"
    if not binary.exists():
        shutil.copy2(original_binary, binary)
    if sha(binary.read_bytes()) != binary_sha:
        raise RuntimeError("Private producer copy differs")
    runs = []
    started = datetime.datetime.now(datetime.timezone.utc).isoformat()
    for version in ("0.4", "0.5", "0.6", "0.7"):
        row = DEST / version
        for outcome, expected_result in OUTCOMES.items():
            command = [str(binary), "invoke", str(row / "module.json"), str(row / f"{outcome}.request.json"), str(row / "snapshot.json")]
            completed = subprocess.run(command, cwd=ROOT, capture_output=True)
            record = json.loads(completed.stdout)
            if completed.returncode != 0 or record["outcome"]["record"]["record_version"] != version or record["outcome"]["record"]["result"] != expected_result:
                raise RuntimeError(f"Actual producer did not emit intended {version}/{outcome}: {completed.returncode}, {record}")
            immutable_write(row / f"{outcome}.record.json", completed.stdout)
            immutable_write(row / f"{outcome}.producer.stderr.txt", completed.stderr)
            runs.append({"version": version, "outcome": outcome, "command": command, "exit_status": completed.returncode,
                         "stdout_sha256": sha(completed.stdout), "stderr_sha256": sha(completed.stderr), "record_id": record["record_id"]})
    for outcome, expected_result in OUTCOMES.items():
        record = json.loads((DEST / "0.8" / f"{outcome}.record.json").read_text())
        if record["outcome"]["record"]["record_version"] != "0.8" or record["outcome"]["record"]["result"] != expected_result:
            raise RuntimeError("Current Core output is not the intended actual profile/outcome")
    files = {str(path.relative_to(DEST)): "sha256:" + sha(path.read_bytes()) for path in sorted(DEST.rglob("*")) if path.is_file() and path.name != "receipt.json"}
    receipt = {"format": "behavior.replay022.archive_action_capture.v1", "producer_revision": revision,
               "producer_checkout": str(checkout), "producer_status": status, "producer_binary": str(binary),
               "producer_binary_sha256": binary_sha, "provenance_manifest": str(PROVENANCE.relative_to(ROOT)),
               "provenance_manifest_sha256": sha(PROVENANCE.read_bytes()), "verified_historical_source_files": len(manifest["baseline_source_files"]),
               "capture_started_utc": started, "capture_finished_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
               "capture_tool_sha256": sha(Path(__file__).read_bytes()), "inputs_and_current_output_receipt": "specs/022-replay-evidence-authority/evidence/runs/us3-controls/archive-action-input-capture-corrected/run.json",
               "toolchain": {name: subprocess.check_output(command, text=True).strip() for name, command in {"rust": ["rustc", "--version"], "cargo": ["cargo", "--version"], "nix": ["nix", "--version"]}.items()},
               "runs": runs, "files": files,
               "limitations": ["New 022 captures from the existing proven pre-017 producer; these are not original 017 records.",
                               "Current Store supplies canonical snapshot coordinates; capture does not commit actions or produce replay authority."]}
    immutable_write(DEST / "receipt.json", (json.dumps(receipt, sort_keys=True, indent=2) + "\n").encode())
    print(json.dumps({"captured_archived": len(runs), "current_records": 3, "producer_revision": revision, "binary_sha256": binary_sha}))


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("mode", choices=["prepare", "capture"])
    args = parser.parse_args()
    if args.mode == "prepare":
        prepare_models()
    else:
        capture()
