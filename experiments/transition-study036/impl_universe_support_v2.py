"""Exact source-bound impl_def inference correction; no native semantic authority."""

import difflib
import hashlib

from artifact_io import RootRegistry

UPSTREAM_SHA256 = "26d00e1e8c3102f7d48858ed40b5803c00e863dbca38edea3a44c9dea75e2ad8"
START = 'elab mods:declModifiers "impl_def "'
END = "\nend Aeneas.TraitDefault"
EARLY = """      -- `fullType` contains universe metavariables from `Type _` binders, thus, we turn them
      -- into universe parameters and propagate them to `type`. We do this before elaborating
      -- the body, which could otherwise instantiate them accidentally.
      let fullType ← Term.levelMVarToParam (← instantiateMVars fullType)
      let type ← instantiateMVars type
"""
LATE = """      -- Infer universe constraints from the actual fields before generalizing.
"""
VALUE = """        let fullVal ← mkLambdaFVars xs processedVal
        let fullVal ← instantiateMVars fullVal"""
INFERRED_VALUE = """        let fullVal ← mkLambdaFVars xs processedVal
        let fullType ← Term.levelMVarToParam (← instantiateMVars fullType)
        let fullVal ← instantiateMVars fullVal"""
HEADER = """module
public import Aeneas
public meta import Lean.Elab.DefView
public meta import Lean.Elab.PreDefinition.Basic
@[expose] public section
namespace Core036.ImplInferenceSupport
open Aeneas.TraitDefault
open Lean Elab Term Meta Command
open Lean.Parser.Term Lean.Parser.Command
"""


def _commands(upstream):
    if hashlib.sha256(upstream).hexdigest() != UPSTREAM_SHA256:
        raise ValueError("ImplInferenceUpstreamSourceChanged")
    source = upstream.decode()
    if source.count(START) != 1 or source.count(END) != 1:
        raise ValueError("ImplInferenceCommandBoundary")
    original = source[source.index(START) : source.index(END)]
    if original.count(EARLY) != 1 or original.count(VALUE) != 1:
        raise ValueError("ImplInferenceGeneralizationBoundary")
    corrected = original.replace(EARLY, LATE).replace(VALUE, INFERRED_VALUE)
    corrected = corrected.replace(
        START,
        'elab (name := implDefInferUniverses) (priority := high) mods:declModifiers "impl_def "',
    )
    return original, corrected


def support_source(upstream):
    _, corrected = _commands(upstream)
    return (HEADER + corrected + "\nend Core036.ImplInferenceSupport\n").encode()


def support_patch(upstream):
    original, corrected = _commands(upstream)
    return "".join(
        difflib.unified_diff(
            original.splitlines(keepends=True),
            corrected.splitlines(keepends=True),
            fromfile="a/Aeneas/TraitDefault/Init.command.lean",
            tofile="b/Core036/ImplInferenceSupport.command.lean",
        )
    ).encode()


def validate_support_bytes(upstream, support, patch):
    if support != support_source(upstream) or patch != support_patch(upstream):
        raise ValueError("ImplInferenceSupportChanged")
    return True


def validate_baseline(checkpoint, result):
    expected = {
        "ImplPositive": 0,
        "ImplInferred": 1,
        "ImplHigherWrong": 1,
        "ImplCycle": 1,
    }
    commands = result.get("commands", [])
    if (
        checkpoint.get("stage_outcome") != "succeeded"
        or checkpoint.get("source_validation_error") is not None
        or checkpoint.get("outcome", {}).get("operational") != "closed"
        or result.get("format") != "core036.impl-universe-diagnostic-result.v2"
        or result.get("source_subject_ref") != checkpoint.get("source_subject_ref")
        or result.get("native_proof") != "unestablished"
        or result.get("feature_complete") is not False
        or result.get("observed_baseline_universe_failure") is not True
        or len(commands) != len(expected)
        or {row["module"]: row["exit_code"] for row in commands} != expected
    ):
        raise ValueError("ImplInferenceMissingActualBaseline")
    return True


def checked_support(refs, reference):
    selection = refs.read(reference)
    if (
        set(selection)
        != {
            "format",
            "upstream_source_ref",
            "support_source_ref",
            "patch_ref",
            "baseline_checkpoint_ref",
            "baseline_result_ref",
        }
        or selection["format"] != "core036.impl-inference-support.v2"
    ):
        raise ValueError("ImplInferenceSupportSelection")
    cp_path = refs.verify(selection["baseline_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["baseline_checkpoint_ref"])
    result_path = refs.verify(selection["baseline_result_ref"])
    if cp["attempt_id"] != "a0347" or result_path.parent.name != cp["attempt_id"]:
        raise ValueError("ImplInferenceBaselineIdentity")
    validate_baseline(cp, refs.read(selection["baseline_result_ref"]))
    upstream = refs.verify(selection["upstream_source_ref"])
    if upstream.as_posix().split("/w001/")[-1] != (
        "analysis-backend-build/a0058/lean/Aeneas/Tactic/Elab/TraitDefault/Init.lean"
    ):
        raise ValueError("ImplInferenceOriginalModule")
    support = refs.verify(selection["support_source_ref"])
    patch = refs.verify(selection["patch_ref"])
    validate_support_bytes(
        upstream.read_bytes(), support.read_bytes(), patch.read_bytes()
    )
    return support


def validate_candidate(checkpoint, result, support_ref, manifest):
    """A completed conditional model audit authorizes support, never native closure."""
    expected = {
        "ImplDefInferenceSupport": 0,
        "ImplPositive": 0,
        "ImplInferred": 0,
        "ImplHigherWrong": 1,
        "ImplCycle": 1,
        "ImplUniverseLaws": 0,
        "ImplUniverseAudit": 0,
        "fresh-kernel": 0,
    }
    commands = result.get("commands", [])
    if (
        checkpoint.get("stage_outcome") != "succeeded"
        or checkpoint.get("source_validation_error") is not None
        or checkpoint.get("outcome", {}).get("operational") != "closed"
        or result.get("format") != "core036.impl-universe-diagnostic-result.v2"
        or result.get("source_subject_ref") != checkpoint.get("source_subject_ref")
        or result.get("observed_baseline_universe_failure") is not False
        or result.get("native_proof") != "unestablished"
        or result.get("feature_complete") is not False
        or result.get("fresh_kernel") != "passed"
        or len(commands) != len(expected)
        or any(type(row.get("exit_code")) is not int for row in commands)
        or {row["module"]: row["exit_code"] for row in commands} != expected
    ):
        raise ValueError("ImplInferenceIncompleteCandidate")
    roots = {
        "transition_study036.ImplUniverseControl.good_matches",
        "transition_study036.ImplUniverseControl.inferred_write",
        "transition_study036.ImplUniverseControl.polymorphic_write",
    }
    audit = result.get("selected_model_theorem_audit", [])
    if len(audit) != 3 or {row["declaration"] for row in audit} != roots:
        raise ValueError("ImplInferenceMissingCandidateAudit")
    for row in audit:
        if not row.get("type_repr"):
            raise ValueError("ImplInferenceMissingCandidateType")
        for axiom in row["axioms"]:
            allowed = (
                axiom.get("name") in {"propext", "Classical.choice", "Quot.sound"}
                and axiom.get("classification") == "standard_foundation"
            ) or (
                axiom.get("name") == "core.io.error.Error"
                and axiom.get("classification") == "unproved_external_type_parameter"
            )
            if not allowed or not axiom.get("type_repr"):
                raise ValueError("ImplInferenceBehavioralCandidateAxiom")
    selected = [row for row in manifest["files"] if row["logical_ref"] == support_ref]
    if len(selected) != 1 or any(
        selected[0]["snapshot_ref"][key] != support_ref[key]
        for key in ("bytes", "sha256")
    ):
        raise ValueError("ImplInferenceChangedCandidateSupport")
    return True


def checked_validated_support(refs, reference):
    selection = refs.read(reference)
    if (
        set(selection)
        != {
            "format",
            "support_binding_ref",
            "candidate_checkpoint_ref",
            "candidate_result_ref",
            "proof_expectations_ref",
        }
        or selection["format"] != "core036.validated-impl-inference-support.v2"
    ):
        raise ValueError("ImplInferenceValidatedSelection")
    support = checked_support(refs, selection["support_binding_ref"])
    binding = refs.read(selection["support_binding_ref"])
    cp_path = refs.verify(selection["candidate_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["candidate_checkpoint_ref"])
    result_path = refs.verify(selection["candidate_result_ref"])
    if result_path.parent.name != cp["attempt_id"]:
        raise ValueError("ImplInferenceCandidateIdentity")
    result = refs.read(selection["candidate_result_ref"])
    if result.get("support_binding_ref") != selection["support_binding_ref"]:
        raise ValueError("ImplInferenceCandidateBinding")
    manifest = refs.read(cp["source_subject_ref"])
    validate_candidate(cp, result, binding["support_source_ref"], manifest)
    for reference in (
        binding["support_source_ref"],
        selection["proof_expectations_ref"],
    ):
        rows = [row for row in manifest["files"] if row["logical_ref"] == reference]
        if len(rows) != 1:
            raise ValueError("ImplInferenceCandidateSourceExpectations")
        refs.verify(reference)
        refs.verify(rows[0]["snapshot_ref"])
    configs = [
        row
        for row in manifest["files"]
        if row["logical_ref"]["path"]
        == "experiments/transition-study036/ground-lean-probe-inputs-v2.json"
    ]
    if len(configs) != 1:
        raise ValueError("ImplInferenceCandidateFrozenConfig")
    frozen = refs.read(configs[0]["snapshot_ref"])
    candidate = refs.read(frozen["impl_universe_diagnostic_ref"])
    if (
        candidate["support_binding_ref"] != selection["support_binding_ref"]
        or candidate["audit_ref"] != selection["proof_expectations_ref"]
    ):
        raise ValueError("ImplInferenceCandidateExpectedTypesChanged")
    return support
