# Implementation Plan: Query Evidence Domain Consistency

**Branch**: `025-query-evidence-domains` | **Date**: 2026-10-14 | **Spec**: [spec.md](spec.md)

**Input**: Clarified feature specification in `specs/025-query-evidence-domains/spec.md`, including the accepted contract-consolidation/regression scope.

## Summary

Reuse feature 023's existing dedicated strict Bundle Evidence decoder and its separate ordinary projection. The exact issue #24 User/Doc/Mark reproduction already passes at `634023a6d504bac927192c964d945c7025b467c4` through both public invocation and frozen evaluation/commit, **10/10 executions**. Existing targeted suites pass **214 tests**; one pre-existing opt-in fixture writer remains ignored. No production contract violation has been demonstrated.

Deliver explicit domain/closure/integrity/phase contracts, an evidence mapping, the missing permanent public reproduction and isolated live semantic-tampering controls for query identity, definition/entity binding and captures. Reuse all existing closure/strictness/hash/profile/replay fixtures and tests. A docs/tests-only delivery is valid; if implementation-time inventory finds the missing obligations already covered, map them instead of adding redundant tests. Production edits require a demonstrated remaining contract violation and real test-first evidence.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, under the owning checkout's pinned Nix shell; Python 3.13.15 for existing independent schema checks. Documentation uses the established Markdown/JSON evidence conventions.

**Primary Dependencies**: Existing `behavior-engine` public facade and internal Core/Store/Verify crates; `serde`/`serde_json`, SHA-256 and signing machinery already in the locked workspace. No new runtime/test dependency or lock update planned. Existing schema tests use Nix-provided `jsonschema`; Z3 4.16.0 remains an inherited verifier dependency, not a new call in the Mark regression.

**Storage**: Existing `Store<InMemoryBackend>` for public positive controls and existing instrumented Store backend/authority helper for semantic-refusal controls. Existing immutable historical fixtures and external revision-bound receipts; no storage/schema migration.

**Testing**: Existing Cargo integration/unit targets plus the supported facade-only consumer. Reuse Verify `strict_bundle_evidence`, `strict_bundle_compatibility`, `facts_witness_schema`, private projection tests; Store `strict_bundle_evidence`/`strict_bundle_compatibility`; owning historical/replay and public consumer checks as mapped. Add only demonstrated missing Mark and N05–N07 coverage.

**Target Platform**: Existing supported Core library/CLI platforms; research executed on x86_64 Linux in pinned Nix. No new platform, hosted service or deployment.

**Project Type**: Existing Rust library workspace with CLI and a separate supported-facade consumer crate.

**Performance Goals**: Preserve existing semantics and performance obligations. No production algorithm change or new latency/throughput target; do not add a benchmark program for a documentation/conformance consolidation. New regression inputs are deliberately small and deterministic.

**Constraints**: Ordinary Facts remains a closed six-family domain; strict action Bundle Evidence remains its existing five-family domain with required query hashes; migrations retain exactly empty observed facts. Preserve original claim bytes/identities, hash domains, signature subjects, recorded profiles and refusal phase/category/precedence. No fixture regeneration, public export, schema, dependency, ecosystem pin or Model workaround.

**Scale/Scope**: Four user stories; 14 functional requirements, six success criteria, eight proof obligations, 12 negative categories, five public reference rows and their two routes. Reuse 023's S01–S09/PC01–PC20 and 018 read-support inventory without inventing profile combinations. Bounded production/permutation cases are evidence, not universal mathematical proof.

## Constitution Check

*Gate evaluated before research and rechecked after Phase 1 design.*

| Principle / gate | Before research | After design and rationale |
| --- | --- | --- |
| I — Deterministic core | PASS | PASS: existing deterministic engine reused; no model calls or probabilistic decision authority |
| II — Typed validation | PASS | PASS: existing closed typed ordinary/bundle boundaries preserved; no untyped bypass |
| III — Test-first | PASS | PASS: no production change made/planned; missing tests characterize already-implemented behavior honestly. Any later demonstrated production correction requires an observed behavioral RED first, then GREEN. Setup/oracle failures are excluded. |
| IV — Reproducibility/replay | PASS | PASS: pinned environment, source fingerprints, stable exact hash payload and existing canonical/replay controls; no fixture regeneration |
| V — Explicit state/auditability | PASS | PASS: existing state/history/candidate identities and no-publication assertions retained; scoped evidence records actual commands/statuses/source |
| VI — Simplicity | PASS | PASS: select reuse alternative A; small additions in existing test targets, no new abstraction/dependency |
| Toolchain/unsafe/dependencies | PASS | PASS: unchanged pinned toolchain/lock and public surface; no unsafe or production panic introduced |
| Final owning-revision quality gates | Required later | PENDING DELIVERY: canonical gates and exact-Git consumer must pass on the frozen delivery candidate; research checks are not that attestation |

All eight PO-001–PO-008 have a design-level disposition in [research.md](research.md). No unresolved semantic/profile/phase contract blocks the selected consolidation. Remaining empirical delivery checks are explicit future work, not falsely reported as passing gates. No constitution exception is required.

## Project Structure

### Documentation (this feature)

```text
specs/025-query-evidence-domains/
├── spec.md
├── checklists/requirements.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── contracts/
│   ├── producer-consumer.md
│   ├── validation-phases.md
│   └── coverage.md
├── evidence/planning-validation.json
└── tasks.md                         # Later speckit-tasks output; not created by plan
```

### Source Code (repository root)

```text
consumer/tests/strict_bundle_evidence.rs                  # Planned permanent Mark regression
crates/behavior-store/tests/strict_bundle_evidence.rs      # Planned isolated live N05–N07 controls
crates/behavior-verify/tests/strict_bundle_evidence.rs      # Reuse, no edit planned
crates/behavior-verify/tests/strict_bundle_compatibility.rs # Reuse, no edit planned
crates/behavior-verify/tests/facts_witness_schema.rs        # Reuse, no edit planned
crates/behavior-store/tests/strict_bundle_compatibility.rs # Reuse, no edit planned
crates/behavior-verify/src/governance/trusted/bundle_evidence.rs # Existing private codec/projection
crates/behavior-core/src/facts.rs                         # Existing closed ordinary domain
crates/behavior-store/src/store.rs                        # Existing production/rederivation
specs/023-strict-bundle-evidence-validation/               # Immutable prior contracts/evidence
specs/024-facts-witness-schema/                           # Immutable ordinary/witness correction
```

**Structure Decision**: Retain the workspace and current test ownership. The selected implementation edits only this feature's documentation/evidence and, if still missing, the two existing test files above. Test-owned Mark inputs stay with their public consumer test; no new shared framework, dependency, schema or public type. Prior feature artifacts are read-only provenance.

## Phase 0 — Research outcomes

Completed [research.md](research.md): exact-current-source public reproduction, supported domains/routes, alternative A/B assessment, hash/phase construction, existing coverage and concrete deltas. The [planning receipt summary](evidence/planning-validation.json) binds the external harness, logs, commands and source fingerprints. All 4,635 existing tracked files remained unchanged throughout the research runs.

Selected A already exists: strict local v2 integrity → owned semantic projection; v1 retains its deferred commit check. Alternative B's wire relocation would change canonical identities and require versioning; a private-only rearrangement has no demonstrated benefit. No production correction follows from a passing reproduction.

## Phase 1 — Design outcomes

- [data-model.md](data-model.md): admissible ordinary/bundle domains, exact typed equality, omission/empty distinctions, hash payload, projection and candidate lifecycle.
- [producer-consumer.md](contracts/producer-consumer.md): existing public interfaces, both round-trip laws, complete supported pairing reuse and exact five-row/two-route public regression contract.
- [validation-phases.md](contracts/validation-phases.md): phase ownership, v1/v2 preservation, local-versus-live semantic refusal and compatibility axes.
- [coverage.md](contracts/coverage.md): all FR/PO/negative categories mapped to owning controls and the bounded missing coverage.
- [quickstart.md](quickstart.md): runnable current validation, staged permanent regression and final exact-revision assurance guide.

The post-design constitution check passes without exceptions. This command ends at design; it neither generates tasks nor implements the planned repository tests.

## Implementation sequence for task generation

1. Verify the owning checkout/source and collect current existing tests. Map each requirement to existing coverage before editing; retain the current reproduction and distinguish previous research from new delivery evidence.
2. Add the permanent facade Mark matrix only where the exact fixture/route coverage is missing. Verify typed IDs, query/hash evidence, no precommit publication, resulting values and exact archived bundle. Do not infer `Ref` semantics or add command effects merely to select Wire 0.8.
3. Add only the isolated live semantic instance/definition/entity/capture controls, reusing existing genuine producer/local/authority helpers and positive counterpart. Preserve local acceptance, exact existing commit refusal and zero publication.
4. Run affected targets with source identities stable. New preservation tests may be initially green; do not claim a test-first production fix. If a real violation appears, establish its failing regression and re-evaluate semantic/compatibility/phase obligations before any correction.
5. Finalize the mapping, compatibility/adoption notes and scoped report; review all FR/SC/PO obligations. Preserve existing tests/fixtures and require an explanation for any additional changed path.
6. Commit/push the finalized candidate and freeze its SHA/tree. Run unchanged canonical gates and exact-Git consumer validation with same-revision CLI/fixtures/dependency identity, then seal final completion externally. Any later tracked, merge or release revision requires applicable new validation.

No release number/tag/publication, merge, issue closure action, Approval code or ecosystem pin is selected. Consumer notes explain that a release containing the already-correct 023 implementation may suffice for adoption after its own delivery checks.

## Complexity Tracking

No constitution violation or added architectural complexity. The simpler existing private decoder and test ownership are retained.
