"""V2 operational supervisor. Scientific claims require their own raw checkers."""

import argparse
import datetime
import json
import re
import sys
import time
from pathlib import Path
from artifact_io import RootRegistry, digest
from bootstrap import validate_v2_profile, v2_admit
from campaign import WorkLedger
from frozen_source_reuse_v2 import FrozenSourceWriter
from gates import runnable
from preservation import HistoricalResolver, verify_unrelated_v2
from records import CONTROL, MANIFEST, identifier, loads_v2

ROOT = Path(__file__).resolve().parents[2]
E = Path(__file__).resolve().parent
F = ROOT / "specs/036-core-transition-feasibility"
PRIVATE_BASE = Path("/var/tmp/behavior-ir-core036-v2")
FUTURE_EVIDENCE_BASE = Path("/var/tmp/behavior-ir-core036-evidence-v2")
ARTIFACT_STORE_INPUT = E / "artifact-store-inputs-v2.json"


def validate_slot_selection(value, *, known):
    if (
        not isinstance(value, dict)
        or set(value) != {"slots"}
        or not isinstance(value["slots"], list)
        or not value["slots"]
        or len(value["slots"]) > 20000
    ):
        raise ValueError("V2SlotSelection")
    for slot in value["slots"]:
        identifier(slot)
    if len(set(value["slots"])) != len(value["slots"]) or set(value["slots"]) - set(
        known
    ):
        raise ValueError("V2UnknownOrDuplicateSlot")
    return list(value["slots"])


def cli_exit(error):
    if error is None:
        return 0
    if isinstance(error, AssertionError):
        return 1
    if isinstance(error, (ValueError, FileExistsError)):
        return 2
    if isinstance(error, (NotImplementedError, OSError)):
        return 3
    raise error


def execute_status(ledger):
    # A journal is operational provenance only. Later scientific collectors
    # derive each status from current proof/quality/oracle/activation raw checks.
    return {
        "format": "core036.work-status.v2",
        "work_id": ledger.work_id,
        "feature_complete": False,
        "feature_state": "in_progress" if ledger.events else "declared",
        "initial_authority": ledger.authority,
        "actual_closed_attempt_ns": ledger.active_ns(),
        "unknown_duration_attempts": ledger.unknown_duration_attempts(),
        "calendar_gaps": ledger.calendar_gaps(),
        "attempts": ledger.attempts,
        "bootstrap_receipts": list(ledger.imported_receipts.values()),
        "deliverables": {str(i): "blocked" for i in range(1, 9)},
        "requirements": {f"FR-{i:03d}": "blocked" for i in range(1, 23)},
        "criteria": {f"SC-{i:03d}": "blocked" for i in range(1, 9)},
        "runnable": [
            stage
            for stage in (
                "ENGINEERING",
                "ENV",
                "NATIVE",
                "Q",
                "DIAG",
                "SESSIONS",
                "COMPACT",
                "REPRO",
                "FINAL",
            )
            if runnable(stage, {})
        ],
        "scope": "operational journal; no native ground, checked theorem, benchmark or final completion is imported",
    }


def registry_for(work_id):
    return artifact_context_for(work_id)[0]


def artifact_context_for(work_id):
    if not isinstance(work_id, str) or re.fullmatch(r"w[0-9]{3,16}", work_id) is None:
        raise ValueError("V2WorkID")
    registry = RootRegistry(
        {
            "repository": ROOT,
            "private": PRIVATE_BASE / work_id,
            "work": F / "evidence/v2" / work_id,
        },
        readonly=["repository"],
    )
    if not ARTIFACT_STORE_INPUT.exists():
        from artifact_store_v2 import ArtifactStore

        return registry, ArtifactStore(registry, work_id)
    from artifact_registration_v2 import select_artifact_store

    return select_artifact_store(
        registry,
        work_id,
        ref_for(ARTIFACT_STORE_INPUT, registry),
        expected_future_root=FUTURE_EVIDENCE_BASE / work_id,
    )


def ref_for(path, registry):
    path = Path(path)
    if not path.is_absolute():
        raise ValueError("V2AbsoluteControllerInput")
    # Prefer repository identity, including evidence below it, so immutable
    # refs remain interpretable by an independent externally selected context.
    for name, root in registry.roots.items():
        if path.is_relative_to(root) and path != root:
            return registry.reference(name, str(path.relative_to(root)))
    raise ValueError("V2UnregisteredInput")


def read_path(path, registry, *, manifest=False):
    return registry.read(
        ref_for(Path(path), registry), limit=MANIFEST if manifest else CONTROL
    )


def _historical_mappings(registry):
    original = registry.read(ref_for(F / "inputs/v2/historical-map.json", registry))
    revision = F / "evidence/campaign-001/revisions/r004"
    inventory = registry.read(
        ref_for(revision / "input-manifest.json", registry), limit=MANIFEST
    )
    code = []
    for logical in inventory["inputs"]["files"]:
        physical = ref_for(revision / "sources" / logical["path"], registry)
        if (physical["bytes"], physical["sha256"]) != (
            logical["bytes"],
            logical["sha256"],
        ):
            raise ValueError("V2OldSourceSnapshotChanged")
        code.append({"logical_v1": logical, "physical": physical})
    return [original, {"mappings": code}]


def _bootstrap_resolver(registry, binding):
    declaration = registry.read(binding["declaration"])
    entries = []
    for item in declaration["sources"]:
        snapshot = item["snapshot"]
        logical = {k: snapshot[k] for k in ("bytes", "sha256")}
        logical["path"] = item["logical_path"]
        entries.append({"logical_v1": logical, "physical": snapshot})
    return HistoricalResolver(registry, [{"mappings": entries}])


def initialize(args):
    # The exact prospective profile chooses the registered paths, never an
    # output/report field. Existing reviewed bootstrap imports are permitted;
    # duplicate context creation and unrelated preseeded output are refused.
    profile = loads_v2(Path(args.profile).read_bytes())
    validate_v2_profile(profile)
    if profile["stage"] != "WORK":
        raise ValueError("V2InitialWorkProfile")
    registry = registry_for(profile["work_id"])
    out = Path(args.out)
    if out != registry.roots["work"] or Path(args.spec) != F / "spec.md":
        raise ValueError("V2WorkOutputOwnership")
    if (out / "context.json").exists():
        raise FileExistsError(out / "context.json")
    if out.exists() and {p.name for p in out.iterdir()} - {"development"}:
        raise ValueError("V2UnexpectedPreseededWork")
    specification = ref_for(Path(args.spec), registry)
    if specification != profile["specification_ref"]:
        raise ValueError("V2WorkSpecification")
    baseline = read_path(F / "inputs/v2/baseline.json", registry, manifest=True)
    for ref in baseline["inputs"]:
        registry.verify(ref)
    verify_unrelated_v2(ROOT, baseline["unrelated_files"])
    resolver = HistoricalResolver(registry, _historical_mappings(registry))
    old = read_path(F / "inputs/baseline.json", registry, manifest=True)
    for ref in old["files"]:
        resolver.resolve({"root_id": "repository", **ref})
    previous = ref_for(Path(args.previous_index), registry)
    if Path(args.previous_index) != F / "evidence/campaign-001/closed-artifacts.json":
        raise ValueError("V2PreviousIndexSelection")
    previous_data = registry.read(previous, limit=MANIFEST)
    if previous_data.get("format") != "core036.closed.v1":
        raise ValueError("V2PreviousIndexVersion")
    bootstrap = read_path(Path(args.bootstrap), registry)
    if bootstrap["work_id"] != profile["work_id"]:
        raise ValueError("V2BootstrapWork")
    receipt = registry.read(bootstrap["receipt"])
    bootstrap_resolver = _bootstrap_resolver(registry, bootstrap)
    for ref in [bootstrap["launcher"], bootstrap["profile"]]:
        bootstrap_resolver.resolve(ref)
    declaration = registry.read(bootstrap["declaration"])
    for ref in declaration["inputs"]:
        bootstrap_resolver.resolve(ref)
    if (
        receipt.get("format") != "core035.bounded.v1"
        or receipt.get("group_empty") is not True
        or receipt.get("tree_empty") is not True
        or receipt.get("group_id") is None
        or bootstrap["origin"]
        != {"started_ns": receipt["start_monotonic_ns"], "boot_id": receipt["boot_id"]}
    ):
        raise ValueError("V2BootstrapOrigin")
    private = registry.roots["private"]
    private.mkdir(mode=0o700, parents=True, exist_ok=True)
    if private.stat().st_mode & 0o077:
        raise ValueError("V2PrivatePermissions")
    free = {
        key: __import__("shutil").disk_usage(path).free
        for key, path in [("root", private), ("data", F)]
    }
    v2_admit(
        profile,
        free_root_bytes=free["root"],
        free_data_bytes=free["data"],
        initial=True,
    )
    out.mkdir(parents=True, exist_ok=True)
    inputs = [
        ref_for(Path(p), registry)
        for p in (
            args.profile,
            args.bootstrap,
            F / "inputs/v2/baseline.json",
            F / "inputs/v2/workloads.json",
            F / "inputs/v2/decision-rules.json",
        )
    ]
    source = ref_for(F / "inputs/v2/controller-inputs.json", registry)
    controller = registry.read(source, limit=MANIFEST)
    if (
        not isinstance(controller, dict)
        or set(controller) != {"files"}
        or not controller["files"]
    ):
        raise ValueError("V2ControllerInputs")
    for ref in controller["files"]:
        registry.verify(ref)
    inventory = read_path(F / "inputs/v2/workloads.json", registry, manifest=True)
    slots = [x["id"] for x in inventory["slots"]]
    if len(slots) != 188 or len(set(slots)) != 188:
        raise ValueError("V2PrimaryMatrix")
    context = {
        "format": "core036.work.v2",
        "work_id": profile["work_id"],
        "record_id": "context",
        "specification_ref": specification,
        "source_subject_ref": source,
        "inputs": inputs + [previous, bootstrap["receipt"]],
        "product_adoption": "unactivated",
        "outcome": {"operational": "declared", "acceptance": "blocked"},
        "reason": "Native implementation, proofs, full quality, experiments and reproduction remain pending",
        "blocking_ref": specification,
        "initial_authority": "unverified",
        "feature_complete": False,
        "first_actual_origin": bootstrap["origin"],
        "requirements": [f"FR-{i:03d}" for i in range(1, 23)],
        "criteria": [f"SC-{i:03d}" for i in range(1, 9)],
        "deliverables": list(range(1, 9)),
        "primary_slots": slots,
        "historical_mapping": _historical_mappings(registry),
        "created_at_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
        "initial_free_bytes": free,
        "profile_ref": ref_for(Path(args.profile), registry),
    }
    registry.write("work", "context.json", context)
    ledger = WorkLedger(out, profile["work_id"])
    # Top-level bootstrap receipts enclose their nested test children; import
    # only those enclosing receipts to avoid double-counting inner controls.
    for raw in sorted((out / "development").glob("*/receipt.json")):
        actual = read_path(raw, registry)
        parent = raw.parent
        for filename, key in [
            ("stdout.txt", "stdout_sha256"),
            ("stderr.txt", "stderr_sha256"),
        ]:
            if digest(parent / filename) != actual[key]:
                raise ValueError("V2BootstrapLogBytes")
        ledger.import_receipt(
            ref_for(raw, registry),
            registry=registry,
            scope="reviewed bootstrap controller development; not scientific acceptance",
        )
    return 0


def load_work(path):
    path = Path(path)
    if path.name != "context.json" or path.parent.parent != F / "evidence/v2":
        raise ValueError("V2WorkContextOwnership")
    registry, artifact_store = artifact_context_for(path.parent.name)
    value = read_path(path, registry)
    from records import validate_v2_record

    extras = {
        "initial_authority",
        "feature_complete",
        "first_actual_origin",
        "requirements",
        "criteria",
        "deliverables",
        "primary_slots",
        "historical_mapping",
        "created_at_utc",
        "initial_free_bytes",
        "profile_ref",
    }
    validate_v2_record(value, extra_fields=extras)
    if (
        value["format"] != "core036.work.v2"
        or value["work_id"] != path.parent.name
        or value["initial_authority"] != "unverified"
        or value["feature_complete"] is not False
    ):
        raise ValueError("V2WorkContext")
    for ref in [
        value["specification_ref"],
        value["source_subject_ref"],
        *value["inputs"],
    ]:
        registry.verify(ref)
    ledger = WorkLedger(
        path.parent, value["work_id"], registry=registry, artifact_store=artifact_store
    )
    development_receipts = {}
    for directory in artifact_store.directories("development"):
        for raw in sorted(directory.glob("*/receipt.json")):
            if raw.parent.name in development_receipts:
                raise ValueError("V2AmbiguousDevelopmentReceipt")
            development_receipts[raw.parent.name] = raw
    for raw in development_receipts.values():
        ref = ref_for(raw, registry)
        if ref["sha256"] not in ledger.imported_receipts:
            data = registry.read(ref)
            for filename, key in [
                ("stdout.txt", "stdout_sha256"),
                ("stderr.txt", "stderr_sha256"),
            ]:
                if digest(raw.parent / filename) != data[key]:
                    raise ValueError("V2BootstrapLogBytes")
            ledger.import_receipt(
                ref,
                registry=registry,
                scope="closed bootstrap development; operational costs only",
            )
    return value, registry, ledger


def _subject(ctx, registry, revision, *, current=True):
    if not isinstance(revision, str) or re.fullmatch(r"r[0-9]{4,16}", revision) is None:
        raise ValueError("V2RevisionID")
    from artifact_store_v2 import ArtifactStore
    from artifact_registration_v2 import guard_reference

    store = ArtifactStore(
        registry,
        ctx["work_id"],
        future_root_id="future_evidence"
        if "future_evidence" in registry.roots
        else None,
    )
    ref = store.subject_ref(revision)
    source = registry.read(ref, limit=MANIFEST)
    from records import validate_v2_record

    validate_v2_record(source, extra_fields={"files"})
    if (
        source.get("format") != "core036.source.v2"
        or source.get("work_id") != ctx["work_id"]
    ):
        raise ValueError("V2SubjectContext")
    if (
        source["record_id"] != revision
        or source["specification_ref"] != ctx["specification_ref"]
        or not isinstance(source.get("files"), list)
        or not 0 < len(source["files"]) <= 20000
        or source["inputs"]
        != [
            item.get("snapshot_ref")
            for item in source["files"]
            if isinstance(item, dict)
        ]
    ):
        raise ValueError("V2SubjectInventory")
    for item in source["files"]:
        if not isinstance(item, dict) or set(item) != {"logical_ref", "snapshot_ref"}:
            raise ValueError("V2SubjectFileFields")
        from records import validate_ref_v2

        validate_ref_v2(item["logical_ref"])
        validate_ref_v2(item["snapshot_ref"])
        guard_reference(item["logical_ref"])
        guard_reference(item["snapshot_ref"])
        expected = f"subjects/{revision}/sources/"
        if item["snapshot_ref"]["root_id"] != ref["root_id"] or not item[
            "snapshot_ref"
        ]["path"].startswith(expected):
            raise ValueError("V2SnapshotOutsideFrozenSubject")
        registry.verify(item["snapshot_ref"])
        if (item["snapshot_ref"]["bytes"], item["snapshot_ref"]["sha256"]) != (
            item["logical_ref"]["bytes"],
            item["logical_ref"]["sha256"],
        ):
            raise ValueError("V2SourceSnapshotIdentity")
        if current:
            registry.verify(item["logical_ref"])
    return ref


def declare(args):
    ctx, registry, ledger = load_work(args.work)
    profile = read_path(Path(args.profile), registry)
    validate_v2_profile(profile)
    if (
        profile["work_id"] != ctx["work_id"]
        or profile["stage"] != args.stage
        or args.stage == "WORK"
    ):
        raise ValueError("V2AttemptProfile")
    subject = _subject(ctx, registry, args.revision)
    selection = read_path(Path(args.slots), registry)
    known = ctx["primary_slots"] + [
        "environment-native",
        "gate-runtime-fixtures",
        "original-safety-runtime",
        "lean-cache-metadata",
        "lean-cache-download",
        "lean-cache-verify",
        "lean-cache-realize",
        "storage-observer-probe",
        "storage-cadence-control",
        "storage-overflow-control",
        "analysis-runtime-probe",
        "analysis-rust-metadata",
        "analysis-rust-download",
        "analysis-rust-install",
        "analysis-extract-probe",
        "analysis-lean-metadata",
        "analysis-lean-download",
        "analysis-lean-install",
        "analysis-lean-recheck",
        "analysis-backend-sources",
        "analysis-backend-recheck",
        "analysis-backend-cache-build",
        "analysis-backend-cache-get",
        "analysis-canary-probe",
        "owned-unpack-cleanup",
        "owned-build-cleanup",
        "owned-sdk-sharing",
        "owned-evidence-sharing",
        "owned-quality-cache-cleanup",
        "profile-capacity-controls",
        "foundation-tests",
        "recorder-cadence-controls",
        "storage-node-controls",
        "foundation-quality",
        "protocol-red-build",
        "protocol-tests",
        "us2-operation-controls",
        "us2-development",
        "us1-development",
        "us1-transport",
        "us1-metadata",
        "us1-native",
        "us1-worker",
        "native-codec-controls",
        "us1-views",
        "native-views-inventory",
        "native-generated-lean",
        "native-ground-lean-probe",
        "native-nonpos-library-probe",
        "native-nonpos-source-prepare",
        "native-nonpos-opam-bootstrap",
        "native-nonpos-opam-plan",
        "native-nonpos-compiler-build",
        "native-nonpos-dependency-plan",
        "native-nonpos-system-prerequisites",
        "native-nonpos-dependency-sources",
        "native-nonpos-dependency-install",
        "native-nonpos-translator-build",
        "native-retranslation",
        "native-correspondence-inventory",
        "native-build-completion",
        "owned-native-cache-retention",
        "proof-canary-controls",
        "core-cli-build",
        "quality-binding-controls",
        "quality-cli-timeout-probe",
        "quality-package-probe",
        "quality-runtime-prepare",
        "canonical-quality",
        "analysis035-model-port",
        "original035-model-replay",
        "controller-wall-control",
    ]
    slots = validate_slot_selection(selection, known=known)
    allowed = {
        "ENV": {
            "environment-native",
            "gate-runtime-fixtures",
            "original-safety-runtime",
            "lean-cache-metadata",
            "lean-cache-download",
            "lean-cache-verify",
            "lean-cache-realize",
            "storage-observer-probe",
            "storage-cadence-control",
            "storage-overflow-control",
            "analysis-runtime-probe",
            "analysis-rust-metadata",
            "analysis-rust-download",
            "analysis-rust-install",
            "analysis-extract-probe",
            "analysis-lean-metadata",
            "analysis-lean-download",
            "analysis-lean-install",
            "analysis-lean-recheck",
            "analysis-backend-sources",
            "analysis-backend-recheck",
            "analysis-backend-cache-build",
            "analysis-backend-cache-get",
            "analysis-canary-probe",
            "owned-unpack-cleanup",
            "owned-build-cleanup",
            "owned-sdk-sharing",
            "owned-evidence-sharing",
            "owned-quality-cache-cleanup",
            "profile-capacity-controls",
            "foundation-tests",
            "recorder-cadence-controls",
            "storage-node-controls",
            "foundation-quality",
            "controller-wall-control",
        },
        "NATIVE": {
            "protocol-red-build",
            "protocol-tests",
            "us1-development",
            "us1-transport",
            "us1-metadata",
            "us1-native",
            "us1-worker",
            "native-codec-controls",
            "us1-views",
            "native-views-inventory",
            "native-generated-lean",
            "native-ground-lean-probe",
            "native-nonpos-library-probe",
            "native-nonpos-source-prepare",
            "native-nonpos-opam-bootstrap",
            "native-nonpos-opam-plan",
            "native-nonpos-compiler-build",
            "native-nonpos-dependency-plan",
            "native-nonpos-system-prerequisites",
            "native-nonpos-dependency-sources",
            "native-nonpos-dependency-install",
            "native-nonpos-translator-build",
            "native-retranslation",
            "native-correspondence-inventory",
            "native-build-completion",
            "owned-native-cache-retention",
            "proof-canary-controls",
            "core-cli-build",
            "quality-binding-controls",
            "quality-cli-timeout-probe",
            "quality-package-probe",
            "quality-runtime-prepare",
            "analysis035-model-port",
            "original035-model-replay",
        },
        "Q": {"canonical-quality"},
        "DIAG": {"us2-development", "us2-operation-controls"},
    }
    if args.stage in allowed and set(slots) - allowed[args.stage]:
        raise ValueError("V2StageSlotMismatch")
    name = f"a{len(ledger.attempts) + 1:04d}"
    out = Path(args.out)
    if out != ledger.artifact_store.output_path(f"attempts/{name}"):
        raise ValueError("V2AttemptOutputOwnership")
    if out.exists():
        raise FileExistsError(out)
    operational_profile = {
        "wall_seconds": profile["limits"]["attempt_seconds"],
        "reserve_seconds": profile["limits"]["closure_reserve_seconds"],
    }
    # Existing refs and exact actual executors are frozen before any child.
    record = {
        "format": "core036.attempt.v2",
        "work_id": ctx["work_id"],
        "record_id": name,
        "specification_ref": ctx["specification_ref"],
        "source_subject_ref": subject,
        "inputs": [
            ref_for(Path(args.profile), registry),
            ref_for(Path(args.slots), registry),
            *ledger.artifact_store.configuration_refs,
        ],
        "product_adoption": "unactivated",
        "outcome": {"operational": "declared", "acceptance": "blocked"},
        "reason": "Prospective execution; no result or native authority yet",
        "blocking_ref": ctx["specification_ref"],
        "stage": args.stage,
        "revision": args.revision,
        "slots": slots,
        "profile": profile,
        "predecessor": None,
        "correction": None,
        "executor_sources": [ref_for(p, registry) for p in sorted(E.glob("*.py"))],
    }
    ledger.declare(
        args.stage, profile=operational_profile, subject=subject["sha256"], slots=slots
    )
    declaration_ref = ledger.artifact_store.write(
        f"attempts/{name}/declaration.json", record
    )
    ledger.bind_declaration(name, declaration_ref, registry=registry)
    return 0


def execution_control_paths():
    # A registered directory also accounts for newly created test/control
    # artifacts, rather than freezing only the initial file-name population.
    paths = [F / "inputs/v2"]
    for directory, dirs, files in __import__("os").walk(E, followlinks=False):
        if Path(directory) == E:
            dirs[:] = [name for name in dirs if name not in {"private", "__pycache__"}]
        for filename in files:
            path = Path(directory) / filename
            if path.is_file() and not path.is_symlink():
                paths.append(path)
    return paths


def run_attempt(args):
    from recorder import V2Runner

    ctx, registry, ledger = load_work(args.work)
    declaration_path = Path(args.attempt)
    d = read_path(declaration_path, registry)
    from records import validate_v2_record

    validate_v2_record(
        d,
        extra_fields={
            "stage",
            "revision",
            "slots",
            "profile",
            "predecessor",
            "correction",
            "executor_sources",
        },
    )
    name = d["record_id"]
    declaration_ref = ledger.artifact_store.attempt_ref(name)
    if declaration_path != registry.verify(declaration_ref):
        raise ValueError("V2AttemptOwnership")
    attempt_root = declaration_path.parent
    attempt_root_id = declaration_ref["root_id"]
    if name not in ledger.attempts or ledger.attempts[name]["state"] != "declared":
        raise ValueError("V2AttemptNotDeclared")
    bound_declaration = ledger.attempts[name].get("declaration_ref")
    if (
        bound_declaration is None
        or registry.verify(bound_declaration) != declaration_path
    ):
        raise ValueError("V2DeclarationBytesChangedOrUnbound")
    if d["source_subject_ref"] != _subject(ctx, registry, d["revision"]):
        raise ValueError("V2ChangedSubject")
    for ref in [*d["inputs"], *d["executor_sources"]]:
        registry.verify(ref)
    validate_v2_profile(d["profile"])
    if d["stage"] not in {"ENV", "NATIVE", "Q"} and not (
        d["stage"] == "DIAG"
        and d["slots"] in [["us2-development"], ["us2-operation-controls"]]
    ):
        raise NotImplementedError("Pending fixed v2 stage executor: " + d["stage"])
    if d["stage"] == "Q" and d["slots"] != ["canonical-quality"]:
        raise ValueError("V2QualityFixedStageSlotMismatch")
    if d["slots"] not in [
        ["environment-native"],
        ["gate-runtime-fixtures"],
        ["original-safety-runtime"],
        ["lean-cache-metadata"],
        ["lean-cache-download"],
        ["lean-cache-verify"],
        ["lean-cache-realize"],
        ["storage-observer-probe"],
        ["storage-cadence-control"],
        ["storage-overflow-control"],
        ["analysis-runtime-probe"],
        ["analysis-rust-metadata"],
        ["analysis-rust-download"],
        ["analysis-rust-install"],
        ["analysis-extract-probe"],
        ["analysis-lean-metadata"],
        ["analysis-lean-download"],
        ["analysis-lean-install"],
        ["analysis-lean-recheck"],
        ["analysis-backend-sources"],
        ["analysis-backend-recheck"],
        ["analysis-backend-cache-build"],
        ["analysis-backend-cache-get"],
        ["analysis-canary-probe"],
        ["owned-unpack-cleanup"],
        ["owned-build-cleanup"],
        ["owned-sdk-sharing"],
        ["owned-evidence-sharing"],
        ["owned-quality-cache-cleanup"],
        ["profile-capacity-controls"],
        ["foundation-tests"],
        ["recorder-cadence-controls"],
        ["storage-node-controls"],
        ["foundation-quality"],
        ["protocol-red-build"],
        ["protocol-tests"],
        ["us2-operation-controls"],
        ["us2-development"],
        ["us1-development"],
        ["us1-transport"],
        ["us1-metadata"],
        ["us1-native"],
        ["us1-worker"],
        ["native-codec-controls"],
        ["us1-views"],
        ["native-views-inventory"],
        ["native-generated-lean"],
        ["native-ground-lean-probe"],
        ["native-nonpos-library-probe"],
        ["native-nonpos-source-prepare"],
        ["native-nonpos-opam-bootstrap"],
        ["native-nonpos-opam-plan"],
        ["native-nonpos-compiler-build"],
        ["native-nonpos-dependency-plan"],
        ["native-nonpos-system-prerequisites"],
        ["native-nonpos-dependency-sources"],
        ["native-nonpos-dependency-install"],
        ["native-nonpos-translator-build"],
        ["native-retranslation"],
        ["native-correspondence-inventory"],
        ["native-build-completion"],
        ["owned-native-cache-retention"],
        ["proof-canary-controls"],
        ["core-cli-build"],
        ["quality-binding-controls"],
        ["quality-cli-timeout-probe"],
        ["quality-package-probe"],
        ["quality-runtime-prepare"],
        ["canonical-quality"],
        ["analysis035-model-port"],
        ["original035-model-replay"],
        ["controller-wall-control"],
    ]:
        raise ValueError("V2IndivisibleDevelopmentSlots")
    if d["stage"] == "NATIVE":
        from environment import check_prepared_native_v2

        check_prepared_native_v2(E / "toolchain-v2.json")
    tools = read_path(E / "toolchain.json", registry)["tools"]
    python = tools["python"]["path"]
    if digest(python) != tools["python"]["sha256"]:
        raise ValueError("V2PythonBytes")
    if d["slots"] == ["storage-overflow-control"]:
        flood = registry.roots["private"] / "disposable" / ("storage-flood-" + name)
        code = "import os,pathlib,sys,time; p=pathlib.Path(sys.argv[1]); n=int(pathlib.Path('/proc/sys/fs/inotify/max_queued_events').read_text()); assert 0<n<=32768; a=os.open(p/'a',os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600); b=os.open(p/'b',os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600); time.sleep(.2);\nfor _ in range(n*6):\n os.write(a,b'x'); os.write(b,b'x')\nos.close(a); os.close(b); time.sleep(3)"
        argv = [python, "-c", code, str(flood)]
    elif d["slots"] == ["storage-cadence-control"]:
        argv = [python, "-c", "import time; time.sleep(3)"]
    elif d["slots"] == ["controller-wall-control"]:
        argv = [python, "-c", "import time;time.sleep(30)"]
    elif d["slots"] == ["profile-capacity-controls"]:
        argv = [
            python,
            "-m",
            "unittest",
            "discover",
            "-s",
            str(E / "tests/v2"),
            "-p",
            "test_profile_extensions.py",
        ]
    elif d["slots"] == ["foundation-tests"]:
        argv = [python, str(E / "foundation_tests.py")]
    elif d["slots"] == ["storage-node-controls"]:
        argv = [
            python,
            "-m",
            "unittest",
            "discover",
            "-s",
            str(E / "tests/v2"),
            "-p",
            "test_storage_observer.py",
        ]
    elif d["slots"] == ["recorder-cadence-controls"]:
        argv = [
            python,
            "-m",
            "unittest",
            "discover",
            "-s",
            str(E / "tests/v2"),
            "-p",
            "test_recorder_cadence.py",
        ]
    elif d["slots"] == ["foundation-quality"]:
        argv = [
            python,
            str(E / "foundation_quality.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "foundation-quality" / name),
        ]
    elif d["slots"] == ["environment-native"]:
        argv = [
            python,
            str(E / "prepare.py"),
            "native-v2",
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "environment" / name),
        ]
    elif d["slots"] == ["original-safety-runtime"]:
        argv = [
            python,
            str(E / "original_safety_environment.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "original-safety-environment" / name),
        ]
    elif d["slots"] in [["original035-model-replay"], ["analysis035-model-port"]]:
        argv = [
            python,
            str(E / "model_replay_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "model-replays" / name),
        ]
    elif d["slots"] == ["core-cli-build"]:
        argv = [
            python,
            str(E / "core_cli_build_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "core-cli-builds" / name),
        ]
    elif d["slots"] in [["canonical-quality"], ["quality-runtime-prepare"]]:
        argv = [
            python,
            str(E / "quality_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(
                registry.roots["private"]
                / (
                    "quality-runtime-prepare"
                    if d["slots"] == ["quality-runtime-prepare"]
                    else "quality"
                )
                / name
            ),
        ]
    elif d["slots"] == ["gate-runtime-fixtures"]:
        argv = [
            python,
            str(E / "gate_runtime_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "gate-runtime-fixtures" / name),
        ]
    elif d["slots"] == ["quality-cli-timeout-probe"]:
        argv = [
            python,
            str(E / "cli_timeout_probe_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "quality-cli-probe" / name),
        ]
    elif d["slots"] == ["quality-package-probe"]:
        argv = [
            python,
            str(E / "gate_package_probe_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "quality-package-probe" / name),
        ]
    elif d["slots"] == ["quality-binding-controls"]:
        argv = [
            python,
            "-m",
            "unittest",
            "discover",
            "-s",
            str(E / "tests/v2"),
            "-p",
            "test_quality.py",
        ]
    elif d["slots"] == ["proof-canary-controls"]:
        argv = [
            python,
            "-m",
            "unittest",
            "discover",
            "-s",
            str(E / "tests/v2"),
            "-p",
            "test_correspondence.py",
        ]
    elif d["slots"] == ["owned-native-cache-retention"]:
        argv = [
            python,
            str(E / "native_cache_retention_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "native-cache-retention" / name),
        ]
    elif d["slots"] == ["native-build-completion"]:
        argv = [
            python,
            str(E / "native_completion_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "native-completion" / name),
        ]
    elif d["slots"] == ["native-correspondence-inventory"]:
        argv = [
            python,
            str(E / "correspondence_inventory_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "correspondence-inventory" / name),
        ]
    elif d["slots"] == ["native-retranslation"]:
        argv = [
            python,
            str(E / "retranslate_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "native-extraction" / name),
        ]
    elif d["slots"] == ["native-nonpos-translator-build"]:
        argv = [
            python,
            str(E / "nonpos_translator_build_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-translator" / name),
        ]
    elif d["slots"] == ["native-nonpos-dependency-install"]:
        argv = [
            python,
            str(E / "nonpos_dependency_install_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-dependency-install" / name),
        ]
    elif d["slots"] == ["native-nonpos-dependency-sources"]:
        argv = [
            python,
            str(E / "nonpos_dependency_sources_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-dependency-sources" / name),
        ]
    elif d["slots"] == ["native-nonpos-system-prerequisites"]:
        argv = [
            python,
            str(E / "nonpos_system_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-system" / name),
        ]
    elif d["slots"] == ["native-nonpos-dependency-plan"]:
        argv = [
            python,
            str(E / "nonpos_dependencies_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-dependencies" / name),
        ]
    elif d["slots"] == ["native-nonpos-compiler-build"]:
        argv = [
            python,
            str(E / "nonpos_compiler_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-compiler" / name),
        ]
    elif d["slots"] == ["native-nonpos-opam-plan"]:
        argv = [
            python,
            str(E / "nonpos_opam_plan_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-opam-plan" / name),
        ]
    elif d["slots"] == ["native-nonpos-opam-bootstrap"]:
        argv = [
            python,
            str(E / "nonpos_opam_bootstrap_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-opam-bootstrap" / name),
        ]
    elif d["slots"] == ["native-nonpos-source-prepare"]:
        argv = [
            python,
            str(E / "nonpos_source_prepare_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-source" / name),
        ]
    elif d["slots"] == ["native-nonpos-library-probe"]:
        argv = [
            python,
            str(E / "nonpos_lean_probe_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "nonpos-lean-probe" / name),
        ]
    elif d["slots"] == ["native-ground-lean-probe"]:
        argv = [
            python,
            str(E / "ground_lean_probe_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "ground-lean-probe" / name),
        ]
    elif d["slots"] == ["native-generated-lean"]:
        argv = [
            python,
            str(E / "native_lean_check_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "native-lean" / name),
        ]
    elif d["slots"] == ["native-views-inventory"]:
        argv = [
            python,
            str(E / "extract.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "native-extraction" / name),
        ]
    elif d["slots"] == ["owned-quality-cache-cleanup"]:
        argv = [
            python,
            str(E / "quality_cache_cleanup_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(attempt_root / "quality-cache-retention"),
        ]
    elif d["slots"] == ["owned-evidence-sharing"]:
        argv = [
            python,
            str(E / "evidence_dedup_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(attempt_root / "evidence-sharing"),
        ]
    elif d["slots"] == ["owned-sdk-sharing"]:
        argv = [
            python,
            str(E / "sdk_dedup_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(attempt_root / "sdk-sharing"),
        ]
    elif d["slots"] == ["owned-build-cleanup"]:
        argv = [
            python,
            str(E / "cleanup_build_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "cleanup-builds" / name),
        ]
    elif d["slots"] == ["owned-unpack-cleanup"]:
        argv = [
            python,
            str(E / "cleanup_unpack_v2.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "cleanup" / name),
        ]
    elif d["slots"] == ["analysis-canary-probe"]:
        argv = [
            python,
            str(E / "analysis_canary_probe.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-canary" / name),
        ]
    elif d["slots"] == ["analysis-backend-cache-get"]:
        argv = [
            python,
            str(E / "analysis_backend_cache.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-backend-cache" / name),
        ]
    elif d["slots"] == ["analysis-backend-cache-build"]:
        argv = [
            python,
            str(E / "analysis_backend_build.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-backend-build" / name),
        ]
    elif d["slots"] == ["analysis-backend-recheck"]:
        argv = [
            python,
            str(E / "analysis_backend_recheck.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-backend-recheck" / name),
        ]
    elif d["slots"] == ["analysis-backend-sources"]:
        argv = [
            python,
            str(E / "analysis_backend_prepare.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-backend" / name),
        ]
    elif d["slots"] == ["analysis-lean-recheck"]:
        argv = [
            python,
            str(E / "lean_analysis_recheck.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-lean-recheck" / name),
        ]
    elif d["slots"] == ["analysis-lean-install"]:
        argv = [
            python,
            str(E / "lean_analysis_install.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-lean-install" / name),
        ]
    elif d["slots"] in [["analysis-lean-metadata"], ["analysis-lean-download"]]:
        argv = [
            python,
            str(E / "lean_analysis_prepare.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-lean" / name),
        ]
    elif d["slots"] == ["analysis-extract-probe"]:
        argv = [
            python,
            str(E / "analysis_extract_probe.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-extraction" / name),
        ]
    elif d["slots"] == ["analysis-rust-install"]:
        argv = [
            python,
            str(E / "rust_analysis_install.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-toolchain" / name),
        ]
    elif d["slots"] in [["analysis-rust-metadata"], ["analysis-rust-download"]]:
        argv = [
            python,
            str(E / "rust_analysis_prepare.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-rust" / name),
        ]
    elif d["slots"] == ["analysis-runtime-probe"]:
        argv = [
            python,
            str(E / "analysis_runtime_probe.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "analysis-runtime" / name),
        ]
    elif d["slots"] == ["storage-observer-probe"]:
        argv = [
            python,
            str(E / "storage_probe.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "storage-probe" / name),
        ]
    elif d["slots"] == ["lean-cache-realize"]:
        argv = [
            python,
            str(E / "lean_cache_realize.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "lean-cache-realization" / name),
        ]
    elif d["slots"] == ["lean-cache-verify"]:
        argv = [
            python,
            str(E / "lean_cache_verify.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "lean-cache-verification" / name),
        ]
    elif d["slots"] in [["lean-cache-metadata"], ["lean-cache-download"]]:
        argv = [
            python,
            str(E / "lean_cache_prepare.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "lean-cache" / name),
        ]
    else:
        argv = [
            python,
            str(E / "native_build.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(registry.roots["private"] / "native-builds" / name),
        ]
    start = time.monotonic_ns()
    boot = Path("/proc/sys/kernel/random/boot_id").read_text().strip()
    ledger.start(name, now_ns=start, boot_id=boot)
    if d["slots"] == ["storage-overflow-control"]:
        flood.mkdir(parents=True, exist_ok=False)
    control_paths = execution_control_paths()
    future_store = (
        ledger.artifact_store
        if ledger.artifact_store.active_root_id == "future_evidence"
        else None
    )
    if future_store is not None:
        control_paths.append(registry.roots["future_evidence"])
    from lean_cache_prepare import ROOT as ORIGINAL_LEAN_ROOT

    runner = V2Runner(
        d["profile"],
        started_ns=start,
        control_paths=control_paths,
        artifact_store=future_store,
        shared_paths=[ORIGINAL_LEAN_ROOT]
        if d["slots"] == ["lean-cache-realize"]
        else [],
    )
    receipt = runner.run(
        argv,
        attempt_root / "child",
        wall_seconds=0.15
        if d["slots"] == ["controller-wall-control"]
        else 1800
        if d["slots"] == ["core-cli-build"]
        else 3600
        if d["slots"]
        in [
            ["us1-development"],
            ["us1-native"],
            ["us1-worker"],
            ["native-codec-controls"],
            ["us1-views"],
            ["native-views-inventory"],
            ["native-generated-lean"],
            ["native-ground-lean-probe"],
            ["native-nonpos-library-probe"],
            ["native-nonpos-source-prepare"],
            ["native-nonpos-opam-plan"],
            ["native-nonpos-compiler-build"],
            ["native-nonpos-dependency-plan"],
            ["native-nonpos-system-prerequisites"],
            ["native-nonpos-dependency-sources"],
            ["native-nonpos-dependency-install"],
            ["native-nonpos-translator-build"],
            ["native-retranslation"],
            ["native-correspondence-inventory"],
            ["native-build-completion"],
            ["owned-native-cache-retention"],
            ["proof-canary-controls"],
            ["canonical-quality"],
            ["analysis035-model-port"],
            ["original035-model-replay"],
            ["analysis-lean-install"],
            ["analysis-lean-recheck"],
            ["analysis-backend-sources"],
            ["analysis-backend-recheck"],
            ["analysis-backend-cache-build"],
            ["analysis-backend-cache-get"],
            ["analysis-canary-probe"],
            ["owned-unpack-cleanup"],
            ["owned-build-cleanup"],
            ["owned-sdk-sharing"],
            ["owned-evidence-sharing"],
            ["owned-quality-cache-cleanup"],
        ]
        else 900,
        child_kind="cli_build"
        if d["slots"] == ["core-cli-build"]
        else "extended"
        if d["slots"]
        in [
            ["us1-development"],
            ["us1-native"],
            ["us1-worker"],
            ["native-codec-controls"],
            ["us1-views"],
            ["native-views-inventory"],
            ["native-generated-lean"],
            ["native-ground-lean-probe"],
            ["native-nonpos-library-probe"],
            ["native-nonpos-source-prepare"],
            ["native-nonpos-opam-plan"],
            ["native-nonpos-compiler-build"],
            ["native-nonpos-dependency-plan"],
            ["native-nonpos-system-prerequisites"],
            ["native-nonpos-dependency-sources"],
            ["native-nonpos-dependency-install"],
            ["native-nonpos-translator-build"],
            ["native-retranslation"],
            ["native-correspondence-inventory"],
            ["native-build-completion"],
            ["owned-native-cache-retention"],
            ["proof-canary-controls"],
            ["canonical-quality"],
            ["analysis035-model-port"],
            ["original035-model-replay"],
            ["analysis-lean-install"],
            ["analysis-lean-recheck"],
            ["analysis-backend-sources"],
            ["analysis-backend-recheck"],
            ["analysis-backend-cache-build"],
            ["analysis-backend-cache-get"],
            ["analysis-canary-probe"],
            ["owned-unpack-cleanup"],
            ["owned-build-cleanup"],
            ["owned-sdk-sharing"],
            ["owned-evidence-sharing"],
            ["owned-quality-cache-cleanup"],
        ]
        else "ordinary",
        env={
            "PYTHONPATH": str(E),
            "PYTHONDONTWRITEBYTECODE": "1",
            **(
                {"CORE036_PROOF_CONTROL_DECLARATION": str(declaration_path)}
                if d["slots"] == ["proof-canary-controls"]
                else {}
            ),
        },
        # The fixed cleanup child shares the live controller's exclusive tree
        # lease through the same ancestry/start-time/token checked resource
        # capability used by the cleanup controls. No semantic authority.
        allow_nested_tests=d["slots"]
        in [
            ["profile-capacity-controls"],
            ["foundation-tests"],
            ["recorder-cadence-controls"],
            ["storage-node-controls"],
            ["owned-unpack-cleanup"],
            ["owned-build-cleanup"],
            ["owned-sdk-sharing"],
            ["owned-evidence-sharing"],
            ["owned-quality-cache-cleanup"],
            ["owned-native-cache-retention"],
        ],
        source_subject_ref=d["source_subject_ref"],
        incremental_storage=d["slots"] != ["lean-cache-realize"],
        # The exact official archive is 649,635,195 bytes. This source-selected
        # exception remains below both declared cache and temporary caps.
        file_limit_bytes=2 * 1024**3
        if d["slots"] == ["analysis-lean-install"]
        else 1024**3
        if d["slots"] in [["lean-cache-download"], ["analysis-lean-download"]]
        else 512 * 1024**2,
    )
    source_error = None
    try:
        for ref in d["executor_sources"]:
            registry.verify(ref)
        _subject(ctx, registry, d["revision"])
    except ValueError as exc:
        source_error = str(exc)
    end = time.monotonic_ns()
    success = (
        receipt["exit_code"] == 0
        and receipt["stop_reason"] is None
        and source_error is None
    )
    operational = (
        "succeeded"
        if success
        else ("resource_stopped" if receipt["stop_reason"] else "failed")
    )
    ledger.close(
        name,
        now_ns=end,
        boot_id=boot,
        outcome=operational,
        reason=None
        if success
        else receipt["stop_reason"] or source_error or "Actual child failed",
        closed_tree=receipt["tree_empty"] and receipt["group_empty"],
        intervals=[
            {
                "kind": "controller",
                "start_ns": 0,
                "end_ns": receipt["start_monotonic_ns"] - start,
            },
            {
                "kind": "stage",
                "start_ns": receipt["start_monotonic_ns"] - start,
                "end_ns": receipt["start_monotonic_ns"] - start + receipt["wall_ns"],
            },
            {
                "kind": "controller",
                "start_ns": receipt["start_monotonic_ns"] - start + receipt["wall_ns"],
                "end_ns": end - start,
            },
        ],
    )
    checkpoint = {
        "format": "core036.checkpoint.v2",
        "work_id": ctx["work_id"],
        "record_id": name + "-closed",
        "specification_ref": ctx["specification_ref"],
        "source_subject_ref": d["source_subject_ref"],
        "inputs": [
            ref_for(declaration_path, registry),
            ref_for(
                attempt_root / "child/receipt.json",
                registry,
            ),
        ],
        "product_adoption": "unactivated",
        "outcome": {"operational": "closed", "acceptance": "blocked"},
        "reason": "Attempt closed; all research completion prerequisites remain independently checked",
        "blocking_ref": ctx["specification_ref"],
        "attempt_id": name,
        "stage_outcome": operational,
        "initial_authority": "unverified",
        "feature_complete": False,
        "pending_slots": [] if success else d["slots"],
        "source_validation_error": source_error,
    }
    registry.write(attempt_root_id, f"attempts/{name}/checkpoint.json", checkpoint)
    RootRegistry({"attempt": attempt_root}).seal("attempt")
    return 0 if success else (3 if receipt["stop_reason"] else 1)


def resume(args):
    ctx, registry, ledger = load_work(args.work)
    checkpoint_path = Path(args.checkpoint)
    checkpoint = read_path(checkpoint_path, registry)
    parent_id = checkpoint["attempt_id"]
    checkpoint_ref = ledger.artifact_store.attempt_ref(parent_id, "checkpoint.json")
    if checkpoint_path != registry.verify(checkpoint_ref):
        raise ValueError("V2CheckpointOwnership")
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    parent = read_path(checkpoint_path.parent / "declaration.json", registry)
    if (
        ledger.attempts[parent_id]["state"] != "closed"
        or ledger.attempts[parent_id]["outcome"] == "succeeded"
    ):
        raise ValueError("V2SuccessorRequiresClosedFailure")
    correction = read_path(Path(args.correction), registry)
    if (
        not isinstance(correction, dict)
        or set(correction) != {"reason", "revision", "changes", "cause_refs"}
        or not isinstance(correction["reason"], str)
        or not correction["reason"].strip()
        or not isinstance(correction["changes"], list)
        or not correction["changes"]
        or not isinstance(correction["cause_refs"], list)
        or not correction["cause_refs"]
    ):
        raise ValueError("V2CorrectiveActionRequired")
    for ref in [*correction["changes"], *correction["cause_refs"]]:
        registry.verify(ref)
    subject = _subject(ctx, registry, correction["revision"])
    new_source = registry.read(subject, limit=MANIFEST)
    bound_inputs = [x["logical_ref"] for x in new_source["files"]]
    if any(ref not in bound_inputs for ref in correction["changes"]):
        raise ValueError("V2CorrectionOutsideNewSubject")
    previous_source = registry.read(parent["source_subject_ref"], limit=MANIFEST)
    previous_inputs = {
        (x["logical_ref"]["root_id"], x["logical_ref"]["path"]): x["logical_ref"][
            "sha256"
        ]
        for x in previous_source["files"]
    }
    if not any(
        previous_inputs.get((ref["root_id"], ref["path"])) != ref["sha256"]
        for ref in correction["changes"]
    ):
        raise ValueError("V2UnchangedCorrectiveSource")
    profile = read_path(Path(args.profile), registry)
    validate_v2_profile(profile)
    if profile["stage"] != parent["stage"] or profile["work_id"] != ctx["work_id"]:
        raise ValueError("V2SuccessorProfile")
    name = f"a{len(ledger.attempts) + 1:04d}"
    if Path(args.out) != ledger.artifact_store.output_path(f"attempts/{name}"):
        raise ValueError("V2SuccessorOutputOwnership")
    if Path(args.out).exists():
        raise FileExistsError(args.out)
    operational_profile = {
        "wall_seconds": profile["limits"]["attempt_seconds"],
        "reserve_seconds": profile["limits"]["closure_reserve_seconds"],
    }
    record = {
        **parent,
        "record_id": name,
        "source_subject_ref": subject,
        "inputs": [
            ref_for(Path(args.profile), registry),
            ref_for(Path(args.correction), registry),
            ref_for(checkpoint_path, registry),
            *ledger.artifact_store.configuration_refs,
        ],
        "revision": correction["revision"],
        "profile": profile,
        "predecessor": ref_for(checkpoint_path, registry),
        "correction": ref_for(Path(args.correction), registry),
        "executor_sources": [ref_for(p, registry) for p in sorted(E.glob("*.py"))],
    }
    ledger.successor(
        parent_id,
        correction=correction["reason"],
        profile=operational_profile,
        subject=subject["sha256"],
    )
    declaration = ledger.artifact_store.write(
        f"attempts/{name}/declaration.json", record
    )
    ledger.bind_declaration(name, declaration, registry=registry)
    return 0


def freeze(args):
    ctx, registry, ledger = load_work(args.work)
    if re.fullmatch(r"r[0-9]{4,16}", args.revision) is None:
        raise ValueError("V2RevisionID")
    inputs = read_path(Path(args.inputs), registry, manifest=True)
    if (
        not isinstance(inputs, dict)
        or set(inputs) != {"files"}
        or not isinstance(inputs["files"], list)
        or not 0 < len(inputs["files"]) <= 20000
    ):
        raise ValueError("V2FreezeInputFields")
    out = ledger.artifact_store.output_path("subjects/" + args.revision)
    if out.exists():
        raise FileExistsError(out)
    files = []
    seen = set()
    for index, ref in enumerate(inputs["files"]):
        from artifact_registration_v2 import guard_reference

        guard_reference(ref)
        original = registry.verify(ref)
        key = (ref["root_id"], ref["path"])
        if key in seen:
            raise ValueError("V2DuplicateSourceInput")
        seen.add(key)
        files.append((original, ref, f"subjects/{args.revision}/sources/{index:05d}"))
    out.mkdir(parents=True, exist_ok=False)
    snapshots = []
    snapshot_writer = FrozenSourceWriter(
        registry, ctx["work_id"], root_id=ledger.artifact_store.active_root_id
    )
    for original, ref, name in files:
        snap = snapshot_writer.write(name, original.read_bytes(), ref)
        snapshots.append({"logical_ref": ref, "snapshot_ref": snap})
    record = {
        "format": "core036.source.v2",
        "work_id": ctx["work_id"],
        "record_id": args.revision,
        "specification_ref": ctx["specification_ref"],
        "source_subject_ref": ref_for(Path(args.inputs), registry),
        "inputs": [x["snapshot_ref"] for x in snapshots],
        "product_adoption": "unactivated",
        "outcome": {"operational": "completed", "acceptance": "blocked"},
        "reason": "Source binding only; no native proof or build",
        "blocking_ref": ctx["specification_ref"],
        "files": snapshots,
    }
    ledger.artifact_store.write(
        f"subjects/{args.revision}/manifest.json", record, limit=MANIFEST
    )
    return 0


def parser():
    p = argparse.ArgumentParser(description="Core036 v2 bounded operational supervisor")
    s = p.add_subparsers(dest="command", required=True)
    q = s.add_parser("init")
    for field in ("spec", "profile", "previous-index", "bootstrap", "out"):
        q.add_argument("--" + field, required=True)
    q = s.add_parser("freeze")
    for field in ("work", "revision", "inputs"):
        q.add_argument("--" + field, required=True)
    q = s.add_parser("status")
    q.add_argument("--work", required=True)
    q = s.add_parser("declare")
    for field in ("work", "stage", "revision", "profile", "slots", "out"):
        q.add_argument("--" + field, required=True)
    q = s.add_parser("run")
    for field in ("work", "attempt"):
        q.add_argument("--" + field, required=True)
    q = s.add_parser("resume")
    for field in ("work", "checkpoint", "correction", "profile", "out"):
        q.add_argument("--" + field, required=True)
    q = s.add_parser("collect")
    for field in ("work", "kind", "out"):
        q.add_argument("--" + field, required=True)
    q = s.add_parser("finalize")
    for field in ("work", "assessment", "reproduction", "out"):
        q.add_argument("--" + field, required=True)
    return p


def main(argv=None):
    # Controller processes also inherit a concrete CPU/AS envelope. Preserve a
    # stricter enclosing hard limit (for example a supervised proof test).
    import os
    import resource

    cpu = min(os.sched_getaffinity(0))
    os.sched_setaffinity(0, {cpu})
    soft, hard = resource.getrlimit(resource.RLIMIT_AS)
    cap = min(8 * 1024**3, hard) if hard != resource.RLIM_INFINITY else 8 * 1024**3
    resource.setrlimit(resource.RLIMIT_AS, (cap, cap))
    args = parser().parse_args(argv)
    try:
        if args.command == "init":
            return initialize(args)
        if args.command == "freeze":
            return freeze(args)
        if args.command == "declare":
            return declare(args)
        if args.command == "run":
            return run_attempt(args)
        if args.command == "resume":
            return resume(args)
        if args.command == "status":
            _, _, ledger = load_work(args.work)
            result = execute_status(ledger)
            prerequisites = {}
            try:
                from environment import check_prepared_native_v2

                check_prepared_native_v2(E / "toolchain-v2.json")
                prerequisites["native_ready"] = True
                result["native_readiness_scope"] = (
                    "Fresh raw ENV/probe/tool/index/GC-root checks; proof analysis remains pending"
                )
            except (ValueError, OSError) as exc:
                result["native_readiness_scope"] = "Unavailable: " + str(exc)
            result["runnable"] = [
                stage
                for stage in (
                    "ENGINEERING",
                    "ENV",
                    "NATIVE",
                    "Q",
                    "DIAG",
                    "SESSIONS",
                    "COMPACT",
                    "REPRO",
                    "FINAL",
                )
                if runnable(stage, prerequisites)
            ]
            result["pending_tasks"] = [
                line.split()[3]
                for line in (F / "tasks.md").read_text().splitlines()
                if line.startswith("- [ ] T")
            ]
            print(json.dumps(result, indent=2))
            return 0
        # The interfaces are parsed now; each actual executor is added with
        # its own red/green tests. No unfinished route returns fake success.
        raise NotImplementedError("Pending v2 executor: " + args.command)
    except (
        AssertionError,
        ValueError,
        FileExistsError,
        NotImplementedError,
        OSError,
    ) as exc:
        print(str(exc), file=sys.stderr)
        return cli_exit(exc)
