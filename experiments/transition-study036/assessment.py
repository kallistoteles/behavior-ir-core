"""Collect the actual early-stop investigation; never manufacture a native proof.

operational (`completed/failed/resource_stopped/not_run`); proof/correspondence;
semantic (`equal/mismatch/not_evaluated`); cost
(`measured/not_measured/not_comparable/confounded`); candidate
(`supported_for_fragment/conditional/rejected/undetermined`); stage prerequisites;
product adoption always unactivated.

Every FR-001–FR-021 and SC-001–SC-007 has an evidence ref or exact gap/blocker.
This collector supports this campaign's negative closure, not future acceptance.
"""

from pathlib import Path

from artifact_io import artifact_ref, read, write_once
from quality import evaluate

ROOT = Path(__file__).resolve().parents[2]
F = ROOT / "specs/036-core-transition-feasibility"
CAMPAIGN = F / "evidence/campaign-001"


def decision(status, reason):
    return {"status": status, "reason": reason}


def summarize(quality, proof):
    # Deliberately ignore producer-supplied proof success flags. There is no
    # implemented native extraction/kernel closure in this revision.
    requirements = {
        1: (
            "met",
            "Selected 035/Core/Safety inputs and exact observation contract are bound in inputs/baseline.json; historical payloads were preserved.",
        ),
        2: (
            "unmet",
            "No actual Rust extraction or B01–B10 kernel-checked correspondence; all ten source obligations remain unestablished.",
        ),
        3: (
            "unmet",
            "Exact source seams and external premises are inventoried; expected native theorem bodies and independent native closure do not exist.",
        ),
        4: (
            "unmet",
            "35 finite native/protocol/original-observation tests passed; no arbitrary-state native equivalence or full new session/oracle replay.",
        ),
        5: (
            "unmet",
            "Whole canonical Q1 failed in a CLI test on missing exported runtime fixtures; Q2 failed before gates on an invalid Nix reference. Neither is a full pass.",
        ),
        6: (
            "met",
            "Missing native correspondence and canonical success block all accepted S2–S4 work; this is early-stop closure.",
        ),
        7: (
            "unmet",
            "Legacy endpoint is declared and adapters preserve 035; complete new 036 fixed-role/session endpoint is not implemented or built.",
        ),
        8: (
            "blocked",
            "S2 is blocked by S1 and Q; no new complete-operation intervals or phase reconciliation.",
        ),
        9: (
            "blocked",
            "S2 work/byte counters not implemented or measured; recorder samples are process observations only.",
        ),
        10: (
            "blocked",
            "Same-contract buffering candidate B is not justified by new accepted diagnosis; not implemented or measured.",
        ),
        11: (
            "blocked",
            "All five frozen diagnosis cells are unrun because S1/Q are unmet; no new timing samples.",
        ),
        12: (
            "blocked",
            "All R/GV families and lengths 1/8/32/128 are unrun; actual session runner is not implemented.",
        ),
        13: (
            "blocked",
            "No directly timed 036 session totals; no observed amortization or break-even result.",
        ),
        14: (
            "blocked",
            "Finite inherited fault tests passed, but no new lifecycle recovery/cost experiment or durability proof.",
        ),
        15: (
            "blocked",
            "S4 prerequisite S1/Q/S2/S3 failed; no experimental compact contract frozen or implementation built.",
        ),
        16: (
            "blocked",
            "No compact reconstruction code, actual-code correspondence or general reconstruction theorem.",
        ),
        17: (
            "blocked",
            "No compact identity mapping accepted; existing legacy identity behavior is retained.",
        ),
        18: (
            "blocked",
            "No compact completion/audit/retention/crash experiment; no durability guarantee.",
        ),
        19: (
            "unmet",
            "Frozen original clock and ceilings retained with bounded child receipts and failures. General cumulative stage journal and complete temporary/global-store accounting are incomplete; Q wall allowance exhausted.",
        ),
        20: (
            "unmet",
            "All FR/SC gaps have separate verdicts and raw references; validation is integrity/negative-result reproduction only, not full independent native/proof/session reproduction.",
        ),
        21: (
            "met",
            "Research-only files; no production integration, new backend, full-language GV, trust/finality change or Q6 claim.",
        ),
    }
    canonical = quality.get("canonical_met") is True
    if canonical:
        requirements[5] = (
            "met",
            "Caller supplied independently established whole canonical success; proof remains a separate obligation.",
        )
    criteria = {
        "SC-001": decision("unmet", requirements[2][1]),
        "SC-002": decision("met" if canonical else "unmet", requirements[5][1]),
        "SC-003": decision("blocked", requirements[8][1]),
        "SC-004": decision("blocked", requirements[12][1]),
        "SC-005": decision("blocked", requirements[15][1]),
        "SC-006": decision(
            "met",
            "Every FR/SC has an explicit evidence scope or gap; no absent proof, failed gate or unavailable reproduction is promoted to success.",
        ),
        "SC-007": decision(
            "unmet",
            "No accepted 036 complete-cost measurements. Historical 035 diagnostic medians are not new results; the 50/100 ms certified/durable ambition remains unestablished.",
        ),
    }
    return {
        "format": "core036.assessment.v1",
        "verdict": "rework",
        "operational": "completed",
        "scope": "negative-result collection only; implementation remains incomplete",
        "native_correspondence": "unestablished",
        "semantic": "not_evaluated",
        "finite_conformance": "35 tests passed; not a general proof or complete frozen-stream replay",
        "cost": "not_measured",
        "candidate": "undetermined",
        "stage_prerequisites": {
            "S1": "unmet",
            "Q": "met" if canonical else "unmet",
            "S2": "blocked",
            "S3": "blocked",
            "S4": "blocked",
        },
        "product_adoption": "unactivated",
        "full_reproduction": False,
        "requirements": {
            f"FR-{i:03}": decision(*value) for i, value in requirements.items()
        },
        "criteria": criteria,
    }


def quality_from_raw(campaign):
    attempts = []
    for name in ("quality", "quality-002"):
        root = campaign / "roles" / name
        receipt = read(root / "canonical/receipt.json", 8 * 1024**2)
        stderr = (root / "canonical/stderr.txt").read_text()
        claimed = read(root / "result.json")
        actual = evaluate(receipt, stderr)
        if claimed["canonical_met"] != actual:
            raise ValueError("CanonicalClaimMismatch")
        attempts.append(
            {
                "role": name,
                "canonical_met": actual,
                "exit_code": receipt["exit_code"],
                "stop_reason": receipt["stop_reason"],
                "tree_empty": receipt["tree_empty"],
                "wall_ns": receipt["wall_ns"],
            }
        )
    return {
        "canonical_met": any(a["canonical_met"] for a in attempts),
        "attempts": attempts,
    }


def blocked_slots(profile):
    slots = []
    reason = "Native B01–B10 unestablished and whole canonical Q unmet"
    for n, h in profile["diagnosis"]:
        for role in ("R", "GV"):
            for kind, count in (("timing", 3), ("diagnostic", 1)):
                for replicate in range(1, count + 1):
                    slots.append(
                        {
                            "stage": "S2",
                            "N": n,
                            "H": h,
                            "role": role,
                            "kind": kind,
                            "replicate": replicate,
                            "operational": "not_run",
                            "acceptance": "blocked",
                            "reason": reason,
                        }
                    )
    for family in profile["lifecycle"]["families"]:
        for length in profile["lifecycle"]["lengths"]:
            for role in ("R", "GV"):
                for kind, count in (("timing", 3), ("diagnostic", 1)):
                    for replicate in range(1, count + 1):
                        slots.append(
                            {
                                "stage": "S3",
                                "family": family,
                                "length": length,
                                "role": role,
                                "kind": kind,
                                "replicate": replicate,
                                "operational": "not_run",
                                "acceptance": "blocked",
                                "reason": reason,
                            }
                        )
    return {
        "format": "core036.blocked-slots.v1",
        "slots": slots,
        "B": decision("blocked", "No accepted S2 diagnosis or candidate justification"),
        "C": decision(
            "blocked",
            "S1/Q/S2/S3 unmet; no compact contract, proof, availability or comparison runs",
        ),
        "recovery": decision(
            "blocked", "No accepted session implementation or S3 runs"
        ),
    }


def collect(ctx, out):
    out = Path(out).resolve()
    if out != CAMPAIGN / "assessment":
        raise ValueError("AssessmentOutputOwnership")
    quality = quality_from_raw(CAMPAIGN)
    result = summarize(quality, {})
    result["clock"] = ctx["clock"]
    result["evidence"] = [
        artifact_ref(ROOT, str(p.relative_to(ROOT)))
        for p in (
            F / "inputs/baseline.json",
            F / "inputs/correspondence.json",
            CAMPAIGN / "roles/assurance/result.json",
            CAMPAIGN / "roles/quality/result.json",
            CAMPAIGN / "roles/quality-002/result.json",
            F / "evidence/development/native-adapters-green-002/receipt.json",
        )
    ]
    write_once(out / "quality-derived.json", quality)
    write_once(out / "blocked-slots.json", blocked_slots(ctx["profile"]))
    write_once(out / "assessment.json", result)
    lines = [
        "# 036 campaign assessment",
        "",
        "Verdict: **Rework / incomplete implementation**.",
        "",
        "Native correspondence is unestablished. Both full canonical attempts failed. S2–S4 are blocked; no new performance or amortization result is claimed.",
        "",
        "Finite conformance: 35 Rust tests passed. This does not prove the actual Rust implementation matches Lean for arbitrary admitted states.",
        "",
        "| Requirement | Status | Evidence scope or gap |",
        "| --- | --- | --- |",
    ]
    for key, value in {**result["requirements"], **result["criteria"]}.items():
        lines.append(f"| {key} | {value['status']} | {value['reason']} |")
    write_once(out / "report.md", ("\n".join(lines) + "\n").encode())
    return 0
