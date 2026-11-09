"""Independent full-inventory hashes and recorded local-only latency assessment."""
import argparse
import hashlib
import importlib.util
import json
import math
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]


def lines(path):
    return [json.loads(s) for s in path.read_text().splitlines()]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--functional", type=Path, required=True)
    parser.add_argument("--cost", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    spec = importlib.util.spec_from_file_location(
        "independent033", ROOT / "docs/proposals/core-next-architecture/check_fixture.py"
    )
    independent = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(independent)
    root_checks = []
    for path in [args.functional / "inventories.jsonl", args.cost / "cost-inventories.jsonl"]:
        for row in lines(path):
            live, used = row["live_inventory"], row["used_inventory"]
            assert len(used) == len(set(used))
            assert set(live) <= set(used) and all(v > 0 for v in live.values())
            for kind, name, inventory in [
                (1, "live", live), (2, "used", dict.fromkeys(used, 0))
            ]:
                expected = independent.root(kind, inventory)
                summary = row["basis"][name]
                assert bytes(summary["digest"]).hex() == expected, row["label"]
                assert summary["count"] == len(inventory)
                assert summary["positive"] and summary["complete_coverage"]
                root_checks.append({"label": row["label"], "kind": name, "sha256": expected})
    fixture = lines(ROOT / "docs/proposals/core-next-architecture/reference-fixture.jsonl")[1:]
    compared = lines(args.functional / "reference-comparison.jsonl")
    assert len(compared) == len(fixture) == 6
    for actual, expected in zip(compared, fixture):
        decision = expected["reference_decision"]
        projection = {k: decision.get(k, []) for k in ("result", "reasons", "changes", "lifecycle")}
        projection["commands"] = [v["payload"] for v in decision["commands"]["intents"]]
        assert actual["case"] == expected["name"]
        assert actual["outcome"] == projection
        for before_after in ("before", "after"):
            for kind in ("live", "used"):
                assert bytes(actual[before_after][kind]["digest"]).hex() == expected[f"{before_after}_{kind}"]
    controls = lines(args.functional / "functional.jsonl")
    assert len({v["case"] for v in controls}) == len(controls) >= 35
    assert all(v["status"] in {
        "TargetedRejectionObserved", "TargetedInitialRejectionObserved", "TargetedWireRejectionObserved",
        "ExpectedAllowObserved", "ExpectedReuseRefusalObserved", "ExpectedBoundaryObserved"
    } for v in controls)
    samples = lines(args.cost / "samples.jsonl")
    assert len(samples) == 303
    results = []
    for n in [1, 1000, 8192]:
        rows = [v for v in samples if v["population"] == n]
        assert len(rows) == 101 and [v["sample"] for v in rows] == list(range(101))
        assert [v["sample"] for v in rows if v["warmup"]] == [0]
        measured = rows[1:]
        metrics = {}
        for metric in ["whole_local_ns", "planner_ns", "wire_ns", "check_ns"]:
            values = sorted(v[metric] for v in measured)
            assert len(values) == 100 and min(values) > 0
            metrics[metric] = {"p50": values[49], "p95": values[94], "max": values[-1]}
        work = {(v["checker_work"]["hashes"], v["checker_work"]["branches"],
                 v["checker_work"]["paths"], v["checker_work"]["inventory_rows"]) for v in measured}
        assert len(work) == 1 and next(iter(work))[2:] == (1, 0)
        results.append({"population": n, "complete_warm_samples": 100, "metrics": metrics,
                        "checker_work_hashes_branches_paths_inventory_rows": list(next(iter(work))),
                        "wire_bytes_min": min(v["wire_bytes"] for v in measured),
                        "wire_bytes_max": max(v["wire_bytes"] for v in measured)})
    assert len({tuple(v["checker_work_hashes_branches_paths_inventory_rows"]) for v in results}) == 1
    assessment = {
        "format": "core-next.local-k-study.assessment.v1",
        "reference_semantic_projection_cases": 6,
        "reference_before_after_roots": 24,
        "independent_full_inventory_root_checks": root_checks,
        "actual_interface_controls": controls,
        "warm_local_cost": results,
        "initialization_cost": lines(args.cost / "setup.jsonl"),
        "quantile_method": "nearest rank, p50=index49 and p95=index94 of100 complete observations; no slow sample exclusions",
        "interpretation": "Initialized closed-profile local checking with authenticated witnesses. No full Core/native refinement or cryptographic prefix/certified durable latency claim.",
        "not_established": ["General Core K", "Whole DecisionRecord/observation reconstruction",
                            "Machine-checked native-code correspondence", "Cryptographic prefix certificate",
                            "Durable publication/request-ID idempotence", "Fresh unknown-prefix consumer", "Full G1"],
        "product_finality": "Strong synchronous prefix-certified comparison contract retained",
        "g1_pass": False,
    }
    args.out.write_text(json.dumps(assessment, indent=2) + "\n")
    print(json.dumps({"independent_root_checks": len(root_checks), "controls": len(controls),
                      "warm_cells": len(results), "g1_pass": False}))


if __name__ == "__main__":
    main()
