"""Fresh declared-theorem checks; helper checks never establish Core closure."""

import json
import os
import re
import subprocess
from pathlib import Path

from artifact_io import digest, write_once
from proof_canary_v2 import validate_axiom_inventory_v2, check_fresh_helper_canary_v2

__all__ = ["validate_axiom_inventory_v2", "check_fresh_helper_canary_v2"]
REQUIRED = {f"B{i:02}" for i in range(1, 11)}
STATUSES = {
    "unestablished",
    "in_progress",
    "proved_for_declared_subject",
    "checked_conformance_only",
    "explicit_external_premise",
    "refuted",
}
FOUNDATIONS = {"propext", "Classical.choice", "Quot.sound"}
NAME = re.compile(r"[A-Za-z_][A-Za-z0-9_]*(?:\.[A-Za-z_][A-Za-z0-9_]*)*")


def validate_obligation_statuses_v2(rows):
    if (
        not isinstance(rows, list)
        or len(rows) != 10
        or any(not isinstance(row, dict) for row in rows)
        or {row.get("id") for row in rows} != REQUIRED
        or any(row.get("status") not in STATUSES for row in rows)
    ):
        raise ValueError("RequiredNativeBridgeClosure")
    # This validates syntax only. Neither a status nor an English premise
    # keyword establishes or refutes an actual native theorem.
    return True


def validate_obligations(rows):
    validate_obligation_statuses_v2(rows)
    if any(row["status"] != "proved_for_declared_subject" for row in rows):
        raise ValueError("MissingNativeBridge")
    return True


def _validate_roots(roots):
    if not isinstance(roots, list) or not 1 <= len(roots) <= 256:
        raise ValueError("ExpectedTheoremRoots")
    ids, names = set(), set()
    for row in roots:
        if (
            not isinstance(row, dict)
            or set(row) != {"id", "declaration", "expected_type"}
            or not isinstance(row["id"], str)
            or NAME.fullmatch(row["id"]) is None
            or not isinstance(row["declaration"], str)
            or NAME.fullmatch(row["declaration"]) is None
            or not isinstance(row["expected_type"], str)
            or not row["expected_type"].strip()
            or row["id"] in ids
            or row["declaration"] in names
        ):
            raise ValueError("ExpectedTheoremRoot")
        ids.add(row["id"])
        names.add(row["declaration"])


def theorem_audit_source_v2(proof_module, roots):
    """Expectations are frozen executor inputs, never theorem-reported types."""
    if not isinstance(proof_module, str) or NAME.fullmatch(proof_module) is None:
        raise ValueError("ExpectedProofModule")
    _validate_roots(roots)
    source = f"""import {proof_module}
import Lean
import Lean.Util.CollectAxioms
open Lean Elab Command Term Meta
"""
    for root_index, row in enumerate(roots):
        # IDs and names are restricted above; expected_type is Lean source from
        # the executor's selected expectation contract, not an untrusted report.
        source += f"""private def core036AuditRoot{root_index} : TermElabM Json := do
      let info ← getConstInfo ``{row["declaration"]}
      match info with
      | .thmInfo _ => pure ()
      | _ => throwError "Not a theorem"
      let expected ← elabTerm (← `({row["expected_type"]})) none
      let expected ← instantiateMVars expected
      unless ← isDefEq info.type expected do
        throwError "Wrong expected theorem type"
      let axioms ← collectAxioms ``{row["declaration"]}
      let allowed := #[``propext, ``Classical.choice, ``Quot.sound]
      unless axioms.all (fun n => allowed.contains n) do
        throwError m!"Unexpected transitive axiom in {row['declaration']}: {{axioms.filter (fun n => !allowed.contains n)}}"
      let mut axiomRows{root_index} := #[]
      for axiomName in axioms do
        let axiomInfo ← getConstInfo axiomName
        match axiomInfo with
        | .axiomInfo _ => pure ()
        | _ => throwError "Unexpected foundation declaration kind"
        let axiomExpected ←
          if axiomName == ``propext then
            elabTerm (← `({{a b : Prop}} → (a ↔ b) → a = b)) none
          else if axiomName == ``Classical.choice then
            elabTerm (← `({{α : Sort _}} → Nonempty α → α)) none
          else
            elabTerm (← `({{α : Sort _}} → {{r : α → α → Prop}} →
              {{a b : α}} → r a b → Quot.mk r a = Quot.mk r b)) none
        unless ← isDefEq axiomInfo.type axiomExpected do
          throwError "Wrong foundation axiom type"
        axiomRows{root_index} := axiomRows{root_index}.push <| Json.mkObj [
          ("name", toJson axiomName.toString),
          ("type_repr", toJson (reprStr axiomInfo.type))]
      pure <| Json.mkObj [
        ("id", toJson {json.dumps(row["id"])}),
        ("declaration", toJson {json.dumps(row["declaration"])}),
        ("type_repr", toJson (reprStr info.type)),
        ("axioms", Json.arr axiomRows{root_index})]
"""
    return (
        source
        + """elab "#declared_proof_audit" : command => do
  let report ← liftTermElabM do
    let actions : Array (TermElabM Json) := #[
"""
        + ",\n".join(f"      core036AuditRoot{i}" for i in range(len(roots)))
        + """]
    let reports ← actions.mapM fun action => action
    pure <| Json.arr reports
  liftIO <| IO.println s!"CORE036_PROOF_AUDIT {report.compress}"
#declared_proof_audit
"""
    )


def validate_theorem_audit_v2(rows, expected):
    """Check audit coverage; only fresh execution can supply proof authority."""
    _validate_roots(expected)
    if not isinstance(rows, list) or len(rows) != len(expected):
        raise ValueError("TheoremAuditCoverage")
    for row, root in zip(rows, expected, strict=True):
        if (
            not isinstance(row, dict)
            or set(row) != {"id", "declaration", "type_repr", "axioms"}
            or row["id"] != root["id"]
            or row["declaration"] != root["declaration"]
            or not isinstance(row["type_repr"], str)
            or not row["type_repr"]
            or not isinstance(row["axioms"], list)
        ):
            raise ValueError("TheoremAuditRoot")
        seen = set()
        for axiom in row["axioms"]:
            if (
                not isinstance(axiom, dict)
                or set(axiom) != {"name", "type_repr"}
                or axiom["name"] not in FOUNDATIONS
                or axiom["name"] in seen
                or not isinstance(axiom["type_repr"], str)
                or not axiom["type_repr"]
            ):
                raise ValueError("TheoremAuditAxiom")
            seen.add(axiom["name"])
    return True


def declared_environment_v2(
    *, compiled, sdk, backend, env, modules, imported_context=None
):
    """Select fixed SDK commands; imported artifacts never replace fresh output.

    Source/producer provenance is the caller's obligation. This layer binds the
    complete read-only import inventory and ordered search path before/after use.
    """
    compiled, sdk, backend = map(Path, (compiled, sdk, backend))
    if imported_context is None:
        if env.get("LEAN_PATH") != str(compiled):
            raise ValueError("DeclaredProofFreshProject")
        return [str(sdk / "bin/lake"), "--no-build", "env"], lambda: None
    if (
        not isinstance(imported_context, dict)
        or set(imported_context) != {"format", "root", "entries"}
        or imported_context["format"] != "core036.declared-import-context.v2"
    ):
        raise ValueError("DeclaredProofImportContext")
    root = Path(imported_context["root"])
    if (
        root != compiled.parent / "imports"
        or not root.is_absolute()
        or root.is_symlink()
        or not root.is_dir()
    ):
        raise ValueError("DeclaredProofImportRoot")
    from nonpos_lean_probe_v2 import dependency_library_paths

    expected_path = os.pathsep.join(
        map(str, [compiled, root, *dependency_library_paths(backend)])
    )
    if env.get("LEAN_PATH") != expected_path:
        raise ValueError("DeclaredProofImportSearchPath")
    entries = imported_context["entries"]
    if not isinstance(entries, list) or not 1 <= len(entries) <= 4096:
        raise ValueError("DeclaredProofImportInventoryBound")
    forbidden = {module.split(".")[0] for module in [*modules, "Audit"]}
    frozen = []
    names = set()
    total = 0
    for row in entries:
        if (
            not isinstance(row, dict)
            or set(row) != {"path", "bytes", "sha256"}
            or not isinstance(row["path"], str)
            or type(row["bytes"]) is not int
            or not 0 <= row["bytes"] <= 64 * 1024**2
            or not isinstance(row["sha256"], str)
            or re.fullmatch(r"[0-9a-f]{64}", row["sha256"]) is None
        ):
            raise ValueError("DeclaredProofImportEntry")
        relative = Path(row["path"])
        if (
            relative.is_absolute()
            or not relative.parts
            or any(part in {".", ".."} for part in row["path"].split("/"))
            or relative.parts[0].split(".")[0] in forbidden
            or row["path"] in names
        ):
            raise ValueError("DeclaredProofImportCollisionOrPath")
        if relative.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        names.add(row["path"])
        total += row["bytes"]
        frozen.append((row["path"], row["bytes"], row["sha256"]))
    if total > 256 * 1024**2:
        raise ValueError("DeclaredProofImportByteBound")

    def recheck():
        if root.is_symlink() or not root.is_dir():
            raise ValueError("DeclaredProofImportRootChanged")
        actual = set()
        count = 0
        for path in root.rglob("*"):
            count += 1
            if count > 8192 or path.is_symlink():
                raise ValueError("DeclaredProofImportNodeBoundOrSymlink")
            if path.is_file():
                actual.add(str(path.relative_to(root)))
            elif not path.is_dir():
                raise ValueError("DeclaredProofImportKind")
        if actual != names:
            raise ValueError("DeclaredProofImportInventoryChanged")
        for relative, size, checksum in frozen:
            path = root / relative
            if (
                not path.resolve().is_relative_to(root)
                or path.stat().st_size != size
                or digest(path) != checksum
            ):
                raise ValueError("DeclaredProofImportChanged")

    recheck()
    return [], recheck


def check_declared_proof_v2(
    *,
    project,
    compiled,
    sdk,
    backend,
    env,
    modules,
    roots,
    expected_files,
    out,
    kernel_mode="all-imports",
    imported_context=None,
):
    """Compile exact selected sources and audit types/axioms, then fresh kernel.

    The caller binds extraction/cfg/tool provenance before entering this engine.
    This result certifies only the supplied theorem subjects; native B01–B10
    aggregation additionally needs the complete independently declared closure.
    No supplied runner, report flag, or cached .olean can establish success.
    """
    _validate_roots(roots)
    if kernel_mode not in {"all-imports", "selected-root-export-v1"}:
        raise ValueError("DeclaredProofKernelMode")
    project, compiled, sdk, backend, out = map(
        Path, (project, compiled, sdk, backend, out)
    )
    if (
        not isinstance(modules, list)
        or not modules
        or len(modules) != len(set(modules))
        or any(NAME.fullmatch(name) is None for name in modules)
        or set(expected_files) != set(modules)
        or list(compiled.iterdir())
    ):
        raise ValueError("DeclaredProofFreshProject")
    prefix, verify_imports = declared_environment_v2(
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=env,
        modules=modules,
        imported_context=imported_context,
    )
    paths = {name: project / (name.replace(".", "/") + ".lean") for name in modules}

    def verify_sources():
        verify_imports()
        for name, path in paths.items():
            if path.is_symlink() or digest(path) != expected_files[name]:
                raise ValueError("DeclaredProofSourceChanged")

    verify_sources()
    audit = project / "Audit.lean"
    write_once(audit, theorem_audit_source_v2(modules[-1], roots).encode())
    audit_digest = digest(audit)
    out.mkdir(parents=True, exist_ok=False)
    commands = []

    def run(label, argv, seconds=300):
        log = out / label
        log.mkdir()
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
                timeout=seconds,
                check=False,
            )
        row = dict(
            label=label,
            argv=argv,
            exit_code=child.returncode,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        commands.append(row)
        write_once(log / "result.json", row)
        if child.returncode:
            raise ValueError("DeclaredProofCommand:" + label)
        return log

    for name in [*modules, "Audit"]:
        destination = compiled / (name.replace(".", "/") + ".olean")
        destination.parent.mkdir(parents=True, exist_ok=True)
        log = run(
            "lean-" + name.replace(".", "-"),
            [
                *prefix,
                str(sdk / "bin/lean"),
                "-j1",
                "-s131072",
                "-M4096",
                "-R",
                str(project),
                "-o",
                str(destination),
                str(project / (name.replace(".", "/") + ".lean")),
            ],
        )
    rows = [
        json.loads(line.removeprefix("CORE036_PROOF_AUDIT "))
        for line in (log / "stdout.txt").read_text().splitlines()
        if line.startswith("CORE036_PROOF_AUDIT ")
    ]
    if len(rows) != 1:
        raise ValueError("DeclaredProofAuditOutput")
    validate_theorem_audit_v2(rows[0], roots)
    export_policy = None
    if kernel_mode == "selected-root-export-v1":
        from kernel_export_v2 import validate_export

        export_log = run(
            "export-roots",
            [
                *prefix,
                str(sdk / "bin/leanexport"),
                modules[-1],
                "--",
                *[r["declaration"] for r in roots],
            ],
        )
        export_file = export_log / "stdout.txt"
        export_digest = digest(export_file)
        export_policy = validate_export(export_file.read_bytes(), roots)
        run(
            "fresh-kernel",
            [*prefix, str(sdk / "bin/leanchecker"), "--from-export", str(export_file)],
            seconds=1800,
        )
        if digest(export_file) != export_digest:
            raise ValueError("DeclaredProofExportChanged")
    else:
        run(
            "fresh-kernel",
            [*prefix, str(sdk / "bin/leanchecker"), "--fresh", modules[-1]],
            seconds=1800,
        )
    verify_sources()
    if digest(audit) != audit_digest:
        raise ValueError("DeclaredProofAuditChanged")
    result = dict(
        format="core036.declared-proof-check.v2",
        status="proved_for_declared_subject",
        expected_roots=roots,
        audit=rows[0],
        commands=commands,
        source_sha256=expected_files,
        audit_sha256=audit_digest,
        feature_native_status="unestablished",
        feature_complete=False,
    )
    if export_policy is not None:
        result.update(
            kernel_scope="selected_expected_root_transitive_dependencies",
            all_imported_constants_rechecked=False,
            export_sha256=export_digest,
            export_policy=export_policy,
        )
    write_once(out / "result.json", result)
    return result


def native_verified(report):
    # Compatibility reporting API is deliberately non-authoritative. Native
    # closure must be established by the executing checker, never JSON flags.
    return False
