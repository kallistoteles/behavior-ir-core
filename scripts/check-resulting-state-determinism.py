#!/usr/bin/env python3
"""Check independently specified Current results and immutable archived replay.

The CLI owns record codec/hash/replay semantics. This gate checks workload
coverage, expected semantic subsets, real exit codes and byte determinism.
"""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
PROFILE = "behavior.complete_resulting_state.v1"


def load(path):
    return json.loads(path.read_bytes())


def verify_files(base, files):
    for name, expected in files.items():
        path = base / name
        if hashlib.sha256(path.read_bytes()).hexdigest() != expected:
            raise ValueError(f"immutable fixture digest differs: {path}")


def subset(actual, expected, path="record"):
    if isinstance(expected, dict):
        if not isinstance(actual, dict):
            raise ValueError(f"{path}: expected object")
        for absent in expected.get("$absent", []):
            current = actual
            present = True
            for segment in absent.split("."):
                if isinstance(current, dict) and segment in current:
                    current = current[segment]
                elif isinstance(current, list) and segment.isdigit() and int(segment) < len(current):
                    current = current[int(segment)]
                else:
                    present = False
                    break
            if present:
                raise ValueError(f"{path}.{absent}: unexpected semantic field")
        for key, value in expected.items():
            if key == "$absent":
                continue
            if key not in actual:
                raise ValueError(f"{path}.{key}: missing expected field")
            subset(actual[key], value, f"{path}.{key}")
    elif isinstance(expected, list):
        if not isinstance(actual, list) or len(actual) != len(expected):
            raise ValueError(f"{path}: expected exactly {len(expected)} elements")
        for index, (value, wanted) in enumerate(zip(actual, expected)):
            subset(value, wanted, f"{path}[{index}]")
    elif actual != expected or type(actual) is not type(expected):
        raise ValueError(f"{path}: expected {expected!r}, got {actual!r}")


def execute(bin_path, arguments, expected_status):
    result = subprocess.run([bin_path, *map(str, arguments)], cwd=ROOT, capture_output=True)
    if result.returncode != expected_status or not result.stdout.strip():
        raise ValueError(f"{arguments[0]}: expected nonempty output and exit {expected_status}; got exit {result.returncode}: {result.stderr.decode(errors='replace')}")
    return result.stdout


def replay(bin_path, command, module, record):
    output = execute(bin_path, [command, module, record], 0)
    result = json.loads(output)
    if result.get("matches") is not True:
        raise ValueError(f"{command}: semantic replay did not match: {record}")
    return output


def digest(label, output):
    directory = os.environ.get("BEHAVIOR_DIGEST_DIR")
    if directory:
        with (Path(directory) / "outputs.tsv").open("a") as file:
            file.write(f"core\t017:{label}\t{hashlib.sha256(output).hexdigest()}\n")


def main():
    bin_path = os.environ.get("BEHAVIOR_BIN", str(ROOT / "target/debug/behavior"))
    current = ROOT / "tests/fixtures/resulting-state-validity/current"
    manifest = load(current / "manifest.json")
    verify_files(current, manifest["files"])
    verify_files(ROOT, manifest["module_files"])
    inventory = load(current / "cases.json")
    with tempfile.TemporaryDirectory(prefix="behavior017-determinism-") as temporary:
        for case in inventory["cases"]:
            expectation = load(current / case["expectation"])
            status = {"ALLOW": 0, "DENY": 1, "ERROR": 3, "INVALID_INPUT": 2}[expectation["result"]]
            module = ROOT / case["module"]
            request = current / case["request"]
            outputs = [execute(bin_path, ["eval", module, request], status) for _ in range(2)]
            if outputs[0] != outputs[1]:
                raise ValueError(f"current:{case['name']}: nondeterministic output")
            record = json.loads(outputs[0])
            if record.get("record_version") != "0.8" or record.get("validation_profile") != PROFILE:
                raise ValueError(f"current:{case['name']}: wrong fresh validation profile")
            subset(record, expectation)
            record_file = Path(temporary) / (case["name"] + ".json")
            record_file.write_bytes(outputs[0])
            replay(bin_path, "replay", module, record_file)
            digest("current:" + case["name"], outputs[0])
            print("resulting-state determinism: current:" + case["name"])
    archive = ROOT / "tests/fixtures/resulting-state-validity/compatibility-archive"
    cases = load(archive / "manifest.json")["cases"]
    for case in cases:
        record = archive / case["record_path"]
        verify_files(archive, {case["record_path"]: case["record_sha256"]})
        operation = case["command"][4]
        if operation not in ("eval", "invoke", "invoke-intent"):
            raise ValueError(f"unknown archived operation: {operation}")
        command = "replay" if operation == "eval" else "invoke-replay"
        module = ROOT / case["command"][5]
        outputs = [replay(bin_path, command, module, record) for _ in range(2)]
        if outputs[0] != outputs[1]:
            raise ValueError(f"archive:{case['group']}:{case['name']}: nondeterministic replay")
        digest(f"archive:{case['group']}:{case['name']}", outputs[0])
    print(f"resulting-state determinism: {len(inventory['cases'])} Current cases and {len(cases)} immutable archives passed")


if __name__ == "__main__":
    try:
        main()
    except (ValueError, KeyError, OSError, json.JSONDecodeError) as error:
        print(f"resulting-state determinism: FAILED: {error}", file=sys.stderr)
        sys.exit(1)
