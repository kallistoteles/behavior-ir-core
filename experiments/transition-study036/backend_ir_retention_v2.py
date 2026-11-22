"""Archive exact generated backend IR and verify runtime before owned disposal."""

import gzip
import hashlib
import os
from pathlib import Path
import tarfile

from artifact_io import RootRegistry, digest, read, write_once
from artifact_registration_v2 import guard_protected_components
from owned_cleanup import OwnedCleanup


def retention_target(cp, cache, cache_path, private):
    private, cache_path = Path(private), Path(cache_path)
    if cp.get("attempt_id") == "a0055":
        backend = private / "analysis-backend/a0054/lean"
        if (
            cp.get("stage_outcome") != "succeeded"
            or cp.get("outcome", {}).get("operational") != "closed"
            or cp.get("source_validation_error") is not None
            or cache_path != private / "analysis-backend-recheck/a0055/result.json"
            or cache.get("format") != "core036.analysis-backend-recheck.v2"
            or cache.get("source_subject_ref") != cp.get("source_subject_ref")
            or cache.get("backend") != str(backend)
            or cache.get("publisher_backend_inventory_sha256")
            != "cacb7ee6ceb15ebef774c7b4e919347e276fcf0f2eb05f275803fd09072baa61"
        ):
            raise ValueError("BackendIrPublisherRecheckContext")
        return backend / ".lake/build/ir"
    backend = private / "analysis-backend-build/a0058/lean"
    if (
        cp.get("attempt_id") != "a0060"
        or cp.get("stage_outcome") != "succeeded"
        or cp.get("outcome", {}).get("operational") != "closed"
        or cp.get("source_validation_error") is not None
        or cache_path != private / "analysis-backend-cache/a0060/result.json"
        or cache.get("format") != "core036.analysis-backend-cache.v2"
        or cache.get("source_subject_ref") != cp.get("source_subject_ref")
        or cache.get("backend") != str(backend)
        or cache.get("missing_requested_roots") != []
    ):
        raise ValueError("BackendIrRetentionContext")
    return backend / ".lake/build/ir"


def guarded_inventory_paths(root):
    """Guard child names before querying or descending into their metadata."""
    root = Path(root)
    guard_protected_components(root)
    with os.scandir(root) as directory:
        entries = sorted(directory, key=lambda entry: entry.name)
    for entry in entries:
        path = root / entry.name
        guard_protected_components(path)
        yield path
        if not path.is_symlink() and path.is_dir():
            yield from guarded_inventory_paths(path)


def _inventory(root, *, maximum_files, maximum_bytes):
    guard_protected_components(root)
    rows = []
    total = 0
    for path in guarded_inventory_paths(root):
        guard_protected_components(path)
        if path.is_symlink():
            raise ValueError("BackendIrSymlink")
        if path.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if path.is_file():
            size = path.stat().st_size
            total += size
            if len(rows) >= maximum_files or total > maximum_bytes:
                raise ValueError("BackendIrInventoryBound")
            rows.append(
                dict(
                    path=str(path.relative_to(root)),
                    bytes=size,
                    mode=path.stat().st_mode & 0o777,
                    sha256=digest(path),
                )
            )
    if not rows:
        raise ValueError("BackendIrEmptyInventory")
    return sorted(rows, key=lambda row: row["path"])


def _check_inventory(root, rows):
    actual = _inventory(root, maximum_files=10000, maximum_bytes=2 * 1024**3)
    if actual != rows:
        raise ValueError("BackendIrRetainedInputsChanged")


class _CappedSink:
    def __init__(self, raw, limit):
        self.raw, self.limit = raw, limit

    def write(self, data):
        if self.raw.tell() + len(data) > self.limit:
            raise ValueError("BackendIrArchiveCompressedBound")
        return self.raw.write(data)

    def __getattr__(self, name):
        return getattr(self.raw, name)


def _archive_stream(root, rows, raw, *, compressed_limit):
    """Use the same bounded byte stream for peak admission and retention."""
    if type(compressed_limit) is not int or not 0 < compressed_limit <= 128 * 1024**2:
        raise ValueError("BackendIrArchiveCompressedLimit")
    with gzip.GzipFile(
        filename="",
        mode="wb",
        fileobj=_CappedSink(raw, compressed_limit),
        compresslevel=6,
        mtime=0,
    ) as zipped:
        with tarfile.open(
            mode="w|", fileobj=zipped, format=tarfile.USTAR_FORMAT
        ) as archive:
            for row in rows:
                relative = Path(row["path"])
                guard_protected_components(root / relative)
                if relative.is_absolute() or ".." in relative.parts:
                    raise ValueError("BackendIrArchivePath")
                info = tarfile.TarInfo(row["path"])
                info.size, info.mode, info.mtime = row["bytes"], row["mode"], 0
                with (root / row["path"]).open("rb") as source:
                    archive.addfile(info, source)


def _archive(root, rows, destination, *, compressed_limit=128 * 1024**2):
    if type(compressed_limit) is not int or not 0 < compressed_limit <= 128 * 1024**2:
        raise ValueError("BackendIrArchiveCompressedLimit")
    with destination.open("xb") as raw:
        _archive_stream(root, rows, raw, compressed_limit=compressed_limit)


def _verify_archive(path, rows):
    expected = {row["path"]: row for row in rows}
    seen = set()
    with tarfile.open(path, mode="r|gz") as archive:
        for member in archive:
            if (
                not member.isfile()
                or member.name not in expected
                or member.name in seen
            ):
                raise ValueError("BackendIrArchiveMembership")
            row = expected[member.name]
            if member.size != row["bytes"] or member.mode != row["mode"]:
                raise ValueError("BackendIrArchiveMetadata")
            source = archive.extractfile(member)
            checksum, total = hashlib.sha256(), 0
            with source:
                while data := source.read(256 * 1024):
                    total += len(data)
                    if total > row["bytes"]:
                        raise ValueError("BackendIrArchiveExpansion")
                    checksum.update(data)
            if total != row["bytes"] or checksum.hexdigest() != row["sha256"]:
                raise ValueError("BackendIrArchiveIdentity")
            seen.add(member.name)
    if seen != set(expected):
        raise ValueError("BackendIrArchiveIncomplete")


def run_retention(refs, reference, declaration, out):
    selection = refs.read(reference)
    if (
        set(selection)
        != {
            "format",
            "cache_checkpoint_ref",
            "cache_ref",
            "kernel_probe_ref",
            "pilot_checkpoint_ref",
            "pilot_ref",
        }
        or selection["format"] != "core036.backend-ir-retention.v2"
        or out
        != refs.roots["private"] / "native-cache-retention" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("BackendIrSelection")
    private = refs.roots["private"]
    cp_path = refs.verify(selection["cache_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp, cache = (
        refs.read(selection["cache_checkpoint_ref"]),
        refs.read(selection["cache_ref"]),
    )
    original = retention_target(cp, cache, refs.verify(selection["cache_ref"]), private)
    pcp_path = refs.verify(selection["pilot_checkpoint_ref"])
    RootRegistry({"attempt": pcp_path.parent}).verify_closed("attempt")
    pcp, pilot = (
        refs.read(selection["pilot_checkpoint_ref"]),
        refs.read(selection["pilot_ref"]),
    )
    if (
        pcp["attempt_id"] != "a0389"
        or pcp["stage_outcome"] != "succeeded"
        or pcp["source_validation_error"] is not None
        or refs.verify(selection["pilot_ref"])
        != private / "ground-lean-probe/a0389/result.json"
        or pilot["source_subject_ref"] != pcp["source_subject_ref"]
        or pilot["selected_root_empty_kernel"] != "passed"
        or len(pilot["controls"]) != 8
        or pilot["default_checker_changed"] is not False
    ):
        raise ValueError("BackendIrUncheckedRuntimeProbe")
    subject = refs.read(declaration["source_subject_ref"])
    for row in subject["files"]:
        logical = row["logical_ref"]
        if logical["root_id"] == "private" and (
            private / logical["path"]
        ).is_relative_to(original):
            raise ValueError("BackendIrIsSelectedSourceInput")
    if (
        not original.is_dir()
        or original.is_symlink()
        or OwnedCleanup._live_users(original)
    ):
        raise ValueError("BackendIrNotClosedOwnedDirectory")
    backend = Path(cache["backend"])
    libraries = backend / ".lake/build/lib"
    library_rows = _inventory(libraries, maximum_files=10000, maximum_bytes=2 * 1024**3)
    ir_rows = _inventory(original, maximum_files=2000, maximum_bytes=512 * 1024**2)
    if cp["attempt_id"] == "a0055":
        publisher = backend.parent / "backend-inventory.json"
        if digest(publisher) != cache["publisher_backend_inventory_sha256"]:
            raise ValueError("BackendIrPublisherInventoryChanged")
        prefix = ".lake/build/ir/"
        expected_ir = sorted(
            (row["path"][len(prefix) :], row["bytes"], row["sha256"])
            for row in read(publisher, limit=32 * 1024**2)
            if row["path"].startswith(prefix)
        )
        observed_ir = sorted(
            (row["path"], row["bytes"], row["sha256"]) for row in ir_rows
        )
        if expected_ir != observed_ir:
            raise ValueError("BackendIrPublisherGeneratedFilesChanged")
    if any(Path(row["path"]).suffix in {".lean", ".olean", ".so"} for row in ir_rows):
        raise ValueError("BackendIrContainsSourceOrRuntimeLibrary")
    out.mkdir(parents=True)
    write_once(out / "ir-inventory.json", ir_rows)
    write_once(out / "library-inventory.json", library_rows)
    saved = private / "tmp/backend-ir-retention" / declaration["record_id"]
    saved.mkdir(parents=True, exist_ok=False)
    archive = saved / "generated-ir.tar.gz"
    _archive(original, ir_rows, archive)
    _verify_archive(archive, ir_rows)
    _check_inventory(original, ir_rows)
    owner = "a0054" if cp["attempt_id"] == "a0055" else "a0058"
    disposable = private / ("disposable/backend-ir-" + owner) / declaration["record_id"]
    disposable.mkdir(parents=True, exist_ok=False)
    target = disposable / "ir"
    write_once(
        out / "move-intent.json",
        dict(
            original=str(original),
            target=str(target),
            archive_sha256=digest(archive),
            stage="archive_verified_before_move",
            restore="If interrupted before disposal, restore with a declared successor moving this exact target to the absent original path after checking archive/inventories; never overwrite a new original.",
        ),
    )
    os.rename(original, target)
    try:
        from kernel_export_probe_v2 import run_probe

        runtime_out = private / "ground-lean-probe" / declaration["record_id"]
        run_probe(refs, selection["kernel_probe_ref"], declaration, runtime_out)
        runtime = refs.reference(
            "private", str((runtime_out / "result.json").relative_to(private))
        )
        checked = refs.read(runtime)
        if (
            checked["selected_root_empty_kernel"] != "passed"
            or checked["source_subject_ref"] != declaration["source_subject_ref"]
        ):
            raise ValueError("BackendIrRuntimeDidNotPass")
        _check_inventory(libraries, library_rows)
        _check_inventory(target, ir_rows)
        if original.exists():
            raise ValueError("BackendIrRegeneratedDuringRuntimeProbe")
        _verify_archive(archive, ir_rows)
        cleanup = OwnedCleanup(private)
        retained = [
            selection["cache_ref"],
            selection["cache_checkpoint_ref"],
            runtime,
            refs.reference("private", str(archive.relative_to(private))),
            refs.reference(
                "private", str((out / "ir-inventory.json").relative_to(private))
            ),
            refs.reference(
                "private", str((out / "library-inventory.json").relative_to(private))
            ),
        ]
        registration = cleanup.register(target, retained_refs=retained, registry=refs)
        write_once(out / "registration.json", registration)
        removal = cleanup.dispose(target, paced=True)
        write_once(out / "cleanup.json", removal)
    except BaseException:
        if target.exists() and not original.exists():
            os.rename(target, original)
            write_once(
                out / "rollback.json",
                dict(
                    restored=True,
                    original=str(original),
                    reason="Runtime/preservation check did not finish; no IR disposal",
                ),
            )
        raise
    write_once(
        out / "result.json",
        dict(
            format="core036.backend-ir-retention-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            ir_file_count=len(ir_rows),
            raw_ir_bytes=sum(row["bytes"] for row in ir_rows),
            archive_ref=refs.reference("private", str(archive.relative_to(private))),
            runtime_probe_ref=runtime,
            library_file_count=len(library_rows),
            libraries_unchanged=True,
            removed_generated_ir=str(original),
            removed_disposable=str(target),
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
            scope="Exact generated backend IR only, lossless verified archive plus successful real compilation/type/axiom/empty-kernel regression before closed owned disposal; sources, runtime libraries, original292/114 and all retained tools untouched",
        ),
    )
    return 0
