# Implementation Plan: Accurate Admission Version Metadata

**Branch**: `020-admission-version-metadata` | **Date**: 2026-10-13 | **Spec**: [spec.md](spec.md)

**Input**: Clarified Core020 specification and accepted D-020-001; inspected base `af8a0364170a82899fb69c7e18b151ddea8ebdd3`.

## Summary

Correct existing fresh-module reporting so decoder acceptance, `accepted_wire_ir` and unsupported-version support text all describe `{0.4, 0.5, 0.6, 0.7, 0.8}`. Introduce one private ordered version/profile table at the current decoder dispatch boundary and derive both reporting outputs from it. Preserve profile selection, error precedence, historical inventories and semantic identities. Deliver test-first evidence through existing Core/CLI targets and a facade-only consumer target; document consumer adaptation and minor-class release assessment.

This plan covers Phase 0 research and Phase 1 design. It creates no implementation tasks, source changes, tests, fixtures, release or ecosystem pin update. Future implementation evidence must be recorded separately.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, pinned by `rust-toolchain.toml` and the locked Nix flake.

**Primary Dependencies**: Existing `serde`, `serde_json`, `thiserror` and workspace crates; existing Cargo test/proptest tooling where already applicable. No new dependency, crate or public export.

**Storage**: No new stored state, cache, configuration or document. A compile-time internal table describes existing module decoder profiles.

**Testing**: Existing Core `versions`, CLI `cli_engine_info`, historical/hash/serialization suites, plus planned `consumer/tests/admission_versions.rs`; canonical `scripts/gates.sh` and exact Git facade consumer validation.

**Target Platform**: Existing Core library/CLI platforms in `flake.nix`; required pinned Nix validation from the owning Core root. Static Linux release packaging remains unchanged.

**Project Type**: Deterministic Rust semantic kernel with supported `behavior-engine` facade and CLI.

**Performance Goals**: No performance feature or new benchmark. Selection/reporting traverses a fixed five-entry table; existing admission/evaluation complexity is unchanged.

**Constraints**: Accepted decision A; no public shape/API/error-code/CLI-status changes; exact version spelling; no admission expansion, historical reinterpretation, hashes/schema/record/version-rule changes, new backend contract or ecosystem override. Preserve the ad hoc read-document gate independently.

**Scale/Scope**: Five current module profiles, three existing drift locations, three incorrect test expectations, two reporting APIs and CLI output. Unknown/legacy/malformed versions and supported invalid bodies remain refusal controls.

## Constitution Check

Pre-research review: PASS. Phase 1 design review: PASS. These are design assessments, not executed build/test gates.

| Principle / gate | Design evidence |
| --- | --- |
| I — Deterministic Core | Exact string lookup and explicitly ordered finite descriptors; no runtime AI, clock, environment or external service in version selection. |
| II — Typed boundaries | Existing strict wire/header/body decoding is preserved. Internal closed profiles cannot introduce a default or permissive version interpretation. |
| III — Test-first | Corrected metadata/refusal regressions and positive controls must compile, collect and demonstrate behavioral RED before production edits. Existing wrong goldens change in that test-first phase, not after an implementation is written. |
| IV — Reproducibility/replay | Stable ordering, repeated canonical outputs, unchanged frozen assets and same-profile replay/hash/serialization controls. |
| V — Explicit state/auditability | No new persistent or public state; requirements map to observable outcomes and retained revision-bound evidence. |
| VI — Simplicity | One small private table/profile selection, existing tests/scripts and one focused facade target; no generalized capability engine or new crate/dependency. |
| Technology/boundary | Pinned Rust/Nix, no unsafe/panicking untrusted path, no lockfile change or facade export; public-surface/boundary gates remain unchanged. |
| Governance/versioning | Clarify precedes plan; tasks/implementation follow separately. Existing-contract correction is minor-class, with migration notes but no selected number/tag. |

No constitutional exception is required. Discovery that profile behavior or a public structure must change requires revisiting scope before implementing that change.

## Project Structure

### Documentation (this feature)

```text
specs/020-admission-version-metadata/
├── spec.md
├── decisions.md
├── plan.md
├── research.md
├── data-model.md
├── contracts/
│   ├── admission-reporting.md
│   └── compatibility-validation.md
├── quickstart.md
└── checklists/requirements.md
```

`tasks.md` is produced only by the subsequent tasks phase. Implementation reports and evidence belong to the later execution phase.

### Source Code (repository root)

```text
crates/behavior-core/
├── src/wire.rs                     # private authority and existing dispatch
├── src/lib.rs                      # accepted_wire_ir projection
├── src/admit/mod.rs                # generic refusal support clause
└── tests/{versions,read_wire}.rs    # agreement / independent read gate
crates/behavior-cli/
└── tests/cli_engine_info.rs         # CLI metadata, admission and refusals
consumer/tests/
├── admission_versions.rs           # planned facade-only acceptance target
└── resulting_state_validity.rs     # narrow correction of wrong expectation
docs/versioning.md                  # current meaning and migration/release notes
api/engine-surface.txt               # preservation control; not edited
tests/fixtures/                     # existing witnesses/frozen controls; not edited
scripts/{gates,check-consumer}.sh    # canonical validation; not edited
```

**Structure Decision**: The owner is Core. Keep authority next to module decoding in `wire.rs`, with at most crate-private visibility needed by metadata/admission. Existing facade/CLI delegation needs no production edit. Preserve historical constants and the separate `wire_ir` array; no new public registry or schema.

## Phase 0 — Resolved research

[research.md](research.md) records decisions, rationale and alternatives for private authority, document-kind boundaries, test-first coverage, frozen compatibility, consumers/release policy and revision provenance. Two read-only research agents inspected those independent boundaries. No design decision remains unresolved.

## Phase 1 — Implementation design

1. Define an ordered table pairing the five current exact constants with closed internal decoder profiles. The same lookup selects membership and the existing feature flags; no second string-membership match remains. Preserve header ambiguity checks and strict Wire 0.8 processing order. Map command semantics from the selected profile, never presence of command fields.
2. Enumerate table keys for `accepted_wire_ir`; leave all other metadata fields and historical inventories untouched. Keep both `behavior-engine` reporting functions and the CLI delegation unchanged.
3. Render only the generic unsupported-version support list from those same keys. Preserve the supplied-version evidence, error structure, rounded-arithmetic migration guidance and minimum-feature diagnostics. Do not add a context-specific read error or widen the independent read decoder.
4. Extend the existing Core/CLI reporting tests with independent expected-set assertions and actual admission witnesses; add facade consumer acceptance. Exercise legacy, unknown, noncanonical, missing/non-string/duplicate version keys, invalid bodies, output determinism and the read gate. Use in-memory/temporary mutations and existing fixtures.
5. Compare unchanged metadata, admitted semantic outputs, identities, frozen schemas/fixtures and historical replay with the integrated baseline. Allow only the specified fresh-list and generic support-text differences. Document ecosystem and external exact-text adaptation without changing a pin or claiming that uninspected consumers are unaffected.

[data-model.md](data-model.md) defines the finite objects and relationships. [Admission reporting](contracts/admission-reporting.md) defines public observations and preserved decoder boundaries. [Compatibility and validation](contracts/compatibility-validation.md) maps requirements, evidence and release consequences. [quickstart.md](quickstart.md) describes future runnable validation.

## Execution order and evidence

Tests and valid controls are authored/reviewed first; retain collection and actual metadata/refusal failures against the named source base. Compilation failures are not behavioral RED. Production edits then replace dispatch membership and its two projections as one small coherent change. Run focused GREEN and existing relevant compatibility controls before final canonical gates.

Do not run concurrent tests against a checkout being edited. If later implementation uses separate agents, each file has one writer and tests precede its production edits. Finalize source, tests, reports and task bookkeeping, then commit/push and freeze the delivery SHA. Validate that exact clean revision with its own CLI and actual Git facade resolution. Final CI/external receipt binds repository, SHA, commands/statuses, pinned environment/toolchain and evidence locations without modifying the frozen checkout. A subsequent tracked edit or different merge/release SHA requires fresh final checks.

Targeted closure concerns F-COORD-011 / RC-004 only. Passing this feature cannot establish full Core soundness, fix the remaining audit queue, attest an unpublished release or validate the ecosystem against a changed pin.

## Complexity Tracking

No constitutional violations or added architectural complexity require an exception. A generalized version-negotiation system, new contract version and admission expansion were rejected as unnecessary.
