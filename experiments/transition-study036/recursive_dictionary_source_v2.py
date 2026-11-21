"""Prospective source-directed singleton dictionary lowering, never a native proof."""

import difflib
import hashlib

from recursive_dictionary_probe_v2 import AUDITED_ROOTS, CONTROL_CODES

CODES = {**CONTROL_CODES, "fresh-kernel": 0}
ROOTS = AUDITED_ROOTS


def validate_mechanism(cp, result):
    if (
        cp.get("stage_outcome") != "succeeded"
        or cp.get("source_validation_error") is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or result.get("format") != "core036.recursive-dictionary-control-result.v2"
        or result.get("source_subject_ref") != cp.get("source_subject_ref")
        or result.get("all_control_outcomes_matched") is not True
        or result.get("fresh_kernel") != "passed"
        or result.get("native_proof") != "unestablished"
        or result.get("feature_complete") is not False
        or result.get("generated_type_and_function_bodies_unmodified") is not True
    ):
        raise ValueError("RecursiveDictionaryMechanismContext")
    rows = result.get("commands", [])
    if (
        len(rows) != len(CODES)
        or {row.get("module") for row in rows}
        != {"WorkerEntrypointsNames." + label for label in CODES}
        or any(
            type(row.get("exit_code")) is not int
            or type(row.get("expected_exit_code")) is not int
            or row["exit_code"] != CODES[row["module"].rsplit(".", 1)[-1]]
            or row["expected_exit_code"] != row["exit_code"]
            or row.get("timed_out") is not False
            for row in rows
        )
    ):
        raise ValueError("RecursiveDictionaryMechanismCommands")
    audit = result.get("selected_model_theorem_audit", [])
    if (
        len(audit) != len(ROOTS)
        or {row.get("declaration") for row in audit} != ROOTS
        or any(
            not row.get("type_repr")
            or any(
                axiom.get("name") not in {"propext", "Classical.choice", "Quot.sound"}
                or not axiom.get("type_repr")
                for axiom in row.get("axioms", [])
            )
            for row in audit
        )
    ):
        raise ValueError("RecursiveDictionaryMechanismAudit")


# Context-local state: no global mutable printer flag or generated-text edits.
CONTEXT = """  dictionary_lifting :
    (Pure.trait_impl * PureUtils.FunLoopIdSet.t * string) option;
"""
HELPERS = """let dictionary_lifted_function ctx id lp =
  match ctx.dictionary_lifting with
  | Some (_, ids, _) -> PureUtils.FunLoopIdSet.mem (id, lp) ids
  | None -> false

let dictionary_helper_name name = name ^ ".__core036_with_dictionary"

"""
GET_FUNCTION = """let ctx_get_function (span : Meta.span) (id : fun_id) (ctx : extraction_ctx) :
    string =
  let name = ctx_get (Some span) (FunId id) ctx in
  match (id, ctx.dictionary_lifting) with
  | FromLlbc (Pure.FunId fid, lp), Some (_, ids, argument)
    when PureUtils.FunLoopIdSet.mem (fid, lp) ids ->
      "(" ^ dictionary_helper_name name ^ " " ^ argument ^ ")"
  | _ -> name
"""
GET_LOCAL = """let ctx_get_local_function (span : Meta.span) (id : A.FunDeclId.id)
    (lp : (LoopId.id * bool) option) (ctx : extraction_ctx) : string =
  let name = ctx_get (Some span) (FunId (FromLlbc (Pure.FunId id, lp))) ctx in
  if dictionary_lifted_function ctx id lp then dictionary_helper_name name
  else name
"""
COLLECT = """(** Concrete dictionaries are dependencies even when passed to another method. *)
let compute_body_trait_deps (e : texpr) : TraitImplId.TreeSet.t =
  let ids = ref TraitImplId.TreeSet.empty in
  let visitor = object
    inherit [_] iter_expr
    method! visit_trait_impl_id _ id = ids := TraitImplId.TreeSet.add id !ids
  end in
  visitor#visit_texpr () e;
  !ids

"""
BINDER = """  (* The synthetic binder precedes the unchanged original generics/inputs.
     Reserve its name before the normal binder/name allocator runs. *)
  let ctx =
    if dictionary_lifted_function ctx def.def_id def.loop_id then
      match ctx.dictionary_lifting with
      | Some (impl, _, argument) ->
          F.pp_print_string fmt ("(" ^ argument ^ " : ");
          extract_trait_decl_ref span ctx fmt TypeDeclId.TreeSet.empty
            ~inside:false impl.impl_trait;
          F.pp_print_string fmt ")";
          F.pp_print_space fmt ();
          ctx_reserve_names [argument] ctx
      | None -> failwith "DictionaryLiftingMissingContext"
    else ctx
  in
"""
CANDIDATES = """(** Source-directed narrow lowering: one monomorphic NonPos dictionary and
    its acyclic method/loop helper graph. Other forms retain their existing
    handling; this pass does not claim support for general mixed recursion. *)
let dictionary_lifting_candidates (ctx : gen_ctx) =
  if Config.backend () <> Lean then [] else
  TraitImplId.Map.bindings ctx.trans_trait_impls
  |> List.filter_map (fun (impl_id, (impl : Pure.trait_impl)) ->
      if impl.generics <> PureUtils.empty_generic_params
         || impl.parent_trait_refs <> [] || impl.types <> [] || impl.consts <> []
         || not (Extract.trait_decl_is_nonpos ctx impl.impl_trait.trait_decl_id)
         || trait_impl_is_builtin ctx impl_id then None
      else match impl.methods with
      | [(_, _, method_ref)] ->
          begin match ExtractBase.ctx_lookup_fun_decl_info ctx method_ref.binder_value.fun_id with
          | None -> None
          | Some trans ->
              let decls = trans.loops @ trans.bodies @ [trans.f] in
              let self_ref = List.exists (fun (f : Pure.fun_decl) ->
                match f.body with
                | None -> false
                | Some b -> TraitImplId.TreeSet.mem impl_id
                    (ReorderDecls.compute_body_trait_deps b.body)) decls in
              if not self_ref then None else (
                if List.exists (fun (f : Pure.fun_decl) -> Option.is_none f.body) decls
                   || List.exists fst (ReorderDecls.group_reorder_fun_decls decls)
                then failwith "DictionaryLiftingRequiresAcyclicTransparentHelpers";
                let ids = PureUtils.FunLoopIdSet.of_list
                    (List.map (fun (f : Pure.fun_decl) -> f.def_id, f.loop_id) decls) in
                List.iter (fun (f : Pure.fun_decl) ->
                  let name = ExtractBase.ctx_get_local_function f.item_meta.span
                      f.def_id f.loop_id ctx |> ExtractBase.dictionary_helper_name in
                  if Collections.StringSet.mem name ctx.names_maps.names_map.names_set
                  then failwith "DictionaryLiftingNameCollision") decls;
                Some (impl_id, impl, trans, ids))
          end
      | _ -> None)

"""
EXPORTERS = """  let candidates =
    if config.extract_fun_decls && config.extract_trait_impls
       && config.extract_transparent then dictionary_lifting_candidates ctx
    else []
  in
  let export_original_functions = export_functions_group fmt config ctx in
  let export_functions_group pure_ls =
    let selected = List.filter (fun (_, _, trans, _) ->
      List.exists (fun pf -> pf.f.Pure.def_id = trans.f.Pure.def_id) pure_ls) candidates in
    match selected, pure_ls with
    | [], _ -> export_original_functions pure_ls
    | [(_, impl, trans, ids)], [_] ->
        let lifted_ctx = {ctx with dictionary_lifting =
          Some (impl, ids, "core036RecursiveDictionary")} in
        export_functions_group fmt config lifted_ctx [trans]
    | _ -> failwith "DictionaryLiftingRequiresSingletonMethodGroup"
  in
  let export_global = export_global fmt config ctx in
  let export_types_group = export_types_group fmt config ctx in
  let export_trait_decl_group = export_trait_decl_group fmt config ctx in
  let export_trait_impl ~is_rec id =
    match List.find_opt (fun (impl_id, _, _, _) -> impl_id = id) candidates with
    | None -> export_trait_impl fmt config ctx ~is_rec id
    | Some (_, impl, trans, ids) ->
        let argument = ExtractBase.ctx_get_trait_impl impl.item_meta.span id ctx in
        let lifted_ctx = {ctx with dictionary_lifting = Some (impl, ids, argument)} in
        export_trait_impl fmt config lifted_ctx ~is_rec:true id;
        (* Preserve the actual original method and loop definitions. Their
           complete ASTs are emitted unchanged after the dictionary; the new
           dictionary invokes the parameterized helper copies. *)
        export_original_functions [trans]
  in
"""


def once(raw, old, new):
    if raw.count(old) != 1:
        raise ValueError("RecursiveDictionarySourceAnchor:" + old[:70])
    return raw.replace(old, new)


ORIGINAL = {
    "Translate.ml": "90c2fba80a06e85e9d85d8c52e1e29eff7e9705ef9368497eb46de1a98fb12cf",
    "extract/Extract.ml": "44c0110a8242f815c0d550cc0eb86e25ef2efa9d7da723f6e9ad94da62069b66",
    "extract/ExtractBase.ml": "69ba91a3601f5695ff61b4ddfdd4d4c2c6bf14092d426e860a492b39c8117071",
    "extract/ExtractTypes.ml": "768dd63ddce154391409d33d15a14b3b9bcc708a0174418313bcdddefab34550",
    "pure/ReorderDecls.ml": "5d885013dee579b1c708b3be8f71a811b4a25a22ec73e29d3a1eecc293e1b497",
}


def repair_sources(original):
    expected = ORIGINAL
    if set(original) != set(expected) or any(
        hashlib.sha256(raw).hexdigest() != expected[name]
        for name, raw in original.items()
    ):
        raise ValueError("RecursiveDictionaryUnboundSource")
    changes = {name: raw.decode() for name, raw in original.items()}
    name = "extract/ExtractBase.ml"
    raw = once(
        changes[name],
        "  rec_group_trait_decls :",
        CONTEXT + "  rec_group_trait_decls :",
    )
    start = raw.index("let ctx_get_function (")
    end = raw.index("\nlet ctx_get_type (", start)
    changes[name] = raw[:start] + HELPERS + GET_FUNCTION + "\n" + GET_LOCAL + raw[end:]
    name = "pure/ReorderDecls.ml"
    changes[name] = once(
        changes[name], "type function_group =", COLLECT + "type function_group ="
    )
    name = "extract/ExtractTypes.ml"
    changes[name] = once(
        changes[name],
        "      let name = ctx_get_trait_impl span id ctx in\n",
        """      let name = match ctx.dictionary_lifting with
        | Some (impl, _, argument) when impl.def_id = id ->
            if generics <> empty_generic_args then
              failwith "DictionaryLiftingUnexpectedImplArguments";
            argument
        | _ -> ctx_get_trait_impl span id ctx
      in
""",
    )
    name = "extract/Extract.ml"
    raw = once(
        changes[name],
        """  F.pp_print_string fmt def_name;
  F.pp_print_space fmt ();
  if use_forall then (""",
        """  F.pp_print_string fmt def_name;
  F.pp_print_space fmt ();
"""
        + BINDER
        + "  if use_forall then (",
    )
    raw = once(
        raw,
        "    let fun_name = ctx_get_local_function span method_decl_id None ctx in",
        "    let fun_name = ctx_get_function span (FromLlbc (FunId method_decl_id, None)) ctx in",
    )
    changes[name] = raw
    name = "Translate.ml"
    raw = once(
        changes[name],
        "let extract_definitions (fmt : Format.formatter)",
        CANDIDATES + "let extract_definitions (fmt : Format.formatter)",
    )
    old = """  let export_functions_group = export_functions_group fmt config ctx in
  let export_global = export_global fmt config ctx in
  let export_types_group = export_types_group fmt config ctx in
  let export_trait_decl_group = export_trait_decl_group fmt config ctx in
  let export_trait_impl ~is_rec = export_trait_impl fmt config ctx ~is_rec in
"""
    raw = once(raw, old, EXPORTERS)
    changes[name] = once(
        raw,
        "      rec_group_trait_decls;\n",
        "      rec_group_trait_decls;\n      dictionary_lifting = None;\n",
    )
    return {name: raw.encode() for name, raw in changes.items()}


def source_patch(original):
    changes = repair_sources(original)
    return "".join(
        "".join(
            difflib.unified_diff(
                original[name].decode().splitlines(keepends=True),
                changes[name].decode().splitlines(keepends=True),
                fromfile="a/" + name,
                tofile="b/" + name,
            )
        )
        for name in sorted(changes)
    ).encode()


def checked_lowering(refs, binding_ref):
    """Authenticate the mechanism evidence and exact prospective source patch."""
    from artifact_io import RootRegistry

    binding = refs.read(binding_ref)
    if (
        set(binding)
        not in (
            {
                "format",
                "checkpoint_ref",
                "result_ref",
                "selection_ref",
                "source_refs",
                "patch_ref",
            },
            {
                "format",
                "checkpoint_ref",
                "result_ref",
                "selection_ref",
                "source_refs",
                "patch_ref",
                "parse_checkpoint_ref",
                "parse_result_ref",
            },
        )
        or binding["format"] != "core036.recursive-dictionary-source.v2"
    ):
        raise ValueError("RecursiveDictionarySourceBinding")
    cp_path = refs.verify(binding["checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(binding["checkpoint_ref"])
    result_path = refs.verify(binding["result_ref"])
    if (
        result_path
        != refs.roots["private"]
        / "ground-lean-probe"
        / cp["attempt_id"]
        / "result.json"
    ):
        raise ValueError("RecursiveDictionaryMechanismPath")
    validate_mechanism(cp, refs.read(binding["result_ref"]))
    selection = refs.read(binding["selection_ref"])
    if (
        set(selection) != {"format", "control_refs"}
        or selection["format"] != "core036.recursive-dictionary-control.v2"
    ):
        raise ValueError("RecursiveDictionaryFrozenSelection")
    frozen = refs.read(cp["source_subject_ref"])["files"]
    for reference in [binding["selection_ref"], *selection["control_refs"].values()]:
        matches = [row for row in frozen if row["logical_ref"] == reference]
        if (
            len(matches) != 1
            or refs.verify(matches[0]["snapshot_ref"]).read_bytes()
            != refs.verify(reference).read_bytes()
        ):
            raise ValueError("RecursiveDictionaryFrozenControl")
    configs = [
        row
        for row in frozen
        if row["logical_ref"]["root_id"] == "repository"
        and row["logical_ref"]["path"]
        == "experiments/transition-study036/ground-lean-probe-inputs-v2.json"
    ]
    if (
        len(configs) != 1
        or refs.read(configs[0]["snapshot_ref"]).get("dictionary_diagnostic_ref")
        != binding["selection_ref"]
    ):
        raise ValueError("RecursiveDictionarySelectedControl")
    original = {
        name: refs.verify(reference).read_bytes()
        for name, reference in binding["source_refs"].items()
    }
    changes = repair_sources(original)
    if refs.verify(binding["patch_ref"]).read_bytes() != source_patch(original):
        raise ValueError("RecursiveDictionaryPatchIdentity")
    if "parse_checkpoint_ref" in binding:
        parse_path = refs.verify(binding["parse_checkpoint_ref"])
        RootRegistry({"attempt": parse_path.parent}).verify_closed("attempt")
        parse_cp = refs.read(binding["parse_checkpoint_ref"])
        parse_result = refs.read(binding["parse_result_ref"])
        if (
            refs.verify(binding["parse_result_ref"])
            != refs.roots["private"]
            / "nonpos-translator"
            / parse_cp["attempt_id"]
            / "result.json"
        ):
            raise ValueError("RecursiveDictionaryParseResultPath")
        validate_source_parse(parse_cp, parse_result, changes)
        original_binding = {
            key: value
            for key, value in binding.items()
            if key not in {"parse_checkpoint_ref", "parse_result_ref"}
        }
        if refs.read(parse_result["binding_ref"]) != original_binding:
            raise ValueError("RecursiveDictionaryParseSourceBinding")
    return binding, changes


def validate_source_parse(cp, result, changes):
    rows = result.get("commands", [])
    expected = {
        name: dict(bytes=len(raw), sha256=hashlib.sha256(raw).hexdigest())
        for name, raw in changes.items()
    }
    if (
        cp.get("stage_outcome") != "succeeded"
        or cp.get("source_validation_error") is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or result.get("source_subject_ref") != cp.get("source_subject_ref")
        or result.get("format") != "core036.dictionary-source-parse-result.v2"
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
        raise ValueError("RecursiveDictionaryIncompleteParse")
