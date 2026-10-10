"""Private experiment, not a published-pin compatibility gate or live MCP test.

Run in the isolated Python build environment described in evidence.md. Both
strategies use the same full semantics: reopening before each handler forces
reference reconstruction without replacing tcup's canonical dependency metadata.
"""
import argparse
import hashlib
import importlib.util
import json
import platform
import subprocess
import sys
import tempfile
import time
from pathlib import Path


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def revision(root):
    return subprocess.check_output(["git", "-C", str(root), "rev-parse", "HEAD"], text=True).strip()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--tcup-root", type=Path, required=True)
    parser.add_argument("--core-root", type=Path, required=True)
    parser.add_argument("--ecosystem-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--samples", type=int, default=7)
    args = parser.parse_args()
    sys.path[:0] = [str(args.tcup_root / "src"), str(args.tcup_root / "tests")]
    import behavior
    import behavior._engine as extension
    from tcup.app import model
    from tcup.host import generations
    from tcup.mcp.server import TcupServer
    from lab import ACTOR

    spec = importlib.util.spec_from_file_location("tcup_perf_seed", args.tcup_root / "tests/integration/test_performance.py")
    seed_module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(seed_module)
    rows = seed_module.seed()
    semantic_model = model()
    core_files = {}
    for crate in ["behavior-core", "behavior-store", "behavior-engine"]:
        for path in sorted((args.core_root / "crates" / crate / "src").rglob("*.rs")):
            core_files[str(path.relative_to(args.core_root))] = digest(path)
    data = {
        "kind": "private unreleased Core 015 experiment",
        "transport": "persistent TcupServer.call handler, no live MCP transport",
        "entities": len(rows), "samples_per_series": args.samples,
        "tcup_revision": revision(args.tcup_root),
        "ecosystem_revision": revision(args.ecosystem_root),
        "core_base_revision": revision(args.core_root),
        "core_source_sha256": core_files,
        "seed_sha256": hashlib.sha256(json.dumps(rows, sort_keys=True).encode()).hexdigest(),
        "model_sha256": hashlib.sha256(semantic_model.module.to_wire_json().encode()).hexdigest(),
        "extension_sha256": digest(Path(extension.__file__)),
        "declared_versions": behavior.versions(),
        "version_caveat": "Declared pin/version stays 0.12.0; actual Core source is the isolated 015 checkout, as recorded above.",
        "python": sys.version, "platform": platform.platform(),
        "measurements": [], "semantic_outcomes_equal": False,
    }
    outcomes = {}
    for reference in [False, True]:
        with tempfile.TemporaryDirectory(prefix="behavior-015-tcup-") as directory:
            root = Path(directory)
            generations.init(root, semantic_model, rows)
            server = TcupServer(root, "kalle", semantic_model, clock=lambda: "2026-10-10T12:00:00Z")
            assert server.service.mode == "read_write", server.service.reason

            def call(tool, arguments):
                if reference:
                    server.service.opened.store = behavior.Store.open(server.service.opened.backend)
                started = time.perf_counter_ns()
                result = server.call(tool, arguments, ACTOR)
                return result, (time.perf_counter_ns() - started) / 1_000_000

            strategy_outcomes = []
            for workload in ["warm", "update_read", "create_read"]:
                for sample in range(args.samples):
                    write_ms = 0.0
                    if workload == "update_read":
                        identifier = f"ADD-{2 * (sample + 1):04d}"
                        result, write_ms = call("record_addition_actual", {"addition_id": identifier,
                            "actual": {"value": "2", "unit": "g"}, "evidence": "measured"})
                        assert result["outcome"] == "accepted", result
                        strategy_outcomes.append(result)
                        read_args = {"type": "Addition", "id": identifier}
                    elif workload == "create_read":
                        result, write_ms = call("register_material", {"name": f"extra {sample}", "category": "other"})
                        assert result["outcome"] == "accepted", result
                        strategy_outcomes.append(result)
                        read_args = {"type": "Material", "id": result["ids"]["material"]}
                    else:
                        read_args = {"type": "Material", "id": "MAT-2000"}
                    result, read_ms = call("get_record", read_args)
                    strategy_outcomes.append(result)
                    entry = {"reference": reference, "workload": workload, "sample": sample,
                        "write_ms": write_ms, "read_ms": read_ms, "pair_ms": write_ms + read_ms}
                    data["measurements"].append(entry)
                    print(json.dumps(entry), flush=True)
            # Large-output workload remains separately visible.
            for sample in range(args.samples):
                result, read_ms = call("read", {"read": "batch_unknown_actuals", "arguments": {"batch_id": "BATCH-0001"}})
                assert len(result["value"]) == 1500 - args.samples
                strategy_outcomes.append(result)
                data["measurements"].append({"reference": reference, "workload": "query_3000", "sample": sample, "read_ms": read_ms})
            outcomes[reference] = strategy_outcomes
    assert outcomes[False] == outcomes[True], "consumer outcomes differ between strategies"
    data["semantic_outcomes_equal"] = True
    args.output.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n")


if __name__ == "__main__":
    main()
