"""Narrow source correction for read-only shared symbolic-slice metadata."""

import difflib
import hashlib
from pathlib import Path

# Only a read of a shared slice reference is admitted. Existing metadata
# writes/moves, raw pointers, mutable references and other DSTs still reject.
PLACE_HELPER = """let shared_slice_metadata_place (span : Meta.span) (p : place) : place option =
  match p.kind with
  | PlaceProjection (reference, PtrMetadata) ->
      begin match reference.ty, p.ty with
      | TRef (_, (TSlice _ as slice_ty), RShared),
        TScalar (TInteger (Unsigned Usize)) ->
          Some {kind = PlaceProjection (reference, Deref); ty = slice_ty}
      | _ -> [%craise] span "UnsupportedMetadataRead: expected shared slice and usize"
      end
  | _ -> None

let eval_shared_slice_metadata (config : config) (span : Meta.span) (p : place) (ctx : eval_ctx) =
  if config.mode <> SymbolicMode then
    [%craise] span "UnsupportedMetadataMode: symbolic mode required";
  let _, value, _ = read_place_check span Read p ctx in
  let value = value_strip_shared_loans value in
  match value.value with
  | VSymbolic slice_sv ->
      let result_ty = TScalar (TInteger (Unsigned Usize)) in
      let result_sv = mk_fresh_symbolic_value span ctx result_ty in
      let result = mk_tvalue_from_symbolic_value result_sv in
      let continuation e =
        SA.IntroSymbolic (ctx, None, result_sv, VaSliceLen slice_sv, e)
      in
      (result, ctx, continuation)
  | _ -> [%craise] span "UnsupportedMetadataValue: expected symbolic slice"

"""

INTRO = """    | VaSliceLen slice_sv ->
        if Config.backend () <> Lean then
          [%craise] ctx.span "Slice metadata support is currently Lean-only";
        let slice_ty = ctx_translate_fwd_ty ctx slice_sv.sv_ty in
        let element_ty =
          match slice_ty with
          | TAdt (TBuiltin TSlice, {types = [element_ty]; _}) -> element_ty
          | _ -> [%craise] ctx.span "Slice metadata source type mismatch"
        in
        let qualif = {id = FunOrOp (Fun (Pure SliceLen));
          generics = mk_generic_args_from_types [element_ty]} in
        let function_expr = {e = Qualif qualif; ty = mk_arrow slice_ty var.ty} in
        ([%add_loc] mk_app ctx.span function_expr (symbolic_value_to_texpr ctx slice_sv), false)
"""


def once(raw, old, new):
    if raw.count(old) != 1:
        raise ValueError("SliceMetadataSourceAnchor:" + old[:70])
    return raw.replace(old, new)


def repair_sources(original):
    if set(original) != set(ORIGINAL) or any(
        hashlib.sha256(raw).hexdigest() != ORIGINAL[name]
        for name, raw in original.items()
    ):
        raise ValueError("SliceMetadataSourceIdentity")
    changed = {name: raw.decode() for name, raw in original.items()}
    name = "interp/InterpExpressions.ml"
    raw = once(
        changed[name],
        "let prepare_eval_operand_reorganize (",
        PLACE_HELPER + "let prepare_eval_operand_reorganize (",
    )
    raw = once(
        raw,
        """      let greedy_expand = true in
      access_rplace_reorganize config span greedy_expand access p ctx
  | Move p ->""",
        """      let metadata_place = shared_slice_metadata_place span p in
      let greedy_expand = Option.is_none metadata_place in
      let p = Option.value metadata_place ~default:p in
      access_rplace_reorganize config span greedy_expand access p ctx
  | Move p ->""",
    )
    start = raw.index(
        "  | Copy (p, _) | Read p ->", raw.index("let eval_operand_no_reorganize")
    )
    end = raw.index("\n  | Move p ->", start)
    old = raw[start:end]
    opening = "  | Copy (p, _) | Read p ->\n"
    assert old.startswith(opening)
    replacement = (
        opening
        + """      begin match shared_slice_metadata_place span p with
      | Some slice_place -> eval_shared_slice_metadata config span slice_place ctx
      | None ->
"""
        + old[len(opening) :]
        + "\n      end"
    )
    changed[name] = raw[:start] + replacement + raw[end:]
    name = "symbolic/SynthesizeSymbolic.ml"
    changed[name] = once(
        changed[name],
        "    | PlaceProjection (_, PtrMetadata) ->",
        "    | PlaceProjection (subplace, PtrMetadata)\n      when (match subplace.ty, place.ty with\n        | TRef (_, TSlice _, RShared), TScalar (TInteger (Unsigned Usize)) -> true\n        | _ -> false) ->\n        (* Naming provenance only; metadata evaluation supplies Slice.len. *)\n        place_to_mplace subplace\n    | PlaceProjection (_, PtrMetadata) ->",
    )
    name = "symbolic/SymbolicAst.ml"
    changed[name] = once(
        changed[name],
        "  | VaDiscriminant of symbolic_value  (** A discriminant read *)",
        "  | VaSliceLen of symbolic_value  (** Shared slice metadata read *)\n  | VaDiscriminant of symbolic_value  (** A discriminant read *)",
    )
    name = "symbolic/PrintSymbolicAst.ml"
    changed[name] = once(
        changed[name],
        "  | VaDiscriminant sv ->",
        """  | VaSliceLen sv -> "@sliceLen(" ^ Values.symbolic_value_to_string env sv ^ ")"
  | VaDiscriminant sv ->""",
    )
    name = "symbolic/SymbolicToPureExpressions.ml"
    changed[name] = once(
        changed[name],
        "    | VaDiscriminant adt_sv ->",
        INTRO + "    | VaDiscriminant adt_sv ->",
    )
    name = "pure/Pure.ml"
    changed[name] = once(
        changed[name],
        "  | Discriminant  (** Discriminant read *)",
        "  | SliceLen  (** Read shared slice metadata using the existing length primitive *)\n  | Discriminant  (** Discriminant read *)",
    )
    name = "pure/PrintPure.ml"
    changed[name] = once(
        changed[name],
        '  | Discriminant -> "@discriminant"',
        '  | SliceLen -> "@sliceLen"\n  | Discriminant -> "@discriminant"',
    )
    name = "pure/PureMicroPassesAnnots.ml"
    changed[name] = once(
        changed[name],
        "          | Discriminant -> (hole, mk_holes (), false)",
        "          | SliceLen | Discriminant -> (hole, mk_holes (), false)",
    )
    name = "extract/ExtractBase.ml"
    changed[name] = once(
        changed[name],
        '        (Discriminant, "read_discriminant");',
        '        (SliceLen, "Slice.len");\n        (Discriminant, "read_discriminant");',
    )
    name = "extract/Extract.ml"
    changed[name] = once(
        changed[name],
        "          | Pure Discriminant ->",
        "          | Pure (SliceLen | Discriminant) ->",
    )
    return {name: raw.encode() for name, raw in changed.items()}


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


ORIGINAL = {
    "symbolic/SynthesizeSymbolic.ml": "49dbb5249d9470128d95bfa4c34f8197e708f1da6b5eb6aee89c8ead2805eeac",
    "interp/InterpExpressions.ml": "243cddc54af9a727eadf2eb8f07c0a37f954106cf1041e43a528266481e15b10",
    "symbolic/SymbolicAst.ml": "7d433eebae05bd0b8e7d5a13982c4eb7df26c4e2b5de4cccb14dfedf6280745c",
    "symbolic/PrintSymbolicAst.ml": "216c37f74e788eea99d55cd314d1d0e6cf1c7cce7914f721b32a8a84931b1e46",
    "symbolic/SymbolicToPureExpressions.ml": "250813689915257fcab9850a12804d6a0b3a6f7ec5dd7a854dd33a849419c023",
    "pure/Pure.ml": "582ac7dd8df211ecbaf6bfb9c5772fd629ca36a69d5cbdd0595e1a57611ee587",
    "pure/PrintPure.ml": "70adb967b7340b7945d88cb72530a1c5f9450cee8f0245d5ab0c7845aca6eea9",
    "pure/PureMicroPassesAnnots.ml": "c29fc018ba337b1363eff315b438a5b7a0d63dc7fee4d07dfc8b923fdfdfdfaf",
    "extract/ExtractBase.ml": "700bb48b70bd35ea8c651a23ddcdee9f80faff78a5326e450f64142f9b4f6bd2",
    "extract/Extract.ml": "0884ab7ffefd13e11803c5e3174d1c96ea3ca4f451de1600c976de2b28fed273",
}


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
        or result.get("format") != "core036.slice-metadata-source-parse-result.v2"
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
        raise ValueError("SliceMetadataIncompleteParse")


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
        or binding["format"] != "core036.slice-metadata-source.v2"
    ):
        raise ValueError("SliceMetadataBinding")
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
        raise ValueError("SliceMetadataBaseline")
    project = Path(result["project"])
    if any(
        refs.verify(ref) != project / name
        for name, ref in binding["source_refs"].items()
    ):
        raise ValueError("SliceMetadataSourcePath")
    original = {
        name: refs.verify(ref).read_bytes()
        for name, ref in binding["source_refs"].items()
    }
    changes = repair_sources(original)
    if refs.verify(binding["patch_ref"]).read_bytes() != source_patch(original):
        raise ValueError("SliceMetadataPatchIdentity")
    if require_parse and not extra <= set(binding):
        raise ValueError("SliceMetadataActualParseRequired")
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
            raise ValueError("SliceMetadataParsePath")
        validate_source_parse(cp, parsed, changes)
        if refs.read(parsed["binding_ref"]) != {
            key: value for key, value in binding.items() if key not in extra
        }:
            raise ValueError("SliceMetadataParseBinding")
    return binding, changes
