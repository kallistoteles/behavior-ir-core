"""Treatment checks over actual closed records; never proof/authority constructors."""

import re

ROLES = ("R", "G", "V", "GV")


def validate_activation(bindings, summaries):
    if (
        not isinstance(bindings, list)
        or len(bindings) != 4
        or {x.get("treatment") for x in bindings} != set(ROLES)
    ):
        raise ValueError("TreatmentInventory")
    hashes = [x.get("sha256") for x in bindings]
    if (
        any(
            not isinstance(h, str) or not re.fullmatch("[0-9a-f]{64}", h)
            for h in hashes
        )
        or len(set(hashes)) != 4
    ):
        raise ValueError("EqualOrInvalidExecutedWorkers")
    if set(summaries) != set(ROLES):
        raise ValueError("MissingTreatmentExecution")
    for role in ROLES:
        summary = summaries[role]
        if (
            summary.get("treatment") != role
            or summary.get("backend") != "Store<Capture>"
        ):
            raise ValueError("WrongActualEntryOrBackend")
        samples = summary.get("samples")
        if not isinstance(samples, list) or len(samples) != 2:
            raise ValueError("MissingPrimaryOrDrain")
        for index, sample in enumerate(samples):
            if sample.get("slot") != (
                "observation.json" if index == 0 else "drain.json"
            ):
                raise ValueError("WrongContinuationSlot")
            if sample.get("full_snapshot_passes") != (1 if role in ["R", "V"] else 0):
                raise ValueError("GroundMechanismInactive")
            expected = index + 1 if role in ["V", "GV"] else 0
            if (
                sample.get("diagnostics", {}).get("fresh_prepared_invocations")
                != expected
            ):
                raise ValueError("ViewMechanismInactive")
            method = sample.get("validity_provenance", {}).get("validity_method")
            if method != (
                "restricted_finish_preservation"
                if role in ["V", "GV"]
                else "actual_original_post_check"
            ):
                raise ValueError("WrongPropertyProvenance")
    return {
        "activation": "checked_conformance",
        "scope": "Actual G/V mechanism observations, plus independent original semantic/source/byte checks required",
        "product_adoption": "unactivated",
    }
