# Implementation Plan: Portable Source Locations for Binding Construction

**Branch**: `027-source-location-portability` | **Date**: 2026-10-16 | **Spec**: [spec.md](spec.md)

**Input**: `/home/kalle/repos/behavior-ir-core-027/specs/027-source-location-portability/spec.md`

**Working directory**: `/home/kalle/repos/behavior-ir-core-027`. Baseline `a24b65d26efaf62342daf5ab0f455540dfd61ed1`. Feature 026 / PR #32 is independent. Planning ends after design; tasks and production implementation are separate phases.

## Summary

Apply the accepted absolute-root rule to the two existing Builder workflows: infer roots from final-IR absolute source filenames, preserve every non-absolute filename/marker verbatim, and never derive a source anchor from the environment. Correct shared private root/render helpers and the omitted Rescale child traversal. Keep public signatures, semantic hashing, raw-wire admission, canonical record rules and all replay boundaries unchanged.

The actual facade baseline has 26 contract failures across 30 rows, while all reads evaluate to 42 and replay. Legacy ad hoc record IDs vary across checkout prefixes; v2 already strips that provenance from authoritative record content. [research.md](research.md) records observations, alternatives, compatibility and proof arguments. Already-correct v2 identity behavior is reused. A scoped spec consistency qualification distinguishes already-correct absolute-only output from previously skipped nested provenance.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, pinned by rust-toolchain.toml; Python 3.13 only for evidence/custody tooling.

**Primary Dependencies**: Existing Rust standard path types, serde_json, Core construction/admission and behavior-engine facade. Existing Nix shell includes Z3 for unchanged full gates. No new production or test dependency is planned.

**Storage**: No new product persistence, database or document. Existing read evidence and archived fixtures remain immutable; planning/acceptance receipts are separate files.

**Testing**: Private root-law unit tests; new Core source_location_portability integration target; public-facade consumer target; existing semantic hash, read golden, profile/replay suites; unchanged full gates and exact-Git consumer.

**Target Platform**: Existing Linux Nix development/CI targets x86_64-linux and aarch64-linux. Native supported path grammar; no new foreign path parser or filesystem canonicalization.

**Project Type**: Rust semantic library/workspace, CLI and external public facade consumer.

**Performance Goals**: One caller construction/trace per definition. Two deterministic metadata walks and linear work in visited syntax plus source-path components; no filesystem I/O, extra admission/evaluation pass, solver call or read replay introduced into construction.

**Constraints**: All non-absolute strings verbatim, including `./`, `..` and repeated separators; explicit absent root; complete final-IR traversal; no rewrite of domain literals, old wire documents or archives; semantic hashes and historical identity stable. Do not move builder/admission/refusal phases. Keep signatures/exports/API inventory/locks/schemas/version constants unchanged.

**Scale/Scope**: Both Builder entry points; one shared private helper/walker implementation; scalar/projection and Legacy/v1/CommandIntents/v2 coverage. Fifteen FR, seven SC, six PO, thirteen story scenarios. Only builder.rs is expected to change in production; docs and focused tests are additive. Fresh provenance compatibility follows decision A; no relative-source anchor scheme is introduced.

## Constitution Check

Pre-research gate: PASS. Post-design gate: PASS. These assess the proposed design, not unexecuted implementation gates.

| Principle / constraint | Pre-research decision | Post-design evidence |
| --- | --- | --- |
| I — Deterministic Core | PASS: supplied syntax and native lexical path rules only | R2/R3, contracts/source-locations.md; no environment or filesystem-derived roots |
| II — Validated data | PASS: retain typed construction/admission | Typed Loc walker, literal exclusion, unchanged validation and wire boundary |
| III — Test-first | PASS: relevant behavioral RED required before each correction | Actual baseline status 1 retained; focused helper/verbatim/Rescale tests must separately fail before production edits |
| IV — Reproducibility/replay | PASS: profile-specific historical evidence remains authoritative | R1/R4/R6; baseline facts-only replay 30/30; future both-mode historical and twice-run controls |
| V — Explicit state/audit | PASS: absent root explicit internally; exact provenance/record domains distinguished | data-model.md, baseline source/lock/output hashes and retained final receipts |
| VI — Simplicity | PASS: fix existing shared private helpers | No new public abstraction, dependency, crate, hash domain or product runtime AI |
| Technology | PASS: pinned Rust, safe code, typed existing errors | No new unsafe/unwrap in production, locks unchanged; fmt/clippy/full gates remain required |
| Workflow | PASS: specify → clarify → plan → tasks → implement | This delivery creates design/evidence only; no task completion, merge, release or pin action |

## Project Structure

### Documentation (this feature)

```text
specs/027-source-location-portability/
├── spec.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── contracts/
│   ├── source-locations.md
│   └── validation.md
├── evidence/
│   ├── baseline-run.json
│   ├── baseline-observations.json
│   ├── baseline-Cargo.toml
│   ├── baseline-Cargo.lock
│   ├── baseline-stderr.txt
│   ├── protected-baseline.json
│   └── probes/baseline.rs
└── tasks.md                         # generated later by speckit-tasks
```

### Source Code (repository root)

```text
crates/behavior-core/src/builder.rs  # shared root/render helpers; complete typed Loc traversal
crates/behavior-core/tests/source_location_portability.rs  # new complete source matrix
consumer/tests/source_location_portability.rs             # new public-only one-pass workflow
crates/behavior-core/tests/{builder,hash_properties,read_admission,read_soundness,
  read_goldens,record_validation,read_replay,read_replay_integrity,
  strict_profile_replay,replay_evidence_authority}.rs       # reused existing checks
crates/behavior-store/tests/strict_profile_replay.rs       # reused historical Store replay
README.md                            # link to source-location contract
docs/source-locations.md            # new consumer guide and before/after examples
docs/versioning.md                  # conservative 0.x minor-class assessment
```

**Structure Decision**: Private construction correction in the existing Core module. Core integration tests own exhaustive typed cases; the consumer owns independent public reachability and end-to-end behavior. No shared generic test framework or new production module is needed. Existing archive checks remain their authoritative owners. Preserve `read.rs`, wire decoding, serializers, hash/version rules, Store implementation, API inventory, locks and `scripts/gates.sh`.

## Phase 0 — Research and compatibility

Complete: [research.md](research.md), actual baseline probe/captured dependency lock, and 1,127-file protected inventory. Root selection, verbatim behavior, traversal, raw-wire/replay separation, diagnostics, test ownership and release classification are resolved. User-visible automatic semantics are fixed by decision A; explicit-root handling can continue for absolute filenames only.

Baseline probe status 1 is expected evidence of missing source behavior, not feature acceptance. Both existing profiles' semantic evaluation remains successful. No production change has been made. Pure-source inspection findings, notably omitted Rescale recursion and diagnostic sorting, are labelled as such.

## Phase 1 — Design and contracts

Complete: [data-model.md](data-model.md), [source contract](contracts/source-locations.md), [validation contract](contracts/validation.md), [quickstart.md](quickstart.md).

The correction has three production responsibilities: absolute-only optional root inference; exact non-absolute string pass-through; complete exhaustive typed expression traversal. Keep those changes at the existing construction seam. No new field, signature or format is required. The source contract defines every input/output boundary; the validation contract assigns C027-01–12, all FR/SC/PO and all 13 story scenarios.

## Implementation sequencing for task generation

1. Verify baseline/tools/resources; preserve source/fixture/schema/API/lock inventory and checklist. Review independent expected paths before executing corrected code.
2. Write and execute focused missing-behavior assertions for mixed roots, all-relative/raw-spelling preservation, explicit-root non-absolute behavior and Rescale final-IR recursion. Record actual source/input/command/status/log hashes. Existing correct behavior is characterized GREEN. Each production correction waits for its relevant observed RED; compiler/setup failures do not qualify.
3. Correct only shared private Builder helpers and typed traversal. Rerun the same assertions GREEN. Keep raw wire/replay untouched. New-output expectations come from the authored contract, not observed corrected output.
4. Complete the Core matrix and the facade-only end-to-end consumer, including diagnostics, semantic mutation controls, own-profile fresh Core and Store replay, and absence of read-induced Store writes. Reuse existing historical suites and verify original custody hashes without refreshing archives.
5. Document paths and profile-specific identity consequences, relative-anchor non-goal and release classification. Check requirement/scenario crosswalk and allowed file boundaries.
6. Commit reviewed implementation to a clean candidate; run unchanged full gates, then exact pushed-revision consumer with matching CLI and actual temporary manifest/lock capture. Review evidence outside frozen source and record completion metadata separately. Any implementation change after freeze starts acceptance on a new candidate.

No tasks.md is created here. No PR, merge, issue closure, release/version/tag or downstream dependency change is performed by this planning command.

## Complexity Tracking

No constitution violation or additional complexity exception is required. Completing the existing Rescale traversal is necessary to satisfy final-IR source collection; adding a public walker, configurable policy object or another normalization layer is rejected as unnecessary.
