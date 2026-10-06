# Implementation Plan: Unified Invocation Model

**Branch**: `012-unified-invocation-model` | **Date**: 2026-10-04 | **Spec**: [spec.md](spec.md)

**Input**: Feature specification from `/specs/012-unified-invocation-model/spec.md`

## Summary

Reads and actions get one invocation model at the capability boundary. Binding cardinality
already works; this feature unifies the rest.

1. **The invocation pipeline.** A requested invocation (capability, typed identity bindings,
   input, context) is resolved against one exact snapshot into a resolved invocation. The
   resolved invocation is then evaluated by the **existing, unchanged** evaluators: the action
   evaluator or the read evaluator.
2. **Invocation records.** A new invocation record format is an envelope around one invocation.
   Its outcome is `binding` (refused before evaluation, no inner record) or `evaluation` (it
   binds the unchanged decision record or read record by that record's own identity).
3. **Unified intents.** A new capability intent document (`bindings` with typed identities) is
   evaluated through the same pipeline for reads and actions, with zero to N bindings. The
   `targets` intents stay as frozen, superseded paths.
4. **Admission is unchanged** (FR-014). Decision-only actions stay valid. The guidance recommends
   declared reads for new observation-only capabilities (FR-015).
5. **Entry points.**
   - Store: `Store::invoke`, `Store::invoke_intent` and `Store::replay_invocation`.
   - Plain, without a store: `invoke_with_snapshot`, which resolves requested identities against
     a caller-supplied snapshot document.
   - CLI: `behavior invoke`, `invoke-intent` and `invoke-replay`.
   - Facade: explicit re-exports.

   Every existing entry point, format and record keeps its bytes.

The release is **Core 0.11.0**, a minor bump: new document and record formats. No wire IR
version is added.

**Scope test** for every task: is it needed for reads and actions to use the same invocation
model? If not, it is not part of 012.

## Technical Context

**Language/Version**: Rust 1.98.1 (edition 2024, pinned), Python ≥ 3.13 for fixture generators
and independent JSON Schema validation in tests.

**Primary Dependencies**: existing ones only (serde_json, clap, sha2 via the canonical module,
z3 as an external process). No new crates.

**Test-only dependency**: Python `jsonschema` in the Nix development shell. The
referenced existing schema tests check StoreSchema identities rather than JSON
Schema validity; an independent Draft 2020-12 validator supplies that check.

**Implemented API clarification**: invocation/check functions return Result for
transport/canonicalization failures. Semantic refusals remain InvocationRecords.
Decode failures that cannot be reconstructed from the envelope archive original
documents in `outcome.decode_evidence`; replay re-decodes that canonical evidence.

**Storage**: the persistence contract is unchanged. No new backend method; no new store
document in history (FR-010).

**Testing**:
- cargo test and proptest;
- golden fixtures in `tests/fixtures/invocation/`;
- the conformance digest;
- the determinism check;
- the external consumer (`consumer/`).

**Target Platform**: as today (Linux x86_64; static musl CLI).

**Project Type**: Rust library workspace plus CLI (behavior-ir-core).

**Performance Goals**: resolution adds one existence check and one version read per binding, as
`Store::read` does today. Invoking a 3-binding action costs no more than 1.1× today's
`Store::evaluate` (measured in an ignored perf test).

**Constraints**:
- No existing document, record, hash vector, golden or diagnostic changes bytes (FR-015,
  FR-016, SC-005).
- Determinism (BTreeMap and canonical JSON).
- No unwrap or expect outside tests.

**Scale/Scope**:
- 3 new document formats and 1 snapshot document;
- about 8 new public API items, 3 CLI commands and about 60 conformance fixtures.

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

| Principle | Status | How |
|---|---|---|
| I. Deterministic core, probabilistic edge | ✓ | Agents propose capability intents. The deterministic engine resolves, checks and evaluates. Intents never carry state (FR-013). |
| II. AI output validated | ✓ | A unified intent is parsed into typed structures. Every problem (capability, binding map, typed identities, input) is listed before evaluation, and the refusal is recorded (FR-006, FR-008a). |
| III. Test-first | ✓ | Every new format, outcome and entry point starts with golden fixtures and tests seen failing. The compatibility tests (every existing fixture, record and diagnostic unchanged) are written first and must pass before and after (FR-014, FR-016). |
| IV. Reproducibility and replay | ✓ | Invocation records are canonical and content-addressed, and replay from their own contents (FR-009). Binding facts are recorded, so replay never consults the current store. |
| V. Explicit state and auditability | ✓ | Every invocation, including binding refusals, yields evidence. Requested identities, the snapshot and the outcome stage are explicit (FR-008). |
| VI. Simplicity | ✓ | No new crate or backend method. The evaluators are reused unchanged. One resolver serves reads and actions. One tagged-hash primitive moves into the core (see Complexity Tracking). |
| Tech constraints | ✓ | fmt, clippy `-D warnings`, no unsafe, `Cargo.lock` committed. |
| Quality gates | ✓ | `scripts/gates.sh`, unchanged, plus the new fixtures in the conformance digest. |

**Gate result: PASS.** Re-checked after Phase 1 design: still PASS. The design adds no
dependency, and every format is new and versioned.

## Project Structure

### Documentation (this feature)

```text
specs/012-unified-invocation-model/
├── plan.md, research.md, data-model.md, quickstart.md
├── contracts/
│   ├── invocation-documents.md   # requested invocation, capability intent, invocation record, snapshot
│   ├── engine-api.md             # behavior-engine and Store additions
│   └── cli.md                    # invoke, invoke-intent, invoke-replay
└── checklists/requirements.md
```

### Source Code (behavior-ir-core)

```text
crates/behavior-core/src/
├── invocation.rs        # NEW: TypedIdentity, RequestedInvocation, CapabilityIntent, Snapshot,
│                        #      Resolver, resolve(), InvocationRecord, invoke_with_snapshot(),
│                        #      check_capability_intent(), replay_invocation()
├── canonical.rs         # gains tagged_hash() (moved from behavior-verify::hashing, same bytes)
└── lib.rs               # pub mod invocation
(admission, wire decoding, serialization and the builder are unchanged)
crates/behavior-store/src/store.rs    # Store::invoke, invoke_intent, replay_invocation
crates/behavior-verify/src/hashing.rs # document_hash delegates to core (bytes unchanged)
crates/behavior-engine/src/lib.rs     # explicit re-exports (api/engine-surface.txt)
crates/behavior-cli/src/lib.rs        # invoke, invoke-intent, invoke-replay
schema/invocation-*.schema.json, schema/capability-intent-*.schema.json, schema/snapshot-*.schema.json  # NEW
tests/fixtures/invocation/{modules,invocations,intents,snapshots,records}/   # NEW
consumer/tests/capabilities.rs        # + invoke / invoke_intent
docs/invocation.md (NEW, including "use declared reads for new observation-only capabilities"),
PRINCIPLES.md §16, docs/versioning.md (0.11.0, the superseded-format table)
```

**Structure Decision**: one new core module, `invocation.rs`, holds the boundary model. The store
gains three methods that resolve against the backend and delegate to it. The existing
`Store::evaluate`, `read`, `read_intent`, `evaluate_intent` and `replay*` are untouched; they are
the compatibility paths.

## Phases

1. **Foundations.**
   - Move the tagged hash into `canonical`, guarded by the existing hash tests.
   - Add `TypedIdentity` and the document decoders.
   - Write the schemas.
2. **Compatibility baseline.** Record the conformance digest and every legacy intent, request and
   record fixture, so that each later step proves it changed none of them (FR-014, FR-016).
3. **US1 and US2: resolve, invoke and the envelope.** Golden records first. The plain path
   (`invoke_with_snapshot`) comes first, then the store path, with the `binding` and
   `evaluation` stages for reads and actions.
4. **US3: unified intents.** Store and plain paths; zero, one and N bindings. Legacy `targets`
   fixtures are frozen with byte checks.
5. **US4: cross-capability conformance.**
   - A read/action pair for each binding outcome, with zero to three bindings.
   - Verification and replay of a history using all of them.
6. **Interfaces and documentation.**
   - Facade, CLI and consumer.
   - Principles §16, `docs/invocation.md`, versioning.
   - Release 0.11.0.

## Complexity Tracking

| Addition | Why needed | Simpler alternative rejected because |
|---|---|---|
| Move `document_hash` into the core (`canonical::tagged_hash`) | The envelope binds a decision record by its existing identity, which is the tagged transition hash. That hash lives in `behavior-verify`, which the core cannot depend on. | A second implementation in the core could drift. A new decision-record id would not be its *existing* identity (clarification Q1). |
