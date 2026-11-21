"""Fresh candidate-library kernel checks; no backend/native proof adoption."""

import argparse
import hashlib
import json
import os
import re
import resource
import subprocess
from pathlib import Path, PurePosixPath

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_analysis_v2
from records import MANIFEST, validate_ref_v2

E = Path(__file__).resolve().parent
R = E.parents[1]
COMMIT = "10fc82d61653e5202f2ca8507bd6502c1e0c1ec9"
ROOTS = ("Aeneas.NonPos.Top", "Aeneas.NonPos.Std", "Aeneas.NonPos.Tests.TestResult")
AUDIT_ROOTS = (
    "NonPos.Fix.unfold_fold",
    "NonPos.Cont.fold",
    "NonPos.Cont.fix",
    "NonPos.Cont.bind",
    "NonPos.Cont.monotone",
    "NonPos.TestR.cont_sumNum",
)


def verified_sources(registry, reference):
    package = registry.read(reference, limit=MANIFEST)
    if (
        not isinstance(package, dict)
        or set(package) != {"format", "repository", "commit", "files"}
        or package["format"] != "core036.nonpos-library-source.v2"
        or package["repository"] != "AeneasVerif/aeneas"
        or package["commit"] != COMMIT
        or not isinstance(package["files"], list)
        or not 0 < len(package["files"]) <= 64
    ):
        raise ValueError("NonposSourceContext")
    sources = {}
    total = 0
    for row in package["files"]:
        if not isinstance(row, dict) or set(row) != {
            "path",
            "git_blob_sha",
            "source_ref",
        }:
            raise ValueError("NonposSourceFields")
        name = row["path"]
        if (
            not isinstance(name, str)
            or not name
            or not PurePosixPath(name).parts
            or "\\" in name
            or PurePosixPath(name).is_absolute()
            or ".." in PurePosixPath(name).parts
            or str(PurePosixPath(name)) != name
            or name in sources
            or not isinstance(row["git_blob_sha"], str)
            or re.fullmatch(r"[a-f0-9]{40}", row["git_blob_sha"]) is None
        ):
            raise ValueError("NonposSourcePathOrIdentity")
        validate_ref_v2(row["source_ref"])
        if (
            row["source_ref"]["bytes"] > 2 * 1024**2
            or total + row["source_ref"]["bytes"] > 8 * 1024**2
        ):
            raise ValueError("NonposSourceBound")
        raw = registry.verify(row["source_ref"]).read_bytes()
        total += len(raw)
        if len(raw) > 2 * 1024**2 or total > 8 * 1024**2:
            raise ValueError("NonposSourceBound")
        blob = hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
        if blob != row["git_blob_sha"]:
            raise ValueError("NonposSourceGitBlob")
        sources[name] = raw
    if "LICENSE.md" not in sources:
        raise ValueError("NonposSourceLicense")
    return sources


def module_plan(sources, roots):
    modules = {}
    for path, raw in sources.items():
        if path.startswith("backends/lean/") and path.endswith(".lean"):
            label = (
                path.removeprefix("backends/lean/")
                .removesuffix(".lean")
                .replace("/", ".")
            )
            if (
                re.fullmatch(
                    r"[A-Za-z_][A-Za-z0-9_]*(?:\.[A-Za-z_][A-Za-z0-9_]*)*", label
                )
                is None
            ):
                raise ValueError("NonposModuleName")
            modules[label] = raw
    active, done, order = set(), set(), []

    def visit(label):
        if label in active:
            raise ValueError("NonposModuleCycle")
        if label in done:
            return
        if label not in modules:
            raise ValueError("NonposMissingInternalModule:" + label)
        active.add(label)
        imports = re.findall(
            r"^\s*(?:public\s+)?(?:meta\s+)?import\s+(?:all\s+)?([A-Za-z0-9_. ]+)\s*$",
            modules[label].decode("utf-8"),
            re.MULTILINE,
        )
        for imported in sorted({x for line in imports for x in line.split()}):
            if imported in modules or imported.startswith("Aeneas.NonPos"):
                visit(imported)
            elif imported.split(".", 1)[0] not in {"Lean", "Std", "Init", "Aeneas"}:
                raise ValueError("NonposUnknownExternalModule:" + imported)
        active.remove(label)
        done.add(label)
        order.append(label)

    for root in roots:
        visit(root)
    return order


def prepare_library_overlay(backend, compiled, *, compile_roots=frozenset()):
    """Lean chooses one search root per package; never shadow half of Aeneas."""
    library = backend / ".lake/build/lib/lean"
    if not isinstance(compile_roots, (set, frozenset)) or compile_roots - {"Aeneas"}:
        raise ValueError("NonposLibraryCompileRoots")
    if not (library / "Aeneas").is_dir() or (library / "Aeneas/NonPos").exists():
        raise ValueError("NonposPinnedLibraryOverlay")
    (compiled / "Aeneas").mkdir()
    for source in sorted(library.iterdir()):
        if not source.resolve().is_relative_to(backend.resolve()):
            raise ValueError("NonposLibraryEscape")
        if source.name == "Aeneas":
            for child in sorted(source.iterdir()):
                if not child.resolve().is_relative_to(backend.resolve()):
                    raise ValueError("NonposLibraryEscape")
                (compiled / "Aeneas" / child.name).symlink_to(child)
        else:
            if source.name.split(".", 1)[0] in compile_roots:
                continue
            (compiled / source.name).symlink_to(source)
    return [compiled, *dependency_library_paths(backend)]


def dependency_library_paths(backend):
    """The same prepared package search roots for overlays and diagnostics."""
    manifest = read(backend / "lake-manifest.json")
    if manifest.get("packagesDir") != ".lake/packages":
        raise ValueError("NonposDependencyDirectory")
    paths, names = [], set()
    for package in manifest["packages"]:
        name = package["name"]
        if (
            not isinstance(name, str)
            or re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", name) is None
            or name in names
        ):
            raise ValueError("NonposDependencyName")
        names.add(name)
        path = backend / ".lake/packages" / name / ".lake/build/lib/lean"
        if (path.exists() and not path.is_dir()) or not path.resolve().is_relative_to(
            backend.resolve()
        ):
            raise ValueError("NonposDependencyLibrary")
        paths.append(path)
    return paths


def candidate_passed(commands, order, audit, negative, kernel):
    expected = [(module, 0) for module in [*order, "CandidateAudit"]]
    expected.append(("CandidateWrongType", 1))
    return (
        [(row["module"], row["exit_code"]) for row in commands] == expected
        and isinstance(audit, list)
        and len(audit) == len(AUDIT_ROOTS)
        and {row["root"] for row in audit} == set(AUDIT_ROOTS)
        and all(
            row["type_repr"]
            and not (set(row["axioms"]) - {"propext", "Classical.choice", "Quot.sound"})
            for row in audit
        )
        and negative is True
        and isinstance(kernel, dict)
        and kernel["module"] == "CandidateAudit"
        and kernel["exit_code"] == 0
    )


AUDIT = """import Aeneas.NonPos.Std
import Aeneas.NonPos.Tests.TestResult
import Lean
import Lean.Util.CollectAxioms
open Lean Elab Command Term Meta
example {T : Type} (a : T) (n : Nat) :
    NonPos.Cont (fun (bla : NonPos.TestR.Bla T) => NonPos.TestR.sumNum bla a n) :=
  NonPos.TestR.cont_sumNum a n
elab "#core036_nonpos_audit" : command => do
  let rows ← liftTermElabM do
    let toName := fun (s : String) => (s.splitOn ".").foldl Name.str Name.anonymous
    let allowed := (#["propext", "Classical.choice", "Quot.sound"]).map toName
    let roots := (#["NonPos.Fix.unfold_fold", "NonPos.Cont.fold",
      "NonPos.Cont.fix", "NonPos.Cont.bind", "NonPos.Cont.monotone",
      "NonPos.TestR.cont_sumNum"]).map toName
    let mut rows := #[]
    for root in roots do
      let info ← getConstInfo root
      match info with
      | .thmInfo _ => pure ()
      | _ => throwError "Candidate root is not a theorem"
      let axioms ← collectAxioms root
      unless axioms.all (fun n => allowed.contains n) do
        throwError m!"Unexpected candidate axiom: {axioms}"
      rows := rows.push <| Json.mkObj [
        ("root", toJson root.toString), ("type_repr", toJson (reprStr info.type)),
        ("axioms", toJson (axioms.map Name.toString))]
    pure rows
  liftIO <| IO.println s!"CORE036_NONPOS_AUDIT {Json.compress (Json.arr rows)}"
#core036_nonpos_audit
"""
WRONG_TYPE = """module
import Aeneas.NonPos.Tests.TestResult
example {T : Type} (a : T) (n : Nat) : False := by
  exact NonPos.TestR.cont_sumNum a n
"""


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
    out = Path(args.out)
    if out != private / "nonpos-lean-probe" / declaration["record_id"] or out.exists():
        raise ValueError("NonposOutputOwnership")
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    config = read(E / "nonpos-lean-probe-inputs-v2.json")
    if (
        set(config) != {"format", "source_manifest_ref"}
        or config["format"] != "core036.nonpos-library-probe.v2"
    ):
        raise ValueError("NonposProbeContext")
    limit = declaration["profile"]["limits"]["lean_address_space_bytes"]
    if limit != 8 * 1024**3:
        raise ValueError("NonposRequiresDeclaredAnalysisLeanProfile")
    check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
    sources = verified_sources(refs, config["source_manifest_ref"])
    order = module_plan(sources, ROOTS)
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    for path, raw in sources.items():
        write_once(out / "upstream-source" / path, raw)
    for module in order:
        path = "backends/lean/" + module.replace(".", "/") + ".lean"
        write_once(project / (module.replace(".", "/") + ".lean"), sources[path])
    write_once(project / "CandidateAudit.lean", AUDIT.encode())
    write_once(project / "CandidateWrongType.lean", WRONG_TYPE.encode())
    analysis = read(private / "analysis-lean-recheck/a0053/result.json")
    sdk = Path(analysis["sdk"])
    backend = private / "analysis-backend-build/a0058/lean"
    library_paths = prepare_library_overlay(backend, compiled)
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": os.pathsep.join(map(str, library_paths)),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
    }
    env.pop("LD_PRELOAD", None)

    def constrain():
        resource.setrlimit(resource.RLIMIT_AS, (limit, limit))

    commands = []
    audit = None
    negative = False
    for module in [*order, "CandidateAudit", "CandidateWrongType"]:
        log = out / "commands" / module
        log.mkdir(parents=True)
        output = compiled / (module.replace(".", "/") + ".olean")
        output.parent.mkdir(parents=True, exist_ok=True)
        argv = [
            str(sdk / "bin/lean"),
            "-j1",
            "-s131072",
            "-M4096",
            "-R",
            str(project),
            "-o",
            str(output),
            str(project / (module.replace(".", "/") + ".lean")),
        ]
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=backend,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=600,
                check=False,
                preexec_fn=constrain,
            )
        output_text = (log / "stdout.txt").read_text()
        expected = 1 if module == "CandidateWrongType" else 0
        row = dict(
            module=module,
            argv=argv,
            exit_code=result.returncode,
            expected_exit_code=expected,
            address_space_bytes=limit,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        if result.returncode != expected:
            break
        if module == "CandidateAudit":
            lines = [
                x.removeprefix("CORE036_NONPOS_AUDIT ")
                for x in output_text.splitlines()
                if x.startswith("CORE036_NONPOS_AUDIT ")
            ]
            if len(lines) != 1:
                raise ValueError("NonposMissingFreshAudit")
            audit = json.loads(lines[0])
            if len(audit) != 6 or any(
                not x["type_repr"]
                or set(x["axioms"]) - {"propext", "Classical.choice", "Quot.sound"}
                for x in audit
            ):
                raise ValueError("NonposAuditRoots")
        if module == "CandidateWrongType":
            negative = (
                "type mismatch" in output_text.lower()
                and "False" in output_text
                and "unknown" not in output_text.lower()
            )
    kernel = None
    if len(commands) == len(order) + 2 and audit is not None and negative:
        log = out / "commands/FreshKernel"
        log.mkdir()
        argv = [str(sdk / "bin/leanchecker"), "--fresh", "CandidateAudit"]
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=compiled,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=600,
                check=False,
                preexec_fn=constrain,
            )
        kernel = dict(
            module="CandidateAudit",
            argv=argv,
            exit_code=result.returncode,
            address_space_bytes=limit,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", kernel)
    for module in order:
        path = "backends/lean/" + module.replace(".", "/") + ".lean"
        if (project / (module.replace(".", "/") + ".lean")).read_bytes() != sources[
            path
        ]:
            raise ValueError("NonposEditedUpstreamSource")
    verified_sources(refs, config["source_manifest_ref"])
    check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
    success = candidate_passed(commands, order, audit, negative, kernel)
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-library-probe.v2",
            source_subject_ref=declaration["source_subject_ref"],
            source_manifest_ref=config["source_manifest_ref"],
            upstream_commit=COMMIT,
            library_search_path=list(map(str, library_paths)),
            commands=commands,
            fresh_kernel_check=kernel,
            actual_audit=audit,
            wrong_expected_type_rejected=negative,
            all_selected_upstream_bodies_unmodified=True,
            candidate_library_kernel="passed" if success else "failed",
            source_relation_to_core="unestablished",
            translation_backend_adopted=False,
            native_proof="unestablished",
            product_adoption="unactivated",
            feature_complete=False,
        ),
    )
    return 0 if success else 1


if __name__ == "__main__":
    raise SystemExit(main())
