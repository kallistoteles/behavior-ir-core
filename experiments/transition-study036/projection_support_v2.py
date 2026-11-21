"""Load proof-search support from a matching closed diagnostic, never as native proof."""

from pathlib import Path

from artifact_io import RootRegistry

EXPECTED_CODES = {
    "NativeOption": 0,
    "ForwardProjectionSupport": 0,
    "OptionContinuity": 0,
    "LogicBackward": 1,
    "LogicForward": 0,
    "Projection": 0,
    "WrongGoal": 1,
    "OpaqueValue": 1,
    "Audit": 0,
    "fresh-kernel": 0,
}
EXPECTED_ROOTS = {
    "transition_study036.option_element_cont",
    "transition_study036.projection_cont",
    "logic_forward",
}
FOUNDATIONS = {"propext", "Classical.choice", "Quot.sound"}


def validate_diagnostic_support(checkpoint, result, source_ref, manifest):
    """Validate dependency coverage; immutable artifact checks belong to the loader."""
    if (
        checkpoint.get("stage_outcome") != "succeeded"
        or checkpoint.get("source_validation_error") is not None
        or checkpoint.get("outcome", {}).get("operational") != "closed"
        or result.get("source_subject_ref") != checkpoint.get("source_subject_ref")
        or result.get("native_proof") != "unestablished"
        or result.get("feature_complete") is not False
    ):
        raise ValueError("ProjectionSupportDiagnosticClosure")
    commands = result.get("commands", [])
    if (
        len(commands) != len(EXPECTED_CODES)
        or {row.get("module"): row.get("exit_code") for row in commands}
        != EXPECTED_CODES
    ):
        raise ValueError("ProjectionSupportDiagnosticControls")
    audit = result.get("selected_model_theorem_audit", [])
    if (
        len(audit) != len(EXPECTED_ROOTS)
        or {row.get("declaration") for row in audit} != EXPECTED_ROOTS
        or any(
            not row.get("type_repr")
            or any(
                axiom.get("name") not in FOUNDATIONS or not axiom.get("type_repr")
                for axiom in row.get("axioms", [])
            )
            for row in audit
        )
    ):
        raise ValueError("ProjectionSupportSelectedTheorems")
    selected = [
        row for row in manifest.get("files", []) if row.get("logical_ref") == source_ref
    ]
    if len(selected) != 1 or any(
        selected[0]["snapshot_ref"][key] != source_ref[key]
        for key in ("bytes", "sha256")
    ):
        raise ValueError("ProjectionSupportChangedSource")
    return True


def checked_projection_support(refs, reference):
    selection = refs.read(reference)
    if (
        set(selection)
        != {
            "format",
            "source_ref",
            "checkpoint_ref",
            "result_ref",
        }
        or selection["format"] != "core036.projection-support.v2"
    ):
        raise ValueError("ProjectionSupportSelection")
    checkpoint_path = refs.verify(selection["checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(selection["checkpoint_ref"])
    result_path = refs.verify(selection["result_ref"])
    if result_path.parent.name != checkpoint["attempt_id"]:
        raise ValueError("ProjectionSupportResultAttempt")
    result = refs.read(selection["result_ref"])
    manifest = refs.read(checkpoint["source_subject_ref"])
    source = refs.verify(selection["source_ref"])
    validate_diagnostic_support(checkpoint, result, selection["source_ref"], manifest)
    frozen = next(
        row["snapshot_ref"]
        for row in manifest["files"]
        if row["logical_ref"] == selection["source_ref"]
    )
    refs.verify(frozen)
    if Path(source).name != "NonPosForwardProjection.lean":
        raise ValueError("ProjectionSupportModuleName")
    return source
