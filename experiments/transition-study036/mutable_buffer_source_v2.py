"""Call-only Read receiver plus moved byte slice; historical A stays immutable."""

import difflib
import hashlib
from pathlib import Path

from artifact_io import RootRegistry

ORIGINAL = {
    "interp/InterpExpressions.ml": "49ab2795c14d39df44a53df5165ff098b2d0572b992c40637b609c14ca174aba",
    "interp/InterpExpressions.mli": "e6da2f2a640aaa96a7d63b04c7cc60da8383483fc8ac55af16907766fcec04bc",
    "interp/InterpStatements.ml": "79ec7e165786edc9790b00425241a95342c0e8d5ebf52273d9c7657e9cdcbad5",
}

EVALUATOR = """(** Call-only buffer profile: all preparation precedes both final reads and
    the fresh child borrow. General operand semantics are unchanged. *)
let eval_nonescaping_read_receiver_buffer (config : config) (span : Meta.span)
    (ops : operand list) (ctx : eval_ctx) :
    tvalue list * eval_ctx * (SymbolicAst.expr -> SymbolicAst.expr) =
  if config.mode <> SymbolicMode then
    [%craise] span "ReadBufferRequiresSymbolicCall";
  match ops with
  | [Read ({kind = PlaceLocal receiver_local;
             ty = TRef (_, referent, RMut)} as p);
     Move ({kind = PlaceLocal buffer_local;
             ty = TRef (_, TSlice (TScalar (TInteger (Unsigned U8)), None), RShared)} as q)]
      when receiver_local <> buffer_local ->
      let deref : place = {kind = PlaceProjection (p, Deref); ty = referent} in
      let ctx, cc_receiver =
        access_rplace_reorganize config span false Write deref ctx in
      let ctx, cc_buffer =
        prepare_eval_operand_reorganize config span (Move q) ctx in
      let _, value, path = read_place_check span Write deref ctx in
      let _, _, _ = read_place_check span Move q ctx in
      [%cassert] span (not (value_has_loans value.value))
        "Read buffer receiver preparation left a loan";
      let receiver, ctx = make_mut_borrow_at_path span value path ctx in
      let buffer, ctx, cc_eval_buffer =
        eval_operand_no_reorganize config span (Move q) ctx in
      ([receiver; buffer], ctx,
       cc_comp cc_receiver (cc_comp cc_buffer cc_eval_buffer))
  | _ -> [%craise] span "UnsupportedReadBufferShape"

"""

QUALIFIER = """(** Independently late-bound receiver and moved shared bytes; no mutable
    sibling, callback, borrowed output, unresolved type or region coupling. *)
let qualifies_nonescaping_read_receiver_buffer (ctx : eval_ctx)
    (call_info : symbolic_fun_call_inst) (args : operand list) : bool =
  let signature = call_info.call_sig in
  let params = signature.item_binder_params in
  let sg = signature.item_binder_value in
  let named_decl (tref : type_decl_ref) path =
    tref.builtin = None &&
    match TypeDeclId.Map.find_opt tref.id ctx.crate.type_decls with
    | Some (decl : type_decl) ->
        not decl.item_meta.has_errors && decl.item_meta.name = to_name path
    | None -> false
  in
  let args_except_types_empty (g : generic_args) =
    g.regions = [] && g.const_generics = [] && g.trait_refs = []
  in
  let owned_io_result ty =
    match ty with
    | TAdt result ->
        named_decl result ["core"; "result"; "Result"] &&
        args_except_types_empty result.generics &&
        begin match result.generics.types with
        | [TScalar (TInteger (Unsigned Usize)); TAdt error] ->
            named_decl error ["core"; "io"; "error"; "Error"] &&
            args_except_types_empty error.generics && error.generics.types = []
        | _ -> false
        end
    | _ -> false
  in
  match call_info.call_kind, sg.inputs, args, params.types with
  | TraitMethod (trait_ref, _),
    [TRef (RVar (Free receiver_id), (TVar (Free self_id) as self_ty), RMut);
     TRef (RVar (Free buffer_id),
           (TSlice (TScalar (TInteger (Unsigned U8)), None) as bytes_ty), RShared)],
    [Read ({kind = PlaceLocal receiver_local; ty = TRef (_, _, RMut)} as p);
     Move ({kind = PlaceLocal buffer_local; ty = TRef (_, _, RShared)} as q)],
    [self_param] when receiver_id <> buffer_id && receiver_local <> buffer_local ->
      let region_params_ok =
        List.length params.regions = 2 &&
        List.for_all (fun id ->
          List.length (List.filter (fun (region : region_param) ->
            region.index = id && region.late_bound) params.regions) = 1)
          [receiver_id; buffer_id]
      in
      let params_ok = ref true in
      let visitor = object
        inherit [_] iter_ty as super
        method! visit_region _ = function
          | RStatic -> ()
          | _ -> params_ok := false
        method! visit_region_param _ _ = params_ok := false
        method! visit_ty env ty =
          match ty with
          | TVar (Free id) when id = self_id -> super#visit_ty env ty
          | TVar _ | TTraitType _ | TDynTrait _ | TFnPtr _ | TFnDef _
          | TPtrMetadata _ | TPattern _ | TError _ | TRawPtr _ -> params_ok := false
          | _ -> super#visit_ty env ty
      end in
      visitor#visit_generic_params () {params with regions = []; outlives = []};
      let outlives_ok predicate =
        predicate.binder_regions = [] && predicate.outlives = [] &&
        match predicate.binder_value with
        | RLub ty, RVar (Free id) ->
            (ty = self_ty && id = receiver_id) ||
            (ty = bytes_ty && id = buffer_id)
        | _ -> false
      in
      let inst = call_info.call_inst_sig in
      let instance_ok =
        match inst.inputs, trait_ref.trait_decl_ref.generics.types with
        | [TRef ((RVar (Free _) as r), referent, RMut) as input;
           TRef ((RVar (Free _) as b), TSlice (TScalar (TInteger (Unsigned U8)), None), RShared) as buffer],
          [trait_self] when r <> b ->
            let captures = ref false in
            let visitor = object
              inherit [_] iter_ty as super
              method! visit_region _ region =
                match region with
                | RStatic -> ()
                | RVar (Free _) -> if region = r || region = b then captures := true
                | _ -> captures := true
              method! visit_region_param _ _ = captures := true
              method! visit_ty env ty =
                match ty with
                | TVar (Free _) -> super#visit_ty env ty
                | TVar _ | TTraitType _ | TDynTrait _ | TFnPtr _ | TFnDef _
                | TPtrMetadata _ | TPattern _ | TError _ | TRawPtr _ -> captures := true
                | _ -> super#visit_ty env ty
            end in
            visitor#visit_ty () referent;
            visitor#visit_ty () inst.output;
            let groups = inst.abs_regions_hierarchy in
            let receiver_groups = List.filter (fun (g : abs_region_group) -> g.regions = [r]) groups in
            let buffer_groups = List.filter (fun (g : abs_region_group) -> g.regions = [b]) groups in
            let groups_ok = match receiver_groups, buffer_groups with
            | [rg], [bg] when rg.id <> bg.id && rg.parents = [] && bg.parents = [] ->
                let ids = List.map (fun (g : abs_region_group) -> g.id) groups in
                List.length (List.sort_uniq Stdlib.compare ids) = List.length ids &&
                List.length groups >= 2 && List.length groups <= 3 &&
                List.for_all (fun (g : abs_region_group) ->
                  g.id = rg.id || g.id = bg.id ||
                  (g.regions = [RStatic] &&
                   List.length (List.sort_uniq Stdlib.compare g.parents) = List.length g.parents &&
                   List.for_all (fun id -> id = rg.id || id = bg.id) g.parents)) groups
            | _ -> false
            in
            not !captures && groups_ok &&
            ty_erase_regions referent = ty_erase_regions trait_self &&
            ty_erase_regions input = ty_erase_regions p.ty &&
            ty_erase_regions buffer = ty_erase_regions q.ty &&
            owned_io_result inst.output
        | _ -> false
      in
      not sg.is_unsafe && sg.abi = AbiRust && not sg.is_variadic &&
      region_params_ok && self_param.index = self_id &&
      params.const_generics = [] && params.trait_type_constraints = [] &&
      !params_ok && List.for_all outlives_ok params.outlives &&
      owned_io_result sg.output && instance_ok
  | _ -> false

"""


def _replace(raw, anchor, replacement):
    if raw.count(anchor) != 1:
        raise ValueError("MutableBufferSourceAnchor")
    return raw.replace(anchor, replacement)


def repair_sources(original):
    if set(original) != set(ORIGINAL) or any(
        hashlib.sha256(raw).hexdigest() != ORIGINAL[name]
        for name, raw in original.items()
    ):
        raise ValueError("MutableBufferSourceIdentity")
    changed = {name: raw.decode() for name, raw in original.items()}
    name = "interp/InterpExpressions.ml"
    changed[name] = _replace(
        changed[name], "let eval_two_operands", EVALUATOR + "let eval_two_operands"
    )
    name = "interp/InterpExpressions.mli"
    anchor = "(** Evaluate an rvalue which is not a global"
    addition = """(** Call-only owned-IO-result profile with moved shared byte buffer. *)
val eval_nonescaping_read_receiver_buffer :
  config -> Meta.span -> operand list -> eval_ctx ->
  tvalue list * eval_ctx * (SymbolicAst.expr -> SymbolicAst.expr)

"""
    changed[name] = _replace(changed[name], anchor, addition + anchor)
    name = "interp/InterpStatements.ml"
    raw = _replace(
        changed[name],
        "(** Auxiliary helper for [eval_function_call_symbolic] Instantiate the signature",
        QUALIFIER
        + "(** Auxiliary helper for [eval_function_call_symbolic] Instantiate the signature",
    )
    raw = _replace(
        raw,
        "| [TRef (RVar (Free _), _, RMut) as input], [group] ->\n            group.parents = [] &&",
        "| [TRef ((RVar (Free _) as r), _, RMut) as input], [group] ->\n            group.regions = [r] && group.parents = [] &&",
    )
    raw = _replace(
        raw,
        '    else eval_operands config span args ctx\n  in\n\n  [%ldebug\n    "- args:',
        '    else if qualifies_nonescaping_read_receiver_buffer ctx call_info args then\n      eval_nonescaping_read_receiver_buffer config span args ctx\n    else eval_operands config span args ctx\n  in\n\n  [%ldebug\n    "- args:',
    )
    changed[name] = raw
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
        "receiver_source_ref",
    }
    extra = {"parse_checkpoint_ref", "parse_result_ref"}
    if (
        set(binding) not in (base, base | extra)
        or binding["format"] != "core036.mutable-buffer-source.v2"
    ):
        raise ValueError("MutableBufferSourceBinding")
    cp_path = refs.verify(binding["baseline_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp, baseline = (
        refs.read(binding["baseline_checkpoint_ref"]),
        refs.read(binding["baseline_result_ref"]),
    )
    if (
        cp["attempt_id"] != "a0395"
        or cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or refs.verify(binding["baseline_result_ref"])
        != refs.roots["private"] / "nonpos-translator/a0395/result.json"
        or baseline["source_subject_ref"] != cp["source_subject_ref"]
        or baseline["new_translator_compiled"] is not True
        or baseline["compiled_sources_match_declared_repair"] is not True
        or baseline["mutable_read_binding_ref"] != binding["receiver_source_ref"]
    ):
        raise ValueError("MutableBufferSourceBaseline")
    from mutable_read_source_v2 import checked_sources as checked_receiver

    _, receiver_changes = checked_receiver(
        refs, binding["receiver_source_ref"], require_parse=True
    )
    project = Path(baseline["project"])
    original = {
        name: refs.verify(row).read_bytes()
        for name, row in binding["source_refs"].items()
    }
    if (
        any(
            refs.verify(row) != project / name
            for name, row in binding["source_refs"].items()
        )
        or original != receiver_changes
    ):
        raise ValueError("MutableBufferSourcePath")
    changes = repair_sources(original)
    if refs.verify(binding["patch_ref"]).read_bytes() != source_patch(original):
        raise ValueError("MutableBufferPatchIdentity")
    if require_parse and not extra <= set(binding):
        raise ValueError("MutableBufferSourceParseRequired")
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
            raise ValueError("MutableBufferSourceParsePath")
        expected = {
            name: dict(bytes=len(raw), sha256=hashlib.sha256(raw).hexdigest())
            for name, raw in changes.items()
        }
        rows = parsed.get("commands", [])
        if (
            pcp["stage_outcome"] != "succeeded"
            or pcp["source_validation_error"] is not None
            or parsed.get("source_subject_ref") != pcp["source_subject_ref"]
            or parsed.get("format") != "core036.mutable-buffer-source-parse-result.v2"
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
            raise ValueError("MutableBufferSourceIncompleteParse")
        if refs.read(parsed["binding_ref"]) != {
            k: v for k, v in binding.items() if k not in extra
        }:
            raise ValueError("MutableBufferSourceParseBinding")
    return binding, changes
