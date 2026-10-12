# Implementation Plan: Strict Bundle Evidence Validation

**Branch**: `023-strict-bundle-evidence-validation` | **Date**: 2026-10-12 | **Spec**: [spec.md](spec.md)

**Input**: Clarified Core feature 023, F019-EXTERNAL-QUERY-001.
**Stage**: Implementation and scoped targeted review complete on working source. All four stories have executed evidence; final frozen-revision canonical gates and exact Git consumer validation remain externally required. See [implementation-report.md](implementation-report.md) and [evidence/coverage.md](evidence/coverage.md).

## Summary

Restore consumption of Core-produced query evidence at the trusted v2 candidate boundary by separating bundle integrity evidence from ordinary semantic Facts. A private codec first checks closed products, canonical collections and the existing query-result hash, then delegates semantic projection to the unchanged Facts parser. Preserve original candidate JSON for hashing and archival.

Preserve v1's entire decode-versus-commit schedule, observable refusal categories and precedence. Its existing historical rederivation/equality remains the integrity gate; do not insert the new v2 codec into legacy decoding, hashing, commitment or replay.

The scoped public-schema correction introduces a distinct bundle-evidence definition in the two current v2 wrapper schemas, changing only action candidate and commit-bundle observation references. This corrects the same document-kind conflation without changing emitted JSON, format tags or semantic hash rules. Ordinary Facts/witness schema debt is recorded separately.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, from the repository's pinned Nix/toolchain files. Python from the pinned shell runs existing JSON Schema tests.

**Primary Dependencies**: Existing serde/serde_json, thiserror and shared canonical SHA-256 implementation; existing JSON Schema/referencing tooling and Store proptest dev dependency. No new runtime or test dependency is planned.

**Storage**: Existing Backend contract and reference InMemoryBackend. No storage schema, initialization contract, index API or mutation boundary changes.

**Testing**: Cargo private/unit/integration tests; actual Store producer output; raw-string ambiguity tests; existing schema validation; generated laws using existing infrastructure; public facade consumer and CLI authorization controls.

**Target Platform**: Existing supported library/CLI platforms; mandatory checks run in the pinned Nix Linux environment.

**Project Type**: Deterministic semantic kernel and CLI. The new type is private implementation machinery, not Behavior IR or a supported consumer API.

**Performance Goals**: Correctness and compatibility only. Local checking is linear in decoded evidence entries and encoded query members, plus existing projection/map construction. No new backend reads, scans, materializations or latency acceptance target.

**Constraints**: Same v1 phases/errors; ordinary Facts remains closed; no new Wire/record/bundle version, BehaviorHash/SchemaHash rule, verifier result, facade export, Backend capability or ecosystem pin. Current v2 wrapper schema asset bytes will change explicitly; legacy schemas and valid historical document bytes remain protected.

**Scale/Scope**: Five observed-fact sections, action candidates and current empty-observation migration candidates; one private codec, one candidate integration point, shared existing hash domain, two scoped wrapper schema definitions, tests and evidence. Full inventory and actual support cells are in [support-matrix.md](contracts/support-matrix.md).

**Research Resolution**: [research.md](research.md) resolves placement, grammar, hashes, phase selection, schema compatibility, supported domain and test provenance. No unresolved contract choice remains.

## Constitution Check

*Gate reviewed before research and rechecked after design. PASS below describes design compliance, not executed correction tests.*

| Principle | Pre-research assessment | Post-design evidence requirement |
| --- | --- | --- |
| I — Deterministic core | PASS: no external service, clock, random semantic input or new host authority | Fixed canonical keys/hash domain; indexed/order controls compare semantic evidence |
| II — Typed boundary | PASS: distinct bundle and semantic Facts domains required | Private raw/validated evidence types; strict raw JSON precedes map reduction; projection only after integrity checks |
| III — Test-first | PASS: implementation must begin with a real asserting RED | Freeze/retain test-only source and genuine failure before code; old print-only diagnostic is discovery only |
| IV — Reproducibility | PASS: preserve format/profile/hash identities | Canonical collection validation, baseline v1 pipeline characterization, archive/read controls, exact-revision receipts |
| V — Explicit state/evidence | PASS: parse success, integrity and commitment remain distinct | Opaque validated evidence owns data; no cache, dispatch or publication authority; failures leave Store unchanged |
| VI — Simplicity | PASS: no framework, generic evaluator, new crate or dependency | Private Verify module; existing canonical hash; unchanged backend/ordinary Facts; narrow schema refs |
| Rust/error constraints | PASS: no unsafe/panic/default-on-error planned | Typed local failure mapped to existing INVALID_CANDIDATE; fmt/clippy and required gates |
| Delivery governance | PASS: work remains on an isolated dependent feature | Frozen implementation and consumer revision validation; release classification documented without choosing a version |

No constitutional exception is needed. The immutable 016 audit, 019 creation conclusion and unrelated findings remain separate.

Post-design read-only codec/hash and test/evidence reviews found no blocking
contradiction. The matrix review requested concrete historical fixture bindings;
H01–H03 now record actual custody/profiles and K01/K02 separately record codec
recognition. The reviewer confirmed that gap resolved. Test registration and the
separate authorized runner were made explicit. These are design reviews, not
executed correction tests or closure of implementation proof obligations.

## Project Structure

### Documentation (this feature)

```text
specs/023-strict-bundle-evidence-validation/
├── spec.md
├── origin-and-priority.md
├── plan.md
├── research.md
├── data-model.md
├── compatibility-assessment.md
├── follow-up-findings.md
├── quickstart.md
├── contracts/
│   ├── bundle-evidence.md
│   ├── support-matrix.md
│   ├── validation-evidence.md
│   └── producer-projection-evidence.md
├── checklists/requirements.md
└── tasks.md                          # dependency-ordered work and evidence tasks
```

### Source Code (repository root)

Implemented files and protected reference paths:

```text
crates/behavior-verify/src/
├── governance/trusted.rs             # replace only observed bundle-facts consumption
├── governance/trusted/bundle_evidence.rs  # private codec and validated projection
└── hashing.rs                        # existing query-result domain, shared with producer

crates/behavior-store/src/
├── store.rs                          # preserve producer algorithm; alias existing tag
├── conformance.rs                    # cfg(test) registration only; existing case registration preserved
└── conformance/query_bundle_evidence_tests.rs # private exact-workload RED

crates/behavior-verify/tests/strict_bundle_evidence.rs # boundary tests
crates/behavior-verify/tests/strict_bundle_compatibility.rs # ordinary/profile controls
crates/behavior-verify/tests/hashing.rs                # independent existing-domain vectors
crates/behavior-store/tests/strict_bundle_evidence.rs  # pipeline/profile tests
crates/behavior-store/tests/strict_bundle_compatibility.rs # baseline/history controls
crates/behavior-store/tests/strict_bundle_schema.rs    # producer/schema correspondence
consumer/tests/strict_bundle_evidence.rs              # facade tests

tests/fixtures/strict-bundle-evidence/
├── projection-cases.json             # actual Store output + independent Facts
└── projection-manifest.json          # capture/profile/source custody

schema/
├── governance-v2.schema.json          # separate scoped bundle-evidence definition
└── store-v2.schema.json               # same definition, corresponding refs

crates/behavior-core/src/facts.rs       # protected ordinary parser, not edited
crates/behavior-store/src/documents.rs  # protected v1 dispatcher and public shapes
crates/behavior-store/src/replay.rs     # retained historical checks; regression coverage
```

**Structure Decision**: Keep the codec private under trusted governance. Store already depends on Verify, which depends on Core. Move only the existing query-result domain constant to Verify hashing and preserve Store's constant name/value as an alias. Both sides reuse the existing canonical hash implementation. No Verify→Store cycle, public facade type, or new Core evidence framework is needed.

Task generation separates compatibility and schema tests into dedicated Cargo
integration targets so their owners can work independently of local-boundary and
producer-law owners. This refines file ownership within the existing test scope;
it adds no dependency, semantic interface or compatibility domain.

I1 preserves SC-002's actual producer-output acceptance and exact projection
evidence for every supported pairing. Shared invariants may justify reuse of
captured output/checks, but cannot mark a pairing complete without that evidence.
Structural convenience and codec-recognition controls retain their classifications.

U1 gives T044's Store test owner the two prospective projection fixture files
above. Expected observations come from the actual inner ALLOW record's ordinary
Facts, removing only its separately archived parent universe; they are not derived
from bundle evidence or the new codec. Normal Store tests reproduce the captures
without writing files. After package review and those checks, T045's private
Verify tests read the package and compare exact projected Facts. No Verify→Store
dependency, producer subprocess or public test API is introduced. Capture
commands, metadata and ownership are specified in
[producer-projection-evidence.md](contracts/producer-projection-evidence.md).

## Phase 0 — Research decisions

1. Use existing emitted observation field names and closed nested products; do not use the inaccurate shared wrapper Facts schema as a source of new semantics.
2. Preserve distinct versioned decode/integrity/commit phases; a shared helper does not justify moving v1 rejection.
3. Verify the existing tagged hash of canonical member objects; do not hash a bare ID array or conflate result identity with query-instance identity.
4. Validate existing canonical orders/uniqueness before projection, without sorting or repair of supplied evidence.
5. Keep no-query/empty evidence rules and migration's exactly-empty observation product.
6. Split only the current action/bundle schema references; preserve ordinary/witness and historical schemas, and disclose remaining schema debt.
7. Characterize v1 refusal precedence and performed backend failures before correction.
8. Use the exact retained conformance seed/workload for the new RED; discovery ran on dirty in-flight source and is not a frozen runtime proof.
9. Conservatively assess delivery as minor-class because public wrapper schema acceptance is affected; no numerical release is selected.

Evidence, alternatives and the qualified compatibility assessment are in [research.md](research.md) and [compatibility-assessment.md](compatibility-assessment.md).

## Phase 1 — Design and contracts

### Internal v2 pipeline

Raw candidate text → existing strict no-duplicate/no-float decode → existing closed candidate envelope → private bundle-evidence decode → canonical-order/unique-key checks → query-result integrity checks → validated owned evidence → ordinary Facts projection/validation → existing record/subject/content-identity checks.

Keep the original checked candidate JSON for its content hash; the projection is a temporary semantic value. Revalidating a mutable public CommitBundle reconstructs its candidate, so no stale validation token can survive later field mutation.

The private codec checks only local document/integrity properties. It does not recompute query-instance identities with a second encoder, determine historical truth, authorize writes or waive resulting-state validity.

### Versioned v1 pipeline

Existing strict outer raw decode → original v1 structural bundle/hash checks → original commit/recovery/profile/head/time/schema schedule → historical rederivation/equality → governance and remaining lifecycle/reference/atomic checks.

Do not call the strict v2 codec here. Invalid v1 result hashes retain their baseline decode outcome and later historical refusal. Shared tag/hash reuse preserves bytes and performs no earlier validation.

### Schema and consumer correspondence

Add closed observed-evidence root/query/capture/member/field definitions in both current v2 wrappers. Wire only action candidate observations and non-null action commit-bundle observations to them. Preserve bundle omission/null, candidate empty-object normalization, migration's constant empty object and ordinary/witness Facts refs.

Schema validation covers representable closed shape and digest syntax; runtime still checks digest equality, canonical keys and raw ambiguity. Current v2 archives transitively using these refs must remain accepted when valid. No broad schema or historical fixture rewrite is permitted.

### Test and evidence design

[validation-evidence.md](contracts/validation-evidence.md) maps FR/SC requirements to named cases, actual producer/consumer paths and proof obligations. Coverage includes local codec positives/negatives, producer-generated round trips, trusted authorization, raw duplicate keys, schema agreement, forged-but-self-consistent memberships, v1 mixed-error precedence, indexed/unindexed/reordered equality and unchanged read/history/migration/command-stream routes.

Run source mutation controls only in isolated copies/build directories. Exact delivery checks use a clean frozen checkout and its own CLI/fixtures/consumer, with no ecosystem dependency override.

### Review and delivery

After targeted tests, run mandatory gates and supported-facade consumer validation at the final pushed frozen SHA. Preserve test-first and final evidence externally, including commands/statuses/toolchain/logs and source identities. A later tracked change creates a new candidate.

Conduct a targeted trust/query/evidence re-audit of this boundary; do not rerun or declare closure of all 016. Record the ordinary/witness schema follow-up independently. No full v2 Store conformance claim follows from the scoped fix alone.

## Work sequencing and parallel ownership

1. Establish actual baseline, test collection, exact-workload RED and v1 characterization before production edits.
2. Implement private codec/shared hash domain and its local tests; integrate at the single v2 candidate call site.
3. Apply scoped wrapper schema repair with real producer-output/schema tests.
4. Complete Store producer/pipeline/authorization/history controls and public consumer controls.
5. Perform targeted re-audit, freeze implementation/reports and run final exact-revision gates.

After the common RED/fixture contracts, codec work, schema correspondence, and Store/consumer test lanes may be parallelized with exclusive file ownership. A coordinator owns integration, artifact truthfulness and phase compatibility. An independent reviewer checks proof premises; one evidence runner serializes canonical final gates. Never share mutation outputs with official build caches.

Each later behavior increment also needs a compiled, asserting RED before its
correction; missing private modules or compiler errors are setup failures. The
required-authentication history uses a test-owned authorized runner over the same
steps, because the original parent orders_history commit helper supplies no
evidence or independent context. Retain that unchanged helper for the faithful
require:none regression.

## Complexity Tracking

No justified constitution violations or extra framework/crate/dependency are introduced. Existing record materialization/history rederivation costs remain; local evidence checking does not replace them.
