# Implementation Plan: Explicit Canonicalization Failure Contracts

**Branch**: `021-canonicalization-errors` | **Date**: 2026-10-15 | **Spec**: [spec.md](spec.md)

**Input**: Clarified feature specification and A/A decisions in [decisions.md](decisions.md). Planning baseline: `20d3fd2439e4c4b50f75d8f1e03f56aeb4502e9f`, tree `6c26917635f142cf219de8e4672ae894078d0026` (released 0.13.0 source).

## Summary

Preserve editable artifact JSON while making unsupported canonicalization an explicit typed error. Reuse and export `CanonicalError`; change raw attestation/authorization serialization and ordinary verification to checked Results. Ordinary assembly is genuinely fallible because diagnostic-cache findings can contain raw JSON. Keep typed Profile and migration-report generation infallible only with their documented construction invariants, replacing empty fallbacks. US1 includes the basic CLI failure contract, with its process regression written, reviewed and observed failing before serializer/CLI production changes.

Check the complete current value before excluding self-hash or cached metadata, then preserve the existing canonical bytes and identity material. Carry errors through legacy governance, Store evidence acceptance and CLI output without replacing them with proof results. Existing authenticated schemas, manifests, signatures, context/issuer bindings, fresh verification and historical profiles remain authoritative.

Deliver the public transition in a 0.x minor release (next eligible target from this baseline: 0.14.0, subject to intervening releases), with facade-only migration examples, independent valid-output baselines and real negative regression evidence. Planning does not publish a release or implement code.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, pinned in `rust-toolchain.toml`.

**Primary Dependencies**: Existing `serde`, `serde_json`, `thiserror`, `sha2`, `ed25519-dalek`; existing Z3 process adapter and Nix development environment. Preserve lockfiles and dependency/features unless independently justified; no new dependencies are needed.

**Storage**: Existing in-memory/file Store backends and canonical archives; lower-trust optional diagnostic cache on disk; CLI output files. No document/schema migration or new storage service.

**Testing**: Cargo unit/integration tests, existing frozen hash/history fixtures, facade-only `consumer/`, CLI process tests, and exactly `scripts/gates.sh`. RED runtime reproduction and baseline byte capture precede production edits. Solver-backed acceptance requires the pinned solver, not a skipped solver branch.

**Target Platform**: Existing supported Rust library/CLI platforms and Linux development/CI; existing x86_64 Linux musl release target. No platform expansion.

**Project Type**: Five-crate Rust workspace with one supported public facade (`behavior-engine`) and CLI, plus a separate external consumer workspace.

**Performance Goals**: Preserve existing behavior without introducing a throughput/SLA claim. Full-value validation is linear in visited JSON size; hash projections and output buffering remain bounded by the supplied artifact. Reuse the existing traversal inside generic hashing. Cross-crate boundaries may use the existing checked serializer for preflight; no new public validator or performance framework is required.

**Constraints**: No empty success/coercion, no partial canonical artifact on encoding failure, no valid byte/hash changes, no new query/arithmetic/proof semantics, no global mutation restrictions, no cache-to-trust promotion. Retained `expect` must have the specific construction proof at the call site. Existing early governance/history refusals and commit-before-backend boundaries remain.

**Scale/Scope**: Fourteen inventoried sites across core/verify/store/CLI, one facade error re-export and surface manifest update, related existing tests/docs plus targeted missing conformance tests. This is bounded RC-005 / F-QUALITY-001 remediation, not a broad canonicalization or artifact-model redesign.

## Constitution Check

Gate assessed against constitution v1.0.1 before Phase 0 and re-evaluated after Phase 1:

| Principle / constraint | Before research | After design / enforcement |
| --- | --- | --- |
| I deterministic Core | PASS: deterministic error handling only | PASS: no AI/runtime dependency or changed semantic decisions |
| II typed validated boundaries | PASS: preserve raw drafts with checked authority boundaries | PASS: existing CanonicalError plus typed governance wrapper; independent artifact validation retained |
| III test-first | PASS: implementation deferred | PASS: C01–C11 require baseline capture and runtime RED before fixes; US1 CLI/cache-fixture regression precedes serializer/CLI production changes and is reused for US2 producer propagation; compile-only failures are not bug reproduction |
| IV reproducibility/replay | PASS: pin current SHA/tree and existing profiles | PASS: independent valid bytes/hashes, exclusions, historical vectors, exact candidate consumer and gates required |
| V explicit state/auditability | PASS: draft, canonical bytes and authority distinguished | PASS: errors preserve artifact/cause/path; no secret-bearing fixtures/logs; persistence refusal checked before backend mutation |
| VI simplicity | PASS: existing crates/errors/protocols | PASS: no new crate/dependency/public checked-value hierarchy; narrow helpers and justified constructed-domain assertions |
| Technology/error discipline | PASS: pinned Rust/lockfiles, no unsafe | PASS: typed thiserror source; non-test invariant assertions limited to proven constructors; no raw-domain `expect` |
| Workflow/quality gates | PASS: plan precedes tasks/implementation | PASS: exact unmodified `scripts/gates.sh`, supported consumer and migration evidence; no gate exception |

No constitution deviation or unresolved product decision remains. These PASS results assess the design, not execution of future tests or gates.

## Phase 0 — Research completed

[research.md](research.md) records decisions, alternatives and the pinned source inventory I01–I14. It resolves error naming/propagation, ordinary cache reachability, Profile/migration construction invariants, full-value checks before identity projection, trust/persistence boundaries, CLI behavior, minor-version delivery and independent regression evidence.

Source inspection establishes reachable raw-artifact/cache failures and a migration evidence enforcement gap. It does not demonstrate current authenticated forgery or count as a runtime reproduction. No unknown input domain is classified as infallible.

## Phase 1 — Design completed

- [data-model.md](data-model.md): domains, mutable fields, construction invariants and checked lifecycle.
- [contracts/public-api.md](contracts/public-api.md): exact signatures, error types, CLI results and consumer migration.
- [contracts/boundaries.md](contracts/boundaries.md): current-value identity, signing, issuance, acceptance and persistence checks; validation order and historical preservation.
- [contracts/conformance.md](contracts/conformance.md): site/boundary test matrix, RED/GREEN evidence, baseline and exact-revision delivery requirements.
- [quickstart.md](quickstart.md): executable validation commands and facade examples, with future test targets identified explicitly.

The design chooses direct Result signatures, not a parallel unchecked API. Core `tagged_hash` gains a full-input canonicality prerequisite before the same self-hash projection. This intentionally rejects previously unchecked noncanonical excluded metadata; it changes neither valid hash material nor valid historical identities. Legacy decoders/Store additionally preflight before their own cached/self-hash projections. Canonicalizable but semantically invalid data still receives existing refusals.

## Implementation sequence for task generation

1. Freeze baseline outputs and tool/fixture provenance; write/review reachable runtime RED probes before the corresponding fix. During US1 tests, create a reusable poisoned-cache fixture and run the CLI process regression before any serializer/CLI production change: a matching hit with a surviving nested float must produce exit 2, the canonical cause/path on stderr, zero stdout and an unchanged pre-existing output file. Preserve existing golden vectors and record genuine baseline runtime RED.
2. Complete US1's error export, full-value generic hash check and raw Result serializers, then adapt CLI serializer callers under that already-written regression. Preserve valid hash material and exclusion behavior. US1 acceptance includes the basic CLI process contract as well as facade/raw serialization checks.
3. Complete US2's ordinary/common assembly Result, private trusted bridge and Profile/migration construction enforcement. Reuse the US1 cache fixture for producer/facade tests; write the producer tests before producer changes, and re-run the existing CLI regression after adapting its producer call. A later baseline replay is additional evidence, not permission to write a test after its fix.
4. Complete US3's typed governance source propagation and full supplied legacy Evidence checks in both existing action/migration evidence paths, after their own RED tests. Preserve earlier upgrade/history refusals and backend atomicity. Extend the existing CLI regression suite for private trusted adapters and remaining direct outputs before consolidating those adapters; do not recreate the basic cache/output test.
5. Complete supported migration documentation and validate before-examples against the pinned old API, after-examples against the candidate API. If an old snippet is tested against the candidate, explicitly expect compile failure; do not restore an unsafe compatibility path to make it compile. Every output path obtains complete text before writes/emits.
6. Close missing conformance coverage and minor-version assessment; refresh I01–I14 and B01–B09 evidence. Run focused GREEN checks, then exact `scripts/gates.sh` and frozen Git-revision consumer. Review actual resolved dependency/CLI provenance and valid baseline equivalence before merge.

These are dependency/order constraints for `$speckit-tasks`, not a generated task list or authorization to start implementation during planning. Capture evidence under the eventual feature evidence directory with paths/hashes recorded in the task artifacts; do not modify sealed receipts from prior releases.

## Project Structure

### Documentation (this feature)

```text
specs/021-canonicalization-errors/
├── spec.md
├── decisions.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── contracts/
│   ├── public-api.md
│   ├── boundaries.md
│   └── conformance.md
└── tasks.md                 # Next speckit-tasks phase; not created by this plan
```

### Source Code (repository root)

```text
crates/
├── behavior-core/src/canonical.rs
├── behavior-verify/
│   ├── src/{lib.rs,migration.rs,governance.rs,cache.rs,hashing.rs}
│   ├── src/governance/{semantic_proof.rs,trusted.rs}
│   └── tests/              # Existing cache, migration, governance, trusted and hash coverage
├── behavior-store/
│   ├── src/{documents.rs,store.rs}
│   └── tests/              # Existing action/migration evidence and history fixtures
├── behavior-engine/src/lib.rs
└── behavior-cli/
    ├── src/lib.rs
    └── tests/              # Existing CLI scenarios plus canonicalization regressions
consumer/{Cargo.toml,tests/}
tests/fixtures/             # Existing vectors/fixtures; independent baseline additions if needed
api/engine-surface.txt
docs/{verification.md,governance.md,versioning.md}
scripts/{gates.sh,check-consumer.sh}
```

**Structure Decision**: Extend existing owners and tests, keep `behavior-engine` the sole supported consumer dependency, and place design contracts inside feature 021. No new crate, service, schema version or storage layer.

## Complexity Tracking

No constitution violations or exceptions. The constructor assertions are the constitution's documented-invariant case, not exceptions for arbitrary JSON. Test-first and all quality gates remain mandatory.

## Planning validation

Both research reviews checked the proposed domains, APIs, CLI sequencing, boundary/provenance claims and validation commands against the pinned source. The diagnostic-adapter gap found in review is resolved explicitly in the CLI contract. The subsequent cross-artifact analysis found a CLI test-order defect and an ambiguous migration-example target; this revision places the basic CLI RED test in US1 before implementation and separates baseline-before from candidate-after compilation. All seven generated design documents have checked local links, balanced code fences, complete inventory/boundary/conformance IDs and requirement mappings; no template placeholders remain. No production code, dependency, test, release or sealed evidence file was changed by planning. Runtime RED/GREEN and gates remain implementation work.
