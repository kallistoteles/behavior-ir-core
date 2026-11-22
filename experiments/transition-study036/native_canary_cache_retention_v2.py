"""Losslessly retain three exact closed canary targets before owned disposal."""

import hashlib
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from artifact_registration_v2 import guard_reference
from backend_ir_retention_v2 import _archive, _archive_stream, _verify_archive
from native_accessor_source_canary_v2 import guard_owned_path
from owned_cleanup import OwnedCleanup
from proof_cache_retention_v2 import strict_inventory

PARENTS = {
    "a0494": dict(
        revision="r9519",
        outcome="succeeded",
        exit_code=0,
        snapshot="subjects/r9519/sources/01300",
        sha256="5c2eadc48c4a531f34ac41e3f715dcdb5ecf2f7f1579bbd5a27f549c8a4f4acc",
        error=None,
    ),
    "a0496": dict(
        revision="r9521",
        outcome="failed",
        exit_code=1,
        snapshot="subjects/r9521/sources/01369",
        sha256="f209ca77d446017bcad6b0a1400cd1e736855788f93cf4e9e483745edd6d8e04",
        error="ValueError: ExpectedTheoremRoot",
    ),
    "a0497": dict(
        revision="r9522",
        outcome="failed",
        exit_code=1,
        snapshot="subjects/r9522/sources/01399",
        sha256="2ef519163d4445b31e482d203b6e13b8219be5322a10d32cbaef1a8a8ccc74a7",
        error="ValueError: NativeAccessorCanaryNotSemanticRejection",
    ),
}


def canary_target(private, checkpoint, receipt, initial, environment, metadata):
    attempt = checkpoint.get("attempt_id")
    if attempt not in PARENTS:
        raise ValueError("CanaryCacheUnknownParent")
    expected = PARENTS[attempt]
    case = Path(private) / "disposable/native-accessor-canary-a0492"
    target = case / ("target-" + attempt)
    subject = checkpoint.get("source_subject_ref", {})
    if (
        checkpoint.get("stage_outcome") != expected["outcome"]
        or checkpoint.get("source_validation_error") is not None
        or checkpoint.get("outcome", {}).get("operational") != "closed"
        or subject.get("root_id") != "future_evidence"
        or subject.get("path") != "subjects/" + expected["revision"] + "/manifest.json"
        or receipt.get("source_subject_ref") != subject
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != expected["exit_code"]
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
        or initial != dict(removed_metadata_files=[], new_empty_target=str(target))
        or environment.get("CARGO_TARGET_DIR") != str(target)
        or metadata.get("target_directory") != str(target)
        or metadata.get("workspace_root") != str(case / "worker")
    ):
        raise ValueError("CanaryCacheOwnershipContext")
    return target


class CountOnlySink:
    def __init__(self):
        self.total, self.checksum = 0, hashlib.sha256()

    def tell(self):
        return self.total

    def write(self, data):
        self.total += len(data)
        self.checksum.update(data)
        return len(data)

    def flush(self):
        pass


def run_retention(refs, reference, declaration, out):
    guard_reference(reference)
    selection = refs.read(reference)
    private, future = refs.roots["private"], refs.roots["future_evidence"]
    if (
        not isinstance(selection, dict)
        or set(selection)
        != {"format", "parents", "baseline_checkpoint_ref", "baseline_receipt_ref"}
        or selection["format"] != "core036.native-canary-cache-retention.v2"
        or selection["parents"] != list(PARENTS)
        or out != private / "native-cache-retention" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("CanaryCacheSelection")
    retained = [reference]

    def record(path):
        path = guard_owned_path(path)
        for root_id, root in (("private", private), ("future_evidence", future)):
            if path.is_relative_to(root):
                ref = refs.reference(root_id, str(path.relative_to(root)))
                guard_reference(ref)
                refs.verify(ref)
                retained.append(ref)
                return ref
        raise ValueError("CanaryCacheRecordRoot")

    for key in ("baseline_checkpoint_ref", "baseline_receipt_ref"):
        guard_reference(selection[key])
        if refs.verify(selection[key]) != future / (
            "attempts/a0512/"
            + (
                "checkpoint.json"
                if key == "baseline_checkpoint_ref"
                else "child/receipt.json"
            )
        ):
            raise ValueError("CanaryCacheBaselinePath")
    baseline = refs.read(selection["baseline_checkpoint_ref"])
    receipt = refs.read(selection["baseline_receipt_ref"])
    RootRegistry({"attempt": future / "attempts/a0512"}).verify_closed("attempt")
    if (
        baseline["stage_outcome"] != "succeeded"
        or baseline["source_validation_error"] is not None
        or receipt["source_subject_ref"] != baseline["source_subject_ref"]
        or receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["final_storage_inventory_error"] is not None
    ):
        raise ValueError("CanaryCacheBaselineClosure")
    # Reserve metadata/inventory growth prospectively. Whole-work monitoring and
    # every existing cap remain active; this is no reset of old accounting.
    cache_budget = (
        declaration["profile"]["limits"]["cache_bytes"]
        - receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"][
            "cache"
        ]
        - 16 * 1024**2
    )
    if cache_budget <= 0:
        raise ValueError("CanaryCacheNoPeakCapacity")
    subject = refs.read(declaration["source_subject_ref"])
    targets = []
    for attempt, expected in PARENTS.items():
        base = private / "ground-lean-probe" / attempt
        cp_ref = record(future / "attempts" / attempt / "checkpoint.json")
        RootRegistry({"attempt": future / "attempts" / attempt}).verify_closed(
            "attempt"
        )
        cp = refs.read(cp_ref)
        rc = refs.read(record(future / "attempts" / attempt / "child/receipt.json"))
        record(future / "attempts" / attempt / "declaration.json")
        owner = refs.read(cp["source_subject_ref"])
        record(refs.verify(cp["source_subject_ref"]))
        row = [
            r
            for r in owner["files"]
            if r["logical_ref"].get("root_id") == "repository"
            and r["logical_ref"].get("path")
            == "experiments/transition-study036/native_accessor_source_canary_v2.py"
        ]
        if (
            len(row) != 1
            or row[0]["snapshot_ref"]["path"] != expected["snapshot"]
            or row[0]["snapshot_ref"]["sha256"] != expected["sha256"]
            or row[0]["logical_ref"]["sha256"] != expected["sha256"]
        ):
            raise ValueError("CanaryCacheFrozenOwner")
        record(refs.verify(row[0]["snapshot_ref"]))
        stderr = refs.verify(record(future / "attempts" / attempt / "child/stderr.txt"))
        if digest(stderr) != rc["stderr_sha256"] or (
            expected["error"] is not None
            and expected["error"] not in stderr.read_text()
        ):
            raise ValueError("CanaryCacheFailureIdentity")
        commands = {}
        for label in ("metadata", "extract", "translate"):
            command = refs.read(record(base / "commands" / label / "result.json"))
            for stream in ("stdout", "stderr"):
                path = refs.verify(
                    record(base / "commands" / label / (stream + ".txt"))
                )
                if digest(path) != command[stream + "_sha256"]:
                    raise ValueError("CanaryCacheCommandBytes")
            if (
                type(command.get("exit_code")) is not int
                or command["exit_code"] != 0
                or command.get("timed_out") is not False
            ):
                raise ValueError("CanaryCacheCommandClosure")
            commands[label] = command
        metadata = read(base / "commands/metadata/stdout.txt", limit=32 * 1024**2)
        target = canary_target(
            private,
            cp,
            rc,
            refs.read(record(base / "initial-owned-target.json")),
            refs.read(record(base / "environment.json")),
            metadata,
        )
        phase = target.parent / (
            ("positive-" if attempt == "a0494" else "mutant-") + attempt
        )
        extract, translate = commands["extract"]["argv"], commands["translate"]["argv"]
        if (
            extract[extract.index("--manifest-path") + 1]
            != str(target.parent / "worker/Cargo.toml")
            or extract[extract.index("--dest-file") + 1]
            != str(phase / "canonical_row.llbc")
            or translate[translate.index("-dest") + 1] != str(phase / "generated")
            or translate[-1] != str(phase / "canonical_row_names.llbc")
        ):
            raise ValueError("CanaryCachePhaseArguments")
        for name in (
            "canonical_row.llbc",
            "canonical_row_names.llbc",
            "generated/Types.lean",
            "generated/Funs.lean",
            "generated/TypesExternal_Template.lean",
            "generated/FunsExternal_Template.lean",
        ):
            record(phase / name)
        # Preserve proof source, audits, exports and actual failed controls in
        # place. Only the separately identified Cargo target can be disposed.
        for row in subject["files"]:
            logical = row["logical_ref"]
            guard_reference(logical)
            if logical["root_id"] == "private" and (
                private / logical["path"]
            ).is_relative_to(target):
                raise ValueError("CanaryCacheSelectedSource")
        targets.append((attempt, target))
    from native_accessor_source_canary_v2 import verified_positive_context

    positive = verified_positive_context(
        refs,
        dict(
            format="core036.native-accessor-negative.v2",
            positive_checkpoint_ref=record(future / "attempts/a0494/checkpoint.json"),
            positive_result_ref=record(private / "ground-lean-probe/a0494/result.json"),
            scope="owning_source_negative_only",
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    record(refs.verify(positive["proof_result_ref"]))
    preserved = {}
    for attempt in PARENTS:
        base = private / "ground-lean-probe" / attempt
        # Preserve each entire actual artifact tree, including partial496. Do
        # not require or synthesize a completed proof for that closed failure.
        preserved[attempt] = strict_inventory(
            base, maximum_files=10000, maximum_bytes=512 * 1024**2
        )
    out.mkdir(parents=True, exist_ok=False)
    write_once(out / "preserved-artifacts.json", preserved)
    record(out / "preserved-artifacts.json")
    results = []
    cleanup = OwnedCleanup(private)
    for attempt, target in targets:
        target = guard_owned_path(target)
        cleanup._target(target)
        if OwnedCleanup._live_users(target):
            raise ValueError("CanaryCacheLiveUse")
        rows = strict_inventory(target, maximum_files=10000, maximum_bytes=1024**3)
        saved = out / attempt
        saved.mkdir()
        write_once(saved / "inventory.json", rows)
        counter = CountOnlySink()
        _archive_stream(target, rows, counter, compressed_limit=128 * 1024**2)
        write_once(
            saved / "dry-stream.json",
            dict(
                bytes=counter.total,
                sha256=counter.checksum.hexdigest(),
                available_peak_budget_bytes=cache_budget,
            ),
        )
        if counter.total + 1024**2 > cache_budget:
            raise ValueError("CanaryCacheArchivePeakAdmission")
        archive = saved / "all-files.tar.gz"
        _archive(
            target,
            rows,
            archive,
            compressed_limit=min(cache_budget - 1024**2, 128 * 1024**2),
        )
        if (
            archive.stat().st_size != counter.total
            or digest(archive) != counter.checksum.hexdigest()
        ):
            raise ValueError("CanaryCacheDryStreamMismatch")
        _verify_archive(archive, rows)
        if strict_inventory(target, maximum_files=10000, maximum_bytes=1024**3) != rows:
            raise ValueError("CanaryCacheSourceChanged")
        archive_ref, inventory_ref = record(archive), record(saved / "inventory.json")
        for reference_to_keep in retained:
            guard_reference(reference_to_keep)
            refs.verify(reference_to_keep)
        registration = cleanup.register(target, retained_refs=retained, registry=refs)
        write_once(saved / "registration.json", registration)
        removal = cleanup.dispose(target, paced=True)
        write_once(saved / "cleanup.json", removal)
        reclaimed = sum(row["bytes"] for row in rows)
        cache_budget += reclaimed - counter.total
        results.append(
            dict(
                attempt=attempt,
                raw_bytes=reclaimed,
                file_count=len(rows),
                archive_ref=archive_ref,
                inventory_ref=inventory_ref,
            )
        )
    for reference_to_keep in retained:
        guard_reference(reference_to_keep)
        refs.verify(reference_to_keep)
    for attempt, rows in preserved.items():
        if (
            strict_inventory(
                private / "ground-lean-probe" / attempt,
                maximum_files=10000,
                maximum_bytes=512 * 1024**2,
            )
            != rows
        ):
            raise ValueError("CanaryCachePreservedArtifactsChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.native-canary-cache-retention-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            targets=results,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
