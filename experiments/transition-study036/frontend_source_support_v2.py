"""Narrow source-bound Lean emitter corrections; no generated-body rewrites."""

import difflib
import hashlib

FRONTEND_CODES = {
    "Old-ocaml": 0,
    "Old-emit-strings": 0,
    "OldStrings": 1,
    "Old-emit-layout": 0,
    "OldLayout": 1,
    "New-ocaml": 0,
    "New-emit-strings": 0,
    "NewStrings": 0,
    "NewStrings-kernel": 0,
    "New-emit-layout": 0,
    "NewLayout": 0,
    "NewLayout-kernel": 0,
}

ORIGINAL = {
    "Translate.ml": "e9cecbb819fc6c62d9173501d0c18625a3b2a990683c3610ba64e2069dbaaa2b",
    "extract/ExtractTypes.ml": "d2cf448a2933e89a6d9784ca11c5b1f0980289d64349b1e731683ba97d7126fe",
}

GEOMETRY = """  (match Config.backend () with
  | Lean ->
      Format.pp_set_geometry fmt
        ~max_indent:(Format.pp_infinity - 2)
        ~margin:(Format.pp_infinity - 1)
  | _ -> Format.pp_set_margin fmt 80);
"""

LEAN_LITERAL = r"""let extract_pure_string (fmt : F.formatter) (s : string) : unit =
  let escaped =
    if backend () = Lean then (
      let buffer = Buffer.create (String.length s) in
      String.iter
        (fun c ->
          match c with
          | '"' -> Buffer.add_string buffer "\\\""
          | '\\' -> Buffer.add_string buffer "\\\\"
          | '\n' -> Buffer.add_string buffer "\\n"
          | '\r' -> Buffer.add_string buffer "\\r"
          | '\t' -> Buffer.add_string buffer "\\t"
          | c when Char.code c < 32 || Char.code c = 127 ->
              Buffer.add_string buffer (Printf.sprintf "\\x%02x" (Char.code c))
          | c -> Buffer.add_char buffer c)
        s;
      Buffer.contents buffer)
    else
      let chars = StringUtils.string_to_chars s in
      String.concat "" (List.map Char.escaped chars)
  in
  F.pp_print_string fmt ("\"" ^ escaped ^ "\"")
"""


def literal_function(raw):
    start = b"let extract_pure_string "
    stop = b"\nlet extract_str "
    if raw.count(start) != 1 or raw.count(stop) != 1:
        raise ValueError("FrontendLiteralContext")
    return raw[raw.index(start) : raw.index(stop)].rstrip() + b"\n"


def geometry_statement(raw):
    start = b"  (* Set the margin *)\n"
    stop = b"\n  (* Create a vertical box *)"
    if raw.count(start) != 1 or raw.count(stop) != 1:
        raise ValueError("FrontendGeometryContext")
    return raw[raw.index(start) + len(start) : raw.index(stop)].strip().rstrip(b";")


def repair_sources(original):
    if set(original) != set(ORIGINAL) or any(
        hashlib.sha256(original[name]).hexdigest() != checksum
        for name, checksum in ORIGINAL.items()
    ):
        raise ValueError("FrontendUnboundSource")
    margin = b"  Format.pp_set_margin fmt 80;\n"
    if original["Translate.ml"].count(margin) != 1:
        raise ValueError("FrontendMarginContext")
    literal = literal_function(original["extract/ExtractTypes.ml"])
    return {
        "Translate.ml": original["Translate.ml"].replace(margin, GEOMETRY.encode()),
        "extract/ExtractTypes.ml": original["extract/ExtractTypes.ml"].replace(
            literal, LEAN_LITERAL.encode()
        ),
    }


def source_patch(original):
    repaired = repair_sources(original)
    return "".join(
        "".join(
            difflib.unified_diff(
                original[name].decode().splitlines(keepends=True),
                repaired[name].decode().splitlines(keepends=True),
                fromfile="a/" + name,
                tofile="b/" + name,
            )
        )
        for name in sorted(original)
    ).encode()


def validate_diagnostic(checkpoint, result, patch):
    commands = result.get("commands", [])
    if (
        checkpoint.get("stage_outcome") != "succeeded"
        or checkpoint.get("source_validation_error") is not None
        or checkpoint.get("outcome", {}).get("operational") != "closed"
        or result.get("format") != "core036.frontend-diagnostic-result.v2"
        or result.get("source_subject_ref") != checkpoint.get("source_subject_ref")
        or result.get("passed") is not True
        or result.get("native_proof") != "unestablished"
        or result.get("feature_complete") is not False
        or result.get("patch_ref") != patch
        or result.get("original_sources_unchanged") is not True
        or result.get("generated_bodies_unmodified") is not True
        or len(commands) != len(FRONTEND_CODES)
        or {row.get("label") for row in commands} != set(FRONTEND_CODES)
        or any(
            type(row.get("exit_code")) is not int
            or row["exit_code"] != FRONTEND_CODES[row["label"]]
            or row.get("timed_out") is not False
            for row in commands
        )
    ):
        raise ValueError("FrontendIncompleteDiagnostic")


def checked_frontend(refs, binding_ref):
    from artifact_io import RootRegistry

    binding = refs.read(binding_ref)
    if (
        set(binding)
        != {"format", "checkpoint_ref", "result_ref", "patch_ref", "selection_ref"}
        or binding["format"] != "core036.validated-frontend.v2"
    ):
        raise ValueError("FrontendValidationBinding")
    cp_path = refs.verify(binding["checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(binding["checkpoint_ref"])
    result = refs.read(binding["result_ref"])
    validate_diagnostic(cp, result, binding["patch_ref"])
    selection = refs.read(binding["selection_ref"])
    if (
        result["selection_ref"] != binding["selection_ref"]
        or result["source_refs"] != selection["source_refs"]
        or result["patch_ref"] != selection["patch_ref"]
    ):
        raise ValueError("FrontendValidationSelection")
    frozen = refs.read(cp["source_subject_ref"])["files"]
    for reference in (
        binding["patch_ref"],
        binding["selection_ref"],
        *selection["source_refs"].values(),
    ):
        matches = [row for row in frozen if row["logical_ref"] == reference]
        if len(matches) != 1:
            raise ValueError("FrontendValidationFrozenSource")
        if (
            refs.verify(matches[0]["snapshot_ref"]).read_bytes()
            != refs.verify(reference).read_bytes()
        ):
            raise ValueError("FrontendValidationChangedSource")
    original = {
        name: refs.verify(reference).read_bytes()
        for name, reference in selection["source_refs"].items()
    }
    if refs.verify(binding["patch_ref"]).read_bytes() != source_patch(original):
        raise ValueError("FrontendValidationPatchBytes")
    return binding, repair_sources(original)
