"""Preserve a closed stopped gate's compilation data without inheriting a pass."""

from pathlib import Path
import re

SHARED_SOURCES = {
    "flake.lock",
    "rust-toolchain.toml",
    "original-script",
    "experiments/transition-study036/shell.nix",
    "experiments/transition-study036/quality-runtime-v2.sh",
    "experiments/transition-study036/toolchain.json",
    "experiments/transition-study036/quality-launch-inputs-v2.json",
    "specs/036-core-transition-feasibility/evidence/v2/w001/environments/env0001/native-inputs.json",
}


def wall_cache_target(cp, previous, receipt, job, private):
    from artifact_registration_v2 import guard_protected_components

    guard_protected_components(private)
    target = Path(private) / "disposable/gate-a0538/target"
    if (
        cp.get("attempt_id") != "a0538"
        or previous.get("record_id") != "a0538"
        or previous.get("stage") != "Q"
        or previous.get("slots") != ["canonical-quality"]
        or cp.get("stage_outcome") != "resource_stopped"
        or cp.get("outcome", {}).get("operational") != "closed"
        or cp.get("source_validation_error") is not None
        or previous.get("source_subject_ref") != cp.get("source_subject_ref")
        or receipt.get("source_subject_ref") != cp.get("source_subject_ref")
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != -9
        or receipt.get("stop_reason") != "WallLimit"
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
        or job.get("mode") != "gate"
        or job.get("target") != str(target)
    ):
        raise ValueError("QualityWarmExactClosedWallOwner")
    return target


def check_compile_environment(previous, current):
    for key in ("tools", "configurations"):
        if previous[key] != current[key]:
            raise ValueError("QualityWarmCompileEnvironment:" + key)

    def fixed_environment(capture):
        environment = dict(capture["environment"])
        if any(
            not isinstance(environment.get(key), str)
            for key in ("CARGO_TARGET_DIR", "TMPDIR")
        ):
            raise ValueError("QualityWarmMissingEnvironment")
        target = Path(environment["CARGO_TARGET_DIR"])
        temporary = Path(environment.pop("TMPDIR"))
        if not target.is_absolute() or len(target.parents) < 3:
            raise ValueError("QualityWarmTargetPath")
        if any(
            part in {"parameters.bin", "compression_prover_key.bin", ".."}
            for path in (target, temporary)
            for part in path.parts
        ):
            raise ValueError("QualityWarmTemporaryPath")
        temporary_root = target.parents[2] / "tmp"
        if (
            not target.is_absolute()
            or not temporary.is_absolute()
            or not (
                temporary == temporary_root
                or (
                    temporary.parent == temporary_root
                    and re.fullmatch(r"nix-shell-[0-9]+-[0-9]+", temporary.name)
                )
            )
        ):
            raise ValueError("QualityWarmTemporaryPath")
        return environment

    if fixed_environment(previous) != fixed_environment(current):
        raise ValueError("QualityWarmCompileEnvironment:environment")

    def closure_paths(capture):
        return {name: row["paths"] for name, row in capture["closures"].items()}

    if closure_paths(previous) != closure_paths(current):
        raise ValueError("QualityWarmDependencyClosure")
    for key in SHARED_SOURCES:
        if (
            key not in previous["sources"]
            or key not in current["sources"]
            or any(
                previous["sources"][key][field] != current["sources"][key][field]
                for field in ("bytes", "sha256")
            )
        ):
            raise ValueError("QualityWarmCompiledSource:" + key)


def retain_cache(target, out, *, budget):
    from artifact_io import digest, write_once
    from artifact_registration_v2 import guard_protected_components
    from native_partial_cache_retention_v2 import complete_inventory
    from native_worker_cache_retention_v2 import archive_groups
    from native_canary_cache_retention_v2 import CountOnlySink
    from backend_ir_retention_v2 import _archive, _archive_stream, _verify_archive

    guard_protected_components(target)
    guard_protected_components(out)
    if type(budget) is not int or budget <= 0:
        raise ValueError("QualityWarmArchiveBudget")
    inventory = complete_inventory(
        target, maximum_bytes=3 * 1024**3, domain="closed-quality-cache"
    )
    groups = archive_groups(inventory["files"])
    if not groups:
        raise ValueError("QualityWarmEmptyCache")
    parts = []
    for index, rows in enumerate(groups):
        counter = CountOnlySink()
        _archive_stream(target, rows, counter, compressed_limit=128 * 1024**2)
        parts.append(
            dict(
                name=f"part-{index:04d}.tar.gz",
                bytes=counter.total,
                sha256=counter.checksum.hexdigest(),
                files=rows,
            )
        )
    out.mkdir(parents=True, exist_ok=False)
    write_once(out / "complete-inventory.json", inventory)
    archive_bytes = sum(part["bytes"] for part in parts)
    write_once(
        out / "archive-plan.json",
        dict(parts=parts, archive_bytes=archive_bytes, budget=budget),
    )
    if archive_bytes + 16 * 1024**2 > budget:
        raise ValueError("QualityWarmArchivePeakCapacity")
    for part in parts:
        path = out / part["name"]
        _archive(target, part["files"], path, compressed_limit=128 * 1024**2)
        _verify_archive(path, part["files"])
        if path.stat().st_size != part["bytes"] or digest(path) != part["sha256"]:
            raise ValueError("QualityWarmCountedArchiveChanged")
    if (
        complete_inventory(
            target, maximum_bytes=3 * 1024**3, domain="closed-quality-cache"
        )
        != inventory
    ):
        raise ValueError("QualityWarmCacheChangedDuringRetention")
    result = dict(
        format="core036.quality-cache-preservation.v3",
        parts=parts,
        file_count=len(inventory["files"]),
        file_bytes=inventory["file_bytes"],
        unique_inode_bytes=inventory["unique_inode_bytes"],
        archive_bytes=archive_bytes,
        no_disposal=True,
        quality_pass_inherited=False,
    )
    write_once(out / "result.json", result)
    return result


def prepare_warm_cache(*, refs, checkpoint_ref, declaration, core, cli, out, config):
    from artifact_io import RootRegistry, read, digest
    from quality_runtime_v2 import CAPTURE_FIELDS, read_capture
    from controller_v2 import ref_for
    from records import MANIFEST

    private, future = refs.roots["private"], refs.roots["future_evidence"]
    cp_path = refs.verify(checkpoint_ref)
    if (
        cp_path != future / "attempts/a0538/checkpoint.json"
        or checkpoint_ref != declaration["predecessor"]
    ):
        raise ValueError("QualityWarmCorrectivePredecessor")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(checkpoint_ref)
    previous = read(cp_path.parent / "declaration.json", limit=MANIFEST)
    # The fully observed one-hour cold gate emits34,974,794 receipt bytes.
    # Scope this explicit64MiB read to that exact closed gate, not generic controls.
    if (
        refs.verify(config["warm_cache_receipt_ref"])
        != cp_path.parent / "child/receipt.json"
    ):
        raise ValueError("QualityWarmReceiptOwnership")
    receipt = refs.read(config["warm_cache_receipt_ref"], limit=64 * 1024**2)
    if (
        previous["profile"] != declaration["profile"]
        or receipt.get("controller_error") is not None
        or receipt.get("growth_observer_scope") != "registered_actual_roots"
        or receipt.get("free_volume_observer_scope") != "actual_registered_volumes"
    ):
        raise ValueError("QualityWarmObservedProfile")
    subject = refs.read(previous["source_subject_ref"], limit=MANIFEST)

    def old_source(name):
        entries = [
            row
            for row in subject["files"]
            if row["logical_ref"]["root_id"] == "repository"
            and row["logical_ref"]["path"] == "experiments/transition-study036/" + name
        ]
        if len(entries) != 1:
            raise ValueError("QualityWarmFrozenInput")
        return entries[0]

    old_config = refs.read(old_source("quality-inputs-v2.json")["snapshot_ref"])
    for key in ("cli_result_ref", "cli_checkpoint_ref", "runtime_fixture_inputs"):
        if old_config[key] != config[key]:
            raise ValueError("QualityWarmSourceCliFixtureBinding")
    binding = old_source("toolchain-v2.json")
    if binding["logical_ref"] != ref_for(
        Path(__file__).parent / "toolchain-v2.json", refs
    ):
        raise ValueError("QualityWarmPreparedCoreBinding")
    base = private / "quality/a0538"
    if refs.verify(config["warm_cache_job_ref"]) != base / "runtime-job.json":
        raise ValueError("QualityWarmJobOwnership")
    old_job = refs.read(config["warm_cache_job_ref"])
    target = wall_cache_target(cp, previous, receipt, old_job, private)
    if (
        receipt["final_incremental_storage_bytes"]
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    ):
        raise ValueError("QualityWarmStorageReconciliation")
    if receipt["argv"][1:] != [
        str(Path(__file__).parent / "quality_v2.py"),
        "--declaration",
        str(cp_path.parent / "declaration.json"),
        "--out",
        str(base),
    ]:
        raise ValueError("QualityWarmActualExecutor")
    if old_job["core"] != str(core) or old_job["script"] != str(
        core / "scripts/gates.sh"
    ):
        raise ValueError("QualityWarmOriginalCore")
    capture_path = base / "runtime/before.json"
    ref = config["warm_cache_before_ref"]
    if refs.verify(ref) != capture_path:
        raise ValueError("QualityWarmCaptureOwnership")
    capture_reference = dict(
        path=str(capture_path), bytes=ref["bytes"], sha256=ref["sha256"]
    )
    capture = read_capture(capture_path, capture_reference)
    if (
        set(capture) != CAPTURE_FIELDS
        or capture["phase"] != "before"
        or capture["format"] != "core036.quality-runtime-capture.v2"
    ):
        raise ValueError("QualityWarmBeforeCapture")
    if capture["environment"]["BEHAVIOR_BIN"] != str(cli) or capture["environment"][
        "CARGO_TARGET_DIR"
    ] != str(target):
        raise ValueError("QualityWarmCliTarget")
    if capture["sources"]["original-script"]["sha256"] != digest(
        core / "scripts/gates.sh"
    ):
        raise ValueError("QualityWarmOriginalScript")
    # Complete current Core/source-export/lock/CLI verification is also performed
    # by the caller; old capture cannot confer any passed-quality claim.
    budget = (
        declaration["profile"]["limits"]["cache_bytes"]
        - receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"][
            "cache"
        ]
    )
    retained = retain_cache(target, out / "retained-cache", budget=budget)
    return (
        target,
        dict(path=str(capture_path), bytes=ref["bytes"], sha256=ref["sha256"]),
        retained,
    )
