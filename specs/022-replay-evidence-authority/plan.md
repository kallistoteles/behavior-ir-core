# Implementation Plan: Replay Evidence Authority

**Branch**: `022-replay-evidence-authority` | **Date**: 2026-10-12 | **Spec**: [spec.md](spec.md)

**Input**: Clarified Core specification at `specs/022-replay-evidence-authority/spec.md`.
**Research source**: `52a3ce71148f03625150b99aa67f3b39f18853cd`.
**Runtime baseline**: frozen 018 candidate `391017e536ff64ddf94999ec126bc71799952264`, including 017.
**Status**: Phase 1 design complete; runtime implementation and final validation remain future work.

## Summary

Make Core the single interpreter of recorded request evidence. Store adds exact
historical anchoring and checks the semantic claims established on the reproduced
path. Original rejected text remains authoritative evidence of the attempt;
placeholder fields cannot replace it, and a rejected snapshot cannot become state.

Extend the existing checked read preparation and factor invocation replay into
bounded internal preparation, reproduction and evidence-reconciliation helpers.
Private execution progress distinguishes successful snapshot/request decoding,
resolution and body evaluation. It is produced by the actual reference computation,
not inferred from a recorded stage label. Store loads historical answers; Core
selects and compares the claims, profiles, origin and complete record evidence.

The design preserves formats, identities, facade APIs, Backend methods and fresh
execution. The agreed correction permits reproducible malformed-snapshot refusals
to match after independent historical anchoring. It does not certify their content.
See [research](research.md), [data model](data-model.md),
[boundary contract](contracts/replay-boundary.md),
[validation matrix](contracts/validation-matrix.md),
[proof obligations](contracts/proof-obligations.md) and [validation guide](quickstart.md).

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, pinned by `rust-toolchain.toml`.
**Primary Dependencies**: Existing serde/serde_json, thiserror, exact typed values,
canonical serialization/hashing and workspace crates; no new dependency or crate.
**Storage**: Existing `Backend` contract and immutable Store history; no new method,
persisted replay token, cache authority or physical storage requirement.
**Testing**: Existing Cargo unit/integration/property tests, fixture checksums,
external `behavior-engine` consumer, deterministic replay examples and shell tests.
Retained test-first RED runs precede every new implementation behavior.
**Target Platform**: Existing Nix-supported x86_64-linux and aarch64-linux environments;
existing CLI/static release targets remain unchanged.
**Project Type**: Rust semantic-kernel library workspace with Store integration, CLI
and separate supported-facade consumer.
**Performance Goals**: No latency target. Avoid imposing full state validation on
decode-only invocation paths. Claim reconciliation may require complete canonical
universes; do not promise constant cost or a fixed backend call trace.
**Constraints**: Read-only replay; exact historical/schema/profile binding; existing
error precedence and operational/evaluation error channels; no fresh bundle,
candidate certificate promotion or external dispatch.
**Scale/Scope**: Four named counterexamples, supplied-snapshot correction, all applicable
018 compatibility cells and 017 action/archive controls. No whole-kernel re-audit,
general replay framework, language extension or ecosystem dependency update.

## Constitution Check

The initial check against the [owning constitution](../../.specify/memory/constitution.md)
passed before research. The following recheck applies to this design, not to code
that has not yet been written or tested.

| Principle / gate | Design evidence | Initial | Post-design |
| --- | --- | --- | --- |
| I — deterministic core | Existing pure evaluator and canonical comparison remain reference; no AI/runtime external service. | Pass | Pass |
| II — typed boundaries | Checked opaque preparation and actual execution components; raw text stays at the existing decoder boundary. | Pass | Pass |
| III — test-first | Four planned regressions requiring retained semantic RED evidence plus controls; script and claim-check changes also require genuine RED before implementation. | Pass | Pass |
| IV — reproducibility | Existing profiles and canonical ordering; additive twice-run fixture protocol with exact case accounting. | Pass | Pass |
| V — explicit state/auditability | Components established by actual execution, independently anchored Store answers and scoped proof ledger. | Pass | Pass |
| VI — simplicity | Bounded helpers in existing Core/Store crates; no generic runtime, new dependency or persisted state. | Pass | Pass |
| Technology constraints | Pinned stable Rust/Nix, typed errors, no unsafe, no new floating-point semantics or justified production panic. | Pass | Pass |
| Required gates / review | All eleven owning gates and exact-revision consumer validation are required at implementation delivery. | Pass | Pass |

No constitution deviation is requested. Missing empirical closure is represented
as future work in the proof contract; this planning pass does not assert runtime soundness.

## Project Structure

### Documentation (this feature)

```text
specs/022-replay-evidence-authority/
├── spec.md
├── checklists/requirements.md       # Existing review-owned checklist
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── contracts/
│   ├── replay-boundary.md
│   ├── validation-matrix.md
│   └── proof-obligations.md
└── tasks.md                        # Future speckit-tasks output, not created here
```

Implementation will add the compatibility assessment, implementation-base record,
execution ledger, matrix coverage, source custody and targeted re-audit evidence
described in the validation guide. Do not create placeholder passing receipts.

### Source Code (repository root; existing files and proposed additions)

```text
crates/behavior-core/
├── src/read.rs
├── src/eval.rs
├── src/invocation.rs
├── src/invocation/replay.rs           # New private bounded replay helpers
└── tests/replay_evidence_authority.rs # New Core integration tests
crates/behavior-store/
├── src/store.rs
├── src/store/replay_tests.rs
├── src/store/replay_evidence.rs       # New private historical loading helpers
├── tests/replay_evidence_authority.rs # New Store integration tests
└── examples/replay_evidence_authority.rs
consumer/tests/replay_evidence_authority.rs
tests/fixtures/replay/022/
├── matrix.json
└── checksums.json                    # Plus independently captured fixtures
scripts/
├── determinism-check.sh              # Add the 022 check without replacing others
├── check-replay-evidence-determinism.sh
└── tests/test_replay_evidence_determinism.sh
```

**Structure Decision**: Keep interpreter logic beside the existing Core read and
invocation implementations. Store's private evidence loader does not introduce a
second evaluator or replace its existing public replay module. Cross-crate hooks
are internal, hidden integration items, absent from `behavior-engine` exports;
constructors remain private. Existing public record/execution types gain no
required field. Tests exercise supported facade paths as well as private invariants.

## Implementation Sequence

1. Freeze and document the actual starting revision and the intentional compatibility
   correction. Preserve existing 017/018 fixtures and evidence. Write and retain
   failing assertions for all four counterexamples and the selected snapshot policy,
   after legal positive controls. Passing limitation tests are not RED evidence.
2. Extend checked read preparation to retain the selected original request and expose
   private execution progress. Factor invocation origin/profile/refusal selection and
   complete envelope comparison into Core helpers. Keep historical check ordering.
3. Replace Store's echo reconstruction and intent-only archive interpretation. Establish
   independent historical anchors, then reconcile only claims established by the
   reproduced path. Use direct fallible backend loading and Core's typed comparison.
4. Preserve ordinary binding/evaluated reads, current actions and 017 archived-action
   branches. Reuse existing query definitions and historical registries. Retain error
   categories, evidence precedence and read-only authority guards.
5. Add bounded adversarial/property/metamorphic cases, facade consumer tests, captured
   022 fixtures and deterministic protocol checks. Correct the two explicitly identified
   live baseline expectations; preserve historical fixture bytes and receipts.
6. Conduct a targeted re-audit against the proof obligations. Commit all tracked
   implementation, fixtures, reports and task bookkeeping; freeze that SHA. Run canonical
   gates and exact-revision consumer checks with an external immutable receipt.

Each step's new deterministic implementation is preceded by relevant failing tests.
Steps are dependency boundaries for future task generation, not completed tasks.

## Compatibility and Delivery

022 alone is patch-class under the [existing 0.x policy](../../docs/versioning.md):
it restores an existing replay contract without changing identities, formats, facade
signatures or verifier outcomes. Store replay's intentional `false` → `true` correction
must be disclosed. A delivery also containing 017 retains 017's minor classification.
If implementation requires a protected contract change, reassess before making it.
Planning selects no release number, tag, publication or ecosystem pin.

The pre-implementation assessment must explicitly address the same-minor-line
“identical results” [compatibility promise](../../docs/versioning.md#compatibility-promise).
The proposed patch classification follows the existing corrective-replay precedent:
restore the specified reference interpretation while disclosing changed buggy Store
outcomes. Do not claim identical observed behavior or silently weaken that promise.

Integration remains 017 → 018 → 022 → 019 → 020 → 021. Development may proceed on
this isolated branch before 018 merges. Changed dependency or merge/squash/rebase
SHAs require validation of the actual new delivery revision. The 018 receipt does
not attest 022. Preserve the 016 audit and frozen 018 reports as prior evidence.

## Parallel Work Boundaries

Use one Core writer for shared read/invocation/eval changes. A Store writer can
research historical evidence and write independent RED controls concurrently,
then integrate after Core's checked interface is fixed. A fixture/consumer writer
can capture baseline records and build protocol tests in disjoint files. Coordinate
ownership before editing shared source, fixture manifests or gate hooks.

Serialize canonical gates and the final receipt against one frozen checkout. A
separate reviewer should assess claim coverage and authority guards after integration;
its evidence cannot replace required test execution. This plan permits parallel
agent work without parallel mutation of the same semantic boundary.

## Complexity Tracking

No constitution violations. The private progress/claim objects are needed because
record labels and normalized echoes cannot establish decoding success. They are
bounded to current replay paths, reconstructible per call and never persistent.

Historical genesis resolution can inspect all seed entities; later history checks
retain endpoint/header validation and immutable-backend premises, not an implicit
full-prefix audit. Historical schema lookup can traverse later migrations. Explicit
universes, incoming-reference sets and query claims can require O(n) canonical
source inspection. Existing ordinary read/body snapshot validation can still cost
O(n) when cold. These costs are documented obligations, not a performance defect
or an excuse to trust an incomplete index.
