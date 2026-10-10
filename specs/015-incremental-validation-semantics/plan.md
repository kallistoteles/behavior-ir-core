# Implementation Plan: Verified Incremental Validation

**Branch**: `015-incremental-validation-semantics` | **Date**: 2026-10-10 | **Spec**: [spec.md](spec.md)

**Input**: The clarified 015 specification and the user's explicit planning request.
**Status**: Authorized implementation complete. Private correctness tests, paired controlled/native TCUP workloads and the canonical required gates pass on the revised source; see [evidence](evidence.md). Changes remain local and uncommitted.

## Summary

015 changes how Core establishes already-defined validity, not what validity means.
Keep the existing full validator and store/governance contracts authoritative.
Implement a private Store optimization for updates and creations only when a
committed parent has exact bound validity and every validation obligation is
proven row-local, except synthesized Ref obligations with a separate no-removal
proof. Validate every changed/new complete row with the existing evaluator against
one resulting-state overlay. Publish reusable child evidence only after Applied.

Unknown dependency means affected. Globals, query/cross-entity dependencies,
removals, migrations and unproven cases retain the existing reference behavior and
leave the committed child cold. Do not add a new pre-CAS semantic refusal merely
because a transition is outside the theorem. Backend traces are not semantic
observations; mandatory obligations and actual error behavior remain unchanged.

The earlier prototype is not accepted wholesale. Its wider removal/mixed-rule
algorithms, runtime delta APIs and parent-only reference benchmark need narrowing
or replacement. Verbatim prior design is preserved in
[prototype/design-before-plan.json](prototype/design-before-plan.json); recorded
implementation results remain [historical evidence](evidence.md).

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024; owning rust-toolchain.toml and pinned Nix environment.
**Primary Dependencies**: Existing serde/serde_json, thiserror, exact-number crates and proptest. No dependency additions.
**Storage**: Existing Backend and Store history/CAS contracts; one disposable process-local validation entry. No persisted certificate or format change.
**Testing**: Ordinary-validator oracle, private Store unit/property tests, unchanged conformance/replay/governance suites and behavior-engine consumer checks.
**Target Platform**: Existing Rust workspace targets and CI; develop/validate from the Core root in Nix.
**Project Type**: Library/CLI implementation optimization; no new language, binding or consumer capability.
**Performance Goals**: On proven local update/create workloads, avoid unchanged-row validation and validation-related full-universe enumeration on eligible warm operations. Count validity-checking work separately from total backend reads, retaining mandatory record/integrity/query/replay costs. Measure warm reads and repeated update/read and create/read around 10,000 entities; cold validation is separate. No fixed latency or universal constant-time promise.
**Constraints**: Exact canonical semantic inputs/results/evidence; ordered diagnostics; complete transitive closure; historical freshness; existing trust/concurrency/atomicity; no speculative cache authority.
**Scale/Scope**: First delivery optimizes local update/create validity carry-forward. All existing operators remain usable through ordinary evaluation. Query/aggregate incremental engines and optimized removals are excluded from this delivery.

All technical choices are resolved in [research.md](research.md). No product clarification remains.

## Constitution Check

**Before Phase 0**: The current specification supplies a deterministic, typed,
internal optimization with a normative full reference, conservative fallback and
no new dependency or semantic capability. The planned work is within Core ownership.
The existing premature prototype is recorded as historical work, not used to waive
the required specify → clarify → plan → tasks → implement sequence.

| Principle / gate | Design decision | Planning result |
| --- | --- | --- |
| I. Deterministic core | Pure analysis/evaluation; no AI, clocks, network or randomness in runtime decisions. | Pass |
| II. Typed boundaries | Existing admitted Module, canonical rows and Backend errors; no untyped semantic path. | Pass |
| III. Test-first | New/refactored behavior requires reviewed tests and observed red before implementation. Audit exact historical red evidence separately; never infer past compliance from newly written tests. | Required in tasks/implementation |
| IV. Reproducibility/replay | Ordered keys and ordinary evaluator preserve lazy errors, exact arithmetic, records, command bags and replay. | Pass |
| V. Explicit state/audit | Committed parent → private candidate proof → Applied-only publication; discarded or unbound evidence cannot authorize reuse. | Pass |
| VI. Simplicity | Private Store code, existing validator, test-only reference derivative. No runtime relational algebra, public delta API or new crate/dependency. | Pass |
| Engineering/release | No unsafe code or dependency overrides in official paths. Final revision must pass canonical scripts/gates.sh and consumer checks. No release is authorized by this plan. | Required before delivery |

**After Phase 1**: The data model, proof obligations and validation guide preserve
these decisions. No new design exception is needed. This is a design review, not a
claim that the revised implementation already exists or passes runtime gates.

## Project Structure

### Documentation (this feature)

```text
specs/015-incremental-validation-semantics/
├── spec.md
├── plan.md
├── research.md
├── data-model.md
├── correctness.md
├── construct-mapping.md
├── quickstart.md
├── contracts/delta.md          # private test/proof model; no external interface
├── prototype/design-before-plan.json
├── evidence.md                # historical prototype results and limitations
├── verification.json          # historical source/gate provenance
└── tasks.md                   # current dependency-ordered execution plan; unchecked
```

### Source Code (planned, not created by this command)

```text
crates/behavior-store/src/store/incremental/
    mod.rs                     # selection and private pending carry-forward
    dependency.rs              # conservative transitive locality classifier
    dependency/tests.rs        # cfg(test) closure regressions
    candidate.rs               # committed facts plus changed/created overlay
    tests.rs                   # private true-reference oracle and lifecycle tests
    workload_tests.rs          # cfg(test) comparator controls and measurements
crates/behavior-core/src/incremental_proof/
    mod.rs                     # private cfg(test) module only
    delta.rs                   # complete-result reference carrier/model
    operator_inventory.rs      # existing semantic operator coverage
crates/behavior-store/tests/incremental_validation.rs
consumer/tests/incremental_validation.rs
```

**Structure Decision**: Runtime orchestration belongs to Store, which owns the
committed snapshot/cache lifecycle. It uses existing
[check_behavior_snapshot](../../crates/behavior-core/src/eval.rs) with canonically
ordered changed/new rows and candidate facts after proving no global/external
obligations. No new behavior-core runtime orchestration or facade export is needed.
The generic derivative/inventory remains private test machinery with access to
ordinary evaluation. Placement is implementation structure, not IR syntax.

## Design and Validation Sequence

1. Freeze and audit the prototype against the clarified specification, preserving
   the original 014 files and source evidence. Record broader algorithms and
   potential behavior differences rather than silently adopting them.
2. Wire new private test modules with cfg(test) during test authoring, before
   implementing the tested helpers/algorithms; establish actual red evidence and
   nonzero collection when compilation succeeds. Write red tests for conservative eligibility, unknown dependencies, nested
   derived binding/profile resolution, references between new rows, exact errors,
   mandatory operational failures and Applied-only publication before changing code.
3. Move/narrow runtime machinery to private Store modules. Do not expose delta
   traits, certificates, strategy flags or new backend methods through behavior-engine.
4. Construct candidate facts by overlaying complete changed/created rows on the
   exact valid parent's indexed facts. Validate changed rows with the ordinary
   validator. Historical ever_used and existing integrity/governance/rederivation
   checks remain independent and preserve their execution/refusal boundaries.
5. On Applied, patch only the corresponding cache values/reference indexes and
   bind the exact committed child. If ownership/binding is uncertain, invalidate
   rather than copying the universe or publishing uncertain evidence. Other
   outcomes publish no child. Unsupported successful transitions leave the child cold.
6. Add an independent private reference strategy: rebuild the full parent and
   independently materialize/fully validate the candidate for eligible cases.
   It must not use the optimizer's affected set or locality classifier as its oracle.
   Compare unsupported public workflows separately with the pre-015 reference path;
   full-candidate testing must not introduce a new production refusal there.
7. Differentially compare semantic projections, hashes, command intents, evidence,
   history and replay. Test actual operational failure routes separately from
   unavailable redundant reads. Maintain operator inventory as test coverage,
   not a requirement for admission or runtime delta execution.
8. Measure controlled and TCUP warm/update-read/create-read workloads with genuine
   full-parent/full-candidate comparison where eligible. Keep prior parent-only
   reconstruction measurements labeled separately. Scope semantic-work counters
   to validity checking and report total backend reads separately, including
   mandatory record/integrity/query/replay costs. Run required gates on the
   resulting actual implementation revision before delivery.

This sequence is design guidance for later task generation, not an executed task list.

## Correctness and Acceptance

The conditional equivalence argument is in [correctness.md](correctness.md).
It proves omitted unchanged row obligations stable using complete locality, and
unchanged synthesized Ref obligations stable using no-removal monotonic membership.
Changed/new rows use full ordinary semantics; freshness stays historical. The
oracle and fault matrix are specified in [quickstart.md](quickstart.md).

A planning-time audit identified a possible refusal-boundary difference in the
broader prototype. The implementation subsequently reproduced the same nonlocal
creation gap on frozen 014 and revised 015: ordinary action/commit permits the
creation, and the next full state validation rejects an unchanged nonlocal row.
The conservative implementation preserves that existing unsupported workflow;
its repair remains a separate semantic issue. See [evidence](evidence.md).

No full semantic mapping to relational joins/aggregates is required. No optimized
scalar derivative or general IVM theorem is claimed. Written arguments and property
tests remain distinct from machine-checked implementation proofs.

## Complexity Tracking

No new architecture/constitution deviation is requested. The historical workflow
violation remains explicit rather than retrospectively justified:

| Violation | Why Needed | Simpler Alternative Rejected Because |
| --- | --- | --- |
| Earlier prototype planned/implemented during clarify | It was not needed; this was a workflow error, now stopped and preserved as evidence only. | Nothing justified rejecting clarify → plan → tasks → implement. New work follows that sequence and audits historical test-first evidence. |

A private overlay avoids an O(N) clone, and a conservative module guard avoids a
mixed incremental engine. Cache/index maintenance may still depend on changed
edges, fan-in or ownership; action/read profiles and record serialization may
require a full universe. Report those costs without weakening correctness.
