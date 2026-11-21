"""Retain closed proof compilation caches losslessly; preserve sources/raw proofs."""

import os
import re
import stat
from pathlib import Path, PurePosixPath
from artifact_io import RootRegistry, digest, write_once
from backend_ir_retention_v2 import _archive, _verify_archive, _inventory
from owned_cleanup import OwnedCleanup
from lean_command_v2 import run_logged_command
from kernel_export_v2 import validate_export

PARENTS = ("a0435", "a0436", "a0439", "a0441", "a0442", "a0445", "a0447", "a0448")
NAMES = ("compiled", "default-compiled")
KERNEL_SHA256 = "4a80aa1617d3a981fb194652bdba2d6f97d4d93f95f22f526807c1c23cc13f1d"


def targets(private, attempt):
    if attempt not in PARENTS:
        raise ValueError("ProofCacheUnknownParent")
    return [Path(private) / "ground-lean-probe" / attempt / name for name in NAMES]


def disposable_root(private, attempt):
    if not isinstance(attempt, str) or re.fullmatch(r"a[0-9]{4}", attempt) is None:
        raise ValueError("ProofCacheDisposableAttempt")
    return Path(private) / "disposable" / ("proof-compiled-" + attempt) / "cache"


def _safe_ref(reference):
    if isinstance(reference, dict) and PurePosixPath(
        reference.get("path", "")
    ).name in {"parameters.bin", "compression_prover_key.bin"}:
        raise ValueError("ProtectedArtifact")


def strict_inventory(root, *, maximum_files, maximum_bytes):
    nodes = 0
    for path in root.rglob("*"):
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
    registry = RootRegistry({"private": private})
    rows = []
    for attempt in PARENTS:
        for root in targets(private, attempt):
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


def run_retention(refs, reference, declaration, out):
    _safe_ref(reference)
    selection_reference = dict(reference)
    selection = refs.read(reference)
    if (
        set(selection) not in (
            {"format", "parent_checkpoints", "runtime_result_ref", "runtime_proof_ref", "runtime_default_ref", "tools_ref"},
            {"format", "parent_checkpoints", "runtime_result_ref", "runtime_proof_ref", "runtime_default_ref", "tools_ref", "prior_archive_ref", "prior_inventory_ref", "prior_checkpoint_ref", "prior_recovery_ref"},
        )
        or selection["format"] != "core036.proof-cache-retention.v2"
        or not isinstance(selection["parent_checkpoints"], list)
        or len(selection["parent_checkpoints"]) != len(PARENTS)
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
        for key in ("prior_archive_ref", "prior_inventory_ref", "prior_checkpoint_ref", "prior_recovery_ref"):
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
        for attempt in PARENTS
        for path in targets(private, attempt)
    ]
    parent_refs = {}
    for reference in selection["parent_checkpoints"]:
        cp = refs.read(reference)
        attempt = cp.get("attempt_id")
        if attempt not in PARENTS or attempt in parent_refs:
            raise ValueError("ProofCacheParentInventory")
        path = refs.verify(reference)
        if path != work / "attempts" / attempt / "checkpoint.json":
            raise ValueError("ProofCacheParentPath")
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
        if (
            cp.get("outcome", {}).get("operational") != "closed"
            or cp.get("source_validation_error") is not None
        ):
            raise ValueError("ProofCacheParentNotClosedValid")
        parent_refs[attempt] = cp
    runtime_base = private / "ground-lean-probe/a0448"
    report = refs.read(selection["runtime_result_ref"])
    if (
        refs.verify(selection["runtime_result_ref"]) != runtime_base / "result.json"
        or parent_refs["a0448"]["stage_outcome"] != "succeeded"
        or report["source_subject_ref"] != parent_refs["a0448"]["source_subject_ref"]
        or report["checked_roots"] != 98
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
    for attempt in PARENTS:
        for name in ("project", "default-project"):
            path = refs.path("private", "ground-lean-probe/" + attempt + "/" + name)
            sources[str(path)] = strict_inventory(
                path, maximum_files=2000, maximum_bytes=64 * 1024**2
            )
    proofs = []
    for key, directory, expected in [
        ("runtime_proof_ref", "declared-proof", 98),
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
    rows = cache_inventory(private)
    out.mkdir(parents=True)
    write_once(out / "cache-inventory.json", rows)
    write_once(out / "source-inventories.json", sources)
    if "prior_archive_ref" in selection:
        previous_path = refs.verify(selection["prior_checkpoint_ref"])
        if previous_path != work / "attempts/a0449/checkpoint.json":
            raise ValueError("ProofCachePriorCheckpointPath")
        RootRegistry({"attempt": previous_path.parent}).verify_closed("attempt")
        previous = refs.read(selection["prior_checkpoint_ref"])
        if previous["outcome"]["operational"] != "closed" or previous["stage_outcome"] != "failed" or previous["source_validation_error"] is not None:
            raise ValueError("ProofCachePriorCheckpoint")
        if refs.verify(selection["prior_inventory_ref"]) != private / "native-cache-retention/a0449/cache-inventory.json" or refs.read(selection["prior_inventory_ref"]) != rows:
            raise ValueError("ProofCachePriorInventory")
        if refs.verify(selection["prior_recovery_ref"]) != private / "native-cache-retention/a0449/recovery.json" or refs.read(selection["prior_recovery_ref"])["disposal_started"] is not False:
            raise ValueError("ProofCachePriorRecovery")
        archive = refs.verify(selection["prior_archive_ref"])
        if archive != private / "tmp/proof-cache-retention/a0449/compiled-caches.tar.gz":
            raise ValueError("ProofCachePriorArchivePath")
    else:
        saved = refs.path("private", "tmp/proof-cache-retention/" + declaration["record_id"], writing=True)
        saved.mkdir(parents=True, exist_ok=False)
        archive = saved / "compiled-caches.tar.gz"
        _archive(private, rows, archive)
    _verify_archive(archive, rows)
    if cache_inventory(private) != rows:
        raise ValueError("ProofCacheChangedBeforeMove")
    disposable = refs.path("private", str(disposable_root(private, declaration["record_id"]).relative_to(private)), writing=True)
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
            retained += [selection[key] for key in ("prior_archive_ref", "prior_inventory_ref", "prior_checkpoint_ref", "prior_recovery_ref")]
        cleanup = OwnedCleanup(private)
        registration = cleanup.register(
            disposable, retained_refs=retained, registry=refs
        )
        write_once(out / "registration.json", registration)
        started_disposal = True
        removal = cleanup.dispose(disposable, paced=True)
        write_once(out / "cleanup.json", removal)
    except BaseException:
        write_once(
            out / "recovery.json",
            dict(
                disposal_started=started_disposal,
                move_intent="move-intent.json",
                archive_retained=str(archive),
                recovery="Use a declared successor and verified archive/map; never overwrite originals",
            ),
        )
        if not started_disposal:
            for original, target in reversed(moves):
                refs.path("private", str(target.relative_to(private)), writing=True)
                refs.path("private", str(original.relative_to(private)), writing=True)
                if target.exists() and not original.exists():
                    os.rename(target, original)
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
            kernel_scope="existing_98_and_256_exports_replayed_without_old_compiled_caches",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
