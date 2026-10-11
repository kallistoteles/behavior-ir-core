# Decisions: Complete Resulting-State Validity

**Created**: 2026-10-11

**Status**: Clarification in progress — A selected for existing checks; exact order and historical compatibility remain open.

**Specification**: [spec.md](spec.md)

**Discussion context**: [Core remediation overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md)

The user authorized draft publication for discussion. This document does not
approve an implementation, public semantic change or release. RC-001 /
F-INCREMENTAL-001 concerns omitted unchanged-row obligations in ordinary fallback;
it is not an unsafe 015 locality guard. The audit's S0/High classification and
complete ordinary child-validity obligation are settled. The existing-checks
correction and canonical-witness principle were accepted on 2026-10-11. Exact
canonical-order details and historical compatibility remain to be clarified
before planning.

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

## D-017-002 — Existing checks and canonical first failure

**Status**: A selected on 2026-10-11. Exact canonical comparator remains open.

**Accepted contract**: Complete child validity is established by extending the
existing resulting-state checks, not by adding a new observable validation
phase or a second definition of validity. Action postconditions retain priority.
When reached, false entity constraints produce `DENY` with `CONSTRAINT_VIOLATED`,
false invariants retain `DENY` with `INVARIANT_VIOLATED`, and evaluation errors
retain their established category. Unrelated action/command stages are not moved.

For every ordinary transition allowed to commit, the complete resulting state
must satisfy every validity obligation under its exact schema and Behavior
semantics, including obligations on entities not directly modified. Optimization
may prove obligations unaffected; it cannot narrow the normative validity domain.
017 completes an existing proof obligation; it does not introduce a new kind.

**Accepted witness principle**: All resulting-state entity obligations share a
canonical semantic order independent of touched/created/unchanged partitions,
backend enumeration and optimizer work-list layout. Full, optimized and replay
evaluation under the same applicable profile choose the same first false or
erroring obligation and required semantic evidence. A proven true unchanged
obligation may be omitted computationally; the canonical first failure may not
change. An earlier constraint violation cannot be displaced by a later evaluation
error. Postcondition failure prevents a later child failure from taking priority.

**Remaining comparator detail (FR-015)**: The user's proposed entity-first key
(type identity, entity identity, canonical declaration order) is the reference
for clarification, reusing existing canonical conventions rather than hashing or
serializing by a new convention. Inside that order, ordinary post-state checks
currently traverse invariants before constraints, while the complete snapshot
checker traverses constraints before invariants. Neither implementation sequence
alone decides the intended normative order. Select the rule-kind priority and
canonical declaration-name tie order explicitly before planning. Global/reference
obligations retain their applicable established precedence; no new phase is implied.

**Acceptance evidence required**: Cover postcondition failure versus child failure;
several changed/created/unchanged entities; mixed false/error obligations; both
rule kinds on the same entity; full/optimized comparison and backend/cache
permutations. Required semantic evidence is distinguished from diagnostics and
backend traces. Historical/version consequences remain D-017-003; old evidence
must not silently acquire the corrected order.

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
