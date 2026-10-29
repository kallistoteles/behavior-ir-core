# Implementation Plan: Verified Incremental Transitions — Comparative Investigation

**Feature**: Core 032 | **Date**: 2026-10-28 | **Spec**: [spec.md](spec.md)

**Git branch**: `031-scalable-execution-evidence`; independent feature selector: `032-transition-verification-study`.

**Baseline**: Core 0.16.0, `fc73fa36b959aeaf54cff2f38dd190c4389c3fa1`. Scope is a bounded executable investigation, not production adoption.

## Summary

Compare full-reference Core execution with two different mechanisms: A, inductively maintained exact views, and B, independent checking of untrusted transition witnesses. Run Nova early over the same bounded checker computation, rather than proving only an invariant. Compare local execution, independent replay/checking and accumulated historical verification separately.

B initially checks complete snapshots and lifetime-ID information, without trusting A's retained summaries. Its potentially linear cost is an experimental result. Sparse authenticated witnesses and verified incremental compilation remain assessed alternatives rather than extra mandatory implementations. An experimental compact encoding must reconstruct the promised observations. Existing-profile paths retain exact bytes.

An accumulated proof of the study relation does not automatically verify Core's MuHash identity or canonical record chain. The combined consumer checks that identity bridge separately and measures its complete cost. No succinct whole-Core-history claim is allowed while that bridge scans history.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024; Python 3.13 orchestration; Lean 4.30.0 for the restricted mathematical model.

**Primary Dependencies**: Existing admitted Core/Store APIs and Core 031 tooling. Lean comes from locked nixpkgs `6774f7bc253789b113a4f39285dc0fa100abeacc`, without mathlib. Nova `0.76.0`, upstream source commit `01b1e2d662a847ed7029770ecbaf6687398899dd`, with the explicit Cargo-only portability overlay in `experiments/transition-study032/vendor/nova-portable.patch`, uses Pallas/Vesta, Pedersen commitments and IPA/Spartan. Isolate and lock these dependencies in the study workspace. No production dependency or lock update is required by design.

**Storage**: Existing Core backend for reference runs; experimental files for complete support, witnesses, disposable views and proof checkpoints. No new persistent business state, shipped record format or replay dependency.

**Testing**: Failing controls before implementation; actual Core differential/property tests; independent outcome oracles; Lean proof/axiom checks; circuit mutations; fresh-process Nova verification; collector completeness tests. Existing repository gates remain unchanged.

**Target Platform**: Initial x86_64-linux KVM profile: Intel Xeon X5670 2.93 GHz, eight visible vCPUs. Timed children on CPU 7, orchestration on CPU 0; no overlapping builds or benchmark campaigns. Other hosts require a separately frozen profile.

**Project Type**: Research harness, isolated Rust experimental workspace and small Lean development; no new shipped CLI or general-purpose query/proof framework.

**Performance Goals**: Characterize complete costs and supported scope, not a fabricated speedup. Measure independent N=128/512/2048/8192 and H=8/32/128 projections, plus affected rows, rules, query complexity and evidence bytes. Local usefulness requires measured total work/latency benefits after maintenance/publication, or an explicit narrower/no-go disposition. Historical verification includes the full identity bridge.

**Constraints**: Freeze [experiment-protocol.md](contracts/experiment-protocol.md) before final evaluation: 300 s per native lifecycle operation or independent verification, 900 s per proof-history attempt, 8 GiB address space per measured child, one timed thread. Measure first-use and parameter-reuse groups separately: first-use includes fresh parameter/key derivation, while reuse includes loading/identity validation; both perform all required checks. Consumer totals include its parameter work and Core bridge within 300 s. Include preparation, compression and bridge costs separately and in whole-chain totals. Limits are research capacities, not product SLAs or truth conditions.

**Scale/Scope**: One parameterized public model, exact positivity/cardinality/ref/lifetime/context/command semantics. Native scaling is distinct from early circuit capacities C=1/4/16, H=1/2/8 and explicit finite lifetime-ID domains. At least one real accumulated common-model proof must succeed. Small scope cannot certify arbitrary admitted Core.

## Constitution Check

Pre-research gate: **PASS**. Post-design review: **PASS**; implementation verification remains outstanding. No constitutional exemption is requested.

| Principle | Planned enforcement and post-design result |
|---|---|
| I–II: deterministic, typed decisions | No AI runtime path; strict versioned data, typed status channels, frozen inputs/context. Pass. |
| III: test first | Retain meaningful red controls before each new checking/reuse path, then positive/differential controls. Pass. |
| IV: replay/determinism | Canonical ordering, exact existing-profile output, repeated semantic identities; randomized proof bytes kept separate. Pass. |
| V: explicit state/audit | Include lifetime identity and lineage; separate proof, retention, authorization and publication results. Pass. |
| VI: simplicity | Two small mechanisms and one bounded circuit; no sparse-proof/compiler framework prerequisite. Pass. |
| VII: authority/correspondence | Core reference is authoritative. Explicit mapping, implementation, circuit and crypto assumptions. Unknown dependencies trigger exact fallback or experimental Unsupported. Pass. |
| VII: proof identity | Exact subject/anchor/endpoint/output/checker bindings; no prior certificate promotion or inferred deployment authority. Pass. |
| Technology/workflow | Pinned Rust, fmt/clippy/gates; no unsafe in authored experiment code. Inventory dependency unsafe/crypto assumptions separately. Pass. |

Planning gate success does not claim that a theorem, circuit or experiment has executed successfully.

## Project Structure

```text
specs/032-transition-verification-study/
├── spec.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── contracts/
│   ├── transition-contract.md
│   ├── proof-and-evidence.md
│   └── experiment-protocol.md
├── checklists/requirements.md
├── benchmarks/                 # planned cases, collector, schemas, tests
└── evidence/                   # planned append-only manifests/logs/dossier

experiments/transition-study032/ # planned standalone workspace
├── Cargo.toml
├── Cargo.lock
├── src/                        # adapters, A/B, circuit and consumer
├── tests/
├── proofs/                     # Lean definitions/theorems/axiom audit
└── shell.nix                   # existing Nix lock, adding Lean

crates/behavior-store/tests/    # minimal planned reference/differential integration
consumer/tests/                # planned independent recovery controls
```

**Structure Decision**: Reuse Core 031 fixtures and collector concepts without rewriting its archive. Keep forced-full reference extensions test-only. Isolate proof dependencies from production releases. Freeze actual sources, including initially uncommitted experiments, alongside binary identities before measurement.

## Phase 0 — Research

[research.md](research.md) resolves candidate seams, mathematical scope, pinned tools, identity bridging and resource policy. Established verified work informs these contracts; no imported result is assumed to verify Core. Remaining feasibility/performance outcomes are experiments to conduct, not unresolved planning decisions.

## Phase 1 — Design

The [data model](data-model.md), three contracts and [quickstart](quickstart.md) define supported scope, acceptance interfaces, retention and complete measurement. Quickstart commands are planned interfaces, not successful runs.

### Formal scope

Define deterministic finite typed states and the supported template, with checked integer operations, errors/laziness, canonical subject/rule order and canonical command bag occurrences. Prove exact execution and J preservation for A, soundness and supported-outcome completeness for B, plus initialization/recovery and ordered history composition. Use arbitrary finite maps where practical; fixed circuit bounds are separate.

Audit transitive axioms of every reported theorem: only `propext`, `Classical.choice`, `Quot.sound`; reject `sorryAx`, custom axioms and native-evaluation proof axioms. Require independent `leanchecker --fresh` replay of the checked declarations. Retain statements and proof artifacts. Distinguish these results from the reviewed but unverified Core adapter, Rust implementation, canonical renderer, circuit translation and crypto library. If circuit correspondence remains trusted, Nova results are feasibility evidence under that assumption, not fully established Core correctness.

### Early feasibility gate

After the minimal common contract/checker, produce a real tiny Nova proof before the large native campaign. Start N=1, H=1/2, then attempt N=4/16 and H=8. The small suite includes creation, command-only steps, removal/reused-ID attempts and invalid witnesses. Count logical attempts, commits and circuit microsteps separately. Incomplete transactions cannot become proved commits.

US3 supplies its own minimal `prepare --scope proof-smoke`, frozen early manifest and fresh-consumer verification wiring. It does not depend on the later campaign runner. US4 extends these interfaces and freezes a separate final comparative manifest; source changes never reinterpret the early evidence.

Constrain complete state/effects, count/refs/lifetime, selected errors and outputs. SHA-only chaining or an unconstrained producer result is insufficient. Preserve all 256 digest bits using range-constrained limbs. Check the verifier's returned endpoint against the consumer's expected endpoint; accepting any cryptographically valid returned state is insufficient. Include setup, folding, optional compression, independent checking and exact Core bridge costs.

Resource failures remain visible. A revised campaign may change capacity without weakening the claim. At least one actual accumulated common-model proof and independent verification is required for completion; broad-capacity/adoption no-go remains a valid outcome.

### Sequence for task generation

1. Freeze reference/template recognition, hand oracles, status schemas and resource protocol; establish negative controls.
2. Develop minimal Lean contract and B; implement the early freezer/CLI and separate manifest, then run early Nova and fresh consumer in first-use/reuse groups, reviewing circuit correspondence before favorable claims.
3. Build A and full B, retention/recovery and canonical/experimental observation adapters against the same reference.
4. Create and make green the independent public-consumer recovery test before executing it; extend mutations, context/high-fanout, concurrency/lost-ack and reconstruction tests, then freeze sources/locks/cases under a new final manifest before comparative evaluation.
5. Collect independent scales and lifecycle costs; run required gates and issue separate candidate/consumer dispositions.

Steps 2–3 may overlap after the common contract is stable. Do not defer proof feasibility until the final benchmark campaign.

## Requirement Coverage

| Requirements | Planned evidence |
|---|---|
| FR-001–004; SC-001/003 | Exact F/J/K contract, Lean results, correspondence/assumption matrix |
| FR-005–009; SC-002 | Shared oracles, A/B executions, differential/mutation/fallback coverage |
| FR-010–013; SC-004 | Early Nova proof, independent consumer, identity bridge, availability controls |
| FR-014–016; SC-005 | Frozen manifests, N/H projections, three repetitions, raw full-cost/resource rows |
| FR-017–018; SC-006 | Dispositions, compatibility audit, unchanged historical artifacts and gates |

## Complexity Tracking

No constitutional violations. Lean is required for mathematical support; Nova for accumulated-proof feasibility. Full-snapshot B minimizes the initial authenticated-state proof surface. Replacing exact Core identity with an unbridged cheaper root is rejected. Production adoption or a hybrid architecture is not preselected.

### Recorded platform correction before proof evaluation

The unmodified pinned Nova x86_64 dependency enables halo2curves assembler unconditionally. The actual Pallas scalar probe built successfully but terminated with SIGILL (exit 132) on the declared Xeon profile; the generated field source emits BMI2/ADX instructions. Evidence is in [nova-cpu-default-failure.json](evidence/nova-cpu-default-failure.json).

Select the existing portable Rust arithmetic through a one-line Cargo feature overlay. Every vendored upstream file is byte-identical except Cargo.toml; `vendor/nova-upstream.json` binds the revision, complete file inventory and patch digest. No circuit/crypto implementation code is edited. Exclude this third-party snapshot from the authored workspace so formatting/linting cannot rewrite it. Its upstream unsafe/crypto code remains an explicitly trusted external dependency, not new authored unsafe code or a machine-verified library. The reviewed configuration change selects an existing implementation of the same field/group operations; implementation correctness remains a declared assumption. Label default and portable configurations separately and freeze the composite source identity before evaluation. Production dependencies, Core semantics, proof statements and all resource budgets remain unchanged.
