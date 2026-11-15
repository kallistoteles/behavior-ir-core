"""Fixed035 supervisor entry points; metadata does not confer authority."""

from pathlib import Path

CASES = (
    "bootstrap",
    "proofs",
    "conformance",
    "treatments",
    "quality",
    *[f"growth-D{i}" for i in range(1, 6)],
)


def require_case(case):
    if case not in CASES:
        raise ValueError("UnknownFrozenCase")
    return case


def claim_slot(root, case):
    require_case(case)
    path = Path(root) / ("growth" if case.startswith("growth-") else "roles") / case
    path.mkdir(parents=True, exist_ok=False)
    return path


def verify_frozen_sources(root, refs):
    from artifact_io import verify_ref

    for ref in refs:
        verify_ref(root, ref)
    return True


def validate_built_worker(root, binding, expected_context):
    from artifact_io import verify_ref, safe_path, bounded_read, strict_loads

    if (
        set(binding) != {"format", "target", "source_context", "executable", "receipt"}
        or binding["format"] != "core035.built-worker.v1"
    ):
        raise ValueError("BuiltWorkerFields")
    if binding["target"] not in [
        "reuse035-reference",
        "reuse035-ground",
        "reuse035-views",
        "reuse035-combined",
        "reuse035-upstream-oracle",
    ]:
        raise ValueError("BuiltWorkerTarget")
    if binding["source_context"] != expected_context:
        raise ValueError("BuiltWorkerContext")
    verify_ref(root, binding["executable"])
    verify_ref(root, binding["receipt"])
    receipt = strict_loads(bounded_read(safe_path(root, binding["receipt"]["path"])))
    if (
        receipt.get("source_context") != expected_context
        or receipt.get("exit_code") != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("group_empty") is not True
        or receipt.get("tree_empty") is not True
    ):
        raise ValueError("FailedOrUnclosedBuild")
    return True


def main():
    import argparse, json
    import campaign

    p = argparse.ArgumentParser()
    sub = p.add_subparsers(dest="command", required=True)
    q = sub.add_parser("prepare-sources")
    q.add_argument("--out", type=Path, required=True)
    q = sub.add_parser("freeze")
    q.add_argument("--profile", type=Path, required=True)
    q.add_argument("--out", type=Path, required=True)
    q.add_argument("--inherit-clock-from", type=Path)
    q = sub.add_parser("run-case")
    q.add_argument("--manifest", type=Path, required=True)
    q.add_argument("--case", required=True)
    q = sub.add_parser("collect")
    q.add_argument("--manifest", type=Path, required=True)
    q.add_argument("--out", type=Path, required=True)
    a = p.parse_args()
    try:
        if a.command == "prepare-sources":
            import sources

            if a.out.resolve() != campaign.E / "private/core":
                raise ValueError("SourceOutputOwnership")
            result = sources.export(
                sources.ROOT,
                sources.CORE_REV,
                a.out,
                patches=sources.reviewed_patches(),
            )
        elif a.command == "freeze":
            result = campaign.freeze(a.profile, a.out, a.inherit_clock_from)
        elif a.command == "run-case":
            with campaign.campaign_lock(a.manifest.parent):
                result = campaign.run_case(a.manifest, a.case)
        else:
            with campaign.campaign_lock(a.manifest.parent):
                result = campaign.collect(a.manifest, a.out)
        print(
            json.dumps(
                {
                    k: result[k]
                    for k in [
                        "format",
                        "operational",
                        "gate_passed",
                        "candidate",
                        "source_context",
                    ]
                    if k in result
                }
            )
        )
        if a.command == "run-case" and not result["gate_passed"]:
            return (
                3
                if result["operational"]
                in ["resource_stopped", "tool_failed", "interrupted"]
                else 1
            )
        return 0
    except (ValueError, FileExistsError, KeyError) as e:
        print(str(e))
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
