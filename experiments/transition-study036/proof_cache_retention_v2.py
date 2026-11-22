"""Retain closed proof compilation caches losslessly; preserve sources/raw proofs."""

from builtins import BaseExceptionGroup
import os
import re
import stat
from pathlib import Path
from artifact_io import RootRegistry, digest, write_once
from artifact_registration_v2 import guard_protected_components
from backend_ir_retention_v2 import (
    _archive,
    _verify_archive,
    _inventory,
    guarded_inventory_paths,
)
from owned_cleanup import OwnedCleanup
from lean_command_v2 import run_logged_command
from kernel_export_v2 import validate_export

PARENTS = ("a0435", "a0436", "a0439", "a0441", "a0442", "a0445", "a0447", "a0448")
RECENT_PARENTS = ("a0452", "a0453", "a0454")
MAP_INDEX_PARENTS = ("a0456", "a0457", "a0458")
FAILED_CANONICAL_PARENTS = ("a0462", "a0463")
FAILED_PARAMETRIC_PARENTS = ("a0468", "a0469", "a0470")
FAILED_PARAMETRIC_RECENT_PARENTS = ("a0472", "a0473", "a0474")
SUCCESSFUL_CANONICAL_PARENTS = ("a0476",)
JOINT_COMPONENT_PARENTS = (
    "a0499",
    "a0500",
    "a0501",
    "a0502",
    "a0503",
    "a0504",
    "a0505",
    "a0506",
    "a0507",
    "a0508",
    "a0509",
    "a0510",
    "a0511",
    "a0512",
    "a0515",
    "a0516",
    "a0517",
    "a0518",
    "a0519",
    "a0521",
    "a0522",
    "a0524",
    "a0525",
)
RECOVERY_PARENTS = (
    "a0355",
    "a0357",
    "a0359",
    "a0360",
    "a0361",
    "a0366",
    "a0367",
    "a0478",
)
RESIDUAL_RECOVERY_PARENTS = (
    "a0183",
    "a0208",
    "a0213",
    "a0216",
    "a0218",
    "a0219",
    "a0220",
    "a0221",
    "a0235",
    "a0266",
    "a0309",
    "a0321",
    "a0335",
    "a0336",
    "a0337",
    "a0338",
    "a0339",
    "a0340",
    "a0347",
    "a0348",
    "a0350",
    "a0376",
    "a0377",
    "a0378",
    "a0379",
    "a0386",
    "a0388",
    "a0389",
    "a0393",
    "a0396",
    "a0397",
    "a0398",
    "a0409",
    "a0410",
    "a0415",
    "a0420",
    "a0422",
    "a0426",
    "a0428",
    "a0431",
    "a0434",
)
MATERIALIZE_PARENTS = ("a0465",)
LEGACY_MODEL_PARENTS = ("a0222", "a0223", "a0238", "a0252", "a0307", "a0323")
EARLIER_PARENTS = (
    "a0425",
    "a0427",
    "a0429",
    "a0430",
    "a0432",
    "a0433",
    "a0437",
    "a0438",
    "a0446",
    "a0451",
    "a0460",
)
BATCHES = {
    PARENTS: ("a0448", 98),
    RECENT_PARENTS: ("a0454", 113),
    MAP_INDEX_PARENTS: ("a0458", 140),
    EARLIER_PARENTS: ("a0460", 143),
    FAILED_CANONICAL_PARENTS: ("a0460", 143),
    MATERIALIZE_PARENTS: ("a0465", 144),
    LEGACY_MODEL_PARENTS: ("a0465", 144),
    FAILED_PARAMETRIC_PARENTS: ("a0465", 144),
    FAILED_PARAMETRIC_RECENT_PARENTS: ("a0465", 144),
    SUCCESSFUL_CANONICAL_PARENTS: ("a0476", 146),
    RECOVERY_PARENTS: ("a0476", 146),
    RESIDUAL_RECOVERY_PARENTS: ("a0476", 146),
    JOINT_COMPONENT_PARENTS: ("a0460", 143),
}
NAMES = ("compiled", "default-compiled")
KERNEL_SHA256 = "4a80aa1617d3a981fb194652bdba2d6f97d4d93f95f22f526807c1c23cc13f1d"


def targets(private, attempt):
    return _targets(private, attempt, PARENTS)


def _targets(private, attempt, parents):
    if parents not in BATCHES or attempt not in parents:
        raise ValueError("ProofCacheUnknownParent")
    full = (
        (parents == MAP_INDEX_PARENTS and attempt == "a0458")
        or (parents == EARLIER_PARENTS and attempt == "a0460")
        or parents == MATERIALIZE_PARENTS
        or parents == SUCCESSFUL_CANONICAL_PARENTS
        or (parents == RECOVERY_PARENTS and attempt == "a0478")
    )
    names = NAMES if parents in (PARENTS, RECENT_PARENTS) or full else ("compiled",)
    return [Path(private) / "ground-lean-probe" / attempt / name for name in names]


def disposable_root(private, attempt):
    if not isinstance(attempt, str) or re.fullmatch(r"a[0-9]{4}", attempt) is None:
        raise ValueError("ProofCacheDisposableAttempt")
    return Path(private) / "disposable" / ("proof-compiled-" + attempt) / "cache"


def _safe_ref(reference):
    if isinstance(reference, dict) and isinstance(reference.get("path", ""), str):
        guard_protected_components(Path(reference.get("path", "")))


def archive_destination(private, out, attempt, parents):
    if parents not in BATCHES:
        raise ValueError("ProofCacheUnknownBatch")
    if parents == JOINT_COMPONENT_PARENTS:
        return Path(out) / "compiled-caches.tar.gz"
    return (
        Path(private) / "tmp/proof-cache-retention" / attempt / "compiled-caches.tar.gz"
    )


def strict_inventory(root, *, maximum_files, maximum_bytes):
    guard_protected_components(root)
    nodes = 0
    for path in guarded_inventory_paths(root):
        guard_protected_components(path)
        nodes += 1
        if nodes > maximum_files * 2:
            raise ValueError("ProofCacheNodeBound")
        kind = path.lstat().st_mode
        if stat.S_ISLNK(kind):
            raise ValueError("BackendIrSymlink")
        if not stat.S_ISREG(kind) and not stat.S_ISDIR(kind):
            raise ValueError("ProofCacheSpecialNode")
    return _inventory(root, maximum_files=maximum_files, maximum_bytes=maximum_bytes)


def cache_inventory(private):
    return _cache_inventory(private, PARENTS)


def _cache_inventory(private, parents):
    if parents not in BATCHES:
        raise ValueError("ProofCacheUnknownBatch")
    registry = RootRegistry({"private": private})
    rows = []
    for attempt in parents:
        for root in _targets(private, attempt, parents):
            root = registry.path("private", str(root.relative_to(private)))
            if not root.is_dir() or root.is_symlink():
                raise ValueError("ProofCacheMissingOwnedDirectory")
            for row in strict_inventory(
                root, maximum_files=2000, maximum_bytes=128 * 1024**2
            ):
                if not row["path"].endswith(
                    (".olean", ".olean.private", ".olean.server", ".ir", ".ir.sig")
                ):
                    raise ValueError("ProofCacheUnexpectedFile")
                rows.append(
                    {**row, "path": str(root.relative_to(private) / row["path"])}
                )
    if len(rows) > 10000 or sum(row["bytes"] for row in rows) > 512 * 1024**2:
        raise ValueError("ProofCacheInventoryBound")
    return sorted(rows, key=lambda row: row["path"])


def _recover_failed_move(refs, out, archive, moves, started_disposal, error):
    """Recording failure must not suppress restoration or the original failure."""
    failures = []
    try:
        write_once(
            out / "recovery.json",
            dict(
                disposal_started=started_disposal,
                move_intent="move-intent.json",
                archive_retained=str(archive),
                recovery="Use a declared successor and verified archive/map; never overwrite originals",
            ),
        )
    except BaseException as recording_error:
        failures.append(recording_error)
    if not started_disposal:
        private = refs.roots["private"]
        for original, target in reversed(moves):
            try:
                refs.path("private", str(target.relative_to(private)), writing=True)
                refs.path("private", str(original.relative_to(private)), writing=True)
                if target.exists() and not original.exists():
                    original.parent.mkdir(parents=True, exist_ok=True)
                    os.rename(target, original)
            except BaseException as restoration_error:
                failures.append(restoration_error)
    if failures:
        raise BaseExceptionGroup(
            "Proof cache failure and recovery errors", [error, *failures]
        ) from None


def run_retention(refs, reference, declaration, out):
    return _run_batch(refs, reference, declaration, out, parents=PARENTS)


def closed_runtime_baseline(refs, attempt="a0460"):
    """Fixed successful proof baseline, independently of disposed target caches."""
    if attempt not in {"a0460", "a0465", "a0476"}:
        raise ValueError("ProofCacheRuntimeBaseline")
    name = f"attempts/{attempt}/checkpoint.json"
    path = refs.path("work", name)
    RootRegistry({"attempt": path.parent}).verify_closed("attempt")
    checkpoint = refs.read(refs.reference("work", name))
    if (
        checkpoint.get("attempt_id") != attempt
        or checkpoint.get("outcome", {}).get("operational") != "closed"
        or checkpoint.get("stage_outcome") != "succeeded"
        or checkpoint.get("source_validation_error") is not None
    ):
        raise ValueError("ProofCacheRuntimeBaseline")
    return checkpoint


def _run_batch(refs, reference, declaration, out, *, parents, archive_admission=None):
    if parents not in BATCHES:
        raise ValueError("ProofCacheUnknownBatch")
    runtime_attempt, root_count = BATCHES[parents]
    _safe_ref(reference)
    selection_reference = dict(reference)
    selection = refs.read(reference)
    if (
        set(selection)
        not in (
            {
                "format",
                "parent_checkpoints",
                "runtime_result_ref",
                "runtime_proof_ref",
                "runtime_default_ref",
                "tools_ref",
            },
            {
                "format",
                "parent_checkpoints",
                "runtime_result_ref",
                "runtime_proof_ref",
                "runtime_default_ref",
                "tools_ref",
                "prior_archive_ref",
                "prior_inventory_ref",
                "prior_checkpoint_ref",
                "prior_recovery_ref",
            },
        )
        or (parents != PARENTS and "prior_archive_ref" in selection)
        or selection["format"] != "core036.proof-cache-retention.v2"
        or not isinstance(selection["parent_checkpoints"], list)
        or len(selection["parent_checkpoints"]) != len(parents)
    ):
        raise ValueError("ProofCacheSelection")
    for ref in selection["parent_checkpoints"] + [
        selection[k]
        for k in (
            "runtime_result_ref",
            "runtime_proof_ref",
            "runtime_default_ref",
            "tools_ref",
        )
    ]:
        _safe_ref(ref)
    if "prior_archive_ref" in selection:
        for key in (
            "prior_archive_ref",
            "prior_inventory_ref",
            "prior_checkpoint_ref",
            "prior_recovery_ref",
        ):
            _safe_ref(selection[key])
    private, work = refs.roots["private"], refs.roots["work"]
    if (
        out != private / "native-cache-retention" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("ProofCacheOutput")
    refs.path("private", str(out.relative_to(private)), writing=True)
    all_targets = [
        refs.path("private", str(path.relative_to(private)))
        for attempt in parents
        for path in _targets(private, attempt, parents)
    ]
    parent_refs = {}
    for reference in selection["parent_checkpoints"]:
        cp = refs.read(reference)
        attempt = cp.get("attempt_id")
        if attempt not in parents or attempt in parent_refs:
            raise ValueError("ProofCacheParentInventory")
        path = refs.verify(reference)
        from artifact_store_v2 import ArtifactStore

        stores = ArtifactStore(
            refs,
            declaration["work_id"],
            future_root_id="future_evidence"
            if "future_evidence" in refs.roots
            else None,
        )
        expected_checkpoint = refs.verify(
            stores.attempt_ref(attempt, "checkpoint.json")
        )
        if path != expected_checkpoint:
            raise ValueError("ProofCacheParentPath")
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
        if (
            cp.get("outcome", {}).get("operational") != "closed"
            or cp.get("source_validation_error") is not None
        ):
            raise ValueError("ProofCacheParentNotClosedValid")
        parent_refs[attempt] = cp
    if parents in (
        FAILED_CANONICAL_PARENTS,
        LEGACY_MODEL_PARENTS,
        FAILED_PARAMETRIC_PARENTS,
        FAILED_PARAMETRIC_RECENT_PARENTS,
        RECOVERY_PARENTS,
        RESIDUAL_RECOVERY_PARENTS,
        JOINT_COMPONENT_PARENTS,
    ):
        parent_refs[runtime_attempt] = closed_runtime_baseline(refs, runtime_attempt)
    runtime_base = private / "ground-lean-probe" / runtime_attempt
    report = refs.read(selection["runtime_result_ref"])
    if (
        refs.verify(selection["runtime_result_ref"]) != runtime_base / "result.json"
        or parent_refs[runtime_attempt]["stage_outcome"] != "succeeded"
        or report["source_subject_ref"]
        != parent_refs[runtime_attempt]["source_subject_ref"]
        or report["checked_roots"] != root_count
    ):
        raise ValueError("ProofCacheRuntimeContext")
    for path in all_targets:
        if OwnedCleanup._live_users(path):
            raise ValueError("ProofCacheLiveDirectory")
    _safe_ref(declaration["source_subject_ref"])
    subject = refs.read(declaration["source_subject_ref"])
    for row in subject["files"]:
        logical = row["logical_ref"]
        _safe_ref(logical)
        logical_path = refs.path(logical["root_id"], logical["path"])
        if any(logical_path.is_relative_to(path) for path in all_targets):
            raise ValueError("ProofCacheIsSelectedInput")
    # Sources, including every failed control and Audit, remain untouched.
    sources = {}
    for attempt in parents:
        for target in _targets(private, attempt, parents):
            name = {"compiled": "project", "default-compiled": "default-project"}[
                target.name
            ]
            path = refs.path("private", "ground-lean-probe/" + attempt + "/" + name)
            sources[str(path)] = strict_inventory(
                path, maximum_files=2000, maximum_bytes=64 * 1024**2
            )
    proofs = []
    for key, directory, expected in [
        ("runtime_proof_ref", "declared-proof", root_count),
        ("runtime_default_ref", "default-declared-proof", 256),
    ]:
        path = refs.verify(selection[key])
        if path != runtime_base / directory / "result.json":
            raise ValueError("ProofCacheProofPath")
        proof = refs.read(selection[key])
        if (
            proof["status"] != "proved_for_declared_subject"
            or proof["feature_native_status"] != "unestablished"
            or proof["feature_complete"] is not False
            or len(proof["expected_roots"]) != expected
        ):
            raise ValueError("ProofCacheProofContext")
        export = refs.path(
            "private",
            str((path.parent / "export-roots/stdout.txt").relative_to(private)),
        )
        if digest(export) != proof["export_sha256"]:
            raise ValueError("ProofCacheExportChanged")
        validate_export(export.read_bytes(), proof["expected_roots"])
        proofs.append((directory, proof, export))
    config_path = refs.verify(selection["tools_ref"])
    if (
        config_path
        != refs.roots["repository"]
        / "experiments/transition-study036/analysis-canary-inputs-v2.json"
        or selection["tools_ref"]["sha256"]
        != "a29b38af55a7cdf747848dec8ceb1c4090c987d88e6614cd85459adbd7d15492"
    ):
        raise ValueError("ProofCachePinnedToolsSelection")
    config = refs.read(selection["tools_ref"])
    _safe_ref(config["lean_ref"])
    if (
        refs.verify(config["lean_ref"])
        != private / "analysis-lean-recheck/a0053/result.json"
        or config["lean_ref"]["sha256"]
        != "b46681603a2d980672aebc2ab1c2e0902dec86d10d79139db46f87c8fc91b3ce"
    ):
        raise ValueError("ProofCachePinnedAnalysisContext")
    analysis = refs.read(config["lean_ref"])
    sdk = Path(analysis["sdk"])
    tool = refs.path("private", str((sdk / "bin/leanchecker").relative_to(private)))
    tool_rows = {row["path"]: row for row in analysis["patched_binaries"]}
    if len(tool_rows) != len(analysis["patched_binaries"]):
        raise ValueError("ProofCacheDuplicateTools")
    if (
        sdk != private / "analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux"
        or str(tool) not in tool_rows
        or tool_rows[str(tool)]["sha256"] != KERNEL_SHA256
        or digest(tool) != KERNEL_SHA256
    ):
        raise ValueError("ProofCacheKernelTool")
    for label, proof, export in proofs:
        original_commands = [
            row for row in proof["commands"] if row.get("label") == "fresh-kernel"
        ]
        expected_argv = (
            [str(sdk / "bin/lake"), "--no-build", "env"]
            if label == "default-declared-proof"
            else []
        ) + [str(tool), "--from-export", str(export)]
        if (
            len(original_commands) != 1
            or original_commands[0]["argv"] != expected_argv
            or original_commands[0]["exit_code"] != 0
        ):
            raise ValueError("ProofCacheOriginalKernelCommand")
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": "",
        "LEAN_NUM_THREADS": "1",
        "MALLOC_ARENA_MAX": "2",
    }
    env.pop("LD_PRELOAD", None)
    rows = _cache_inventory(private, parents)
    out.mkdir(parents=True)
    write_once(out / "cache-inventory.json", rows)
    write_once(out / "source-inventories.json", sources)
    if parents == JOINT_COMPONENT_PARENTS:
        from native_partial_cache_retention_v2 import complete_inventory

        write_once(
            out / "complete-cache-metadata.json",
            {str(path): complete_inventory(path) for path in all_targets},
        )
    if "prior_archive_ref" in selection:
        previous_path = refs.verify(selection["prior_checkpoint_ref"])
        if previous_path != work / "attempts/a0449/checkpoint.json":
            raise ValueError("ProofCachePriorCheckpointPath")
        RootRegistry({"attempt": previous_path.parent}).verify_closed("attempt")
        previous = refs.read(selection["prior_checkpoint_ref"])
        if (
            previous["outcome"]["operational"] != "closed"
            or previous["stage_outcome"] != "failed"
            or previous["source_validation_error"] is not None
        ):
            raise ValueError("ProofCachePriorCheckpoint")
        if (
            refs.verify(selection["prior_inventory_ref"])
            != private / "native-cache-retention/a0449/cache-inventory.json"
            or refs.read(selection["prior_inventory_ref"]) != rows
        ):
            raise ValueError("ProofCachePriorInventory")
        if (
            refs.verify(selection["prior_recovery_ref"])
            != private / "native-cache-retention/a0449/recovery.json"
            or refs.read(selection["prior_recovery_ref"])["disposal_started"]
            is not False
        ):
            raise ValueError("ProofCachePriorRecovery")
        archive = refs.verify(selection["prior_archive_ref"])
        if (
            archive
            != private / "tmp/proof-cache-retention/a0449/compiled-caches.tar.gz"
        ):
            raise ValueError("ProofCachePriorArchivePath")
    else:
        archive = archive_destination(private, out, declaration["record_id"], parents)
        refs.path("private", str(archive.relative_to(private)), writing=True)
        if archive.parent != out:
            archive.parent.mkdir(parents=True, exist_ok=False)
        _archive(private, rows, archive)
    _verify_archive(archive, rows)
    if parents == JOINT_COMPONENT_PARENTS and (
        not isinstance(archive_admission, dict)
        or set(archive_admission) != {"bytes", "sha256"}
        or archive.stat().st_size != archive_admission["bytes"]
        or digest(archive) != archive_admission["sha256"]
    ):
        raise ValueError("ProofCacheCountedArchiveChanged")
    if _cache_inventory(private, parents) != rows:
        raise ValueError("ProofCacheChangedBeforeMove")
    disposable = refs.path(
        "private",
        str(disposable_root(private, declaration["record_id"]).relative_to(private)),
        writing=True,
    )
    disposable.mkdir(parents=True, exist_ok=False)
    planned_moves = [
        (path, disposable / path.parent.name / path.name) for path in all_targets
    ]
    write_once(
        out / "move-intent.json",
        dict(
            state="archive_verified_before_any_move",
            archive_sha256=digest(archive),
            moves=[dict(original=str(a), target=str(b)) for a, b in planned_moves],
            archive_scope="Exact regular-file bytes, modes and relative paths; directory metadata is not part of compilation-cache semantics",
            recovery="Declared successor: verify archive and this complete map; restore exact targets or archived files only to absent originals, never overwrite. After disposal begins, recover from archive or freshly rebuild; sources/raw proofs remain in place.",
        ),
    )
    moves = []
    started_disposal = False
    try:
        for index, (path, target) in enumerate(planned_moves):
            refs.path("private", str(path.relative_to(private)), writing=True)
            refs.path("private", str(target.relative_to(private)), writing=True)
            target.parent.mkdir(parents=True, exist_ok=True)
            os.rename(path, target)
            moves.append((path, target))
            write_once(
                out / "moves" / (str(index) + ".json"),
                dict(
                    original=str(path),
                    target=str(target),
                    state="moved_to_owned_disposable",
                ),
            )
        commands = []
        for label, proof, export in proofs:
            log = run_logged_command(
                out / "commands" / label,
                [str(tool), "--from-export", str(export)],
                cwd=sdk,
                env=env,
                seconds=1800,
                metadata=dict(label=label, expected_exit_code=0),
            )
            if (
                log["exit_code"] != 0
                or log["timed_out"]
                or digest(export) != proof["export_sha256"]
            ):
                raise ValueError("ProofCacheKernelReplay")
            commands.append(log)
        for path, expected in sources.items():
            if (
                strict_inventory(
                    refs.path("private", str(Path(path).relative_to(private))),
                    maximum_files=2000,
                    maximum_bytes=64 * 1024**2,
                )
                != expected
            ):
                raise ValueError("ProofCacheSourceChanged")
        for original, target in moves:
            if original.exists():
                raise ValueError("ProofCacheRegenerated")
            prefix = str(original.relative_to(private)) + "/"
            expected = [
                {**row, "path": row["path"][len(prefix) :]}
                for row in rows
                if row["path"].startswith(prefix)
            ]
            if (
                strict_inventory(
                    refs.path("private", str(target.relative_to(private))),
                    maximum_files=2000,
                    maximum_bytes=128 * 1024**2,
                )
                != expected
            ):
                raise ValueError("ProofCacheMovedBytesChanged")
        if digest(tool) != tool_rows[str(tool)]["sha256"]:
            raise ValueError("ProofCacheKernelToolChanged")
        _verify_archive(archive, rows)
        for _, proof, export in proofs:
            if digest(export) != proof["export_sha256"]:
                raise ValueError("ProofCacheExportChangedBeforeDisposal")
        retained = [
            selection["runtime_result_ref"],
            selection["runtime_proof_ref"],
            selection["runtime_default_ref"],
            refs.reference("private", str(archive.relative_to(private))),
            refs.reference(
                "private", str((out / "cache-inventory.json").relative_to(private))
            ),
            refs.reference(
                "private", str((out / "source-inventories.json").relative_to(private))
            ),
        ] + selection["parent_checkpoints"]
        retained += [
            refs.reference("private", str(export.relative_to(private)))
            for _, _, export in proofs
        ]
        if "prior_archive_ref" in selection:
            retained += [
                selection[key]
                for key in (
                    "prior_archive_ref",
                    "prior_inventory_ref",
                    "prior_checkpoint_ref",
                    "prior_recovery_ref",
                )
            ]
        cleanup = OwnedCleanup(private)
        registration = cleanup.register(
            disposable, retained_refs=retained, registry=refs
        )
        write_once(out / "registration.json", registration)
        started_disposal = True
        removal = cleanup.dispose(disposable, paced=True)
        write_once(out / "cleanup.json", removal)
    except BaseException as error:
        _recover_failed_move(refs, out, archive, moves, started_disposal, error)
        raise
    for path, expected in sources.items():
        if (
            strict_inventory(
                refs.path("private", str(Path(path).relative_to(private))),
                maximum_files=2000,
                maximum_bytes=64 * 1024**2,
            )
            != expected
        ):
            raise ValueError("ProofCacheSourceChangedAfterDisposal")
    for _, proof, export in proofs:
        if digest(export) != proof["export_sha256"]:
            raise ValueError("ProofCacheExportChangedAfterDisposal")
    if digest(tool) != KERNEL_SHA256:
        raise ValueError("ProofCacheToolChangedAfterDisposal")
    for reference in retained:
        _safe_ref(reference)
        refs.verify(reference)
    write_once(
        out / "result.json",
        dict(
            format="core036.proof-cache-retention-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=selection_reference,
            raw_cache_bytes=sum(row["bytes"] for row in rows),
            archive_ref=refs.reference("private", str(archive.relative_to(private))),
            cache_file_count=len(rows),
            sources_and_raw_exports_retained=True,
            kernel_replay_commands=commands,
            kernel_scope=f"existing_{root_count}_and_256_exports_replayed_without_old_compiled_caches",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
