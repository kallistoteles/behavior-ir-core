"""Retain exact emitted executables before reclaiming the closed native cache."""

import argparse
import gzip
import hashlib
from pathlib import Path
import time
import zlib

from artifact_io import RootRegistry, digest, read, write_once
from owned_cleanup import OwnedCleanup

E = Path(__file__).resolve().parent
R = E.parents[1]

TOOL_HASHES = {
    "a0351": "cb57974ebe0d20b954cd0bd51589259adc66034f425d25f0202ec97f54a949fc",
    "a0363": "f39b03a5b97da59084b2686b997de26c20842aebb570d3f47f289a4576306185",
    "a0372": "4e94169dca4f242997d1e8b0afb9292bf230fd05e17fbe6a6ada3d032872ccaf",
    "a0383": "ae795600951da4d73bc9da63da4808d4de3b295a193b44a54012c48f541879dc",
    "a0395": "9708b0d182f525e5abe09ee3a34a61e3a5dafbaad2e0ed470f82b1df135265b5",
    "a0406": "36402288c17a1d414e2a53352cf81b4f34aced0a184e055e4a161178c8536257",
    "a0417": "80d21f64ad7156045192d028100bcb54d1cece491be73ef8c73e82c47a5e1d06",
}
TOOL_BASE_SOURCES = {
    "Translate.ml",
    "extract/Extract.ml",
    "extract/ExtractTypes.ml",
    "dune",
    "dune-project",
}


def verify_archive(path, raw_bytes, raw_sha256):
    size, checksum = 0, hashlib.sha256()
    try:
        with gzip.open(path, "rb") as source:
            while data := source.read(256 * 1024):
                size += len(data)
                if size > raw_bytes:
                    raise ValueError("NativeCacheArchiveExpansion")
                checksum.update(data)
                time.sleep(0.002)
    except (OSError, EOFError, zlib.error) as exc:
        raise ValueError("NativeCacheArchiveCorrupt") from exc
    if size != raw_bytes or checksum.hexdigest() != raw_sha256:
        raise ValueError("NativeCacheArchiveIdentity")


def archive_exact(source, destination, *, compressed_limit):
    checksum, size = hashlib.sha256(), 0
    with Path(source).open("rb") as original, Path(destination).open("xb") as raw:
        with gzip.GzipFile(
            filename="", mode="wb", fileobj=raw, compresslevel=6, mtime=0
        ) as saved:
            while data := original.read(256 * 1024):
                checksum.update(data)
                size += len(data)
                saved.write(data)
                if raw.tell() > compressed_limit:
                    raise ValueError("NativeCacheArchiveCompressedBound")
                time.sleep(0.002)
    if Path(destination).stat().st_size > compressed_limit:
        raise ValueError("NativeCacheArchiveCompressedBound")
    expected = checksum.hexdigest()
    if digest(source) != expected or Path(source).stat().st_size != size:
        raise ValueError("NativeCacheArchiveSourceChanged")
    verify_archive(destination, size, expected)
    return dict(
        raw_bytes=size,
        raw_sha256=expected,
        compressed_bytes=Path(destination).stat().st_size,
        compressed_sha256=digest(destination),
    )


def verify_retained_inventory(target, entries, refs):
    """Admit a closed archive only if it covers the unchanged current ELF set."""
    target = Path(target)
    actual = set()
    for path in target.rglob("*"):
        if path.is_symlink():
            raise ValueError("NativeCacheRetentionSymlink")
        if path.is_file() and path.stat().st_mode & 0o111:
            with path.open("rb") as source:
                if source.read(4) == b"\x7fELF":
                    actual.add(str(path.relative_to(target)))
    if not isinstance(entries, list) or not 1 <= len(entries) <= 4096:
        raise ValueError("NativeCacheRetentionInventoryBound")
    seen, verified = set(), set()
    for row in entries:
        relative = row["original_cache_path"]
        if relative not in actual or relative in seen:
            raise ValueError("NativeCacheRetentionInventoryMembership")
        seen.add(relative)
        path = target / relative
        if path.stat().st_size != row["raw_bytes"] or digest(path) != row["raw_sha256"]:
            raise ValueError("NativeCacheRetentionExecutableChanged")
        saved = refs.verify(row["retained_ref"])
        key = (str(saved), row["raw_bytes"], row["raw_sha256"])
        if key not in verified:
            if row["encoding"] == "gzip":
                verify_archive(saved, row["raw_bytes"], row["raw_sha256"])
            elif (
                row["encoding"] != "raw"
                or saved.stat().st_size != row["raw_bytes"]
                or digest(saved) != row["raw_sha256"]
            ):
                raise ValueError("NativeCacheRetentionEncoding")
            verified.add(key)
    if seen != actual:
        raise ValueError("NativeCacheRetentionUnlistedExecutable")


def retention_target(cp, native, native_path, private):
    """Only explicitly observed, closed native compilation contexts."""
    native_path, private = Path(native_path), Path(private)
    if cp["attempt_id"] == "a0135":
        if (
            native_path != private / "native-extraction/a0135/result.json"
            or cp.get("stage_outcome") != "failed"
            or cp.get("source_validation_error") is not None
            or cp.get("outcome", {}).get("operational") != "closed"
            or native.get("format") != "core036.native-extraction.v2"
            or native.get("source_subject_ref") != cp["source_subject_ref"]
            or type(native.get("extraction_exit_code")) is not int
            or native["extraction_exit_code"] != 101
            or native.get("translation_exit_code") is not None
            or native.get("native_proof") != "unestablished"
        ):
            raise ValueError("NativeCacheRetentionFailedAnalysisContext")
        return private / "disposable/analysis-a0135/target"
    if cp["attempt_id"] in TOOL_HASHES:
        attempt = cp["attempt_id"]
        project = private / (
            "disposable/frontend-translator-" + attempt + "/workspace/aeneas/src"
        )
        expected_sources = TOOL_BASE_SOURCES | (
            {"extract/ExtractBase.ml", "pure/ReorderDecls.ml"}
            if attempt in {"a0363", "a0372", "a0383", "a0395", "a0406", "a0417"}
            else set()
        )
        if attempt in {"a0372", "a0383", "a0395", "a0406", "a0417"}:
            expected_sources |= {
                "interp/InterpExpressions.ml",
                "pure/PrintPure.ml",
                "pure/Pure.ml",
                "pure/PureMicroPassesAnnots.ml",
                "symbolic/PrintSymbolicAst.ml",
                "symbolic/SymbolicAst.ml",
                "symbolic/SymbolicToPureExpressions.ml",
                "symbolic/SynthesizeSymbolic.ml",
            }
        if attempt in {"a0395", "a0406", "a0417"}:
            expected_sources |= {
                "interp/InterpExpressions.mli",
                "interp/InterpStatements.ml",
            }
        commands = native.get("commands", [])
        if (
            native_path != private / ("nonpos-translator/" + attempt + "/result.json")
            or native.get("format") != "core036.nonpos-translator.v2"
            or cp.get("stage_outcome") != "succeeded"
            or cp.get("source_validation_error") is not None
            or native.get("source_subject_ref") != cp["source_subject_ref"]
            or native.get("project") != str(project)
            or native.get("executable")
            != str(
                private
                / ("disposable/frontend-translator-" + attempt + "/retained/aeneas")
            )
            or native.get("executable_sha256") != TOOL_HASHES[attempt]
            or native.get("new_translator_compiled") is not True
            or native.get("compiled_sources_match_declared_repair") is not True
            or native.get("original_sources_unchanged") is not True
            or set(native.get("repaired_sources", {})) != expected_sources
            or len(commands) != 3
            or {row.get("label") for row in commands} != {"build", "version", "help"}
            or any(
                type(row.get("exit_code")) is not int or row["exit_code"] != 0
                for row in commands
            )
        ):
            raise ValueError("NativeCacheRetentionToolContext")
        return project / "_build"
    elif cp["attempt_id"] == "a0256":
        expected = private / "native-builds/a0256/result.json"
        target = private / "disposable/native-a0007/target"
        compiled_subject = cp["source_subject_ref"]
    elif cp["attempt_id"] == "a0303":
        expected = private / "native-completion/a0303/result.json"
        target = private / "disposable/native-a0301/target"
        if (
            native.get("format") != "core036.native-completion.v2"
            or native.get("worker_path") != str(private / "native-builds/a0301/worker")
            or native.get("completed_prior_tests") != 77
            or native.get("original_observations_compared") != 12
        ):
            raise ValueError("NativeCacheRetentionCompletionContext")
        compiled_subject = native["compiled_source_subject_ref"]
    elif cp["attempt_id"] == "a0329":
        expected = private / "native-builds/a0329/result.json"
        target = private / "disposable/native-a0329/target"
        quality = native.get("scoped_quality", {})
        required_quality = {
            "workers-build",
            "oracle-build",
            "format",
            "clippy",
            "R-execute",
            "GV-execute",
            "B-execute",
            "oracle-prepare-0",
            "oracle-prepare-1",
            "oracle-replay-0",
            "oracle-replay-1",
        }
        if (
            native.get("format") != "core036.native-protocol-build.v2"
            or set(quality) != required_quality
            or any(type(value) is not int or value != 0 for value in quality.values())
        ):
            raise ValueError("NativeCacheRetentionFullBuildContext")
        compiled_subject = cp["source_subject_ref"]
    else:
        raise ValueError("NativeCacheRetentionUnknownContext")
    if (
        cp["stage_outcome"] != "succeeded"
        or cp.get("source_validation_error") is not None
        or native_path != expected
        or native["source_subject_ref"] != cp["source_subject_ref"]
        or native["target"] != str(target)
        or type(native["cargo_exit_code"]) is not int
        or native["cargo_exit_code"] != 0
        or set(native["built_executables"]) != {"R", "GV", "B", "oracle"}
        or any(
            row["source_subject_ref"] != compiled_subject
            for row in native["built_executables"].values()
        )
    ):
        raise ValueError("NativeCacheRetentionClosedSubject")
    return target


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    from controller_v2 import registry_for

    refs = registry_for(declaration["work_id"])
    if refs.roots["private"] != private or refs.roots["repository"] != R:
        raise ValueError("NativeCacheRetentionRegisteredContext")
    work = refs.roots["work"]
    out = Path(args.out)
    if (
        out != private / "native-cache-retention" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("NativeCacheRetentionOutput")
    config = read(E / "native-cache-retention-inputs-v2.json")
    if "joint_proof_cache_ref" in config:
        if (
            set(config) != {"format", "joint_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("JointProofCacheRetentionSelection")
        from proof_cache_retention_joint_v2 import run_retention

        return run_retention(refs, config["joint_proof_cache_ref"], declaration, out)
    if "native_partial_cache_ref" in config:
        if (
            set(config) != {"format", "native_partial_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("NativePartialCacheRetentionSelection")
        from native_partial_cache_retention_v2 import run_retention

        return run_retention(refs, config["native_partial_cache_ref"], declaration, out)
    if "native_analysis_cache_ref" in config:
        if (
            set(config) != {"format", "native_analysis_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("NativeAnalysisCacheRetentionSelection")
        from native_analysis_cache_retention_v2 import run_retention

        return run_retention(
            refs, config["native_analysis_cache_ref"], declaration, out
        )
    if "native_canary_cache_ref" in config:
        if (
            set(config) != {"format", "native_canary_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("NativeCanaryCacheRetentionSelection")
        from native_canary_cache_retention_v2 import run_retention

        return run_retention(refs, config["native_canary_cache_ref"], declaration, out)
    if "successful_canonical_proof_cache_ref" in config:
        if (
            set(config) != {"format", "successful_canonical_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("NativeCacheRetentionInputs")
        from proof_cache_retention_canonical_success_v2 import run_retention

        return run_retention(
            refs, config["successful_canonical_proof_cache_ref"], declaration, out
        )
    if "failed_translator_ref" in config:
        if (
            set(config) != {"format", "failed_translator_ref"}
            or config["format"] != "core036.native-cache-retention-inputs.v2"
        ):
            raise ValueError("FailedTranslatorCacheRetentionSelection")
        from failed_translator_cache_v2 import run_retention

        return run_retention(refs, config["failed_translator_ref"], declaration, out)
    if "recent_parametric_proof_cache_ref" in config:
        if (
            set(config) != {"format", "recent_parametric_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("NativeCacheRetentionInputs")
        from proof_cache_retention_parametric_recent_v2 import run_retention

        return run_retention(
            refs, config["recent_parametric_proof_cache_ref"], declaration, out
        )
    if "failed_parametric_proof_cache_ref" in config:
        if (
            set(config) != {"format", "failed_parametric_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("NativeCacheRetentionInputs")
        from proof_cache_retention_parametric_failed_v2 import run_retention

        return run_retention(
            refs, config["failed_parametric_proof_cache_ref"], declaration, out
        )
    if "legacy_models_proof_cache_ref" in config:
        if (
            set(config) != {"format", "legacy_models_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("NativeCacheRetentionInputs")
        from proof_cache_retention_legacy_models_v2 import run_retention

        return run_retention(
            refs, config["legacy_models_proof_cache_ref"], declaration, out
        )
    if "materialize_proof_cache_ref" in config:
        if (
            set(config) != {"format", "materialize_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("NativeCacheRetentionInputs")
        from proof_cache_retention_materialize_v2 import run_retention

        return run_retention(
            refs, config["materialize_proof_cache_ref"], declaration, out
        )
    if "failed_canonical_proof_cache_ref" in config:
        if (
            set(config) != {"format", "failed_canonical_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention.v2"
        ):
            raise ValueError("NativeCacheRetentionInputs")
        from proof_cache_retention_canonical_failed_v2 import run_retention

        return run_retention(
            refs, config["failed_canonical_proof_cache_ref"], declaration, out
        )
    if "earlier_proof_cache_ref" in config:
        if (
            set(config) != {"format", "earlier_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention-inputs.v2"
        ):
            raise ValueError("EarlierProofCacheRetentionSelection")
        from proof_cache_retention_earlier_v2 import run_retention

        return run_retention(refs, config["earlier_proof_cache_ref"], declaration, out)
    if "map_index_proof_cache_ref" in config:
        if (
            set(config) != {"format", "map_index_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention-inputs.v2"
        ):
            raise ValueError("MapIndexProofCacheRetentionSelection")
        from proof_cache_retention_map_index_v2 import run_retention

        return run_retention(
            refs, config["map_index_proof_cache_ref"], declaration, out
        )
    if "recent_proof_cache_ref" in config:
        if (
            set(config) != {"format", "recent_proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention-inputs.v2"
        ):
            raise ValueError("RecentProofCacheRetentionSelection")
        from proof_cache_retention_recent_v2 import run_retention

        return run_retention(refs, config["recent_proof_cache_ref"], declaration, out)
    if "proof_cache_ref" in config:
        if (
            set(config) != {"format", "proof_cache_ref"}
            or config["format"] != "core036.native-cache-retention-inputs.v2"
        ):
            raise ValueError("ProofCacheRetentionSelection")
        from proof_cache_retention_v2 import run_retention

        return run_retention(refs, config["proof_cache_ref"], declaration, out)
    if "backend_ir_ref" in config:
        if (
            set(config) != {"format", "backend_ir_ref"}
            or config["format"] != "core036.native-cache-retention-inputs.v2"
        ):
            raise ValueError("BackendIrRetentionSelection")
        from backend_ir_retention_v2 import run_retention

        return run_retention(refs, config["backend_ir_ref"], declaration, out)
    if (
        set(config)
        not in (
            {"format", "native_ref", "checkpoint_ref"},
            {
                "format",
                "native_ref",
                "checkpoint_ref",
                "prior_inventory_ref",
                "prior_registration_ref",
                "prior_checkpoint_ref",
            },
        )
        or config["format"] != "core036.native-cache-retention-inputs.v2"
    ):
        raise ValueError("NativeCacheRetentionInputs")
    checkpoint_path = refs.verify(config["checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    cp = refs.read(config["checkpoint_ref"])
    native_path = refs.verify(config["native_ref"])
    native = refs.read(config["native_ref"])
    target = retention_target(cp, native, native_path, private)
    if cp["attempt_id"] == "a0303":
        compiled_path = refs.verify(native["compiled_checkpoint_ref"])
        RootRegistry({"attempt": compiled_path.parent}).verify_closed("attempt")
        compiled = refs.read(native["compiled_checkpoint_ref"])
        if (
            compiled_path != work / "attempts/a0301/checkpoint.json"
            or compiled["source_validation_error"] is not None
            or compiled["source_subject_ref"] != native["compiled_source_subject_ref"]
        ):
            raise ValueError("NativeCacheRetentionCompiledSource")
    cleanup = OwnedCleanup(private)
    cleanup._target(target)
    out.mkdir(parents=True)
    if "prior_inventory_ref" in config:
        prior_checkpoint = refs.verify(config["prior_checkpoint_ref"])
        RootRegistry({"attempt": prior_checkpoint.parent}).verify_closed("attempt")
        prior = refs.read(config["prior_checkpoint_ref"])
        if prior["attempt_id"] != "a0299" or prior["stage_outcome"] != "failed":
            raise ValueError("NativeCacheRetentionPriorCheckpoint")
        if (
            refs.verify(config["prior_inventory_ref"])
            != private / "native-cache-retention/a0299/executables.json"
            or refs.verify(config["prior_registration_ref"])
            != private / "native-cache-retention/a0299/registration.json"
        ):
            raise ValueError("NativeCacheRetentionPriorOwnership")
        entries = refs.read(config["prior_inventory_ref"])
        registration = refs.read(config["prior_registration_ref"])
        verify_retained_inventory(target, entries, refs)
        retained = registration["retained_refs"]
        if (
            config["native_ref"] not in retained
            or config["checkpoint_ref"] not in retained
        ):
            raise ValueError("NativeCacheRetentionPriorSubject")
        current = cleanup.register(target, retained_refs=retained, registry=refs)
        if current != registration:
            raise ValueError("NativeCacheRetentionPriorRegistrationChanged")
        write_once(out / "executables.json", entries)
        write_once(out / "registration.json", current)
        by_hash = {row["raw_sha256"]: row for row in entries}
        raw_total = sum(row["raw_bytes"] for row in entries)
        compressed_total = 0
    else:
        saved_root = private / "tmp/native-cache-retention" / declaration["record_id"]
        saved_root.mkdir(parents=True, exist_ok=False)
        retained = [config["native_ref"], config["checkpoint_ref"]]
        by_hash = {}
        if cp["attempt_id"] in TOOL_HASHES:
            executable = Path(native["executable"])
            binaries = {
                "aeneas": dict(
                    path=str(executable),
                    sha256=native["executable_sha256"],
                    bytes=executable.stat().st_size,
                )
            }
            retained_parent = private / (
                "disposable/frontend-translator-" + cp["attempt_id"] + "/retained"
            )
            project = Path(native["project"])
            for name, expected_hash in native["repaired_sources"].items():
                source = project / name
                reference = refs.reference("private", str(source.relative_to(private)))
                if reference["sha256"] != expected_hash:
                    raise ValueError("NativeCacheRetentionToolSourceChanged")
                retained.append(reference)
                if name not in {"dune", "dune-project"}:
                    mirror = target / "default" / name
                    if digest(mirror) != expected_hash:
                        raise ValueError("NativeCacheRetentionCompiledMirrorChanged")
                    saved = out / "compiled-sources" / name
                    saved.parent.mkdir(parents=True, exist_ok=True)
                    write_once(saved, mirror.read_bytes())
                    retained.append(
                        refs.reference("private", str(saved.relative_to(private)))
                    )
            for name in ("GitVersion.ml", "git-sha"):
                source = target / "default" / name
                raw = source.read_bytes()
                if native["version"].removeprefix("aeneas ").encode() not in raw:
                    raise ValueError("NativeCacheRetentionVersionSourceChanged")
                saved = out / "compiled-sources" / name
                write_once(saved, raw)
                retained.append(
                    refs.reference("private", str(saved.relative_to(private)))
                )
        elif cp["attempt_id"] == "a0135":
            # No successful workers were produced. Preserve every actual ELF
            # below, and bind all outside worker source/config bytes as well.
            binaries = {}
            retained_parent = native_path.parent / "retained"
            worker = native_path.parent / "worker"
            total_source = 0
            for source in sorted(worker.rglob("*")):
                if source.is_symlink():
                    raise ValueError("NativeCacheRetentionAnalysisSourceLink")
                if source.is_file():
                    total_source += source.stat().st_size
                    if total_source > 128 * 1024**2 or len(retained) > 4096:
                        raise ValueError("NativeCacheRetentionAnalysisSourceBound")
                    retained.append(
                        refs.reference("private", str(source.relative_to(private)))
                    )
        else:
            binaries = native["built_executables"]
            retained_parent = native_path.parent / "retained"
        for role, binary in binaries.items():
            path = Path(binary["path"])
            if not path.is_relative_to(retained_parent) or path.is_relative_to(target):
                raise ValueError("NativeCacheRetentionWorkerOwnership")
            reference = refs.reference("private", str(path.relative_to(private)))
            if (
                reference["sha256"] != binary["sha256"]
                or reference["bytes"] != binary["bytes"]
            ):
                raise ValueError("NativeCacheRetentionWorkerChanged:" + role)
            retained.append(reference)
            by_hash[reference["sha256"]] = dict(
                raw_bytes=reference["bytes"],
                raw_sha256=reference["sha256"],
                retained_ref=reference,
                encoding="raw",
            )
        entries, raw_total, compressed_total = [], 0, 0
        for path in sorted(target.rglob("*")):
            if not path.is_file() or not path.stat().st_mode & 0o111:
                continue
            with path.open("rb") as stream:
                if stream.read(4) != b"\x7fELF":
                    continue
            raw_total += path.stat().st_size
            if raw_total > 2 * 1024**3 or len(entries) >= 4096:
                raise ValueError("NativeCacheRetentionExecutableBound")
            checksum = digest(path)
            row = by_hash.get(checksum)
            if row is None:
                saved = saved_root / (checksum + ".gz")
                row = archive_exact(
                    path, saved, compressed_limit=512 * 1024**2 - compressed_total
                )
                compressed_total += row["compressed_bytes"]
                reference = refs.reference("private", str(saved.relative_to(private)))
                retained.append(reference)
                row = {**row, "retained_ref": reference, "encoding": "gzip"}
                by_hash[checksum] = row
            if row["raw_bytes"] != path.stat().st_size or digest(path) != checksum:
                raise ValueError("NativeCacheRetentionExecutableChanged")
            entries.append(
                {**row, "original_cache_path": str(path.relative_to(target))}
            )
        write_once(out / "executables.json", entries)
        if not entries:
            raise ValueError("NativeCacheRetentionEmptyExecutableInventory")
        verify_retained_inventory(target, entries, refs)
        for row in by_hash.values():
            path = refs.verify(row["retained_ref"])
            if row["encoding"] == "gzip":
                verify_archive(path, row["raw_bytes"], row["raw_sha256"])
        write_once(
            out / "registration.json",
            cleanup.register(target, retained_refs=retained, registry=refs),
        )
    write_once(out / "cleanup.json", cleanup.dispose(target, paced=True))
    write_once(
        out / "result.json",
        dict(
            format="core036.native-cache-retention-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            native_ref=config["native_ref"],
            removed=str(target),
            executable_paths=len(entries),
            unique_executable_hashes=len(by_hash),
            raw_executable_bytes=raw_total,
            new_archive_bytes=compressed_total,
            retained_refs=retained,
            scope="Closed owned compilation intermediates only; exact current executable(s), recorded source/mirrors and every discovered executable retained before disposal",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
