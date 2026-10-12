# Implementation Plan: Initial Store Creation Contract

**Branch**: `019-store-creation-contract` | **Date**: 2026-10-12 | **Spec**: [spec.md](spec.md)

**Planning checkout HEAD**: `b59eeb46615a250a68e2ad32c57afdbe67db6da9`;
the clarified specification is a local working-tree change outside that SHA.
**Inspected integration source**: `3179b13163cd2bc9134176b78029dd39a5a90c8f`
(completed 022, including 017 and 018).
**Status**: Design implemented; working-source evidence is in
[implementation-report.md](implementation-report.md). Final frozen-revision
validation belongs to the external receipt described in [tasks.md](tasks.md).

## Summary

Implement one current Backend creation contract: complete initial Store publication
is atomic, equivalent retries recover the same lineage, and established conflicting
identities are refused. Actual public state is Absent or Complete; uncertainty
belongs to the caller. Private staging is outside Store semantics.

Keep existing Backend/Store signatures. Factor the complete seed validator into a
private initialization product and verify original publication before returning
success. `Store::create` with original module/genesis provides identity-bound
recovery; module-free opening checks structural completeness and stays cold.
Advanced/migrated recovery preserves current history and cannot inherit the seed
certificate. Add shared conformance cases, designated mutants and actual durable
host creation-fault workers. This public Backend-contract change is minor-class
under the current 0.x policy; historical documents and language meaning are preserved.

See [research](research.md), [data model](data-model.md),
[creation contract](contracts/store-creation.md),
[conformance design](contracts/conformance.md),
[proof obligations](contracts/proof-obligations.md) and [validation guide](quickstart.md).

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, pinned by `rust-toolchain.toml`.
**Primary Dependencies**: Existing workspace crates, serde/serde_json, thiserror,
canonical hashing/MuHash and Store's existing proptest. No new dependency or crate.
**Storage**: Host-defined Backend; reference InMemory; test-only durable consumer
using a canonical snapshot, stable OS lock, file sync, rename and directory sync.
Physical layout remains host-specific, not a new Core persisted format.
**Testing**: Cargo unit/integration/property tests, named Backend conformance,
public-facade consumer and separate-process filesystem-host creation faults.
New behavior and deterministic fault tooling require observed RED before implementation.
**Target Platform**: Existing x86_64-linux/aarch64-linux Nix environments; durable
process tests disclose Linux/local-filesystem premises.
**Project Type**: Rust library/CLI semantic kernel with a host persistence contract.
**Performance Goals**: No new latency target; original-product checks may inspect
all seed material and relevant schema history. No constant-cost recovery claim.
**Constraints**: No public Creating state, capability negotiation, new Wire/hash/
record domain, general storage runtime, dispatch, historical rewrite or ecosystem
pin update. Errors do not imply rollback. Identity/normalization is profile-sensitive.
**Scale/Scope**: RC-003/F-PERSIST-002; O-PERSIST-012 specification separately from
O-PERSIST-004 empirical evidence. Two concrete Core-owned backends and wrapper
families; targeted creation re-audit, not a repeat of the whole 016 audit.

## Constitution Check

The initial check against the [constitution](../../.specify/memory/constitution.md)
passed before Phase 0 research. The post-design check evaluates this design, not
unwritten code or unexecuted tests.

| Principle / gate | Design evidence | Initial | Post-design |
| --- | --- | --- | --- |
| I — deterministic core | Existing seed validator/canonical identity; no AI or implicit inputs. | Pass | Pass |
| II — typed boundaries | Private candidate/publication witness; strict persisted decoding; operational errors separate. | Pass | Pass |
| III — test-first | Baseline retry/open/cache REDs; host fault-tool REDs before changes. | Pass | Pass |
| IV — reproducibility | Existing genesis profiles and canonical comparisons; bounded interleavings. | Pass | Pass |
| V — explicit state | Public state, caller knowledge and committed evidence distinct. | Pass | Pass |
| VI — simplicity | Existing signatures/factory; bounded helpers; no dependency/runtime/capability. | Pass | Pass |
| Technology | Pinned Rust/Nix; typed errors; no unsafe, new floating arithmetic or production panic requirement. | Pass | Pass |
| Delivery | All canonical gates, exact-revision consumer and external immutable receipt required. | Pass | Pass |

No exception is requested. Host honesty/durability and complete historical answers
remain explicit premises. Missing execution evidence is future work, not a pass.

## Project Structure

### Documentation (this feature)

```text
specs/019-store-creation-contract/
├── spec.md
├── decisions.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── contracts/
│   ├── store-creation.md
│   ├── conformance.md
│   └── proof-obligations.md
└── tasks.md                         # Generated speckit-tasks output
```

### Source Code (existing and proposed paths)

```text
crates/behavior-store/
├── src/lib.rs                      # Normative Backend docs; unchanged signatures
├── src/memory.rs                   # Candidate publication / equivalent retry
├── src/store.rs                    # Create/open integration and certificate lifecycle
├── src/store/initialization.rs     # Proposed private initialization helpers
├── src/store/creation_tests.rs     # Proposed private publication/cache unit tests
├── src/conformance.rs              # Named creation cases/private wrappers
├── tests/conformance.rs            # Designated creation mutants
├── tests/support/creation_backend.rs # Proposed private legal/fault fixtures
├── tests/creation_fixture_controls.rs # Proposed fixture activation tests
├── tests/creation_contract.rs      # Proposed success/error controls
├── tests/creation_recovery.rs      # Proposed history/profile/cache controls
└── tests/creation_properties.rs    # Proposed ordering/idempotence laws
consumer/tests/
├── support/durable_backend.rs      # Host publication/recovery durability barrier
├── store_creation.rs               # Proposed facade tests
└── store_creation_crash_recovery.rs # Proposed process workers/named windows
docs/
├── persistence.md
├── versioning.md
└── backend-creation-migration.md    # Proposed external migration guide
```

**Structure Decision**: Store owns seed meaning and publication verification;
Backend owns physical atomicity/durability. Factor existing validators and use
evidence rather than parsing host error strings. The durable consumer stays a
test host using only `behavior-engine`. Module-free opening has explicit structural
trust limits, not a second evaluator or a seed-validity certificate.

## Implementation Sequence

1. Preserve clarified documents; integrate completed 022 ancestry; record actual
   starting SHA and verify 017/018 inclusion. Preserve historical audit/fixture/
   receipt bytes. The old planning checkout is not the implementation baseline.
2. Establish legal controls and observed REDs for equivalent retry, advanced/migrated
   recovery, incomplete open, conflict evidence and certificate misuse. Record
   source revision, command, assertion, exit status and actual test collection.
3. Extract one authoritative initialization product; implement bounded create/open
   checks and stable error mapping. Respect publication races, profile normalization
   and operational failure channels. Initial certificates require published evidence.
4. Make InMemory candidate-then-publish and equivalent retry read-only. Extend
   shared conformance with creation interleavings and activated mutants; keep
   the public factory and existing cases.
5. Extend the durable host with lock-protected identity recovery and required sync
   barrier; add actual creation window workers, fresh-process observers and
   same-target races. Keep existing commit/command coverage. Fault tooling is test-first.
6. Complete inventory assessments, migration/version notes, property/facade tests
   and targeted proof re-audit. Commit tracked evidence/bookkeeping, freeze a SHA,
   then run final gates/consumer checks with an external immutable receipt.

These are future task boundaries, not completed implementation tasks.

## Compatibility and Delivery

Keep `Backend::create -> Result<(), BackendError>`, `Store::create -> R<Self>`,
`Store::open -> R<Self>` and `conformance::run(factory)`. Use existing
`StoreError::Contract` for stable `STORE_CREATION_CONFLICT` and `STORE_INCOMPLETE`.
Equivalent retry replaces already-created refusal; generic open gains structural
checks. These are disclosed public-contract changes despite identical signatures.

Classify as **minor under the current 0.x policy**: implementers must adapt to new
mandatory obligations and observable creation behavior. Select the numerical
release during delivery. 019 alone requires no Wire/document/hash/verifier version
change; combined releases retain other features' implications. Planning publishes no release.

Integration remains 017 → 018 → 022 → 019 → 020 → 021. Development may use an
explicit stacked branch before dependencies merge, but implementation must contain
the inspected 022 ancestor and be revalidated after base/merge changes. A 022 receipt
does not attest 019. Preserve 016 and published tags.

The ecosystem is a later external migration consumer. Do not change supported
pins/metadata, use tracked dependency overrides, or claim Python compatibility
before a corrected Core Release exists. Core's facade consumer validates Rust use.

## Parallel Work Boundaries

Fix private interfaces/assertions first; then use disjoint writers: Store semantics
and recovery tests; InMemory/shared conformance/mutants; durable host/consumer.
Declare ownership before shared edits. Independent research and RED controls may
run earlier. A separate review checks proof boundaries after integration.
Serialize canonical gates and receipt generation against one frozen checkout.

## Complexity Tracking

No constitution violations. Private candidate/publication objects separate
valid-if-published data from state-bound evidence and are never serialized.
Original-product checks cost O(s + r0) plus canonical map/set normalization for s
seed entities/r0 seed refs, and relevant schema-history lookup. Current-head
endpoint checks retain immutable-history premises, not a full-prefix Behavior
replay. Schema lookup can grow with migrations; host snapshot reads can cost
O(n + h). Module-free open costs O(s) plus bounded history/schema checks.
