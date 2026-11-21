"""Run source-derived OCaml emitters and independent Lean regression controls."""

import os
from pathlib import Path
import resource

from artifact_io import RootRegistry, digest, write_once
from frontend_source_support_v2 import (
    ORIGINAL,
    geometry_statement,
    literal_function,
    repair_sources,
    source_patch,
)
from lean_command_v2 import run_logged_command


def ocaml_bytes(raw):
    return '"' + "".join("\\%03d" % value for value in raw) + '"'


def emitter_program(sources, cases):
    """Copy actual emitter/geometry; surrounding layout fixture is diagnostic."""
    header = b"""module F = Format
module Config = struct
  type target = Lean | Other
  let backend () = Lean
end
open Config
module StringUtils = struct
  let string_to_chars s = List.init (String.length s) (String.get s)
end
"""
    fixture = r"""
let rec nested fmt depth =
  if depth = 0 then Format.pp_print_string fmt "0"
  else (
    Format.pp_open_vbox fmt 0;
    Format.pp_open_hovbox fmt 2;
    Format.pp_print_string fmt "match x with";
    Format.pp_close_box fmt ();
    Format.pp_print_space fmt ();
    Format.pp_open_vbox fmt 2;
    Format.pp_open_hovbox fmt 2;
    Format.pp_print_string fmt "| VeryLongQualifiedNamespace.ControlFlow.Continue";
    Format.pp_print_space fmt ();
    Format.pp_print_string fmt "_next =>";
    Format.pp_close_box fmt ();
    Format.pp_print_space fmt ();
    nested fmt (depth - 1);
    Format.pp_close_box fmt ();
    Format.pp_print_space fmt ();
    Format.pp_print_string fmt "| VeryLongQualifiedNamespace.ControlFlow.Break => 1";
    Format.pp_close_box fmt ())

let emit_layout () =
  print_endline "namespace VeryLongQualifiedNamespace";
  print_endline "inductive ControlFlow where | Continue : Nat → ControlFlow | Break : ControlFlow";
  print_endline "end VeryLongQualifiedNamespace";
  List.iter (fun depth ->
    let fmt = Format.std_formatter in
    set_geometry fmt;
    Format.pp_open_vbox fmt 2;
    Format.fprintf fmt "def layout%d (x : VeryLongQualifiedNamespace.ControlFlow) : Nat :=" depth;
    Format.pp_print_space fmt ();
    nested fmt depth;
    Format.pp_close_box fmt ();
    Format.pp_print_newline fmt ();
    Printf.printf "theorem continue%d : layout%d (.Continue 7) = 0 := by rfl\n" depth depth;
    Printf.printf "theorem break%d : layout%d .Break = 1 := by rfl\n" depth depth
  ) [8; 32; 48]
"""
    strings = [
        "let emit_strings () =",
        '  print_endline "set_option maxRecDepth 4096";',
    ]
    for i, raw in enumerate(cases):
        strings.extend(
            [
                '  Printf.printf "theorem bytes%d : (";' % i,
                "  extract_pure_string Format.std_formatter (%s);" % ocaml_bytes(raw),
                "  Format.pp_print_flush Format.std_formatter ();",
                '  print_endline ").toUTF8.data.toList.map UInt8.toNat = [%s] := by decide";'
                % ", ".join(map(str, raw)),
            ]
        )
    strings.append("  ()")
    return (
        header
        + literal_function(sources["extract/ExtractTypes.ml"])
        + b"\nlet set_geometry fmt =\n"
        + geometry_statement(sources["Translate.ml"])
        + b"\n"
        + fixture.encode()
        + "\n".join(strings).encode()
        + b'\nlet () = if Sys.argv.(1) = "strings" then emit_strings () else emit_layout ()\n'
    )


def run_frontend_diagnostic(*, refs, config, generated, prefix, declaration, out):
    selection = refs.read(config["frontend_diagnostic_ref"])
    if (
        set(selection)
        != {
            "format",
            "translator_ref",
            "translator_checkpoint_ref",
            "source_refs",
            "literal_cases_hex",
            "patch_ref",
        }
        or selection["format"] != "core036.frontend-diagnostic.v2"
    ):
        raise ValueError("FrontendDiagnosticSelection")
    cp_path = refs.verify(selection["translator_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["translator_checkpoint_ref"])
    translator = refs.read(selection["translator_ref"])
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or translator["source_subject_ref"] != cp["source_subject_ref"]
        or not translator["new_translator_compiled"]
        or not translator["compiled_sources_match_declared_repair"]
        or digest(translator["executable"]) != translator["executable_sha256"]
        or set(selection["source_refs"]) != set(ORIGINAL)
    ):
        raise ValueError("FrontendDiagnosticTranslator")
    source_root = Path(translator["project"])
    original = {}
    for name, reference in selection["source_refs"].items():
        path = refs.verify(reference)
        if (
            path != source_root / name
            or digest(path) != ORIGINAL[name]
            or digest(source_root / "_build/default" / name) != ORIGINAL[name]
        ):
            raise ValueError("FrontendDiagnosticCompiledSource")
        original[name] = path.read_bytes()
    candidate = repair_sources(original)
    patch = refs.verify(selection["patch_ref"])
    if patch.read_bytes() != source_patch(original):
        raise ValueError("FrontendDiagnosticPatch")
    dependencies = refs.read(translator["dependencies_ref"])
    compiler = refs.read(dependencies["compiler_ref"])
    ocamlc = compiler["ocamlc"]
    if digest(ocamlc) != compiler["ocamlc_sha256"]:
        raise ValueError("FrontendDiagnosticCompiler")
    cases = [bytes.fromhex(value) for value in selection["literal_cases_hex"]]
    if not 1 <= len(cases) <= 16 or sum(map(len, cases)) > 16384:
        raise ValueError("FrontendDiagnosticCaseBound")
    for raw in cases:
        raw.decode("utf-8", errors="strict")
    analysis = refs.read(
        refs.reference("private", "analysis-lean-recheck/a0053/result.json")
    )
    sdk = Path(analysis["sdk"])
    limit = declaration["profile"]["limits"]["lean_address_space_bytes"]
    if limit != 8 * 1024**3:
        raise ValueError("FrontendDiagnosticDeclaredAS")
    out.mkdir(parents=True)
    project = out / "project"
    compiled = out / "compiled"
    project.mkdir()
    compiled.mkdir()
    env = {**os.environ, **analysis["environment"], "LEAN_PATH": str(compiled)}
    env.pop("LD_PRELOAD", None)
    for key in list(env):
        if key.startswith(("OCAML", "CAML")):
            env.pop(key)

    def constrain():
        resource.setrlimit(resource.RLIMIT_AS, (limit, limit))

    commands = []

    def run(name, argv, expected=0):
        row = run_logged_command(
            out / "commands" / name,
            argv,
            cwd=project,
            env=env,
            seconds=120,
            preexec_fn=constrain,
            metadata={"label": name, "expected_exit_code": expected},
        )
        commands.append(row)
        return row

    setup_ok = True
    expected_rejections = []
    for label, sources in (("Old", original), ("New", candidate)):
        program = project / (label + ".ml")
        executable = project / (label + "-emitter")
        write_once(program, emitter_program(sources, cases))
        if (
            run(label + "-ocaml", [ocamlc, "-o", str(executable), str(program)])[
                "exit_code"
            ]
            != 0
        ):
            setup_ok = False
            break
        for kind in ("strings", "layout"):
            emit_name = label + "-emit-" + kind
            if run(emit_name, [str(executable), kind])["exit_code"] != 0:
                setup_ok = False
                break
            module = label + kind.capitalize()
            lean = project / (module + ".lean")
            write_once(lean, (out / "commands" / emit_name / "stdout.txt").read_bytes())
            result = run(
                module,
                [
                    str(sdk / "bin/lean"),
                    "-j1",
                    "-M4096",
                    "-R",
                    str(project),
                    "-o",
                    str(compiled / (module + ".olean")),
                    str(lean),
                ],
                expected=1 if label == "Old" else 0,
            )
            if label == "Old":
                output = (out / "commands" / module / "stdout.txt").read_text()
                expected_rejections.append(
                    result["exit_code"] == 1
                    and "error:" in output
                    and "unexpected" in output
                    and "unknown module" not in output
                )
            elif result["exit_code"] == 0:
                run(
                    module + "-kernel",
                    [str(sdk / "bin/leanchecker"), "--fresh", module],
                )
        if not setup_ok:
            break
    for name, reference in selection["source_refs"].items():
        if refs.verify(reference).read_bytes() != original[name]:
            raise ValueError("FrontendDiagnosticInputChanged")
    for path, row in generated.values():
        if digest(path) != row["sha256"]:
            raise ValueError("FrontendDiagnosticGeneratedInputChanged")
    passed = (
        setup_ok
        and len(commands) == 12
        and len(expected_rejections) == 2
        and all(expected_rejections)
        and all(row["exit_code"] == row["expected_exit_code"] for row in commands)
    )
    write_once(
        out / "result.json",
        dict(
            format="core036.frontend-diagnostic-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=config["frontend_diagnostic_ref"],
            source_refs=selection["source_refs"],
            patch_ref=selection["patch_ref"],
            generated_module_prefix=prefix,
            original_sources_unchanged=True,
            generated_bodies_unmodified=True,
            commands=commands,
            passed=passed,
            literal_case_count=len(cases),
            layout_fixture_scope="Handwritten regression using exact actual formatter geometry; complete original emitter/retranslation still required",
            literal_fixture_scope="Actual source-derived extract_pure_string function; finite UTF-8 cases only",
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    return 0 if passed else 1
