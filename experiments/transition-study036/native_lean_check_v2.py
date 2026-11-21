"""Check unchanged generated Rust bodies with an explicit unproved generic map model."""

import argparse
import json
import os
import shutil
import subprocess
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_analysis_v2

E = Path(__file__).resolve().parent
R = E.parents[1]
ID_AUDIT = 'import Views.NativeViewsBasic\nimport Lean\nimport Lean.Util.CollectAxioms\nopen Lean Elab Command Term Meta\nelab "#finite_id_audit" : command => do\n  let reports ← liftTermElabM do\n    let roots := #[``Correspondence036.FiniteNativeIds.decode_injective,\n                   ``Correspondence036.FiniteNativeIds.decode_surjective,\n                   ``Correspondence036.FiniteNativeIds.decode_encode,\n                   ``Correspondence036.FiniteNativeIds.encode_decode,\n                   ``Correspondence036.FiniteNativeIds.lookup_transport]\n    let a ← `((∀ {Key : Type} (e : Correspondence036.FiniteNativeIds.Enumeration Key),\n      Function.Injective (Correspondence036.FiniteNativeIds.decode e)))\n    let b ← `((∀ {Key : Type} (e : Correspondence036.FiniteNativeIds.Enumeration Key),\n      Function.Surjective (Correspondence036.FiniteNativeIds.decode e)))\n    let c ← `((∀ {Key : Type} (e : Correspondence036.FiniteNativeIds.Enumeration Key)\n      (key : Correspondence036.FiniteNativeIds.Present e),\n      Correspondence036.FiniteNativeIds.decode e (Correspondence036.FiniteNativeIds.encode e key) = key))\n    let d ← `((∀ {Key : Type} (e : Correspondence036.FiniteNativeIds.Enumeration Key)\n      (i : Fin e.keys.length),\n      Correspondence036.FiniteNativeIds.encode e (Correspondence036.FiniteNativeIds.decode e i) = i))\n    let f ← `((∀ {Key Row : Type} (e : Correspondence036.FiniteNativeIds.Enumeration Key)\n      (rows : Key → Option Row) (key : Correspondence036.FiniteNativeIds.Present e),\n      rows ((Correspondence036.FiniteNativeIds.decode e (Correspondence036.FiniteNativeIds.encode e key)).val) = rows key.val))\n    let expected := #[a,b,c,d,f]\n    let mut reports := #[]\n    for i in [:roots.size] do\n      let declName := roots[i]!\n      let info ← getConstInfo declName\n      match info with\n      | .thmInfo _ => pure ()\n      | _ => throwError "Finite ID root is not a theorem"\n      let wanted ← elabTerm expected[i]! none\n      let wanted ← instantiateMVars wanted\n      unless ← isDefEq info.type wanted do\n        throwError "Wrong expected finite ID theorem type"\n      let axioms ← collectAxioms declName\n      unless axioms.all (fun n => #[``propext, ``Classical.choice, ``Quot.sound].contains n) do\n        throwError "Unexpected finite ID transitive axiom"\n      reports := reports.push <| Json.mkObj [\n        ("declaration", toJson declName.toString),\n        ("type_repr", toJson (reprStr info.type)),\n        ("axioms", toJson (axioms.map toString))]\n    pure reports\n  liftIO <| IO.println s!"CORE036_FINITE_ID_AUDIT {Json.compress (Json.arr reports)}"\n#finite_id_audit\n'
GUARD_AUDIT = 'import Views.NativeViewsBasic\nimport Lean\nimport Lean.Util.CollectAxioms\nopen Lean Elab Command Term Meta\nelab "#views_guard_audit" : command => do\n  let reports ← liftTermElabM do\n    let roots := #[``Correspondence036.NativeViewsBasic.invalidate_exact,\n                   ``Correspondence036.NativeViewsBasic.invalidated_never_matches]\n    let expectedSyntax ← `( (\n      (view : transition_study036.views.Views) →\n      transition_study036.views.Views.impl.invalidate view =\n        Aeneas.Std.Result.ok { view with trusted := false }))\n    let expectedSyntax2 ← `((\n      (view : transition_study036.views.Views) →\n      (history : transition_study036.behavior_store.documents.HistoryRef) →\n      (do\n        let after ← transition_study036.views.Views.impl.invalidate view\n        transition_study036.views.Views.impl.matches after history) = Aeneas.Std.Result.ok false))\n    let expected := #[expectedSyntax, expectedSyntax2]\n    let mut reports := #[]\n    for i in [:roots.size] do\n      let declName := roots[i]!\n      let info ← getConstInfo declName\n      match info with\n      | .thmInfo _ => pure ()\n      | _ => throwError "Guard root is not a theorem"\n      let wanted ← elabTerm expected[i]! none\n      let wanted ← instantiateMVars wanted\n      unless ← isDefEq info.type wanted do\n        throwError "Wrong expected guard theorem type"\n      let axioms ← collectAxioms declName\n      if axioms.contains ``sorryAx then\n        throwError "Unproved guard root"\n      let mut axiomRows := #[]\n      for axiomName in axioms do\n        let axiomInfo ← getConstInfo axiomName\n        axiomRows := axiomRows.push <| Json.mkObj [\n          ("name", toJson axiomName.toString),\n          ("type_repr", toJson (reprStr axiomInfo.type))]\n      reports := reports.push <| Json.mkObj [\n        ("declaration", toJson declName.toString),\n        ("type_repr", toJson (reprStr info.type)),\n        ("axioms", Json.arr axiomRows)]\n    pure reports\n  liftIO <| IO.println s!"CORE036_NATIVE_GUARD_AUDIT {Json.compress (Json.arr reports)}"\n#views_guard_audit\n'
MAP_AXIOM = '@[rust_type "serde_json::map::Map"]\naxiom serde_json.map.Map (K : Type _) (V : Type _) : Type'
MAP_MODEL = '@[rust_type "serde_json::map::Map" (body := .opaque)]\ninductive serde_json.map.Map (K : Type) (V : Type) where\n| nil : serde_json.map.Map K V\n| cons : K → V → serde_json.map.Map K V → serde_json.map.Map K V'


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry(
        {"repository": R, "private": private, "work": work},
        readonly=["repository", "private", "work"],
    )
    config = read(E / "native-lean-inputs-v2.json")
    if (
        set(config)
        != {
            "format",
            "extraction_result_ref",
            "extraction_checkpoint_ref",
            "external_types_ref",
            "external_contract_ref",
            "runtime_names_ref",
            "guard_proof_ref",
            "id_proof_ref",
        }
        or config["format"] != "core036.native-lean-inputs.v2"
    ):
        raise ValueError("NativeLeanContext")
    check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
    checkpoint_path = refs.verify(config["extraction_checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(config["extraction_checkpoint_ref"])
    result_path = refs.verify(config["extraction_result_ref"])
    extraction = refs.read(config["extraction_result_ref"])
    if (
        checkpoint["stage_outcome"] != "succeeded"
        or result_path.parent.name != checkpoint["attempt_id"]
        or extraction["extraction_exit_code"] != 0
        or extraction["translation_exit_code"] != 0
        or extraction["source_subject_ref"] != checkpoint["source_subject_ref"]
    ):
        raise ValueError("NativeLeanExtractionNotEstablished")
    expected = {
        "Types.lean",
        "Funs.lean",
        "TypesExternal_Template.lean",
        "FunsExternal_Template.lean",
    }
    selected = extraction["generated"]
    if len(selected) != 4 or {row["path"] for row in selected} != {
        "generated/" + name for name in expected
    }:
        raise ValueError("NativeLeanSplitModules")
    sources = {}
    for row in selected:
        path = result_path.parent / row["path"]
        if digest(path) != row["sha256"] or path.stat().st_size != row["bytes"]:
            raise ValueError("NativeLeanGeneratedBodyChanged")
        sources[path.name] = (path, row)
    external_path = refs.verify(config["external_types_ref"])
    external = external_path.read_bytes()
    template = sources["TypesExternal_Template.lean"][0].read_bytes()
    if template.count(MAP_AXIOM.encode()) != 1 or external != template.replace(
        MAP_AXIOM.encode(), MAP_MODEL.encode()
    ):
        raise ValueError("NativeLeanUndeclaredTemplateChange")
    id_proof = refs.verify(config["id_proof_ref"])
    guard_proof = refs.verify(config["guard_proof_ref"])
    runtime_names = refs.verify(config["runtime_names_ref"])
    contract = refs.read(config["external_contract_ref"])
    if (
        contract["status"] != "unestablished"
        or contract["model_ref"] != config["external_types_ref"]
        or contract["template_sha256"]
        != digest(sources["TypesExternal_Template.lean"][0])
        or contract["native_refinement_claimed"] is not False
    ):
        raise ValueError("NativeLeanExternalContract")
    out = Path(args.out)
    if out != private / "native-lean" / declaration["record_id"] or out.exists():
        raise ValueError("NativeLeanOutput")
    out.mkdir(parents=True)
    project = out / "project"
    folder = project / "Views"
    folder.mkdir(parents=True)
    compiled = out / "compiled"
    (compiled / "Views").mkdir(parents=True)
    for original, target in [
        ("Types.lean", "Types.lean"),
        ("Funs.lean", "Funs.lean"),
        ("FunsExternal_Template.lean", "FunsExternal.lean"),
    ]:
        if original == "FunsExternal_Template.lean":
            raw = sources[original][0].read_bytes()
            marker = b"public import Aeneas\n"
            if raw.count(marker) != 1:
                raise ValueError("NativeLeanExternalImportPoint")
            write_once(
                folder / target,
                raw.replace(marker, marker + b"public import Views.RuntimeNames\n"),
            )
        else:
            shutil.copy2(sources[original][0], folder / target)
    shutil.copy2(runtime_names, folder / "RuntimeNames.lean")
    write_once(folder / "TypesExternal.lean", external)
    analysis = read(private / "analysis-lean-recheck/a0053/result.json")
    sdk = Path(analysis["sdk"])
    backend = private / "analysis-backend-build/a0058/lean"
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
        "GIT_OPTIONAL_LOCKS": "0",
        "MATHLIB_NO_CACHE_ON_UPDATE": "1",
        "GIT_CONFIG_NOSYSTEM": "1",
        "GIT_CONFIG_GLOBAL": os.devnull,
    }
    env.pop("LD_PRELOAD", None)
    write_once(
        folder / "MapDiagnostic.lean",
        b"import Views.TypesExternal\n#print serde_json.map.Map\n#print axioms serde_json.map.Map\ninductive DirectTree where | object : List (String \xc3\x97 DirectTree) \xe2\x86\x92 DirectTree\ninductive AliasTree where | object : serde_json.map.Map String AliasTree \xe2\x86\x92 AliasTree\n",
    )
    shutil.copy2(id_proof, folder / "FiniteNativeIds.lean")
    write_once(folder / "FiniteIdAudit.lean", ID_AUDIT.encode())
    shutil.copy2(guard_proof, folder / "NativeViewsBasic.lean")
    write_once(folder / "GuardAudit.lean", GUARD_AUDIT.encode())
    commands = []
    for module in [
        "RuntimeNames",
        "TypesExternal",
        "MapDiagnostic",
        "Types",
        "FunsExternal",
        "Funs",
        "FiniteNativeIds",
        "NativeViewsBasic",
        "GuardAudit",
        "FiniteIdAudit",
    ]:
        log = out / "commands" / module
        log.mkdir(parents=True)
        argv = [
            str(sdk / "bin/lake"),
            "--no-build",
            "env",
            str(sdk / "bin/lean"),
            "-j1",
            "-s131072",
            "-M4096",
            "-R",
            str(project),
            "-o",
            str(compiled / "Views" / (module + ".olean")),
            str(folder / (module + ".lean")),
        ]
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            child = subprocess.run(
                argv,
                cwd=backend,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=600,
                check=False,
            )
        row = dict(
            module="Views." + module,
            argv=argv,
            exit_code=child.returncode,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        if (
            child.returncode != 0
            or "declaration uses `sorry`" in (log / "stdout.txt").read_text()
        ):
            break
    for name, (path, row) in sources.items():
        if digest(path) != row["sha256"]:
            raise ValueError("NativeLeanSourceMutated")
    for name in ["Types", "Funs"]:
        if digest(folder / (name + ".lean")) != sources[name + ".lean"][1]["sha256"]:
            raise ValueError("NativeLeanTransparentBodyModified")
    passed = (
        len(commands) == 10
        and all(row["exit_code"] == 0 for row in commands)
        and not any(
            "declaration uses `sorry`"
            in (out / "commands" / name / "stdout.txt").read_text()
            for name in [
                "TypesExternal",
                "MapDiagnostic",
                "Types",
                "FunsExternal",
                "Funs",
                "FiniteNativeIds",
                "NativeViewsBasic",
                "GuardAudit",
                "FiniteIdAudit",
            ]
        )
    )
    guard_reports = []
    id_reports = []
    if passed:
        guard_reports = [
            json.loads(line.removeprefix("CORE036_NATIVE_GUARD_AUDIT "))
            for line in (out / "commands/GuardAudit/stdout.txt")
            .read_text()
            .splitlines()
            if line.startswith("CORE036_NATIVE_GUARD_AUDIT ")
        ]
        if len(guard_reports) != 1 or len(guard_reports[0]) != 2:
            raise ValueError("NativeGuardAuditCoverage")
        id_reports = [
            json.loads(line.removeprefix("CORE036_FINITE_ID_AUDIT "))
            for line in (out / "commands/FiniteIdAudit/stdout.txt")
            .read_text()
            .splitlines()
            if line.startswith("CORE036_FINITE_ID_AUDIT ")
        ]
        if len(id_reports) != 1 or len(id_reports[0]) != 5:
            raise ValueError("FiniteIdAuditCoverage")
        log = out / "commands/fresh-guard-kernel"
        log.mkdir()
        argv = [
            str(sdk / "bin/lake"),
            "--no-build",
            "env",
            str(sdk / "bin/leanchecker"),
            "--fresh",
            "Views.NativeViewsBasic",
        ]
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            child = subprocess.run(
                argv,
                cwd=backend,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=1800,
                check=False,
            )
        kernel = dict(
            module="Views.NativeViewsBasic:fresh-kernel",
            argv=argv,
            exit_code=child.returncode,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", kernel)
        commands.append(kernel)
        passed = child.returncode == 0
    write_once(
        out / "result.json",
        dict(
            format="core036.native-lean.v2",
            source_subject_ref=declaration["source_subject_ref"],
            extraction_result_ref=config["extraction_result_ref"],
            external_types_ref=config["external_types_ref"],
            external_contract_ref=config["external_contract_ref"],
            runtime_names_ref=config["runtime_names_ref"],
            commands=commands,
            generated_transparent_bodies_unchanged=True,
            typecheck_passed=passed,
            guard_lemmas_freshly_kernel_checked=passed,
            guard_proof_ref=config["guard_proof_ref"],
            guard_audit=guard_reports,
            finite_id_audit=id_reports,
            id_proof_ref=config["id_proof_ref"],
            finite_id_relation_to_native_maps="unestablished",
            b04_status="in_progress",
            scope="Actual split Views source and two invalidation guards. Fresh type/kernel checks do not establish generic/external native models, complete view equality or composed Core correspondence.",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
