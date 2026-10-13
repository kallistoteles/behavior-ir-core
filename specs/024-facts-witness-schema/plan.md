# Implementation Plan: Faithful Facts and Witness Schemas

**Branch**: `024-facts-witness-schema` | **Date**: 2026-10-13 | **Spec**: [spec.md](spec.md)

**Input**: Feature specification from `specs/024-facts-witness-schema/spec.md`; [Core issue #21](https://github.com/kallistoteles/behavior-ir-core/issues/21).

**Status**: Planning and implementation complete; targeted independent review accepted the scoped correction. Final exact-revision gates and Git consumer evidence are performed after freeze and recorded externally.

## Summary

Correct the ordinary Facts definition in the two current V2 wrapper schemas so genuine Core-produced witnesses match their published shape. Describe six optional observation arrays with ten separate ordinary item/helper products; keep generic canonical JSON only at actual payload positions. Preserve existing bundle definitions, witness alternatives, raw/semantic codecs, record bytes, hashes and historical profile behavior.

Actual authenticated issue production is the primary test-first regression. All-six family evidence combines applicable runtime/confirmation output and ordinary serializer controls. Current producer closure, genuine historical archive preservation and constructed transport controls are labelled separately. Schema acceptance remains weaker than semantic/subject/trust acceptance.

## Technical Context

**Language/Version**: JSON Schema Draft202012 assets; existing Rust edition2024/toolchain1.98.1 integration/consumer tests; Python3.13 independent schema validation in the pinned environment.

**Primary Dependencies**: Existing serde_json, pinned jsonschema/referencing, Z3 4.16.0, Nix scripts and behavior-engine facade. No dependency, public API or runtime abstraction is added.

**Storage**: Existing repository schema/conformance assets and immutable source/history evidence. No new Store state or backend operation.

**Testing**: Test-first authenticated producer/schema regression, six-family serializer/consumer products, independent structural negatives, bounded generation/metamorphic comparisons, existing historical/trust/bundle controls, canonical gates and exact pushed-Git facade validation. Commands and custody are in [quickstart](quickstart.md) and [validation contract](contracts/validation-evidence.md).

**Target Platform**: Existing Core Linux x86_64/aarch64 pinned environments and supported CLI/facade consumers; no new deployment target.

**Project Type**: Deterministic semantic kernel/library/CLI with public document assets; this feature is schema correctness remediation.

**Performance Goals**: No runtime optimization or latency target. Runtime computation remains unchanged; tests cover a bounded explicit supported domain rather than arbitrary profile combinations.

**Constraints**: Two wrapper assets only for schema changes; protect runtime/serializer/hash/facade/dependencies, bundle definitions and all other schemas. No new nonempty/hash patterns on ordinary strings, no widening canonical value carrier, no new historical interpretation, no schema-as-authority claim. No release/tag/pin is selected.

**Scale/Scope**: Six ordinary families, ten helpers per wrapper, two unchanged witness alternatives, fifteen functional requirements and six success criteria. Coverage follows [support matrix](contracts/support-matrix.md), not an artificial Cartesian domain. Research resolved shape/payload, version/producer, compatibility and validation questions in R1–R7.

## Constitution Check

*Design gates assessed before research and re-evaluated after Phase 1. PASS means compliant design, not completed implementation verification.*

| Principle | Entry assessment | Post-design assessment and enforcement |
|-----------|------------------|----------------------------------------|
| I — Deterministic Core | PASS: no new evaluator or AI dependency | PASS: exact same semantic producer/consumer; schema is representation only |
| II — Validated boundaries | PASS: keep checked typed consumption | PASS: closed ordinary observation products; generic payloads under existing carrier; semantic/trust checks remain mandatory |
| III — Test-first | PASS: require actual asserting RED before edits | PASS: C01/C04 capture intended failures before schema changes; discovery logs not substituted; no tests implemented here |
| IV — Reproducibility/replay | PASS: no canonical identity/profile change | PASS: same-profile archive/current controls, normalized laws, capture sequence and exact evidence custody |
| V — Explicit state/auditability | PASS: no new state or authority | PASS: requirements/case/source/receipt traceability and producer-class labels |
| VI — Simplicity | PASS: scope two assets, existing tools | PASS: ten ordinary helpers, no generic schema engine/runtime, no new dependency or gate/script bypass |
| Technology/quality gates | PASS: pinned owning toolchain and scripts | PASS design: canonical gates plus exact-Git consumer are mandatory implementation delivery evidence |

No unjustified violation or unresolved design clarification remains. Mathematical claims and bounded empirical evidence are kept separate. A discovered need to change valid record semantics or public runtime APIs triggers scope/version reassessment, not silent implementation expansion.

## Project Structure

### Documentation (this feature)

```text
specs/024-facts-witness-schema/
├── spec.md
├── origin-and-priority.md
├── plan.md
├── research.md
├── data-model.md
├── compatibility-assessment.md
├── quickstart.md
├── contracts/
│   ├── ordinary-facts.md
│   ├── support-matrix.md
│   └── validation-evidence.md
└── checklists/requirements.md
```

`tasks.md` and implementation evidence are later workflow outputs; neither is created by plan.

### Source Code (repository root)

```text
schema/governance-v2.schema.json       # future scoped facts/ten-helper edit
schema/store-v2.schema.json            # same scoped edit, own root preserved
crates/behavior-verify/tests/
  facts_witness_schema.rs              # prospective producer/shape test target
  facts_witness_compatibility.rs       # prospective profile/trust controls
consumer/tests/facts_witness_schema.rs # prospective facade/CLI test target
tests/fixtures/facts-witness-schema/  # prospective required small fixtures/custody
```

**Structure Decision**: Integration tests own the independent schema oracle and use existing producer/consumer APIs. The external consumer uses behavior-engine/CLI only and does not read schemas/spec archives relative to the temporary --rev checkout. Ten ordinary schema helpers are separate from existing bundle_* helpers; no production Rust module changes.

Existing shared test helpers may be reused without reimplementing semantics. New fixture/test-helper writing has one assigned owner. Narrow explanatory updates to owning governance/versioning documentation are allowed during implementation; unrelated source and historical artifacts remain protected.

## Phase 0 — Research decisions

[Research](research.md) records Decision/Rationale/Alternatives for R1–R7. Read-only parallel research covered exact products/payloads, profile/archive domain and validation/consumer/release infrastructure. The coordinator resolved the stale universe comment against actual current code/tests and separated raw Facts codec inputs from the narrower authenticated canonical-value carrier.

## Phase 1 — Design and proof obligations

- [Data model](data-model.md): typed partial observation mappings, captures as sequence, empty versus unknown, existing witness/envelope lifecycle.
- [Ordinary contract](contracts/ordinary-facts.md): exact root/helper structure and protected schema-edit set.
- [Support matrix](contracts/support-matrix.md): fresh current production, actual archives, constructed codecs and unsupported controls.
- [Validation contract](contracts/validation-evidence.md): C01–C12, oracle independence, test-first and immutable final custody.
- [Compatibility](compatibility-assessment.md): conservative minor-class public schema assessment, unchanged document semantics and release-bound adoption.
- [Quickstart](quickstart.md): future executable collection/test/delivery scenarios, explicitly not current passing results.

P024-01–P024-12 and their explicit case mapping are defined in the validation contract: producer/shape/payload/observation laws, domain/witness/version separation, semantic non-authority, protected source, consumer compatibility and exact delivery. Each needs applicable evidence or a justified invariant/assumption; finite sampling is not universal proof.

## Implementation sequencing and parallel ownership

1. Freeze baseline source/schema/custody and fixture contracts; capture existing positive semantic/historical outputs.
2. Author/review actual authenticated producer acceptance and structural negative tests; observe the intended producer rejection and formerly accepted malformed-structure failures before schema edits. Keep already-rejected negatives as passing preservation controls and record root-name masking. Retain collection and actual RED evidence.
3. Only then correct the two facts definitions and add ordinary helpers. Re-run focused tests, compare untouched definitions/source and original evidence bytes.
4. Complete compatibility/facade controls, targeted review and migration assessment, resolving findings with fresh REDs before any corrective source changes.
5. Finalize tracked reports and task bookkeeping, commit/push/freeze candidate, then run required exact-revision gates and --rev consumer checks. Seal external final statuses/receipt without changing frozen tracked files.

| Lane | Exclusive ownership | Dependency |
|------|---------------------|------------|
| Producer/structure | Verify facts_witness_schema.rs; agreed fixture subdirectory | Baseline/fixture protocol; supplies reviewed RED before schema edits |
| Schema | Two current wrapper files | Waits for required asserting REDs |
| Compatibility | Verify facts_witness_compatibility.rs | Characterization runs in a separate temporary baseline checkout with only reviewed compatibility tests and required fixtures added, frozen during execution; final corrected-domain run follows schema integration |
| Consumer | consumer/tests/facts_witness_schema.rs | Public producer contract agreed; no schema/temp-relative dependencies |
| Coordinator | Shared fixture contracts, feature bookkeeping/evidence and final runner | Single owner for integration/source freeze |
| Independent reviewer | Targeted review disposition | Reviews final authors' work, does not author their production schema changes |

Parallel lanes use distinct files after their prerequisites. Shared fixtures have one writer. Baseline characterization uses a separate temporary checkout of the named baseline revision; retain the baseline SHA, test/fixture overlay digests, commands and results. It never runs against the actively edited 024 checkout or modifies the frozen 023 checkout. Tests cannot share an actively mutated source. Agent count never waives test-first dependencies; final source freeze and validation are serialized after every writer finishes. The later tasks phase will assign exact task IDs/collection, not invent another semantic boundary.

## Planning completion (historical)

At planning completion, only Phase 0/1 artifacts were delivered; schema/runtime/fixture/test files were unchanged. Planning link/whitespace checks established artifact consistency without claiming implementation tests. Task generation and analysis followed before implementation; current execution evidence is recorded separately.
