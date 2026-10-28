# Implementation Plan: Scalable Execution and Evidence

**Branch**: `031-scalable-execution-evidence` | **Date**: 2026-10-28 | **Spec**: [spec.md](spec.md)

**Input**: `specs/031-scalable-execution-evidence/spec.md`

## Summary

Execute a bounded research campaign, not a production optimization project. First establish a reproducible complete-path cost model for current Core 0.16.0. Then assess avoidable current-format evidence work, exact incremental queries and prospective compact evidence, in that order. History verification and bounded live-state retention receive separate feasibility findings. Preserve full reference behavior, historical artifacts and the distinction between mathematical results, implementation correspondence and measurements.

The planning workflow resolves how to conduct and validate the investigation. It does not resolve its empirical questions: no new performance campaign, proof execution or implementation experiment has run during planning. [research.md](research.md) records source-based findings and choices; later `investigation.md` must contain the actual research conclusions.

## Technical Context

**Language/Version**: Existing Rust 1.98.1, edition 2024; Python 3.13 for research orchestration, using the locked Nix development environment.

**Primary Dependencies**: Existing Core/Store/consumer public APIs, serde/serde_json and existing test dependencies. Reuse Python standard-library collectors/validators and existing `validation-work` diagnostics. No new runtime, database, algorithm library or proof toolchain is selected. External formalizations are research inputs, not build dependencies.

**Storage**: Append-only research JSONL, frozen JSON manifests and byte-preserving reference artifacts under ignored `target/core031/`; publish selected neutral evidence with hashes under this feature. No new Store state, authoritative index or replay dependency.

**Testing**: Test-first collector/validator controls, existing Rust property/differential tests, forced-full private test route, external consumer replay/recovery controls and unchanged `scripts/gates.sh`. Exact-byte comparisons and independent expected outcomes are complementary; neither proves the whole Rust implementation.

**Target Platform**: First measured profile: x86_64 Linux on a recorded reference host. Record actual affinity, CPU, memory, backend, cache/durability conditions and concurrent load. Do not extrapolate timings to other platforms or fsync/network backends.

**Project Type**: Core library/CLI research initiative with test-only probes and reviewer-facing evidence. No public runtime interface is added.

**Performance Goals**: Explain complete-cycle growth and distinguish necessary evidence work from redundant work. Measure each of five independent axes at three or more levels and three timing repetitions per primary point, including eight creations from 8,192 entities. No speedup SLA or universal change-proportional bound is invented.

**Constraints**: Unchanged record bytes and normative observations for current profiles; reference fallback for unknown coverage; no changes to execution semantics, persistent contracts, governance or published identities. Timing and diagnostic builds remain distinct. Exhaustion is an operational finding, never proof or a semantic counterexample.

**Scale/Scope**: Five research areas, seven research questions, a factor-by-factor matrix and one combined public orchestration workload. Avoid a full Cartesian benchmark suite or a general query/proof framework. Initial per-case timeout is 120 seconds and memory ceiling 8 GiB; record effective limits before collection. These are research resource limits, not product guarantees. Preflight requires at least 2 GiB free on the build and evidence filesystems. A constrained point is retained and investigated, not silently omitted or called completed coverage.

## Constitution Check

*GATE: Pass before planning research and re-check after design.*

| Principle / gate | Pre-design assessment | Post-design assessment |
|---|---|---|
| I–II: deterministic authority and typed validation | No live AI/runtime change; validate research inputs | PASS: manifests and measurements have checked fields; malformed evidence cannot become a finding |
| III: test-first | New harness work needs observed red controls before implementation | PASS: runner/parser/comparator controls precede collection and experiments; shortcuts need premise mutations |
| IV: reproducibility and replay | Freeze exact source, tools, cases and reference observations | PASS: immutable campaign manifest, raw repetitions, mode parity and replay/recovery coverage |
| V: explicit state/auditability | Retain failures and distinguish evidence classes | PASS: data model separates execution outcome, collection status, equivalence and recommendation |
| VI: simplicity | Reuse 029 infrastructure and current gates | PASS: no runtime dependency or production architecture selected; small collectors and isolated experiments only |
| VII: semantic authority, equivalence and proof identity | Core remains authoritative; reference comparison must cover complete observations | PASS: correspondence contract, exact subject/profile binding, unknown-dependency fallback; no inferred checkpoint/hash authority |
| Technology and required gates | Existing locks, formatting, Clippy, tests, boundary/consumer/determinism rules apply | PASS by design: no exceptions; actual code gates required when research code changes, not claimed executed now |
| Feature scope | FR-003/020 authorize research only | PASS: production optimizations, lifecycle changes and new evidence contracts require separate decisions |

No unjustified gate failure or unresolved planning clarification remains. Empirical results and candidate feasibility remain future deliverables. The existing required gate list is not duplicated or weakened.

## Project Structure

### Documentation (this feature)

```text
specs/031-scalable-execution-evidence/
├── spec.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── contracts/
│   ├── campaign-artifacts.md
│   └── correctness.md
├── benchmarks/                # later research implementation
├── evidence/                  # later retained neutral campaign evidence
└── investigation.md           # later final findings; not created as a completed result now
```

`tasks.md` is produced by the next workflow command, not by this plan.

### Source Code (repository root)

```text
crates/behavior-core/src/eval/work.rs                  # existing diagnostic seam
crates/behavior-core/src/{eval.rs,record.rs}           # inspect; production semantics unchanged
crates/behavior-store/src/{documents.rs,commands.rs,replay.rs}
crates/behavior-store/src/store/incremental/           # existing private forced-full controls
crates/behavior-store/examples/global_validation_bench.rs
crates/behavior-store/tests/support/global_workload.rs
crates/behavior-store/tests/                          # bounded 031 probes/controls added here
consumer/tests/incremental_validation.rs              # current public replay/lost-ack controls
specs/029-incremental-global-validation/benchmarks/    # read-only reuse reference
specs/031-scalable-execution-evidence/benchmarks/      # minimal new collection/validation entrypoints
scripts/gates.sh                                      # sole required gate pipeline
```

**Structure Decision**: Reuse the existing workspace and test seams. Keep 031-specific orchestration under its feature directory and observations outside canonical Core records. Do not edit archived 029 profiles, collectors, evidence or thresholds. Prospective optimization patches run only in disposable, identified experiment checkouts; no production fast path is delivered by this feature. Test-only forced-full access must not expand the consumer facade.

## Investigation Sequence

### R0 — Freeze the question, reference and measurement contract

Pin Core 0.16.0 release `63a8c164523275e06ac1d7dc5330db4a899c9d99`, planning merge `6e4602b04884edafb1123977fc22f7d88189fd06` and exact later harness patches separately. Capture file-tree/lock/tool/binary identities; a commit SHA alone does not describe an uncommitted harness. Freeze independently expected semantic cases and full-reference observations before candidate execution. Review the factor matrix, phase boundaries, cold conditions, resource limits and repeat policy in [campaign-artifacts.md](contracts/campaign-artifacts.md).

**Exit**: Checked immutable profile plus neutral oracle/corpus, mode parity and working malformed/missing/duplicate/mismatch controls. No timing conclusion can precede this gate.

### R1 — Establish a complete-path baseline

Reuse the 029 loop/drain probe, add independent history setup and evidence-byte controls, then cover small reads, reopen/first evaluation, replay, command pages and durable lost-ack recovery. Scope every counter; current hashing-byte counters are not all hashing or output bytes. Attribute retained-audit memory separately from runtime memory where possible. Compare a fresh current baseline with historical 029 figures without demanding identical wall times.

**Exit**: Three or more levels for all five axes, three timing repetitions per primary point, mandatory 8,192/eight-create case, one interaction workload and complete raw failures/limits. Missing primary coverage prevents campaign completion even if a design candidate is unresolved.

### R2 — Investigate current-format evidence processing

Rank measured construction, serialization, parsing, copying, traversal and hashing sites. For each promising reduction, write its premises and whole-workflow equivalence mapping before a bounded experiment. Use no-op/one-change controls, exact bytes and ordinary fallback. Track maintenance/reconstruction costs, final drain and process wall. Do not select streaming, interning, sharing or a cache merely because it sounds incremental.

**Exit**: Supported/rejected/unresolved dispositions grounded in measurements and correctness evidence. A counterexample rejects that shortcut; a partial experiment cannot become a production recommendation without its missing premise being identified.

### R3 — Evaluate established incremental algorithms

Compare simple specialized summaries, typed delta maintenance and dependency invalidation. Assess filtered count first, then existence, selected uniqueness and a restricted sum fragment. Analyze complete before/after deltas, identity multiplicity, partial predicates, captures, intermediate overflow and ordered/lazy observations. Use DBSP, Differential Dataflow and Adapton as research sources; record their exact artifact and proof scope. Source inspection is not a kernel replay. If any theorem is relied on as machine-checked evidence, audit and recheck its selected transitive dependencies in its pinned environment first; do not silently add that environment to the product build.

**Exit**: A construct-to-semantics applicability matrix and bounded experiments or explicit feasibility blockers. No general query engine or stronger domain restrictions are introduced.

### R4 — Assess future evidence, historical reuse and retention separately

Compare reconstructible history, authenticated dictionary/range evidence and append-only history/checkpoints as separate possibilities. Define what omitted observations would mean and how completeness, non-membership, exact history, reference integrity, authorization and availability are established. Assess bounded live-state removal with surviving references and retained replay inputs. These are contract assessments, not new persistent implementations.

**Exit**: Three separate feasibility findings for compact evidence, historical verification and retention, each stating refinement obligations, costs, unresolved premises and required future compatibility decisions.

### R5 — Synthesize and review

Produce `investigation.md` with the seven-question response index, cost model, algorithm/correspondence matrix, experiment dispositions, unsupported cases and ranked follow-ups. Preserve failed attempts and resource findings. A justified no-go can complete candidate assessment, but cannot substitute for mandatory baseline coverage. Do not call a written argument machine-checked or describe finite measurements as a universal complexity proof.

## Requirement Coverage

| Specification requirements | Planned work / review evidence |
|---|---|
| FR-001–003 | R0 scope/reference freeze and R5 seven-question dossier; no production delivery |
| FR-004–007 | R1 complete-path cost model and five-factor campaign, including independent history and evidence bytes |
| FR-008–010 | R2/R3 complete-observation comparisons and explicit mathematical/Core/implementation correspondence |
| FR-011–013 | R3 primary-source algorithm assessment and positive/negative/mutation corpus |
| FR-014–015 | R4 separate evidence interpretation, completeness, availability and authority assessment |
| FR-016–017 | R1 history/recovery measurements and R4 separate historical-reuse/retention findings |
| FR-018–020 | R5 five dispositions, supported coverage/capacity distinctions and scoped follow-up decisions |

SC-001–006 are reviewed against the retained campaign and final dossier, not against this planning document. Research readiness must not be confused with completed measurements.

## Validation Strategy

Write and observe failing controls for the new runner, manifest validation, complete-observation comparator and each implemented shortcut before corresponding changes. Include JSON type changes (`false` versus `0`), missing outcomes/operations, different profiles, duplicate/missing repetitions, malformed/nonfinite metrics, mode mismatch, omitted drain, stale passing reports, ignored subprocess failure and corrupted/absent reference artifacts.

Reuse existing complete-parent/child reference controls, cardinality 1000 ALLOW/1001 DENY, aliases, reference changes, cache loss, stale contexts, conflicts, refused CAS and separate-process lost-ack recovery. Extend public neutral cases with filtered membership changes, overflow, partial/lazy evaluation, command multiplicity and independent history endpoints. Compare full canonical bytes directly; digests locate and bind artifacts but do not establish semantic validity by themselves.

Run focused checks after each research-code change and the existing `scripts/gates.sh` before final code acceptance. Then build fixed production-like and diagnostic probes before measured execution. Instrumented timings are diagnostic only; all timing repetitions remain retained. No full suite or benchmark has been run merely to write these documents.

## Complexity Tracking

No constitution deviations. Complexity is limited to the minimal research harness needed to close measured gaps; no new runtime crate, dependency framework, persistent protocol or proof system is approved.

Research protocol amendment (2026-10-28): the initial 120-second full-reference preparation at N=8192 timed out before returning a complete multi-phase result. Preserve campaign-001 as incomplete and repeat the complete reference group with a 300-second per-process limit before any candidate. The 8-GiB address-space cap and semantic/coverage requirements remain; no product latency SLA exists or is relaxed. Final timings must disclose the changed operational limit.
