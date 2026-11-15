"""Derive dispositions from actual raw closed roles, never from producer assent."""

from pathlib import Path
from artifact_io import artifact_ref
from costs import summarize_group, discriminate
from validate import ROOTS, validate_assessment_shape

CONTROL_TESTS = {
    "C01": "treatments/negatives.json",
    "C02": "treatments/negatives.json",
    "C03": "ground_retention::actual_pass_counts_differ_but_entire_outputs_match",
    "C04": "corrupt_or_supplied_view_cannot_authorize_wrong_result",
    "C05": "safe_but_wrong_finish_is_not_equivalent",
    "C06": "new_member_and_reference_fallback_invalidate_old_index",
    "C07": "changed_context_and_actual_binding_errors_have_original_refusal",
    "C08": "count_boundary_and_unknown_global_are_exact_fallback",
    "C09": "invalid_start_cannot_be_blessed_by_matching_report",
    "C10": "full_subject_and_same_content_other_history_are_rejected",
    "C11": "changed_policy_and_lost_writer_are_not_reusable",
    "C12": "unsupported_and_missing_bindings_keep_original_phase_and_allow_reestablishment",
    "C13": "first_error_short_circuit_and_intermediate_overflow_are_original",
    "C14": "ld8c_requires_own_program_and_preserves_ordered_duplicate_commands",
    "C15": "failed_and_conflicting_cas_do_not_publish",
    "C16": "uncertainty_quarantines_instead_of_promoting",
    "C17": "restart_and_lost_ack_recovery_require_real_reestablishment",
    "C18": "count_boundary_and_unknown_global_are_exact_fallback",
    "C19": "prepared_fresh_and_drain_have_complete_original_observations",
    "C20": "full_original_value_compares_and_missing_field_fails",
}


def derive(root, m):
    from campaign import CASES, gate_path, load, TARGETS

    root = Path(root)
    gates = {
        c: load(gate_path(root, c))
        if gate_path(root, c).exists()
        else {
            "operational": "not_run",
            "gate_passed": False,
            "reason": "Declared role was not launched",
        }
        for c in CASES
    }

    def passed(c):
        return gates[c].get("gate_passed") is True

    def disposition(status, reason, refs):
        return {"status": status, "reason": reason, "evidence": refs}

    controls = {}
    for name, test in CONTROL_TESTS.items():
        role = "treatments" if name in ["C01", "C02"] else "conformance"
        path = (
            "roles/" + role + "/negatives.json"
            if role == "treatments"
            else "roles/conformance/native-tests/stdout.txt"
        )
        actual = (root / path).read_text() if (root / path).exists() else ""
        # Native cargo test output binds the actual named tests; a broad marker is
        # deliberately only family conformance, not a universal language theorem.
        ok = passed(role) and (name in ["C01", "C02"] or test in actual)
        controls[name] = disposition(
            "targeted_rejection" if ok else "not_run",
            ("Actual fixed control family: " + test)
            if ok
            else "Control was not established by the final closed role",
            [path] if actual else ["roles/" + role + "/result.json"],
        )
    roots = {}
    pp = root / "roles/proofs/proof-check/result.json"
    p = load(pp) if pp.exists() else {}
    for name in sorted(ROOTS):
        ok = (
            passed("proofs")
            and p.get("fresh_replay") is True
            and any(
                r["name"] == "Reuse035." + name and r["kernel_checked"]
                for r in p.get("roots", [])
            )
        )
        roots[name] = disposition(
            "checked_for_fragment" if ok else "not_run",
            "Exact restricted model/type/axiom/fresh kernel root; native encoder/projection/host bridges conditional"
            if ok
            else "Final proof gate did not establish this root",
            ["roles/proofs/proof-check/result.json"]
            if pp.exists()
            else ["roles/proofs/result.json"],
        )
    cells = {}
    alllocal = True
    for cell in m["profile"]["cells"]:
        name = cell["case_id"]
        groups = {}
        failure = None
        if passed(name):
            for role in TARGETS:
                path = gate_path(root, name).parent / role / "complete.json"
                try:
                    g = load(path)
                    groups[role] = summarize_group(g["observations"][:3])
                    groups[role]["program_check_ns"] = g["program_check_ns"]
                    w = g["observations"][3]["work_cycle"]
                    if role == "GV":
                        alllocal &= (
                            w["semantic_unrelated_rows"] == 0
                            and w["old_prefix_decision_visits"] == 0
                        )
                except (ValueError, KeyError, FileNotFoundError) as e:
                    failure = str(e)
        else:
            failure = gates[name].get("reason", "Growth gate did not complete")
        d = (
            discriminate(groups["R"], groups["GV"])
            if len(groups) == 4 and failure is None
            else None
        )
        ground = {}
        if len(groups) == 4:
            for a, b in [("R", "G"), ("V", "GV")]:
                ground[a + "_" + b] = (
                    None
                    if groups[a]["reestablish_median_ns"] == 0
                    else groups[b]["reestablish_median_ns"] * 2
                    <= groups[a]["reestablish_median_ns"]
                )
        cells[name] = disposition(
            "completed" if d is not None else "not_run",
            failure
            or "Actual three timing observations and separate work/drain per fixed treatment",
            [str(gate_path(root, name).relative_to(root))],
        ) | {"groups": groups, "discriminators": d, "ground_2x": ground}
    allcells = all(c["status"] == "completed" for c in cells.values())
    allcontrols = all(c["status"] == "targeted_rejection" for c in controls.values())
    math = all(r["status"] == "checked_for_fragment" for r in roots.values())
    native = passed("conformance") and allcontrols
    work_path = root / "roles/conformance/native-work-growth.json"
    conformance_work = load(work_path) if work_path.exists() else {}
    work_rows = conformance_work.get("observations", [])
    conformance_locality = len(work_rows) == 5 and {r["case"] for r in work_rows} == {
        f"growth-D{i}" for i in range(1, 6)
    }
    for row in work_rows:
        d = row["diagnostics_before_independent_audit"]
        audit = row["audit"]
        conformance_locality &= (
            d["semantic_unrelated_rows"] == 0
            and d["old_prefix_decision_visits"] == 0
            and all(
                d["native"]["counts"][k] == 0
                for k in ["provider_rows", "snapshot_rows", "copied_rows"]
            )
        )
        conformance_locality &= (
            audit["maintained_views_equal_full_reconstruction"] is True
            and audit["core_version_view_equal_full_reconstruction"] is True
            and audit["original_property_outcomes"]["status"] == "Valid"
        )
    local = (
        (conformance_locality or (allcells and alllocal))
        and math
        and native
        and passed("treatments")
    )
    d3 = cells["growth-D3"].get("discriminators")
    integration = (
        allcells
        and all(
            c["discriminators"]["integration_no_regression"] for c in cells.values()
        )
        and passed("quality")
        and gates["quality"].get("integration") != "BLOCKED"
    )
    requirements = {}
    development_only = {
        3,
        6,
        7,
        8,
        13,
    }  # Native correspondence remains a named premise.
    measured = {9, 10, 11, 14, 15, 16, 17}
    for i in range(1, 22):
        met = (
            (math and native)
            if i in development_only
            else allcells
            if i in measured
            else passed("conformance")
        )
        status = (
            "partial"
            if i in development_only and met
            else "met"
            if met
            else "not_evaluated"
        )
        reason = (
            "Restricted model checked and finite native conformance; general native refinement remains conditional"
            if i in development_only
            else "Final closed role/matrix establishes the declared diagnostic scope"
            if met
            else "Required final gate or complete matrix was not established; development evidence is separate"
        )
        requirements[f"FR-{i:03}"] = disposition(
            status,
            reason,
            ["roles/conformance/result.json", "roles/proofs/result.json"]
            if i in development_only
            else [
                "input-manifest.json",
                "roles/conformance/result.json",
                "roles/treatments/result.json",
            ],
        )
    # Protocol, isolation, original inputs and review inventories are inspectable
    # independently of a successful final performance matrix.
    for i in [1, 4, 18, 19, 20, 21]:
        requirements[f"FR-{i:03}"] = disposition(
            "met",
            "Frozen contract/source/inventory and conservative isolated assessment; preservation independently checked during validation",
            ["input-manifest.json"],
        )
    sc = {
        "SC-001": (
            "met" if math else "not_evaluated",
            "General finite model evidence; native bridges explicitly conditional",
        ),
        "SC-002": (
            "met" if native else "not_evaluated",
            "Actual fixed native/control conformance, not full language refinement",
        ),
        "SC-003": (
            "met" if allcells and passed("treatments") else "not_evaluated",
            "Four actual mechanisms and complete frozen matrix required",
        ),
        "SC-004": (
            "partial" if local else "not_evaluated",
            "Restricted logical locality plus actual work counts; native refinement remains conditional",
        ),
        "SC-005": (
            "met" if allcells else "not_evaluated",
            "Complete same-output endpoints, lifecycle and direct cycle, no component-only end-to-end claim",
        ),
        "SC-006": (
            "met" if allcells else "not_evaluated",
            "All original fields compared to separate original oracle; full output retained",
        ),
        "SC-007": (
            "partial",
            "Raw-to-summary is independently reproducible; separate final validator receipt required",
        ),
        "SC-008": (
            "partial",
            "No production/trust/Q6 changes; selected historical preservation awaits independent receipt",
        ),
    }
    summary = (
        (
            "Complete diagnostic matrix obtained."
            if allcells
            else "Final comparison incomplete: inspect gate-linked unrun cells; no final speedup claim."
        )
        + " Mathematical fragment, finite native conformance and complete-operation performance have separate dispositions. Native Rust refinement is conditional; no integration recommendation."
    )
    findings = {
        "mathematical": "checked_for_fragment" if math else "not_run",
        "native": "checked_conformance" if native else "unestablished",
        "ground": "measured" if allcells else "not_measured",
        "views_locality": "conditional" if local else "unestablished",
        "conformance_locality_work": "roles/conformance/native-work-growth.json"
        if conformance_locality
        else None,
        "locality_scope": "Actual conformance work is separate from matrix timing; it cannot establish a timing discriminator",
        "interaction": "measured" if allcells else "not_measured",
        "confounding": "actual four-role check passed"
        if passed("treatments")
        else "treatment separation unestablished",
        "output": "full population-shaped original records retained; whole-output/hash floor charged",
        "complete_endpoint": d3,
        "integration_recommended": False,
        "integration_numerical_and_quality_gates": integration,
        "next_experiment": "Resolve any failed gate before extending the fragment; retain full original-output costs and explicit native proof bridges",
    }
    a = {
        "format": "core035.assessment.v1",
        "candidate": "conditional" if math and native else "undetermined",
        "product_adoption": "unactivated",
        "requirements": requirements,
        "success_criteria": {
            k: disposition(v[0], v[1], ["assessment/assessment.json"])
            for k, v in sc.items()
        },
        "controls": controls,
        "proof_roots": roots,
        "cells": cells,
        "native_correspondence": "conditional",
        "semantic": "equal" if native else "not_evaluated",
        "mathematical": "checked_for_fragment" if math else "not_run",
        "cost": "measured" if allcells else "not_measured",
        "gates": gates,
        "findings": findings,
        "summary": summary,
        "input_manifest": artifact_ref(root, "input-manifest.json", "frozen-input"),
        "prepared_manifest": artifact_ref(root, "prepared-manifest.json", "prepared")
        if (root / "prepared-manifest.json").exists()
        else None,
        "limits": m["clock"],
        "closing": {
            "no_resampling": True,
            "direct_cycles": True,
            "q6": "unestablished",
        },
        "quality": gates["quality"],
    }
    validate_assessment_shape(a)
    return a
