# Implementation Plan: Complete Parent Snapshots for Binding Conformance

**Branch**: `026-binding-conformance-snapshots` | **Date**: 2026-10-15 | **Spec**: [spec.md](spec.md)

**Input**: Clarified feature 026 and [Core #29](https://github.com/kallistoteles/behavior-ir-core/issues/29).

**Pinned research baseline**: `a24b65d26efaf62342daf5ab0f455540dfd61ed1`, tree `ef2f503f4c3abd6d7ab5b913ff3d3bd3fcf6fb35`. Source version 0.13.0; this is main after PR #30, not the published 0.13.0 release commit.

## Summary

Deliver a separately identified current binding corpus for the five unchanged modules, with ten explicitly authored complete worlds, independently specified full current decision records, deterministic request generation and executable conformance checks. Completeness, observation consistency, parent validity and the action's semantic outcome are separate obligations.

Preserve the old binding files, source requests, expectation tables, fixture README and **historical generator**. All appear in feature 017's archive inventory. Add a current-only generator and current consumer navigation instead of extending the frozen generator or granting another historical-file exception.

Use exact equality of the existing current semantic record (`DecisionRecord::as_json()`), with no additional normalization. Core already detaches diagnostics. Author all ten complete expectations before executing corrected requests; actual evaluation output is evidence, never an expected-result generator. Reuse existing public Snapshot decoding and validated Store initialization to establish consistency and parent validity without adding a Core primitive.

Make the actual current requests pass workspace facade tests, an external Git consumer and an archive-contained CLI runner. Extend release-check's existing conformance step without changing evaluator code, public surface, formats, release asset schemas, versions or tag behavior. Planning does not implement or publish a release.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024; Python 3.13.15 from the pinned Nix shell for fixture generation and subprocess validation; existing Bash/GNU tar/gzip release tooling. Metadata inspection confirmed Rust 1.98.1, Python 3.13.15 and Z3 4.16.0 without a build or test run.

**Primary Dependencies**: Existing `behavior-engine` facade, `serde_json`, and Python standard library. No new production dependency, crate, public API, general normalizer or evaluator. Existing pinned Z3 is required for the full repository gates; the ten binding cases themselves do not need SMT.

**Storage**: Additive checked-in JSON/Markdown/scripts under `tests/fixtures/bindings/current/`, one adjacent current generator, and temporary evidence/output directories. Preserve all archived bytes and existing lockfiles.

**Testing**: Shared facade-only test support called by new workspace integration and external-consumer targets; actual CLI evaluation/replay; generator custody/inventory checks; same-decision comparator mutations; extracted production archive/check step; unchanged `scripts/gates.sh` and exact-revision `scripts/check-consumer.sh --rev SHA`.

**Target Platform**: Existing supported library/CLI platforms. Ordinary Linux/Nix validation uses the candidate debug CLI; actual static x86_64 Linux musl release validation remains the existing release workflow. No platform expansion.

**Project Type**: Five-crate workspace plus external consumer. Current conformance data and a Python CLI orchestrator are distributed in the existing conformance archive.

**Performance Goals**: Fixed ten-case corpus; no runtime SLA or throughput claim. No new whole-program work in production. Full-record comparison and fixture validation are linear in the bounded input/output size; package tests reuse a built CLI instead of requiring a release build.

**Constraints**: No inferred empty universes; no request repair at execution; no record-field stripping; no runtime-derived expectation oracle; no historical rewrite; no new commands or identity-history assertions; no added evaluator phase or fallback. Test-first and all existing quality gates remain mandatory.

**Scale/Scope**: Five existing modules, ten behavioral cases, three required invalid-world controls, bounded comparator/inventory negatives and one current distribution path. Review source uses feeding this corpus, not every unrelated fixture in Core.

## Constitution Check

| Principle / constraint | Before research | After design |
| --- | --- | --- |
| I deterministic Core | PASS: data/test correction only | PASS: no AI/runtime semantic changes; explicit fixed worlds |
| II validated boundaries | PASS: retain all input checks | PASS: strict fixture loading, exact type-domain check, existing Snapshot and Store validation; no repair |
| III test-first | PASS: implementation deferred | PASS: independent oracles and real ten-case runtime RED; each helper/generator/runner change requires its own executed relevant RED and same-assertion GREEN; US2 controls execute before corrections; production packaging retains its separate RED barrier |
| IV reproducibility/replay | PASS: pin source and archive | PASS: twice-generation, full-record equality, same-CLI replay, exact consumer and package provenance |
| V explicit state/auditability | PASS: explicit parent and effects | PASS: parent/child worlds, stage-specific failures and case-labelled receipts; no secret-bearing fixtures |
| VI simplicity | PASS: reuse existing semantics | PASS: fixture-only contracts, one shared Rust test helper, standard-library runner; no new crate/API/evaluator |
| Technology/error discipline | PASS: pinned toolchain/dependencies | PASS: no production assertions or unsafe code added; test failures include case and path |
| Workflow/quality gates | PASS: clarified spec before plan | PASS: `gates.sh` unchanged; extend its existing targets and preserve release steps 1–4 |

No constitution exception is needed. These results approve the design, not future execution results.

## Phase 0 — Research completed

[research.md](research.md) resolves the active layout/generator, explicit worlds, parent proof, independent oracle, exact comparison, current/historical custody, packaged execution and revision provenance. Three read-only research reviews inspected the source; no application code, fixture or test implementation was edited and no conformance build/test was run during planning.

The earlier ten-case reproduction establishes the symptom. It is not a substitute for implementation's written/reviewed regression tests and recorded runtime RED. Proposed complete worlds are source-reviewed designs, not claimed GREEN executions.

## Phase 1 — Design completed

- [data-model.md](data-model.md): corpus inventory, explicit worlds, current requests, full expectations and run receipts.
- [current-corpus contract](contracts/current-corpus.md): exact additive layout, authoring/generation boundary, source roles and world membership.
- [semantic result contract](contracts/semantic-results.md): identity comparison over full semantic JSON, exact fields, parent/child proof and meaningful mutations.
- [validation contract](contracts/validation.md): conformance cases, negative phases, PO/FR/SC/AC mapping, archive execution and acceptance provenance.
- [quickstart.md](quickstart.md): prerequisites and executable post-implementation checks; planned targets are explicitly labelled.

All eight proof obligations have a concrete enforcing/checking design. No unresolved product or semantic contract remains. Concrete tasks are the next phase.

## Implementation sequence for task generation

1. Pin source/tools and record module/archive/source digests. Inventory each source use as historical, current adapted or intentional negative. Write/review the independent parent/child-world and full-record expectations using module rules and static admission identities. Write a baseline-compatible probe and observe all ten original raw requests fail their intended behavioral expectations with `INVALID_INPUT/INVALID_STATE_SNAPSHOT`; retain inputs, source and real statuses.
2. Write/review the workspace/external facade contract tests and generator/inventory/comparator checks. Before implementing the shared helper or generator, execute their focused assertions and retain relevant observed RED with exact inputs, commands, statuses and logs; rerun the same assertions GREEN after each owner change. Helper contracts can use reviewed worlds/oracles directly before generated requests exist. Minimal fail-closed interface scaffolding may make a target executable, but must not implement the missing contract behavior. Missing files, compilation errors and unrelated dependencies are setup failures, not behavioral RED or the claimed runtime bug reproduction. Establish exact case/type domains and parent consistency/validity separately.
3. After its focused RED, add the current-only generator consuming explicit worlds and preserved source requests, and demonstrate the same focused assertions GREEN. Emit only new current request files. Keep independent expectations outside generator ownership; validate the generated requests without completion helpers.
4. Once generated requests exist, execute the packaged runner/determinism contract tests and retain relevant RED before implementing either owner. Add the packaged CLI runner, then rerun the same focused assertions GREEN, using full semantic record equality, exact ALLOW/DENY status and replay. Add the current runner/digests to the existing determinism target and prove all ten positive cases GREEN. Write/review and execute the separate invalid-world/comparison/inventory controls before any further checker correction; retain already-correct behavior as GREEN characterization, and require a relevant observed failing assertion before each necessary correction. Add the current README.
5. Add focused tests of the real conformance archive-production block and exact release-check step 5; extend step 5 after existing inventory/byte checks to call the extracted runner. Keep release steps 1–4, the four assets, manifest schema and existing script tests intact. Root README points to current examples; frozen fixture documentation remains unchanged.
6. Stage new fixture paths before positive packaging checks because production packaging uses `git ls-files`. Compare generated output twice and against checked-in bytes. Complete focused validation, freeze/push the clean candidate, then run full unchanged gates on that revision followed by the exact Git consumer with its matching candidate CLI. A receipt-scoped Cargo wrapper delegates to the real Cargo and synchronously copies the actual resolved manifest/lock before returning to check-consumer's cleanup. Keep final receipts outside the frozen source tree; completion metadata is separate.

Full static double-build/release validation is still required for a later release. A focused archive test with a debug CLI does not claim that result, and this feature does not tag, publish or replace a released archive.

## Project Structure

### Documentation (this feature)

```text
specs/026-binding-conformance-snapshots/
├── spec.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── contracts/
│   ├── current-corpus.md
│   ├── semantic-results.md
│   └── validation.md
├── quickstart.md
└── tasks.md                    # Next phase; not generated by plan
```

### Source Code (repository root)

```text
tests/fixtures/bindings/
├── <domain>.json               # Five unchanged modules
├── <domain>.request.json       # Historical pairs, unchanged
├── generate_current.py         # New current-only authoring entry point
└── current/
    ├── README.md               # Packaged current/old navigation and comparison contract
    ├── cases.json              # Ten-case inventory and static module identities
    ├── worlds.json             # Explicit parent and expected child worlds
    ├── requests/<domain>.<scenario>.json
    ├── expectations/<domain>.<scenario>.json  # Independent complete semantic records
    └── check.py                # Packaged CLI orchestrator, no evaluator logic
consumer/tests/
├── binding_conformance.rs      # External path/exact-Git wrapper
└── support/binding_conformance.rs # Shared facade-only test contract
crates/behavior-engine/tests/binding_conformance.rs # Workspace wrapper, same helper
scripts/
├── determinism-check.sh        # Add current cases to existing digest/check flow
├── release-check.sh            # Extend conformance step 5 only
└── tests/
    ├── test_binding_conformance.sh # Generator/runner/extracted archive/step tests
    └── test_release_check.sh   # Existing real step-4 test retained
README.md                      # Current-corpus link; already packaged
```

`tests/fixtures/wire/build_fixtures.py`, old modules/requests/expectations, `tests/fixtures/README.md`, archive manifests/captures, production crate sources, `api/engine-surface.txt`, lockfiles, `scripts/gates.sh`, release-build and release-order semantics are preserved. The proposed paths are exact task targets, not files claimed to exist yet.

**Structure Decision**: Keep authoring and runnable data within the existing distributed fixture tree. A test-only helper under consumer support is shared by the workspace facade integration via an explicit relative module path; the helper accepts the fixture root, so copied `--rev` consumers require no missing workspace source file. Do not add a crate or dependency to share these tests.

## Complexity Tracking

No constitution violations or exceptions. A separate current generator is necessary because the historical generator is itself frozen evidence. Ten full declarative expected records are finite independent test data, not a second evaluator. Existing public validation boundaries avoid a new validation primitive or public surface change.
