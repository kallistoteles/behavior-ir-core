# Feature Specification: Complete Resulting-State Validity

**Feature Branch**: `017-resulting-state-validity`

**Created**: 2026-10-11

**Status**: Planned — existing checks and canonical order clarified; compatibility design explicit

**Input**: User-authorized draft remediation specification for audit cluster RC-001,
with planning now requested separately; implementation remains outside this command.

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
Draft publication and planning are authorized; implementation and release delivery
are outside this command. [decisions.md](decisions.md) distinguishes user-accepted
clarifications from the evidence-based compatibility design proposed in the plan.

## Clarifications

### Session 2026-10-11

- Q: Should invalid resulting state be handled by extending existing post-state
  checks or by introducing a separate validation phase? → A: Extend the existing
  checks (A). Postconditions retain priority; existing constraint, invariant and
  evaluation-error categories remain. Establish complete resulting-state validity
  in one canonical entity-obligation order independent of touched/created/unchanged
  partitions. Full, optimized and replay evaluation under the same applicable
  profile must select the same first failure and required semantic evidence;
  proven-unaffected checks may be omitted without changing that result.
- Q: Within each canonically ordered entity, should invariants or constraints run
  first? → A: Invariants first, then constraints (A). Within each category use
  canonical semantic declaration identity; names are ordering keys only when they
  belong to that identity. Use canonical semantic type/entity representations,
  not backend or Rust iteration order. The first false or erroring obligation
  determines the outcome and evidence; there is no separate global priority
  between evaluation errors and refusals. Full, optimized and replay evaluation
  under the same profile must select the same failure.

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
   With successful postconditions, its false constraint produces `DENY` with
   `CONSTRAINT_VIOLATED` in the existing resulting-state checks.
2. **Given** a creation whose complete child satisfies every obligation,
   **When** it succeeds and commits, **Then** complete reference validation of
   that exact child succeeds, including unchanged entities.
3. **Given** an update or removal that affects an unchanged entity's admitted
   cross-entity rule or transitive derived dependency, or a global query obligation,
   **When** an ordinary transition
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
   **When** it is evaluated, **Then** the postcondition failure retains priority;
   no resulting-state failure supersedes it or is fabricated as reached evidence.
3. **Given** a child obligation whose evaluation errors rather than returns false,
   **When** that obligation is reached under the agreed order, **Then** it retains
   the agreed evaluation-error category and required evidence. An error never
   becomes successful validity, and an unreachable obligation is not fabricated
   as though it ran.
4. **Given** canonically ordered entities a, b and c with a valid, b violating a
   constraint and c producing a later evaluation error, **When** full and optimized
   resulting-state checks run, **Then** both select b's constraint violation and
   preserve the same required semantic evidence. If the canonical first decisive
   obligation instead errors, that evaluation error is the result.
5. **Given** fixed semantic inputs and candidate state, **When** backend enumeration,
   cache availability or the optimizer's affected-row partition changes, **Then**
   the canonical first failure and required semantic evidence remain unchanged.
6. **Given** an entity whose invariant errors and whose constraint is false,
   **When** its resulting-state obligations are reached, **Then** the invariant
   error wins. A false constraint on an earlier canonical entity instead wins
   over an invariant error on a later entity.
7. **Given** unchanged semantic declaration identities, **When** only display
   metadata, locations or source declaration layout changes, **Then** those
   changes cannot change the first failure. Renaming a module-bound semantic
   name is assessed as a semantic identity change, not a metadata-only control.

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
under the explicit D-017-003 profile/compatibility matrix proposed by planning.

**Acceptance Scenarios**:

1. **Given** immutable historical records, **When** the correction is introduced,
   **Then** stored bytes, identities and history positions remain unchanged;
   interpretation follows the original archived decision profile, independently
   of the current fresh evaluator.
2. **Given** an old store already containing an invalid child, **When** current
   ordinary work is attempted, **Then** complete parent validity remains required.
   No old success is silently relabeled as a new refusal, and no automatic repair
   is introduced by this feature.
3. **Given** an unaffected valid transition, **When** execution or replay is
   compared at the same agreed profile, **Then** semantic results and canonical
   identities/evidence remain unchanged unless an approved version consequence
   explicitly requires a difference.
4. **Given** an old uncommitted allowed bundle, **When** new live commitment is
   attempted, **Then** historical matching is insufficient: a fresh corrected
   evaluation and exact-candidate authorization are required. Exact recovery of
   an already committed event remains a no-write recovery, not fresh validity.
5. **Given** supported older or command-profile Wire modules, **When** a fresh
   action is evaluated, **Then** the corrected validation profile applies to
   both; old Wire version cannot select the omitted checks.

### Edge Cases

- Several creates, updates and removals form one simultaneous child; references
  or constraints can depend on another changed or created entity.
- An unchanged row depends on absence of a newly created plain identity, rather
  than synthesized positive reference existence. These obligations are distinct.
- Transitive admitted entity dependencies and global query/aggregate obligations
  can be affected by small changes. Entity rules currently exclude queries and
  aggregates; this feature does not change that admission boundary. Unknown
  dependency means affected.
- False rules, validity evaluation errors, multiple invalid rows, postcondition
  failures and command failures require the agreed deterministic precedence.
- Changed, created and unchanged rows share one canonical entity-obligation order;
  their partition and backend/delta iteration order cannot determine the witness.
  An earlier false rule cannot be displaced by a later evaluation error.
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
- **FR-005**: The existing resulting-state checks MUST establish complete child
  validity after successful action postconditions, without a new observable
  validation phase or a second definition of validity. A false entity constraint
  produces `DENY` with `CONSTRAINT_VIOLATED`; a false entity/state invariant uses
  `DENY` with `INVARIANT_VIOLATED`. Reached evaluation errors retain their existing
  category. Postcondition failure retains priority and no invalid candidate may
  succeed or commit. Unrelated established action/command stages are not moved
  by this correction.
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
  be distinguished explicitly. The planning design selects new decision record
  `0.8` with validation profile `behavior.complete_resulting_state.v1` for all
  fresh supported ordinary actions; validated old records select their frozen
  original computation only for replay/recovery. Caller data and old Wire
  version MUST NOT select an unsafe fresh path. The full compatibility,
  evidence-identity and release/verifier consequences are in
  [the profile contract](contracts/profiles.md); no historical matching may
  authorize a new live commit or promote current validation materialization.
- **FR-011**: Existing immutable behavior documents, records, hashes and history
  MUST NOT be rewritten. Historical profiles MUST NOT silently acquire corrected
  refusal behavior. Any approved new evidence shape, semantic profile or public
  outcome consequence MUST be identified under FR-010 before implementation.
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
- **FR-015**: Resulting-state entity obligations MUST have one canonical semantic
  order independent of whether the transition touched, created or left an entity
  unchanged: canonical semantic type identity, then entity identity; within each
  entity, invariants before constraints; within each category, canonical semantic
  declaration identity. Existing canonical representations MUST be reused. A
  declaration name may be an ordering key only where it is part of semantic
  identity; display metadata, backend order and incidental Rust map order MUST
  NOT determine the outcome.
- **FR-016**: Full, optimized and replay evaluation under the same applicable
  profile MUST select the same canonical first failing or erroring obligation,
  error precedence and required semantic evidence. Omitting computation of an
  obligation proven true and unaffected MUST NOT alter this result. The normative
  decision semantics are complete child validity, not the optimizer's work list.
  There is no separate global ranking of evaluation errors versus `DENY`:
  whichever is reached first in the agreed semantic order determines the result.

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
  precedence, with zero unexplained differences at equivalent boundaries. Mixed
  false/error cases and backend/cache/affected-row permutations preserve the same
  canonical witness and required semantic evidence; postconditions retain priority.
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

- The user requested planning after clarification of existing checks and canonical
  ordering. Planning documents propose the design; they do not authorize code
  implementation, tagging or release.
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
- [decisions.md](decisions.md) records both accepted A answers and the explicit
  historical/version planning design. The evidence profile and verifier versions
  are proposals, not changes already made or additional answered clarifications.
  [Requirements review](checklists/requirements.md) retains outstanding joint
  review items; planning self-review does not complete independent approval.
