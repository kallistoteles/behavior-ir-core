"""Prospective call-only, single-receiver/unit reborrow source experiment."""

import difflib
import hashlib
from pathlib import Path

ORIGINAL = {
    "interp/InterpExpressions.ml": "b90650a9633e1a9b305842bbaf6e8e16ca5bd57bca62b7921ff88f480136233c",
    "interp/InterpExpressions.mli": "e98f35c84a08d13cb49390653916c1d0ff96b45833ae2acab5e5ba1c0cdb2a25",
    "interp/InterpStatements.ml": "079bb46b1f2964d91eb35736928a9ec70a516c9dc14dc7cc599cdf79c1eeabd7",
}

MAKE_BORROW = """let make_mut_borrow_at_path (span : Meta.span) (v : tvalue) path
    (ctx : eval_ctx) : tvalue * eval_ctx =
  let bid = ctx.fresh_borrow_id () in
  let rv_ty = TRef (RErased, v.ty, RMut) in
  let rv : tvalue = { value = VBorrow (VMutBorrow (bid, v)); ty = rv_ty } in
  let nv = { v with value = VLoan (VMutLoan bid) } in
  (rv, write_path span path nv ctx)

"""

CALL_OPERAND = """(** Experimental single-receiver call path. The caller must establish the
    late-bound/non-escaping/unit profile from the original signature. *)
let eval_nonescaping_read_receiver (config : config) (span : Meta.span)
    (op : operand) (ctx : eval_ctx) :
    tvalue list * eval_ctx * (SymbolicAst.expr -> SymbolicAst.expr) =
  if config.mode <> SymbolicMode then
    [%craise] span "ReadReceiverRequiresSymbolicCall";
  match op with
  | Read ({kind = PlaceLocal _; ty = TRef (_, referent, RMut)} as p) ->
      let deref : place = {kind = PlaceProjection (p, Deref); ty = referent} in
      (* One operand: complete preparation before consuming any value. *)
      let ctx, cc = access_rplace_reorganize config span false Write deref ctx in
      let _, value, path = read_place_check span Write deref ctx in
      [%cassert] span (not (bottom_in_value ctx.ended_regions value))
        "Read receiver contains bottom";
      [%cassert] span (not (value_has_loans value.value))
        "Read receiver preparation left a loan";
      let result, ctx = make_mut_borrow_at_path span value path ctx in
      ([result], ctx, cc)
  | _ -> [%craise] span "UnsupportedReadReceiverShape"

"""

QUALIFY = """(** First experiment: one late-bound mutable receiver, unit output, no
    sibling slots. This does not admit Write's additional buffer argument. *)
let qualifies_nonescaping_read_receiver (call_info : symbolic_fun_call_inst)
    (args : operand list) : bool =
  let signature = call_info.call_sig in
  let params = signature.item_binder_params in
  let sg = signature.item_binder_value in
  match call_info.call_kind, sg.inputs, args, params.regions, params.types with
  | TraitMethod _,
    [TRef (RVar (Free rid), (TVar (Free self_id) as self_ty), RMut)],
    [Read ({kind = PlaceLocal _; ty = TRef (_, _, RMut)} as place)],
    [region], [self_param] ->
      let no_capture = ref true in
      let visitor = object
        inherit [_] iter_ty
        method! visit_region _ region =
          match region with
          | RStatic -> ()
          | RVar (Free id) -> if id = rid then no_capture := false
          | _ -> no_capture := false
      end in
      visitor#visit_ty () self_ty;
      visitor#visit_ty () sg.output;
      visitor#visit_generic_params () {params with regions = []; outlives = []};
      let outlives_ok predicate =
        predicate.binder_regions = [] && predicate.outlives = [] &&
        match predicate.binder_value with
        | RLub ty, RVar (Free id) -> ty = self_ty && id = rid
        | _ -> false
      in
      let instance_ok =
        match call_info.call_inst_sig.inputs,
              call_info.call_inst_sig.abs_regions_hierarchy with
        | [TRef (RVar (Free _), _, RMut) as input], [group] ->
            group.parents = [] &&
            ty_erase_regions input = ty_erase_regions place.ty
        | _ -> false
      in
      not sg.is_unsafe && sg.abi = AbiRust && not sg.is_variadic &&
      region.index = rid && region.late_bound && self_param.index = self_id &&
      params.const_generics = [] && params.trait_type_constraints = [] &&
      sg.output = mk_unit_ty && !no_capture &&
      List.for_all outlives_ok params.outlives && instance_ok
  | _ -> false

"""


def _replace(raw, anchor, replacement):
    if raw.count(anchor) != 1:
        raise ValueError("MutableReadSourceAnchor")
    return raw.replace(anchor, replacement)


def repair_sources(original):
    if set(original) != set(ORIGINAL) or any(
        hashlib.sha256(raw).hexdigest() != ORIGINAL[name]
        for name, raw in original.items()
    ):
        raise ValueError("MutableReadSourceIdentity")
    changed = {name: raw.decode() for name, raw in original.items()}
    name = "interp/InterpExpressions.ml"
    raw = changed[name]
    raw = _replace(
        raw,
        "let shared_slice_metadata_place",
        MAKE_BORROW + "let shared_slice_metadata_place",
    )
    raw = _replace(raw, "let eval_two_operands", CALL_OPERAND + "let eval_two_operands")
    old = """      let bid = ctx.fresh_borrow_id () in
      let rv_ty = TRef (RErased, v.ty, RMut) in
      let rv : tvalue = { value = VBorrow (VMutBorrow (bid, v)); ty = rv_ty } in
      (* Compute the loan value with which to replace the value at place p *)
      let nv = { v with value = VLoan (VMutLoan bid) } in
      (* Update the value in the context to replace it with the loan *)
      let ctx = write_path span path nv ctx in
"""
    raw = _replace(
        raw, old, "      let rv, ctx = make_mut_borrow_at_path span v path ctx in\n"
    )
    changed[name] = raw
    name = "interp/InterpExpressions.mli"
    anchor = "(** Evaluate an rvalue which is not a global"
    addition = """(** Call-only experiment: requires the checked late-bound single-receiver
    unit-result profile; general operand semantics are unchanged. *)
val eval_nonescaping_read_receiver :
  config -> Meta.span -> operand -> eval_ctx ->
  tvalue list * eval_ctx * (SymbolicAst.expr -> SymbolicAst.expr)

"""
    changed[name] = _replace(changed[name], anchor, addition + anchor)
    name = "interp/InterpStatements.ml"
    anchor = "(** Auxiliary helper for [eval_function_call_symbolic] Instantiate the signature"
    raw = _replace(changed[name], anchor, QUALIFY + anchor)
    old = "  (* Evaluate the input operands *)\n  let args, ctx, cc = eval_operands config span args ctx in"
    new = """  (* Evaluate the input operands *)
  let args, ctx, cc =
    if qualifies_nonescaping_read_receiver call_info args then
      eval_nonescaping_read_receiver config span (List.hd args) ctx
    else eval_operands config span args ctx
  in"""
    changed[name] = _replace(raw, old, new)
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


def checked_sources(refs, reference, *, require_parse=False):
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
        or binding["format"] != "core036.mutable-read-source.v2"
    ):
        raise ValueError("MutableReadSourceBinding")
    cp_path = refs.verify(binding["baseline_checkpoint_ref"])
    from artifact_io import RootRegistry

    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp, baseline = (
        refs.read(binding["baseline_checkpoint_ref"]),
        refs.read(binding["baseline_result_ref"]),
    )
    if (
        cp["attempt_id"] != "a0383"
        or cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or refs.verify(binding["baseline_result_ref"])
        != refs.roots["private"] / "nonpos-translator/a0383/result.json"
        or baseline["source_subject_ref"] != cp["source_subject_ref"]
        or baseline["new_translator_compiled"] is not True
        or baseline["compiled_sources_match_declared_repair"] is not True
    ):
        raise ValueError("MutableReadSourceBaseline")
    project = Path(baseline["project"])
    original = {
        name: refs.verify(row).read_bytes()
        for name, row in binding["source_refs"].items()
    }
    if any(
        refs.verify(row) != project / name
        for name, row in binding["source_refs"].items()
    ):
        raise ValueError("MutableReadSourcePath")
    changes = repair_sources(original)
    if refs.verify(binding["patch_ref"]).read_bytes() != source_patch(original):
        raise ValueError("MutableReadPatchIdentity")
    if require_parse and not extra <= set(binding):
        raise ValueError("MutableReadSourceParseRequired")
    if extra <= set(binding):
        path = refs.verify(binding["parse_checkpoint_ref"])
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
        pcp, parsed = (
            refs.read(binding["parse_checkpoint_ref"]),
            refs.read(binding["parse_result_ref"]),
        )
        if (
            refs.verify(binding["parse_result_ref"])
            != refs.roots["private"]
            / "nonpos-translator"
            / pcp["attempt_id"]
            / "result.json"
        ):
            raise ValueError("MutableReadSourceParsePath")
        expected = {
            name: dict(bytes=len(raw), sha256=hashlib.sha256(raw).hexdigest())
            for name, raw in changes.items()
        }
        rows = parsed.get("commands", [])
        if (
            pcp["stage_outcome"] != "succeeded"
            or pcp["source_validation_error"] is not None
            or parsed.get("source_subject_ref") != pcp["source_subject_ref"]
            or parsed.get("format") != "core036.mutable-read-source-parse-result.v2"
            or parsed.get("source_syntax_checked") is not True
            or parsed.get("original_sources_unchanged") is not True
            or parsed.get("source_typecheck") != "not_run"
            or parsed.get("translator_build") != "not_run"
            or parsed.get("native_proof") != "unestablished"
            or parsed.get("feature_complete") is not False
            or parsed.get("prospective_sources") != expected
            or len(rows) != 3
            or {row["label"] for row in rows} != set(changes)
            or any(
                type(row["exit_code"]) is not int
                or row["exit_code"] != 0
                or row["timed_out"]
                for row in rows
            )
        ):
            raise ValueError("MutableReadSourceIncompleteParse")
        if refs.read(parsed["binding_ref"]) != {
            k: v for k, v in binding.items() if k not in extra
        }:
            raise ValueError("MutableReadSourceParseBinding")
    return binding, changes
