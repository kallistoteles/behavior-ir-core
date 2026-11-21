"""Retain actual failed403 source/mirrors and already archived tools before cleanup."""

from pathlib import Path

from artifact_io import RootRegistry, digest, write_once
from native_cache_retention_v2 import verify_retained_inventory
from owned_cleanup import OwnedCleanup


def failed_target(cp, build, baseline_build, stderr, project, private):
    expected = (
        Path(private) / "disposable/frontend-translator-a0403/workspace/aeneas/src"
    )
    if (
        cp.get("attempt_id") != "a0403"
        or cp.get("stage_outcome") != "failed"
        or cp.get("source_validation_error") is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or Path(project) != expected
        or build.get("label") != "build"
        or type(build.get("exit_code")) is not int
        or build["exit_code"] != 1
        or build.get("cwd") != str(expected)
        or build.get("argv") != baseline_build.get("argv")
        or any(
            token not in stderr
            for token in (
                "interp/InterpStatements.ml",
                "region.late_bound",
                "There is no field",
                "late_bound",
                "Aeneas.LlbcAst.local",
            )
        )
    ):
        raise ValueError("FailedTranslatorCacheContext")
    return expected / "_build"


def run_retention(refs, reference, declaration, out):
    selection = refs.read(reference)
    roles = {
        "failure": "a0403",
        "baseline": "a0395",
        "parsed": "a0402",
        "prior": "a0399",
    }
    required = {
        "format",
        "failure_receipt_ref",
        "failure_stderr_ref",
        "source_binding_ref",
        "prior_inventory_ref",
    } | {
        role + suffix for role in roles for suffix in ("_checkpoint_ref", "_result_ref")
    }
    private = refs.roots["private"]
    work = refs.roots["work"]
    if (
        set(selection) != required
        or selection["format"] != "core036.failed-translator-retention.v2"
        or out != private / "native-cache-retention" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("FailedTranslatorCacheSelection")
    checkpoints, results = {}, {}
    expected_results = {
        "failure": private / "nonpos-translator/a0403/commands/build/result.json",
        "baseline": private / "nonpos-translator/a0395/result.json",
        "parsed": private / "nonpos-translator/a0402/result.json",
        "prior": private / "native-cache-retention/a0399/result.json",
    }
    for role, attempt in roles.items():
        cp_path = refs.verify(selection[role + "_checkpoint_ref"])
        if cp_path != work / "attempts" / attempt / "checkpoint.json":
            raise ValueError("FailedTranslatorCacheCheckpointPath")
        RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
        cp = refs.read(selection[role + "_checkpoint_ref"])
        if (
            cp["attempt_id"] != attempt
            or cp["source_validation_error"] is not None
            or cp["stage_outcome"] != ("failed" if role == "failure" else "succeeded")
        ):
            raise ValueError("FailedTranslatorCacheClosedDependency")
        if refs.verify(selection[role + "_result_ref"]) != expected_results[role]:
            raise ValueError("FailedTranslatorCacheResultPath")
        result = refs.read(selection[role + "_result_ref"])
        if (
            role != "failure"
            and result["source_subject_ref"] != cp["source_subject_ref"]
        ):
            raise ValueError("FailedTranslatorCacheDependencySource")
        checkpoints[role], results[role] = cp, result
    receipt_path = refs.verify(selection["failure_receipt_ref"])
    if receipt_path != work / "attempts/a0403/child/receipt.json":
        raise ValueError("FailedTranslatorCacheReceiptPath")
    receipt = refs.read(selection["failure_receipt_ref"])
    if (
        receipt["source_subject_ref"] != checkpoints["failure"]["source_subject_ref"]
        or receipt["stop_reason"] is not None
        or not receipt["tree_empty"]
        or not receipt["group_empty"]
        or type(receipt["exit_code"]) is not int
        or receipt["exit_code"] != 1
    ):
        raise ValueError("FailedTranslatorCacheOpenFailure")
    stderr_path = refs.verify(selection["failure_stderr_ref"])
    if (
        stderr_path != private / "nonpos-translator/a0403/commands/build/stderr.txt"
        or digest(stderr_path) != results["failure"]["stderr_sha256"]
    ):
        raise ValueError("FailedTranslatorCacheStderr")
    baseline, parsed = results["baseline"], results["parsed"]
    if (
        baseline["new_translator_compiled"] is not True
        or baseline["compiled_sources_match_declared_repair"] is not True
        or parsed["format"] != "core036.mutable-buffer-source-parse-result.v2"
        or parsed["source_syntax_checked"] is not True
    ):
        raise ValueError("FailedTranslatorCacheSourcePrerequisite")
    project = private / "disposable/frontend-translator-a0403/workspace/aeneas/src"
    baseline_build = next(
        row for row in baseline["commands"] if row["label"] == "build"
    )
    target = failed_target(
        checkpoints["failure"],
        results["failure"],
        baseline_build,
        stderr_path.read_text(),
        project,
        private,
    )
    cleanup = OwnedCleanup(private)
    cleanup._target(target)
    if (target / "default/main.exe").exists() or (
        project.parents[2] / "retained/aeneas"
    ).exists():
        raise ValueError("FailedTranslatorCacheUnexpectedMain")
    binding = refs.read(selection["source_binding_ref"])
    if (
        binding["format"] != "core036.mutable-buffer-source.v2"
        or binding.get("parse_checkpoint_ref") != selection["parsed_checkpoint_ref"]
        or binding.get("parse_result_ref") != selection["parsed_result_ref"]
        or refs.read(parsed["binding_ref"])
        != {
            k: v
            for k, v in binding.items()
            if k not in {"parse_checkpoint_ref", "parse_result_ref"}
        }
    ):
        raise ValueError("FailedTranslatorCacheParseBinding")
    prospective = parsed["prospective_sources"]
    if set(prospective) != {
        "interp/InterpExpressions.ml",
        "interp/InterpExpressions.mli",
        "interp/InterpStatements.ml",
    }:
        raise ValueError("FailedTranslatorCacheProspectiveSources")
    expected = {
        **baseline["repaired_sources"],
        **{name: row["sha256"] for name, row in prospective.items()},
    }
    if len(expected) != 17:
        raise ValueError("FailedTranslatorCacheSourceSet")
    retained = [
        reference,
        *[value for key, value in selection.items() if key.endswith("_ref")],
    ]
    out.mkdir(parents=True)
    for name, checksum in expected.items():
        relative = Path(name)
        if (
            relative.is_absolute()
            or ".." in relative.parts
            or relative.name in {"parameters.bin", "compression_prover_key.bin"}
        ):
            raise ValueError("FailedTranslatorCacheSourcePath")
        source = project / relative
        row = refs.reference("private", str(source.relative_to(private)))
        if row["sha256"] != checksum:
            raise ValueError("FailedTranslatorCacheSourceChanged")
        retained.append(row)
        if name in {"dune", "dune-project"}:
            continue
        mirror = target / "default" / relative
        if digest(mirror) != checksum:
            raise ValueError("FailedTranslatorCacheMirrorChanged")
        saved = out / "compiled-sources" / relative
        saved.parent.mkdir(parents=True, exist_ok=True)
        write_once(saved, mirror.read_bytes())
        retained.append(refs.reference("private", str(saved.relative_to(private))))
    version = (
        baseline["version"].removeprefix("aeneas ")
        + "+read-buffer-"
        + binding["patch_ref"]["sha256"][:12]
    )
    for name in ("GitVersion.ml", "git-sha"):
        source = target / "default" / name
        raw = source.read_bytes()
        if version.encode() not in raw:
            raise ValueError("FailedTranslatorCacheVersionChanged")
        saved = out / "compiled-sources" / name
        write_once(saved, raw)
        retained.append(refs.reference("private", str(saved.relative_to(private))))
    if (
        refs.verify(selection["prior_inventory_ref"])
        != private / "native-cache-retention/a0399/executables.json"
    ):
        raise ValueError("FailedTranslatorCachePriorInventory")
    previous = refs.read(selection["prior_inventory_ref"])
    entries = [
        row for row in previous if row["original_cache_path"] != "default/main.exe"
    ]
    if (
        len(previous) != 6
        or len(entries) != 5
        or results["prior"]["executable_paths"] != 6
    ):
        raise ValueError("FailedTranslatorCachePriorCoverage")
    verify_retained_inventory(target, entries, refs)
    retained.extend(row["retained_ref"] for row in entries)
    write_once(out / "executables.json", entries)
    write_once(
        out / "registration.json",
        cleanup.register(target, retained_refs=retained, registry=refs),
    )
    write_once(out / "cleanup.json", cleanup.dispose(target, paced=True))
    write_once(
        out / "result.json",
        dict(
            format="core036.failed-translator-retention-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            removed=str(target),
            executable_paths=5,
            unique_executable_hashes=len({row["raw_sha256"] for row in entries}),
            new_archive_bytes=0,
            outside_sources_preserved=17,
            compiled_source_mirrors_preserved=15,
            retained_refs=retained,
            source_failure_preserved=True,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
