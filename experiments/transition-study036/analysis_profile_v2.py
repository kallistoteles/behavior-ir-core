"""Compose analysis AS with an already validated parent; change no other cap."""

GIB = 1024**3


def composed_analysis_limits(previous, candidate):
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") != "NATIVE"
        or any(
            previous.get(key) != candidate.get(key)
            for key in ("work_id", "roots", "specification_ref", "native_profile")
        )
        or previous["limits"]["lean_address_space_bytes"] != 4 * GIB
    ):
        raise ValueError("V2AnalysisCompatibilityParent")
    expected = {**previous["limits"], "lean_address_space_bytes": 8 * GIB}
    if candidate["limits"] != expected or any(
        type(value) is not int for value in candidate["limits"].values()
    ):
        raise ValueError("V2AnalysisCompatibilityOtherLimitChanged")
    return expected
