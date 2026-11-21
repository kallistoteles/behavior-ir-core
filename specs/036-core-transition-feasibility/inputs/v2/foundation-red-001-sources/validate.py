"""Independent integrity and negative-result replay. Not a native proof checker.

Expected context is selected by the caller, outside the archived candidate.
No executable, verifier or source path is taken from candidate evidence.
"""

import argparse
import json
import re
from pathlib import Path

from artifact_io import digest, read, seal, verify_ref, write_once


def verify_index(root, index):
    if set(index) != {"format", "files"} or index["format"] != "core036.closed.v1":
        raise ValueError("ClosedIndexFormat")
    if (
        not isinstance(index["files"], list)
        or not index["files"]
        or len(index["files"]) > 20000
    ):
        raise ValueError("ClosedIndexBound")
    seen = set()
    for ref in index["files"]:
        if ref["path"] in seen:
            raise ValueError("DuplicateArtifact")
        seen.add(ref["path"])
        verify_ref(root, ref)
    actual = set()
    for path in Path(root).rglob("*"):
        if path.is_symlink():
            raise ValueError("ArchiveSymlink")
        if path.is_file() and path != Path(root) / "closed-artifacts.json":
            actual.add(str(path.relative_to(root)))
    if actual != seen:
        raise ValueError("UnindexedArtifacts")
    return len(seen)


def verify_clock(expected, actual):
    if set(expected) != {"started_ns", "boot_id"} or expected != actual:
        raise ValueError("ExpectedClockMismatch")


def validate_claims(value):
    if value.get("native_correspondence", "unestablished") != "unestablished":
        raise ValueError("UnsupportedNativeProofClaim")
    if value.get("full_reproduction", False) is not False:
        raise ValueError("UnsupportedFullReproductionClaim")
    if value.get("product_adoption", "unactivated") != "unactivated":
        raise ValueError("UnauthorizedAdoption")


def verify_receipts(root, clock):
    rows = []
    for p in sorted(Path(root).rglob("receipt.json")):
        v = read(p, 16 * 1024**2)
        # Some archived model-checker input files use other receipt schemas.
        if v.get("format") not in {"core035.bounded.v1", "core036.bounded.v1"}:
            continue
        if v.get("group_empty") is not True or v.get("tree_empty") is not True:
            raise ValueError("UnclosedRecordedProcess")
        if (
            v["boot_id"] != clock["boot_id"]
            or v["start_monotonic_ns"] < clock["started_ns"]
        ):
            raise ValueError("ReceiptClockMismatch")
        if v["start_monotonic_ns"] + v["wall_ns"] > clock["started_ns"] + 21600 * 10**9:
            raise ValueError("CampaignBudgetExceeded")
        for stream in ("stdout", "stderr"):
            if digest(p.parent / (stream + ".txt")) != v[stream + "_sha256"]:
                raise ValueError("ReceiptStreamHash")
        rows.append(
            {
                "path": str(p.relative_to(root)),
                "exit_code": v["exit_code"],
                "stop_reason": v["stop_reason"],
                "wall_ns": v["wall_ns"],
            }
        )
    return rows


def execute(expected_path, out):
    from assessment import blocked_slots, quality_from_raw, summarize
    from preservation import verify as preserve

    repo = Path(__file__).resolve().parents[2]
    feature = repo / "specs/036-core-transition-feasibility"
    campaign = feature / "evidence/campaign-001"
    expected = read(expected_path)
    out = Path(out).resolve()
    if (
        out.parent != feature / "evidence"
        or not out.name.startswith("validation-")
        or out.exists()
    ):
        raise ValueError("IndependentOutputOwnership")
    for key, selected in (
        ("campaign_index", campaign / "closed-artifacts.json"),
        ("baseline", feature / "inputs/baseline.json"),
        ("development_index", feature / "evidence/development/closed-artifacts.json"),
    ):
        if expected[key]["path"] != str(selected.relative_to(repo)):
            raise ValueError("ExpectedContextPath")
    verify_ref(repo, expected["campaign_index"])
    verify_ref(repo, expected["baseline"])
    verify_ref(repo, expected["development_index"])
    count = verify_index(
        campaign, read(campaign / "closed-artifacts.json", 32 * 1024**2)
    )
    session = read(campaign / "session.json")
    verify_clock(expected["clock"], session["clock"])
    from bootstrap import profile_digest, validate_profile

    validate_profile(session["profile"])
    if profile_digest(session["profile"]) != expected["profile_sha256"]:
        raise ValueError("ExpectedProfileBytes")
    if session["profile_sha256"] != expected["profile_sha256"]:
        raise ValueError("ExpectedProfileMismatch")
    for revision in sorted((campaign / "revisions").iterdir()):
        manifest = read(revision / "input-manifest.json", 32 * 1024**2)
        verify_clock(expected["clock"], manifest["clock"])
        for ref in manifest["inputs"]["files"]:
            verify_ref(revision / "sources", ref)
    receipts = verify_receipts(campaign, expected["clock"])
    development = feature / "evidence/development"
    development_count = verify_index(
        development, read(development / "closed-artifacts.json", 32 * 1024**2)
    )
    development_receipts = verify_receipts(development, expected["clock"])
    conformance = development / "native-adapters-green-002"
    conformance_receipt = read(conformance / "receipt.json", 8 * 1024**2)
    counts = [
        int(v)
        for v in re.findall(
            r"test result: ok\. (\d+) passed; 0 failed;",
            (conformance / "stdout.txt").read_text(),
        )
    ]
    if (
        counts != [26, 6, 3]
        or conformance_receipt["exit_code"] != 0
        or conformance_receipt["stop_reason"] is not None
    ):
        raise ValueError("NativeConformanceRawMismatch")
    assessment = read(campaign / "assessment/assessment.json")
    validate_claims(assessment)
    for ref in assessment["evidence"]:
        verify_ref(repo, ref)
    recomputed = summarize(quality_from_raw(campaign), {})
    for key in (
        "requirements",
        "criteria",
        "stage_prerequisites",
        "native_correspondence",
        "cost",
        "product_adoption",
    ):
        if assessment[key] != recomputed[key]:
            raise ValueError("AssessmentDerivedMismatch")
    slots = blocked_slots(session["profile"])
    if slots != read(campaign / "assessment/blocked-slots.json"):
        raise ValueError("BlockedSlotsMismatch")
    preservation = preserve(repo, read(feature / "inputs/baseline.json"))
    write_once(out / "preservation.json", preservation)
    write_once(out / "receipts.json", receipts)
    write_once(out / "development-receipts.json", development_receipts)
    write_once(
        out / "result.json",
        {
            "format": "core036.validation.v1",
            "integrity": "verified",
            "campaign_index": expected["campaign_index"],
            "files_verified": count,
            "development_files_verified": development_count,
            "finite_native_test_counts_from_raw": counts,
            "clock": expected["clock"],
            "raw_quality_recomputed": True,
            "FR_SC_recomputed": True,
            "blocked_slots_recomputed": len(slots["slots"]),
            "native_correspondence": "unestablished",
            "full_reproduction": False,
            "product_adoption": "unactivated",
            "scope": "Separate-process byte/source-snapshot/clock/process-closure/raw-quality/negative-assessment/preservation validation only",
            "missing": [
                "independent human reviewer",
                "native extraction and fresh B01–B10 proofs",
                "successful unchanged canonical quality gate",
                "rebuilt original/R/GV fixed workers and complete stream replay",
                "session, compact and mutation reproduction",
                "complete cumulative stage and global-store/temporary peak accounting",
            ],
        },
    )
    seal(out)
    return 0


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--expected-context", "--expected", dest="expected", required=True)
    p.add_argument("--session")
    p.add_argument("--assessment")
    p.add_argument("--out", required=True)
    a = p.parse_args()
    try:
        feature = (
            Path(__file__).resolve().parents[2]
            / "specs/036-core-transition-feasibility"
        )
        for supplied, selected in (
            (a.session, feature / "evidence/campaign-001/session.json"),
            (
                a.assessment,
                feature / "evidence/campaign-001/assessment/assessment.json",
            ),
        ):
            if supplied is not None and Path(supplied).resolve() != selected:
                raise ValueError("FixedValidationSubject")
        return execute(a.expected, a.out)
    except (ValueError, OSError, KeyError, json.JSONDecodeError) as exc:
        print(str(exc))
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
