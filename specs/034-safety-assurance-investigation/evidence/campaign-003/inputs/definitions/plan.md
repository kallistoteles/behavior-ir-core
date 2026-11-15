# Implementation Plan: Safety Assurance and Core Architecture Investigation

**Branch**: `033-core-proof-feasibility` (existing Git checkout) | **Feature**: `034-safety-assurance-investigation` | **Date**: 2026-11-14 | **Spec**: [spec.md](spec.md)

**Input**: `specs/034-safety-assurance-investigation/spec.md`. Planning baseline: Core research `6e4577bdfa448b3b58feff7f3571bde2d52adb9b`; executable integration uses the separately pinned released Core/Safety pairing below. Feature selection is `.specify/feature.json`, independent of Git branch.

## Summary

Investigate which safety and historical claims require which authority, evidence and checking work. Compare A, independently checked program safety with validated/enforced deployment segments; B, independently checked actual history and continuation; C, unchanged strong 033. Correct history and exact Core meaning stay fixed. No proof backend, trust authority or finality contract is adopted by this work.

Build an isolated public-interface harness around actual Safety Models and released Core, a small checked assurance-composition model and a bounded recorder. Trace requirement origins, challenge premises and measure scoped lifecycle work. Existing cryptographic failures remain negative evidence for their exact subjects; they are not rerun without a new question. A/B memory-store results cannot claim certified durable publication.

This command delivers planning/design artifacts only. The investigation, code, proof checks, measurements and final recommendation are subsequent implementation work.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, for the authoritative harness; Python 3.13 for supervision/report validation only; Lean 4.30.0 for proof/build tooling. Use pinned repository Nix inputs and record actual tool binaries/derivations.

**Primary Dependencies**: public `behavior-engine` at Core `63a8c164523275e06ac1d7dc5330db4a899c9d99`; `behavior-models` at ecosystem `8c0849fb82343ddf5a4dd99b5070ee985f8ebff0`; their exact transitive lock identities. Use existing serde/JSON/hash/error libraries where required and commit the standalone experiment lockfile. Reuse pinned Safety proof sources and Core 032 proof arguments. No new cryptographic system, third-party proof library or production dependency.

**Storage**: research-owned immutable manifests, typed public-backend transport and evidence files; actual `InMemoryBackend` for the first A/B pilot. Coordinator authority is process-local and discarded on restart. No memory-store durability claim. Preserve all prior artifacts; use a private build/output directory and execute retained binaries whose bytes are frozen.

**Testing**: test-first manifest/parser/classifier, actual public Core/Safety integration, bounded independent-consumer checks, all fifteen boundary controls, exact module/policy/history matching, checked formal targets/countermodels, axiom audit/fresh kernel replay, corruption and interruption controls, independent post-close artifact validation and deterministic semantic-record replay.

**Target Platform**: x86_64 Linux on the recorded local machine, one measured worker and inherited CPU affinity. Existing pinned dependencies may be installed; installation/cache conditions are recorded. No paid service or external proving infrastructure.

**Project Type**: bounded comparative research CLI and formal development; no Core API or runtime redesign.

**Performance Goals**: explain and measure complete certification, deployment, execution, onboarding, audit and recovery endpoints. Retain 033's 50/100 ms local and 100 ms fresh-recipient figures only for their exact certified/durable scopes. First 034 campaign reports three-observation diagnostics, medians/ranges and exclusions; it makes no percentile claim or new product-latency promise.

**Constraints**: 7200 s campaign including 1800 s preparation; 1800 s scenario; 900 s maximum process; Safety 180 s/tool and 300 s/whole role; 8 GiB address space/process; 16 GiB free before each process; ≤2 GiB retained artifacts plus ≤2 GiB new build/cache growth. Every stage also obeys remaining outer time. No retries-until-success or clock resets. [Exact contract](contracts/campaign.md).

**Scale/Scope**: three arrangements × eight lifecycle situations; six separately assessed claim classes; fifteen required edge cases; LD8 primary lifecycle example with eight committed events, plus a separately certified duplicate-command variant. Six growth cells vary parent/child pair count and prepared history length; one relevant operation per measured transition. Scope gaps remain explicit.

## Constitution Check

Pre-Phase-0 assessment and post-Phase-1 design review both pass as a research plan. These are design checks, not passed implementation/test/proof gates.

| Principle | Before research | After design |
| --- | --- | --- |
| I. Deterministic authority | Public Core/Safety owns decisions; no runtime AI. | Rust workers check typed inputs; Python only supervises and validates records. Producer assertions cannot mint independent authority. |
| II. Validated inputs | Evidence is untrusted input. | Bounded typed packets, exact expected subjects and private checked-basis authority; strict record validation. |
| III. Test first | New code follows red→green. | Parser, classifier, premise mutation, backend transport and real boundary tests precede acceptance code. Existing frozen source is never formatted/edited through imports. |
| IV. Reproducibility | Pin sources, tools and declared workloads. | Freeze source/input/expected-output DAG before execution; runtime observations stay outside semantic identity; compare deterministic records twice. |
| V. Explicit state/audit | Separate assurance, semantic and operational states. | Exact segment/basis/history lifecycle and provenance; raw failures retained; archives hashed after close. |
| VI. Simplicity | Start from existing public functionality. | One standalone harness; real Safety and Core reuse; no new backend/circuit/storage engine; scope gaps replace speculative infrastructure. |
| VII. Exact semantics and soundness | No safety-preservation shortcut to exact execution. | Six claim classes, explicit authority/implementation premises, checked composition and concrete countermodels; 033 correspondence gaps remain open. |
| Technology/workflow | Rust research code; proof/collector tooling justified. | Private lock/output roots; scoped fmt/Clippy/tests and required repository gates before any integration; no production merge or release in this feature. |

No constitutional exception is claimed. Python and Lean are research/build tooling, not alternative runtime semantics. Core and Safety implementations, extraction, encoding, host enforcement and physical storage are named assumptions or gaps, not newly proved facts.

## Project Structure

### Documentation (this feature)

```text
specs/034-safety-assurance-investigation/
├── spec.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── contracts/
│   ├── assurance.md
│   ├── evidence.md
│   ├── campaign.md
│   └── cli.md
├── quickstart.md
└── tasks.md                       # next speckit-tasks phase; not created now
```

Implementation will additionally produce `requirement-origins.json`, `comparison.json`, `assurance-arguments.md`, `cost-assessment.md`, `decision.md` and new evidence under this feature. None is claimed completed by planning.

### Source Code (repository root; planned)

```text
experiments/assurance-study034/
├── Cargo.toml / Cargo.lock        # standalone; public pinned dependencies
├── src/
│   ├── main.rs                   # typed research worker commands
│   ├── artifacts.rs              # bounded records and exact subject checks
│   ├── fixtures.rs               # public Builder + Safety declarations
│   ├── capture.rs                # public Backend packet capture/reconstruction
│   └── arrangements.rs           # coordinator and independent consumer
├── study.py                      # bounded sequential supervisor/collector
├── validate_report.py            # deterministic evidence/coverage validation
├── profiles/diagnostic.json
├── expected/                     # authored outcomes and bound oracle records
├── schemas/                      # contracts' record validation
├── proofs/Assurance034/           # imported premises, composition, countermodels
├── tests/                        # contract, integration and recorder tests
└── private/                      # ignored source/build/temp cache; not evidence authority
```

**Structure Decision**: The harness is isolated from production crates and earlier experiment workspaces. Public `behavior-engine` and `behavior-models` are the only semantic/model interfaces. A small worker exposes whole research operations; backend capture is a transport adapter, not another semantic engine. CLI operations and evidence formats are defined in contracts. Public history replay may do extra prefix work; actual timings include it.

## Phase 0: research resolutions

[research.md](research.md) records decisions, reasons, alternatives and primary sources for source pairing, fixture identity, public APIs, host enforcement, history reconstruction, formal reuse, sampling and resource recording. Three delegated read-only research reviews resolved technical unknowns. There are no unresolved technical planning clarifications.

Product questions about accepted authorities, recipient claims, onboarding budgets and finality remain explicit outputs to investigate across all three arrangements. They do not prevent building the comparison and are not silently decided by this plan.

## Phase 1: design and contracts

- [Data model](data-model.md): source and requirement provenance, six claim classes, checked-basis lifecycle, segment boundaries, observations and decision states.
- [Assurance contract](contracts/assurance.md): A/B/C premises, six claim classes, eight situations, formal target/countermodel inventory and complete boundary-control dispositions.
- [Evidence contract](contracts/evidence.md): typed artifacts, exact subject/identity bindings, separate semantic/assurance/operational statuses, source/output DAG and validation invariants.
- [Campaign contract](contracts/campaign.md): fixed ceilings, actual workloads/expected outcomes, complete timing endpoints, cold conditions, interruption and archival rules.
- [CLI contract](contracts/cli.md): research supervisor/worker operations, machine-readable results and exit behavior.
- [Quickstart](quickstart.md): commands and expected validation outcomes after implementation; not evidence of work already run.

Post-design review confirms these preserve the constitution and all FR/SC obligations. No production contract or old evidence is changed.

## Execution gates for the later implementation

1. **G0 — Provenance and contracts.** Produce the eight-category origin register, identify all required sources and trust alternatives, freeze the 24 comparison cells and fifteen controls. Unsupported source attribution remains unresolved. Test schema/classifier rejection before implementation.
2. **G1 — Exact public pairing.** Resolve locked public dependencies and fixture identities; preflight actual public API availability and fresh Safety certification/checking. A mismatch does not trigger a private-API or different-Core fallback. Preserve a bounded failure assessment.
3. **G2 — Assurance argument.** Kernel-check new composition and reused reachable proof closure, exact proposition types, axiom audit, fresh kernel replay and countermodels. Incomplete formal evidence cannot authorize a positive universal claim.
4. **G3 — Real A/B lifecycle.** Run valid start→activation→eight-event lifecycle→fresh B history check→resident continuation/re-establishment. Exercise all controls and the separately certified command variant. Demonstrate uncontrolled-writer and migration gaps honestly. Memory publication remains non-durable.
5. **G4 — Bounded cost discrimination.** Run sequential cold roles and six growth cells only after subject/correctness gates. Record all lifecycle costs and resource scopes. Reuse C's exact negative evidence; do not generate another C proof trial.
6. **G5 — Independent assessment.** Close all handles, validate archive hashes in a fresh process, verify 24 cells and fifteen controls have explicit dispositions, check semantic determinism, assess every FR/SC and produce a supported/conditional/rejected decision with remaining product choices. Investigation completion does not mean implementation of a new Core.

All code follows test-first, standalone tests, fmt and Clippy with warnings as errors. During implementation run the repository's required `scripts/gates.sh` with a private `CARGO_TARGET_DIR` so frozen binaries cannot be overwritten. Gates consume declared budgets; a failure/exhaustion is recorded and never hidden by a scoped pass. No integration/release readiness is claimed from research-only checks.

## Requirement traceability

| Requirements | Planned artifacts and gates |
| --- | --- |
| FR-001–FR-002, SC-001 | Source catalogue and requirement-origin register; G0; evidence contract. |
| FR-003–FR-009, SC-003/SC-006/SC-008 | Assurance/data model, formal targets and fifteen controls; G2–G3. |
| FR-010–FR-014, SC-002/SC-005 | A/B/C × eight situations and separate endpoint/timing definitions; G0/G3/G4. |
| FR-015–FR-019, SC-004–SC-006 | Frozen campaign, real workers, raw observations, proof and artifact checks; G1–G5. |
| FR-020–FR-022, SC-001/SC-006–SC-008 | Primary-result reuse assessment, complexity comparison and final decision; G0/G2/G5. |

The next workflow step is `speckit-tasks`; this plan does not generate its task list or run the implementation.
