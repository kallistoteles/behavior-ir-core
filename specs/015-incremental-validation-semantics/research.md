# Research: Verified Incremental Validation

**Status**: Phase 0 planning decisions for the clarified [specification](spec.md).
Read-only research inspected evaluator/admission, Store lifecycle/governance,
existing tests and benchmark provenance. No implementation was performed.
The earlier theoretical/prototype proposal is preserved in
[prototype/design-before-plan.json](prototype/design-before-plan.json).

## Decision 1: Reference semantics and observation boundary

**Decision**: Ordinary validation/evaluation define semantic results. Compare the
same canonical state, behavior/profile/schema, inputs, context and required facts.
Include evaluation failures, changesets, command intents, required semantic
observations, records and hash identities. Exclude backend call traces, cache
misses and hypothetical I/O failures of omitted reads.

**Rationale**: Avoid making storage execution strategy part of Behavior meaning.
Operations may be eliminated; proof obligations may not. Preserve every existing
mandatory check and every actual operation's existing error route.

**Alternatives considered**: Exact backend-trace parity would prevent eliminating
redundant reads. A new public semantic/operational result algebra would change the
API and is unnecessary. Direct Store errors and fact-provider failures currently
follow different existing routes; preserve them rather than normalize all failures
into one new BACKEND_ERROR or DENY result.

**Sources**: [persistence](../../docs/persistence.md),
[governance](../../docs/governance.md),
[StoreFacts and backend_err](../../crates/behavior-store/src/store.rs),
[ordinary evaluator](../../crates/behavior-core/src/eval.rs).

## Decision 2: Small private runtime, existing evaluator

**Decision**: Place dispatch, dependency analysis, candidate overlay and pending
carry-forward under private Store modules. Reuse the existing public-to-internal-
crates `check_behavior_snapshot(module, rows, facts)`; add no runtime delta API.

**Rationale**: The validator orders rows and their diagnostics and checks global
rules. When the guard establishes no globals, supplying complete changed/created
rows and coherent child facts evaluates exactly those obligations with ordinary
semantics. Store already owns snapshot validation and atomic publication.

**Alternatives considered**: The prototype's core ValidationPlan/RowSource and
runtime DeltaOperator broaden internal interfaces and add mixed orchestration.
A generic relational runtime or DBSP dependency adds complexity without being
needed for the local workload. Generic derivatives remain private test models.

**Sources**: [full validator](../../crates/behavior-core/src/eval.rs),
[014 classifier](../../crates/behavior-store/src/store/local_validation.rs),
[Store](../../crates/behavior-store/src/store.rs).

## Decision 3: Conservative first-delivery guard

**Decision**: Optimize updates/creates only, with a fully valid committed parent,
exact version bindings, no removals/migration/schema change, no module invariants,
and proven locality of every ordinary entity validation obligation. Synthesized
Ref constraints use their specific membership argument. Explicit fact/query or
cross-entity reads and unknown dependencies make the module ineligible.

**Rationale**: Unknown dependency means affected. A whole-module guard is smaller
and easier to reason about than per-type mixed plans. Unused derived definitions
are not obligation roots and do not independently disqualify an otherwise local
model. No-removal membership monotonicity preserves unchanged references.

**Alternatives considered**: Optimized removals require incoming-source affected
sets and more proofs; defer them. Mixed plans and individually proven constant
global rules may be useful later, but are not needed in the first delivery.

**Sources**: [validation rules](../../crates/behavior-core/src/eval.rs),
[synthesized Ref rules and dependency admission](../../crates/behavior-core/src/admit/typecheck.rs),
[prototype classifier](prototype/source/crates/behavior-core/src/validation.rs).

## Decision 4: Match transitive resolution and binding

**Decision**: Analyze obligation roots and recursively resolved derived bodies.
Match the ordinary evaluator's profile-sensitive name/hash resolution and argument
binding. Whitelist pure scalar operations whose complete operand closure is local;
analyze all branches conservatively. Unresolved targets, unproven bindings or
external facts use the reference path.

**Rationale**: A derived name alone proves no locality. A dependency hidden several
levels below a local-looking expression can affect unchanged rows. Conservative
rejection only loses speed; an incorrect local classification loses soundness.

**Alternatives considered**: Syntax-only derived classification, observing only
previously executed branches, or a second hand-maintained host dependency language.
None supplies the required complete closure proof.

**Sources**: [derived evaluation and rule ordering](../../crates/behavior-core/src/eval.rs),
[semantic expressions](../../crates/behavior-core/src/semantic/expr.rs),
[admission](../../crates/behavior-core/src/admit/typecheck.rs).

## Decision 5: Exact committed cache, independent historical facts

**Decision**: Preserve full Store/history/state identity, schema and exact admitted
content/profile bindings. One process-local validation generation owns the cache.
Stage an unexported pending result and publish only for the exact Applied child.
Historical ever_used, governance, rederivation, integrity, head/CAS and atomicity
remain independent. If cache ownership/binding cannot be established, discard it.

**Rationale**: Equal StateId does not imply equal history or lifetime facts.
The cache accelerates a canonical fact; it cannot supply trust authority or an
assumed current head. No O(N) copy is required merely to retain an optimization.

**Alternatives considered**: State-hash-only keys, serialized authoritative
certificates, pre-CAS publication, replacing used_at with live membership, or
reusing authorization from a state-validity certificate.

**Sources**: [snapshot_identity and publication](../../crates/behavior-store/src/store.rs),
[Backend contract](../../crates/behavior-store/src/lib.rs),
[store/replay contract](../013-durable-command-intents/contracts/store-and-replay.md).

## Decision 6: Preserve fallback refusal boundaries

**Decision**: Unsupported transitions run the existing evaluation, integrity,
governance and commit workflow, gain no child validity carry-forward, and leave
subsequent state validation to the existing full path. Never add a new rejection
before CAS solely to service an optimization.

**Rationale**: Static inspection found a potential broader-prototype difference.
Ordinary action evaluation checks outgoing bound/created rows and affected globals;
it does not necessarily evaluate an unchanged row's nonlocal constraint. The
prototype's mixed validator can additionally check that row and refuse earlier.
An example to investigate separately is an unchanged `not exists(row.target)`
constraint when another operation creates the target. This is a source-level
hypothesis, not an executed reproducer or confirmed defect.

**Alternatives considered**: Always insert full candidate validation before CAS.
That may repair a pre-existing validity gap, but would need separate semantic
justification and parity evidence; it cannot be hidden in 015. The eligible local
proof avoids this issue. Its candidate oracle can fully validate without expanding
the unsupported production workflow.

**Sources**: [action post-rule evaluation](../../crates/behavior-core/src/eval.rs),
[commit rederivation and prototype child checking](../../crates/behavior-store/src/store.rs).

## Decision 7: Independent semantic oracle and fault matrix

**Decision**: For eligible cases, a private test strategy fully rebuilds the parent,
independently applies the whole atomic changeset, extracts reference facts from
canonical child rows and invokes the full validator. Compare with optimized rows;
do not derive the oracle scope from the optimizer's classifier/affected set.
Compare complete public workflows with the original reference workflow separately.
Inject operational failures at mandatory calls and at eliminated redundant reads.

**Rationale**: Existing Store properties clear parent cache but still share the
incremental candidate validator. Generic derivative tests check the reference
carrier by construction; they do not prove optimized validation or every operator
kernel. New assertions need observed red before implementing/refactoring behavior.

**Alternatives considered**: Reopening alone as a full-engine comparator, equality
of backend counters as correctness, or claiming generated tests are formal proofs.

**Sources**: [prototype Store tests](../../crates/behavior-store/tests/incremental_validation.rs),
[archived prototype row oracle](prototype/source/crates/behavior-core/src/validation/tests.rs),
[archived operator reference tests](prototype/source/crates/behavior-core/src/delta/tests.rs),
[evidence](evidence.md).

## Decision 8: Honest workload and release evidence

**Decision**: Measure warm reads, repeated update/read and create/read on the
controlled and TCUP models around 10k rows, with setup separate, paired semantic
outputs, raw samples/counters and exact provenance. A true full-parent/full-candidate
comparator is required for that label; parent-reconstruction-only remains a distinct
series. Use at least 30 measured pairs per final series where practical and report
sample count, distribution and environmental limitations rather than a hard latency
promise. Large query/output, reference fan-in and record-profile costs remain visible.

**Rationale**: Previous private measurements use real TCUP handlers/JSONL but not
live MCP transport; they rebuild parents while retaining optimized candidate checks.
They used concurrent builds and do not establish published-pin compatibility.

**Alternatives considered**: Warm reads only, clearing TCUP's canonical SC-007 from
an unreleased private build, or mixing a bulk API into this equivalence argument.
None demonstrates the stated steady-state workload or official release compatibility.

**Integration decision**: Controlled reference selection is private cfg(test)
machinery. For Python/TCUP, use separate experimental build environments and an
explicit untracked reference instrumentation patch with recorded diff/digests if
needed; add no public strategy flag or bypass to canonical scripts. Both native
builds must trace to the intended source plus declared instrumentation. Required
gates still use the canonical graph and default implementation.

**Sources**: [benchmark provenance](evidence.md),
[TCUP prototype harness](benchmarks/tcup_workload.py),
[recorded verification scope](verification.json).

## Research closure

All technical decisions needed for Phase 1 are resolved. The possible unsupported
refusal difference is confined by preserving the reference workflow; investigating
or fixing it is separate work, not an unresolved premise for the local theorem.
No external IVM runtime is selected, and no DBSP theorem is asserted as a proof of
Behavior. Historical workflow/test-first gaps remain visible rather than waived.

## Authorized implementation resolution

Historical prototype source references above now point to immutable archives. The implemented private classifier is [Store dependency.rs](../../crates/behavior-store/src/store/incremental/dependency.rs), independent canonical oracle [Store tests.rs](../../crates/behavior-store/src/store/incremental/tests.rs), and test-only complete-result model [incremental_proof](../../crates/behavior-core/src/incremental_proof/mod.rs). None is a Behavior IR/runtime capability. The separately reproduced nonlocal creation gap remains outside 015; current public workflow equivalence is compared with the preserved 014 source.
