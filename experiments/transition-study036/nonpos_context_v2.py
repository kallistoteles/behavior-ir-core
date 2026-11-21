"""Fresh source-bound recursive-trait support for actual generated modules."""

import difflib
import os
from pathlib import Path
import resource
import subprocess

from artifact_io import RootRegistry, digest, write_once
from nonpos_lean_probe_v2 import module_plan, prepare_library_overlay, verified_sources

E = Path(__file__).resolve().parent


def prepare_context(refs, reference, sdk, backend, project, compiled, out, env, limit):
    binding = refs.read(reference)
    selection = None
    if binding.get("format") == "core036.nonpos-qualified-context-inputs.v2":
        if set(binding) != {
            "format",
            "base_library_binding_ref",
            "top_source_ref",
            "top_patch_ref",
            "control_ref",
            "audit_ref",
            "wrong_ref",
        }:
            raise ValueError("NonposQualifiedContextInputs")
        selection = binding
        binding = refs.read(selection["base_library_binding_ref"])
    checkpoint_path = refs.verify(binding["checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(binding["checkpoint_ref"])
    library_path = refs.verify(binding["result_ref"])
    library = refs.read(binding["result_ref"])
    if (
        checkpoint["stage_outcome"] != "succeeded"
        or library_path.parent.name != checkpoint["attempt_id"]
        or library["source_subject_ref"] != checkpoint["source_subject_ref"]
        or library["candidate_library_kernel"] != "passed"
        or library["fresh_kernel_check"]["exit_code"] != 0
        or library["all_selected_upstream_bodies_unmodified"] is not True
    ):
        raise ValueError("NonposContextLibraryPrerequisite")
    sources = verified_sources(refs, library["source_manifest_ref"])
    if selection is not None:
        key = "backends/lean/Aeneas/NonPos/Top.lean"
        original_top = sources[key]
        candidate = refs.verify(selection["top_source_ref"]).read_bytes()
        delta = "".join(
            difflib.unified_diff(
                original_top.decode().splitlines(keepends=True),
                candidate.decode().splitlines(keepends=True),
                fromfile="a/Aeneas/NonPos/Top.lean",
                tofile="b/Aeneas/NonPos/Top.lean",
            )
        ).encode()
        if delta != refs.verify(selection["top_patch_ref"]).read_bytes():
            raise ValueError("NonposQualifiedTopPatch")
        header = (
            b"meta def elabGroup (ss : Array StructStx) : CommandElabM Unit := do\n"
        )
        tail = b"\n@[command_elab nonposStructure]"

        def outside_group(raw):
            if raw.count(header) != 1 or raw.count(tail) != 1:
                raise ValueError("NonposQualifiedTopBoundary")
            prefix, rest = raw.split(header)
            _, suffix = rest.split(tail)
            return prefix, suffix

        if outside_group(original_top) != outside_group(candidate):
            raise ValueError("NonposQualifiedTopNonMetaChange")
        write_once(out / "nonpos-context/original-upstream-Top.lean", original_top)
        sources[key] = candidate
    order = module_plan(sources, ("Aeneas.NonPos.Std",))
    root_source = E / "proofs/Correspondence036/Dependencies/AeneasRootNonPos.lean"
    original = (backend / "Aeneas.lean").read_bytes()
    if root_source.read_bytes() != original + b"public import Aeneas.NonPos.Std\n":
        raise ValueError("NonposContextRootSource")
    original_outputs = {
        p: digest(p)
        for p in (backend / ".lake/build/lib/lean").glob("Aeneas.*")
        if p.is_file()
    }
    paths = prepare_library_overlay(backend, compiled, compile_roots={"Aeneas"})
    env = {**env, "LEAN_PATH": os.pathsep.join(map(str, paths))}
    for module in order:
        relative = module.replace(".", "/") + ".lean"
        write_once(project / relative, sources["backends/lean/" + relative])
    write_once(project / "Aeneas.lean", root_source.read_bytes())
    controls = []
    if selection is not None:
        controls = [
            "QualifiedNamesControl",
            "QualifiedNamesAudit",
            "QualifiedNamesWrong",
        ]
        for label, key in zip(
            controls, ("control_ref", "audit_ref", "wrong_ref"), strict=True
        ):
            write_once(
                project / (label + ".lean"), refs.verify(selection[key]).read_bytes()
            )
    commands = []

    def constrain():
        resource.setrlimit(resource.RLIMIT_AS, (limit, limit))

    for module in [*order, "Aeneas", *controls]:
        log = out / "nonpos-context" / module
        log.mkdir(parents=True)
        relative = module.replace(".", "/")
        output = compiled / (relative + ".olean")
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
            str(project / (relative + ".lean")),
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
        row = dict(
            module=module,
            argv=argv,
            exit_code=result.returncode,
            source_sha256=digest(project / (relative + ".lean")),
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        expected = 1 if module == "QualifiedNamesWrong" else 0
        row["expected_exit_code"] = expected
        if result.returncode == 0:
            row["olean_sha256"] = digest(output)
        write_once(log / "result.json", row)
        commands.append(row)
        if any(digest(path) != checksum for path, checksum in original_outputs.items()):
            raise ValueError("NonposContextOriginalOutputMutated")
        if result.returncode != expected:
            raise ValueError("NonposContextCompile:" + module)
        output_text = (log / "stdout.txt").read_text()
        if module == "QualifiedNamesWrong" and (
            "QualifiedNamesWrong.lean:" not in output_text
            or "error:" not in output_text
            or "unknown" in output_text.lower()
        ):
            raise ValueError("NonposQualifiedWrongTypeNotRejected")
        if (
            module == "QualifiedNamesAudit"
            and output_text.count("CORE036_QUALIFIED_NAMES_AUDIT_OK") != 1
        ):
            raise ValueError("NonposQualifiedMissingAudit")
    if selection is not None:
        log = out / "nonpos-context/QualifiedNamesFreshKernel"
        log.mkdir()
        argv = [str(sdk / "bin/leanchecker"), "--fresh", "QualifiedNamesAudit"]
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
        row = dict(
            module="QualifiedNamesFreshKernel",
            argv=argv,
            exit_code=result.returncode,
            expected_exit_code=0,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        if result.returncode != 0:
            raise ValueError("NonposQualifiedFreshKernel")
    write_once(
        out / "nonpos-context/result.json",
        dict(
            format="core036.nonpos-context.v2",
            library_binding_ref=reference,
            source_manifest_ref=library["source_manifest_ref"],
            root_source_sha256=digest(root_source),
            commands=commands,
            original_root_outputs_unchanged=True,
            qualified_name_controls_checked=selection is not None,
            native_proof="unestablished",
            product_adoption="unactivated",
        ),
    )
    return env
