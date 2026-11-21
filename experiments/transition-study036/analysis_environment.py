"""Recheck controller-owned analysis preparation facts; never native proof authority."""

from pathlib import Path

from artifact_io import RootRegistry, digest, read
from environment import validate_environment_plan
from records import MANIFEST
import sources

E = Path(__file__).resolve().parent
R = E.parents[1]
TUPLE = {
    "aeneas": "1dc8ad31b1b062a77c50e29144a6c7bba955fa09",
    "charon": "454586e9b770231e66d2062993e632dfc06463e2",
    "rust": "nightly-2026-09-17",
    "analysis_lean": "4.36.0-rc2",
    "original_lean": "4.30.0",
}
PREFIXES = {
    "rust": "analysis-toolchain",
    "lean": "analysis-lean-recheck",
    "backend": "analysis-backend-recheck",
    "cache_tool": "analysis-backend-build",
    "cache": "analysis-backend-cache",
    "canary": "analysis-canary",
}


def check(binding_path):
    binding = read(binding_path)
    if (
        set(binding)
        != {
            "format",
            "work_id",
            "runtime_tuple",
            "canary_copy_ref",
            "components",
            "receipts",
            "sdk_inventory_ref",
            "scope",
            "product_adoption",
            "gcroots",
        }
        or binding["format"] != "core036.analysis-binding.v2"
        or binding["work_id"] != "w001"
        or binding["runtime_tuple"] != TUPLE
        or set(binding["components"]) != set(PREFIXES)
        or binding["product_adoption"] != "unactivated"
        or len(binding["receipts"]) != len(PREFIXES)
    ):
        raise ValueError("V2AnalysisBinding")
    work = R / "specs/036-core-transition-feasibility/evidence/v2/w001"
    private = Path("/var/tmp/behavior-ir-core036-v2/w001")
    registry = RootRegistry(
        {"repository": R, "work": work, "private": private},
        readonly=["repository", "work", "private"],
    )
    components, expected_attempts = {}, set()
    for name, ref in binding["components"].items():
        path = registry.verify(ref)
        relative = path.relative_to(private)
        if (
            len(relative.parts) != 3
            or relative.parts[0] != PREFIXES[name]
            or relative.name != "result.json"
        ):
            raise ValueError("V2AnalysisComponentRoot")
        expected_attempts.add(relative.parts[1])
        components[name] = registry.read(ref, limit=MANIFEST)
        for command in components[name].get("commands", []):
            label = command["label"]
            if not isinstance(label, str) or not label or Path(label).name != label:
                raise ValueError("V2AnalysisCommandLabel")
            for stream in ("stdout", "stderr"):
                if (
                    digest(path.parent / label / (stream + ".txt"))
                    != command[stream + "_sha256"]
                ):
                    raise ValueError("V2AnalysisCommandBytes")
            if command["exit_code"] != 0:
                raise ValueError("V2AnalysisFailedCommand")
    actual_attempts = set()
    for ref in binding["receipts"]:
        path = registry.verify(ref)
        attempt = path.parent.parent
        if attempt.parent != work / "attempts" or attempt.name in actual_attempts:
            raise ValueError("V2AnalysisReceiptRoot")
        actual_attempts.add(attempt.name)
        RootRegistry({"attempt": attempt}).verify_closed("attempt")
        receipt, declaration = (
            read(path, limit=MANIFEST),
            read(attempt / "declaration.json"),
        )
        sources.resolve_execution_source_v2(
            receipt["source_subject_ref"], declaration, registry=registry
        )
        if (
            receipt["exit_code"] != 0
            or receipt["stop_reason"] is not None
            or receipt["tree_empty"] is not True
            or receipt["group_empty"] is not True
            or receipt["stage"] != "ENV"
        ):
            raise ValueError("V2AnalysisActualReceipt")
    if actual_attempts != expected_attempts:
        raise ValueError("V2AnalysisReceiptCoverage")
    report = registry.read(binding["canary_copy_ref"], limit=MANIFEST)
    evidence = registry.verify(binding["canary_copy_ref"]).parent
    RootRegistry({"environment": evidence}).verify_closed("environment")
    if (
        report != components["canary"]
        or report["helper_status"] != "freshly_kernel_checked"
        or report["native_general_correspondence"] != "unestablished"
        or report["feature_complete"] is not False
    ):
        raise ValueError("V2AnalysisHelperScope")
    labels = {row["label"] for row in report["commands"]}
    if (
        not {
            "extract",
            "translate",
            "lean-Identity",
            "lean-ProofRoot",
            "lean-Audit",
            "fresh-kernel",
        }
        <= labels
        or report["audit"]["declaration"] != "core036_identity_correct"
        or set(report["audit"]["axioms"])
        - {"propext", "Classical.choice", "Quot.sound"}
    ):
        raise ValueError("V2AnalysisHelperChecks")
    for name in ("rust", "lean"):
        if any(components[name]["statuses"].values()):
            raise ValueError("V2AnalysisRuntimeFailure")
        for binary in components[name]["patched_binaries"]:
            path = Path(binary["path"])
            if not path.is_relative_to(private) or digest(path) != binary["sha256"]:
                raise ValueError("V2AnalysisToolChanged")
    for name, label, expected in [
        ("rust", "aeneas-version", TUPLE["aeneas"][:7]),
        ("rust", "charon-version", TUPLE["charon"][:7]),
        ("rust", "charon-toolchain", TUPLE["rust"]),
        ("lean", "version", TUPLE["analysis_lean"]),
    ]:
        parent = registry.verify(binding["components"][name]).parent
        if expected not in (parent / label / "stdout.txt").read_text():
            raise ValueError("V2AnalysisObservedTuple")
    inventory = registry.read(binding["sdk_inventory_ref"], limit=MANIFEST)
    sdk = Path(components["lean"]["sdk"])
    if not sdk.is_relative_to(private) or not inventory["entries"]:
        raise ValueError("V2AnalysisSDKClosure")
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("V2AnalysisSDKPath")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("V2AnalysisSDKBytes")
        if row["kind"] == "symlink" and path.readlink().as_posix() != row["target"]:
            raise ValueError("V2AnalysisSDKLink")
    validate_environment_plan(
        {"builders": [], "repair": None, "gcroots": binding["gcroots"]}
    )
    from environment import check_original_safety_v2

    check_original_safety_v2(E / "original-safety-binding-v2.json")
    return report
