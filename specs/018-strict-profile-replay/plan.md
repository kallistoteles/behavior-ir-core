# Implementation Plan: Strict and Profile-Preserving Store Replay

**Branch**: `018-strict-profile-replay` | **Date**: 2026-10-11 | **Spec**: [spec.md](spec.md)

**Input**: Clarified Core018 specification; user confirmed D018-01 A and D018-02 A.

**Status**: Research, design, task generation and cross-artifact analysis complete;
the approved A1/U1 corrections are incorporated. Implementation and runtime
validation have not started. [tasks.md](tasks.md) defines the implementation work.

## Summary

Correct RC-002 / F-PERSIST-001 and F-TRUST-001 by sharing the existing Core read
replay preparation and supported recorded-profile selection with Store replay.
Strict decoding must reject ambiguity before object reduction. Store must then
reconstruct the exact historical bindings and facts and evaluate the recorded
read profile, including reads inside invocation records. Fresh reads retain
their emission defaults. `matches` and optional string `diff` remain unchanged.

Cover the whole documented compatibility domain through the explicit
[support matrix](contracts/support-matrix.md), retaining unsupported refusals
and historical limitations. Preserve the three audit counterexamples as named
regressions. The corrected boundary remains internal implementation machinery;
it introduces no semantic capability, format, hash domain or Backend requirement.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, pinned in `rust-toolchain.toml`.

**Primary Dependencies**: Existing `behavior-core`, `behavior-store`,
`behavior-engine`, `serde`/`serde_json`, typed errors and canonical hashing.
Existing `proptest` is available for tests. No new dependency or crate.

**Storage**: Existing `Backend` contract, immutable canonical Store history and
historical entity/schema access. Use `InMemoryBackend` and a fault/counting test
wrapper for evidence; no new storage operation or physical format.

**Testing**: Cargo unit/integration/property tests, immutable read/invocation
goldens, proposed matrix-driven Core/Store tests, facade-only external consumer,
existing Nix gates and repeated canonical-output determinism checks.

**Target Platform**: Existing Nix Linux development/CI environment and supported
Rust library/CLI targets, including the release's static x86_64 musl CLI.

**Project Type**: Deterministic Rust semantic kernel with a public facade and CLI.

**Performance Goals**: No new latency target. Preserve required snapshot and
record materialization; do not replace semantic work with a performance shortcut.
Decoding traverses document bytes and Store replay retains existing historical
reconstruction costs. Backend traces are outside semantic equivalence.

**Constraints**: Test-first production changes; exact historical interpretation;
unambiguous raw evidence; unchanged facade, formats and identities; mandatory
Store obligations; read-only replay; no global tightening of frozen requests.

**Scale/Scope**: Nine supported matrix rows, explicit refusal families and
boundary limits. Only read-v1/v2 and supported read invocation outcomes are
corrected; action/migration replay receives collateral compatibility controls.

**Research provenance**: Planning checkout `22459889e982068722616edead4132283d6cb7e4`,
based on main source revision `5949cb111cd6c5af34b0fc9083e78810df450fce`.
Immutable audit016 remains evidence at
`b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`. See [research.md](research.md).

## Constitution Check

The pre-research and post-design checks below are design assessments. They do
not report runtime gates passing or establish future test-first compliance.

| Principle or gate | Before research | After design | How the plan satisfies it |
| --- | --- | --- | --- |
| I — deterministic Core | Pass | Pass | Existing pure profile evaluators; no external adapter, clock or AI evaluation. |
| II — typed boundary | Pass | Pass | Strict raw decode followed by a checked supported profile; ambiguity cannot disappear in a generic map. |
| III — test-first | Pass | Pass | Review, collect and execute the three regressions on the actual implementation base before production edits; record semantic RED/GREEN. |
| IV — reproducibility/replay | Pass | Pass | Frozen profiles, golden bytes and identities; matrix and twice-run output evidence. |
| V — explicit state/auditability | Pass | Pass | Exact Store/history/schema/behavior and binding evidence remain mandatory; read-only replay modes. |
| VI — simplicity | Pass | Pass | Factor current preparation/execution helpers inside existing crates; no generic replay engine or new dependencies. |
| Typed errors and no unsafe | Pass | Pass | Existing `ReplayResult`/`StoreError`; no unsafe, untrusted-input panic or blanket `FactError` recategorization. |
| Canonical gates/public boundary | Pass | Pass | Existing `scripts/gates.sh`, public-surface and facade consumer checks cover the final integrated revision. |
| Versioning and preserved history | Pass | Pass | Patch-class correction in isolation; immutable profiles/tags and separate017 minor-class effects. |

No constitution deviation is requested. Full test/gate execution belongs to
implementation, not this planning phase.

## Project Structure

### Documentation (this feature)

```text
specs/018-strict-profile-replay/
├── spec.md
├── decisions.md
├── clarification-review.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── tasks.md
├── contracts/
│   ├── replay-boundary.md
│   ├── support-matrix.md
│   └── proof-obligations.md
└── checklists/requirements.md
```

`tasks.md` records the generated, dependency-ordered implementation work; its
checkboxes remain incomplete until implementation and verification.

### Source Code (repository root)

```text
crates/behavior-core/src/{read.rs,invocation.rs,canonical.rs,record.rs}
crates/behavior-store/src/store.rs
crates/behavior-core/tests/strict_profile_replay.rs       # proposed
crates/behavior-store/tests/strict_profile_replay.rs      # proposed
consumer/tests/strict_profile_replay.rs                  # proposed
tests/fixtures/replay/018/                               # proposed
scripts/determinism-check.sh                             # existing gate entry
scripts/check-replay-determinism.sh                       # proposed018 hook
scripts/tests/test_replay_determinism.sh                  # proposed test-first gate coverage
crates/behavior-store/examples/strict_profile_replay.rs   # proposed fixture runner
scripts/check-consumer.sh                                # existing facade check
docs/{persistence.md,soundness-remediation.md,versioning.md}
```

**Structure Decision**: Keep preparation and profile interpretation in Core;
keep historical storage reconstruction in Store. `behavior-engine` remains the
unchanged supported consumer API. Cross-crate integration items may need Rust
`pub` visibility, with private fields and hidden documentation, but they are not
re-exported by the facade. Proposed files are design targets, not implemented files.

## Phase 0 — Research conclusions

[research.md](research.md) resolves supported profiles, decoder reuse, internal
sharing, diagnostic limits, test collection and delivery sequencing. Parallel
read-only research covered profiles, Store boundaries and evidence/delivery;
the primary agent consolidated the design.

Important conclusions:

- Accepted modules are Wire0.4–0.8. Ad-hoc read documents remain0.7 and may be
  admitted against compatible older modules; invocation reads are declared.
- Standalone replay already strictly decodes v1/v2 records. Historical request
  parsing is a separate contract and must remain frozen.
- `ReadRecord::from_json` is not a drop-in replay preflight: its eager shape/hash
  checks can change existing semantic first-difference reporting.
- Store must use actual historical values/facts rather than accepting the
  archived snapshot because standalone replay matched.
- Metadata advertising unsupported Wire0.1–0.3 is tracked by separate020; it
  does not grant support or expand018.

## Phase 1 — Design

### Shared replay preparation and execution

Factor existing strict read preparation into an internal immutable representation
that preserves current Core check order: raw decode, supported format/module
pair, exact BehaviorHash, declared/ad-hoc source, and recorded request selection.
Use a checked `ReadReplayProfile` with historical-v1/current-v2 alternatives;
unknown or incompatible formats cannot become a default fresh mode.
The checked value has private fields, including the exact module identity (or
an equivalent execution-time compatibility check). Reusing a selector with a
different module is refused. A publicly visible enum with freely constructible
variants alone is insufficient for the cross-crate invariant.

Core standalone read replay uses the same existing full evaluation and comparison.
Store read replay uses the prepared profile while deriving bound values and facts
at the recorded position. Factor private Store execution so fresh callers use
`Fresh`, and replay uses `ArchivedRead(checked_profile)`. Neither public evaluation
nor the public facade gets a caller-controlled historical-profile selector.

Inspect and document observational equivalence with the reference evaluator under
the same recorded profile, separately for every supported profile/version
combination. Equivalence between read-v1 and read-v2 is neither required nor
implied; each profile retains its historical semantics and evidence contract.

For invocation replay, preserve strict envelope preflight, reconciliation,
binding refusal/decode-evidence handling, metadata and full envelope comparison.
Pass the checked inner read profile into the existing resolved evaluator after
Store resolution. Read replay cannot create a candidate or promote a validation
certificate for an uncommitted state. Existing action branches remain intact.

[data-model.md](data-model.md) defines the internal representations;
[replay-boundary.md](contracts/replay-boundary.md) defines the unchanged public
contract and required internal behavior. No generic relational/delta runtime.

### Validation design

Each support row has a stable ID, contract provenance, expected interpretation
and applicable boundaries. The tests must require coverage of every supported
boundary/case and every selected refusal case, failing on missing or skipped
coverage. Standalone-only limitations are explicit, not silently treated as
Store matches. Preserve existing golden bytes; historical fixtures must come
from independently established historical evidence, not renamed current records.

Keep these dedicated regressions, with actual semantic RED before correction:

1. `historical_wire08_v1_read_must_replay_against_its_exact_store_position`.
2. `historical_wire08_v1_inner_read_must_replay_as_store_invocation`.
3. `store_replay_rejects_contradictory_duplicate_current_read_result`.

Add paired Core/Store profile cases, ambiguity mutations, historical refusal/error
cases, exact-coordinate/schema/behavior substitutions, performed backend errors,
Store immutability and unchanged consumer result-shape checks. Apply property and
metamorphic tests to formatting/key order, stable identity and no mutation, using
existing tools. A path-specific decoder explanation is not promised when the
existing decoder exposes only a key and line/column.

Workspace tests and facade consumer evidence must run through existing gates.
Extend the existing determinism path with fixture-driven018 output only after its
own meaningful test-first script regression. Compare repeated exit codes/output;
preserve existing digest keys and add new keys without rewriting old goldens.
The [quickstart](quickstart.md) separates existing commands from proposed targets.

### Integration and release treatment

018 has no mathematical dependency on017, but both touch invocation replay.
Select an explicit integration base for implementation: reviewed017 when stacking,
or updated main after017 merges. Keep the original018/audit anchors as provenance.
Planning does not rebase or merge this checkout. New018 regressions must show
fresh semantic RED on the selected implementation base; older-base results are
supplementary. Preserve017's archived decision0.4–0.7 branch and current decision0.8
controls. Re-run affected gates and facade consumer at the final integrated head.

Tracked reports identify tested source revisions known during their production
and supporting evidence locations; they MUST NOT attempt to embed the final commit
SHA of the commit containing those reports. Finalize and commit implementation,
fixtures, reports and task bookkeeping before freezing the delivery candidate.
Only verified pre-freeze work is marked complete in that snapshot; later
validation/completion is recorded outside it. Run final gates and exact-revision
consumer validation against the frozen commit in a clean candidate checkout.

Record repository, exact SHA, commands, exit statuses, environment/toolchain
identity and log/evidence locations in revision-bound CI or an external immutable
validation receipt, without modifying the frozen tracked checkout. Any subsequent
tracked source, report or bookkeeping change creates a new candidate requiring
fresh final validation. See [the validation guide](quickstart.md#4-run-canonical-gates-and-exact-revision-consumer-validation)
for the receipt lifecycle and post-freeze task accounting.

Validation of a delivery-candidate SHA does not automatically attest a later
merge, squash, rebase or release commit with a different SHA. If exact-revision
assurance is required for the published revision, that revision must receive its
own final validation even if its source tree is identical.

Under [versioning](../../docs/versioning.md),018 alone is patch-class: it restores
contracted replay and rejects ambiguous input without changing formats, hashes,
public API or verifier outcomes. A release including017 retains its separately
justified minor classification. No release number, version bump, tag, publication
or ecosystem pin change is performed by this plan. Unexpected contract changes
require revisiting the design/version assessment before implementation proceeds.

### Proof and closure evidence

[proof-obligations.md](contracts/proof-obligations.md) maps each obligation to
implementation and planned evidence. Targeted re-audit closes only F-PERSIST-001,
F-TRUST-001 and their relevant replay obligations; it does not claim whole-Core
soundness or repair evidence absent from v1. Audit016 remains immutable evidence.

## Complexity Tracking

No constitution violations or new dependency/engine are proposed. The checked
profile and shared preparation are the minimum cross-crate machinery needed to
prevent format substitution and decoding divergence while retaining Store trust.
