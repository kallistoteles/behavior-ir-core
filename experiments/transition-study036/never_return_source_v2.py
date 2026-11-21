"""Narrow no-successor handling of fallible scalar calls returning Rust Never."""

import difflib
import hashlib
from pathlib import Path

ORIGINAL = {
    "interp/InterpStatements.ml": "94eaecb2e62b6c2e3e144d4fe77682793f461b72200e7c6cf66b78812edf5e2c"
}


def repair_sources(original):
    if set(original) != set(ORIGINAL) or any(
        hashlib.sha256(raw).hexdigest() != ORIGINAL[name]
        for name, raw in original.items()
    ):
        raise ValueError("NeverReturnSourceIdentity")
    name = "interp/InterpStatements.ml"
    raw = original[name].decode()
    anchor = "(** Auxiliary helper for [eval_function_call_symbolic] Instantiate the signature"
    qualifier = """(** A fallible static scalar call returning Rust's empty type has no
    normal successor. Keep argument evaluation and the actual monadic call;
    do not classify by a panic-like source name or erase its effects. *)
let qualifies_scalar_never_call (ctx : eval_ctx)
    (call_info : symbolic_fun_call_inst) : bool =
  let params = call_info.call_sig.item_binder_params in
  let sg = call_info.call_sig.item_binder_value in
  let inst = call_info.call_inst_sig in
  let generics = call_info.call_generics in
  match call_info.call_kind with
  | Fun fid ->
      let fallible = match
        FunsAnalysis.lookup_fun_decl_info ctx.fun_ctx.fun_infos fid with
        | Some (info : FunsAnalysis.fun_info) -> info.can_fail
        | None -> false
      in
      let declaration = ctx_lookup_fun_decl call_info.call_span ctx fid in
      fallible && not declaration.item_meta.has_errors &&
      not (fun_decl_is_global_initializer declaration) &&
      not sg.is_unsafe && sg.abi = AbiRust && not sg.is_variadic &&
      params.regions = [] && params.types = [] && params.const_generics = [] &&
      params.trait_clauses = [] && params.trait_type_constraints = [] &&
      params.outlives = [] &&
      generics.regions = [] && generics.types = [] &&
      generics.const_generics = [] && generics.trait_refs = [] &&
      sg.output = TNever && inst.output = TNever &&
      sg.inputs = inst.inputs && inst.abs_regions_hierarchy = [] &&
      List.for_all (function TScalar _ -> true | _ -> false) inst.inputs
  | TraitMethod _ -> false

"""
    if raw.count(anchor) != 1:
        raise ValueError("NeverReturnQualifierAnchor")
    raw = raw.replace(anchor, qualifier + anchor)
    anchor = "  ([ (ctx, Unit) ], cc_singleton __FILE__ __LINE__ span cc)\n\n(** Evaluate a statement seen as a function body *)"
    replacement = """  if qualifies_scalar_never_call ctx call_info then
    ([], cf_empty __FILE__ __LINE__ span (cc SA.Panic))
  else ([ (ctx, Unit) ], cc_singleton __FILE__ __LINE__ span cc)

(** Evaluate a statement seen as a function body *)"""
    if raw.count(anchor) != 1:
        raise ValueError("NeverReturnContinuationAnchor")
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
        or result.get("format") != "core036.never-return-source-parse-result.v2"
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
        raise ValueError("NeverReturnIncompleteParse")


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
        or binding["format"] != "core036.never-return-source.v2"
    ):
        raise ValueError("NeverReturnBinding")
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
        raise ValueError("NeverReturnBaseline")
    project = Path(result["project"])
    if any(
        refs.verify(ref) != project / name
        for name, ref in binding["source_refs"].items()
    ):
        raise ValueError("NeverReturnSourcePath")
    original = {
        name: refs.verify(ref).read_bytes()
        for name, ref in binding["source_refs"].items()
    }
    changes = repair_sources(original)
    if refs.verify(binding["patch_ref"]).read_bytes() != source_patch(original):
        raise ValueError("NeverReturnPatchIdentity")
    if require_parse and not extra <= set(binding):
        raise ValueError("NeverReturnActualParseRequired")
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
            raise ValueError("NeverReturnParsePath")
        validate_source_parse(cp, parsed, changes)
        if refs.read(parsed["binding_ref"]) != {
            key: value for key, value in binding.items() if key not in extra
        }:
            raise ValueError("NeverReturnParseBinding")
    return binding, changes
