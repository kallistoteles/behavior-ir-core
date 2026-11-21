"""Process-local checked claims and dependency-aware scheduling.

JSON summaries may guide which engineering work to attempt. They cannot be
imported as a checked claim, authorize a ground, or complete the investigation.
"""

from dataclasses import dataclass
from records import identifier

_TOKEN = object()


@dataclass(frozen=True)
class _CheckedGate:
    subject: str
    kind: str
    status: str
    dependencies: tuple
    _token: object
    backend: str | None = None
    endpoint: str | None = None
    reason: str | None = None

    @property
    def accepted(self):
        return self.status == "met"


def checked_gate(subject, *, kind, check, dependencies=()):
    """Harness-only positive/negative gate factory.

    Production proof/quality/oracle gates must be constructed by their fixed
    source-selected checkers from current raw evidence. A caller-selected lambda
    can never establish those claims by naming their kind here.
    """
    identifier(subject)
    if kind != "unit" or not callable(check):
        raise ValueError("V2UnregisteredGateChecker")
    if not isinstance(dependencies, tuple):
        raise ValueError("V2GateDependencies")
    for value in dependencies:
        identifier(value)
    result = check()
    if type(result) is not bool:
        raise ValueError("V2UntypedCheckResult")
    return _CheckedGate(
        subject, kind, "met" if result else "unmet", dependencies, _TOKEN
    )


def gate_valid(
    gate, subject, *, kind=None, current_dependencies=None, backend=None, endpoint=None
):
    if (
        isinstance(gate, _CheckedGate)
        and gate.kind != "unit"
        and (
            kind is None
            or current_dependencies is None
            or backend is None
            or endpoint is None
        )
    ):
        return False
    return (
        isinstance(gate, _CheckedGate)
        and gate._token is _TOKEN
        and gate.subject == subject
        and gate.accepted is True
        and (kind is None or gate.kind == kind)
        and (
            current_dependencies is None
            or gate.dependencies == tuple(current_dependencies)
        )
        and gate.backend == backend
        and gate.endpoint == endpoint
    )


def checked_source_gate(expected, actual, *, registry, dependencies, backend, endpoint):
    """Actual byte/source closure check. This cannot construct a proof gate."""
    from records import MANIFEST, validate_ref_v2, validate_v2_record

    validate_ref_v2(expected)
    validate_ref_v2(actual)
    if not isinstance(dependencies, tuple):
        raise ValueError("V2SourceDependencies")
    for name in (*dependencies, backend, endpoint):
        identifier(name)
    status, reason = "met", None
    try:
        if registry.verify(expected) != registry.verify(actual):
            raise ValueError("V2UnexpectedSourceSubject")
        value = registry.read(actual, limit=MANIFEST)
        validate_v2_record(value, extra_fields={"files"})
        if value["format"] != "core036.source.v2":
            raise ValueError("V2SourceKind")
        files = value.get("files")
        if not isinstance(files, list) or not 0 < len(files) <= 20000:
            raise ValueError("V2SourceFileBound")
        for ref in [
            value["specification_ref"],
            value["source_subject_ref"],
            *value["inputs"],
        ]:
            registry.verify(ref)
        for entry in files:
            if not isinstance(entry, dict) or set(entry) != {
                "logical_ref",
                "snapshot_ref",
            }:
                raise ValueError("V2SourceEntry")
            for ref in entry.values():
                registry.verify(ref)
            if (entry["logical_ref"]["bytes"], entry["logical_ref"]["sha256"]) != (
                entry["snapshot_ref"]["bytes"],
                entry["snapshot_ref"]["sha256"],
            ):
                raise ValueError("V2SourceSnapshotDiffers")
    except (ValueError, OSError) as exc:
        status, reason = "unmet", str(exc)
    return _CheckedGate(
        expected["sha256"],
        "source",
        status,
        dependencies,
        _TOKEN,
        backend,
        endpoint,
        reason,
    )


def blocked_claim(
    subject, *, kind, reason, blocking_ref, registry, dependencies, backend, endpoint
):
    """A present, checked prerequisite explains an unavailable claim.

    This factory has no accepting path. Actual accepting proof/quality claims
    belong to their fixed raw-evidence checkers, not to caller-supplied flags.
    """
    identifier(subject)
    if kind not in {
        "proof",
        "quality",
        "conformance",
        "activation",
        "endpoint",
        "source",
    }:
        raise ValueError("V2BlockedClaimKind")
    if not isinstance(reason, str) or not reason.strip():
        raise ValueError("V2BlockedClaimReason")
    if not isinstance(dependencies, tuple):
        raise ValueError("V2BlockedClaimDependencies")
    for name in (*dependencies, backend, endpoint):
        identifier(name)
    registry.verify(blocking_ref)
    return _CheckedGate(
        subject, kind, "blocked", dependencies, _TOKEN, backend, endpoint, reason
    )


def runnable(stage, prerequisites):
    """Scheduling permission only, never scientific acceptance.

    All uninferred engineering, ENV and controller work can continue. Native
    worker/Q work is independent of proof-tool readiness. Accepted experiment
    scheduling requires each separate prerequisite; its executor must still
    check source-bound raw evidence rather than trusting this boolean summary.
    """
    if not isinstance(prerequisites, dict):
        raise ValueError("V2Prerequisites")
    if stage in {"ENGINEERING", "ENV"}:
        return True
    if stage in {"Q", "NATIVE"}:
        return prerequisites.get("native_ready") is True
    if stage == "NATIVE_PROOF":
        return all(
            prerequisites.get(k) is True for k in ("native_ready", "analysis_ready")
        )
    needed = {
        "DIAG": ("native_ready", "proof", "quality", "conformance"),
        "SESSIONS": ("native_ready", "proof", "quality", "conformance", "diagnosis"),
        "COMPACT": (
            "native_ready",
            "proof",
            "quality",
            "conformance",
            "diagnosis",
            "sessions",
            "compact_proof",
        ),
        "REPRO": ("native_ready", "analysis_ready", "candidate_sealed"),
        "FINAL": (
            "reproduction",
            "all_deliverables",
            "all_requirements",
            "all_criteria",
        ),
    }
    if stage not in needed:
        raise ValueError("V2UnknownStage")
    return all(prerequisites.get(k) is True for k in needed[stage])
