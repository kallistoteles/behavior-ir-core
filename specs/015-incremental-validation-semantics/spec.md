# Feature Specification: Verified Incremental Validation

**Feature Branch**: `015-incremental-validation-semantics`
**Created**: 2026-10-10
**Status**: Authorized implementation complete and verified locally; earlier prototype retained only as historical evidence. No commit or release publication.
**Input**: Optimize Core's internal validity checking while preserving observational
equivalence with the existing full validator. This feature adds no Behavior semantics.

**015 changes how Core establishes an already-defined semantic fact — validity —
not what validity means.**

## Clarifications

### Session 2026-10-10

- Q: Should a fixed tcup latency threshold define acceptance of 015? → A: The
  updated requirement makes exact semantic equivalence the acceptance criterion;
  performance is measured separately, with no universal constant-time or
  one-second promise. tcup's existing SC-007 remains its own release criterion.
- Q: Must the first delivery optimize every current operator? → A: Choose A,
  strengthened: every current operator must have full semantics and an exact
  reference derivative from day one, including value/error transitions. Only
  some require optimized implementations initially; each optimization must be
  established equivalent to its reference derivative. This earlier scope decision
  is superseded as a language-level requirement by the architectural clarification below.
- Q: Does 015 extend Behavior semantics or require delta evaluation in every
  conforming engine? → A: No. The full validator remains normative. Delta interfaces,
  operator inventories, dependency analysis and materializations are internal
  implementation/proof machinery. A conforming engine may always apply a transition
  and fully validate its result. Unproven optimizations use full reference evaluation;
  a general relational IVM runtime is outside this feature's scope. Reuse starts
  from established validity of a committed parent with exact relevant semantic
  version bindings. Unknown dependency means affected. Governance semantics and
  BehaviorHash/SchemaHash rules also remain unchanged.
- Q: Does equivalence include backend errors from reads eliminated by the
  optimization? → A: Choose A. Equivalence concerns semantic results and evidence
  for the same canonical state, behavior, inputs, context and required facts,
  not backend call traces or hypothetical failures of omitted calls. Every
  mandatory semantic, integrity, trust, snapshot, identity, concurrency and atomicity
  obligation remains required; a call may be omitted only when equivalent evidence
  discharges its obligation. Actually performed calls retain the existing error contract.

## User Scenarios & Testing

### User Story 1 - Unchanged validation results with less repeated work (Priority: P1)

A consumer applies inserts, updates or deletes to a committed state. When equivalence
preconditions are established, Core may reuse earlier validation work. The result
is exactly what full validation of the resulting state would obtain, including
semantic/evaluation failures. The consumer requires no knowledge of the optimization.

**Independent Test**: Compare semantic results and required semantic evidence
with the existing full validator for the same canonical inputs, with reuse enabled
and disabled. Check operational failures separately; backend call traces are not
the equivalence oracle.

**Acceptance Scenarios**:

1. Local updates and creations can avoid rechecking unchanged entities when the
   complete dependency closure proves their obligations unaffected.
2. Changed references and target membership are checked against the resulting
   state. Removals and simultaneous source/target changes preserve the existing
   refusal behavior, whether checked incrementally or by full evaluation.
3. Missing equivalence preconditions select full reference validation. Global,
   query-dependent, cross-entity and unknown dependencies continue to use full
   reference validation. Removals gain neither new semantics nor an unproven fast path.
   Fallback preserves existing validation/refusal phase boundaries; it may leave
   the child uncached for the next ordinary full state-validation operation.

### User Story 2 - Existing expressions retain their meaning (Priority: P1)

A model author continues to use the existing admitted expressions, derived values,
queries, aggregates and global rules. Full evaluation defines their meaning;
internal reuse neither restricts admission nor introduces an alternate language.

**Independent Test**: Compare optimized obligations with ordinary evaluation,
including captured values, nested derived scopes, errors and reference-only cases.

**Acceptance Scenarios**:

1. A rule is eligible for local reuse only when its complete transitive dependency
   closure is proven local. Unknown dependency means affected: an unresolved
   dependency is never evidence that an obligation can be skipped. Unknown or
   cross-entity dependencies use full evaluation.
2. Query membership, counts and uniqueness retain their existing semantics when
   recomputed. No signed-relation runtime or new aggregate algorithm is required.
3. Short-circuiting, empty aggregates, ordered numeric overflow and observable
   errors agree with full evaluation. A correct Boolean result with different
   error behavior is not equivalent.

### User Story 3 - Reconstructible materialization and atomic publication (Priority: P1)

Validation materializations accelerate execution without defining the truth of
state, becoming replay authority or adding a canonical `validated` state fact.

**Independent Test**: Rebuild from canonical state/history, discard materialized
views, reopen a store and inject commit failures; semantic results stay equal.

**Acceptance Scenarios**:

1. Exact behavior/schema/history bindings identify cached results. Missing or
   unverifiable entries cause full validation from canonical inputs with the
   same semantic answer. Any auxiliary index can be reconstructed from those inputs.
2. Candidate changes and view updates are staged together; only successful atomic
   commitment publishes the materialization for that exact child history.
3. Failed or uncertain commits cannot publish speculative child evidence.
4. Identity lifetime remains a historical transition obligation: a removed
   identity remains ever-used and cannot be recreated.
5. A fault in an actually performed mandatory backend operation retains its
   existing error behavior, even when validation is cached. It cannot be hidden
   or converted into an ordinary semantic denial.
6. An unavailable redundant read need not be attempted when exact bound evidence
   already discharges its obligation. No hypothetical I/O error is fabricated.

### User Story 4 - Representative workload evidence (Priority: P2)

Consumers can distinguish semantic-work improvements from transport, query output
and record-format costs.

**Independent Test**: Report warm-read, update/read and create/read sequences on
both a controlled model and the actual tcup model around 10,000 records.

**Acceptance Scenarios**:

1. Both strategies use the same state, behavior, deltas and consumer operations.
2. Report writes and immediately following reads, raw samples and provenance;
   do not infer steady-state performance from repeated warm reads alone.
3. Report large affected closures honestly; bulk APIs remain a separate proposal.

### Edge Cases

Simultaneous source/target changes; identity reuse after deletion; references
between new rows; empty queries; aggregate changes and deletion of an extremum
under reference evaluation; captured-value changes; nested derived parameter
aliases; missing materializations; first reachable errors; suppressed errors;
numeric prefix overflow; schema/semantic generation change; no-op history changes;
stale CAS; backend failures and lost acknowledgment; faults in performed mandatory
operations versus faults in eliminated redundant reads; contract-breaking backend
data outside the required reads versus violations of mandatory integrity checks.

## Requirements

### Functional Requirements

- **FR-001**: Existing full semantic validation remains the normative definition
  of validity, invalidity and evaluation failures, including decoding, identity,
  entity constraints, references and module obligations. 015 MUST NOT redefine them.
- **FR-002**: Whenever the incremental path is used,
  `IncrementalValidate(S, dS, M) ≡ FullValidate(apply(S, dS), M)` MUST hold.
  More generally, for the same canonical semantic state, behavior/schema version,
  invocation inputs, context and required facts, optimized and reference execution
  MUST produce the same semantic result and required semantic evidence: ALLOW/DENY,
  evaluation failures, changeset, command intents, resulting validity, observed
  semantic facts where contracted, and externally defined record/hash identities.
  Semantic diagnostics and their specified ordering are included. Backend call
  counts/order, cache misses and hypothetical errors from omitted calls are excluded.
- **FR-003**: Reuse requires established validity of a committed parent, bound to
  its exact canonical store/history/state and relevant semantic version: state/data
  version, schema and admitted Behavior/validation semantics. Every omitted
  obligation MUST be proven unaffected. Missing, unknown or unproven conditions
  MUST select the full reference evaluator for the uncovered obligations; an
  unbound parent requires full validation.
  Fallback MUST preserve the existing operation/refusal boundaries rather than
  add a new pre-commit rejection in cases outside the optimized theorem.
  Operations may be eliminated; proof obligations may not. Omitting an operation
  that establishes a mandatory obligation requires equivalent evidence for that
  obligation, not an assumption that the head, schema or history probably still matches.
- **FR-004**: Preserve the existing behavior of inserts, deletes and updates. No
  legal transition becomes unsupported because it lacks an optimization. Identity
  freshness is checked against historical ever-used facts, not current absence.
- **FR-005**: Any dependency/locality analysis MUST follow the complete transitive
  closure in admitted IR, including derived definitions and query captures.
  Unknown dependency means affected. An unknown dependency MUST be treated as
  potentially affected and checked through full reference evaluation, never as
  proof of irrelevance. Syntactic locality alone is insufficient. Global, query
  and cross-entity dependencies retain full reference validation in 015.
  Do not introduce a second rule language.
- **FR-006**: Each selected optimization MUST have a stated equivalence argument
  against the existing full evaluator, supported by differential/property tests.
  Proof scope and assumptions MUST be recorded; tests and external IVM theorems
  are not machine-checked proofs of Behavior's implementation.
- **FR-007**: Preserve lazy evaluation, canonical ordering, exact bounded numeric
  behavior, optional values, semantic error activation and existing semantic diagnostics.
- **FR-008**: Materializations bind exact store/history/state, schema and admitted
  semantics; they are reconstructible cache/index state and cannot become canonical
  authority. Their absence MUST permit full validation with the same semantic result.
- **FR-009**: Stage candidate materialization privately; publish only after Applied
  for the exact child history. Refusal/error/uncertain outcome publishes no child.
- **FR-010**: Keep request input, authorization, historical freshness, candidate
  rederivation, CAS, canonical records and replay independently enforced. All
  existing mandatory store/history-position, schema, resulting-state reference,
  integrity, trust, consistency, concurrency and atomic-commit obligations remain
  required. Validation reuse alone is not evidence that these distinct obligations hold.
- **FR-011**: Preserve feature 014's contract and evidence unchanged. 015 MUST NOT
  change Wire IR, Behavior syntax, admission semantics, BehaviorHash/SchemaHash
  rules, schema identity, public semantic APIs, verification results, replay or
  governance semantics, canonical record formats or the Backend contract.
  Bindings require no new semantic capability or delta knowledge. Bulk APIs,
  publication and ecosystem dependency overrides are separate.
- **FR-012**: Keep the operator inventory and generic reference derivative
  `D_f(x, dx) = diff(f(x), f(apply(x, dx)))` as internal correctness/test models,
  including all Value/Value, Value/Error, Error/Value and Error/Error transitions.
  Record optimized and full-reference cases and their proof/test status. This
  does not require runtime delta nodes for every operator, change future admission
  rules or require any conforming Core implementation to perform delta evaluation.
- **FR-013**: Measure all three workload series with exact provenance. Preserve
  tcup's SC-007 failure until its canonical published dependency passes; do not
  claim that this feature guarantees arbitrary request latency.
- **FR-014**: Every backend operation actually performed MUST preserve the existing
  backend error contract. Operational/infrastructure failures are distinct from
  semantic/evaluation outcomes for the equivalence argument; this conceptual
  distinction MUST NOT introduce new public result types or change existing errors.
  No error from a semantically unnecessary omitted operation must be reproduced.
- **FR-015**: The equivalence argument assumes the existing valid Backend contract.
  Optimizations MUST preserve all mandatory conformance/integrity obligations.
  They need not add extra reads solely to detect arbitrary contract violations in
  data unnecessary to the operation; this does not authorize skipping required checks.

### Key Entities

- Canonical inputs: existing state, history, schema and admitted behavior; unchanged.
- Candidate state: internal view of the result of the existing transition changeset.
- Cached validation result: disposable evidence bound to one exact committed
  snapshot and its relevant semantic versions; a candidate is never its authority.
- Dependency closure: internal analysis used to justify omitted checks.
- Reference derivative/witness: internal mathematical model for comparing results;
  no new Wire IR node, serialized certificate or semantic state fact.
- Semantic observation: contracted result/evidence over canonical inputs, distinct
  from operational backend outcomes and execution traces; no new API representation.

## Success Criteria

### Measurable Outcomes

- **SC-001**: The internal inventory covers current operators and identifies their
  existing full semantics and optimization/proof/test status. Each selected
  optimization has an explicit equivalence argument; reference-only cases remain usable.
- **SC-002**: Differential/property tests compare optimized validation with the
  full evaluator's semantic results/evidence on valid and invalid candidates,
  value/evaluation-error transitions and dependency closures. Unproven cases
  exercise the full reference path. Unknown dependencies are treated as affected
  and never enable skipping. Backend access traces are not compared for equality.
- **SC-003**: Store sequences preserve decisions, refusals, canonical history,
  hashes and replay under rebuilds, removals and commit failure injection.
  Fault scenarios distinguish omitted redundant reads from performed mandatory
  operations: redundant-read elimination preserves the semantic answer, actual
  backend failures retain existing behavior, and failed/uncertain commits publish
  no speculative child validation evidence.
- **SC-004**: Proven local update/create workloads demonstrate that unchanged
  entity validation and validation-related full-universe enumeration are avoided
  on eligible warm operations, using counters scoped to validity checking.
  Full-universe enumeration here means traversing all live keys/rows to reconstruct
  validation facts or check state validity. Report total backend reads separately;
  mandatory record/replay-universe, integrity, query and other contract-required
  reads are not eliminated by this criterion. Initial cold validation is measured
  separately. Queries, globals and large affected closures may still require
  whole-state work.
- **SC-005**: Warm-read, update/read and create/read measurements distinguish
  validation reuse, full reconstruction and inherent consumer costs. A benchmark
  MUST say whether it disables candidate-validation optimization or only rebuilds
  the parent; the latter is not an entirely full-validation comparator.
- **SC-006**: Existing conformance, hashes, schema identities, admission/refusal,
  verification, public API, replay and governance expectations remain unchanged.
  Cache removal or choosing full validation affects work performed, not semantic results for
  the same canonical inputs. Operational errors are governed separately by FR-014.

## Assumptions

Existing admitted deterministic semantics, immutable consistent historical
backend snapshots and atomic storage of the existing supplied changesets are
assumed. Schema/semantic changes invalidate cached validation. Runtime placement,
data structures and selected algorithms belong to later implementation planning.
Equivalence is over canonical semantic inputs under the valid Backend contract;
it does not require equal I/O availability or identical operational traces.
All existing mandatory trust/integrity checks remain within the contract.
A complete relational IVM/query/aggregate runtime, new external DBSP/Feldera
dependency, new error algebra in the language and generalized recursion are
outside 015. IVM/DBSP mathematics may justify internal algorithms without becoming
a language requirement. Security audit and release compatibility remain separate.
