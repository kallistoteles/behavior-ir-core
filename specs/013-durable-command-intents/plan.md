# Implementation Plan: Durable Command Intents

**Branch**: `013-durable-command-intents` | **Date**: 2026-10-05 | **Spec**: [spec.md](spec.md)

**Input**: Feature specification from `specs/013-durable-command-intents/spec.md`.
Feature selection is 013; the preserved Git checkout is `012-unified-invocation-model`.
Planning does not switch branches, alter that feature's files or claim 012 is implemented.

## Summary

Core evaluates a state delta and a finite multiset of typed external requests, commits them
through one atomic history event, and exposes derived committed occurrences to host adapters.
Core never dispatches commands. Command definitions, values, identity, evidence and verification
use the same unordered-multiset semantics with canonical evaluation and preserved multiplicity.

Core 012's unified invocation and general trusted-governance hardening are mandatory
predecessors. Governance applies to state-only, migration and command-bearing commits.
A signature does not repair a false verifier theorem: proof-correctness and history/replay
blockers below have separate enablement gates before command-bearing histories are accepted.

This is Phase 1 design output. Source implementation, observed failing tests and release gates
remain future work. This command does not create tasks.md or close the full soundness audit.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, pinned in rust-toolchain.toml.
Python 3.13+ is limited to existing fixture/tooling workflows.

**Primary Dependencies**: existing serde/serde_json, sha2, thiserror, clap and
ed25519-dalek 2.2.0 from Cargo.lock; supported external Z3 4.16.0. No new crate,
crypto algorithm, application executor or live AI dependency.

**Storage**: existing host Backend immutable snapshots and atomic crash-safe record/head CAS.
Versioned genesis/evidence/bundle/record documents; history is the outbox.
A test-only durable host backend in consumer proves two-process recovery.
Backend completeness and atomic durability are trusted obligations, not proven by Core.

**Testing**: cargo test/proptest, negative governance and conformance suites, frozen legacy
fixtures, new golden wire/records/hash vectors, determinism, explicit facade surface and
consumer built through behavior-engine alone. Every new implementation/repair starts with
a reviewed meaningful test observed failing; new tests cannot prove historical test-first work.

**Target Platform**: existing Linux x86_64 development and static musl CLI release.
Library remains usable through the current Rust workspace/platform contracts.

**Project Type**: deterministic Rust library workspace with store-free CLI.

**Performance Goals**: admission normalizes E emissions in O(E log E); evaluation traverses
canonical definitions and computes only reached guards/payloads. A stream page scans at most
1–1024 whole history events, default 256. No invented latency SLA; measure representative
state-only/command-only/mixed cases and report regressions. Complete behavior-validity
validation may scan a snapshot; memoization must preserve identical semantic evidence and
be keyed by exact behavior/history identity.

**Constraints**: Wire 0.8 retains its semantic profile; prior valid IR identities/records are
frozen. Canonical no-float typed payloads, checked lengths/history arithmetic, no source-order
semantics, no diagnostic metadata in new semantic identity, no unsafe code or secret output.
Trusted verification bypasses unauthenticated cache and validates the complete obligation set.
V2 report/manifest/site identities exclude diagnostic provenance; distinct repeated proof
sites retain coverage. Explicit independently supplied Q binds policy context/time; all roles
use Q.policy_time. Non-reproducible/operational aborts produce no signed semantic artifacts.
The only supported dependency/API boundary remains behavior-engine.

**Scale/Scope**: one typed command product, one command-effect bag, guarded evaluation,
trusted existing governance, exact history anchoring, one read-only whole-event stream,
both replay paths, public facade/CLI exposure and conformance. No retries, delivery status,
workflow sequencing, automated external-result handling or production I/O backend in Core.

**Versions reserved against the baseline**: Wire 0.8, decision 0.7, verifier 0.7.0 and the
new document domains in [identity contract](contracts/identity-and-records.md).
Core 0.12.0 is provisional after 012's planned 0.11.0. If predecessor work consumes a reserved
version, assign the next unused version before implementation; never move/reuse a release tag.

## Constitution Check

*Checked before research and after Phase 1. PASS describes the design, not implementation
results, test execution or completed prerequisites.*

| Principle / gate | Before research | After design | Evidence |
|---|---|---|---|
| I. Deterministic core, probabilistic edge | PASS | PASS | Explicit S/I/C/facts, canonical guard/payload order, no executor API; explicit crypto/time inputs. |
| II. Typed boundary validation | PASS | PASS | Admission and strict new document decoders; store independently rederives caller candidates. |
| III. Test-first | PASS | PASS | Each prerequisite/story requires observed failing semantic and negative tests before code. |
| IV. Reproducibility/replay | PASS | PASS | Explicit ≡₀.₈ laws, semantic report/site identities, detached diagnostics, no signing of operational aborts, archived Q and pinned stream head. |
| V. State/auditability | PASS | PASS | Candidate vs committed occurrence, exact parent record, complete signed evidence; no credentials in logs. |
| VI. Simplicity | PASS | PASS | Existing crypto/atomic backend; no new crate, authoritative outbox table, command authority or policy-migration primitive. |
| Rust/unsafe/errors/lockfile | PASS | PASS | Existing pin/lints, typed fallible decoding/hashing, checked counts, forbid unsafe; deliberate lockfile changes only. |
| Supported boundaries/release | PASS | PASS | Explicit exports and consumer; unchanged scripts/gates.sh; exact-revision consumer proof before publication. |

**Design gate: PASS.** No unjustified constitutional deviation.
**Implementation enablement gates: NOT RUN.** 012, G1 trusted governance, G2 proof-correctness
and G3 exact-history/replay repairs must pass before dependent 013 paths are accepted.
Current Core cannot be called sound or conceptually complete from this planning output.

## Project Structure

### Documentation (this feature)

~~~text
specs/013-durable-command-intents/
├── spec.md, checklists/requirements.md   # preserved clarification output
├── plan.md, research.md, data-model.md, quickstart.md
└── contracts/
    ├── semantic-ir.md
    ├── identity-and-records.md
    ├── governance.md
    ├── store-and-replay.md
    ├── engine-api.md
    ├── cli.md
    └── validation-matrix.md
~~~

The next speckit-tasks step creates tasks.md.

### Source Code (planned changes)

~~~text
crates/behavior-core/src/
├── commands.rs                         # NEW opaque products, canonical bags/codecs
├── wire.rs, semantic/{module,types}.rs
├── admit/{mod,resolve,typecheck,bounds,hash}.rs
├── eval.rs, record.rs, serialize.rs, builder.rs
└── invocation.rs                       # 012 dependency
crates/behavior-verify/src/
├── governance.rs, governance/trusted.rs # shared policies/evidence/signing
├── encode.rs, encode/relational.rs, reads.rs, migration.rs
└── checks.rs, hashing.rs, lib.rs, cache.rs
crates/behavior-store/src/
├── documents.rs, store.rs, replay.rs
├── commands.rs                         # NEW history-derived enumeration
└── conformance.rs, memory.rs
crates/behavior-engine/src/lib.rs
crates/behavior-cli/src/lib.rs
api/engine-surface.txt
schema/                                # new versioned formats
tests/fixtures/{commands,governance-v2}/
consumer/{tests,examples}/              # facade-only conformance and crash recovery
docs/{commands,governance,versioning}.md, PRINCIPLES.md
~~~

**Structure Decision**: extend the existing workspace. Admission owns normalized definitions;
evaluation owns candidate values; store history owns committed membership; governance owns
trusted approval. Internal modules remain unsupported APIs. Backend operations retain one
atomic commit primitive. Version dispatch changes document construction/serialization, not
persistence meaning. Rust construction adaptations are documented as minor-release changes
and checked through the external consumer.

## Phase 0 — Research

Complete: [research.md](research.md), R1–R14. The contracts resolve profile retention, type
and ordering domains, hash bodies, signatures, trust roots, exact parent identity,
historical evidence and legacy-store adoption. No unresolved technical clarification remains.
The accepted analysis corrections additionally fix the exact semantic report/manifest/
obligation/context domains, canonical proof-site multiplicity, explicit trust-time relation,
operational-abort boundary and bounded identity-equivalence laws. Their code remains future work.

## Phase 1 — Design and contracts

Complete: [data-model.md](data-model.md), [semantic IR](contracts/semantic-ir.md),
[identity/records](contracts/identity-and-records.md), [governance](contracts/governance.md),
[store/replay](contracts/store-and-replay.md), [facade](contracts/engine-api.md),
[CLI](contracts/cli.md), [validation](contracts/validation-matrix.md) and
[quickstart.md](quickstart.md). New APIs/formats/fixtures are implementation targets.

### Dependency-ordered implementation stages

| Stage | Work | Exit condition |
|---|---|---|
| B0 | Freeze valid legacy vectors/diagnostics and establish 012 integration baseline. | Published IR/action/read/store/replay bytes remain available; new verifier outcomes are separate. |
| G1 | General trusted governance, explicit independent Q, semantic authenticated verification/site manifest, strict decoding, versioned adoption. | State/migration tests reject forged/rebound ALLOW and context substitution, preserve report identities under provenance changes, reject timeout signing and prove require:none behavior. |
| G2 | Repair or conservatively block false proofs: numeric bounds, read aliases, incoming validity, migration context, malformed record hashing. | Audited counterexamples cannot obtain trusted false PROVEN; unsupported paths are INCONCLUSIVE/refused. |
| G3 | Exact history candidates, shared replay endpoint/range checks, v2 documents and CAS/idempotency. | Cross-fork/endpoint negatives refuse without mutation; valid legacy replay preserved. |
| C1 | Wire 0.8 profile, declarations, canonical definition bag, hashes/builder/serialization. | Admission/permutation/type/schema/hash round-trips pass; zero bindings/effectlessness and old-version rejection covered. |
| C2 | Guarded evaluation, semantic record 0.7 and historical type evidence. | Laziness/error/observation/metamorphic cases pass; non-ALLOW exposes no K; no dispatch. |
| C3 | Verifier correspondence and governed complete candidate identity. | Runtime paths match proof obligations; policy binds ΔS/K/multiplicity and exact head. |
| C4 | Atomic mixed/command-only history, occurrences and pinned whole-record stream. | Failure/recovery/copy/fork/multiplicity/pagination conformance passes. |
| C5 | Replay, facade/CLI/docs, determinism, durable consumer and release proof. | Required gates/release-check and pushed-revision consumer pass before artifact publication. |

G1/G2/G3 are independently reviewable general prerequisites. They may share a release train
with 013, but their semantics and gates precede command enablement. No command-only exception.

### Proof-correctness repair boundary

- Repair unjustified assumptions wherever an accepted trusted profile relies on them. Preserve
  prior IR evaluation/admission contracts; block certification in the new verifier when a
  legacy guarantee cannot be established compatibly.
- For 0.8, establish Valid_B(S) from exact snapshot facts before assuming constraints/global
  invariants, including zero-binding actions. Schema equality is insufficient.
- Migration preparation/application/authorization/replay bind exact source/target behaviors.
- Typed semantic report/manifest projection never promotes an operational timeout to an
  authenticated theorem. All obligations have canonical unique site keys, even for repeated
  emissions; their exact runtime paths and aggregate are independently checked.
- Live commit compares independently supplied Q with signed Q at explicit policy_time; replay
  uses archived Q. Raw legacy formats and context-less none/no-evidence paths remain preserved.
- Other audit work (general legacy quotient redesign, optional index omission, performance
  caching and non-Core ergonomics) remains separately tracked; this plan does not close it.

### Requirements and acceptance coverage

| Contract / stage | Requirements | Success criteria |
|---|---|---|
| semantic-ir; C1/C2 | FR-001–010, FR-036 | SC-002, SC-008, SC-010 |
| identity-and-records; C1/C2/C4 | FR-011–018 | SC-004, SC-006–008 |
| store-and-replay; G3/C4/C5 | FR-019–027, FR-041–044 | SC-001, SC-004–009 |
| engine-api/cli; C2/C5 | FR-028–035 | SC-003, SC-005–007 |
| governance; G1/G2/C3 | FR-037–040 | SC-001, SC-010 |

The validation contract supplies the negative/metamorphic obligations and the
runtime/verifier correspondence table. It is planned evidence, not executed tests.

## Complexity Tracking

No constitutional violation is introduced; no exception is required. Necessary design
complexity and rejected shortcuts are documented in research R1–R14: explicit profile/domain
versioning; shared signed governance; full HistoryRef; archived command/type/profile/manifest
evidence; fresh verification and valid snapshots; test-only durable host backend.
