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
    accepted: bool
    dependencies: tuple
    _token: object


def checked_gate(subject, *, kind, check, dependencies=()):
    """Harness-only positive/negative gate factory.

    Production proof/quality/oracle gates must be constructed by their fixed
    source-selected checkers from current raw evidence. A caller-selected lambda
    can never establish those claims by naming their kind here.
    """
    identifier(subject)
    if kind != 'unit' or not callable(check):
        raise ValueError('V2UnregisteredGateChecker')
    if not isinstance(dependencies,tuple):
        raise ValueError('V2GateDependencies')
    for value in dependencies:
        identifier(value)
    result = check()
    if type(result) is not bool:
        raise ValueError('V2UntypedCheckResult')
    return _CheckedGate(subject,kind,result,dependencies,_TOKEN)


def gate_valid(gate, subject, *, kind=None, current_dependencies=None):
    return (isinstance(gate,_CheckedGate) and gate._token is _TOKEN
            and gate.subject == subject and gate.accepted is True
            and (kind is None or gate.kind == kind)
            and (current_dependencies is None or gate.dependencies == tuple(current_dependencies)))


def runnable(stage, prerequisites):
    """Scheduling permission only, never scientific acceptance.

    All uninferred engineering, ENV and controller work can continue. Native
    worker/Q work is independent of proof-tool readiness. Accepted experiment
    scheduling requires each separate prerequisite; its executor must still
    check source-bound raw evidence rather than trusting this boolean summary.
    """
    if not isinstance(prerequisites,dict):
        raise ValueError('V2Prerequisites')
    if stage in {'ENGINEERING','ENV'}:
        return True
    if stage in {'Q','NATIVE'}:
        return prerequisites.get('native_ready') is True
    if stage == 'NATIVE_PROOF':
        return all(prerequisites.get(k) is True for k in ('native_ready','analysis_ready'))
    needed = {
        'DIAG':('native_ready','proof','quality','conformance'),
        'SESSIONS':('native_ready','proof','quality','conformance','diagnosis'),
        'COMPACT':('native_ready','proof','quality','conformance','diagnosis','sessions','compact_proof'),
        'REPRO':('native_ready','analysis_ready','candidate_sealed'),
        'FINAL':('reproduction','all_deliverables','all_requirements','all_criteria'),
    }
    if stage not in needed:
        raise ValueError('V2UnknownStage')
    return all(prerequisites.get(k) is True for k in needed[stage])
