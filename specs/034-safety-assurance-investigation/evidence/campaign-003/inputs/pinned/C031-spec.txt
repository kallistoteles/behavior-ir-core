# Feature Specification: Scalable Execution and Evidence

**Feature Branch**: `031-scalable-execution-evidence`

**Created**: 2026-10-28

**Status**: Research complete — feasibility findings and unresolved implementation obligations recorded in [investigation.md](investigation.md) and [completion evidence](evidence/completion.json)

**Input**: Investigate whether ordinary transitions can cost primarily what their affected state, rules and required evidence demand, instead of repeatedly processing the complete live state and history. Prioritize avoidable evidence-processing work, then exact incremental validation, then a possible versioned evidence contract. Do not select an implementation architecture in advance.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Understand the complete cost of a transition (Priority: P1)

As an application operator, I want a reproducible explanation of how transition cost grows, so that I can distinguish necessary audit output from avoidable processing and make informed capacity decisions.

**Why this priority**: Feature 029 removes repeated full-state semantic validation for selected workloads, but its measured cycle still grows with state and evidence size. Optimizing another isolated validation function may leave the dominant cost unchanged.

**Independent Test**: Another maintainer can reproduce a neutral growing-creation campaign and attribute the complete cycle, including work deferred until the next evaluation.

**Acceptance Scenarios**:

1. **Given** eight consecutive creations starting with 8,192 live entities, **When** the baseline is measured, **Then** evaluation, commit, final next evaluation and complete-cycle costs are reported separately, with evidence bytes and scoped processing counts.
2. **Given** otherwise controlled workloads, **When** live population, history length, changed entities, query complexity and evidence size vary, **Then** their individual effects and relevant interactions are reported without conflating them.
3. **Given** repeated measurements, **When** results are summarized, **Then** raw repetitions, variability, failures, environment and instrumentation scope remain available; separate phase medians are not presented as an additive cycle measurement.

---

### User Story 2 - Identify safe improvements to existing evidence processing (Priority: P1)

As a Core maintainer, I want to know which construction, parsing, copying and hashing work can be avoided while preserving existing records, so that performance improvements retain current consumers' audit and replay guarantees.

**Why this priority**: This is the first investigation because it may reduce dominant costs without changing the evidence contract.

**Independent Test**: Each promising improvement has a complete-observation correspondence argument and a bounded differential experiment, or an explicit account of the untested feasibility gap.

**Acceptance Scenarios**:

1. **Given** a frozen reference case, **When** a candidate experiment exercises the same inputs, **Then** decisions, refusals, selected semantic errors, normative ordered traces, reads, commands, canonical records, identities, history and replay results agree exactly.
2. **Given** a shortcut whose applicability premises cannot be established, **When** it is assessed, **Then** it is ineligible for optimized execution and the ordinary reference route remains required.
3. **Given** an unchanged profile emitting B bytes, **When** a benefit is claimed, **Then** unavoidable output work is distinguished from redundant processing; no claim promises less than the work needed to emit those bytes.

---

### User Story 3 - Assess incremental validation beyond unfiltered counts (Priority: P2)

As an application author, I want filtered queries and aggregates assessed against established incremental algorithms, so that future optimizations can enforce meaningful global rules as my state grows.

**Why this priority**: Broader coverage needs a precise account of Core's values, errors and observations, rather than an aggregate equation alone.

**Independent Test**: An applicability comparison covers filtered counts, sums, existence and selected uniqueness constraints, with independently specified valid, invalid and error outcomes.

**Acceptance Scenarios**:

1. **Given** a filtered-count bound, **When** an entity is created, removed or moves into or out of the filter, **Then** the proposed reasoning establishes the same membership, count and refusal/error outcome as full evaluation, or explicitly identifies the case as unsupported by the proposal.
2. **Given** an established algorithm, **When** its theorem is assessed, **Then** its assumptions, available verified artifacts and mapping to Core are recorded separately from the correctness of a prospective Core implementation.
3. **Given** overflow, partial predicates, lazy branches or simultaneous effects, **When** applicability is analyzed, **Then** unsupported semantics cannot be hidden by comparing only the mathematical query result.

---

### User Story 4 - Decide whether smaller evidence preserves independent verification (Priority: P3)

As an auditor or replay consumer, I want compact-evidence proposals to explain how omitted observations are established, so that smaller records do not weaken independent verification.

**Why this priority**: Compact evidence may change the long-term cost model, but requires a new correctness and compatibility argument.

**Independent Test**: A feasibility assessment defines evidence meaning, required inputs and trust boundaries, and evaluates tampering, omission and unavailable-data cases against reference obligations.

**Acceptance Scenarios**:

1. **Given** a compact-evidence candidate, **When** it is evaluated, **Then** its interpretation and refinement argument cover complete observations, data replay, behavior replay and reference integrity; equal final state alone is insufficient.
2. **Given** a state commitment without further evidence, **When** query completeness, non-membership or absence of incoming references is claimed, **Then** the claim is rejected unless the required property is independently established.
3. **Given** altered, incomplete or unavailable supporting data, **When** verification is attempted or modeled, **Then** no successful verification or execution authority follows from an unestablished obligation.

---

### User Story 5 - Separate history and retention costs from live-state costs (Priority: P3)

As a host developer, I want to understand why a small command page or long-running workload remains expensive, so that history processing and live-state retention receive separate justified decisions.

**Why this priority**: A small response need not imply a small historical verification obligation, and logical completion does not establish that physical removal is safe.

**Independent Test**: Fixed-population history measurements and a neutral completed-work scenario separately characterize historical verification, recovery and retention constraints.

**Acceptance Scenarios**:

1. **Given** a one-record command page at increasing history lengths, **When** retrieval is measured, **Then** returned bytes and the historical interval validated are distinguished, with command order, multiplicity and occurrence identities preserved.
2. **Given** a commit that persisted but lost its acknowledgement, **When** recovery is examined, **Then** it is distinguished from an ordinary retry and preserves authoritative history and command occurrences.
3. **Given** completed work with surviving references or audit obligations, **When** bounded live-state alternatives are assessed, **Then** completion, physical removal and archival availability remain distinct; research introduces no new lifecycle semantics.

### Edge Cases

- Empty states/queries, zero-result filters and unchanged updates.
- Duplicate identities, aliases, simultaneous mutations, reused identities and stale deltas.
- Filter membership changes in both directions, multiple rules and dependencies on unchanged entities.
- Checked arithmetic overflow, invalid values, optional keys, partial expressions, lazy evaluation and ordered error selection.
- Concurrent writers, refused commits, equal state content at different positions and persisted-but-unacknowledged commits.
- Reopening, cold reconstruction, lost derived data, migrations and changes of module, schema or evidence policy.
- Corrupt records, stale indexes/checkpoints, missing historical inputs and unverified evidence.
- Command-only events, multiple commands per event and a small page over a long history.
- Operations whose required result or evidence genuinely grows with state size; irreducible work must remain visible.

## Requirements *(mandatory)*

### Functional Requirements

#### Research boundary and baseline

- **FR-001**: Deliver a research dossier answering all seven questions: dominant complete-path costs; necessary versus redundant work; independent scaling dimensions; established algorithm applicability; candidate correctness and exclusions; frozen-reference comparison including errors, concurrent writers and recovery; and the division between unchanged-format and versioned-contract proposals.
- **FR-002**: Pin baseline source, record profiles, dependencies, workload definitions and reference observations before candidate evaluation. Preserve historical fixtures and published artifacts. Reported 029 measurements are prior evidence to reproduce or explain, not new results of this investigation.
- **FR-003**: Permit measurement infrastructure and bounded experiments needed for feasibility assessment only. Production optimizations, new evidence formats, new authoritative stored structures, backend contract changes and lifecycle capabilities require subsequent explicit implementation scope. Research completion does not authorize shipping a prototype.

#### Cost and scaling evidence

- **FR-004**: Attribute evaluation, commit, final next evaluation, reopen/recovery and replay costs. Measure command-history retrieval separately. Include cold reconstruction and loss of derived data so work cannot move outside the reported path.
- **FR-005**: Measure live entities, history length, changed entities, query/rule complexity and evidence bytes as independent dimensions, each at at least three declared levels. Include eight creations starting at 8,192 entities and at least one interaction case. Record whole-cycle time, memory, output size and scoped counts of allocation/copying, parsing, hashing, traversal and rule work where measurable; identify unmeasured or overlapping counters explicitly.
- **FR-006**: Use neutral workloads plus a public, independently specified orchestration-style workload reflecting relevant dependency and retention patterns. Do not depend on private application code, unpublished reports or DeclarativeHost access. Record exact versions, hardware, limits, backend/durability conditions, cache state, boundaries, all repetitions and uncertainty. Retain at least three timing repetitions for each primary scaling point and distinguish diagnostic runs from acceptance measurements.
- **FR-007**: Establish a cost model separating affected semantic work, unavoidable result/evidence work, redundant processing, historical work and derived-data maintenance/rebuild costs. Explain the lower bound Ω(B) for emitting B required bytes. That bound does not establish that every current copy, parse or hash is necessary.

#### Correctness and established algorithms

- **FR-008**: For unchanged profiles, require complete observational equivalence: Obs_optimized(M,S,I,C) = Obs_reference(M,S,I,C). Observations include decisions, refusals, selected semantic errors, normative ordered traces, reads, canonical evidence bytes, changes, commands, state/version/history identities and applicable replay results under the same established backend contracts.
- **FR-009**: Treat backend-call and diagnostic counts as measurements, not normative observations. Preserve error contracts for operations actually performed and the constitution's execution-equivalence boundary. Normative validation phases cannot be weakened; verification overapproximation is not an execution contract.
- **FR-010**: For each promising candidate, provide a mathematical argument or relevant machine-checked theorem, premises, construct-to-Core correspondence, implementation trust assumptions and supported/unsupported cases. Distinguish machine-checked results, written arguments, tests and host/backend assumptions. Unknown dependency coverage requires reference execution, never assumed irrelevance.
- **FR-011**: Evaluate established incremental view maintenance, especially DBSP, and relevant dependency-tracking approaches including Differential Dataflow and Adapton. Identify primary sources and exact versions of proof artifacts considered, their actual verified scope and limitations. A published theorem or reused implementation does not automatically establish Core correspondence. No engine, proof representation, library or dependency is prescribed.
- **FR-012**: Assess filtered counts, sums, existence and selected uniqueness constraints, including complete typed deltas, identity multiplicity, captures, reference validity, arithmetic/definedness, lazy behavior, observation order and simultaneous effects. A filtered-count update must justify additions, removals and membership changes, including invalid outcomes. Preserve current optional-value semantics. A narrow viable fragment is an acceptable finding; general incrementalization is not assumed.
- **FR-013**: Compare candidate experiments with a frozen full-reference corpus containing positive, negative, semantic-error, conflicting-writer and lost-acknowledgement cases. Include omission/staleness and premise-mutation controls for each exercised shortcut. Preserve unsuccessful experiments and uncertainty. Passing finite tests does not prove universal correctness.

#### Future evidence, history and retention

- **FR-014**: Assess compact evidence as a separate prospective versioned contract. Define Interpret(E_new) and Interpret(E_reference) over the same semantic obligations and identify what establishes their equivalence. Cover exact subject/history binding, complete relevant observations, data/behavior/reference replay, initial reconstruction, availability, migration/profile boundaries and governance/evidence-policy authority. Undefined interpretation or unresolved completeness is a blocker, not presumed feasibility.
- **FR-015**: Do not treat current state identity as an automatic membership, non-membership, query-completeness or reference-absence proof. Identify what authenticated structures, reconstructible history or independently checked information would be needed, including update, verification and storage costs. Unverified caches/checkpoints cannot acquire semantic or authorization authority merely by being hashed.
- **FR-016**: Assess historical verification with independently growing history, preserving exact pinned history, command occurrence identities, order, multiplicity and pagination behavior. Reuse/checkpoint proposals must state validation, invalidation, corruption and cold-recovery obligations and their actual trust boundary. Returning one record does not establish that verifying only that record is sufficient.
- **FR-017**: Assess bounded live-state lifecycle only for feasibility and constraints: completion, removal, surviving references, permanent identities, audit retention and replay reconstruction. Model changes, archival semantics and physical-execution guarantees are outside implementation scope.

#### Decision and compatibility

- **FR-018**: Classify every candidate as supported by current evidence, rejected with a reason, or unresolved with a concrete missing premise/experiment. Record expected benefit, measured or unmeasured evidence, complexity, trust impact, compatibility burden and proposed layer. Prioritize evidence-processing overhead, then incremental queries, then compact evidence; history and lifecycle findings inform separate decisions.
- **FR-019**: Distinguish soundness, supported semantic coverage and measured practical capacity. Preserve unsupported cases through authoritative reference paths in experiments. Resource exhaustion, failed premises, unsupported constructs and observed mismatches remain different outcomes. No universal delta-proportional or constant-cost guarantee is required.
- **FR-020**: Deliver a recommendation identifying justified follow-up work and non-goals, or a justified no-go result. Keep Core runtime semantics, existing record bytes/profiles, published identities, persistence, replay and governance unchanged during research. Do not expand Safety Models, implement unrelated verifier corrections or publish a release.

### Key Entities *(include if feature involves data)*

- **Research case**: Public workload with exact module, initial state, mutations, history, expected observations and varied dimensions.
- **Reference corpus**: Frozen complete observations under identified source/profiles, with independent expectations and negative controls.
- **Measurement record**: Phase/cycle timings, resources, scoped work counts, evidence size, environment and repetition identity.
- **Optimization candidate**: Proposed reduction in work with applicability, correctness/correspondence evidence, potential benefit and blockers.
- **Evidence contract assessment**: Proposed interpretation, required verification inputs, completeness/authority premises, compatibility and availability costs.
- **Research decision**: Traceable candidate disposition, evidence, limitations and required follow-up authorization.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: All seven research questions in FR-001 have a traceable answer with evidence, or an explicit unresolved finding identifying exactly what prevents a conclusion. None is silently dropped.
- **SC-002**: Another maintainer can rerun the growing-creation case and primary scaling series from retained inputs/instructions. Each of the five independent dimensions has at least three measured levels; primary points retain at least three timing repetitions. Deviations from prior measurements are explained without requiring identical elapsed times.
- **SC-003**: The cost model covers every path in FR-004, distinguishes required output from redundant work and states the scope/uncertainty of quantitative claims. Isolated validation timing or work moved into another phase cannot substantiate an improvement.
- **SC-004**: Every promising unchanged-profile candidate has an explicit complete-observation argument and applicability boundary. Every executed differential case has zero unexplained normative mismatches; a mismatch blocks recommendation as semantics-preserving. Each exercised shortcut has a negative or mutation control detecting a violated premise.
- **SC-005**: Every assessed algorithm has a source, premises, verified-scope assessment and Core correspondence assessment. Every future evidence/history/retention proposal states what is preserved, what must change and what remains unestablished. No historical record or published artifact is rewritten to obtain a favorable result.
- **SC-006**: The final dossier gives a separate disposition for all five investigation areas, ranks justified next steps and identifies trust, compatibility and capacity limits. A sound no-go or bounded-feasibility result satisfies research completion; shipping an optimization or meeting an invented speedup target does not.

## Assumptions

- This initiative belongs to `kallistoteles/behavior-ir-core`. It starts from Core 0.16.0, released at `63a8c164523275e06ac1d7dc5330db4a899c9d99`; the specification worktree starts at main merge `6e4602b04884edafb1123977fc22f7d88189fd06`. Campaigns must pin their exact subject revisions.
- The [Core 029 evaluation report](../029-incremental-global-validation/evaluation-report.md), production source `919429b3f1bd7185a51c7c5fa9cb24c474229192`, reports 3,712.848 ms evaluation, 14,638.912 ms commit and 19,106.547 ms complete cycle for eight creations from 8,192 entities. These are separate medians; the cycle includes a final evaluation. Its 175,992,671 JSON-byte counter covers named hashing sites, not all hash work or unique output bytes. These are historical observations, not reproduced Feature 031 findings or performance guarantees.
- [Core 029 research](../029-incremental-global-validation/research.md) and [correctness](../029-incremental-global-validation/correctness.md), the [persistence contract](../../docs/persistence.md) and [command-performance observations](../../docs/command-performance.md) are starting evidence. Older command timings overlapped compilation and are diagnostic observations, not a stable new benchmark baseline.
- Core semantics and constitution 1.1.0 govern equivalence. No efficient incremental route for every admitted program is assumed, and stronger host/backend assumptions must be identified explicitly.
- DBSP is a priority research foundation, not a selected architecture. Primary starting references are the [DBSP paper](https://www.vldb.org/pvldb/vol16/p1601-budiu.pdf), its [formalization](https://github.com/tchajed/database-stream-processing-theory), [Differential Dataflow](https://www.microsoft.com/en-us/research/publication/differential-dataflow/) and the [Adapton project](https://adapton.org/). Actual theorem coverage and Core correspondence remain research obligations.
- Private application access and unavailable shared conversations are unnecessary. Public neutral fixtures define their own expected semantics.
- Production implementation and release are separate decisions. Later evidence, model or authoritative-storage changes require explicitly reviewed contracts and implementation scope.
