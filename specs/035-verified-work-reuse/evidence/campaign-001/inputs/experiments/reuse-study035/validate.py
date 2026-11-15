"""Independent integrity/coverage checks. Actual replay is a separate bounded role."""

from pathlib import Path
from artifact_io import verify_archive

ROOTS = {
    "finish_frame",
    "view_update_exact",
    "unaffected_result_stable",
    "finish_exact",
    "observation_reconstruct_exact",
    "finish_preserves_safety",
    "ground_advance",
    "refusal_no_promotion",
    "stale_no_promotion",
    "uncertain_no_authority",
    "semantic_work_bound",
    "fallback_exact",
}
ASSESSMENT_FIELDS = {
    "format",
    "candidate",
    "product_adoption",
    "requirements",
    "success_criteria",
    "controls",
    "proof_roots",
    "cells",
    "native_correspondence",
    "semantic",
    "mathematical",
    "cost",
    "gates",
    "findings",
    "summary",
    "input_manifest",
    "prepared_manifest",
    "archive",
    "evidence_refs",
    "correspondence_refs",
    "limits",
    "closing",
    "quality",
}


def validate_assessment_shape(assessment):
    a = assessment
    if (
        not isinstance(a, dict)
        or set(a) - ASSESSMENT_FIELDS
        or a.get("format") != "core035.assessment.v1"
    ):
        raise ValueError("AssessmentFields")
    if (
        a.get("candidate")
        not in ["supported_for_fragment", "conditional", "rejected", "undetermined"]
        or a.get("product_adoption") != "unactivated"
    ):
        raise ValueError("AssessmentVerdict")
    if a.get("native_correspondence") not in ["conditional", "unestablished"]:
        raise ValueError("UnprovedNativeClaim")
    inventory = {
        "requirements": {f"FR-{i:03}" for i in range(1, 22)},
        "success_criteria": {f"SC-{i:03}" for i in range(1, 9)},
        "controls": {f"C{i:02}" for i in range(1, 21)},
        "proof_roots": ROOTS,
        "cells": {f"growth-D{i}" for i in range(1, 6)},
    }
    statuses = {
        "met",
        "not_met",
        "partial",
        "not_evaluated",
        "checked_for_fragment",
        "completed",
        "equal",
        "targeted_rejection",
        "not_run",
        "resource_stopped",
        "failed",
        "unestablished",
        "unsupported",
    }
    for field, expected in inventory.items():
        rows = a.get(field)
        if not isinstance(rows, dict) or set(rows) != expected:
            raise ValueError("IncompleteInventory:" + field)
        for row in rows.values():
            if not isinstance(row, dict) or row.get("status") not in statuses:
                raise ValueError("Disposition")
            if row["status"] not in [
                "met",
                "completed",
                "equal",
                "checked_for_fragment",
                "targeted_rejection",
            ] and not row.get("reason"):
                raise ValueError("MissingNegativeReason")
    return True


def validate_closed_index(root, index):
    root = Path(root)
    verify_archive(root, index)
    indexed = {r["path"] for r in index["files"]}
    actual = set()
    for p in root.rglob("*"):
        if p.is_symlink():
            raise ValueError("ArchiveSymlink")
        if p.is_file() and p.relative_to(root).as_posix() != "closed-artifacts.json":
            actual.add(p.relative_to(root).as_posix())
    if actual != indexed:
        raise ValueError("IncompleteOrLateArchiveIndex")
    return True


def independent(manifest, assessment, out):
    from artifact_io import (
        artifact_ref,
        bounded_read,
        safe_path,
        seal,
        strict_loads,
        verify_ref,
        write_once,
    )
    from campaign import (
        E,
        F,
        ROOT,
        CASES,
        TARGETS,
        context,
        gate_path,
        load,
        launch,
        boot,
        sha,
    )
    from recorder import Ledger
    from study import validate_built_worker
    from assessment import derive
    import hashlib, os, time

    root, m, ledger = context(manifest)
    out = Path(out).resolve()
    if (
        out.parent != (F / "evidence").resolve()
        or not out.name.startswith("validation-")
        or out == root
    ):
        raise ValueError("ValidationOutputOwnership")
    assessment = Path(assessment).resolve()
    if assessment == root / "assessment":
        assessment = assessment / "assessment.json"
    if assessment != root / "assessment/assessment.json":
        raise ValueError("AssessmentInputOwnership")
    out.mkdir(parents=True, exist_ok=False)
    result = {
        "format": "core035.validation.v1",
        "operational": "not_run",
        "archive_integrity": False,
        "accounting_equal": False,
        "proof_replay": "not_run",
        "native_replay": "not_run",
        "product_adoption": "unactivated",
        "source_context": m["source_context"],
        "started_ns": time.monotonic_ns(),
        "rechecks": [],
    }
    local = Ledger(time.monotonic_ns(), boot(), 900)
    try:
        index = load(root / "closed-artifacts.json")
        validate_closed_index(root, index)
        result["archive_integrity"] = True
        a = load(assessment)
        validate_assessment_shape(a)
        if derive(root, m) != a:
            raise ValueError("RawAssessmentRecalculationMismatch")
        result["accounting_equal"] = True
        if a["mathematical"] == "checked_for_fragment":
            import check_proofs
            import json

            pp = root / "roles/proofs/proof-check"
            proof = load(pp / "result.json")
            pr = E / "proofs"
            known = [
                (E / x).resolve()
                for x in [
                    "check_proofs.py",
                    "artifact_io.py",
                    "recorder.py",
                    "toolchain.json",
                ]
            ] + [pr / "targets.json", pr / "imports.json", *sorted(pr.rglob("*.lean"))]
            inputs = [
                {
                    "path": str(p),
                    "snapshot": str(Path("input-snapshots") / p.relative_to(E)),
                    "sha256": sha(p),
                }
                for p in known
            ]
            if proof["bound_inputs"] != inputs:
                raise ValueError("ProofInputContextSubstitution")
            for entry in inputs:
                if sha(pp / entry["snapshot"]) != entry["sha256"]:
                    raise ValueError("ProofSourceSnapshotChanged")
            targets = dict(
                load(pr / "targets.json"),
                source_context_digest=hashlib.sha256(
                    json.dumps(inputs, sort_keys=True).encode()
                ).hexdigest(),
                toolchain_digest=sha(E / "toolchain.json"),
            )
            check_proofs.validate_proof_result(proof, targets)
            if (pp / "Audit.lean").read_text() != check_proofs.audit_source(targets):
                raise ValueError("ProofAuditSourceSubstitution")
            for item in proof["compiled_closure"]:
                if sha(safe_path(pp, item["path"])) != item["sha256"]:
                    raise ValueError("CompiledProofSubstitution")
            fresh = load(pp / "roles/fresh/receipt.json")
            if (
                fresh["argv"]
                != [
                    str(check_proofs.LEAN / "bin/leanchecker"),
                    "--fresh",
                    "Reuse035.Audit",
                ]
                or fresh["exit_code"] != 0
                or fresh["stop_reason"] is not None
                or not fresh["tree_empty"]
                or not fresh["group_empty"]
            ):
                raise ValueError("MissingActualFreshKernelReceipt")
        prepared = (
            load(root / "prepared-manifest.json")
            if (root / "prepared-manifest.json").exists()
            else None
        )
        if prepared:
            if (
                set(prepared)
                != {
                    "format",
                    "source_context",
                    "input_manifest",
                    "workers",
                    "cases",
                    "bundle",
                }
                or prepared["source_context"] != m["source_context"]
                or set(prepared["workers"])
                != {*TARGETS.values(), "reuse035-upstream-oracle"}
            ):
                raise ValueError("PreparedContextOrWorkerInventory")
            verify_ref(root, prepared["input_manifest"])
            verify_ref(root, prepared["bundle"])
            for target, b in prepared["workers"].items():
                if b["target"] != target:
                    raise ValueError("WorkerTargetSubstitution")
                validate_built_worker(root, b, m["source_context"])
                receipt = load(safe_path(root, b["receipt"]["path"]))
                verify_ref(root, receipt["raw_receipt"])
                raw = load(safe_path(root, receipt["raw_receipt"]["path"]))
                for k in [
                    "exit_code",
                    "stop_reason",
                    "tree_empty",
                    "group_empty",
                    "argv",
                ]:
                    if receipt[k] != raw[k]:
                        raise ValueError("ForgedClosedBuildDescriptor")
            # Fixed original subject is independently chosen by the current verifier,
            # never accepted from producer claims or an evidence-selected executable.
            known_module = load(E / "expected/ld8-module.json")
            if set(prepared["cases"]) != set(fixed_replay_cases()):
                raise ValueError("PreparedCaseInventory")
            for case, ref in prepared["cases"].items():
                verify_ref(root, ref)
                expected = load(safe_path(root, ref["path"]))
                if load_text_json(expected["module"]) != known_module:
                    raise ValueError("OriginalSubjectMismatch")
                for slot in [
                    "roles/treatments",
                    *["growth/" + c for c in prepared["cases"]],
                ]:
                    for role in TARGETS:
                        g = root / slot / role
                        if not (g / "complete.json").exists():
                            continue
                        group = load(g / "complete.json")
                        if group["case_id"] != case:
                            continue
                        if (
                            group["treatment"] != role
                            or group["source_context"] != m["source_context"]
                        ):
                            raise ValueError("ActualGroupContextMismatch")
                        receipt_path = g.parent / (role + "-execution") / "receipt.json"
                        receipt = load(receipt_path)
                        if (
                            receipt["exit_code"] != 0
                            or receipt["stop_reason"] is not None
                            or not receipt["tree_empty"]
                            or not receipt["group_empty"]
                        ):
                            raise ValueError("UnclosedOrFailedGroup")
                        import shlex

                        fixed_worker = root / "roles/bootstrap/workers" / TARGETS[role]
                        command = (
                            "cd "
                            + shlex.quote(str(ROOT))
                            + " && "
                            + shlex.join(
                                [
                                    str(fixed_worker),
                                    "run-group",
                                    "--prepared",
                                    str(root / "prepared-manifest.json"),
                                    "--case",
                                    case,
                                    "--out",
                                    str(g),
                                ]
                            )
                        )
                        if receipt["argv"] != [
                            str(
                                load(E / "toolchain.json")["tools"]["nix-shell"]["path"]
                            ),
                            str(E / "shell.nix"),
                            "--run",
                            command,
                        ]:
                            raise ValueError("ExecutedGroupCommandMismatch")
                        for sample in group["observations"]:
                            d = g / sample["sample_id"]
                            if (
                                load(d / "primary.json") != expected["expected"]
                                or load(d / "drain.json") != expected["drain_expected"]
                            ):
                                raise ValueError("FullOriginalSemanticMismatch")
                            if load(d / "observation.json") != sample:
                                raise ValueError("RawSampleSubstitution")
                            if (
                                sample["mode"] == "timing"
                                and sample["work_primary"] is not None
                            ):
                                raise ValueError("DetailedCountersInTimingMode")
                            timing = load(d / "timings.json")
                            if any(sample[k] != v for k, v in timing.items()):
                                raise ValueError("TimingRecordSubstitution")
                            audit = load(d / "audit.json")
                            if (
                                audit["original_property_outcomes"]["status"] != "Valid"
                                or audit["core_version_view_equal_full_reconstruction"]
                                is not True
                            ):
                                raise ValueError("OriginalAuditFailure")
            if (root / "roles/treatments/activation.json").exists():
                from campaign import validate_groups

                activation = load(root / "roles/treatments/activation.json")
                for b in activation["bindings"]:
                    if (
                        b["sha256"]
                        != prepared["workers"][TARGETS[b["treatment"]]]["executable"][
                            "sha256"
                        ]
                    ):
                        raise ValueError("ActivationWorkerSubstitution")
                validate_groups(
                    activation["bindings"],
                    {
                        role: load(root / "roles/treatments" / role / "complete.json")
                        for role in TARGETS
                    },
                )
            # Execute the source-bound unpatched oracle under the fixed pinned tool
            # environment, never a verifier path taken from the assessment packet.
            target = "reuse035-upstream-oracle"
            b = prepared["workers"][target]
            fixed = root / "roles/bootstrap/workers" / target
            if (
                artifact_ref(root, str(fixed.relative_to(root)), "retained-worker")
                != b["executable"]
            ):
                raise ValueError("OracleCustody")
            config = {
                "format": "core035.oracle-input.v1",
                "cases": fixed_replay_cases(),
            }
            write_once(out / "oracle-input.json", config)
            try:
                r = launch(
                    root,
                    m,
                    ledger,
                    local,
                    [
                        str(fixed),
                        "prepare",
                        "--input",
                        str(out / "oracle-input.json"),
                        "--out",
                        str(out / "oracle"),
                    ],
                    out / "native-replay",
                    reserve=0,
                )
                result["rechecks"].append(
                    {
                        "role": "native",
                        "exit_code": r["exit_code"],
                        "stop_reason": r["stop_reason"],
                    }
                )
                if r["exit_code"] == 0 and r["stop_reason"] is None:
                    for case_id in [f"growth-D{i}" for i in range(1, 6)]:
                        if load(out / "oracle" / (case_id + ".json")) != load(
                            safe_path(root, prepared["cases"][case_id]["path"])
                        ):
                            raise ValueError("DeterministicOracleReplayMismatch")
                    result["native_replay"] = "equal"
                else:
                    result["native_replay"] = (
                        "resource_stopped" if r["stop_reason"] else "tool_failed"
                    )
            except ValueError as e:
                result["native_replay"] = "not_run"
                result["native_replay_reason"] = str(e)
        else:
            result["native_replay_reason"] = (
                "Bootstrap did not create any successfully bound prepared original oracle"
            )
        if a["mathematical"] == "checked_for_fragment":
            import check_proofs

            p = check_proofs.check(out / "proof-replay", ledger=ledger)
            result["proof_replay"] = p["operational"]
            result["rechecks"].append(
                {
                    "role": "proofs",
                    "roots": len(p["roots"]),
                    "fresh_replay": p["fresh_replay"],
                }
            )
        else:
            result["proof_replay_reason"] = (
                "Final proof gate did not establish roots; no positive proof claim to reproduce"
            )
        # Neither replay failures nor missing native refinement become assurance.
        result["operational"] = "completed"
        result["assessment_validation"] = (
            "complete_negative_or_conditional_accounting_accepted"
        )
    except Exception as e:
        result.update(
            operational="invalid_archive", reason=type(e).__name__ + ": " + str(e)
        )
    result["finished_ns"] = time.monotonic_ns()
    result["clock"] = m["clock"]
    write_once(out / "result.json", result)
    return result


def load_text_json(text):
    from artifact_io import strict_loads

    return strict_loads(text.encode())


def fixed_replay_cases():
    return [f"growth-D{i}" for i in range(1, 6)]


def main():
    import argparse, json

    p = argparse.ArgumentParser()
    p.add_argument("--manifest", type=Path, required=True)
    p.add_argument("--assessment", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    a = p.parse_args()
    try:
        r = independent(a.manifest, a.assessment, a.out)
    except (ValueError, FileExistsError, KeyError) as e:
        print(str(e))
        return 2
    print(
        json.dumps(
            {
                k: r[k]
                for k in [
                    "operational",
                    "archive_integrity",
                    "accounting_equal",
                    "native_replay",
                    "proof_replay",
                ]
            }
        )
    )
    return 0 if r["operational"] == "completed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
