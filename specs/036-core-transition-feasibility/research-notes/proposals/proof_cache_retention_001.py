"""Retain closed proof compilation caches losslessly; preserve sources/raw proofs."""
import os
from pathlib import Path, PurePosixPath
from artifact_io import RootRegistry, digest, write_once
from backend_ir_retention_v2 import _archive, _verify_archive, _inventory
from owned_cleanup import OwnedCleanup
from lean_command_v2 import run_logged_command
from kernel_export_v2 import validate_export

PARENTS = ("a0435", "a0436", "a0439", "a0441", "a0442", "a0445", "a0447", "a0448")
NAMES = ("compiled", "default-compiled")


def targets(private, attempt):
    if attempt not in PARENTS:
        raise ValueError("ProofCacheUnknownParent")
    return [Path(private) / "ground-lean-probe" / attempt / name for name in NAMES]


def _safe_ref(reference):
    if isinstance(reference, dict) and PurePosixPath(reference.get("path", "")).name in {"parameters.bin", "compression_prover_key.bin"}:
        raise ValueError("ProtectedArtifact")


def cache_inventory(private):
    rows = []
    for attempt in PARENTS:
        for root in targets(private, attempt):
            if not root.is_dir() or root.is_symlink():
                raise ValueError("ProofCacheMissingOwnedDirectory")
            for row in _inventory(root, maximum_files=2000, maximum_bytes=128*1024**2):
                if not row["path"].endswith((".olean", ".olean.private", ".olean.server", ".ir", ".ir.sig")):
                    raise ValueError("ProofCacheUnexpectedFile")
                rows.append({**row, "path": str(root.relative_to(private) / row["path"])})
    if len(rows) > 10000 or sum(row["bytes"] for row in rows) > 512*1024**2:
        raise ValueError("ProofCacheInventoryBound")
    return sorted(rows, key=lambda row: row["path"])


def run_retention(refs, reference, declaration, out):
    _safe_ref(reference)
    selection = refs.read(reference)
    if set(selection) != {"format", "parent_checkpoints", "runtime_result_ref", "runtime_proof_ref", "runtime_default_ref", "tools_ref"} or selection["format"] != "core036.proof-cache-retention.v2" or not isinstance(selection["parent_checkpoints"], list) or len(selection["parent_checkpoints"]) != len(PARENTS):
        raise ValueError("ProofCacheSelection")
    for ref in selection["parent_checkpoints"] + [selection[k] for k in ("runtime_result_ref", "runtime_proof_ref", "runtime_default_ref", "tools_ref")]:
        _safe_ref(ref)
    private, work = refs.roots["private"], refs.roots["work"]
    if out != private / "native-cache-retention" / declaration["record_id"] or out.exists():
        raise ValueError("ProofCacheOutput")
    all_targets = [path for attempt in PARENTS for path in targets(private, attempt)]
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
        if cp.get("outcome",{}).get("operational") != "closed" or cp.get("source_validation_error") is not None:
            raise ValueError("ProofCacheParentNotClosedValid")
        parent_refs[attempt] = cp
    runtime_base = private / "ground-lean-probe/a0448"
    report = refs.read(selection["runtime_result_ref"])
    if refs.verify(selection["runtime_result_ref"]) != runtime_base / "result.json" or parent_refs["a0448"]["stage_outcome"] != "succeeded" or report["source_subject_ref"] != parent_refs["a0448"]["source_subject_ref"] or report["checked_roots"] != 98:
        raise ValueError("ProofCacheRuntimeContext")
    for path in all_targets:
        if OwnedCleanup._live_users(path):
            raise ValueError("ProofCacheLiveDirectory")
    subject = refs.read(declaration["source_subject_ref"])
    for row in subject["files"]:
        logical = row["logical_ref"]
        if logical["root_id"] == "private" and any((private/logical["path"]).is_relative_to(path) for path in all_targets):
            raise ValueError("ProofCacheIsSelectedInput")
    # Sources, including every failed control and Audit, remain untouched.
    sources = {}
    for attempt in PARENTS:
        for name in ("project", "default-project"):
            path = private / "ground-lean-probe" / attempt / name
            sources[str(path)] = _inventory(path, maximum_files=2000, maximum_bytes=64*1024**2)
    proofs = []
    for key, directory, expected in [("runtime_proof_ref", "declared-proof", 98), ("runtime_default_ref", "default-declared-proof", 256)]:
        path = refs.verify(selection[key])
        if path != runtime_base / directory / "result.json":
            raise ValueError("ProofCacheProofPath")
        proof = refs.read(selection[key])
        if proof["status"] != "proved_for_declared_subject" or proof["feature_native_status"] != "unestablished" or proof["feature_complete"] is not False or len(proof["expected_roots"]) != expected:
            raise ValueError("ProofCacheProofContext")
        export = path.parent / "export-roots/stdout.txt"
        if digest(export) != proof["export_sha256"]:
            raise ValueError("ProofCacheExportChanged")
        validate_export(export.read_bytes(), proof["expected_roots"])
        proofs.append((directory, proof, export))
    config = refs.read(selection["tools_ref"])
    analysis = refs.read(config["lean_ref"])
    sdk = Path(analysis["sdk"])
    tool = sdk / "bin/leanchecker"
    tool_rows = {row["path"]: row for row in analysis["patched_binaries"]}
    if str(tool) not in tool_rows or digest(tool) != tool_rows[str(tool)]["sha256"]:
        raise ValueError("ProofCacheKernelTool")
    env = {**os.environ, **analysis["environment"], "LEAN_PATH": "", "LEAN_NUM_THREADS": "1", "MALLOC_ARENA_MAX": "2"}
    env.pop("LD_PRELOAD", None)
    rows = cache_inventory(private)
    out.mkdir(parents=True)
    write_once(out/"cache-inventory.json", rows)
    write_once(out/"source-inventories.json", sources)
    saved = private / "tmp/proof-cache-retention" / declaration["record_id"]
    saved.mkdir(parents=True, exist_ok=False)
    archive = saved / "compiled-caches.tar.gz"
    _archive(private, rows, archive)
    _verify_archive(archive, rows)
    if cache_inventory(private) != rows:
        raise ValueError("ProofCacheChangedBeforeMove")
    disposable = private / "disposable" / ("proof-compiled-" + declaration["record_id"])
    disposable.mkdir(parents=True, exist_ok=False)
    moves = []
    started_disposal = False
    try:
        for path in all_targets:
            target = disposable / path.parent.name / path.name
            target.parent.mkdir(parents=True, exist_ok=True)
            os.rename(path, target)
            moves.append((path,target))
        commands = []
        for label, proof, export in proofs:
            log = run_logged_command(out/"commands"/label, [str(tool), "--from-export", str(export)], cwd=sdk, env=env, seconds=1800, metadata=dict(label=label, expected_exit_code=0))
            if log["exit_code"] != 0 or log["timed_out"] or digest(export) != proof["export_sha256"]:
                raise ValueError("ProofCacheKernelReplay")
            commands.append(log)
        for path, expected in sources.items():
            if _inventory(Path(path), maximum_files=2000, maximum_bytes=64*1024**2) != expected:
                raise ValueError("ProofCacheSourceChanged")
        for original,target in moves:
            if original.exists():
                raise ValueError("ProofCacheRegenerated")
            prefix = str(original.relative_to(private)) + "/"
            expected = [{**row, "path":row["path"][len(prefix):]} for row in rows if row["path"].startswith(prefix)]
            if _inventory(target, maximum_files=2000, maximum_bytes=128*1024**2) != expected:
                raise ValueError("ProofCacheMovedBytesChanged")
        if digest(tool) != tool_rows[str(tool)]["sha256"]:
            raise ValueError("ProofCacheKernelToolChanged")
        _verify_archive(archive, rows)
        retained = [selection["runtime_result_ref"], selection["runtime_proof_ref"], selection["runtime_default_ref"], refs.reference("private", str(archive.relative_to(private))), refs.reference("private", str((out/"cache-inventory.json").relative_to(private))), refs.reference("private", str((out/"source-inventories.json").relative_to(private)))] + selection["parent_checkpoints"]
        cleanup = OwnedCleanup(private)
        registration = cleanup.register(disposable, retained_refs=retained, registry=refs)
        write_once(out/"registration.json", registration)
        started_disposal = True
        removal = cleanup.dispose(disposable, paced=True)
        write_once(out/"cleanup.json", removal)
    except BaseException:
        if not started_disposal:
            for original,target in reversed(moves):
                if target.exists() and not original.exists(): os.rename(target, original)
        raise
    write_once(out/"result.json", dict(format="core036.proof-cache-retention-result.v2", source_subject_ref=declaration["source_subject_ref"], selection_ref=reference, raw_cache_bytes=sum(row["bytes"] for row in rows), archive_ref=refs.reference("private", str(archive.relative_to(private))), cache_file_count=len(rows), sources_and_raw_exports_retained=True, kernel_replay_commands=commands, kernel_scope="existing_98_and_256_exports_replayed_without_old_compiled_caches", native_proof="unestablished", feature_complete=False, product_adoption="unactivated"))
    return 0
