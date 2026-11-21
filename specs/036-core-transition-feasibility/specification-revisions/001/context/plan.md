# Implementation Plan: Establish Exact and Efficient Core Transitions

**Branch**: `research/034-ab-measurement-002` (actual Git branch) | **Feature**: `036-core-transition-feasibility` | **Date**: 2026-11-15 | **Spec**: [spec.md](spec.md)

**Input**: The 036 specification and immutable 035 record at `6296d5e358034b19e6322eed44d69fffa318c326`. Spec Kit returns `036-core-transition-feasibility` as its logical BRANCH token; `.specify/feature.json` selects this feature independently of the actual Git branch.

## Summary

First attempt to close the exact native-to-model connection for the existing restricted `finish` path and run the entire unchanged canonical quality gate. Then attribute the complete operation, test a justified contract-preserving improvement, and measure actual acquisition-to-continuation economics. Only after those results, attempt one separately versioned compact canonical transition with complete original reconstruction. A failed correspondence probe is an early, useful architecture result and blocks accepted downstream candidates.

Use035's selective Core/Safety export, independent original oracle, opaque grounds, maintained views, recorder and proof laws as reviewed inputs. Add a bounded exact-source Charon/Aeneas feasibility probe; its use and support are not established merely by this plan. Try reducing many small output writes before introducing a new canonical format. Keep all production sources, old archives, legacy identities, trust/finality and Q6 unchanged.

This command produces design artifacts only. No runtime files, new proof results, gate completion or benchmark samples are created. A finished negative report does not satisfy an unmet positive success criterion.

## Technical Context

**Language/Version**: Native Rust/Cargo 1.98.1, edition 2024; Python 3.13.15 for supervision/accounting; original Lean 4.30.0 replay. For the analysis-only probe select Aeneas `1dc8ad31b1b062a77c50e29144a6c7bba955fa09`, its pinned Charon `454586e9b770231e66d2062993e632dfc06463e2`, extraction nightly 2026-09-17 and backend Lean 4.36.0-rc2. Keep the native stable build separate and justify the source/cfg/compiler boundary. All actual tools and transitive acquisition/build inputs are byte-bound before use; unavailable tooling stops the probe. See [research](research.md#r1--native-proof-is-the-first-feasibility-decision).

**Primary Dependencies**: Original Core `63a8c164523275e06ac1d7dc5330db4a899c9d99`, Safety `8c0849fb82343ddf5a4dd99b5070ee985f8ebff0`, 035's exact reviewed source/patch/lock closure and existing pinned Nix toolchain. Reuse exact serde/serde_json/sha2/thiserror versions from 035 locks. The new extraction tools are verification dependencies only, not a new runtime or cryptographic backend. Do not float any dependency or silently mix two Core identities.

**Storage**: Same `Store<Capture>` memory backend for legacy R/GV and contract-preserving candidates. Grounds remain process-private and unimportable. Create-once new evidence and strictly036-owned source/build/tool/temp roots; no full repository checkout. The compact prototype, if reached, has its own explicit experimental memory commit/retention contract and no durable-publication claim.

**Testing**: Red-first native/controller/schema/authority and buffering-fault controls; independent complete original comparisons; actual mechanism/call/work controls; arbitrary-finite-state formal correspondence and reconstruction obligations with expected-type/axiom/fresh-kernel checks; deterministic replay; entire unchanged `scripts/gates.sh` plus scoped worker/Python/proof checks; independent manifest/accounting/semantic reproduction. Source changes invalidate the relevant previously obtained gates.

**Target Platform**: Recorded x86_64 Linux/Nix, one active heavy process group on one available recorded CPU. Native release measurements use one frozen profile, `CARGO_BUILD_JOBS=1`, `CARGO_INCREMENTAL=0`, debug 0, locked/offline resolution after bounded preparation and `RUSTFLAGS=-C target-cpu=x86-64`. Record existing installation/OS cache conditions. Address space is8GiB per process; group accounting reports sampled memory separately and does not mislabel that limit as an enforced aggregate bound.

**Project Type**: Isolated research CLI, standalone native workers and proof/checking packages, with source-bound internal research patches. No public production API or language redesign.

**Performance Goals**: Explain complete-operation work and directly observe lifecycle payback. Diagnostic medians/ranges from three observations only; no production quantile or universal percentage target. Compare numeric gaps with historical complete certified/durable p50 ≤ 50 ms/p95 ≤ 100 ms ambitions without claiming the memory-backed endpoint satisfies that contract. Accept a format recommendation only after accounting for same-contract alternatives and deferred reconstruction/retention.

**Constraints**: One 21600 s clock before the first new preparation/build/test/proof execution; stage caps and 1800 s final closing reserve. Owned cache/source/tool growth ≤ 6 GiB, retained evidence ≤ 2 GiB, temporary ≤ 1 GiB, combined simultaneous growth ≤ 8 GiB. Start with ≥ 16 GiB free and stop at ≤ 4 GiB. No automatic retry, hidden tool/cache growth, clock reset, changed accepted subject, altered legacy gate or old-artifact cleanup. These are proposed 036 bounds, not measured sufficiency.

**Scale/Scope**: Arbitrary finite states in the admitted035 `finish` fragment for proof. Timing diagnosis cells `(N,H)=(2,8),(64,8),(256,8),(2,32),(2,128)`. Lifecycle lengths 1/8/32/128 for changing, explicitly unchanged-content and invalidated-changing families; R/GV, three timing replicates and one separate diagnostic replicate. Optional same-contract and compact comparisons are gated and separately frozen. Full-language GV, new proof backends, replay-free new-receiver claims and production integration are excluded.

Technical choices and reasons are resolved in [research.md](research.md). Whether the selected proof route succeeds is an execution gate, not an assumed answer or unresolved planning clarification.

## Constitution Check

Pre-research design gate: **PASS**. Post-design gate: **PASS**. This means the planned investigation complies with the constitution; actual correspondence and quality gates are **not run**. No exception is requested and no resource stop can authorize integration.

| Principle | Before research | After design |
| --- | --- | --- |
| I. Deterministic authority | Core remains semantic authority; no runtime AI. | Fixed workers and deterministic contract validators; orchestration cannot mint grounds. |
| II. Validate inputs | Evidence and supplied checked flags are untrusted. | Strict typed records, caller-owned expected subject/profile, bounded paths/documents and explicit invalid versions. |
| III. Test first | Actual observed red required before implementation. | Later tasks must put parser, authority, extraction-canary, byte/error/flush, interval and reconstruction controls before changes. |
| IV. Reproducibility | Pin baseline, compiler profiles and expected semantics. | Revision-specific source/tool/executable DAG, deterministic replay and separate independent checks; no median-only evidence. |
| V. Explicit state/audit | Authorization, uncertainty and result provenance remain explicit. | Confirmed-only advancement; quarantine/reconcile; reconstructible versioned evidence cannot import authority. |
| VI. Simplicity | Reuse existing mechanisms; try the small transport opportunity first. | One experiment package and one bounded extraction route; canonical compaction only after diagnosis, no new runtime subsystem by default. |
| VII. Exact semantics/soundness | Model proof and finite conformance are insufficient for native closure. | Source-bound whole-fragment correspondence, complete observation/identity relation, negative controls and fail-closed stage gates. |
| Engineering/workflow | Stable native Rust, typed errors, pinned locks, no new unsafe code. | Full unchanged canonical gate, scoped research checks, red/green receipts and determinism; failed gate blocks readiness. |

## Project Structure

### Documentation (this feature)

```text
specs/036-core-transition-feasibility/
├── spec.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── contracts/
│   ├── correctness.md
│   ├── campaign.md
│   ├── compact-evidence.md
│   └── cli.md
├── quickstart.md
└── tasks.md                         # later speckit-tasks output; not created here
```

Later implementation produces `inputs/`, `evidence/development/`, `evidence/campaign-001/`, `evidence/validation-001/`, `assessment.json` and `report.md`. These paths are prospective, not evidence already obtained.

### Source Code (planned; not created by this command)

```text
experiments/transition-study036/
├── Cargo.toml / Cargo.lock
├── src/
│   ├── bin/{reference,reuse,buffered,compact}.rs
│   ├── protocol.rs / fixtures.rs / source_identity.rs
│   ├── ground.rs / session.rs / observation.rs
│   ├── intervals.rs / output.rs / recovery.rs
│   └── compact.rs / reconstruct.rs     # gated; absent until justified
├── oracle/Cargo.toml / Cargo.lock      # independent unpatched original
├── patches/                            # reviewed export-only changes
├── proofs/
│   ├── original035/                     # pinned unchanged replay inputs
│   ├── extraction/                      # actual generated subjects + inputs
│   └── Correspondence036/               # checked relations, exactness, grounds
├── study.py / recorder.py / validate.py
├── toolchain.json / schemas/ / profiles/
├── expected/ / tests/
└── private/                             # ignored, owned source/tool/build/tmp
```

**Structure Decision**: Keep every change within a new research package and new exact-source exports.035 is input, never a mutable dependency directory. Workers share one library and fixed source-selected treatment entry points; the independent oracle retains upstream original semantics. Only `reference` and `reuse` are initially eligible; `buffered` and `compact` cannot be built/run as accepted candidates before their entry gates. The ordinary candidate CLI is retained separately for the unchanged canonical gate. Actual private Git indexes must include the complete required source/fixture/script inventory and new native dependencies, not empty or convenient subsets.

## Phase 0 — research completed

[research.md](research.md) records decisions on the exact native proof boundary, compatible tool tuple, canonical source/cache strategy, output-write hypothesis, real lifecycle families, compact identity/materialization distinction and bounded evidence/reproduction. Three read-only research findings were consolidated against local primary source and pinned upstream proof-tool documentation. No tool-support or runtime result is inferred from that research.

## Phase 1 — design completed

- [Data model](data-model.md): source/proof subjects, grounds, interval trees, real sessions, compact retention and separate verdict dimensions.
- [Correctness contract](contracts/correctness.md): full native obligation register, source-to-model relation, original eight fields, shared-function congruence, canaries and quality invalidation.
- [Campaign contract](contracts/campaign.md): stage caps, prerequisite acceptance, matrices, direct endpoints, measurement/availability units, resource ownership and failure policy.
- [Compact contract](contracts/compact-evidence.md): explicit experimental version, retained-input recipe, identity table, commit/availability boundaries and exact reconstruction.
- [CLI contract](contracts/cli.md): planned supervisor/worker/validator commands, statuses, source-revision and manifest DAG.
- [Quickstart](quickstart.md): later runnable validation route, expected failures and command outcomes; no future command is claimed implemented.

## Later execution stages

| Stage | Required work and exit condition | Failure consequence |
| --- | --- | --- |
| S0 — Freeze and prepare | Bounded source/tool availability, exact original reference, tested recorder/schemas, expected obligations/workloads and actual subject inventory. | No claim of proof/tool availability; retain build/preparation stop. |
| S1 — Exact native correspondence | ≤ 1800 s initial extraction probe within 5400 s stage; close every required native bridge and fresh root/type/axiom checks. Full canonical quality is attempted in its separately bounded Q stage even if correspondence fails. | Block accepted cost/lifecycle/compact candidates; report specific gap and honest unrun slots. |
| Q — Canonical quality | Entire unchanged script and scoped research/worker/proof tests against the exact current candidate; full successful process closure. | No resource-only exception. Block dependent acceptance and retain exact failure. |
| S2 — Complete cost | Source-bound R/GV conformance, five direct diagnosis cells and actual write/copy/hash/materialization attribution. Test buffered transport only if justified and reclose changed-subject correctness/quality. | No unsupported cause or complete speedup claim; compact stage remains ineligible without diagnosis. |
| S3 — Lifecycle | All declared changing/unchanged/invalidated session lengths with directly measured totals, actual acquisition/recovery/audit and retention. | No inferred break-even or omitted-case success. |
| S4 — Compact feasibility | Separate versioned contract freeze; actual canonical prototype, source-linked reconstruction proof, identity/availability controls and direct transition-plus-audit comparison. Reclose source-specific quality before accepted measurements. | Reject/rework or mark explicitly blocked; a transport-only wrapper is not canonical compaction. |
| S5 — Close and independently assess | Close processes/writers, seal archive, recompute raw-derived tables, freshly check accepted proofs, replay exact original cases, verify preservation and every FR/SC disposition. | Missing reproduction remains a limitation; no adoption claim. |

Each accepted scientific run uses a frozen revision. A source/tool/profile change invalidates affected acceptance and consumes the same clock and stage allowance; it cannot replace failed sample slots. Exact unchanged proof dependencies may be reused only with dependency-bound evidence and the declared fresh check. Q's total allowance covers all candidate revisions; a later candidate may therefore be unrun without invalidating earlier valid results.

## Requirement-to-design coverage

| Specification | Primary design and acceptance |
| --- | --- |
| FR-001–FR-004; SC-001 | Correctness obligations B01–B10, pinned full observer, source/context relation and negative controls; S0/S1. |
| FR-005; SC-002 | Unchanged full gate, independently owned target/index, actual retained CLI, revision-specific result; Q. |
| FR-006; SC-006 | Manifest-bound source revisions and S0–S5 prerequisites, no resource exception. |
| FR-007–FR-011; SC-003 | Exact endpoints, interval tree, five controlled cells, diagnostic/timing separation, buffered candidate gate; S2. |
| FR-012–FR-014; SC-004 | Twelve lifecycle cells, real changing streams, shared resident-program starting premises, actual cold-worker envelope and recovery/audit; S3. |
| FR-015–FR-018; SC-005 | New compact contract, eight-field reconstruction, identity mappings, retained availability and actual avoided work; S4. |
| FR-019 | One clock, stage/process/byte limits, owned cleanup and preserved failures across all stages. |
| FR-020–FR-021; SC-006–SC-007 | Closed independent validation, explicit unmet outcomes, original guarantee limits and smallest justified decision; S5. |

## Complexity Tracking

No constitutional violation or exception is requested. Exact-source extraction is a new verification dependency justified by the explicit native-correspondence requirement; its bounded probe avoids assuming a full verification toolchain will work. The private Core export is required to bind existing internal prepared-evaluation/Store seams. Buffering is the first optional implementation change because it can preserve the existing contract. A separate compact memory backend is permitted only if the actual legacy commit dependency prevents avoiding materialization and diagnosis justifies its cost; otherwise stop without creating it.
