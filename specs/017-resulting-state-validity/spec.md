# Feature Specification: Complete Resulting-State Validity

**Feature Branch**: `017-resulting-state-validity`

**Created**: 2026-10-11

**Status**: Draft for clarify — failure and compatibility decisions pending

**Input**: User-authorized draft remediation specification for audit cluster RC-001,
for joint discussion before planning or implementation.

**Specification base**: `5949cb111cd6c5af34b0fc9083e78810df450fce`, with the
audited production source. Audit evidence is pinned to immutable commit
`b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.

This draft addresses **F-INCREMENTAL-001, S0 / High**, and obligations
**O-MODEL-005 / O-INCREMENTAL-008 / O-VERIFY-008**. The
[confirmed finding and RC-001 proposal](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md),
[direct counterexample](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/runs/INCREMENTAL/child-validity-red/audit_016_child_validity.rs),
[actual failing run](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/runs/INCREMENTAL/child-validity-red/run.json)
and [independent review](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/reviews/MODEL/incremental-finding.md)
establish that a valid parent can become an invalid committed child.

The omission is in the ordinary fallback's resulting-state checks. The 015
locality guard correctly excludes the nonlocal rule, and no reusable child
validation certificate is carried in the counterexample. Full parent checking
plus bound/created child checking does not establish every unchanged child
obligation. Refusing a later read cannot undo an invalid ordinary commit.

This is one of the [draft remediation discussions](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md).
Draft publication is authorized; implementation, new semantic contracts and
release delivery await separate decisions. [decisions.md](decisions.md) records
the settled boundary and two unresolved choices.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Keep every entity valid when a transition succeeds (Priority: P1)

As a Core consumer, I need ordinary state changes to preserve the rules of
entities they do not edit, so a successful transition cannot make state invalid.

**Why this priority**: The reproduced omission makes an invalid child authoritative
through a legal operation. Complete child validity is an existing Core obligation.

**Independent Test**: Begin with `E#e0.target = "new"` and constraint
`not exists(target)`. Creating `E#new` with `target = "absent"` leaves the new row
valid but makes the unchanged e0 constraint false. Independently determine child
membership and evaluate that concrete predicate. The invalid candidate must not
commit. A creation whose new identity is not any surviving row's target supplies
a valid positive control. Agreement between validators is not the sole oracle.

**Acceptance Scenarios**:

1. **Given** the valid audit parent and a fresh creation that invalidates e0,
   **When** an ordinary transition is evaluated and commitment attempted,
   **Then** the invalid transition cannot succeed or commit; canonical head,
   versions, references and committed command occurrences remain at the parent.
   The exact failure phase, category and evidence are pending D-017-002.
2. **Given** a creation whose complete child satisfies every obligation,
   **When** it succeeds and commits, **Then** complete reference validation of
   that exact child succeeds, including unchanged entities.
3. **Given** an update or removal that affects an unchanged entity's query,
   transitive derived value or cross-entity rule, **When** an ordinary transition
   is evaluated, **Then** every affected child obligation is discharged before
   success or commitment. These are required coverage cases, not additional
   reproduced defects claimed by the audit.

### User Story 2 - Get the same validity guarantee at every supported boundary (Priority: P1)

As a caller evaluating or invoking an action before commitment, I need the
existing valid-transition guarantee through every supported current path,
with an explicit refusal or evaluation failure when child checks fail.

**Why this priority**: Fixing only one outward path could leave another reporting
success for an invalid ordinary transition. Failure precedence and evidence are
observable behavior requiring an explicit correction contract.

**Independent Test**: Submit the same canonical parent, behavior, inputs, context
and required facts through current ordinary evaluation, action invocation and
Store evaluation/rederivation/commit paths. Challenge false child obligations,
child evaluation errors and competing existing failures. Compare the agreed
D-017-002 outcomes and semantic evidence, rather than backend call traces.

**Acceptance Scenarios**:

1. **Given** an invalid complete child, **When** it passes through any covered
   ordinary path, **Then** no success claims a valid transition and no live
   commit makes the child authoritative. Existing result contracts carry the
   agreed failure; no new public validation certificate is required.
2. **Given** a candidate with both a false postcondition and a child failure,
   **When** it is evaluated, **Then** D-017-002's explicit precedence determines
   the result and evidence, independent of incidental enumeration order.
3. **Given** a child obligation whose evaluation errors rather than returns false,
   **When** that obligation is reached under the agreed order, **Then** it retains
   the agreed evaluation-error category and required evidence. An error never
   becomes successful validity, and an unreachable obligation is not fabricated
   as though it ran.

### User Story 3 - Reuse validation only for the exact justified child (Priority: P1)

As a consumer of small repeated changes, I need internal validation reuse to
preserve complete reference validity, without trusting another parent or a
candidate that has not committed.

**Why this priority**: Closing missing obligations must retain the boundary
between canonical validity and non-authoritative implementation evidence.

**Independent Test**: Reconstruct the complete child independently of optimized
scope/cache, and compare outcomes with reuse available, discarded and ineligible.
Exercise changed behavior/schema/history, simultaneous lifecycle edits, concurrent
head movement, genuine non-application and lost acknowledgment after a durable
commit. Keep candidate evidence separate from actual committed history.

**Acceptance Scenarios**:

1. **Given** an exact valid committed parent and proven unaffected obligations,
   **When** an eligible local transition succeeds, **Then** complete resulting
   validity and required semantic results equal the reference meaning. No
   particular amount of reuse or latency is required by this specification.
2. **Given** global, query, cross-entity, unknown or removal dependencies,
   **When** unaffectedness is not established, **Then** uncovered child
   obligations are checked under the reference semantics before success/commit.
3. **Given** a validated candidate, **When** a conflict or genuine non-application
   prevents its commit, **Then** no reusable child validity or committed command
   occurrence is published. If acknowledgment is lost after a durable commit,
   canonical history and exact recovery establish what actually committed;
   the error response does not publish speculative candidate evidence.

### User Story 4 - Retain the meaning of immutable history (Priority: P1)

As an operator retaining history, I need corrected current execution and original
historical interpretation distinguished explicitly, so new checks do not silently
change the meaning of an old record.

**Why this priority**: Formerly accepted invalid transitions will be refused.
Their historical identities and evidence cannot be rewritten to conceal that change.

**Independent Test**: Retain original accepted records and valid/current refusal
controls. Exercise fresh execution, standalone replay and Store-backed replay
under D-017-003's approved profile/compatibility matrix.

**Acceptance Scenarios**:

1. **Given** immutable historical records, **When** the correction is introduced,
   **Then** stored bytes, identities and history positions remain unchanged;
   interpretation follows the explicit approved historical-profile policy.
2. **Given** an old store already containing an invalid child, **When** current
   ordinary work is attempted, **Then** complete parent validity remains required.
   No old success is silently relabeled as a new refusal, and no automatic repair
   is introduced by this feature.
3. **Given** an unaffected valid transition, **When** execution or replay is
   compared at the same agreed profile, **Then** semantic results and canonical
   identities/evidence remain unchanged unless an approved version consequence
   explicitly requires a difference.

### Edge Cases

- Several creates, updates and removals form one simultaneous child; references
  or constraints can depend on another changed or created entity.
- An unchanged row depends on absence of a newly created plain identity, rather
  than synthesized positive reference existence. These obligations are distinct.
- Transitive derived expressions, query memberships, aggregates and globals can
  change an unchanged row's rule. Unknown dependency means affected.
- False rules, validity evaluation errors, multiple invalid rows, postcondition
  failures and command failures require the agreed deterministic precedence.
- A no-op child, empty entity types and optional references retain the existing
  reference meaning; rejecting every candidate is not a valid correction.
- Equal live values or StateId at different history positions cannot substitute
  historical freshness, schema, behavior or exact validation evidence.
- Cold operation, reopen, cache loss, stale/forged candidates, conflict and lost
  acknowledgment retain mandatory trust, consistency and commitment checks.
- An already-invalid parent is distinct from a valid parent with an invalid
  proposed child. Migration and repair keep their separately defined semantics.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: Complete resulting-state validity MUST remain the ordinary transition
  contract. For valid exact parent S and covered semantic profile M, an ordinary
  successful transition with delta Δ MUST satisfy `Valid_M(apply(S, Δ))`; successful
  ordinary commitment MUST bind that exact child. Validity includes complete
  typed entity/key coherence, every entity constraint and state invariant,
  synthesized references, global obligations and reached validity evaluation
  errors under existing reference semantics. Touched-row validity is insufficient.
- **FR-002**: Every child obligation MUST either be checked against the simultaneous
  resulting state or be covered by established evidence that its valid-parent
  result is unchanged. Unproven or unknown unaffectedness MUST require reference
  checking of the uncovered obligation. Full parent validation alone is insufficient.
- **FR-003**: The audit creation MUST be refused before invalid success or commitment.
  Cache eviction, later validation or refusal of the next read MUST NOT count as
  preservation of FR-001.
- **FR-004**: All covered current ordinary evaluation, action invocation and Store
  evaluation/rederivation/commit paths MUST retain the existing valid-transition
  guarantee. No current path may bypass child obligations by calling its result
  provisional. The exact outward failure placement belongs to FR-005. No new
  public semantic API or validation certificate is required.
- **FR-005**: Newly detected false child obligations and child evaluation errors
  MUST have explicit outcomes, phase, precedence and required semantic evidence:
  [NEEDS CLARIFICATION: D-017-002 — through the existing evaluation/invocation/commit
  results, where are the new failures reported, with which category/evidence and
  precedence relative to postconditions, outgoing rules, globals and commands?]
- **FR-006**: The approved entrypoint/failure matrix MUST cover creates, updates
  and removals; unchanged and changed rows; direct and transitive local/nonlocal
  rules; references; global/query obligations; no-op valid controls and invalid
  parents. This requires no new removal fast path or generalized dependency engine.
- **FR-007**: Eligible 014/015 reuse MAY remain an internal optimization only when
  it establishes the complete reference-validity result for the exact parent
  and child. The nonlocal exclusion MUST NOT be widened to accept the audit
  counterexample. Caches, indexes and certificates are not semantic authority.
- **FR-008**: Parent, candidate and committed-child evidence MUST retain exact
  store/history/schema/behavior and applicable validation-semantics bindings.
  Historical freshness, resulting references, consistency, authorization and
  atomic concurrency obligations remain mandatory. Stale or substituted
  candidates MUST NOT become successful ordinary commits.
- **FR-009**: Reusable child validity and committed command occurrences MUST arise
  only from the exact successfully committed child. Prospective validation,
  refusal, conflict and genuine non-application MUST NOT publish them. Durable
  commitment with lost acknowledgment retains exact-history recovery and MUST
  NOT be conflated with non-application.
- **FR-010**: Current enforcement and original historical evaluation/replay MUST
  have an explicit compatibility and versioning matrix:
  [NEEDS CLARIFICATION: D-017-003 — which fresh-execution semantic profiles receive
  the correction, how is original historical evaluation/replay selected, and
  which release/record/Wire/verifier identities or versions, if any, must change?]
- **FR-011**: Existing immutable behavior documents, records, hashes and history
  MUST NOT be rewritten. Historical profiles MUST NOT silently acquire corrected
  refusal behavior. Any approved new evidence shape, semantic profile or public
  outcome consequence MUST be identified under FR-010 before planning.
- **FR-012**: Correctness evidence MUST include the audit's independent concrete
  membership predicate and complete child reconstruction independent of optimized
  scope/cache. Differential full/reused checking MUST disclose shared helpers.
  Passing characterization of invalid commitment or agreement on an omission
  MUST NOT count as validity-preservation evidence.
- **FR-013**: Runtime/verifier correspondence MUST state each preservation check's
  exact promise. Closing this runtime defect MUST NOT be reported as proof of
  every verifier property or as a demonstrated legal false PROVEN result.
- **FR-014**: Evidence MUST distinguish false obligations, evaluation errors,
  backend failures, conflicts and refusals. Hypothetical failures of omitted
  redundant reads and backend execution traces are not the semantic equivalence
  oracle; eliminating a call cannot eliminate its mandatory proof obligation.

### Key Entities

- **Exact parent**: Canonical committed state with its history/schema/behavior
  bindings and established reference validity; historical facts remain explicit.
- **Candidate child**: Simultaneous application of a delta to that parent before
  authoritative mutation.
- **Validity obligation**: An existing typing, entity, reference or global
  requirement whose truth or evaluation result is determined at the child.
- **Unaffectedness evidence**: Non-authoritative justification that an obligation
  retains the valid parent's result under this exact delta.
- **Semantic profile and record**: The selected meaning of execution and its
  immutable evidence, with explicit compatibility rules.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: The exact audit case has zero successful invalid transitions/commits;
  valid parent and candidate controls still succeed. The unchanged-row predicate
  is checked independently of the production validator's verdict.
- **SC-002**: Every covered ordinary entrypoint and lifecycle category has an
  explicit acceptance/refusal/evaluation-error case under the approved failure
  precedence, with zero unexplained differences at equivalent boundaries.
- **SC-003**: Every successful resulting-state corpus case satisfies all completely
  reconstructed child obligations, including unchanged-row direct, transitive,
  query/global and reference cases. Shared-validator agreement conceals zero
  known child-validity violations.
- **SC-004**: Refused invalid candidates produce zero authoritative child versions,
  head/history changes or committed command occurrences. Concurrency and lost-ack
  controls distinguish actual non-application from a durably committed child.
- **SC-005**: Every approved compatibility case preserves required original record
  bytes/identities and interpretation; 100% of deliberate semantic or version
  consequences are named in the approved current/historical matrix.
- **SC-006**: Each O-MODEL-005 / O-INCREMENTAL-008 / O-VERIFY-008 disposition is
  traceable to its exact proposition, scope, reference meaning and independent
  evidence. Tests alone do not become universal proofs.

## Assumptions

- This is a publishable draft for discussion and clarification. It does not
  authorize planning, implementation, new semantic contracts, tagging or release.
- Existing [ordinary validity](../../PRINCIPLES.md#11-ordinary-transitions-preserve-validity-they-do-not-establish-it)
  and the [optimization boundary](../../ARCHITECTURE.md#semantics-and-implementation-optimizations)
  are authority. Redefining validity as selected-row validity is not a correction.
- Backend snapshots/history are complete, immutable and coherent, and commit is
  atomic under the existing contract. This feature cannot prove arbitrary host
  durability or silently extend backend capabilities.
- The demonstrated defect is ordinary creation. Updates/removals are required
  coverage without claiming additional audited defects or introduction dates.
- No new Behavior syntax, IVM/DBSP runtime, bulk-access contract, cache semantics,
  public validation API or performance target is required. Justified local reuse
  may remain subject to its existing proof obligations.
- Migration, repair, initialization failures, historical Store read replay,
  strict duplicate rejection and admission metadata have separate scopes. This
  draft does not mark other audit findings or universal proofs resolved.
- [decisions.md](decisions.md) records the settled scope and two open choices with
  provisional recommendations. [Requirements review](checklists/requirements.md)
  remains incomplete until those choices and the draft are reviewed.
