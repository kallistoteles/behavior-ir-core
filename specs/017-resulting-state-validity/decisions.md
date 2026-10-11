# Decisions: Complete Resulting-State Validity

**Created**: 2026-10-11

**Status**: Planned — existing checks/order accepted; historical compatibility resolved as explicit design.

**Specification**: [spec.md](spec.md)

**Discussion context**: [Core remediation overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md)

The user authorized draft publication for discussion. This document does not
approve an implementation, public semantic change or release. RC-001 /
F-INCREMENTAL-001 concerns omitted unchanged-row obligations in ordinary fallback;
it is not an unsafe 015 locality guard. The audit's S0/High classification and
complete ordinary child-validity obligation are settled. The existing-checks
correction and canonical-witness order were accepted on 2026-10-11. The user then
requested planning. Historical compatibility is resolved as an explicit planning
design, with its evidence and version consequences recorded separately from
user-answered clarification.

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

**Status**: Both A answers selected on 2026-10-11; semantic ordering resolved.

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

**Accepted comparator (FR-015)**: Postconditions first; then entities by canonical
semantic type identity and entity identity; within each entity, invariants first
and constraints second; within each category, canonical semantic declaration
identity. Names are keys only where they belong to semantic identity. Metadata,
backend enumeration and Rust collection layout cannot establish this order.
There is no global evaluation-error-versus-`DENY` ranking: the first reached
false or erroring obligation determines the outcome. Global/reference obligations
retain their applicable established precedence; no new phase is implied.

Core already distinguishes a rule's body content identity from its module-bound
declaration identity: [FR-006b](../001-verifiable-behavior-ir/spec.md) and
[R5](../001-verifiable-behavior-ir/research.md) state that a rule rename changes
the module/BehaviorHash, not the rule content hash. The plan must document the
canonical semantic declaration key using this distinction; neither all names
being metadata nor sorting only by body hash is an authorized assumption.

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

**Planning design**: Option B, selected from source research after the user
requested planning. This is not a claimed third user clarification answer.
New fresh ordinary action evaluations for every supported Wire profile produce
decision record 0.8 with `validation_profile: behavior.complete_resulting_state.v1`.
The module's language profile, Wire, BehaviorHash and SchemaHash rules do not
change. Validated old records select frozen original computation through private
replay/recovery routing. Live uncommitted old bundles require fresh evaluation
and renewed exact-candidate authority; exact committed-event recovery adds no
write or current validity certificate.

| Option | Proposed contract | Consequence for discussion |
| --- | --- | --- |
| A | Correct covered current fresh execution while preserving original historical evaluation/replay through unambiguous retained profile selection. | Prevents new invalid success/commit without rewriting history. Must demonstrate how historical and corrected computations are distinguished; existing format labels alone may be insufficient. |
| B | Select a new explicitly identifiable semantic/record profile for corrected fresh execution and retain old historical profiles unchanged. | Gives a clear preservation boundary, with consumer, record/hash and release/version consequences. Old semantics cannot remain an unnoticed bypass for new ordinary invalid commitments. |
| C | Define another explicit compatibility/adoption boundary preserving immutable evidence and refusing silent reinterpretation. | Must cover old modules, existing stores, new commits and already-invalid historical state. No automatic repair or record rewrite is authorized. |

**Rationale and alternatives**: Existing module Legacy/CommandIntents profiles
and decision 0.4–0.7 distinguish language/evidence forms, not original versus
corrected computation. Decision replay and Store rederivation currently call the
same evaluator. Option A therefore has no unambiguous existing selector.
Option C is unnecessary: versioned new evidence preserves archives without
rewriting state or introducing adoption/repair semantics. See
[research R4–R8](research.md) and [the exact matrix](contracts/profiles.md).

**Required decision evidence**: A matrix of fresh and historical execution,
standalone/Store-backed replay, behavior/schema/record profiles, old stores and
new commits, with exact identities/evidence that must remain unchanged. Assess
[Core versioning](../../docs/versioning.md), verifier premises and governance
eligibility explicitly; no old policy is upgraded implicitly. The absence of an
already suitable marker cannot justify silent reinterpretation.

**Version consequences proposed**: New closed decision 0.8 codec/schema; current
verifier encoding 0.9.0 with prior 0.8.0/0.7.0 archives retained; minor Core Release
class, with no exact release number or tag selected. Existing invocation/Store
outer formats embed the new record without changing domains. New evidence-derived
identities and authorization candidates change naturally; old bytes do not.
No Wire, schema, item/module hash, StateId or public signature change is proposed.

**Resolution**: Technical boundary resolved for planning; the new record/verifier
design remains reviewable and is not implemented or published by this command.

## Planning boundary

The [plan](plan.md) documents the smallest shared correction, exact ordering,
test-first sequence and explicit historical/version consequences. The audit RED
establishes the defect, not test-first
evidence for a future fix. This planning command creates design documents, not
tasks, production code, remediation tests, tags or releases.
