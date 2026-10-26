# Feature Specification: Scalable Validation with Global Rules

**Feature Branch**: `029-incremental-global-validation` in the separate Core029 worktree

**Created**: 2026-10-25

**Status**: Implemented — all 51 tasks, required gates and frozen-profile acceptance passed; see [evidence](evidence/README.md).

**Input**: User description: "008" — continue the reproduced Gap 008 investigation and specify a sound remedy for unnecessary full-state validation as live entity populations grow.

**Repository / baseline**: `kallistoteles/behavior-ir-core`; Core 0.15.0,
commit `6b93898a9375113f7a8946f23ab5535319b6f5d6`. Consumer observations use
Behavior 0.14.0. This extends the justified coverage of existing Core validation;
it introduces no new Behavior semantics.

## Clarifications

### Session 2026-10-25

- Q: Must Core 029 avoid full revalidation for creations that affect a global invariant, in addition to unaffected updates? → A: Yes (A). Require both unaffected updates and at least one nonconstant global pattern affected by creation, equivalent valid/invalid outcomes, and measured improvement across repeated creations growing the live state over the complete execution cycle; necessary output-size costs remain separately accounted for.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Keep local changes local despite global rules (Priority: P1)

An application author declares global correctness rules and repeatedly creates entities in a
growing state, as well as updating existing entities. Both changes that leave an invariant
unaffected and at least one meaningful creation pattern that changes invariant-relevant data
must establish validity without revalidating every unchanged entity. Declaring a global rule
must not automatically defeat every such optimization.

**Why this priority**: A reproduced constant global rule causes all N live entities to be
enumerated again after a commit. The comparable module without the global rule does not.

**Independent Test**: Exercise unaffected local updates and an actual repeated creation workload
that grows a Store while enforcing a nonconstant global rule. Compare complete evaluation/commit
cycles and subsequent validation against reference execution as the live population grows,
including valid and invalid creation controls and work outside the validation function.

**Acceptance Scenarios**:

1. **Given** established validity and a global rule that is always true, **When** a local update
   commits and the next action is evaluated, **Then** unrelated live entities are not revisited
   merely to re-establish unchanged validity, and the semantic results match reference execution.
2. **Given** a nonconstant global property unaffected by an update to an unrelated field,
   **When** that update commits, **Then** the declared optimized pattern avoids unrelated-state
   validation while preserving the property and the reference result.
3. **Given** the selected nonconstant global pattern and a creation that changes data on which
   its validity depends, **When** the eligible transition is processed, **Then** the new validity
   is established without revalidating the entire unchanged state, with all relevant checks retained.
4. **Given** valid and invalid creation controls at the selected rule's boundary, **When** they
   are attempted, **Then** reference-equivalent acceptance/refusal and evaluation errors occur.
   For a maximum-cardinality limit of 1,000, creation of entity 1,000 succeeds and creation of
   entity 1,001 is refused without committing an invalid state.

---

### User Story 2 - Preserve the complete meaning of execution (Priority: P1)

A maintainer needs confidence that a faster validity check accepts and refuses exactly the
same operations, with the same semantic errors and evidence, as authoritative reference execution.
The guarantee must apply to arbitrary finite states under stated assumptions, not only examples.

**Why this priority**: Skipping unchanged rows without a complete dependency and equivalence
argument can miss a global violation or alter the first observable failure.

**Independent Test**: Review the general correctness argument and compare reference and optimized
execution on valid, invalid and adversarial inputs with independently stated expected outcomes.

**Acceptance Scenarios**:

1. **Given** identical inputs and applicable state/backend contracts, **When** reference and
   optimized execution run, **Then** decisions, refusals, semantic diagnostics and their normative
   order, changesets, commands and canonical history evidence agree.
2. **Given** multiple relevant failures, partial expressions or simultaneous effects, **When**
   validation runs, **Then** the reference's required evaluation and failure semantics are retained.
3. **Given** incomplete dependency knowledge or an unestablished premise, **When** an optimization
   is considered, **Then** it falls back to reference validation rather than assuming the premise.

---

### User Story 3 - Reuse validity only at the correct state boundary (Priority: P1)

A Store operator needs reused validity to belong to the exact state, behavior and schema being
processed, including after conflicts, reopen, migration and uncertain commit acknowledgement.

**Why this priority**: A correct local argument for one state cannot authorize a different head
or a transition evaluated under another module.

**Independent Test**: Exercise changed heads, successful and conflicting commits, reopening,
module/schema changes and interrupted operations against the reference result and replay.

**Acceptance Scenarios**:

1. **Given** validity established for one exact parent, **When** its transition commits, **Then**
   validity can transfer only to the justified exact committed child; a conflict cannot promote it.
2. **Given** stale, absent or incompatible validity evidence, **When** the Store reopens or its
   context changes, **Then** required validation occurs before that evidence can be reused.
3. **Given** a lost acknowledgement or failure around a commit boundary, **When** the host
   recovers through existing protocols, **Then** state, history and reuse authority remain coherent;
   an operational error is not assumed to mean rollback.

---

### User Story 4 - Understand capacity and remaining fallback costs (Priority: P2)

An author needs reproducible measurements showing which growing workloads improved and which
still require global work. A maintainer needs to distinguish an actual remedy from work moved
between evaluation, commit, preparation or later requests.

**Why this priority**: The existing Backend-call counts establish a mechanism, not complete
transaction latency or the bottleneck of a private application.

**Independent Test**: Run a predeclared neutral scaling corpus including repeated creations on a
growing live state, record whole-cycle and component costs, and compare cost growth against the
baseline. Publish supported patterns, resource conditions and remaining full-state operations.

**Acceptance Scenarios**:

1. **Given** varying live population, history, changed entities, dependencies and rule complexity,
   **When** capacity is measured, **Then** their effects are separated and material interactions
   are reported without selecting only passing observations.
2. **Given** a partial speedup or a full-state operation elsewhere, **When** readiness is assessed,
   **Then** moving equivalent avoidable work cannot establish the required improvement; genuinely
   necessary output-size work and remaining limits are identified, justified and measured separately.
3. **Given** repeated real creations increasing the live population, **When** complete-path costs
   are measured across the frozen growth profile, **Then** the supported case demonstrates material
   improvement under the predeclared acceptance criterion, not merely a faster isolated function
   or a single successful operation.

### Edge Cases

- Empty populations, the initial validated seed, same-head repeated evaluation, and the first
  operation after reopening or invalidating reusable evidence.
- A constant global rule versus a genuine state-dependent global rule; a literal-only exception
  is insufficient evidence of broader coverage.
- An unaffected invariant with a growing unrelated population versus creation that changes
  invariant-relevant data. A valid creation may preserve the Boolean result while still requiring
  new reasoning; later creation can cross the validity boundary. Not every global predicate admits
  bounded local work.
- Creation/removal changing query membership, field updates changing query captures or aggregates,
  surviving references, aliases and simultaneous effects.
- Lazy conditions, missing facts, optional values, partial expressions, checked arithmetic and
  multiple failures whose activation or normative order matters.
- Multiple rules or module-generated actions: every admitted action and applicable obligation
  remains covered, irrespective of how it was authored.
- A conflict, failed publication or ambiguous acknowledgement after preparing reusable evidence.
- Module, schema or validation-profile changes; historical records under earlier contracts.
- Replacing a Store instance or reusing a backend handle without valid continuity evidence.
- Full work hidden in preparation, commit, derived-state rebuilding, in-memory traversals,
  later validation or a larger canonical output.

## Requirements *(mandatory)*

### Established Basis and Scope

Neutral Core 0.15.0 reproductions used an ordinary entity, a fixed local assignment and either
no global invariant, a literal global `True`, or a global count condition. At N = 1, 16, 128 and
512, the two global cases enumerated N members on subsequent new heads; the local control
and same-head repeat controls enumerated zero. At fixed N=16, warming 32 commits retained the
same enumeration counts. Successive creations produced 17, 18 and 19 returned members in the
global cases. Short data/behavior replay checks passed across 186 transitions in 15 cases.

These measurements counted selected public Backend calls around evaluation, not all validation
work or whole-cycle latency. They do not establish a private application's dominant cost or
successful sustained recovery. Local source evidence is in the ecosystem investigation
`docs/research/core-0.15.0-gaps/` under `/home/kalle/repos/behaviour-ir`; that path is research
provenance, not a required build dependency or a published upstream artifact.

Core's existing feature 015 already permits conservative full-reference fallback for globals
and queries. This feature addresses its practical coverage limitation; no existing soundness
violation is asserted. The remedy must follow from demonstrated costs and justified semantics,
without requiring a particular representation, dependency algorithm, cache structure or proof tool.

### Functional Requirements

- **FR-001**: Establish and retain a reproducible baseline for the reported growth, including
  constant-rule, state-dependent-rule, no-global-rule and same-head controls. Distinguish the
  reproduced neutral mechanism from unverified application-specific claims.
- **FR-002**: Identify the limiting work before selecting a remedy. Separate validation,
  dependency/rule evaluation, backend access, history handling and normative output construction;
  record which costs are mathematically required and which are implementation overhead.
- **FR-003**: Avoid revisiting unrelated live entities solely to re-establish already established
  validity for the constant-rule case and a declared nonconstant global pattern unaffected by a
  local change. Every selected pattern must have justified eligibility and complete obligations.
- **FR-004**: Support at least one nonconstant global property for both an unaffected-field update
  and a creation that genuinely changes invariant-relevant data, without revalidating the entire
  unchanged state for each eligible transition. Exercise valid and invalid creations with the same
  outcomes as full reference validation. Repeated actual creation must grow the live state; a
  constant-rule exception or unaffected-update optimization alone cannot complete this feature.
  Planning selects neutral examples within existing supported semantics. Fallback remains available
  outside this declared optimized domain, but cannot satisfy its mandatory optimized cases.
- **FR-005**: Preserve authoritative reference execution for all existing supported programs.
  Unsupported optimization patterns remain executable through fallback, not newly rejected or
  stripped of global rules to improve benchmarks.
- **FR-006**: Establish a general observational-equivalence and validity-preservation argument
  for every optimization under explicit enforced premises and backend contracts. It must cover
  arbitrary finite states in the declared domain. Tests alone are not a universal proof.
- **FR-007**: Preserve decisions, refusals, semantic errors and their normative activation/order,
  applicable validation phases, changesets, command intents, canonical evidence and history/replay
  results. Stronger incoming assumptions or new pre-commit refusals cannot silently alter behavior.
- **FR-008**: Derive coverage against the complete admitted module and the complete effects of
  each transition. Include applicable entity/global rules, references, queries, creations,
  removals and simultaneous changes. Unknown dependency means affected.
- **FR-009**: Reduced validation must have a justified correspondence to those exact obligations.
  Retain the authoritative full-validation path. Missing premises or uncertain eligibility require
  fallback, never a guessed-valid result or an assumption of a later check's success.
- **FR-010**: Bind reusable validity to the exact parent/history, behavior, schema and validation
  context. Reuse across a changed context requires established compatibility or renewed validation.
  Unverified historical markers and matching entity counts alone confer no authority.
- **FR-011**: Promote validity only across a justified successfully committed transition and its
  exact resulting head. Preserve conflict, idempotency, ordinary retry, lost-acknowledgement recovery
  and reopen behavior; failed or uncertain commits cannot authorize a speculative child.
- **FR-012**: Keep genesis, migration, backend integrity and historical-validation obligations
  explicit. Existing validation at those boundaries must not disappear through ordinary-transition
  reuse. Do not treat the absence of reusable evidence as proof of an invalid state.
- **FR-013**: State the trusted semantic/backend and implementation-correspondence boundaries.
  Distinguish reviewed mathematical arguments, any machine-checked claims, tests and measurements.
  No end-to-end formal verification claim is implied by external theorems or passing scenarios.
- **FR-014**: Assess useful existing verified results and existing Core reasoning before adding
  custom proof machinery. A reused result must discharge the actual semantic premises, including
  error behavior; its algorithm name, asymptotic bound or executable output is insufficient.
- **FR-015**: Measure the entire evaluation/commit/next-evaluation cycle during a repeatedly
  executed creation workload with a growing live state, as well as unaffected updates. Include
  startup, reopening, preparation, backend calls and in-memory work; identify necessary output costs
  separately. An isolated validation speedup is insufficient if equivalent avoidable full-state work
  remains elsewhere in the complete path. No constant total commit cost is required when normative
  output size or other justified necessary work grows; that cost must be measured and distinguished
  from repeated validation of unchanged entities.
- **FR-016**: Freeze a justified reference environment, workload corpus, repeats, quantitative
  cost/latency acceptance envelope and minimum growth-related improvement criterion against the
  baseline before final candidate evaluation. Include creation sequences increasing live population,
  fixed-population history controls, affected dependency size and rule/query complexity. Preserve
  failed attempts and make any profile revision explicit; no post hoc passing ceiling or acceptance
  based only on a single operation becoming faster.
- **FR-017**: Maintain deterministic semantic evidence independently of timing, diagnostics paths
  and operational counters. Preserve published artifacts, existing semantic identities, normative
  data formats, authenticated history and governance behavior. Ordinary replay must not require
  newly retained optimization artifacts or a new host-maintained business state.
- **FR-018**: Keep existing conforming backends usable under their current contracts. Optional
  acceleration must not introduce a new mandatory host obligation or public backend requirement
  without a separately justified compatibility decision.
- **FR-019**: Retain existing correctness, conformance, replay, determinism and release checks.
  Add differential valid/invalid/error controls, missing-premise controls and conflict/recovery
  tests for the selected optimized domain; optimized/full agreement needs independent expected
  outcomes to avoid two paths sharing an unnoticed defect.
- **FR-020**: Identify and measure remaining full-state operations, unsupported global dependencies,
  workload limits and fallback costs, alongside optimized patterns and whole-cycle growth results.
  Do not declare the feature complete while the supported creation case retains equivalent avoidable
  work proportional to the entire unchanged state on every relevant transition. No blanket promise
  of constant time for all global rules, unlimited scalability, private-application remediation or
  successful unexecuted endurance runs is allowed.

### Key Entities *(include if feature involves data)*

- **Admitted behavior**: the exact program and complete set of rules whose semantics govern a transition.
- **State and history anchor**: the exact committed state and provenance to which established validity applies.
- **Transition and affected dependencies**: all effects and semantic obligations that may change;
  exclusion from that set requires a justification.
- **Validity evidence**: derived authority for reuse under explicit premises; its representation
  is an implementation choice and it introduces no independent business truth.
- **Semantic observation**: the normative execution outcome and canonical evidence required by
  the applicable Core contracts, distinct from backend call traces or performance counters.
- **Evaluation profile**: fixed workload/environment conditions and acceptance budgets, separate
  from semantic truth and measured results.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: All selected correctness cases and existing required checks have zero unexplained
  semantic differences from the authoritative reference. Valid, invalid and ordered-error controls
  include independently specified expected outcomes; uncertainty never becomes acceptance.
- **SC-002**: For the constant rule and the declared unaffected nonconstant pattern, a fixed local
  change revisits zero unrelated entities solely for validity re-establishment throughout the
  complete steady-state cycle at N=1,16,128,512 and the larger frozen profile populations.
  Required output construction and genuine affected work are accounted for separately, not hidden.
- **SC-003**: At least one nonconstant global pattern supports creation affecting its validity
  without revalidating the entire unchanged state per eligible transition, and correctly accepts
  valid creations and refuses invalid ones with reference-equivalent errors. Boundary controls
  include creation 1,000 succeeding and 1,001 being refused for the maximum-cardinality example.
  No applicable action, effect or rule is omitted to meet this criterion or SC-002.
- **SC-004**: At least three sequential repeats of every accepted scaling case meet the
  predeclared whole-cycle budgets and growth-improvement criterion. The corpus includes actual
  repeated creation sequences growing one live state within each run, the four reproduced
  populations, at least two larger populations selected from intended use/baseline evidence,
  fixed-N history growth, growing affected sets and interactions. A collection of isolated
  operations against separately seeded states does not replace the growth sequences. Whole-path
  measurements demonstrate material improvement as live population grows; no universal complexity
  claim is inferred from timings.
- **SC-005**: All exact-state reuse, conflict, reopen, module/schema change, migration-boundary
  and uncertain-acknowledgement controls retain reference outcomes and coherent data/behavior
  replay. Previously valid historical records and semantic identities remain unchanged.
- **SC-006**: Every selected optimization has a reviewable general correctness argument, stated
  premises, complete dependency/obligation coverage and explicit remaining trust boundaries.
  Deliberately removing an essential premise cannot produce unjustified validity reuse.
- **SC-007**: The final assessment explains root causes, causal improvements, full-cycle cost
  growth, supported optimization domain and all remaining full-state operations/fallback limits.
  Their measured costs distinguish avoidable validation overhead from genuinely required output
  or dependency work. A moved scan, literal-only exception, unaffected-update-only remedy,
  disabled invariant or still-unresolved growth problem in the mandatory creation case cannot
  satisfy acceptance. This does not require total commit cost to be independent of result size.

## Assumptions

- Core 0.15.0 is the immutable comparison baseline, not an instruction to edit its published
  artifacts. Any eventual release/version decision follows existing Core policy after validation.
- The exact private application and its 30-minute workload are not available acceptance inputs.
  Neutral cases are sufficient for this feature; claimed endurance or recovery duration requires
  actual matching evidence and cannot be inherited from a shorter run.
- Existing Core semantics, full validation and the governing execution-equivalence principle
  remain authoritative. Backend call counts, internal traces and hypothetical failures of omitted
  calls are not semantic observations. Actually performed operations retain their error contracts;
  eliminating a semantic obligation still requires equivalent justified evidence.
- A global rule can legitimately require population-sized work outside the declared optimized
  domain. This does not waive the mandatory affected-creation case. Neither all global invariants
  nor total commit cost must become independent of live population; necessary output-size work
  remains legitimate when separately justified and measured. The goal is to enforce a real global
  property during state growth without revalidating all unchanged entities on every relevant change.
- Numeric latency/resource budgets and larger corpus sizes are planning/research deliverables
  based on controlled baselines, frozen before final evaluation. They are not user-methodology
  questions or an opportunity to relax budgets after observing a candidate.
- Gap 009 (SMT encoding of Ref-target removal), Gap 006 (`unique(Option)` verification), new
  query/aggregate language, new Safety Models, new governance and application redesign are out of
  scope. Existing runtime Ref integrity remains mandatory within the correctness tests.
- No new implementation stack, proof assistant, data structure, general framework, public
  semantic primitive, release publication or issue filing is selected or authorized by this spec.
