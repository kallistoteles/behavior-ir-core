# Implementation Plan: Scalable Validation with Global Rules

**Logical branch:** `029-incremental-global-validation` | **Date:** 2026-10-25
| **Specification:** [spec.md](spec.md)

**Checkout:** `/home/kalle/repos/behavior-ir-core-029`, now on
`029-incremental-global-validation`. Planning began detached at
`aff31ddda163e343be616cb378388e464b90933b`; implementation progress is in tasks.md.

## Summary

Extend existing incremental validation to handle both unaffected updates and creations
affecting a meaningful global invariant. Select the existing typed expression
`count(select(T)) <= K` as the first affected pattern, initially for updates/fresh creates
with supported local row rules and no removals or migrations. Other previously supported
modules remain executable through reference behavior.

The Store cache restriction is only one contributor: Core also repeatedly decodes and
validates complete parent/child states, including during commit reproduction. Design
opaque Core-owned reusable semantic evidence, anchored by Store to exact history, to
remove that work without changing records, errors or validation phases. Keep reference
execution and independent untrusted-bundle verification. Establish this seam's correctness
and feasibility first; cache promotion alone cannot complete 029.

Measure actual growing creation through evaluate/commit/next-evaluation. Freeze numeric
budgets and a growth-related benefit criterion from controlled baseline pilots before
final candidate evaluation. Existing records require complete evidence output; measure
that output-sized floor separately from unnecessary semantic revalidation.

## Technical Context

**Language/version:** Rust 1.98.1, edition 2024, repository-pinned toolchain.

**Primary dependencies:** Existing locked workspace `behavior-core`, `behavior-store`,
`behavior-engine` dependencies. No new runtime crate, general IVM framework, solver or
proof toolchain selected. Baseline Core 0.15.0/verifier 0.10.0; no SMT change. Written
correctness arguments must not be presented as machine-checked proofs.

**Storage:** Existing Backend trait, InMemoryBackend and durable consumer fixture.
Ephemeral prepared snapshots/counts only; no persistence/replay format, new domain state,
or mandatory Backend capability.

**Testing:** Test-first Rust tests, existing private full-parent/full-child reconstruction,
independent explicit semantic expectations, mutation controls, public consumer tests,
replay/determinism and existing `scripts/gates.sh`. Extend the explicit release-profile
measurement seam.

**Target platform:** Preserve supported Core platforms/backends. Record actual Linux
reference hardware/resources for the first controlled profile; make no unmeasured
cross-platform performance promise.

**Project type:** Core library/Store/CLI workspace; internal execution optimization with
unchanged consumer semantics and historical formats.

**Performance goals:** No unrelated unchanged-row revalidation for supported unaffected
cases; affected creation must avoid full unchanged-row validation and demonstrate a
quantitative whole-cycle growth improvement. Early baseline pilots must fix numeric
budgets, growth-benefit threshold and local regression limits before final evaluation.
Necessary evidence output remains; flat total commit latency is not required.

**Constraints:** Complete observational equality, exact validity anchors, complete
dependency/effect coverage, checked count/error behavior, existing refusal phases,
CAS-only publication, unchanged records/hashes/governance/replay. Unknown means affected
or reference execution. No unsafe code or consumer-controlled validity assertion.

**Scale/scope:** Populations1,16,128,512 plus two larger frozen populations
(pilot 2048, 8192), at least three independent sequential runs per case, actual creation
in one growing Store per run, fixed-population history controls and limit 1000 boundary.
This is measured capacity, not unrestricted IVM or universal constant-time execution.

## Constitution Check

Pre-research and post-design review against constitution 1.1.0:

| Principle/gate | Design obligation | Planning result |
|---|---|---|
| I–II: deterministic authority/typed input | Admitted IR and opaque checked evidence; no AI runtime or raw validity assertion | PASS |
| III: test-first | Reproduce full-cycle/error cases; observe negative controls fail before implementation | PASS; execution required during implement |
| IV: reproducibility/replay | Stable records, canonical ordering and identities; reference comparison and replay | PASS |
| V: auditability | Exact contexts, explicit reuse/fallback; nonsemantic measurement data separate | PASS |
| VI: simplicity | Existing modules/tests, one small aggregate pattern, no new framework/dependency | PASS |
| VII: semantic authority | Complete Result/trace equality, arbitrary-state argument, coverage and explicit TCB | PASS |
| VII: phases/assumptions | No extra refusal boundary, tampered bundles independently rejected, actual-operation error contracts preserved | PASS |
| Technology | Pinned Rust/lock, typed errors, no unsafe, fmt/clippy and workspace/consumer gates | PASS |
| Workflow | Design only now; tasks generated separately; existing gates mandatory | PASS |

No constitutional exception is requested. These are design checks, not claims that
unimplemented proofs/tests or performance gates have passed. An inability to establish
exact-observation reuse blocks the optimization; it does not authorize weakening the
constitution or the clarified acceptance criteria.

## Project Structure

### Documentation

```text
specs/029-incremental-global-validation/
├── spec.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
└── contracts/
    ├── execution-equivalence.md
    ├── validity-reuse.md
    └── evaluation.md
```

Later implementation deliverables: reviewed general correctness/construct mapping,
frozen numeric evaluation profile and baseline/candidate measurement report here.
`tasks.md` is generated by `speckit-tasks`, not this phase.

### Existing source seams

```text
crates/behavior-core/src/
├── eval.rs                         # semantic evidence and evaluation reuse
├── facts.rs                        # coherent facts contracts, if needed
├── record.rs                       # exact-parent independent reproduction
└── incremental_proof/              # existing test-only reference reasoning
crates/behavior-store/src/
├── store.rs                        # history anchoring, evaluation/rederive, CAS
└── store/incremental/
    ├── dependency.rs               # complete eligibility/dependency analysis
    ├── candidate.rs                # coherent changed/created overlay
    ├── mod.rs                      # preparation/publication
    ├── tests.rs                    # independent full reconstruction
    └── workload_tests.rs           # work/semantic comparison and measurements
crates/behavior-store/tests/
├── incremental_validation.rs
└── snapshot_reuse.rs
consumer/tests/
├── incremental_validation.rs
└── support/durable_backend.rs
scripts/gates.sh                    # existing mandatory pipeline
crates/behavior-store/examples/global_validation_bench.rs # counter-free public probe
crates/behavior-store/tests/support/global_wire.rs        # shared neutral inputs
crates/behavior-store/tests/support/global_workload.rs    # shared complete-cycle workload
specs/029-incremental-global-validation/benchmarks/        # collectors and corpus data
```

**Structure decision:** Core constructs semantic evidence; Store owns history continuity.
Extract small private submodules where useful, without a parallel evaluator, crate or
release process. Core 030/Gap009, SMT `unique(Option)`, ecosystem Models and unrelated
work remain outside scope.

## Phase 0 — Research decisions

[research.md](research.md) records complete-path inspection, the cardinality pattern,
Feature 015 reasoning, existing verified IVM literature, the Core/Store evidence boundary,
observable output floor and measurement protocol. Research agents were read-only; no
prototype or benchmark result is claimed. No unresolved user clarification is required.

## Phase 1 — Design contracts

- [data-model.md](data-model.md): exact context, opaque prepared semantic state,
  complete obligation plan, membership summary and pending child lifecycle.
- [Execution equivalence](contracts/execution-equivalence.md): complete observations,
  mathematical obligations, internal/public interfaces and fallback.
- [Validity reuse](contracts/validity-reuse.md): identity, publication and recovery.
- [Evaluation](contracts/evaluation.md): baseline-derived numeric freeze, growing corpus,
  complete-cycle instrumentation and conjunctive readiness.
- [quickstart.md](quickstart.md): current entry points and later acceptance workflow;
  existing commands are distinguished from tests/harness work still to implement.

## Implementation order and blocking gates

### G0 — Reproduce and freeze baseline evaluation

Port neutral Gap008 cases and add genuine cardinality creation with independent 1000/1001
outcomes. Instrument Core evaluation, commit reproduction and next evaluation, including
in-memory work and output bytes. Observe new strict work controls fail on baseline.
Collect complete-path baseline pilots; freeze hardware, sequences, larger sizes, numeric
growth benefit, whole-cycle budgets and local regression limits. Retain failed attempts.
Separate production-like release timing with detailed counters/tracing absent from hot
paths from instrumented diagnostic work runs. Check semantic parity across modes and
record their build identities and overhead; derive budgets and speedup criteria only
from production-like timings, never by subtracting estimated instrumentation costs.

**Exit:** Reproducible causal baseline, full parent/child reference strategy and numeric
frozen profile. Evaluate-only counts or a tautological global cannot pass G0.

### G1 — Establish correctness and the evidence-reuse seam

Write the arbitrary-finite-state argument and concrete construct mapping before broad
optimization. Design checked Core construction of reusable typed-state evidence and
Store history binding. Demonstrate a minimal update/create through evaluation AND
untrusted-record reproduction, with exact records and fewer repeated semantic checks.
Test forged/mismatched evidence and tampered bundles; preserve traces, derived/query
observations and error activation.

**Exit:** Reviewed soundness/correspondence argument and a working minimal seam that
does not trust caller validity, alter phases or omit complete-record checks. If infeasible
under unchanged semantics/records/public boundary, report the exact blocker. A Store-only
partial improvement or record redesign cannot substitute for this gate.

### G2 — Complete global validation and exact publication

Extend resolved dependency/effect analysis for constants, unaffected globals and exact
typed cardinality. Maintain counts from validated membership and checked actual effects;
prove numeric/error correspondence. Check all changed rows and applicable obligations;
preserve unchanged-row canonical evidence without revalidating it. Integrate evaluation,
reproduction and exact CAS child promotion.

Keep ordinary behavior for unknown/nonlocal/partial globals, removals, migrations, cold
states and incompatible contexts. Test multiple rules/types and generated actions; no
action-name exceptions. Avoid O(N) cache copying merely to retain reuse, and measure
all fallbacks.

**Exit:** Unaffected cases and affected creation meet strict whole-cycle work criteria,
including accepted 1000 and refused 1001, with complete semantic equality.

### G3 — Adversarial correspondence, recovery and regression

Extend independent full-state reconstruction and explicit expected outcomes. Cover
malformed rows, aliases, duplicate/fresh IDs, simultaneous creates, missing Ref targets,
hidden derived dependencies, ordered failures, lazy/error branches, mixed unsupported
rules, stale anchors and corrupted summary maintenance. Mutate each essential premise
and demonstrate that its control detects the fault.

Exercise conflicts, failed commits, committed-but-lost acknowledgements, reopen/backend
mutation, module/schema/profile changes and migration using existing consumer fixtures.
Compare full records, hashes, commands, decisions, reads and replay. Run workspace,
public-consumer and determinism gates; never alter established fixtures to hide a diff.

**Exit:** Correctness controls and existing `scripts/gates.sh` pass. Evidence distinguishes
written proof, shared reference evaluator, independent expected results and trusted code.
Include the finalized measurement/profile validator in these checks. Record the tested
source identity; this gate must pass before G4's final measurement campaign.

### G4 — Final growth evaluation and readiness

After G3 passes, run the frozen released-baseline/reference/candidate profile sequentially,
at least three independent production-like timing growth runs per case and the predeclared
instrumented work runs. Include preparation, reproduction and the final next-evaluation
drain. Check cross-mode semantic parity, assess numeric budgets/growth from production-like
timings, and use diagnostic runs for strict work criteria and overhead attribution.
Account for evidence output, copies/hashing, history and fallback. A production/harness
change requires renewed applicable gate evidence before rerunning affected comparisons;
documentation-only edits do not require repeating already-passing code checks.

**Exit:** Every conjunctive evaluation criterion passes. Document optimized patterns,
fallback, residual scans and measured capacity. Timing failure is a performance failure,
not a semantic refutation. No private-application endurance or unexecuted 30-minute claim.
Release version/publication remain separate decisions.

## Requirement traceability

| Requirements | Coverage |
|---|---|
| FR-001–002 | Research R1; G0 causal baseline/whole-path instrumentation |
| FR-003–004 | Research R2; G2 constants, unaffected updates and affected creation |
| FR-005 | Equivalence contract/reference fallback; G2 unsupported/mixed controls |
| FR-006–009 | Research R3–R5; equivalence contract; G1 argument and G3 negative controls |
| FR-010–012 | Data model/reuse contract; G2 CAS and G3 context/recovery tests |
| FR-013–014 | Research R3/evidence classes; G1 correspondence and TCB review |
| FR-015–016 | Research R6/evaluation contract; G0 freeze and G4 complete growth runs |
| FR-017–018 | Equivalence contract; unchanged state/API/format; G3 public/replay checks |
| FR-019–020 | G3 normal gates; G4 mandatory affected case and residual-work account |
| SC-001 | G1/G3 complete comparison plus independent expected errors/refusals |
| SC-002–003 | G2/G4 whole-path work criteria at frozen sizes and 1000/1001 |
| SC-004 | G0/G4 three-run profile, larger populations, numeric growth criteria |
| SC-005 | Reuse contract/G3 exact identity, conflict/recovery/replay |
| SC-006 | G1 general argument/construct mapping; G3 premise mutations and TCB |
| SC-007 | G4 causal complete-path benefit and measured remaining limits |

The four stories / 13 acceptance scenarios map to locality/creation in G2/G4, complete
semantics in G1/G3, state-boundary reuse in G2/G3 and capacity disclosure in G0/G4.

## Complexity Tracking

No constitutional violations/exceptions. The Core-owned evidence seam is needed because
current evaluation/reproduction repeats full validation; loosening Store eligibility
alone is insufficient. Its feasibility is gated. General IVM machinery, persistent
summaries, consumer bypasses and record redesign are rejected for this scope.
