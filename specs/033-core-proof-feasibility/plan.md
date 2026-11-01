# Implementation Plan: Core G0–G1 Proof-Chain Feasibility

**Branch**: `033-core-proof-feasibility` | **Date**: 2026-11-01 | **Spec**: [spec.md](spec.md)

**Input**: Feature specification from `specs/033-core-proof-feasibility/spec.md`.
Planning baseline: Core `1a3ae37623cf90b4608a678ef283ee313306d9bb`, specification
commit `a040008dd65670a2a8f19d002d982deefd139a52`.

## Summary

Build an isolated experiment that can reject the proposed synchronous certified
Core architecture before a full rewrite. G0 freezes exact meaning, scope and
trust. G1 demonstrates initialization, a real local/count transition, compact
observation meaning, compressed accumulated proof, a fresh verifier and durable
publication. Measure the whole finished result, cold preparation and recovery.
Correctness and performance have separate findings; no positive G1 without both.

Use a Lean-defined typed microstep IR, independently checked actual Rust-source
and matrix artifacts, authenticated counted maps, the pinned Nova/IPA/Spartan
backend and an experiment-local SQLite repository. The producer is untrusted for
semantics. No full Core replay/whole-J co-evaluation is permitted in the independent
acceptance path. Actual Core and the archived optimization remain separate oracles/
comparators with their different guarantees stated.

Planning delivers the documents below. It does not run G0/G1, prove the proposed
translation, install dependencies or produce timings. Full-language replacement,
production adoption and the exhaustive crash suite remain later gates.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024; Lean 4.30.0; Python 3.13 collector.

**Primary Dependencies**: Existing Core/Store path crates for oracle execution;
Nova `01b1e2d662a847ed7029770ecbaf6687398899dd`, portable arithmetic plus a new
033-only entropy-injection overlay; Pallas/Vesta, Pedersen/IPA, standard Spartan
compression; serde/serde_json, thiserror and sha2 at existing 032 exact pins;
rusqlite `=0.41.1` with bundled SQLite 3.54.0; build-only mathlib commit
`c5ea00351c28e24afc9f0f84379aa41082b1188f`. Commit independent Cargo/Lake lockfiles
and actual source/checksum/patch identities before implementation campaigns.

**Storage**: Memory control adapter plus one local SQLite database, WAL/FULL,
page size 4096, auto-checkpoint 1000 pages, foreign keys enabled. Immutable BLOBs,
head, request results, events, outbox and pins share one transaction. G1 disables
GC and first persists a full prover checkpoint per committed event, with cost charged.

**Testing**: Test-first real acceptance/mutation controls, property/differential
checks, kernel-only theorem/axiom receipts and fresh replay, actual-source/matrix
validation, deterministic entropy replay, process-crash/retry controls and a frozen
collector. Existing repository gates remain required for eventual integration.

**Target Platform**: x86_64 Linux, local filesystem with documented SQLite VFS/
fsync guarantees, root pinned Nix inputs. Record actual allowed CPU affinity,
OS/cache/filesystem/device and installed tool identities; no remote-service dependency.

**Project Type**: Isolated research CLI/library and formal build, not a production
Core API expansion.

**Performance Goals**: Complete local durable certification p50 ≤ 50 ms/p95 ≤
100 ms; fresh request-to-verdict p95 ≤ 100 ms; empty first initialization and
cold restart through first useful operation p95 ≤ 250 ms. All cold/runtime
preparation actually performed is charged. These are unmeasured trial targets.

**Constraints**: Full exact semantic claim; synchronous compression/final check;
no replay bridge; complete identity/observation binding; named TCB; immutable old
evidence. First campaign: 8 GiB process memory, 900 s per attempt, 1800 s per
scenario, 8 h campaign, 64 GiB artifacts, one measured worker. Short/incomplete
campaigns cannot manufacture quantiles or a positive overall verdict.

**Scale/Scope**: G0 whole-language/public-operation inventory; G1 closed positive
Int64/local/count/create/set/command subset. N={128,2048,8192}, H={1,128,8192},
U/N={1,16,128}; at most 16 affected obligations, ID≤64 bytes and entity/context/
command output≤1 KiB. Fixed-shape K microsteps, not a circuit sized by population.

All planning choices are resolved in [research.md](research.md). The mathematical
and performance obligations are future experiment gates, not satisfied results.

## Constitution Check

*GATE: evaluated before research and re-evaluated after Phase 1 design.*

| Principle | Pre-design check | Post-design check |
| --- | --- | --- |
| I. Deterministic authority | PASS: no runtime AI; K governs semantics. | PASS: producer cannot mint accepted semantic evidence; exact expected subject checked before publication. |
| II. Validated inputs | PASS: strict typed ingress and bounded evidence. | PASS: binary claim/witness codecs, full-width digests, lengths/ranges, hostile storage as authenticated data. |
| III. Test first | PASS as a plan: red controls precede code. | PASS as a plan: source/matrix mutations, semantic counterexamples and crash boundaries have named acceptance targets. No tests are claimed executed here. |
| IV. Reproducibility | PASS with planned injected entropy. | PASS: separate 033 RNG overlay, canonical sampling, same-seed byte replay and cross-thread controls; normal entropy stays external. If these fail, reproducibility does not pass. |
| V. Explicit state/audit | PASS: origin, phases, outcomes and publication distinguished. | PASS: data model and contracts distinguish attempts/events/microsteps, unknown commit and unavailable audit. |
| VI. Simplicity | PASS: one experiment, one storage domain, one backend. | PASS: no general compiler/plugin framework; each formal/storage/proof dependency has an actual role and comparison. |
| VII. Semantic authority/soundness | PASS as an implementation plan: exact F/J/K and old evidence preserved. | PASS: module/Core-to-subset, actual-source, actual-matrix, codec and history obligations are hard gates; no universal claim from finite tests or a new model. |
| Technology/workflow | PASS: Rust-owned code, pinned locks, no Core-owned unsafe. | PASS: Lean is proof/build tooling; SQLite C/FFI and cryptographic dependencies are explicit TCB. Existing gates remain integration requirements; no production language replacement. |

No unjustified constitutional deviation is introduced. A planning pass means
the proposed workflow respects the constitution; it is not a passed G0/G1.
Ordinary compiler/kernel/crypto/storage assumptions are enumerated. Inconvenient
Core-specific semantic bridges cannot be relabeled as trusted assumptions.

## Project Structure

### Documentation (this feature)

```text
specs/033-core-proof-feasibility/
├── spec.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── research-notes/{formal-correspondence,proof-backend,storage-measurement}.md
├── data-model.md
├── contracts/{semantic-and-evidence,runtime,campaign}.md
└── quickstart.md
```

`tasks.md` is deliberately left to `/speckit-tasks`.

### Source Code (planned repository-root layout)

```text
experiments/transition-study033/
├── Cargo.toml, Cargo.lock, shell.nix
├── src/{lib,main,profile,codec,machine,producer,proof,repository,reference}.rs
├── src/repository/{memory,sqlite}.rs
├── generated/checker_step.rs
├── proofs/{lean-toolchain,lakefile.toml,lake-manifest.json}
├── proofs/Core033/{Reference,Init,Views,Machine,Codec,Source,R1CS,History,Generate}.lean
├── tests/{semantics,correspondence,proof_lifecycle,publication,consumer}.rs
└── vendor/{nova,nova-upstream.json,nova033-rng.patch}
specs/033-core-proof-feasibility/
├── benchmarks/{campaign.py,profile.json}
└── evidence/<campaign-id>/
```

**Structure Decision**: Separate experiment workspace with `publish=false`,
private generated code and independent lockfiles, following the repository's
research layout without importing 032's runtime or modifying its retained bytes.
An independent verifier subcommand has no Core replay dependency on its acceptance
path. New source paths above are design targets, not files claimed to exist yet.

## Phase 0 — Research decisions

Completed for planning: [research.md](research.md) resolves correspondence route,
tool/dependency pins, authenticated maps, actual compression API, cold keys,
entropy, durable publication, checkpoints and measurement scope. Three source
investigations are retained under `research-notes/`. No technical preference is
left as an unresolved clarification. The selected source/matrix validator remains
new work whose feasibility must be tested, not a borrowed theorem.

## Phase 1 — Design and contracts

Completed for planning: [data-model.md](data-model.md),
[semantic/evidence](contracts/semantic-and-evidence.md),
[runtime/publication](contracts/runtime.md),
[campaign](contracts/campaign.md) and [quickstart.md](quickstart.md).
They fix executable entry points, wire/public-claim binding, state transitions,
publication races, retained support, concrete acceptance controls and how to run
future validations. Quickstart explicitly marks future commands as not implemented.

## Implementation order to carry into tasks

1. **Freeze G0 inputs**: source/public constructor inventory, closed-module mapping,
   exact F/J/K and initialization semantics, versioned codec/recipe, TCB and ceilings.
2. **Prove one actual artifact pair**: nontrivial generated native microstep and
   actual matrices with kernel-checked translation and real mutations. Stop positive
   correspondence claims here if the validators cannot close; do not write the
   entire machine first and leave the bridge for last.
3. **Close the G1 relation**: init, counted maps, identity/used set, local/create/set,
   count refusal, canonical commands, observations, hashes and Done/AttemptDone;
   source/matrix validation extends to every used primitive and codec path.
4. **Complete crypto path**: pinned portable/RNG overlay, constructor-first-step
   accounting, compression/key setup, endpoint checks, independent fresh recipient,
   checked continuation restore. A standard-Spartan cold key contains full shape:
   measure it. MicroSpartan is separately identified if subsequently compared.
   Input manifest, source/IR receipt and final checked release are separate immutable
   stages. Final validation checks actual Nova augmented embedding and returned ports,
   not only a possibly unused semantic submatrix.
5. **Publish durably**: SQLite control adapter, request-ID uniqueness before CAS,
   success/refusal persistence, full checkpoints and selected crash/lost-ack controls.
   Initialization is create-once; equivalent-origin retry never rewinds an advanced head.
6. **Collect and decide**: preflight/smoke, frozen samples and life cycle, baseline
   comparisons, full reconstruction, recovery, separate correctness/performance
   assessment and exact unmet obligations. No activation or full Core rewrite.

Each code slice starts with failing controls; formal targets and actual-artifact
checks accompany their first implementation. Diagnostic timings before a complete
claim are explicitly labeled and cannot satisfy G1. Resource ceilings may stop
collection; incomplete cells remain visible, not guessed to be zero.

## Requirement traceability

| Requirements | Design/acceptance home |
| --- | --- |
| FR-001–FR-005 | Semantic contract: scope, exact initial validity, whole inventory and real cap boundary. |
| FR-006–FR-009 | Semantic contract/data model: exact effects, J, reuse, deterministic identity, canonical bag and Expand. |
| FR-010–FR-013 | Semantic contract/research: actual source/matrices, full cryptographic subject, fresh verifier and mutations. |
| FR-014–FR-015 | Runtime contract: synchronous stages, atomic commit/refusal, exact parent, unique IDs and recovery. |
| FR-016–FR-019 | Campaign contract: every lifecycle phase, frozen inputs/ceilings, whole samples and unlike-comparator limits. |
| FR-020–FR-021 | Campaign assessment/artifact manifests: separate verdicts, reproducibility and no promotion of partial work. |

## Design review and planning verification

Three read-only reviews covered formal/native/constraint correspondence, the
proof lifecycle and storage/campaign integration. Concrete findings were closed:

- Create-once initialization now prevents incompatible overwrite or same-origin
  retry rewinding a later head, with corruption and lost-ack controls.
- Immutable input and derived release manifests remove the first-run dependency
  cycle between freeze, correspondence and keys; failures remain assessable.
- Actual `synthesize` input/returned ports and augmented output hashing are checked,
  preventing a correct but unused K submatrix from satisfying correspondence.

Reviewers confirmed closure. Local links, template sections, Markdown fences,
future shell-command syntax and active-feature resolution were checked. No
source build, new theorem, prototype test or performance measurement was run.
Specification and its requirements checklist are unchanged. There are no
configured pre/post-plan hooks and no `tasks.md` is generated by this phase.

## Complexity Tracking

No constitutional violations require an exception. Necessary complexity is
limited to the checked source/matrix bridge, one cryptographic backend and one
real durable adapter. Omitting any leaves a required claim untested. A general
incremental compiler, generic VM, remote store, proof plugin API, production API
change and verified general-purpose Rust compiler are not prerequisites of this trial.
