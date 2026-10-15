#!/usr/bin/env python3
"""Reviewed baseline regression: execute the ten original raw binding payloads."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import tempfile


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, required=True)
    parser.add_argument("--cli", type=Path, required=True)
    parser.add_argument("--receipt", type=Path, required=True)
    args = parser.parse_args()
    cases = []
    with tempfile.TemporaryDirectory(prefix="core026-original-") as directory:
        for domain in ("invoice", "project_margin", "accounts", "ledger", "orders"):
            module = args.root / "tests/fixtures/bindings" / (domain + ".json")
            source = module.with_name(domain + ".request.json")
            for scenario, request in json.loads(source.read_text()).items():
                payload = json.dumps(request, sort_keys=True, separators=(",", ":"))
                path = Path(directory) / (domain + "." + scenario + ".json")
                path.write_text(payload)
                command = [str(args.cli), "eval", str(module), str(path)]
                actual = subprocess.run(command, capture_output=True, text=True)
                record = json.loads(actual.stdout)
                expected = "ALLOW" if scenario == "allowed" else "DENY"
                matches = record["result"] == expected
                if scenario == "refused":
                    matches = matches and any(
                        reason["code"] == "PRECONDITION_FAILED"
                        for reason in record["reasons"]
                    )
                cases.append({
                    "id": domain + "/" + scenario,
                    "source": str(source.relative_to(args.root)),
                    "module_sha256": hashlib.sha256(module.read_bytes()).hexdigest(),
                    "request": request,
                    "request_sha256": hashlib.sha256(payload.encode()).hexdigest(),
                    "command": command, "status": actual.returncode,
                    "stdout": actual.stdout, "stderr": actual.stderr,
                    "expected_result": expected, "assertion_passed": matches,
                })
    receipt = {
        "source_sha": subprocess.check_output(
            ["git", "rev-parse", "HEAD"], cwd=args.root, text=True).strip(),
        "cli": str(args.cli),
        "cli_sha256": hashlib.sha256(args.cli.read_bytes()).hexdigest(),
        "probe_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "assertion": "Five ALLOW and five intended DENY/PRECONDITION_FAILED outcomes",
        "cases": cases,
        "passed": len(cases) == 10 and all(case["assertion_passed"] for case in cases),
    }
    args.receipt.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n")
    for case in cases:
        record = json.loads(case["stdout"])
        print(case["id"], "expected", case["expected_result"], "actual",
              record["result"], [r["code"] for r in record["reasons"]])
    return 0 if receipt["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
