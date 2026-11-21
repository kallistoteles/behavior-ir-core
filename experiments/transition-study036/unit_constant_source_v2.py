"""Narrow source-bound support for the canonical empty-tuple constant."""

import difflib
import hashlib
from pathlib import Path

ORIGINAL = {
    "interp/InterpExpressions.ml": "1cd2ceb456cd2dd6bb9e4b16c5eb37ff6e3d9ae02140293b0b4c16c387b5c979"
}


def repair_sources(original):
    if set(original) != set(ORIGINAL) or any(
        hashlib.sha256(raw).hexdigest() != ORIGINAL[name]
        for name, raw in original.items()
    ):
        raise ValueError("UnitConstantSourceIdentity")
    name = "interp/InterpExpressions.ml"
    raw = original[name].decode()
    anchor = "      match cv.kind with\n      | CBool _ | CInteger _ | CChar _ | CFloat _ -> ("
    if raw.count(anchor) != 1:
        raise ValueError("UnitConstantSourceAnchor")
    replacement = "      match cv.kind with\n      | CAdt (None, []) when cv.ty = mk_unit_ty ->\n          (mk_unit_value, ctx, fun e -> e)\n      | CBool _ | CInteger _ | CChar _ | CFloat _ -> ("
    return {name: raw.replace(anchor, replacement).encode()}


def source_patch(original):
    changed = repair_sources(original)
    return "".join(
        "".join(
            difflib.unified_diff(
                original[name].decode().splitlines(keepends=True),
                changed[name].decode().splitlines(keepends=True),
                fromfile="a/" + name,
                tofile="b/" + name,
            )
        )
        for name in sorted(changed)
    ).encode()


def validate_source_parse(cp, result, changes):
    expected = {
        name: dict(bytes=len(raw), sha256=hashlib.sha256(raw).hexdigest())
        for name, raw in changes.items()
    }
    rows = result.get("commands", [])
    if (
        cp.get("stage_outcome") != "succeeded"
        or cp.get("source_validation_error") is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or result.get("source_subject_ref") != cp.get("source_subject_ref")
        or result.get("format") != "core036.unit-constant-source-parse-result.v2"
        or result.get("source_syntax_checked") is not True
        or result.get("original_sources_unchanged") is not True
        or result.get("source_typecheck") != "not_run"
        or result.get("translator_build") != "not_run"
        or result.get("native_proof") != "unestablished"
        or result.get("feature_complete") is not False
        or result.get("prospective_sources") != expected
        or len(rows) != len(changes)
        or {row.get("label") for row in rows} != set(changes)
        or any(
            type(row.get("exit_code")) is not int
            or row["exit_code"] != 0
            or row.get("timed_out") is not False
            for row in rows
        )
    ):
        raise ValueError("UnitConstantIncompleteParse")


def checked_sources(refs, reference, *, require_parse=False):
    from artifact_io import RootRegistry

    binding = refs.read(reference)
    base = {
        "format",
        "source_refs",
        "patch_ref",
        "baseline_checkpoint_ref",
        "baseline_result_ref",
    }
    extra = {"parse_checkpoint_ref", "parse_result_ref"}
    if (
        set(binding) not in (base, base | extra)
        or binding["format"] != "core036.unit-constant-source.v2"
    ):
        raise ValueError("UnitConstantBinding")
    baseline_path = refs.verify(binding["baseline_checkpoint_ref"])
    RootRegistry({"attempt": baseline_path.parent}).verify_closed("attempt")
    baseline = refs.read(binding["baseline_checkpoint_ref"])
    result_path = refs.verify(binding["baseline_result_ref"])
    result = refs.read(binding["baseline_result_ref"])
    if (
        baseline.get("stage_outcome") != "succeeded"
        or baseline.get("source_validation_error") is not None
        or result_path
        != refs.roots["private"]
        / "nonpos-translator"
        / baseline["attempt_id"]
        / "result.json"
        or result.get("source_subject_ref") != baseline.get("source_subject_ref")
        or result.get("new_translator_compiled") is not True
        or result.get("compiled_sources_match_declared_repair") is not True
    ):
        raise ValueError("UnitConstantBaseline")
    project = Path(result["project"])
    if any(
        refs.verify(ref) != project / name
        for name, ref in binding["source_refs"].items()
    ):
        raise ValueError("UnitConstantSourcePath")
    original = {
        name: refs.verify(ref).read_bytes()
        for name, ref in binding["source_refs"].items()
    }
    changes = repair_sources(original)
    if refs.verify(binding["patch_ref"]).read_bytes() != source_patch(original):
        raise ValueError("UnitConstantPatchIdentity")
    if require_parse and not extra <= set(binding):
        raise ValueError("UnitConstantActualParseRequired")
    if extra <= set(binding):
        path = refs.verify(binding["parse_checkpoint_ref"])
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
        cp = refs.read(binding["parse_checkpoint_ref"])
        parsed = refs.read(binding["parse_result_ref"])
        if (
            refs.verify(binding["parse_result_ref"])
            != refs.roots["private"]
            / "nonpos-translator"
            / cp["attempt_id"]
            / "result.json"
        ):
            raise ValueError("UnitConstantParsePath")
        validate_source_parse(cp, parsed, changes)
        if refs.read(parsed["binding_ref"]) != {
            key: value for key, value in binding.items() if key not in extra
        }:
            raise ValueError("UnitConstantParseBinding")
    return binding, changes
