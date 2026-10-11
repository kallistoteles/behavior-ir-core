# Decisions: Complete Resulting-State Validity

**Created**: 2026-10-11

**Status**: Draft for joint discussion; no open option is selected.

**Specification**: [spec.md](spec.md)

**Discussion context**: [Core remediation overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md)

The user authorized draft publication for discussion. This document does not
approve an implementation, public semantic change or release. RC-001 /
F-INCREMENTAL-001 concerns omitted unchanged-row obligations in ordinary fallback;
it is not an unsafe 015 locality guard. The audit's S0/High classification and
complete ordinary child-validity obligation are settled. The exact failure and
historical compatibility correction must be clarified before planning.

## D-017-001 — Settled validity and entrypoint boundary

**Status**: Settled drafting constraint, not an open semantic alternative.

Complete ordinary resulting-state validity is mandatory. Every covered current
ordinary evaluation, action invocation and Store evaluation/rederivation/commit
path must retain its existing valid-transition promise. No option may redefine
success as permission to commit an invalid child, or downgrade existing success
to an unchecked provisional meaning merely to preserve the omission.

Existing outward success/refusal contracts are the default boundary. This feature
requires no new public semantic API or child-validity certificate. If a later
workload demonstrates a need for an additional public indication, assess it
separately; it is not a blocking decision or part of this remediation draft.
Placement of new failures within existing results is D-017-002. The corrected
fresh-execution versus original historical-profile boundary is D-017-003.

## D-017-002 — Failure phase, category, precedence and evidence

**Context**: FR-005 and User Story 2. At the audited source, ordinary evaluation
checks postconditions before outgoing bound/created entity invariants, constraints,
affected globals and final command completion. The audit's later full read reports
STATE_INVALID; that does not select the correction's earlier transition failure
category. Entry points must retain complete ordinary validity under every option.

**Decision needed**: Where do false unchanged-child obligations and their
execution errors surface in evaluation/invocation/commit results, and which
failure wins when existing failures also apply?

| Option | Proposed contract | Consequence for discussion |
| --- | --- | --- |
| A | Extend established resulting-state failure stages to all required child obligations, retaining existing relative precedence where possible. | Reuses current distinctions where they fit. Exact new row ordering, result category, reached error/evidence and any changed observation/trace still require specification and version assessment. |
| B | Identify a complete-child validation phase explicitly within the outward result contract. | Gives the added checks an explicit place, but may alter failure precedence and evidence. Placement relative to postconditions, outgoing rules, globals and commands must be agreed; it may require versioned evidence. |
| C | Define another justified phase/category matrix while preserving the existing valid-transition obligation. | Must cover false constraints/invariants, evaluation errors, several competing failures and operational errors without conflation or invalid success. |

**Provisional recommendation**: A if the existing model can express the missing
unchanged-row obligations unambiguously; otherwise an explicitly version-assessed
contract. This is not a decision on any concrete reason code, stage insertion
point, canonical error list or evidence shape.

**Required decision evidence**: A precedence table for false postcondition versus
child failure, bound/created versus unchanged-row failure, evaluation error versus
false rule, several child rows and command failure. State the required semantic
observations/evidence separately from diagnostics and backend traces. Specify
how each existing public path surfaces the same underlying failure.

**Resolution**: Pending joint clarification.

## D-017-003 — Correct current execution and preserve historical interpretation

**Context**: FR-010/011 and User Story 4. The correction refuses a previously
accepted invalid transition. Existing records must remain immutable and their
original interpretation cannot be silently replaced. Existing Wire or record
labels may not distinguish every past implementation behavior.

**Decision needed**: Which fresh-execution profiles receive the correction, how
is original historical evaluation/replay selected, and what explicit version or
identity consequences are necessary?

| Option | Proposed contract | Consequence for discussion |
| --- | --- | --- |
| A | Correct covered current fresh execution while preserving original historical evaluation/replay through unambiguous retained profile selection. | Prevents new invalid success/commit without rewriting history. Must demonstrate how historical and corrected computations are distinguished; existing format labels alone may be insufficient. |
| B | Select a new explicitly identifiable semantic/record profile for corrected fresh execution and retain old historical profiles unchanged. | Gives a clear preservation boundary, with consumer, record/hash and release/version consequences. Old semantics cannot remain an unnoticed bypass for new ordinary invalid commitments. |
| C | Define another explicit compatibility/adoption boundary preserving immutable evidence and refusing silent reinterpretation. | Must cover old modules, existing stores, new commits and already-invalid historical state. No automatic repair or record rewrite is authorized. |

**Provisional recommendation**: Preserve original historical meaning in all
cases and correct current ordinary success/commit. Prefer A only if profile
selection is demonstrably unambiguous; otherwise discuss B. No release number,
Wire/record/verifier bump, BehaviorHash change or migration policy is selected.

**Required decision evidence**: A matrix of fresh and historical execution,
standalone/Store-backed replay, behavior/schema/record profiles, old stores and
new commits, with exact identities/evidence that must remain unchanged. Assess
[Core versioning](../../docs/versioning.md), verifier premises and governance
eligibility explicitly; no old policy is upgraded implicitly. The absence of an
already suitable marker cannot justify silent reinterpretation.

**Resolution**: Pending joint clarification.

## Draft boundary and next discussion

Resolve or narrow D-017-002/003, encode their agreed outcomes in the spec and
acceptance cases, then review the smallest correction and historical/versioning
consequences before planning. The audit RED establishes the defect, not test-first
evidence for a future fix. No plan, tasks, production code or remediation tests
are part of this draft. Its publication does not change those constraints.
